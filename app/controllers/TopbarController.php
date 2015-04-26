<?php

class TopbarController extends ControllerBase
{
    function initialize()
    {
        $this->view->site_name = Settings::findFirstByWhat('site_name');
        $this->view->site_title = Settings::findFirstByWhat('site_title');

    }
    public function indexAction()
    {
        $this->view->site_name = Settings::findFirstByWhat('site_name');
        $this->view->site_title = Settings::findFirstByWhat('site_title');

    }
}