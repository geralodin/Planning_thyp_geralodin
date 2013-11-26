<?php
namespace Evaletu\Model;
use Zend\InputFilter\Factory as InputFactory;     // <-- Add this import
use Zend\InputFilter\InputFilter;                 // <-- Add this import
use Zend\InputFilter\InputFilterAwareInterface;   // <-- Add this import
use Zend\InputFilter\InputFilterInterface;        // <-- Add this import


class Salle implements InputFilterAwareInterface
{
    public $idsalle;
    public $reference;
    
    public function exchangeArray($data)
    {
        $this->idsalle     = (isset($data['idsalle'])) ? $data['idsalle'] : null;
        $this->reference = (isset($data['reference'])) ? $data['reference'] : null;
    }

    public function getInputFilter() {
        
    }

    public function setInputFilter(InputFilterInterface $inputFilter) {
        
    }
}