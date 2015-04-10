<?php

class CategoriesController extends \Phalcon\Mvc\Controller
{

	public function indexAction()
	{
		$this->view->categories = Categories::find();
	}

	public function viewAction()
	{
		echo 'hi';
	}

}

