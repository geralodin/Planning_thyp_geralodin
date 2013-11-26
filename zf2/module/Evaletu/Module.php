<?php
namespace Evaletu;
use Evaletu\Model\Cours;
use Evaletu\Model\CoursTable;
use Evaletu\Model\ProfsTable;
use Evaletu\Model\Profs;
use Evaletu\Model\SalleTable;
use Evaletu\Model\Salle;
use Zend\Db\ResultSet\ResultSet;
use Zend\Db\TableGateway\TableGateway;


class Module
{
    public function getAutoloaderConfig()
    {
        return array(
            'Zend\Loader\ClassMapAutoloader' => array(
                __DIR__ . '/autoload_classmap.php',
            ),
            'Zend\Loader\StandardAutoloader' => array(
                'namespaces' => array(
                    __NAMESPACE__ => __DIR__ . '/src/' . __NAMESPACE__,
                ),
            ),
        );
    }

    public function getConfig()
    {
        return include __DIR__ . '\config\module.config.php';
    }
    
    public function getServiceConfig()
    {
        return array(
            'factories' => array(
                'Evaletu\Model\CoursTable' =>  function($sm) {
                    $tableGateway = $sm->get('CoursTableGateway');
                    $table = new CoursTable($tableGateway);
                    return $table;
                },
                'CoursTableGateway' => function ($sm) {
                    $dbAdapter = $sm->get('Zend\Db\Adapter\Adapter');
                    $resultSetPrototype = new ResultSet();
                    $resultSetPrototype->setArrayObjectPrototype(new Cours());
                    return new TableGateway('cours', $dbAdapter, null, $resultSetPrototype);
                },
                'Evaletu\Model\ProfsTable' =>  function($sm) {
                    $tableGateway = $sm->get('ProfsTableGateway');
                    $table = new ProfsTable($tableGateway);
                    return $table;
                },
                'ProfsTableGateway' => function ($sm) {
                    $dbAdapter = $sm->get('Zend\Db\Adapter\Adapter');
                    $resultSetPrototype = new ResultSet();
                    $resultSetPrototype->setArrayObjectPrototype(new Profs());
                    return new TableGateway('profs', $dbAdapter, null, $resultSetPrototype);
                },
                'Evaletu\Model\SalleTable' =>  function($sm) {
                    $tableGateway = $sm->get('SalleTableGateway');
                    $table = new SalleTable($tableGateway);
                    return $table;
                },
                'SalleTableGateway' => function ($sm) {
                    $dbAdapter = $sm->get('Zend\Db\Adapter\Adapter');
                    $resultSetPrototype = new ResultSet();
                    $resultSetPrototype->setArrayObjectPrototype(new Salle());
                    return new TableGateway('salle', $dbAdapter, null, $resultSetPrototype);
                },
            ),
        );
    }

}
