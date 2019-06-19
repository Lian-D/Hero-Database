<?php
function doProjection(mysqli $db): array
{
    $field = htmlspecialchars($_POST['field']);
    $table = htmlspecialchars($_POST['table']);

    $sql = "select $field from $table";
    $sqlResult = mysqli_query($db, $sql);
    $projectionResult = mysqli_fetch_all($sqlResult, MYSQLI_ASSOC);
    return array($sqlResult, $projectionResult);
}