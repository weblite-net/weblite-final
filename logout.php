<?php

    require("./backend/logoutHandler.php");
    logout();
    header("Location: login.php");

?>