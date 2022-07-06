<?php
	// echo print_r($_POST);

    require("./backend/authMiddleware.php");

    if(!authorize($conn)){
        header("Location: login.php");
    }
    $id = $_SESSION["id"];
    if($_GET["name"]){
    	$name = $_GET["name"];
    	$data = $conn->checkProjectExistenceAndReturn($_GET["name"], $id);
    	//print_r($data);
    	if($data){
			$HTML = $data["html"];
   	 	$CSS = $data["css"];
   	 	$JS = $data["js"];
    	}else{
		$HTML = "<h1>Select a Project to Edit</h1>";
		$CSS = "h1{color: red}";
		$JS = "";
		}
    	
    }

  

   
	
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Weblite - An online code editor for HTML, CSS and JS that runs completely on the browser</title>
    <meta name="description" content="Weblite provides an interface for editing HTML, CSS and JS on the web seamlessly without having to make any network calls. It runs completely on the web and provides a very smooth experience. Try it out today!!">
    <link rel="stylesheet" href="brightStyles.css">
    <link rel="icon" href="favicon.ico">
</head>
<body>

   

   

    <form method="POST">
        <div id="buttons">
        <h3 style="display: inline" id="appname" onclick="location.href = 'index.html'">Weblite</h3>
            <button type="button" class="btn active" id="bhtml" data-editor="0">HTML</button>
            <button type="button" class="btn" id="bcss" data-editor="1">CSS</button>
            <button type="button" class="btn" id="bjs" data-editor="2">JS</button>
            <button  type="button" class="btn" id="fullscreen" onclick="window.open('./fullscreen.html','_blank')" style="width: fit-content; padding: 0.8vw 1.5vw 1.5vw 1.5vw">Fullscreen</button>
            <!-- <span><?php echo $name ?? ""?></span> -->
            <button type="button" id="mode"><img src="brightness.png"/></button>
        </div>
        <section id="slider" action="profile.php" method="POST">
        <!-- <section id="slider"> -->
            <div id="slideContent">
                <label for="projname">Project Name</label>
                <input type="text" id="projname" name="name" value="<?php echo $name?>"></input>
                <button type="button" id="saveProj" >Save Changes</button>
                <button type="button" id="saveProj" onclick="location.href = 'profile.php'">View Profile</button>
            </div>
            <button type="button" id="slideBtn">
                >
            </button>
        <!-- <section> -->
    </section>


        <section id="canvas">
                <div id="main">
                    <div id="editor">
                        <div id="copyDiv">
                            <button type="button" id="copyBtn">copy</button>
                        </div>
								<?php
								
									echo "<textarea id='inputh' spellcheck='false' name='html'>$HTML</textarea>";
                        	echo "<textarea id='inputc' class='hidden' spellcheck='false' name='css'>$CSS</textarea>";
                        	echo "<textarea id='inputj' class='hidden' spellcheck='false' name='js'>$JS</textarea>";                        
                        	
                        ?>
                
                    </div>
                    <div id="output"></div>
                </div>
        </section>
    </form>
    <!-- <script id="scr"></script> -->

    <script src="./JS/edit.js"></script>

    <script>
        console.log("Hello");
			let saveBtn = document.getElementById("saveProj");
        saveBtn.addEventListener('click', () => {
            let formSubmitElement = document.querySelector("form");
            
            let html = document.getElementById("inputh").value;
				let css = document.getElementById("inputc").value;
				let js = document.getElementById("inputj").value;
				let state = "yes";
            // formSubmitElement.setAttribute("method", "POST");
            //formSubmitElement.setAttribute("action", "profile.php");
            //formSubmitElement.submit();
            saveBtn.innerText = 'saving...';
            let data = {state, html, css, js};
				console.log(data);
            
            let res = fetch("./backend/saveChangesHandler.php", {
            	method: 'POST',
            	headers: {
        					"Content-Type": "application/json",  // sent request
        					
      			},
      			body: JSON.stringify(data)}).then(function (response) {
  									return response.text();
					}).then(function (body) {
  							saveBtn.innerText = 'Saved !!!';
  							//location.href = "/backend-modified-main/backend/saveChangesHandler.php";
							setTimeout(() => {
									saveBtn.innerText = "Save Changes";							
							}, 1500)  							
					})

           
        	});
      
    </script>
    
</body>
</html>
