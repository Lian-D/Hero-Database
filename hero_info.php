<?php
include('config/db_connect.php');

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

// to get salary
$sql = "select salary from HeroRank where Hero_ID = $hero_id";
$sqlResult = mysqli_query($db, $sql);
$salary = mysqli_fetch_array($sqlResult, MYSQLI_ASSOC);

// detailed info aka powerStats
$sql = "select dex, durability, luck, strength, intelligence from PowerStats WHERE Hero_ID = $hero_id";
$sqlResult = mysqli_query($db, $sql);
$powerStats = mysqli_fetch_array($sqlResult, MYSQLI_ASSOC);

// for Abilities
$sql = "select abilityName from Ability where ability_ID IN (select ability_ID from CanDo where Hero_ID = $hero_id)";
$sqlResult = mysqli_query($db, $sql);
$abilityArray = mysqli_fetch_all($sqlResult, MYSQLI_ASSOC);

// for Medals
$sql = "select * from MedalHonors left join HasEarnedMedal on HasEarnedMedal.medal_ID = MedalHonors.medal_id
        where (HasEarnedMedal.Hero_ID = $hero_id)";
$sqlResult = mysqli_query($db, $sql);
$medalsArray = mysqli_fetch_all($sqlResult, MYSQLI_ASSOC);

// for schedule
$sql = "SELECT hs.Available, s.sDate FROM Hero h, Hero_schedule hs, Sche s
        where h.Hero_ID = $hero_id AND hs.Hero_ID = h.Hero_ID AND hs.Schedule_ID = s.schedule_ID
        order by s.sDate DESC";
$sqlResult = mysqli_query($db, $sql);
$scheArray = mysqli_fetch_all($sqlResult, MYSQLI_ASSOC);

// for fights
$sql = "Select W.Heroname as winner, L.Heroname as loser,S.sDate, F.Location 
        From FightResult F, Sche S, Hero W, Hero L
        where S.schedule_ID = F.schedule_ID 
        AND F.Winner = W.Hero_ID 
        AND F.Loser = L.Hero_ID 
        AND (F.Winner = $hero_id or F.loser = $hero_id)";
$sqlResult = mysqli_query($db, $sql);
$fightResultsArray = mysqli_fetch_all($sqlResult, MYSQLI_ASSOC);

// setup vars for main info
$name       = ($hero['heroName']    === null) ? "<em>Not given.</em>" : $hero['heroName'];
$dob        = ($hero['DOB']         === null) ? "<em>Not given.</em>" : $hero['DOB'];
$age        = ($age[0]['age']       === null) ? "<em>Not given.</em>" : $age[0]['age'];
$height     = ($hero['height']      === null) ? "<em>Not given.</em>" : $hero['height'].' cm.';
$weight     = ($hero['weight']      === null) ? "<em>Not given.</em>" : $hero['weight'].' lbs.';
$loc        = ($hero['location']    === null) ? "<em>Not given.</em>" : $hero['location'];
$affil      = ($hero['affiliation'] === null) ? "<em>Not given.</em>" : $hero['affiliation'];
$heroStatus = ($hero['heroStatus']  === null) ? "<em>Not given.</em>" : $hero['heroStatus'];
$heroRank   = ($hero['heroRank_ID'] === null) ? "<em>Not given.</em>" : $hero['heroRank_ID'];
$salary     = ($salary['salary']    === null) ? "<em>Not given.</em>" : '円'.$salary['salary'];

mysqli_free_result($sqlResult);
mysqli_close($db);
?>

<html lang="en">
<?php include('header.php'); ?>

<div class="container">
    <div class="card">
        <span class="card-title"><h1><?php echo $name ?></h1></span>
        <div class="card-content">
            <div class="right">
                <?php $img = 'media/' . $hero['Hero_ID'] . '.png';
                (@getimagesize($img)) ?: $img = 'media/noimg.png';
                ?>
                <img src="<?php echo $img ?>">
            </div>
            <ul class="collection">
                <li class="collection-item">Age:                    <?php echo $age ?></li>
                <li class="collection-item">Date of Birth:          <?php echo $dob ?></li>
                <li class="collection-item">Height:                 <?php echo $height ?></li>
                <li class="collection-item">Weight:                 <?php echo $weight ?></li>
                <li class="collection-item">Location:               <?php echo $loc ?></li>
                <li class="collection-item">Affiliation:            <?php echo $affil ?></li>
                <li class="collection-item">Status (Alive/Injured): <?php echo $heroStatus ?></li>
                <li class="collection-item">Rank:                   <?php echo $heroRank ?></li>
                <li class="collection-item">Salary:                 <?php echo $salary ?></li>
            </ul>
        </div>
    </div>

    <div class="card">
        <span class="card-title"><h1>Detailed Info</h1></span>
        <div class="card-content">
            <ul class="collection">
                <?php foreach ($powerStats as $key => $value): ?>
                    <li class="collection-item"><?php echo ucfirst(strtolower($key)) . ": " . $value ?></li>
                <?php endforeach; ?>
            </ul>
        </div>
    </div>

    <div class="card">
        <span class="card-title"><h1>Abilities</h1></span>
        <div class="card-content">
            <ul class="collection">
                <?php foreach ($abilityArray as $ability): ?>
                    <li class="collection-item"> <?php echo($ability["abilityName"]); ?> </li>
                <?php endforeach; ?>
            </ul>
        </div>
    </div>

    <div class="card">
        <span class="card-title"><h1>Schedule</h1></span>
        <div class="card-content">
            <ul class="collection">
            <?php foreach ($scheArray as $scheItem): ?>
            <li class="collection-tem">Available on <?php echo $scheItem['sDate'] ?>? <strong><?php echo $scheItem['Available'] ?></strong></li>
            <?php endforeach; ?>
            </ul>
        </div>
    </div>

    <div class="card">
        <span class="card-title"><h1>Notable Bouts</h1></span>
        <div class="card-content">
            <ul class="collection">
                <?php foreach ($fightResultsArray as $fightResult): ?>
                    <li class="collection-item">
                        <?php echo $name ?> fought on <em><?php echo $fightResult['sDate'] ?></em> at <em><?php echo $fightResult['Location'] ?>.</em>
                        <br/>
                        <ul class="collection">
                            <li><strong>Winner:</strong> <?php echo $fightResult['winner'] ?>.</li>
                            <li><strong>Loser:</strong> <?php echo $fightResult['loser'] ?>.</li>
                        </ul>
                    </li>
                <?php endforeach; ?>
            </ul>
        </div>
    </div>

    <div class="card">
        <span class="card-title"><h1>Medals</h1></span>
        <div class="card-content">
            <ul class="collection">
                <?php foreach ($medalsArray as $medal): ?>
                    <li class="collection-item"><strong><?php echo $medal['title'] ?></strong>
                        <br/>
                        Obtained on: <?php echo $medal['medalDate'] ?></li>
                <?php endforeach ?>
            </ul>
        </div>
    </div>
</div>

<?php include('footer.php'); ?>
</html>
