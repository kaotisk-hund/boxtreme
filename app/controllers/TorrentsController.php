<?php

class TorrentsController extends ControllerBase
{

    public function initialize()
    {
        $this->tag->setTitle(' :: Torrents');
        parent::initialize();
    }

    public function indexAction()
    {
    	//$this->view->torrents = Torrents::find();
    }

    public function addAction()
    {
    	if ($this->request->isPost()) {

    		$torrent = new Torrents();
    		$torrent->title = $this->request->getPost('title');
    		$torrent->description = $this->request->getPost('description');
    		$torrent->link = $this->request->getPost('link');
    		$torrent->save();


    		return $this->dispatcher->forward(array(
			'controller' => 'torrents',
    			'action' => 'browse'
    		));
    	}
    }

    public function browseAction()
    {
    	$this->view->torrents = Torrents::find();
    }
}

