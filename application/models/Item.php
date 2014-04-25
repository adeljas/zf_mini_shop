<?php

class Application_Model_Item {

    private $table;

    public function __construct() {
        $this->table = new Application_Model_DbTable_Item();
    }

    public function createItem($array = array()) {
        return $this->table->insert($array);
    }

    public function updateItem($array = array(), $id) {
        return $this->table->update($array, "id = $id");
    }

    public function deleteItem($id) {
        return $this->table->delete("id = $id");
    }

    /**
     * 
     * @param type $limit limit of results returned
     * @param type $aItemsIds get only items with the supplied IDs in this array
     * @return type array
     * this function retrieves the latest added items with only the first picture ( to be displayed on the products listing page )
     */
    public function getItems($limit = 8, $aItemsIds = array()) {
        /* @var $cache Zend_Cache_Core */

        $cache = Zend_Registry::get('Cache');

        $sItemIds = '';

        if (count($aItemsIds) > 0)
            $sItemIds = implode(',', $aItemsIds);

        $sCacheUniqueIdentifier = md5('listing_items' . $limit . $sItemIds);

        if (!$cache->test($sCacheUniqueIdentifier)) {
            $oSelect = $this->table->select();
            if ($limit !== false && is_numeric($limit))
                $oSelect->limit($limit);
            if ($sItemIds != '')
                $oSelect->where('id IN (' . $sItemIds . ')');

            $oSelect->order('id DESC');

            $aItems = $oSelect->query()->fetchAll(PDO::FETCH_ASSOC);
            $aTmpItems = array();
            if (count($aItems) > 0) {

                $aIds = array();

                foreach ($aItems as $aItem) {
                    $dItemId = $aItem['id'];
                    $aIds[] = $dItemId;
                    $aTmpItems[$dItemId] = $aItem;
                }

                $aImages = $this->getItemImages($aIds, true);

                foreach ($aImages as $aImg) {
                    $dItemId = $aImg['item_id'];
                    $aTmpItems[$dItemId]['first_image'] = $aImg['path'];
                }
            }
            $cache->save($aTmpItems, $sCacheUniqueIdentifier);
        } else {
            $aTmpItems = $cache->load($sCacheUniqueIdentifier);
        }
        return $aTmpItems;
    }

    /**
     * 
     * @param type $id id of requested item to retrieve
     * @param type $fetch fetch style
     * @return type
     * returns an item with its all images ( to be used in the product details page )
     */
    public function getItem($id, $fetch = PDO::FETCH_ASSOC) {
        $cache = Zend_Registry::get('Cache');
        $sCacheUniqueIdentifier = md5('item_' . $id);
        if (!$cache->test($sCacheUniqueIdentifier)) {
            $select = $this->table->select();
            $select->where('id = ?', $id);
            $aImages = $this->getItemImages(array($id));
            $aItem = $select->query($fetch)->fetch();
            $aItem['images'] = $aImages;
            $cache->save($aItem, $sCacheUniqueIdentifier);
        } else {
            $aItem = $cache->load($sCacheUniqueIdentifier);
        }
        return $aItem;
    }

    /**
     * 
     * @param type $aIds array if IDs to get pictures for
     * @param type $oFirstImageOnly return only first image for item ID(s) in the return array
     * @return type array
     * returns image(s) of the passed item ID(s)
     */
    private function getItemImages($aIds, $oFirstImageOnly = false) {

        $sIds = implode(',', $aIds);
        $oImagesTable = new Application_Model_DbTable_ItemImage();
        $oImgSelect = $oImagesTable->select();
        $oImgSelect->where('item_id IN (' . $sIds . ')');
        if ($oFirstImageOnly)
            $oImgSelect->group('item_id');
        $oImgSelect->order('id ASC');
        $aImages = $oImgSelect->query()->fetchAll(PDO::FETCH_ASSOC);
        return $aImages;
    }

}

