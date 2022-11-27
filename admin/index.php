<?php
session_start();
error_reporting(0);
include('includes/config.php');
?>
<DOCTYPE HTML>
<html>
<head>
    <title>Admin</title>
    <link rel="stylesheet" href="https://unpkg.com/flowbite@1.5.3/dist/flowbite.min.css" />
</head>
<body>
<?php include('includes/navbar.php');?>
<?php include('includes/sidebar.php'); ?>
<div style="left: 0px" class="text-center">
    <button class="text-white bg-gray-900 hover:bg-gray-800 focus:ring-4 focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 mr-2 dark:bg-blue-600 dark:hover:bg-blue-700 focus:outline-none dark:focus:ring-blue-800" type="button" data-drawer-target="drawer-disable-body-scrolling" data-drawer-show="drawer-disable-body-scrolling" data-drawer-body-scrolling="false" aria-controls="drawer-disable-body-scrolling">
        Menu
    </button>
</div>
<img src="../images/admin1.jpg">
<!--<div>-->
<!--    --><?php
//    $query = $dbh->prepare('show tables');
//    $query->execute();
//
//    while($rows = $query->fetch(PDO::FETCH_ASSOC)){
//        var_dump($rows);
//    }
//    ?>
<!---->
<!--</div>-->
<script src="https://unpkg.com/flowbite@1.5.3/dist/flowbite.js"></script>
</body>
</html>