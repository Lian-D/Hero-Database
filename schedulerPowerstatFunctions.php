<?php
    function doScheduleQuery($dex, $dur, $luk, $str, $int, $date, $db)
    {
//        echo $dex."\n ";
//        echo $dur."\n ";
//        echo $luk."\n ";
//        echo $str."\n ";
//        echo $int."\n ";
//        echo $date."\n ";

        $sql = "SELECT h.heroName
            FROM Hero h, PowerStats ps
            where ps.Hero_ID = h.Hero_ID 
            and ps.dex > $dex
            and ps.durability >  $dur
            and ps.luck > $luk
            and ps.strength > $str
            and ps.intelligence > $int
            AND h.Hero_ID IN
                (select h.Hero_ID
                From Hero h, Hero_schedule hs, Sche s
                Where h.Hero_ID = hs.Hero_ID 
                and hs.Schedule_ID =s.schedule_ID 
                and s.sDate = DATE'$date' 
                group by h.Hero_ID, s.sDate)";
//        echo "SQL : " . $sql;

        $sqlResult = mysqli_query($db, $sql);
//        echo print_r($sqlResult);
        $result = mysqli_fetch_all($sqlResult, MYSQLI_ASSOC);
        mysqli_free_result($sqlResult);
        return $result;
    }
