<?php

namespace App\Classe;

use App\Entity\TypeMission;

class Search
{
    /**
     * @var string
     */
    public $string='';

    /**
     * @var TypeMission[]
     */
    public $types = [];

    public function __toString()
    {
        return '';
    }
}