<?php

class Application_Model_DbTable_Item extends Zend_Db_Table_Abstract {

    protected $_name = 'shop_item';
    protected $_primary = 'id';
    protected $_dependentTables = array('ItemImage');

}

