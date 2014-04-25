<?php

/*
 * CartController
 * Saves the IDs of the added items carts in the session
 */

class CartController extends Zend_Controller_Action {

    private $cart;
    private $item;

    public function init() {
        $this->cart = new Zend_Session_Namespace('cart');
        $this->item = new Application_Model_Item();
        $this->view->cart_items_count = is_array($this->cart->items) ? count($this->cart->items) : 0;
    }

    public function addAction() {
        $dItemId = $this->getParam('item_id');

        if (is_numeric($dItemId)) {
            if (!is_array($this->cart->items))
                $this->cart->items = array();

            if (!in_array($dItemId, $this->cart->items))
                $this->cart->items[] = $dItemId;
        }

        $this->redirect('cart/show');
    }

    public function removeAction() {
        $dItemId = $this->getParam('item_id');

        foreach ($this->cart->items as $k => $one) {
            if ($one == $dItemId)
                unset($this->cart->items[$k]);
        }
        $this->redirect('cart/show');
    }

    public function emptyAction() {
        $this->cart->__unset('items');
        $this->redirect('cart/show');
    }

    public function showAction() {
        if (count($this->cart->items) > 0)
            $this->view->items = $this->item->getItems(false, $this->cart->items);
        else
            $this->view->items = array();
    }

}

