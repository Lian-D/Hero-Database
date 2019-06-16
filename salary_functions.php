<?php
function salarySetup(array $salaryArray): array
{
    if (isset ($_POST['inequality'])) {
        $salaryArray['inequality'] = ((($_POST['inequality']) == 'greater_than') ? '>' : '<');
    };
    if (isset ($_POST['equal_to'])) {
        $salaryArray['equality'] = '=';
    };
    $salaryArray['salary'] = $_POST['amount'];
    if (isset ($_POST['ascOrDesc'])) {
        $salaryArray['ascOrDesc'] = $_POST['ascOrDesc'];
        $salaryArray['ordby'] = 'order by salary';

    };
    return $salaryArray;
}

function doSalaryQuery($salaryArray, $db)
{
    $inequality = $salaryArray['inequality'];
    $equality = $salaryArray['equality'];
    $salary = $salaryArray['salary'];
    $ascOrDesc = $salaryArray['ascOrDesc'];
    $ordby = $salaryArray['ordby'];
    $where = '';

    if (!empty($inequality)) {
        $where .= 'where salary '.$inequality;
        if (!empty($equality)) {
            $where .= $equality.$salary;
        } else {
            $where .= $salary;
        }
    } else if (!empty($equality)) {
        $where .= 'where salary '.$equality.$salary;
    }

    $sql = "select heroName, salary from HeroRank inner join Hero on HeroRank.Hero_ID = Hero.Hero_ID 
            $where
            $ordby 
            $ascOrDesc";
    $sqlResult = mysqli_query($db, $sql);
    $salaryResult = mysqli_fetch_all($sqlResult, MYSQLI_ASSOC);
    mysqli_free_result($sqlResult);
    return $salaryResult;
}
