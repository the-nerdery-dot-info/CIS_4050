<?php require('php/submit.php'); ?>
<!doctype html>
<html>
<head>
<!--Author: Garrett, Jarrett, Reece
    Date:   06/24/14
    Purpose: To create an information system for students and advisors to interact and map a degree path.
    -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
<title>MSU Student Advising Portal</title>
<link href="css/profilelayout.css" rel="stylesheet" type="text/css" media="screen"/>
<link href="css/success.css" rel="stylesheet" type="text/css" media="screen"/>
<link href="assets/lou-multi-select-5839faf/css/multi-select.css" rel="stylesheet" type="text/css" media="screen"/>
<link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.4/themes/smoothness/jquery-ui.css" />

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
<script src="../CIS_4050/assets/lou-multi-select-5839faf/js/jquery.multi-select.js"></script>

<script type="text/javascript">
//instance for multiselect list by department
    $(document).ready(function(){
        $('#my-select-freshman').multiSelect();
        $('#my-select-sophmore').multiSelect();
        $('#my-select-junior').multiSelect();
        $('#my-select-senior').multiSelect();
    //Deselect ALL of the courses to start over
        $('#deselect-all').click(function(){
            $('#my-select-freshman').multiSelect('deselect_all');
            $('#my-select-sophmore').multiSelect('deselect_all');
            $('#my-select-junior').multiSelect('deselect_all');
            $('#my-select-senior').multiSelect('deselect_all');
        return false;
        });

    $('#profile-button').on('click', function(){
        var freshmanCourse = $('#ms-my-select-freshman .ms-selection .ms-selected').children().text();
                          $('#freshmanStoredCourse').val(freshmanCourse);
        var sophmoreCourse = $('#ms-my-select-sophmore .ms-selection .ms-selected').children().text();
                          $('#sophmoreStoredCourse').val(sophmoreCourse);
        var juniorCourse = $('#ms-my-select-junior .ms-selection .ms-selected').children().text();
                          $('#juniorStoredCourse').val(juniorCourse);
        var seniorCourse = $('#ms-my-select-senior .ms-selection .ms-selected').children().text();
                          $('#seniorStoredCourse').val(seniorCourse);

        });
//        $('div[id^="sales_info_"]')
//toggle through department if select list changes
//toggle through department if select list changes
    $('#departments').bind('change', function(){
            //CIS department select menu
        if( $("#departments").val() == 'freshman') {
            $("#freshWrap").delay(500).show( "drop" , {direction: "right"}, 1000 );
        }else{
            $("#freshWrap").hide( "drop" , {direction: "left"}, 1200 );
        }
        //MGT department select menu
        if( $("#departments").val() == 'sophmore' ){
            $("#sophWrap").delay(500).show( "drop" , {direction: "right"}, 1000 );
        }else{
            $("#sophWrap").hide( "drop" , {direction: "left"}, 1200 );
        }
        //MKT department select menu
        if( $("#departments").val() == 'junior' ){
            $("#juniorWrap").delay(500).show( "drop" , {direction: "right"}, 1000 );
        }else{
            $("#juniorWrap").hide( "drop" , {direction: "left"}, 1200 );
        }
        //FIN department select menu
        if( $("#departments").val() == 'senior' ){
            $("#seniorWrap").delay(500).show( "drop" , {direction: "right"}, 1000 );
        }else{
            $("#seniorWrap").hide( "drop" , {direction: "left"}, 1200 );
        }
    });

//Deselect ALL of the courses to start over
        $('#deselect-all1').click(function(){
            $('#my-select-freshman').multiSelect('deselect_all');
        return false;
        });
        $('#deselect-all2').click(function(){
            $('#my-select-sophmore').multiSelect('deselect_all');
        return false;
        });
        $('#deselect-all3').click(function(){
            $('#my-select-junior').multiSelect('deselect_all');
        return false;
        });
        $('#deselect-all4').click(function(){
            $('#my-select-senior').multiSelect('deselect_all');
        return false;
        });
    });
</script>

</head>
<body>
    <div id="wrapper2">
