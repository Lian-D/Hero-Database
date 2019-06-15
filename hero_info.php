<?php

$sql = "select * from Hero where Hero_ID = $hero_id";
$sqlResult = mysqli_query($db, $sql);
$hero = mysqli_fetch_array($sqlResult, MYSQLI_ASSOC);
mysqli_free_result($sqlResult);
mysqli_close($db);

//print_r($hero);
?>

<html>
<?php include('header.php'); ?>

<div class="container">
    <div class="card large">
        <span class="card-title"><h1><?php echo $hero['heroName'] ?></h1></span>
        <div class="card-content">
            <h5>
                <div class="right">
                    <?php $img = 'media/' . $hero['Hero_ID'] . '.png';
                    (@getimagesize($img)) ?: $img = 'media/noimg.png';
                    ?>
                    <img src="<?php echo $img ?>">
                </div>
                <ul>
                    <li>Date of Birth:<?php echo $hero['DOB'] ?></li>
                    <li>Age:</li>
                    <li>Height: <?php echo $hero['height'] . ' cm' ?></li>
                    <li>Weight: <?php echo $hero['weight'] . ' lbs' ?></li>
                    <li>Location: <?php echo $hero['location'] ?></li>
                    <li>Affiliation: <?php echo $hero['affiliation'] ?></li>
                    <li>Status (Alive/Injured): <?php echo $hero['heroStatus'] ?></li>
                    <li>Rank: <?php echo $hero['heroRank_ID'] ?></li>
                    <li>Salary: <?php echo $hero['heroRank_ID'] ?></li>
                </ul>
            </h5>
        </div>
    </div>

    <div class="card large">
        <span class="card-title"><h1>Detailed Info</h1></span>
        <div class="card-content">
            <?php
            // mostly power stats
            //foreach loop
            ?>
        </div>
    </div>

    <div class="card large">
        <span class="card-title"><h1>Abilities</span>
        <div class="card-content">
            <?php
            //foreach loop
            ?>
        </div>
    </div>

    <div class="card large">
        <span class="card-title"><h1>Schedule</h1></span>
        <div class="card-content">
            <?php
            //foreach loop
            ?>
        </div>
    </div>

    <div class="card large">
        <span class="card-title"><h1>Medals</h1></span>
        <div class="card-content">
            <?php
            //foreach loop
            ?>
        </div>
    </div>
</div>


</html>
