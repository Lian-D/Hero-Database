<?php
    function doSelection($field1, $field2, $field3, $db)
    {
        $sql = "SELECT".$field1." ".
            "FROM".$field2." ".
            "Where".$field3." ";

        $sqlResult = mysqli_query($db, $sql);
        $result = mysqli_fetch_all($sqlResult, MYSQLI_ASSOC);
        mysqli_free_result($sqlResult);
        return $result;
    }