<header>
<p>Below is a list of your remaining courses needed to graduate from MSU Denver.</p><p>Please complete the degree path builder and then print a copy for your record. Once you complete the builder, an advisor in your department will be notified and sent a copy of your degree path. The advisor will contact you if he or she has any further suggestions to your degree path.</p><p>If no suggestions are recommended, than the hold will be lifted from your account and you will be able to register for the upcoming semester. Thank you for using MSU Advisor!</p>
</header>

           <div id="wrap-center-multiselect">
           <!--BEGIN FRESHMAN multiselect-->
            <div id="">
        <form action="php/complete.php" method="post">
        <legend>Please select a school year to view and select the remaining courses you need to graduate.</legend>
    <select name="departments" id="departments" class="departments">

           <option value="default" selected>Please choose a school year.</option>
            <option value="freshman">Freshman Year</option>
            <option value="sophmore">Sophomore Year</option>
            <option value="junior">Junior Year</option>
            <option value="senior">Senior Year</option>
    </select>
           <!--STORE SELECTED DATA IN THIS HIDDEN INPUT FIELD-->
            <input id="freshmanStoredCourse" type="hidden" name="freshmanStoredCourse"/>
            <input id="sophmoreStoredCourse" type="hidden" name="sophmoreStoredCourse"/>
            <input id="juniorStoredCourse" type="hidden" name="juniorStoredCourse"/>
            <input id="seniorStoredCourse" type="hidden" name="seniorStoredCourse"/>


        <!--FRESHMAN-->
           <div id="freshWrap">
           <legend>Please select the courses your would like to take during your freshman year.</legend>
            <select multiple="multiple" id="my-select-freshman" name="my-select[]">
                    <optgroup label='<strong>Courses recommended for Freshman1 and Freshman2 semesters.</strong>'>
                        <?php require('php/level1.php'); ?>
                    </optgroup>
            </select>
            <div>
               <?php require('php/course-desc1.php'); ?>
            </div>
            <a href="#" id="deselect-all1" title="Deselect All attributes">Start over <small>&#40;This will remove all selected Items&#41;</small></a>
            </div>
        <!--SOPHMORE-->
<!--           <legend>Courses recommended for Sophomore1 and Sophmore2 semesters.</legend>-->
           <div id="sophWrap">
           <legend>Please select the courses your would like to take during your sophomore year.</legend>
            <select multiple="multiple" id="my-select-sophmore" name="my-select[]">
                    <optgroup label='<strong>Courses recommended for Sophomore1 and Sophmore2 semesters.</strong>'>
                        <?php require('php/level2.php'); ?>
                    </optgroup>
            </select>
            <div>
               <?php require('php/course-desc2.php'); ?>
            </div>
            <a href="#" id="deselect-all2" title="Deselect All attributes">Start over <small>&#40;This will remove all selected Items&#41;</small></a>
            </div>
        <!--JUNIOR-->
<!--           <legend>Courses recommended for Junior1 and Junior2 semesters.</legend>-->
           <div id="juniorWrap">
           <legend>Please select the courses your would like to take during your junior year.</legend>
            <select multiple="multiple" id="my-select-junior" name="my-select[]">

                    <optgroup label='<strong>Courses recommended for Junior1 and Junior2 semesters.</strong>'>
                        <?php require('php/level3.php'); ?>
                    </optgroup>
            </select>
            <div>
               <?php require('php/course-desc3.php'); ?>
            </div>
            <a href="#" id="deselect-all3" title="Deselect All attributes">Start over <small>&#40;This will remove all selected Items&#41;</small></a>
            </div>
        <!--SENIOR-->
<!--           <legend>Courses recommended for Senior1 and Senior2 semesters.</legend>-->
           <div id="seniorWrap">
           <legend>Please select the courses your would like to take during your senior year.</legend>
            <select multiple="multiple" id="my-select-senior" name="my-select[]">
                    <optgroup label='<strong>Courses recommended for Senior1 and Senior2 semesters.</strong>'>
                        <?php require('php/level4.php'); ?>
                    </optgroup>
            </select>
            <div>
               <?php require('php/course-desc4.php'); ?>
            </div>
            <a href="#" id="deselect-all4" title="Deselect All attributes">Start over <small>&#40;This will remove all selected Items&#41;</small></a>
            </div>
                <button id="profile-button" type="submit" value="Submit">Complete</button>
        </form>
            </div>

        </div>
    </div>
</body>
<?php require('php/clear-tables.php'); ?>
</html>
