<?php

function doCount($db)
{

    $sql = "SELECT Hero.heroName AS 'Hero Name', COUNT(*) AS 'No. of Medals' 
    FROM HasEarnedMedal , Hero 
    WHERE Hero.Hero_ID = HasEarnedMedal.Hero_ID 
    GROUP BY HasEarnedMedal.Hero_ID ";
    $sqlResult = mysqli_query($db, $sql);
    $abilityResult = mysqli_fetch_all($sqlResult, MYSQLI_ASSOC);
    mysqli_free_result($sqlResult);
    return $abilityResult;
}

?>