<?php
session_start();
error_reporting(0);
include('includes/config.php');
?>
<!DOCTYPE HTML>
<html>
    <head>
    <!-- <link href="https://unpkg.com/tailwindcss@^1.0/dist/tailwind.min.css" rel="stylesheet"> -->
    <link rel="stylesheet" href="https://unpkg.com/flowbite@1.5.3/dist/flowbite.min.css" />
            <title>Tour Packages</title>
    </head>
    <body  >
        <div>
        <?php include('includes/navbar.php');?>
        </div>
        <div style="padding-top: 10px">
            <div style="padding-top: 30px; padding-left: 80px;" class="grid 2sm:grid-cols-7 grid-cols-3 gap-2 mx-2 mb-2 mt-5">
            <?php $sql = "SELECT * from package";
$query = $dbh->prepare($sql);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);
$cnt=1;
if($query->rowCount() > 0)
{
foreach($results as $result)
{	?>
			<div   class="bg-gray-200 zoom max-w-sm max-h-sm rounded border-black overflow-hidden shadow-lg justify-content">
                <div>

					<img style="height: 209.51px;width: 390.13px; object-fit: cover;" class="max-h-sm" src="images/<?php echo htmlentities($result->Image);?>.jpg" class="img-responsive" alt=""/>
                    <div style="text-align: center" class="">
					<h4 style="font-size: 30px;" class=" zoom pz-5 text-black"><?php echo htmlentities($result->Name);?></h4>
					<h6 style="font-size: 15px" class="zoom pz-5 text-black"><?php echo htmlentities($result->Days);?>Days/<?php echo htmlentities($result->Days);?>Nights</h6>
                    <form action="selecttour.php" method="POST">
                    <input type="submit" name="package_id" value="<?php echo htmlentities($result->Package_id);?>" class="bg-gray-700 hover:bg-gray-900 text-white font-bold py-2 px-4 rounded">
                </form>
</a>
				</div>
</div>
                    
                </div>
				
				

<?php }} ?>
            </div>
        <div>
            <?php include('includes/footer.php');?>
        </div>
        </div>
        <style>
            .zoom{
                transition: transform .2s;
            }
            .zoom:hover{
                transform: scale(1.1);
            }
        </style>
        <script src="https://unpkg.com/flowbite@1.5.3/dist/flowbite.js"></script>
    </body>
</html>