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
        if ($this->request->isPost()) {

            $post = new Posts();
            $post->user_id = 1;     // Default to first user
            $post->category_id = 1; // Default to 'general'
            $post->title = $this->request->getPost('title');
            $post->content = $this->request->getPost('content');
            $post->public = $this->request->getPost('public');
            $post->date = date('Y-m-d');
            $post->save();

            return $this->dispatcher->forward(array(
                'controller' => 'posts',
                'action' => 'view'
            ));
        }
	}

    public function viewAction($id)
    {
        $this->view->post = Posts::findFirstById($id);
    }

}

