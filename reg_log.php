<?php
session_start();

// some code and database ideas from
// https://www.tutorialrepublic.com/php-tutorial/php-mysql-login-system.php
// https://stackoverflow.com/questions/19531044/creating-a-very-simple-1-username-password-login-in-php/19531260
// https://johnmorrisonline.com/build-php-login-form-using-sessions/

include ('config/db_connect.php');

if (isset($_POST['login'])) {
    $username = $_POST['login_username'];
    $password = $_POST['login_password'];

    doLogin($username, $password, $db);

    echo print_r($_POST['login']);
}

function doLogin($username, $password, $db) {

}

if (isset($_POST['register'])) {
    $username = $_POST['register_username'];
    $password = $_POST['register_password'];
    echo 'user: '.$username.' pass: '.$password."<p/>";
    doRegister($username, $password, $db);

}


function doRegister($username, $password, $db) {

    $sql = "insert into `users` (`username`, `password`) values ('{$username}', '{$password}')";
    echo $sql."<p/>";
    $result = mysqli_query($db, $sql);
    echo 'result is: '.$result;
//    return;
}

if (isset($_POST['logout'])) {
    session_destroy();
}

mysqli_close($db);

?>
<!DOCTYPE html>
<html>

<?php include('header.php'); ?>
<div class="container">
    <div class="row">

        <div class="col s6">
            <h3 class="center">Login</h3>
            <form action="reg_log.php" method="POST">
                <div class="form-group">
                    <label>Username:</label>
                    <input type="text" name="login_username" required>
                </div>
                <div class="form-group">
                    <label>Password:</label>
                    <input type="password" name="login_password">
                </div>
                <button type="submit" name="login" class="btn-large">Login</button>
            </form>
        </div>

        <div class="col s3 right">
            <h3 class="">Logout</h3>
            <form action="reg_log.php" method="POST">
                <button type="submit" name="logout" class="btn-large">Logout</button>
            </form>
        </div>

    </div>

    <div class="row">

        <div class="col s6">
            <h3 class="">Register</h3>
            <form action="reg_log.php" method="POST">
                <div class="form-group">
                    <label>Username:</label>
                    <input type="text" name="register_username" required>
                </div>
                <div class="form-group">
                    <label>Password:</label>
                    <input type="password" name="register_password">
                </div>
                <button type="submit" name="register" class="btn-large">Register</button>
            </form>
        </div>

        <div class="col s6">
            <div class="card">
                <h3 class="center-align" style="padding-right: 0.5em">User Info</h3>
                <div style="padding-left: 0.5em; padding-bottom: 0.75em">
                Username: <p/>
                Privileges: <p/>
                </div>
            </div>
        </div>

    </div>
</div>

<?php include('footer.php'); ?>

</html>
