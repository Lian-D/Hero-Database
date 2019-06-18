<?php

function doHeroAbilityQuery($abilityName, $db)
{

    $sql = "select heroName
            from Hero, CanDo, Ability 
            where Hero.Hero_ID = CanDo.Hero_ID AND CanDo.ability_ID = Ability.ability_ID AND Ability.abilityName = '$abilityName'";
    //echo "SQL : " . $sql;
    $sqlResult = mysqli_query($db, $sql);
    $abilityResult = mysqli_fetch_all($sqlResult, MYSQLI_ASSOC);
    //echo print_r($sqlResult);
    mysqli_free_result($sqlResult);
    return $abilityResult;
}

function getAbilityNameList($db)
{
    $sql = "select abilityName
            from  Ability";
    //echo "SQL : " . $sql;
    $sqlResult = mysqli_query($db, $sql);
    $abilityResult = mysqli_fetch_all($sqlResult, MYSQLI_ASSOC);
    //echo print_r($sqlResult);
    mysqli_free_result($sqlResult);
    return $abilityResult;

}

?>