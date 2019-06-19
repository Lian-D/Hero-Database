<?php
include('config/db_connect.php');
include('salary_functions.php');
include('joinquery.php');
include('aggregation.php');
include('getHeroNames.php');
include('simplequeries_projection.php');

if (isset($_POST['doSalary'])) {
//    echo print_r($_POST). '<br/>';
    $salaryArray = array_fill_keys(array('inequality', 'equality', 'salary', 'ascOrDesc', 'ordby'), '');
    $salaryArray = salarySetup($salaryArray);
    $salaryResult = doSalaryQuery($salaryArray, $db);
}

if (isset($_POST['doJoin'])) {
    $abilityName = htmlspecialchars($_POST['abilityName']);
    $abilityResult = doHeroAbilityQuery($abilityName, $db);
}


if (isset($_POST['doProjection'])) {
    list($projectionResult) = doProjection($db);
}

$heroNameList = getHeroNames($db);

$abilityNameList = getAbilityNameList($db);

if (isset($_POST['doAggregation'])) {

        $heroName= (htmlspecialchars($_POST['heroNameDropdown']));
        $aggregationResult = doCount($heroName,$db);

}

if (isset($_POST['doNested'])) {

    $Name= (htmlspecialchars($_POST['affiliationList']));
    $nestedAggregationResult = doNested($Name,$db);

}

mysqli_close($db);

?>

<html lang="en">
<?php include('header.php'); ?>

