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
			'controller' => '',
    			'action' => 'login'
    		));
    	}
    }
    
    public function loginAction(){
        if ($this->request->isPost()) {
            
            $username = $this->request->getPost('username');
            $password = $this->request->getPost('password');

            $user = Users::findFirst(array(
                "username = :username: AND password = :password: AND active = 'Y'",
                'bind' => array('username' => $username, 'password' => $password)
            ));
            if ($user != false) {
                $this->_registerSession($user);
                $this->view->flash->success('Welcome ' . $user->name);
                return $this->dispatcher->forward(array(
                    'controller' => '',
                        'action' => ''
                ));
            }

            $this->flash->error('Wrong email/password');
        }
        
    }

    public function successAction()
    {
        echo 'hi there!';
    }

}

