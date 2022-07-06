<?php

    require("./databaseHandler.php");
    $json = file_get_contents("php://input");
    $data = json_decode($json, true);
    session_start();
    $id = $_SESSION["id"];
    $getting_followed_user_id = base64_encode($data["name"]);

    $conn = new DB("localhost", "root", "", "weblite");

    if($conn->checkRecordExistence($data["name"])){
        if($data["act"] === "follow"){
            // Building the Graph
            $conn->devTest("!-404-f-".$id);
            $conn->modify("INSERT into `relations` VALUES ('$getting_followed_user_id', '$id');");
            
            //Modifying the quick retrieve table (usermeta)
            $conn->modify("UPDATE `usermeta` set following = following+1 where id='$id';");
            $conn->modify("UPDATE `usermeta` set followers = followers+1 where id='$getting_followed_user_id';");

        }else if($data["act"] === "unfollow"){
            // Building the Graph
            $conn->modify("DELETE from relations where user_id='$getting_followed_user_id' AND follower_id='$id';");
            $conn->devTest("!-404-uf-".$id);
            
            //Modifying the quick retrieve table (usermeta)
            $conn->modify("UPDATE `usermeta` set following = following-1 where id='$id';");
            $conn->modify("UPDATE `usermeta` set followers = followers-1 where id='$getting_followed_user_id';");
        }
    }else{
        $conn->devTest("404".$data["name"]);
    }

?>