<div class="container">
    <div class="card">
        <h4 class="center" style="padding-top: 3vh">Salaries (Selection).</h4>
        <div class="row">
            <form class="white" action="simplequeries.php" method="POST">

                <div class="col s6">
                    <label>
                        <input type="radio" name="inequality" value="greater_than"/>
                        <span> Greater Than </span>
                    </label>
                    <p/>
                    <label>
                        <input type="radio" name="inequality" value="less_than"/>
                        <span> Less Than </span>
                    </label>
                </div>

                <div class="col s6">
                    <label>
                        <input type="radio" name="ascOrDesc" value="DESC"/>
                        <span>Order by Descending</span>
                    </label>
                    <p/>
                    <label>
                        <input type="radio" name="ascOrDesc" value="ASC"/>
                        <span>Order by Ascending</span>
                    </label>
                </div>

                <p/>

                <div class="row">
                    <div class="col s12 valign-wrapper">
                        <div class="col s3">
                            <label>
                                <input type="checkbox" name="equal_to"/>
                                <span>Equal</span>
                            </label>
                        </div>
                        <div class="col s9">
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
            <ul class="collection">
                <?php if (!empty($salaryResult)) { foreach ($salaryResult as $arrayResult): ?>
                    <li class="collection-item"><?php {
                            echo ($arrayResult['heroName']) . ": 円" . $arrayResult['salary'];
                        } ?></li>
                <?php endforeach;} ?>
            </ul>
        </div>
    </div>

    <div class="card">
        <div class="row">
            <h4 class="center" style="padding-top: 3vh; padding-bottom: -3vh;">Field + Table Search (Projection).</h4>
            <div class="col s3">
                <form class="white" action="simplequeries.php" method="POST">
                    Field Name.
                    <input type="text" name="field" placeholder= "Use commas to separate"/>
                    <p>
                        <br/>
                    </p>
                    Table Name.
                    <input type="text" name="table" placeholder= "Single Table"/>
                    <div class="center">
                        <input type="submit" name="doProjection" value="Submit Request" class="btn-small">
                    </div>
                </form>
            </div>
            <div class="col s9">
                <?php if (!empty($projectionResult)) { foreach ($projectionResult as $key => $innerArray): ?>
                    <ul class="collection">
                        <?php foreach ($innerArray as $innerKey => $item): ?>
                            <li class="collection-item"><?php echo $innerKey . ': ' . $item ?></li>
                        <?php endforeach; ?>
                    </ul>
                <?php endforeach; } ?>
            </div>
        </div>
    </div>

    <div class="card">
        <div class="row">
            <h4 class="center" style="padding-top: 3vh; padding-bottom: -3vh;">Join.</h4>
            <div class="row" >
                <form class="white" action="simplequeries.php" method="POST">
                    <div style='display: block'>
                        Select Ability Name to show Hero's with those Abilities
                        <select class = "select" name="abilityName">
                        <?php if (!empty($abilityNameList)) { foreach ($abilityNameList as $arrayResult): ?>
                            <li class="select-item">
                                <?php { echo "<option value='" . $arrayResult['abilityName'] ."'>" . $arrayResult['abilityName'] ."</option>";} ?>
                            </li>
                        <?php endforeach; } ?>
                        </select>
                    </div>

                    <div class="center">
                        <input type="submit" name="doJoin" value="Submit Request" class="btn-small">
                    </div>
                </form>

            </div>
            <div class="col s9">
                <?php if (!empty($abilityResult)) { foreach ($abilityResult as $key => $innerArray): ?>
                    <ul class="collection">
                        <?php foreach ($innerArray as $innerKey => $item): ?>
                            <li class="collection-item"><?php echo 'Hero Name: ' . $item ?></li>
                        <?php endforeach; ?>
                    </ul>
                <?php endforeach; } ?>
            </div>
        </div>
    </div>

    <div class="card">
        <div class="row">
            <h4 class="center" style="padding-top: 3vh; padding-bottom: -3vh;">Aggregation.</h4>
            <h6 class="center">Number of Medals earned by each Hero </h6>
            <div>
                <form action="simplequeries.php" method="POST">
                    <div class="col s4">
                        <select class = "select" name="heroNameDropdown">
                            <?php if (!empty($heroNameList)) { foreach ($heroNameList as $arrayResult): ?>
                                <li class="select-item">
                                    <?php { echo "<option value='" . $arrayResult['heroName'] ."'>" .$arrayResult['heroName'] ."</option>";} ?>
                                </li>
                            <?php endforeach; } ?>
                        </select>
                    </div>

                    <div class="center">
                        <input type="submit" name="doAggregation" value="Submit Request" class="btn-small">
                    </div>
                </form>
            </div>

            <div class="col s6">
                <?php if (!empty($aggregationResult)) {
                    foreach ($aggregationResult as $key => $innerArray): ?>
                        <ul class="collection">
                            <?php foreach ($innerArray as $innerKey => $item): ?>
                                <li class="collection-item"><?php echo $innerKey . ': ' . $item ?></li>
                            <?php endforeach; ?>
                        </ul>
                    <?php endforeach; 
                } ?>
            </div>

        </div>
    </div>

    <div class="card">
        <div class="row">
            <h4 class="center" style="padding-top: 3vh; padding-bottom: -3vh;">Nested Aggregation.</h4>
            <h6 class="center">Maximum Salary of Hero's who has won a fights grouped by Hero Association </h6>
            <div>
                <form action="simplequeries.php" method="POST">
                    <select class = "select" name="affiliationList">
                        <option value = "Blizzard Group">Blizzard Group </option>
                        <option value = "Council of Swordmasters">Council of Swordmasters </option>
                        <option value = "Hero Association">Hero Association</option>
                        <option value = "House of Evolution">House of Evolution</option>
                        <option value = "Saitama Group">Saitama Group</option>
                        <option value = "Tank Topper Army">Tank Topper Army</option>
                    </select>
                    <div class="center">
                        <input type="submit" name="doNested" value="Submit Request" class="btn-small">
                    </div>
                </form>
            </div>

            <div class="col s6">
                <?php if (!empty($nestedAggregationResult)) {
                    foreach ($nestedAggregationResult as $key => $innerArray): ?>
                        <ul class="collection">
                            <?php foreach ($innerArray as $innerKey => $item): ?>
                                <li class="collection-item"><?php echo $innerKey . ': ' . $item ?></li>
                            <?php endforeach; ?>
                        </ul>
                    <?php endforeach;
                }?>
            </div>

        </div>
    </div>

    <head>
        <style>
            .select {display: block;}
        </style>
    </head>
</div>


}
<?php include('footer.php'); ?>
</html>
