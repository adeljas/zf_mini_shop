<?php

class Bootstrap extends Zend_Application_Bootstrap_Bootstrap {

    public function _initCache() {
        $cache = Zend_Cache::factory(
                        'Core', 
                        'File', array(// I'm using file system caching, this can be altered to other caching methods like memcached
                        'lifetime' => 3600,
                        'automatic_serialization' => true
                                            ), array('cache_dir' => APPLICATION_PATH . '/cache')
        );
        Zend_Db_Table_Abstract::setDefaultMetadataCache($cache);
        Zend_Registry::set('Cache', $cache);
    }

}

