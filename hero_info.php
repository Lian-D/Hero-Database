<?php

$sql = "select * from Hero where Hero_ID = $hero_id";
$sqlResult = mysqli_query($db, $sql);
$hero = mysqli_fetch_all($sqlResult, MYSQLI_ASSOC);
mysqli_free_result($sqlResult);
mysqli_close($db);

//print_r($hero);
?>

<html>
<?php include('header.php'); ?>

<div class="container">
    <div class="card large">
        <span class="card-title">Basic Info</span>
        <div class="card-content">
            <p>ssssssssssss</p>
        </div>
    </div>

    <div class="card large">
        <span class="card-title">Abilities</span>
        <div class="card-content">
            <p>aaaaaaaaaa</p>
        </div>
    </div>

    <div class="card large">
        <span class="card-title">Schedule</span>
        <div class="card-content">
            <p>eeeeeeeeeeeeeeeee</p>
        </div>
    </div>
</div>
</html>
