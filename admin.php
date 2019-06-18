<?php
include('config/db_connect.php');

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
            <div class="col s6 center">
                <h5 class="center" style="">Update Tables.</h5>
                Some stuff here. <p/>
            </div>
            <div class="col s6 center">
                <h5 class="center" style="">Insert to Tables.</h5>
                Some stuff here. <p/>
            </div>
        </div>
        <div class="row">
            <div class="col s12 center">
                <h5 class="center" style="">Delete Tables/Tuples.</h5>
                Some stuff here. <p/>
            </div>
        </div>
    </div>
</div>

<?php include('footer.php'); ?>
</html>
