<?php
include('config/db_connect.php');


// get usernames
$sql = "select username from users";
$result = mysqli_query($db, $sql);
$usernameArray = mysqli_fetch_all($result);

echo print_r($usernameArray);

$admin = true;
$showInterface = 'display: none !important;';
if ($admin == true) {
    $showInterface = 1;
}

mysqli_close($db);

?>


<html lang="en">
<?php include('header.php'); ?>


<div class="container" style="<?php echo $showInterface ?>">
    <div class="card">
        <h4 class="center" style="padding-top: 3vh">Admin Interface.</h4>
        <div class="row">
            <div class="col s12 center">
                <h5 class="center" style="">Delete user permissions.</h5>
                <form>
                <select class = "select" name="heroUserDropDown">
                    <?php if (!empty($usernameArray)) { foreach ($usernameArray as $arrayResult): ?>
                        <li class="select-item">
                            <?php { echo "<option value='" . $arrayResult[0]."'>" .$arrayResult[0] ."</option>";} ?>
                        </li>
                    <?php endforeach; } ?>
                </select>
                </form>
                <p/>
            </div>
        </div>
    </div>
</div>


<head>
    <style>
        .select {display: block;}
    </style>
</head>

<?php include('footer.php'); ?>
</html>
