<?php
include('config/db_connect.php');

$sql = "select heroName, heroStatus, heroRank_ID, Hero_ID from Hero";
$sqlResult = mysqli_query($db, $sql);
$arrayOfHeroes = mysqli_fetch_all($sqlResult, MYSQLI_ASSOC);
mysqli_free_result($sqlResult);
mysqli_close($db);

?>
<script src="js/queryConstructor.js"></script>

<html>
<?php include('header.php'); ?>

<div class="container">
    <div class="row">
        <h4 class="center" style="padding-top: 3vh; padding-bottom: -3vh;">Projection.</h4>
        <div class="col s3">
            <form class="white" action="" method="POST">
                Availible on:
                <input type="text" name="availibility" placeholder= "date"/>
                <p>
                    <br/>
                </p>
                Dex At Least at least
                <input type="text" name="dex" placeholder= "0"/>
                Durability at least
                <input type="text" name="durability" placeholder= "0"/>
                Luck at least
                <input type="text" name="luck" placeholder= "0"/>
                Strength at least
                <input type="text" name="strength" placeholder= "0"/>
                Intelligence at least
                <input type="text" name="intelligence" placeholder= "0"/>

                <p>
                    <br/>
                </p>

                <div class="center">
                    <input type="submit" name="doProjection" value="Submit Request" class="btn-small">
                </div>


            </form>
        </div>
        <div class="col s9">
        </div>
    </div>
<!--    <div class="card">-->
<!--        some check boxes and radio buttons (delete this when you're done with it nephew)-->
<!--        <form action="SOME ACTION HERE">-->
<!--            <p>-->
<!--                <a href="https://materializecss.com/checkboxes.html">CHECKBOX DOCS</a> <br/>-->
<!--                Use checkboxes when looking for yes or no answers. The for attribute is necessary to bind our custom-->
<!--                checkbox with the input. Add the input's id as the value of the for attribute of the label.-->
<!---->
<!---->
<!--            </p>-->
<!--            <p>-->
<!--                <label>-->
<!--                    <input type="checkbox"/>-->
<!--                    <span>1</span>-->
<!--                </label>-->
<!--            </p>-->
<!--            <p>-->
<!--                <label>-->
<!--                    <input type="checkbox" checked="checked"/>-->
<!--                    <span>2, starts off checked</span>-->
<!--                </label>-->
<!--            </p>-->
<!--            <p>-->
<!--                <a href="https://materializecss.com/radio-buttons.html">RADIO BUTTON DOCS</a> <br/>-->
<!--                Radio Buttons are used when the user must make only one selection out of a group of items. The for-->
<!--                attribute is necessary to bind our custom radio button with the input. Add the input's id as the value-->
<!--                of the for attribute of the label.-->
<!--            </p>-->
<!--            <label>-->
<!--                <input class="with-gap" name="group1" type="radio"/>-->
<!--                <span>Green</span>-->
<!--            </label>-->
<!--            <p/>-->
<!--            <label>-->
<!--                <input class="with-gap" name="group3" type="radio" checked/>-->
<!--                <span>Red</span>-->
<!--            </label>-->
<!--        </form>-->
<!--        <p/>-->
<!--        <form action="#">-->
<!--            <p class="range-field">-->
<!--                <input type="range" id="test5" min="0" max="100" />-->
<!--            </p>-->
<!--        </form>-->
<!---->
<!--    </div>-->
<!--</div>-->

<?php include('footer.php'); ?>
</html>
