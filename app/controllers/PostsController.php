<?php

class PostsController extends ControllerBase
{

    public function initialize()
    {
        $this->tag->appendTitle(' :: Posts');
        parent::initialize();
    }

    public function indexAction()
    {
	    $this->view->posts = Posts::find();
    }

	public function addAction()
	{

	}

    public function viewAction()
    {

    }

}

