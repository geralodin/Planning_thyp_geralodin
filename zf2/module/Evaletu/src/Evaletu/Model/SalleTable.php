<?php
namespace Evaletu\Model;
use Zend\Db\TableGateway\TableGateway;
 
class SalleTable 
{
    protected $tableGateway;
 
    public function __construct(TableGateway $tableGateway)
    {
        $this->tableGateway = $tableGateway;
    }
    
}