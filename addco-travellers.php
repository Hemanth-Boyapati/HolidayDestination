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
             
            ?>

<?php

// echo ($result->Location_id);
// echo '<pre>';
//              var_dump($_POST);
//              echo '</pre>';
            // $name=$_get['name'];
            $package_id=$_POST['package_id'];
            $package_id_int=(int)$package_id;
            $hotelrating=$_POST['hotelrating'];
            $name=$_POST['name'];
            $email=$_POST['email'];
            $phone=$_POST['phone'];
            $phone_int=(int)$phone;
            $age=$_POST['age'];
            $travellers=$_POST['travellers'];
            $travellers_int=(int)$travellers;
            $age_int=(int)$age;
            $olddate=$_POST['dateoftravel'];
            $date = date("Y-m-d", strtotime($olddate));  
            // echo gettype($age_int);
            $gender=$_POST['gender'];
            $address=$_POST['address'];
            $email=$_POST['email'];
            // echo ($package_id);
            $sql="SELECT * FROM package where package_id=$package_id";
            $query = $dbh->prepare($sql);
            $query->execute();
            $result=$query->fetch(PDO::FETCH_OBJ);

            $sql1="SELECT * FROM vehicle where Location_id=($result->Location_id) order by Vehicle_id limit 1";
            $query1 = $dbh->prepare($sql1);
            $query1->execute();
            $result1=$query1->fetch(PDO::FETCH_OBJ);
            // echo($result1->Model);

$vehicle_id_int=(int)$result1->Vehicle_id;
            $sql5="INSERT into booking(Customer_name,Age,Phone_number,Gender,Email,Address,Num_travellers,Start_date,Status,
Vehicle_id,Package_id) values('$name',$age_int,'$phone','$gender','$email','$address',$travellers_int,'$date',1,$vehicle_id_int,$package_id_int
)";
$query5 = $dbh->prepare($sql5);
$query5->execute();







 $sql2="SELECT * from place where Location_id=$result->Location_id order by Place_id LIMIT $result->Days  ";
$query2 = $dbh->prepare($sql2);
$query2->execute();
$results2=$query2->fetchAll(PDO::FETCH_OBJ);
$cnt=1;
if($query2->rowCount() > 0)
{
foreach($results2 as $result2)
{	?>
<?php
// echo ($result2->Place_name);
// echo ($result2->Place_id);
// echo ($hotelrating);


$sql3="SELECT * FROM hotel where Place_id=$result2->Place_id and Hotel_rating=$hotelrating order by Hotel_id limit 1";
            $query3 = $dbh->prepare($sql3);
            $query3->execute();
            $result3=$query3->fetch(PDO::FETCH_OBJ);
            // echo ($result3->Hotel_name);
// ?>
<?php
$sql4="SELECT * FROM room where Hotel_id=$result3->Hotel_id and Occupancy=$travellers order by Room_id limit 1";
            $query4 = $dbh->prepare($sql4);
            $query4->execute();
            $result4=$query4->fetch(PDO::FETCH_OBJ);
            // echo ($result4->Facilities);
            $sql7="SELECT * from booking order by Time_inserted desc limit 1";
            $query7 = $dbh->prepare($sql7);
            $query7->execute();
            $result7=$query7->fetch(PDO::FETCH_OBJ);
            // echo ($result7->Booking_id);
            // echo ($result4->Room_id);
            $book_id_1=(int)$result7->Booking_id;
            $room_id_1=(int)$result4->Room_id;

            // $last_id = $dbh->insert_id;
//   echo "New record created successfully. Last inserted ID is: " . $last_id;
            $sql6="INSERT into room_booked(Booking_id,Room_id) values($result7->Booking_id,$result4->Room_id)";
            $query6 = $dbh->prepare($sql6);
            $query6->execute();
?>



<?php }} ?>

  <!-- ... -->
 
<div class="w-full h-full bg-no-repeat bg-cover bg-center bg-opacity-25 " style="background-image: url('images/bg2.jpg');">


<form action="print_itinerary.php" method="POST">
    <div class="grid 2sm:grid-cols-7  grid-cols-3 gap-2 mx-2 mb-2 mt-5 pt-8 pl-10">
    <?php
    for($x=1;$x<=$travellers;$x++){?>
    <div  class="p-6 max-w-sm h-auto backdrop-invert bg-white/50 rounded-lg border border-gray-200 shadow-md">
        <h1 class="mb-2 text-2xl font-bold tracking-tight text-gray-900">Traveller <?php echo $x ?>:</h1>
    <div class=" mb-6">
        <label for="name" class="block mb-2 text-xl italic text-stone-900 dark:text-gray-300">Your Name</label>
        <input type="name" name="name<?php echo $x ?>" id="name" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-48 p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" required>
    </div>
    <div class="mb-6">
        <label for="age" class="block mb-2 text-xl italic text-stone-900 dark:text-gray-300">Age</label>
        <input type="number" id="age" name="age<?php echo $x ?>" placeholder="Enter Age" required min="1" max="100" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-48 p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"> 
    </div>
    <div class="mb-6 flex">
        <h3 class="mr-4 text-xl italic font-semibold text-stone-900 dark:text-white">Gender</h3>
    <div class="flex items-center mr-4">
        <input id="inline-radio" type="radio"  name="gender<?php echo $x ?>" value="M" class="w-4 h-4 text-blue-600 bg-gray-100 border-gray-300 focus:ring-blue-500 ">
        <label for="inline-radio" class="ml-2 text-xl italic text-gray-900 dark:text-gray-300">Male</label>
    </div>
    <div class="flex items-center mr-4">
        <input id="inline-2-radio" type="radio" value="F" name="gender<?php echo $x ?>" class="w-4 h-4 text-blue-600 bg-gray-100 border-gray-300 focus:ring-blue-500 ">
        <label for="inline-2-radio" class="ml-2 text-xl italic text-gray-900 dark:text-gray-300">Female</label>
    </div>
    </div>
    </div>
    <?php }
    ?>
    </div>
  
    <div class="mt-6  flex flex-col justify-center items-center">
        <input type="submit" name="booking_id" value="<?php echo htmlentities($result7->Booking_id);?>" class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded">
    </div>
</form>
</div>

</body>
</html>
