<?php
include('config/db_connect.php');

// references:
// https://stackoverflow.com/questions/6768793/get-the-full-url-in-php
// https://stackoverflow.com/questions/11480763/how-to-get-parameters-from-a-url-string
$actual_link = "http://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";
$parsedUrl = parse_url($actual_link);
parse_str($parsedUrl['query'], $query);
$hero_id = $query['id'];

// for Hero Table
$sql = "select * from Hero where Hero_ID = $hero_id";
$sqlResult = mysqli_query($db, $sql);
$hero = mysqli_fetch_array($sqlResult, MYSQLI_ASSOC);

// to get age
$sql = "select age from HeroDobAge where DOB in ( select DOB from Hero where Hero_ID = $hero_id)";
$sqlResult = mysqli_query($db, $sql);
$age = mysqli_fetch_all($sqlResult, MYSQLI_ASSOC);
$age = $age[0]['age'];

// for Abilities
$sql = "select abilityName from Ability where ability_ID IN (select ability_ID from CanDo where Hero_ID = $hero_id)";
$sqlResult = mysqli_query($db, $sql);
$abilityArray = mysqli_fetch_all($sqlResult, MYSQLI_ASSOC);
mysqli_free_result($sqlResult);


mysqli_close($db);
?>

<html>
<?php include('header.php'); ?>

<div class="container">
    <div class="card large">
        <span class="card-title"><h1><?php echo $hero['heroName'] ?></h1></span>
        <div class="card-content">
            <div class="right">
                <?php $img = 'media/' . $hero['Hero_ID'] . '.png';
                (@getimagesize($img)) ?: $img = 'media/noimg.png';
                ?>
                <img src="<?php echo $img ?>">
            </div>
            <ul class="collection">
                <li class="collection-item">Date of Birth: <?php echo $hero['DOB'] ?></li>
                <li class="collection-item">Age: <?php echo $age ?></li>
                <li class="collection-item">Height: <?php echo $hero['height'] . ' cm' ?></li>
                <li class="collection-item">Weight: <?php echo $hero['weight'] . ' lbs' ?></li>
                <li class="collection-item">Location: <?php echo $hero['location'] ?></li>
                <li class="collection-item">Affiliation: <?php echo $hero['affiliation'] ?></li>
                <li class="collection-item">Status (Alive/Injured): <?php echo $hero['heroStatus'] ?></li>
                <li class="collection-item">Rank: <?php echo $hero['heroRank_ID'] ?></li>
                <li class="collection-item">Salary: <?php echo $hero['heroRank_ID'] ?></li>
            </ul>
        </div>
    </div>

    <div class="card large">
        <span class="card-title"><h1>Detailed Info</h1></span>
        <div class="card-content">
            <?php
            // mostly power stats
            // foreach loop
            ?>
        </div>
    </div>

    <div class="card large">
        <span class="card-title"><h1>Abilities</h1></span>
        <div class="card-content">
            <ul class="collection">
                <?php foreach ($abilityArray as $ability): ?>
                    <li class="collection-item"> <?php echo($ability["abilityName"]); ?> </li>
                <?php endforeach; ?>
            </ul>
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

<?php include('footer.php'); ?>
</html>
