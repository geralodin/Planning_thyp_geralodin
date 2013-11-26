<?php
namespace Evaletu\Model;
use Zend\InputFilter\Factory as InputFactory;     // <-- Add this import
use Zend\InputFilter\InputFilter;                 // <-- Add this import
use Zend\InputFilter\InputFilterAwareInterface;   // <-- Add this import
use Zend\InputFilter\InputFilterInterface;        // <-- Add this import


class Cours implements InputFilterAwareInterface
{
    public $idcours;
    public $name;
    public $profs_idprofs;
    protected $salle_idsalle;
    protected $heure_debut;
    protected $heure_fin;
    protected $types_idtypes;

    public function exchangeArray($data)
    {
        $this->idcours     = (isset($data['idcours'])) ? $data['idcours'] : null;
        $this->name = (isset($data['name'])) ? $data['name'] : null;
        $this->profs_idprofs  = (isset($data['profs_idprofs'])) ? $data['profs_idprofs'] : null;
        $this->salle_idsalle  = (isset($data['salle_idsalle'])) ? $data['salle_idsalle'] : null;
        $this->heure_debut  = (isset($data['heure_debut'])) ? $data['heure_debut'] : null;
        $this->heure_fin  = (isset($data['heure_fin'])) ? $data['heure_fin'] : null;
        $this->types_idtypes  = (isset($data['types_idtypes'])) ? $data['types_idtypes'] : null;
    }

    public function getInputFilter() {
        
    }

    public function setInputFilter(InputFilterInterface $inputFilter) {
        
    }
}