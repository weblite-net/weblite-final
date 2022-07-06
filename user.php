<?php

    require("./backend/authMiddleware.php");
    if(!authorize($conn)){
        header("Location: login.php");
    }

    // require("./backend/databaseHandler.php");

    $name = false;
    if(isset($_GET["name"])){
        $name = $_GET["name"];
        $id = base64_encode($name);
        $myId = $_SESSION["id"];

        $exists = false;

        if($conn->checkRecordExistence($name)){
            $exists = true;
            // $conn = new DB("localhost", "root", "", "weblite");
            $projResults = $conn->selectMany("SELECT name, created, type from projects where id='$id' AND type='public'");
            
            $profileData = $conn->select("SELECT name, email, date from users where id='$id';");
            $relationalData = $conn->select("SELECT followers, following from usermeta WHERE id = '$id';");
            $isFollowedByMe = $conn->isFollowing($myId, $id);

        }
    }
    // echo $name;
?>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User - <?php echo $name ?? 'user'?></title>
    <link rel="stylesheet" href="brightStyles.css">
    <link rel="stylesheet" href="profileStyles.css">
    <link rel="stylesheet" href="global.css">
</head>
<body>

    <?php if(!$name || !$exists): ?>
        <div id="error-404">
            <h1 class="error" style="font-size:8rem">404 !!!</h1>
            <h1 class='error' style="display: block">No such user exists</h1>
            <h1 class="error" style="font-size:5rem">¯\_(ツ)_/¯</h1>
        </div>
    <?php else: ?>
    
        <div id="buttons">
        <h3 style="display: inline" id="appname" onclick="location.href = 'index.html'">Weblite</h3>
       
        <!-- <span><?php echo $name ?? ""?></span> -->
        <button type="button" id="mode"><img src="brightness.png"/></button>
    </div>

    <section id="profile">

        <!-- <img scr="profile.png"/> -->
        <div id="profile-data">
            <img src="profile.png" id="mainimg"/>


            <table>
                <tr>
                    <!-- <td><b>Name : </b></td> -->
                    <td><b><?php echo $profileData["name"] ?? ""?></b></td>
                </tr>
                <tr>
                    <!-- <td><b>Email : </b></td> -->
                    <td class="faint"><a class="undo-anchor" href="mailto:<?php echo $profileData["email"]?>"><?php echo $profileData["email"] ?? ""?></a></td>
                </tr>
                <tr>
                    <!-- <td><b>Joined : </b></td> -->
                    <td><?php echo $profileData["date"]?? ""?></td>
                </tr>
            </table>

            <div id="relations">
                <button type="button" class="rel-btn"><?php echo $isFollowedByMe ? "Following" : "Follow"?></button>
               
                <!-- Followers Icon -->
                <div id="relation">
                    <svg text="muted" aria-hidden="true" height="16" viewBox="0 0 16 16" version="1.1" width="16" data-view-component="true" class="followers-icon">
                    <path fill-rule="evenodd" d="M5.5 3.5a2 2 0 100 4 2 2 0 000-4zM2 5.5a3.5 3.5 0 115.898 2.549 5.507 5.507 0 013.034 4.084.75.75 0 11-1.482.235 4.001 4.001 0 00-7.9 0 .75.75 0 01-1.482-.236A5.507 5.507 0 013.102 8.05 3.49 3.49 0 012 5.5zM11 4a.75.75 0 100 1.5 1.5 1.5 0 01.666 2.844.75.75 0 00-.416.672v.352a.75.75 0 00.574.73c1.2.289 2.162 1.2 2.522 2.372a.75.75 0 101.434-.44 5.01 5.01 0 00-2.56-3.012A3 3 0 0011 4z"></path>
                    </svg>
                    <span><?php echo $relationalData["followers"]?></span>
                    <span class="less-faint navigable" onclick="location.href='follow.php?name=<?php echo $name?>'">followers</span>
                    <span class="vertically-centered-text">.</span>
                    <span><?php echo $relationalData["following"]?></span>
                    <span class="less-faint navigable" onclick="location.href='follow.php?name=<?php echo $name?>'">following</span>
                </div>


            </div>
        </div>
        
        
    <!-- </section> -->


        
       <div id="main-data">
       <div id="display-data">
        <h2 class='error'><?php echo isset($error) ? $error : "" ?> </h2>
            
            <h2 class="centered-text"><?php echo $name?>'s Projects</h2>

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
                            echo "<td><a href='viewproj.php?pname=".$row["name"]."&uname=".$name."' id='link'>".$row["name"]."<span class='data constant space-left' id='shrink'>".strtoupper($row["type"])."</span></a></td>";
                            echo "<td>".$row["created"]."</td>";
                            echo "</tr>";
                        }
                    }else{
                        echo "<tr><td colspan='3'>$name doesn't have any projects yet</td></tr>";
                    }
                ?>
            </table>
       </div>

        <!-- <div id="misc-tab">
            <div id="search-user">
                <form action="user.php" method="GET">
                    <h1 class="centered-text">Connect with other users</h1>
                    <input type="text" id="username-search" name="name" placeholder="Look up other users on the platform"/>
                    <button type="submit" class="btn centered-text" style="width: 3.5rem; font-size: 1rem">Go</button>

                </form>
            </div>
            
            <h1 class="centered-text">Suggested for you</h1>
            <div id="suggest">
                <div class="suggested-user">
                    <img class="smallimg" src="profile.png"/>
                    <span class="bold">Name_of_User</span>
                    <span class="less-faint">mail@email.com</span>
                </div>
                <div class="suggested-user">
                    <img class="smallimg" src="profile.png"/>
                    <span class="bold">Name_of_User</span>
                    <span class="less-faint">mail@email.com</span>
                </div>
                <div class="suggested-user">
                    <img class="smallimg" src="profile.png"/>
                    <span class="bold">Name_of_User</span>
                    <span class="less-faint">mail@email.com</span>
                </div>
            </div>
        </div>
       </div>
        
    </section> -->
            
           

    <?php endif ?>
    <script src="./JS/profileScript.js"></script>
    <script>
        followBtn = document.querySelector(".rel-btn");
        followBtn.addEventListener('click', () => {
            console.log("Hello");
            let username = document.querySelector("table td").innerText;
            console.log(username);
            let res = fetch("./backend/followHandler.php", {
                method: 'POST', 
                headers: {
                    "Content-Type": "application/json"
                },
                body: JSON.stringify({'name': username, 'act': `${followBtn.innerText === 'Follow' ? 'follow' : 'unfollow'}`})}
            ).then((response) => {
                    return response.text()
                }).then((body) => {
                    followBtn.innerText = `${followBtn.innerText === 'Follow' ? 'Following' : 'Follow'}`;
                })
            })
       
    </script>

</body>
</html>