<?php
namespace Evaletu\Model;
use Zend\Db\TableGateway\TableGateway;
use Zend\Db\Adapter\Adapter as DbAdapter;

 
class CoursTable 
{
    protected $tableGateway;
    
    public function __construct(TableGateway $tableGateway)
    {
        $this->tableGateway = $tableGateway;
    }
    
    
    
    /*
     public function fetchAll()
     {
        $select = new \Zend\Db\Sql\Select;
        $select->from('cours');
        //$select->columns(array('cours','profs','salle'));
        $select->join('profs', "profs.idprofs = cours.profs_idprofs",array('profs_name'=>'first_name'))
        ->join('salle', "salle.idsalle = cours.salle_idsalle", array('num_sale'=>'reference'));         
        echo $select->getSqlString();
        $resultSet = $this->tableGateway->selectWith($select);
        return $resultSet; 
     }*/
    
    public function fetchAll(){
        $db = new DbAdapter(
          array(
              'driver'        => 'Pdo',
              'dsn'            => 'mysql:dbname=zf2;host=localhost',
              'username'       => 'root',
              'password'       => '',
              )
          );
        
        $sql = 'SELECT c.name, c.heure_debut, c.heure_fin, s.reference, p.first_name, p.last_name 
                FROM cours c 
                    INNER JOIN salle s ON s.idsalle = c.salle_idsalle 
                    INNER JOIN profs p ON p.idprofs = c.profs_idprofs 
                    INNER JOIN types t ON t.idtypes = c.types_idtypes 
                ORDER BY c.types_idtypes ASC';

        return $db->query($sql)->execute(array(125000, 125200));
  }
}