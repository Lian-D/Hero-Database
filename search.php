<?php
    include('config/db_connect.php');

    $sql = "select heroName, heroStatus, heroRank_ID, Hero_ID from Hero";
    $sqlResult = mysqli_query($db, $sql);
    $arrayOfHeroes = mysqli_fetch_all($sqlResult, MYSQLI_ASSOC);
    mysqli_free_result($sqlResult);
    mysqli_close($db);

?>

<html>
<?php include('header.php'); ?>

<div class="container">
    <div class="row">
        <input type="text" name="search" placeholder="Search..">
    </div>
</div>

<?php include('footer.php'); ?>
</html>
