<?php

class SettingsController extends ControllerBase
{

    public function indexAction()
    {
	    $this->view->settings = Settings::find();

        $this->view->site_title = Settings::findFirstByWhat('site_title');

    }

}

