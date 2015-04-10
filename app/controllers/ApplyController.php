<?php

class ApplyController extends ControllerBase
{
    
    function indexAction()
    {
        $this->view->user = Users::findFirstById('1');
    }
}