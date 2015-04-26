<?php

use Phalcon\Mvc\User\Component;

class Elements extends Component
{

    public function getMenu()
    {
        //...
    }

    public function getTabs()
    {
        //...
    }

    public function getLinks()
    {
        $this->view->links = Links::find();
    }

    function getSiteName()
    {
        //$this->view->settings = Settings::find();
        $site_name = Settings::findFirstByWhat('site_name');
        $this->view->sitename = $site_name->data;


    }

    function getCategories()
    {
        $this->view->categories = Categories::find();
    }



}