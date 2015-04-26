<?php

class CategoriesController extends ControllerBase
{
    public function initialize()
    {
        $this->tag->appendTitle(' :: Categories');
        parent::initialize();

    }
	public function indexAction()
	{
		$this->view->categories = Categories::find();
	}

	public function viewAction()
	{
		echo 'hi';
	}

}

