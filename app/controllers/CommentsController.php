<?php

class CommentsController extends \Phalcon\Mvc\Controller
{
    public function initialize()
    {
        $this->tag->appendTitle(' :: Comments');
        parent::initialize();

    }
    public function indexAction()
    {
	$this->view->comments = Comments::find();
    }

    public function addAction($postId)
    {

    }

}

