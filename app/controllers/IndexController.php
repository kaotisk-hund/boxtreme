<?php

class IndexController extends ControllerBase
{
    public function initialize()
    {
        $this->tag->appendTitle(' :: Homepage');
        parent::initialize();
    }
    public function indexAction()
    {

    }

}

