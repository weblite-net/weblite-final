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
            $accessible = false;
            // $conn = new DB("localhost", "root", "", "weblite");
            // $projResults = $conn->selectMany("SELECT name, created, type from projects where id='$id' AND type='public'");
            $isFollowedByMe = $conn->isFollowing($myId, $id);
            if($isFollowedByMe || $id===$myId){
                $accessible = true;
                $profileData = $conn->select("SELECT name, email, date from users where id='$id';");
                $relationalData = $conn->select("SELECT followers, following from usermeta WHERE id = '$id';");
                $following = $conn->selectMany("SELECT user_id as id from relations WHERE follower_id = '$id';");
                $followers = $conn->selectMany("SELECT follower_id as id from relations WHERE user_id = '$id'");

            }
            

        }
    }


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
    <link rel="stylesheet" href="follow.css">
</head>
<body>

    <?php if(!$name || !$exists): ?>
        <div id="error-404">
            <h1 class="error" style="font-size:8rem">404 !!!</h1>
            <h1 class='error' style="display: block">No such user exists</h1>
            <h1 class="error" style="font-size:5rem">¯\_(ツ)_/¯</h1>
        </div>

        <?php elseif(!$accessible): ?>
            <div id="error-404">
                <h1 class="error" style="font-size:5.4rem">ACCESS DENIED</h1>
                <h1 class='error' style="display: block">You must be following <?php echo $name?> to view this page</h1>
                <svg style="fill: red; transform: scale(6); margin-top: 5rem" width="24px" height="24px" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path d="M12.884 2.532c-.346-.654-1.422-.654-1.768 0l-9 17A.999.999 0 0 0 3 21h18a.998.998 0 0 0 .883-1.467L12.884 2.532zM13 18h-2v-2h2v2zm-2-4V9h2l.001 5H11z"/></svg>            </div>
            

    <?php else: ?>
    
        <div id="buttons">
        <h3 style="display: inline" id="appname" onclick="location.href = 'index.html'">Weblite</h3>
       
        <!-- <span><?php echo $name ?? ""?></span> -->
        <button type="button" id="mode"><img src="brightness.png"/></button>
    </div>

   <section id="page">
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
                <!-- <button type="button" class="rel-btn"><?php echo $isFollowedByMe ? "Following" : "Follow"?></button> -->
            
                <!-- Followers Icon -->
                <div id="relation" style="width: 12rem">
                    <svg text="muted" aria-hidden="true" height="16" viewBox="0 0 16 16" version="1.1" width="16" data-view-component="true" class="followers-icon">
                    <path fill-rule="evenodd" d="M5.5 3.5a2 2 0 100 4 2 2 0 000-4zM2 5.5a3.5 3.5 0 115.898 2.549 5.507 5.507 0 013.034 4.084.75.75 0 11-1.482.235 4.001 4.001 0 00-7.9 0 .75.75 0 01-1.482-.236A5.507 5.507 0 013.102 8.05 3.49 3.49 0 012 5.5zM11 4a.75.75 0 100 1.5 1.5 1.5 0 01.666 2.844.75.75 0 00-.416.672v.352a.75.75 0 00.574.73c1.2.289 2.162 1.2 2.522 2.372a.75.75 0 101.434-.44 5.01 5.01 0 00-2.56-3.012A3 3 0 0011 4z"></path>
                    </svg>
                    <span><?php echo $relationalData["followers"]?></span>
                    <span class="less-faint">followers</span>
                    <span class="vertically-centered-text">.</span>
                    <span><?php echo $relationalData["following"]?></span>
                    <span class="less-faint">following</span>
                </div>


            </div>
        </div>


        </section>

        <section id="followSection">
            <div id="followTab">
                <div id="followingEle" class="tabEle active-tab">Following</div>
                <div id="followersEle" class="tabEle">Followers</div>

            </div>
            <div id="displayUsers">
                <div class="List">
                    <?php while($row = mysqli_fetch_assoc($following)): ?>
                        <div class="suggested-user" onclick="location.href = 'user.php?name=<?php echo base64_decode($row["id"]) ?>'" style="border-bottom: 1px solid #30363d;">
                            <img class="smallimg" src="profile.png"/>
                            <span class="bold big">
                                <?php echo base64_decode($row["id"])?>
                            </span>
                        
                        </div>
                    <?php endwhile ?>

                </div>


                <div class="List">
                    <?php while($row = mysqli_fetch_assoc($followers)): ?>
                        <div class="suggested-user hidden" onclick="location.href = 'user.php?name=<?php echo base64_decode($row["id"]) ?>'" style="border-bottom: 1px solid #30363d;">
                            <img class="smallimg" src="profile.png"/>
                            <span class="bold big">
                                <?php echo base64_decode($row["id"])?>
                            </span>
                        
                        </div>
                    <?php endwhile ?>
                </div>
            </div>
        </section>

   </section>

        
      
            
           

    <?php endif ?>
    <script src="./JS/profileScript.js"></script>
    <script>

        let [following, followers] = document.querySelectorAll('.tabEle');
        let [followingList, followersList] = document.querySelectorAll('.List');
        let current = 0;

        followersList.style.display = 'none';
        
        following.addEventListener('click', () => {
            following.classList.add('active-tab');
            followers.classList.remove('active-tab');
            followersList.style.display = 'none';
            followingList.style.display = 'block';
        })
        followers.addEventListener('click', () => {
            followers.classList.add('active-tab');
            following.classList.remove('active-tab');
            followingList.style.display = 'none';
            followersList.style.display = 'block';
        })
        
    </script>

</body>