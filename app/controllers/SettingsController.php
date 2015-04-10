<?php

class SettingsController extends \Phalcon\Mvc\Controller
{

    public function indexAction()
    {
	$this->view->settings = Settings::find();

    }

}

