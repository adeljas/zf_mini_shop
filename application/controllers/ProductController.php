<?php

class ProductController extends Zend_Controller_Action {

    private $item;

    public function init() {
        $this->item = new Application_Model_Item();
        $this->view->item = $this->item->getItem($this->getParam('id'));
        
        $this->cart = new Zend_Session_Namespace('cart');
        $this->view->cart_items_count = is_array($this->cart->items) ? count($this->cart->items) : 0;
    }

    public function indexAction() {
        
    }

}

