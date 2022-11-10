<?php
session_start();
error_reporting(0);
include('includes/config.php');
?>
<DOCTYPE HTML>
    <html>
        <head>
        <link rel="stylesheet" href="https://unpkg.com/flowbite@1.5.3/dist/flowbite.min.css" />
            <title>Adding co-travellers infromation</title>
        </head>
        <body>
        <div>
        <?php include('includes/navbar.php');?>
      
            </div>
           
        <?php
        $booking_id=$_POST['booking_id'];
        $sql="SELECT * FROM booking where Booking_id=$booking_id";
            $query = $dbh->prepare($sql);
            $query->execute();
            $result=$query->fetch(PDO::FETCH_OBJ);
        for($x=1;$x<=($result->Num_travellers);$x++){
            $n="name".$x;
         $name =$_POST[$n];
         $a="age".$x;
         $age=$_POST[$a];
         $age_int=(int)$age;
         $g="gender".$x;
         $gender=$_POST[$g];
         $sql1="INSERT into co_traveller(Name,Age,Gender,Booking_id) value('$name',$age_int,'$gender',$booking_id)";
            $query1 = $dbh->prepare($sql1);
            $query1->execute();
            // $result1=$query1->fetch(PDO::FETCH_OBJ);
        }
        ?>
        
</body>
</html>