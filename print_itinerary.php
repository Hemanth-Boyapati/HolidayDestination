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

<?php $numdays=$numdays+1?>
<?php
$sql3="SELECT * from tourist_spot where tourist_spot.Place_id=$result1->Place_id";
$query3 = $dbh->prepare($sql3);
$query3->execute();
$results3=$query3->fetchAll(PDO::FETCH_OBJ);
$cnt=1;
if($query3->rowCount() > 0)
{
} ?>

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
<!--<h2 class="text-bold text-2xl">--><?php //echo htmlentities($resultb->Room_id) ?><!--</h2><br>-->
<!--<h2 class="text-bold text-2xl">--><?php //echo htmlentities($resultb->Facilities) ?><!--</h2><br>-->
<!--<h2 class="text-bold text-2xl">--><?php //echo htmlentities($resultc->Hotel_Address) ?><!--</h2><br>-->
<!--<h2 class="text-bold text-2xl">--><?php //echo htmlentities($resultc->Hotel_name) ?><!--</h2><br>-->
<?php

}
}} ?>

<?php }}
$sqld="SELECT * from vehicle where Vehicle_id=$resulta->Vehicle_id";
$queryd = $dbh->prepare($sqld);
$queryd->execute();
$resultd=$queryd->fetch(PDO::FETCH_OBJ);

?>

<!--<h5 class="text-bold text-2xl">--><?php //echo($resultd->Model) ?><!--</h5><br>-->
<!--<h5 class="text-bold text-2xl">--><?php //echo($resultd->Driver) ?><!--</h5><br>-->
<!--<h5 class="text-bold text-2xl">--><?php //echo($resultd->Contact) ?><!--</h5><br>-->

</div>



            <?php include('includes/navbar.php');?>
        <div class="bg-cover" style="background-image: url('images/bg2.jpg');">
        <div style="padding-left: 1%;">
        <br>
        <h1 style="" class="mb-4 text-3xl text-center font-extrabold text-gray-900 dark:text-white md:text-5xl lg:text-6xl">Tour Itinerary</h1>
        <br>
        <p class="text-lg font-medium text-gray-900 dark:text-white"></p>
        <br>

            <div style="padding-left: 37%">
            <a style="padding-bottom: 1%" class="block max-w-sm p-6 bg-gray-200 border border-gray-200 rounded-lg shadow-md  ">
                <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">Package Details:</h5>
                <p class="font-normal text-gray-700 dark:text-gray-400">Package:  <?php echo($result->Name) ?></p>
                <p class="font-normal text-gray-700 dark:text-gray-400">Number of days :  <span> <?php echo $numdays?> </span> Days</p>
                <p class="font-normal text-gray-700 dark:text-gray-400">Description</p>
                <p class="font-normal text-gray-700 dark:text-gray-400">
                    <?php
                    foreach($results3 as $result3)
                    {	?>
                        <?php echo htmlentities($result3->Name);?><br>
                        <?php echo htmlentities($result3->Description);?><br>
                    <?php }
                    ?>
                </p>
            </a>

            <br>

            <a style="padding-bottom: 1%" class="block max-w-sm p-6 bg-gray-200 border border-gray-200 rounded-lg shadow-md  ">
                <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">Hotel Details:</h5>
                <p class="font-normal text-gray-700 dark:text-gray-400"><?php echo htmlentities($resultc->Hotel_name) ?></p>
                <p class="font-normal text-gray-700 dark:text-gray-400">Room id: <?php echo htmlentities($resultb->Room_id) ?></p>
                <p class="font-normal text-gray-700 dark:text-gray-400">Hotel Address:</p>
                <p class="font-normal text-gray-700 dark:text-gray-400"><?php echo htmlentities($resultc->Hotel_Address) ?></p>
                <p class="font-normal text-gray-700 dark:text-gray-400">Facilities offered:</p>
                <p class="font-normal text-gray-700 dark:text-gray-400"><?php echo htmlentities($resultb->Facilities) ?></p>
            </a>

            <br>
            <a style="padding-bottom: 1%" class="block max-w-sm p-6 bg-gray-200 border border-gray-200 rounded-lg shadow-md  ">
                <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">Vehicle details</h5>
                <p class="font-normal text-gray-700 dark:text-gray-400">Model: <?php echo($resultd->Model) ?></p>
                <p class="font-normal text-gray-700 dark:text-gray-400">Driver name: <?php echo($resultd->Driver) ?></p>
                <p class="font-normal text-gray-700 dark:text-gray-400">Contact: <?php echo($resultd->Contact) ?></p>
            </a>
            </div>



        </div>

        <br>
        <div style="right">
            <button onclick="printFunction()" type="button" class="text-white bg-gray-800 place-items-center hover:bg-gray-900 focus:outline-none focus:ring-4  focus:ring-gray-300 font-medium rounded-lg text-sm px-5 py-2.5 mr-2 mb-2 dark:bg-gray-800 dark:hover:bg-gray-700 dark:focus:ring-gray-700 dark:border-gray-700">Print</button>

            <script>
                function printFunction() {
                    window.print();
                }
            </script>
        </div>
        <br>



        <script src="https://unpkg.com/flowbite@1.5.4/dist/flowbite.js"></script>

        <br>
        <br>
        </div>
        </body>
</html>