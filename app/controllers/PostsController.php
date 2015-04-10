<?php

class PostsController extends \Phalcon\Mvc\Controller
{

    public function indexAction()
    {
	$this->view->posts = Posts::find();
    }

	public function addAction()
	{

	}

}

