<?php

$sql = "select heroName, heroStatus, heroRank_ID, Hero_ID from Hero where Hero_ID = $hero_id";
$sqlResult = mysqli_query($db, $sql);
$arrayOfHeroes = mysqli_fetch_all($sqlResult, MYSQLI_ASSOC);
mysqli_free_result($sqlResult);
mysqli_close($db);

print_r($arrayOfHeroes);
?>