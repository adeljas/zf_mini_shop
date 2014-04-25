<?php

class Application_Model_ItemImage {

    private $table;

    public function __construct() {
        $this->table = new Application_Model_DbTable_Item();
    }

    public function createItemImage($array = array()) {
        return $this->table->insert($array);
    }

    public function updateItemImage($array = array(), $id) {
        return $this->table->update($array, "id = $id");
    }

    public function deleteItemImage($id) {
        return $this->table->delete("id = $id");
    }

    public function getItemImages($limit = 8) {
        $select = $this->table->select();
        $select->order('updated_at DESC');
        $select->limit($limit);
        return $select->query()->fetchAll(PDO::FETCH_ASSOC);
    }

    public function getItemImage($id, $fetch = PDO::FETCH_ASSOC) {
        $select = $this->table->select();
        $select->where('id = ?', $id);
        return $select->query($fetch)->fetch();
    }

}

