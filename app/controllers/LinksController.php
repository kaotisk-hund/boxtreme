<?php

class LinksController extends \Phalcon\Mvc\Controller
{

    public function indexAction()
    {
	$this->view->links = Links::find();
    }

}

