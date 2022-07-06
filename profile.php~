<?php

    require("./backend/authMiddleware.php");
    if(!authorize($conn)){
        header("Location: login.php");
    }
    // session_start();
    $id = $_SESSION["id"];
    $error;
    
   // Database Handler is already present in authMiddleware
   if(isset($_POST["name"])){
        // print_r($_POST);
        $name = $_POST["name"];
        $html = $_POST["html"];
        $css = $_POST["css"];
        $js = $_POST["js"];


        if(!$conn->checkProjectExistence($name)){
            // print_r($_POST);
            // echo "INSERT into `projects` (`id`, `html`, `css`, `js`, `name`) VALUES ('$id', '$html', '$css', '$js', '$name');";
            $conn->modify("INSERT into `projects` (`id`, `html`, `css`, `js`, `name`) VALUES ('$id', '$html', '$css', '$js', '$name');");
        }else{
            $error = "A project already exists with the name '$name' !!!";
        }
        
    }
    $projResults = $conn->selectMany("SELECT name, created from projects where id='$id'");
    // print_r($projResults);
     
    $profileData = $conn->select("SELECT name, email, date from users where id='$id';");

    
    
    
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Weblite - Profile</title>
    <link rel="stylesheet" href="brightStyles.css">
    <link rel="stylesheet" href="profileStyles.css">

</head>
<body>


    <div id="buttons">
        <h3 style="display: inline" id="appname" onclick="location.href = 'index.html'">Weblite</h3>
       
        <!-- <span><?php echo $name ?? ""?></span> -->
        <button type="button" id="mode"><img src="brightness.png"/></button>
    </div>

    <section id="profile">

        <!-- <img scr="profile.png"/> -->
        <img src="profile.png"/>
        <table>
            <tr>
                <td><b>Name : </b></td>
                <td><?php echo $profileData["name"] ?? ""?></td>
            </tr>
            <tr>
                <td><b>Email : </b></td>
                <td><?php echo $profileData["email"] ?? ""?></td>
            </tr>
            <tr>
                <td><b>Joined : </b></td>
                <td><?php echo $profileData["date"]?? ""?></td>
            </tr>
        </table>


        
        <h2 class='error'><?php echo isset($error) ? $error : "" ?> </h2>
        
        <h2>Your Projects</h2>

        <table id="projects">
            <tr>
                <th><b>Sno.</b></th>
                <th><b>Project Name</b></th>
                <th><b>Created At</b></th>
                <!-- <td><b</b></td> -->
            </tr>
        
            <?php  
                if($projResults->num_rows >=1){
                    $count = 1;
                    while($row = mysqli_fetch_assoc($projResults)){
                        echo "<tr>";
                        echo "<td>".$count++."</td>";
                        echo "<td><a href='view.php?name=".$row["name"]."' id='link'>".$row["name"]."</a></td>";
                        echo "<td>".$row["created"]."</td>";
                        echo "</tr>";
                    }
                }else{
                    echo "<tr><td colspan='3'>You don't have any projects yet</td></tr>";
                }
            ?>
        </table>
        
        
    </section>
    <a id="attr" href="https://www.flaticon.com/free-icons/user" title="user icons">User icons created by Freepik - Flaticon</a>
    
    <script src="./JS/profileScript.js"></script>
    
</body>
</html>
