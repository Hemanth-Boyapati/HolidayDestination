<?php
session_start();
error_reporting(0);
include('includes/config.php');
?>
<DOCTYPE HTML>
    <html>
        <head>
        <link rel="stylesheet" href="https://unpkg.com/flowbite@1.5.3/dist/flowbite.min.css" />
            <title>Print Itinerary</title>
        </head>
        <body>
        <div>
        <?php include('includes/navbar.php');?>
            </div>
            <div class="grid mb-8 border border-gray-200 rounded-lg shadow-sm dark:border-gray-700 md:mb-12 md:grid-rows-2">
            <h3 class="text-xl p-6 text-center font-bold dark:text-white">Tour Itinerary</h3>
        <?php
        $booking_id=$_POST['booking_id'];
        $sqla="SELECT * FROM booking where Booking_id=$booking_id";
            $querya = $dbh->prepare($sqla);
            $querya->execute();
            $resulta=$querya->fetch(PDO::FETCH_OBJ);
        for($x=1;$x<=($resulta->Num_travellers);$x++){
            $n="name".$x;
         $name =$_POST[$n];
         $a="age".$x;
         $age=$_POST[$a];
         $age_int=(int)$age;
         $g="gender".$x;
         $gender=$_POST[$g];
         $sqlb="INSERT into co_traveller(Name,Age,Gender,Booking_id) value('$name',$age_int,'$gender',$booking_id)";
            $queryb= $dbh->prepare($sqlb);
            $queryb->execute();
            // $result1=$query1->fetch(PDO::FETCH_OBJ);
        }

            $sql="SELECT * FROM package where package_id=$resulta->Package_id";
$query = $dbh->prepare($sql);
$query->execute();
$result=$query->fetch(PDO::FETCH_OBJ);
// <h1>Itinerary:-</h1>
// echo ($result->Location_id);
$sql1="SELECT * from place where Location_id=$result->Location_id order by Place_id LIMIT $result->Days  ";
$query1 = $dbh->prepare($sql1);
$query1->execute();
$results1=$query1->fetchAll(PDO::FETCH_OBJ);
$cnt=1;
$numdays=1;
if($query1->rowCount() > 0)
{
foreach($results1 as $result1)
{	?>
<figure class="flex flex-col p-8 bg-white border-b border-gray-200 rounded-t-lg md:rounded-t-none md:rounded-tl-lg md:border-r dark:bg-gray-800 dark:border-gray-700">
<h1>Day <?php echo $numdays?></h1>
<?php $numdays=$numdays+1?>
<?php
$sql3="SELECT * from tourist_spot where tourist_spot.Place_id=$result1->Place_id";
$query3 = $dbh->prepare($sql3);
$query3->execute();
$results3=$query3->fetchAll(PDO::FETCH_OBJ);
$cnt=1;
if($query3->rowCount() > 0)
{
foreach($results3 as $result3)
{	?>

<?php echo htmlentities($result3->Name);?><br>
<?php echo htmlentities($result3->Description);?><br>
<?php }} ?>

<?php
$sqlb="SELECT room.Room_id,room.Hotel_id,room.Price,room.Type,room.Facilities from room join room_booked on room.Room_id=room_booked.Room_id
where room_booked.Booking_id=$booking_id";
$queryb = $dbh->prepare($sqlb);
$queryb->execute();
$resultsb=$queryb->fetchAll(PDO::FETCH_OBJ);
if($queryb->rowCount() > 0)
{
foreach($resultsb as $resultb)
{	?>

<?php
$sqlc="SELECT * from hotel where Hotel_id=$resultb->Hotel_id";
$queryc = $dbh->prepare($sqlc);
$queryc->execute();
$resultc=$queryc->fetch(PDO::FETCH_OBJ);
if($resultc->Place_id==$result1->Place_id)
{ ?>
<h2 class="text-bold text-2xl"><?php echo htmlentities($resultb->Room_id) ?></h2><br>
<h2 class="text-bold text-2xl"><?php echo htmlentities($resultb->Facilities) ?></h2><br>
<h2 class="text-bold text-2xl"><?php echo htmlentities($resultc->Hotel_Address) ?></h2><br>
<h2 class="text-bold text-2xl"><?php echo htmlentities($resultc->Hotel_name) ?></h2><br>
<?php

}
}} ?>
</figure>
<?php }}
$sqld="SELECT * from vehicle where Vehicle_id=$resulta->Vehicle_id";
$queryd = $dbh->prepare($sqld);
$queryd->execute();
$resultd=$queryd->fetch(PDO::FETCH_OBJ);

?>

<figure class="flex flex-col p-8 bg-white border-b border-gray-200 rounded-t-lg md:rounded-t-none md:rounded-tl-lg md:border-r dark:bg-gray-800 dark:border-gray-700">
<h5 class="text-bold text-2xl"><?php echo($resultd->Model) ?></h5><br>
<h5 class="text-bold text-2xl"><?php echo($resultd->Driver) ?></h5><br>
<h5 class="text-bold text-2xl"><?php echo($resultd->Contact) ?></h5><br>

</figure>
</div>

</body>
</html>