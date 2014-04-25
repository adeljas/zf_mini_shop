<?php

class IndexController extends Zend_Controller_Action {

    public function init() {
        $item = new Application_Model_Item();
        $this->view->items = $item->getItems(12);
        
        $this->cart = new Zend_Session_Namespace('cart');
        $this->view->cart_items_count = is_array($this->cart->items) ? count($this->cart->items) : 0;
    }

    public function indexAction() {
        /* Initialize action controller here */
    }

}

