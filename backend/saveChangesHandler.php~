<?php

		require("databaseHandler.php");
		session_start();
		$id = $_SESSION["id"];
		$conn = new DB("localhost", "root", "", "weblite");
		print_r($_POST);
		$data = json_decode(html_entity_decode($_POST));
		echo $data;
		if(isset($data["state"])){
			$conn->devTest($id);
		}else{
			$conn->devTest("err".$id);
		}
	
?>
