<?php

class IndexController extends ControllerBase
{

    public function indexAction()
    {
    	$this->view->site_name = Settings::findFirstByWhat('site_name');
    	$this->view->site_title = Settings::findFirstByWhat('site_title');
    }

}

