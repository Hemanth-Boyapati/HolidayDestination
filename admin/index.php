<?php
session_start();
error_reporting(0);
include('../includes/config.php');
?>
<html>
    <head>
        <link rel="stylesheet" href="https://unpkg.com/flowbite@1.5.3/dist/flowbite.min.css" />
        <title>Admin</title>
    </head>
    <body>
<?php include('../includes/navbar.php');
?>

            <?php
            echo "hi";
            $sql0="select * from package where Package_id=1";
            echo "hi";
            $query99=dbh->prepare($sql0);
            echo "hi";
            $query99->execute();
            $result0=$query99->fetch(PDO::FETCH_OBJ);
            echo $result0;
            ?>



            <script src="https://unpkg.com/flowbite@1.5.3/dist/flowbite.js"></script>
    </body>
    </html>