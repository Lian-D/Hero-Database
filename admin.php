<?php
include('config/db_connect.php');


// get usernames
$sql = "select Hero_ID, heroName from Hero";
$result = mysqli_query($db, $sql);
$heroIDArray = mysqli_fetch_all($result);

//echo print_r($heroIDArray);

$admin = true;
$showInterface = 'display: none !important;';
if ($admin == true) {
    $showInterface = 1;
}

mysqli_close($db);

?>


<html lang="en">
<?php include('header.php'); ?>


<div class="container" style="<?php echo $showInterface ?>">
    <div class="card">
        <h4 class="center" style="padding-top: 3vh">Admin Interface.</h4>
        <div class="row">
            <div class="col s12 center">
                <h5 class="center" style="">Remove a hero from the database (by ID and Name).</h5>
                <form>
                <select class = "select" name="heroIDDropDown">
                    <?php if (!empty($heroIDArray)) { foreach ($heroIDArray as $arrayResult): ?>
                        <li class="select-item">
                            <?php { echo "<option value='" . $arrayResult[0]."'>" .$arrayResult[0] . ' - ' . $arrayResult[1]  ."</option>";} ?>
                        </li>
                    <?php endforeach; } ?>
                </select>
                </form>
                <p/>
            </div>
        </div>
    </div>
</div>



<head>
    <style>
        .select {display: block;}
    </style>
</head>

<?php include('footer.php'); ?>
</html>
