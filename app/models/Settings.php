<?php

class Settings extends \Phalcon\Mvc\Model
{

    /**
     *
     * @var integer
     */
    public $id;

    /**
     *
     * @var string
     */
    public $what;

    /**
     *
     * @var string
     */
    public $data;

    /**
     * Independent Column Mapping.
     */
    public function columnMap()
    {
        return array(
            'id' => 'id', 
            'what' => 'what', 
            'data' => 'data'
        );
    }

}
