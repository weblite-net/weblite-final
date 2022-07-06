<?php

    

    require("databaseHandler.php");
    $conn = new DB("localhost", "root", "", "weblite");

    function authorize($conn){
        global $conn;
        session_start();
        $cookie = session_id();
        $id = $_SESSION["id"];
        $authtoken = $conn->select("SELECT `authtoken` from users where id='$id';");
        // echo "$cookie <br/> $authoken";
        if($cookie === $authtoken["authtoken"]){
            // echo "Yes";
            return 1;
        }else{
            return 0;
        }
    }


?>