<?php
include('config/db_connect.php');
// some reference from our main man the net ninja

$salaryArray = array_fill_keys(array('inequality', 'equality', 'salary'), '');
//echo print_r($salaryArray);
if (isset($_POST['doSalary'])) {
//    echo print_r($_POST). '<br/>';

    if (isset ($_POST['inequality'])) {
        $salaryArray['inequality'] = ((($_POST['inequality']) == 'greater_than') ? '>' : '<');
    };
    if (isset ($_POST['equal_to'])) {
        $salaryArray['equality'] = '=';
    };
    $salaryArray['salary'] = $_POST['amount'];

    $salaryResult = doSalaryQuery($salaryArray, $db);
}

function doSalaryQuery($salaryArray, $db)
{
    $inequality = $salaryArray['inequality'];
    $equality = $salaryArray['equality'];
    $salary = $salaryArray['salary'];
    $sql = "select * from HeroRank inner join Hero on HeroRank.Hero_ID = Hero.Hero_ID where salary $inequality$equality $salary";
    $sqlResult = mysqli_query($db, $sql);
    return $salaryResult = mysqli_fetch_all($sqlResult, MYSQLI_ASSOC);
}

?>

<html lang="en">
<?php include('header.php'); ?>

<div class="container">
    <div class="card large">

        <h4 class="center">Salaries.</h4>
        <div class="row">
            <form class="white" action="simplequeries.php" method="POST">
                <div class="col s4">
                    <label>
                        <input type="radio" name="inequality" value="greater_than"/>
                        <span>Greater Than</span>
                    </label>
                    <p/>
                    <label>
                        <input type="radio" name="inequality" value="less_than"/>
                        <span>Less Than</span>
                    </label>
                </div>
                <div class="col s4">
                    <label>
                        <input type="checkbox" name="equal_to"/>
                        <span>Equal</span>
                    </label>

                </div>
                <div class="col s4">
                    <label>Amount (Integer)</label>
                    <input type="text" name="amount" value="0">
                    <div class="center">
                        <input type="submit" name="doSalary" value="Submit Request" class="btn-small">
                    </div>
                </div>
            </form>
        </div>
        <div class="center">
                        <?php if (isset($salaryResult)) {
                            echo print_r($salaryResult);
                        }; ?>
        </div>
    </div>
</div>

<?php include('footer.php'); ?>
</html>
