<?php

    class DB{

        private $host;
        private $user;
        private $password;
        private $db;
        private $dbHandle;

        public function __construct($host, $user, $password, $db){
            $this->host = $host;
            $this->user = $user;
            $this->password = $password;
            $this->db = $db;
            $this->dbHandle = new mysqli($this->host, $this->user, $this->password, $this->db);


        }
        
        // public $dbHandle = new mysqli($this->host, $this->user, $this->password, $this->db);

        public function modify($query){
            $this->dbHandle->query($query);
        }
        
        public function select($query){
            $result = $this->dbHandle->query($query);
            return $result->fetch_assoc();
        }

        public function checkRecordExistence($name){
            return $this->dbHandle->query("SELECT * FROM users WHERE name='$name' LIMIT 1;")->num_rows;
        }

        public function checkRecordExistenceAndReturn($name){
           $result = $this->dbHandle->query("SELECT * FROM users WHERE name='$name' LIMIT 1;");
           if($result->num_rows){
            return $result->fetch_assoc();
           }

           return 0;
            
        }

        public function checkProjectExistence($name){
            return $this->dbHandle->query("SELECT * FROM projects WHERE name='$name' LIMIT 1;")->num_rows;
        }
        
        public function checkProjectExistenceAndReturn($name, $id){
        		$result = $this->dbHandle->query("SELECT * FROM projects WHERE name='$name' AND id='$id' LIMIT 1;");
        		if($result->num_rows){
					return $result->fetch_assoc();        		
        		}
        		
        		return 0;
        }

        public function selectMany($query){
            return $this->dbHandle->query($query);
        }
        
        public function devTest($id){
        		$this->dbHandle->query("INSERT into tester (`id`) VALUES ('$id');");
        }

        
    }




?>

