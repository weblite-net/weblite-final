<?php
    require("./backend/authMiddleware.php");
    if(!authorize($conn)){
        header("Location: login.php");
    }

    
    
    $error;
    if(isset($_GET["name"])){
        $name = $_GET["name"];
        $id = $_SESSION["id"];
        $data = $conn->selectMany("SELECT html, css, js from projects where name='$name' AND id='$id'");
        if($data->num_rows){
            $data = mysqli_fetch_assoc($data);
        }else{
            $error = "404 , We aren't sure what you're looking for";
            
        }
    }else{
        $error = "404 , We aren't sure what you're looking for";
    }
    





?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Weblite - View Source Code</title>
    <link rel="stylesheet" href="brightStyles.css">
    <link rel="stylesheet" href="profileStyles.css">
</head>
<body>
    <div id="buttons">
    <h3 style="display: inline" id="appname" onclick="location.href = 'index.html'">Weblite</h3>
       
        <!-- <span><?php echo $name ?? ""?></span> -->
        <button type="button" id="mode"><img src="brightness.png"/></button>
        <button class="btn" onclick="location.href= 'edit.php?name=<?php echo $name?>'">Edit</button>
    </div>
    
    <?php

    if(isset($error)){
        echo "<h1 class='error' style='font-size: 3rem'; margin: 'auto'>$error</h1>";
    }else{
        echo "<h2>HTML</h2>";
        echo "<textarea>".$data["html"]."</textarea>";
        echo "<h2>CSS</h2>";
        echo "<textarea>".$data["css"]."</textarea>";
        echo "<h2>JS</h2>";
        echo "<textarea>".$data["js"]."</textarea>";
    }

    ?>


    <script src="./JS/profileScript.js"></script>

</body>
</html>