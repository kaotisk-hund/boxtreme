<?php

use Phalcon\Mvc\Controller;

class ControllerBase extends Controller
{
    protected function initialize()
    {
        $this->view->site_name = Settings::findFirstByWhat('site_name');
        $this->view->site_title = Settings::findFirstByWhat('site_title');
        $this->tag->prependTitle($this->view->site_title->data);
    }

}
