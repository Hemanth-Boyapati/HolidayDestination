<?php
session_start();
error_reporting(0);
include('includes/config.php');
?>
<div class="grid 2sm:grid-cols-7 grid-cols-3 gap-2 mx-2 mb-2 mt-5">
    <?php $sql = "SELECT * from package limit 6";
    $query = $dbh->prepare($sql);
    $query->execute();
    $results=$query->fetchAll(PDO::FETCH_OBJ);
    $cnt=1;
    if($query->rowCount() > 0)
    {
        foreach($results as $result)
        {	?>
            <div style="background-color: pink;" class="max-w-sm max-h-sm rounded border-black overflow-hidden shadow-lg justify-content">
                <div>

                    <img class="max-h-sm" src="images/<?php echo htmlentities($result->Image);?>.jpg" class="img-responsive" alt=""/>
                    <div class="">
                        <h4  " class="pz-5 text-black"><?php echo htmlentities($result->Name);?></h4>
                        <h6 class="pz-5 text-black"><?php echo htmlentities($result->Days);?>Days/<?php echo htmlentities($result->Days);?>Nights</h6>

                        <form action="selecttour.php" method="POST">
                            <input type="submit" name="package_id" value="<?php echo htmlentities($result->Package_id);?>" class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded">
                        </form>
                        </a>
                    </div>
                </div>

            </div>



        <?php }} ?>
</div>
