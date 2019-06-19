<?php
session_start();

// some code and database ideas from
// https://www.tutorialrepublic.com/php-tutorial/php-mysql-login-system.php
// https://stackoverflow.com/questions/1545357/how-to-check-if-a-user-is-logged-in-in-php for count idea

include('config/db_connect.php');

if (isset($_POST['login'])) {
    if (!(isset($_SESSION['isLoggedIn']))) {
        $username = $_POST['login_username'];
        $password = $_POST['login_password'];
        if ($username === 'admin') {
            header('Location: admin.php');
        }
        $username = stripcslashes($username);
        $username = htmlspecialchars($username);
        doLogin($username, $password, $db);
    } else {
        null;
    }
}

function doLogin($username, $password, $db)
{
    if ($password === '') {
        $sql = "select * from users where (users.username = '$username' and users.password is null)";
    } else {
        $sql = "select * from users where (users.username = '$username' and users.password = '$password')";
    }

    $sqlResult = mysqli_query($db, $sql);
    $count = mysqli_num_rows($sqlResult);

    if ($count == 1) {
        $user = mysqli_fetch_array($sqlResult);
        mysqli_free_result($sqlResult);

        $_SESSION['isLoggedIn'] = true;
        $_SESSION['username'] = $username;
        $_SESSION['user_id'] = $user['id'];
        $_SESSION['connected_hero_id'] = (isset($user['Hero_ID'])) ? ($user['Hero_ID']) : null;
        $_SESSION['isAdmin'] = $user['is_admin'];
    }
}

if (isset($_POST['register'])) {
    $username = $_POST['register_username'];
    $password = $_POST['register_password'];
    doRegister($username, $password, $db);

}

function doRegister($username, $password, $db)
{
    $sql = "insert into `users` (`username`, `password`) values ('{$username}', '{$password}')";
    $result = mysqli_query($db, $sql);
    mysqli_free_result($result);
}

if (isset($_POST['logout'])) {
    if (isset($_SESSION)) {
        session_unset();
    }
}

mysqli_close($db);

function userIsAnAdminQuestionMark(): bool
{
    return (isset($_SESSION['isAdmin'])) && ($_SESSION['isAdmin'] == true);
}

?>
<!DOCTYPE html>
<html>

<?php include('header.php'); ?>
<div class="container">
    <div class="row center">

        <div class="col s6">
            <div style="
            <?php if ((isset($_SESSION['isLoggedIn']) && ($_SESSION['isLoggedIn'] === true))) {
                echo "display:none !important";
            } else {
                null;
            } ?> ">
                <h3 class="">Login</h3>

                <form action="user.php" method="POST">
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
        </div>

        <div class="col s6" style="
        <?php if ((isset($_SESSION['isLoggedIn']) && ($_SESSION['isLoggedIn'] === true))) {
            echo "display:none !important";
        } else {
            null;
        } ?> ">
            <h3 class="">Register</h3>
            <form action="user.php" method="POST">
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
    </div>

    <div class="row">
        <div class="col s12 center">
            <div class="card">
                <h3 class="center-align" style="padding-right: 0.5em">User Info</h3>
                <div style="padding-left: 0.5em; padding-bottom: 0.75em">
                    Username: <?php
                    if (isset($_SESSION['isLoggedIn'])) {
                        echo $_SESSION['username'];
                    }
                    ?> <p/>
                    User type:
                    <?php
                    if (isset($_SESSION['Hero_ID'])) {
                        echo 'Hero.';
                    } else if (userIsAnAdminQuestionMark()) {
                        echo 'Admin.';
                    } else if (isset($_SESSION['isLoggedIn'])) {
                        echo 'Regular.';
                    }
                    ?> <p/>
                    User actions: <?php
                    if (userIsAnAdminQuestionMark()) {
                        echo "<a href='admin.php'>admin panel</a>";
                    }
                    ?> <p/>
                    <p/>
                </div>
            </div>
        </div>
        <div class="col s12 center" style="
        <?php if (!(isset($_SESSION['isLoggedIn']))) {
            echo "display:none !important";
        } else {
            null;
        } ?> ">
            <h3 class="">Logout</h3>
            <form action="user.php" method="POST">
                <button type="submit" name="logout" class="btn-large">Logout</button>
            </form>
        </div>
    </div>
</div>

<?php include('footer.php'); ?>

</html>
