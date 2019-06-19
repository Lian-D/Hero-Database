<?php
function doProjection(mysqli $db)
{
    $field = htmlspecialchars($_POST['field']);
    $table = htmlspecialchars($_POST['table']);

    if(mysqli_query($db, "explain $table")) {
        if (!($table === 'users')) {
            $sql = "select $field from $table";
            $sqlResult = mysqli_query($db, $sql);
            $projectionResult = mysqli_fetch_all($sqlResult, MYSQLI_ASSOC);
            mysqli_free_result($sqlResult);
            return array($projectionResult);
        } else {
            return null;
        }
    } else {
        return null;
    }

}