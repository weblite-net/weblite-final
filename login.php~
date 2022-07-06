<?php
		
		
		
		
		if(isset($_POST["name"])){
			$conn = new mysqli("localhost", "root", "", "weblite");
			
			
			
			$name = $_POST["name"];
			$pwd = $_POST["password"];  // Unhashed password for filling up on invalid sign in
			$password = $_POST["password"];
			$id = base64_encode($name);			
			
			$br = "<br/>";

            require('./backend/authHandler.php');

            $authHandle = new Auth($name, $password);
            $error;
            if($authHandle->authenticate()){
                echo "auth";
                ini_set( 'session.cookie_httponly', 1 );
                session_start(['cookie_lifetime' => 86400*3,'cookie_secure' => true,'cookie_httponly' => true]); // Starting Session on the server
                $cookie = session_id(); // httpOnly cookie
                $_SESSION["id"] = $id;

                $authHandle->setGeneratedCookie($cookie);
                echo $name;
                header("Location: app.php");
            }else{
                echo "err";
                $error = "Invalid Username/Password";
            }



			
			//echo $email;
			//echo $br;
			//echo $name;
			//echo $br;
			//echo $password;
			//echo $br;
			//echo $id;
			//echo $br;
			
		
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
    <link rel="stylesheet" href="signupstyles.css">
    <link rel="stylesheet" href="signupstyles.css">
    <link rel="icon" href="favicon.ico">
</head>
<body>

    <div id="signup">
        <h3>Login</h3>
        <form action="<?php echo $_SERVER['PHP_SELF'] ?>" onsubmit="return validate()" method="POST">
            <div class="formelements">
	 		    <label for="name">Userame:</label><br>
	 		    <input type="text" id="name" name="name" value="<?php echo isset($name) ? $name : ""?>" required/>
                
                <p id="1"><?php echo isset($error) ? $error : "" ?></p>
            </div><br>
            
            <div class="formelements">
			    <label for="pass">Password:</label><br>
	 		    <input type="password" id="pass" name="password" value="<?php echo isset($pwd) ? $pwd : ""?>" required/>
                 <p id="3"></p>
            </div><br>
           
            <p id="auth"><?php echo $error ?? "";?></p>
            <button id="submit" type="submit">Submit</button>
            <div style="text-align: center">Don't have an account? <a href="signUp.php">signup</a></div>

        </form>
	</div>

   <!-- <script src="./JS/login.js"></script>-->
    <script>
		function validate(){
			return true;
		}    
    </script>
    
</body>
</html>
