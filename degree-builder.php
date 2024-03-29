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
<link href="css/success.css" rel="stylesheet" type="text/css" media="screen"/>
<!--<link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.4/themes/smoothness/jquery-ui.css" />-->

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
<script src="../CIS_4050/assets/lou-multi-select-5839faf/js/jquery.multi-select.js"></script>

<script type="text/javascript">
//instance for multiselect list by department
    $(document).ready(function(){
        $(function() {
            $( "#courses-needed" ).accordion();
            $( "#courses-needed li" ).draggable({
                appendTo: "body",
                helper: "clone"
            });
            //Freshmen 1
            $( "#freshmen1 ol" ).droppable({
                activeClass: "active-class",
                hoverClass: "hover-class",
                accept: ":not(.ui-sortable-helper)",
                drop: function( event, ui ) {
                    $( this ).find( ".placeholder" ).remove();
                    $( "<li></li>" ).text( ui.draggable.text() ).appendTo( this );
                }
            })
            //Freshmen 2
            $( "#freshmen2 ol" ).droppable({
                activeClass: "active-class",
                hoverClass: "hover-class",
                accept: ":not(.ui-sortable-helper)",
                drop: function( event, ui ) {
                    $( this ).find( ".placeholder" ).remove();
                    $( "<li></li>" ).text( ui.draggable.text() ).appendTo( this );
                }
            })
            //Freshmen 1
            $( "#sophmore1 ol" ).droppable({
                activeClass: "active-class",
                hoverClass: "hover-class",
                accept: ":not(.ui-sortable-helper)",
                drop: function( event, ui ) {
                    $( this ).find( ".placeholder" ).remove();
                    $( "<li></li>" ).text( ui.draggable.text() ).appendTo( this );
                }
            })
            //Freshmen 2
            $( "#sophmore2 ol" ).droppable({
                activeClass: "active-class",
                hoverClass: "hover-class",
                accept: ":not(.ui-sortable-helper)",
                drop: function( event, ui ) {
                    $( this ).find( ".placeholder" ).remove();
                    $( "<li></li>" ).text( ui.draggable.text() ).appendTo( this );
                }
            })
            //Freshmen 1
            $( "#junior1 ol" ).droppable({
                activeClass: "active-class",
                hoverClass: "hover-class",
                accept: ":not(.ui-sortable-helper)",
                drop: function( event, ui ) {
                    $( this ).find( ".placeholder" ).remove();
                    $( "<li></li>" ).text( ui.draggable.text() ).appendTo( this );
                }
            })
            //Freshmen 2
            $( "#junior2 ol" ).droppable({
                activeClass: "active-class",
                hoverClass: "hover-class",
                accept: ":not(.ui-sortable-helper)",
                drop: function( event, ui ) {
                    $( this ).find( ".placeholder" ).remove();
                    $( "<li></li>" ).text( ui.draggable.text() ).appendTo( this );
                }
            })
            //Freshmen 1
            $( "#senior1 ol" ).droppable({
                activeClass: "active-class",
                hoverClass: "hover-class",
                accept: ":not(.ui-sortable-helper)",
                drop: function( event, ui ) {
                    $( this ).find( ".placeholder" ).remove();
                    $( "<li></li>" ).text( ui.draggable.text() ).appendTo( this );
                }
            })
            //Freshmen 2
            $( "#senior2 ol" ).droppable({
                activeClass: "active-class",
                hoverClass: "hover-class",
                accept: ":not(.ui-sortable-helper)",
                drop: function( event, ui ) {
                    $( this ).find( ".placeholder" ).remove();
                    $( "<li></li>" ).text( ui.draggable.text() ).appendTo( this );
                }
            })
            .sortable({
                items: "li:not(.placeholder)",
                sort: function() {
                    // gets added unintentionally by droppable interacting with sortable
                    // using connectWithSortable fixes this, but doesn't allow you to customize active/hoverClass options
                    $( this ).removeClass( "active-class" );
                }
            });
        });
    });
