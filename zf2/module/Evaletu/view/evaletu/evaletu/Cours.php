<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Cours
 *
 * @author geralodin
 */
class Cours {
    
    public $intitule, $intervenant_first_name, $intervenant_last_name, $lieu, $heure_debut, $heure_fin;
    
    function __construct($intitule, $intervenant_first_name, $intervenant_last_name, $lieu, $heure_debut, $heure_fin) {
        $this->intitule = $intitule;
        $this->intervenant_first_name = $intervenant_first_name;
        $this->intervenant_last_name = $intervenant_last_name;
        $this->lieu = $lieu;
        $this->heure_debut = $heure_debut;
        $this->heure_fin = $heure_fin;
    }

    
}
?>
