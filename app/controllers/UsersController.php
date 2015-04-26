<?php

class UsersController extends \Phalcon\Mvc\Controller
{

    /**
     * Register an authenticated user into session data
     *
     * @param Users $user
     */
    private function _registerSession(Users $user)
    {
        $session->set('auth', array(
            'id' => $user->id,
            'name' => $user->name
        ));
    }

    public function indexAction()
    {

    }
    
    public function registerAction()
    {
        if ($this->request->isPost()) {

    		$user = new Users();
    		$user->name = $this->request->getPost('name');
    		$user->username = $this->request->getPost('username');
    		$user->password = $this->request->getPost('password');
                $user->email = $this->request->getPost('email');
                $user->created_at = date('Y-m-d H:i:s');
                $user->active = 'y';
                
    		$user->save();
                    
    		return $this->dispatcher->forward(array(
			'controller' => 'user',
    			'action' => 'login'
    		));
    	}
    }

    public function loginAction()
    {
        if ($this->request->isPost()) {
            $user = Users::findFirst(array(
                'login = :login: and password = :password:',
                'bind' => array(
                    'login' => $this->request->getPost("login"),
                    'password' => sha1($this->request->getPost("password"))
                )
            ));
            if ($user === false){
                $this->flash->error("Incorrect credentials");
                return $this->dispatcher->forward(array(
                    'controller' => 'users',
                    'action' => 'index'
                ));
            }
            $this->session->set('auth', $user->id);
            $this->flash->success("You've been successfully logged in");
        }
        return $this->dispatcher->forward(array(
            'controller' => 'posts',
            'action' => 'index'
        ));
    }
    public function logoutAction()
    {
        $this->session->remove('auth');
        return $this->dispatcher->forward(array(
            'controller' => 'posts',
            'action' => 'index'
        ));
    }

    public function successAction()
    {
        echo 'hi there!';
    }


}

