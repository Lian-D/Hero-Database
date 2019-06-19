<?php
    function doScheduleQuery($dex, $dur, $luk, $str, $int, $date, $db)
    {
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

        $sqlResult = mysqli_query($db, $sql);
        $result = mysqli_fetch_all($sqlResult, MYSQLI_ASSOC);
        mysqli_free_result($sqlResult);
        return $result;
    }
