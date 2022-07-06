<?php

    require("databaseHandler.php");

    class Auth{
        private $name;
        private $password;
        private $id;
        private $conn;
        private $cookie;
        // priva

        public function __construct($name, $password){
            $this->name = $name;
            $this->password = $password;
            $this->id = base64_encode($name);
            $this->conn = new DB("localhost", "root", "", "weblite");
            $this->cookie = '';

        }

        private function authorizeAfterAuthentication(){
            $authQuery = "UPDATE users SET authtoken='$this->cookie' WHERE id='$this->id';";
            $this->conn->modify($authQuery);
        }

        public function setGeneratedCookie($cookie){
            $this->cookie = $cookie;
            
            $this->authorizeAfterAuthentication();
        }

        

        public function authenticate(){
            $result = $this->conn->checkRecordExistenceAndReturn($this->name);
            if($result){
                $password = $result["password"];
                echo "Authenticating <br/> $password";
                if(password_verify($this->password, $password)){
                    
                    return 1;
                }
            }else{
                return 0;
            }
        }





    }


?>