<?php

class CommentsController extends \Phalcon\Mvc\Controller
{

    public function indexAction()
    {
	$this->view->comments = Comments::find();
    }

    public function addAction($postId)
    {

    }

}

