<?php
include('config/db_connect.php');
include('salary_functions.php');

// some reference from our main man the net ninja

$salaryArray = array_fill_keys(array('inequality', 'equality', 'salary', 'ascOrDesc', 'ordby'), '');
//echo print_r($salaryArray);


if (isset($_POST['doSalary'])) {
//    echo print_r($_POST). '<br/>';
    $salaryArray  = salarySetup($salaryArray);
    $salaryResult = doSalaryQuery($salaryArray, $db);
}



?>

<html lang="en">
<?php include('header.php'); ?>

<div class="container">
    <div class="card large">

        <h4 class="center">Salaries.</h4>
        <div class="row">
            <form class="white" action="simplequeries.php" method="POST">
                <div class="col s5">
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

                <div class="col s7">
                    <label>
                        <input type="radio" name="ascOrDesc" value="DESC"/>
                        <span>Order by Highest First</span>
                    </label>
                    <p/>
                    <label>
                        <input type="radio" name="ascOrDesc" value="ASC"/>
                        <span>Order by Lowest First</span>
                    </label>
                </div>

                <p/>
                <div class="row">
                    <div class="col s12 valign-wrapper">
                        <div class="col s6">
                            <label>
                                <input type="checkbox" name="equal_to"/>
                                <span>Equal</span>
                            </label>
                        </div>
                        <div class="col s6">
                            <label>Amount (Integer)</label>
                            <input type="text" name="amount" value="0">
                            <div class="center">
                                <input type="submit" name="doSalary" value="Submit Request" class="btn-small">
                            </div>
                        </div>
                    </div>
                </div>

            </form>
        </div>
        <div class="center">
            <ul class="collections">
                <?php if (!empty($salaryResult)) {
                    foreach ($salaryResult as $arrayResult): ?>
                        <li class="collections-item"><?php {
                                echo ($arrayResult['heroName']) . ": 円" . $arrayResult['salary'];
                            } ?></li>
                    <?php endforeach;
                } ?>
            </ul>

        </div>
    </div>
</div>

<?php include('footer.php'); ?>
</html>
