<?php
    function doDivision($db)
    {
//        echo $dex."\n ";
//        echo $dur."\n ";
//        echo $luk."\n ";
//        echo $str."\n ";
//        echo $int."\n ";
//        echo $date."\n ";

        $sql = "SELECT h.heroName 
            FROM Hero h
            Where not EXISTS(select *
                 from Ability a
                 where not EXISTS(
                     SELECT * 
                     from CanDo c
                     where c.ability_ID = a.ability_ID
                     and c.Hero_ID = h.Hero_ID))";

        $sqlResult = mysqli_query($db, $sql);
//        echo print_r($sqlResult);
        $result = mysqli_fetch_all($sqlResult, MYSQLI_ASSOC);
        mysqli_free_result($sqlResult);
        return $result;
    }