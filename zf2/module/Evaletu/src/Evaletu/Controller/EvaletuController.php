<?php
namespace Evaletu\Controller;

 use Zend\Mvc\Controller\AbstractActionController;
 use Zend\View\Model\ViewModel;

 class EvaletuController extends AbstractActionController
 {
     protected $coursTable;
     public function indexAction()
     {
         return new ViewModel(array(
            'cours' => $this->getCoursTable()->fetchAll(),
        ));
     }
     
     public function getCoursTable()
    {
        if (!$this->coursTable) {
            $sm = $this->getServiceLocator();
            $this->coursTable = $sm->get('Evaletu\Model\CoursTable');
        }
        return $this->coursTable;
    }

 }