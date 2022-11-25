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
        <body >

            <div>
        <?php include('includes/navbar.php');?>
      
            </div>
            <div style="padding-left: 10px;padding-right: 10px" >
                <p style="text-align: center" class="text-4xl font-black text-gray-900 dark:text-white">Booking</p>
            <?php $package_id=$_POST['package_id'];
            $sql="SELECT * FROM package where package_id=$package_id";
$query = $dbh->prepare($sql);
$query->execute();
$result=$query->fetch(PDO::FETCH_OBJ);
?>
<!--<h1>Itinerary:-</h1>-->
 <?php
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


<!--<h1>Day --><?php //echo $numdays?><!--</h1>-->
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

<?php //echo htmlentities($result3->Name);?><!--<br>-->
<?php //echo htmlentities($result3->Description);?><!--<br>-->
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


            <br>



<!--            <div class="bg-image"></div>-->



            <div style="padding-left:55px;float:left; position: absolute" >

                <h4 style="font-size: 30px;" class="pz-5 text-black"><?php echo htmlentities($result->Name);?></h4>
                <br>
                <picture>
                <img style="height: 600px;width: 900px;" src="images/<?php echo htmlentities($result->Image);?>.jpg" class="h-auto rounded-lg" alt="image description">-->
                </picture>
                <br>
                <p class="max-w-lg text-2xl font-semibold leading-normal text-gray-900 dark:text-white">Package Details:</p>
                <div>
                    <p class="text-lg font-medium text-gray-900 dark:text-white">Duration:  <span class="text-lg font-medium text-gray-700 dark:text-white"><?php echo $numdays?> days</span></p>
                    <p class="text-lg font-medium text-gray-900 dark:text-white">Places to visit:</p>
                    <p class="text-lg font-medium text-gray-900 dark:text-white"><?php echo htmlentities($result3->Name);?></p>
                    <p class="text-lg font-medium text-gray-900 dark:text-white">Description:</p>
                    <p class="text-lg text-gray-900 dark:text-white"><?php echo htmlentities($result3->Description);?></p>
                </div>
                <br>
            </div>



<div class="mt-3" style="position: absolute;padding-left: 1100px;padding-right: 20px; float: right">
    <p class="text-lg text-gray-900 dark:text-white">Travel Details</p>
<form action="addco-travellers.php" method="POST" >
  <label>Select the hotel price range:</label>
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
<select id="travellers" name="travellers" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-48 p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500">
  <option value="1">1</option>
  <option value="2">2</option>
  <option value="3">3</option>
  <option value="4">4</option>
</select>

<div>
<label for="dateoftravel">Date of Travel</label>
<!--<input type="date" id="dateoftravel" name="dateoftravel">-->
    <div class="relative">
        <div class="flex absolute inset-y-0 left-0 items-center pl-3 pointer-events-none">
            <svg aria-hidden="true" class="w-5 h-5 text-gray-500 dark:text-gray-400" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M6 2a1 1 0 00-1 1v1H4a2 2 0 00-2 2v10a2 2 0 002 2h12a2 2 0 002-2V6a2 2 0 00-2-2h-1V3a1 1 0 10-2 0v1H7V3a1 1 0 00-1-1zm0 5a1 1 0 000 2h8a1 1 0 100-2H6z" clip-rule="evenodd"></path></svg>
        </div>
        <input datepicker type="date" id="dateoftravel" name="dateoftravel" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full pl-10 p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" placeholder="Select date">
    </div>
</div>
    <br>
    <p class="text-lg text-gray-900 dark:text-white">Personal Details</p>
<div class="mb-6">
    <label for="name" class="block mb-2 text-sm font-medium text-gray-900 dark:text-gray-300">Your Name</label>
    <input type="name" name="name" id="name" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" required>
  </div>
  <div class="mb-6">
    <label for="email" class="block mb-2 text-sm font-medium text-gray-900 dark:text-gray-300">Your E-mail</label>
    <input type="email" name="email" id="email" value="" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" required>
  </div>
  <div class="mb-6">
            <label for="phone" class="block mb-2 text-sm font-medium text-gray-900 dark:text-gray-300">Phone number</label>
            <input type="tel" id="phone" name="phone" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"  required>
        </div>
        <div class="mb-6">
        <label for="age" class="block mb-2 text-sm font-medium text-gray-900 dark:text-gray-300">Age</label>
        <input type="number" id="age" name="age" placeholder="Enter Age" required min="1" max="100" class="bg-gray-50 border border-gray-300 w-48 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"> 
        </div>
        <div class="mb-6 flex">
        <h3 class="mr-4 font-semibold text-gray-900 dark:text-white">Gender</h3>
    <div class="flex items-center mr-4">
        <input id="inline-radio" type="radio"  name="gender" value="M" class="w-4 h-4 text-blue-600 bg-gray-100 border-gray-300 focus:ring-blue-500 ">
        <label for="inline-radio" class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-300">Male</label>
    </div>
    <div class="flex items-center mr-4">
        <input id="inline-2-radio" type="radio" value="F" name="gender" class="w-4 h-4 text-blue-600 bg-gray-100 border-gray-300 focus:ring-blue-500 ">
        <label for="inline-2-radio" class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-300">Female</label>
    </div>
</div>
<div class="mb-6">
    <label for="address" class="block mb-2 text-sm font-medium text-gray-900 dark:text-gray-300">Your Address</label>
    <input type="text" name="address" id="address" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" required>
  </div>
  <input type="submit" name="package_id" value="<?php echo htmlentities($package_id);?>" class="bg-gray-900 hover:bg-gray-700 text-white font-bold py-2 px-4 rounded">

</form>

</div>

            </div>

<!--            <style>-->
<!--                .bg-image {-->
<!--                    /* The image used */-->
<!--                    background-image: url("images/delhi.jpg");-->
<!---->
<!--                    /* Add the blur effect */-->
<!--                    filter: blur(8px);-->
<!--                    -webkit-filter: blur(8px);-->
<!---->
<!--                    /* Full height */-->
<!--                    height: 100%;-->
<!---->
<!--                    /* Center and scale the image nicely */-->
<!--                    background-position: center;-->
<!--                    background-repeat: no-repeat;-->
<!--                    background-size: cover;-->
<!--                }-->
<!--            </style>-->

<!--            <div>-->
<!--            <a class="block max-w-sm p-6 bg-white border border-gray-200 rounded-lg shadow-md hover:bg-gray-100 dark:bg-gray-800 dark:border-gray-700 dark:hover:bg-gray-700">-->
<!--                <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">Noteworthy technology acquisitions 2021</h5>-->
<!--                <p class="font-normal text-gray-700 dark:text-gray-400">Here are the biggest enterprise technology acquisitions of 2021 so far, in reverse chronological order.</p>-->
<!--            </a>-->
<!--            </div>-->
<!--            <footer style="position: absolute ;width: 100%; bottom: 0px" class="bottom-0">-->
<!--                --><?php //include('includes/footer.php');?>
<!--            </footer>-->
<!--            <footer style="position: absolute;width: 100%;">-->
<!--                --><?php //include('includes/footer.php');?>
<!--            </footer>-->
</div>
        </body>
    </html>