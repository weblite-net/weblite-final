<?php

function logout(){
    require("databaseHandler.php");

    $conn = new DB("localhost", "root", "", "weblite");
    
    // Logout Process
    session_start();
    $id = $_SESSION["id"];
    session_unset();
    session_destroy();
    $conn->modify("UPDATE users SET authtoken = 'none' where id='$id'");

    // Dev error logs
    // $name = base64_decode($id);
    // $conn->devTest("logged-$name-out");
       
    
}


?>