</script>
</head>
<body>
<header>
<p>Below is a list of your remaining courses needed to graduate from MSU Denver.</p><p>Please complete the degree path builder and then print a copy for your record. Once you complete the builder, an advisor in your department will be notified and sent a copy of your degree path. The advisor will contact you if he or she has any further suggestions to your degree path.</p><p>If no suggestions are recommended, than the hold will be lifted from your account and you will be able to register for the upcoming semester. Thank you for using MSU Advisor!</p>
</header>
<div id="courses-needed-wrapper">
   <div id="banner">
       Choose your path!
   </div>
    <h1 class="">Click and drag each course remaining in your degree path to the Degree Path Builder</h1>
    <div id="courses-needed">
        <h2><a href="#">Courses recommended for Freshmen1 and Freshmen2 semesters.</a></h2>
        <div>
            <ul>
               <?php require('php/level1.php'); ?>
            </ul>
        </div>
        <h2><a href="#">Courses recommended for Sophomore1 and Sophmore2 semesters.</a></h2>
        <div>
            <ul>
                <?php require('php/level2.php'); ?>
            </ul>
        </div>
        <h2><a href="#">Courses recommended for Junior1 and Junior2 semesters.</a></h2>
        <div>
            <ul>
                <?php require('php/level3.php'); ?>
            </ul>
        </div>
        <h2><a href="#">Courses recommended for Senior1 and Senior2 semesters.</a></h2>
        <div>
            <ul>
                <?php require('php/level4.php'); ?>
            </ul>
        </div>
    </div>
</div>
<div id="degree-path-wrapper">
   <div id="banner">
       Degree Path Builder
   </div>
    <!--Freshmen year-->
    <div id="freshmen1" class="degree-block">
        <h1 class="degree-path-header">Freshmen Semester 1</h1>
        <div class="degree-path-content">
            <ol>
                <li class="placeholder">Drag course here!</li>
            </ol>
        </div>
    </div>
    <div id="freshmen2" class="degree-block">
        <h1 class="degree-path-header">Freshmen Semester 2</h1>
        <div class="degree-path-content">
            <ol>
                <li class="placeholder">Drag course here!</li>
            </ol>
        </div>
    </div>
    <!--End freshmen year-->
    <!--Sophmore1 year-->
    <div id="sophmore1" class="degree-block">
        <h1 class="degree-path-header">Sophmore Semester 1</h1>
        <div class="degree-path-content">
            <ol>
                <li class="placeholder">Drag course here!</li>
            </ol>
        </div>
    </div>
    <div id="sophmore2" class="degree-block">
        <h1 class="degree-path-header">Sophmore Semester 2</h1>
        <div class="degree-path-content">
            <ol>
                <li class="placeholder">Drag course here!</li>
            </ol>
        </div>
    </div>
    <!--End sophmore year-->
    <!--Junior 1 year-->
    <div id="junior1" class="degree-block">
        <h1 class="degree-path-header">Junior Semester 1</h1>
        <div class="degree-path-content">
            <ol>
                <li class="placeholder">Drag course here!</li>
            </ol>
        </div>
    </div>
    <div id="junior2" class="degree-block">
        <h1 class="degree-path-header">Junior Semester 2</h1>
        <div class="degree-path-content">
            <ol>
                <li class="placeholder">Drag course here!</li>
            </ol>
        </div>
    </div>
    <!--End junior year-->
    <!--Senior year-->
    <div id="senior1" class="degree-block">
        <h1 class="degree-path-header">Senior Semester 1</h1>
        <div class="degree-path-content">
            <ol>
                <li class="placeholder">Drag course here!</li>
            </ol>
        </div>
    </div>
    <div id="senior2" class="degree-block">
        <h1 class="degree-path-header">Senior Semester 2</h1>
        <div class="degree-path-content">
            <ol>
                <li class="placeholder">Drag course here!</li>
            </ol>
        </div>
    </div>
    <!--End Senior year-->
</div>
</body>
<?php require('php/clear-tables.php'); ?>
</html>
