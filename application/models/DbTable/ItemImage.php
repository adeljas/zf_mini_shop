<?php

class Application_Model_DbTable_ItemImage extends Zend_Db_Table_Abstract {

    protected $_name = 'shop_item_image';
    protected $_primary = 'id';
    protected $_referenceMap = array(
        'Item' => array(
            'columns' => array('item_id'),
            'refTableClass' => 'Item',
            'refColumns' => array('Item_id')
        ),
    );

}

