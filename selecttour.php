<?php
session_start();
error_reporting(0);
include('includes/config.php');
?>
<DOCTYPE HTML>
    <html>
        <head>
        <link rel="stylesheet" href="https://unpkg.com/flowbite@1.5.3/dist/flowbite.min.css" />
            <title>Selecting tour</title>
        </head>
        <body>

            <div>
        <?php include('includes/navbar.php');?>
      
            </div>
            <?php $package_id=$_POST['package_id'];
            $sql="SELECT * FROM package where package_id=$package_id";
$query = $dbh->prepare($sql);
$query->execute();
$result=$query->fetch(PDO::FETCH_OBJ);
?>
<h1>Itinerary:-</h1>
 <?php

// echo ($result->Location_id);

 $sql1="SELECT * from place where place.Location_id=$result->Location_id ";
$query1 = $dbh->prepare($sql1);
$query1->execute();
$results1=$query1->fetchAll(PDO::FETCH_OBJ);
$cnt=1;
$numdays=1;
if($query1->rowCount() > 0)
{
foreach($results1 as $result1)
{	?>





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
$sql2="SELECT * from hotel where hotel.Place_id=$result1->Place_id";
$query2 = $dbh->prepare($sql2);
$query2->execute();
$results2=$query2->fetchAll(PDO::FETCH_OBJ);
$cnt=1;
if($query2->rowCount() > 0)
{
foreach($results2 as $result2)
{	?>
<!-- 
<?php echo htmlentities($result2->Place_id);?><br>
<?php echo htmlentities($result2->Hotel_name);?><br>
<?php echo htmlentities($result2->Hotel_Address);?><br> -->
<?php }} ?>









<?php }} ?>
			
<div>
<form action="">
  
<fieldset>
  <legend class="sr-only">Hotel Price Range</legend>

  <div class="flex items-center mb-4">
    <input id="hotel-option-3" type="radio" name="hotelrating" value="3" class="w-4 h-4 border-gray-300 focus:ring-2 focus:ring-blue-300 dark:focus:ring-blue-600 dark:focus:bg-blue-600 dark:bg-gray-700 dark:border-gray-600" checked="">
    <label for="hotel-option-3" class="block ml-2 text-sm font-medium text-gray-900 dark:text-gray-300">
      Low
    </label>
  </div>

  <div class="flex items-center mb-4">
    <input id="hotel-option-2" type="radio" name="hotelrating" value="2" class="w-4 h-4 border-gray-300 focus:ring-2 focus:ring-blue-300 dark:focus:ring-blue-600 dark:focus:bg-blue-600 dark:bg-gray-700 dark:border-gray-600">
    <label for="hotel-option-2" class="block ml-2 text-sm font-medium text-gray-900 dark:text-gray-300">
      Mid
    </label>
  </div>

  <div class="flex items-center mb-4">
    <input id="hotel-option-1" type="radio" name="hotelrating" value="1" class="w-4 h-4 border-gray-300 focus:ring-2 focus:ring-blue-300 dark:focus:ring-blue-600 dark:bg-gray-700 dark:border-gray-600">
    <label for="hotel-option-1" class="block ml-2 text-sm font-medium text-gray-900 dark:text-gray-300">
      High
    </label>
  </div>

</fieldset>
<label for="travellers" class="block mb-2 text-sm font-medium text-gray-900 dark:text-gray-400">Number of travellers</label>
<select id="travellers" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500">
  <option>1</option>
  <option>2</option>
  <option>3</option>
  <option>4</option>
</select>

  <input type="submit" value="Submit">
</form>
</div>
            

        </body>
    </html>