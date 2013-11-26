<?php
namespace Evaletu\Model;
use Zend\InputFilter\Factory as InputFactory;     // <-- Add this import
use Zend\InputFilter\InputFilter;                 // <-- Add this import
use Zend\InputFilter\InputFilterAwareInterface;   // <-- Add this import
use Zend\InputFilter\InputFilterInterface;        // <-- Add this import


class Cours implements InputFilterAwareInterface
{
    public $idprofs;
    public $first_name;
    public $last_name;
    
    public function exchangeArray($data)
    {
        $this->idprofs     = (isset($data['idprofs'])) ? $data['idprofs'] : null;
        $this->last_name = (isset($data['last_name'])) ? $data['last_name'] : null;
        $this->first_name  = (isset($data['first_name'])) ? $data['first_name'] : null;
    }

    public function getInputFilter() {
        
    }

    public function setInputFilter(InputFilterInterface $inputFilter) {
        
    }
}