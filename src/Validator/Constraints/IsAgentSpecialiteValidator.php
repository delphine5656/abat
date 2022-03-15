<?php

namespace App\Validator\Constraints;

use Symfony\Component\Validator\Constraint;
use Symfony\Component\Validator\ConstraintValidator;

class IsAgentSpecialiteValidator extends ConstraintValidator
{
    /**
     * @param mixed $value
     * @param Constraint $constraint
     */

    public function validate($value, Constraint $constraint): void {
        /**
         * @var $constraint
         */

        //permet d'avoir accès à toutes nos entity
        $value=$this->context->getRoot()->getData();



    }
}