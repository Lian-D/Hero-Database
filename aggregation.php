<?php

function doCount($heroName,$db)
{

    $sql = "SELECT Hero.heroName AS 'Hero Name', COUNT(*) AS 'No. of Medals'
            FROM Hero, HasEarnedMedal
            WHERE Hero.Hero_ID = HasEarnedMedal.Hero_ID AND Hero.heroName = '$heroName'
            GROUP BY HasEarnedMedal.Hero_ID";
    //echo "SQL ". $sql;
    $sqlResult = mysqli_query($db, $sql);
    $abilityResult = mysqli_fetch_all($sqlResult, MYSQLI_ASSOC);
    //echo print_r($abilityResult);
    mysqli_free_result($sqlResult);
    return $abilityResult;
}

function doNested($Name,$db) {
    $sql = "SELECT MAX(salary), Hero.affiliation AS Association
            FROM HeroRank, Hero
            WHERE HeroRank.Hero_ID = Hero.Hero_ID AND Hero.affiliation ='$Name' 
              AND Hero.Hero_ID IN (SELECT Winner
                             FROM FightResult)
            GROUP BY Hero.affiliation";
    //echo "SQL ". $sql;
    $sqlResult = mysqli_query($db, $sql);
    $abilityResult = mysqli_fetch_all($sqlResult, MYSQLI_ASSOC);
    //echo print_r($abilityResult);
    mysqli_free_result($sqlResult);
    return $abilityResult;
}



?>