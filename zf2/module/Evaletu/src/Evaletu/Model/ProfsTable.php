<?php
namespace Evaletu\Model;
use Zend\Db\TableGateway\TableGateway;
 
class ProfsTable 
{
    protected $tableGateway;
 
    public function __construct(TableGateway $tableGateway)
    {
        $this->tableGateway = $tableGateway;
    }
    
}