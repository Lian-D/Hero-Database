<?php
function getHeroNames(mysqli $db)
{
    $sql = "select heroName from Hero";
    $sqlResult = mysqli_query($db, $sql);
    $heroNameList = mysqli_fetch_all($sqlResult, MYSQLI_ASSOC);
    return $heroNameList;
}