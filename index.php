<?php
include('config/db_connect.php');

$sql = "select heroName, heroStatus, heroRank_ID, Hero_ID from Hero order by heroRank_ID ASC";
$sqlResult = mysqli_query($db, $sql);
$arrayOfHeroes = mysqli_fetch_all($sqlResult, MYSQLI_ASSOC);
mysqli_free_result($sqlResult);
mysqli_close($db);

?>

<html lang="en">
<?php include('header.php'); ?>

<div class="container">
    <div class="row">

        <?php foreach ($arrayOfHeroes as $aHero): ?>

            <div class="col s6 m6">
                <div class="card">
                    <div class="card-content">
                        <div class="card-image">
                            <?php
                            $img = 'media/' . $aHero['Hero_ID'] . '.png';
                            (@getimagesize($img)) ?: $img = 'media/noimg.png';
                            ?>
                            <a href="hero_info.php?id=<?php echo $aHero['Hero_ID'] ?>"><img src="<?php echo $img ?>"></a>
                            <span class="hero_card_text_bg hero_card_text card-title"> <?php echo $aHero['heroName'] ?> </span>
                        </div>
                        <div class="card-action right-align">
                            <div>
                                <ul>
                                    <li><strong>Status: </strong> <em><?php echo $aHero['heroStatus'] ?></em></li>
                                    <li><strong>Rank: </strong> <em><?php echo $aHero['heroRank_ID'] ?></em></li>
                                </ul>
                            </div>
                            <a href="hero_info.php?id=<?php echo $aHero['Hero_ID'] ?>"
                               class="deep-orange darken-1 waves-effect waves-light btn-small">
                                <i class="material-icons right">face</i>More Info</a>
                        </div>
                    </div>
                </div>
            </div>

        <?php endforeach; ?>

    </div>
</div>

<?php include('footer.php'); ?>
</html>