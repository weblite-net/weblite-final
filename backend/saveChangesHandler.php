<?php

		require("databaseHandler.php");
		session_start();
		$id = $_SESSION["id"];
		$conn = new DB("localhost", "root", "", "weblite");
		print_r($_POST);
		$json = file_get_contents('php://input');
		$data = json_decode($json, true);

		if(isset($data["state"])){
			$state = str_replace("'", "''",$data["state"]);
			$html = str_replace("'", "''",$data["html"]);
			// $conn->devTest("$state".$id));
			$css = str_replace("'", "''",$data["css"]);
			$js = $data["js"];
			$conn->modify("UPDATE projects SET html='$html', css='$css', js='$js' WHERE id='$id';");
		}else{
			$conn->devTest("err".$id);
		}
	
?>
