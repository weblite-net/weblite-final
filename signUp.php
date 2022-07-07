<?php
		
		
		
		
		if(isset($_POST["email"])){
			$conn = new mysqli("localhost", "root", "", "weblite");
			
			
			$email = $_POST["email"];
			$name = $_POST["name"];
			$pwd = $_POST["password"];  // Unhashed password for filling up on invalid sign in
			$password = password_hash($_POST["password"], PASSWORD_BCRYPT); 
			$id = base64_encode($name);			
			
			$br = "<br/>";
			
			//echo $email;
			//echo $br;
			//echo $name;
			//echo $br;
			//echo $password;
			//echo $br;
			//echo $id;
			//echo $br;
			
			$query = "INSERT INTO `users` (`id`, `name`, `email`, `password`,`authtoken`) VALUES ('$id', '$name', '$email', '$password','');";	
			//echo $query;		
			// header("Location: login.php");


			// Uncomment this block for saving to database
			
			if($conn->query($query)){
				// New Vertex in Relations Table (Graph)
				$conn->query("INSERT into `usermeta` values ('$id', 0, 0);");
				header("Location: login.php");
			}else{
				$error = "Name is already taken";
				echo $error;			
			}
					
			//print_r($_POST);	
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
        <h3>Signup</h3>
        <form action="<?php echo $_SERVER['PHP_SELF'] ?>" onsubmit="return validate()" method="POST">
            <div class="formelements">
	 		    <label for="name">User Name:</label><br>
	 		    <input type="text" id="name" name="name" value="<?php echo isset($name) ? $name : ""?>" required/>
                
                <p id="1"><?php echo isset($error) ? $error : "" ?></p>
            </div><br>
            <div class="formelements">
	 		    <label for="email">e-mail:</label><br>
	 		    <input type="text" id="email"  name="email" value="<?php echo isset($email) ? $email : ""?>" required/>
                 <p id="2"></p>
            </div><br>
            <div class="formelements">
			    <label for="pass">Password:</label><br>
	 		    <input type="password" id="pass" name="password" value="<?php echo isset($pwd) ? $pwd : ""?>" required/>
                 <p id="3"></p>
            </div><br>
            <div class="formelements">
	 		    <label for="confirmpass">Confirm Password:</label><br>
	 		    <input type="password" id="confirmpass" value="<?php echo isset($pwd) ? $pwd : ""?>" required/>
                 <p id="4"></p>
            </div><br>
            <button id="submit" type="submit">Submit</button>
			<br>
			<div style="text-align: center">Already have an account? <a href="login.php">signin</a></div>
        </form>
	</div>

    <script src="./JS/signup.js"></script>
    <script>
		function validate(){
			return true;
		}    
    </script>
    
</body>
</html>
