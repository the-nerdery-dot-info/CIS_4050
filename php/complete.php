<?php require('config.php'); ?>
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
<link href="../css/complete.css" rel="stylesheet" type="text/css" media="screen"/>
<link href="../css/goalProgress.css" rel="stylesheet" type="text/css" media="screen"/>



<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
<script src="../js/goalProgress.js"></script>
<script type="text/javascript">
//instance for multiselect list by department
    $(document).ready(function(){
    $('#progress').goalProgress({
        goalAmount: 3,
        currentAmount: 3,
        textBefore: 'Step: ',
        textAfter: ' Print Graduation Plan'
    });
    });
</script>

</head>
<body>
   <div id="progress"></div>
<div id="wrapper2">

    <header>
        <h1>MSU Denver Graduation Plan.</h1>
        <div id="studentInfo">
        <h3>Student Information:</h3>
            <?php
    $studentInfo = "SELECT
                        s.*, d.department_name
                        FROM
                        `student` s
                        JOIN
                        `department` d
                        ON
                        s.department_id = d.department_id";

    $studentI = mysql_query($studentInfo);
        if (!$studentI) {
            die('Invalid query: ' . mysql_error());
        }

        $studentResult = mysql_fetch_array($studentI);
        echo '<p>' . '<strong>Student ID: </strong>' . $studentResult['student_id'] . '</p>';
        echo '<p>' . '<strong>Student Name: </strong>' .  $studentResult['student_fname'] . ' ' . $studentResult['student_lname'] . '</p>';
        echo '<p>' . '<strong>Major: </strong>' .  $studentResult['department_name'] . '</p>';
        echo '<p>' . '<strong>Student Email: </strong>' .  $studentResult['student_email'] . '</p>';
        echo '<p>' . '<strong>Student Phone Number: </strong>' . $studentResult['student_phone'] . '</p>';
?>

        </div>
        <div id="advisorInfo">
        <h3>Assigned Advisor Information:</h3>
        <p><small><em>If you have any questions or concerns regarding your degree path, please email the advisor below.</em></small></p>
        <p><small><em>Please download this document and attach it to your email.</em></small></p>

        <?php
    $advisorInfo = "SELECT
                        a.*, d.department_name
                        FROM
                        `Advisors` a
                        JOIN
                        `department` d
                        ON
                        a.department_id = d.department_id";

    $advisorI = mysql_query($advisorInfo);
        if (!$advisorI) {
            die('Invalid query: ' . mysql_error());
        }

                $advisorResult = mysql_fetch_array($advisorI);
        echo '<p>' . '<strong>Advisor Name: </strong>' .  $advisorResult['advisor_fname'] . ' ' . $advisorResult['advisor_lname'] . '</p>';
        echo '<p>' . '<strong>Advisor Department: </strong>' .  $advisorResult['department_name'] . '</p>';
        echo '<p>' . '<strong>Advisor Email: </strong>' .  $advisorResult['advisor_email'] . '</p>';

?>


        </div>

    </header>

    <div id="wrap-center-multiselect">

        <div id="freshman">
       <h3>Freshman Schedule</h3>
             <?php
                $freshmanRequest = $_REQUEST['freshmanStoredCourse'];
                $freshmanLength = strlen ( $freshmanRequest );

                $courseArrayF = array();
                $counterF = 0;
                for($x=($freshmanLength / 7); $x>0; $x--){
                    $freshmanSubStr = substr ($freshmanRequest, $counterF * 7 , 7);
                    $courseArrayF[$counterF] = $freshmanSubStr;
                    $counterF++;

                }
                    foreach($courseArrayF as $val){
//                        echo $val;
                            $sql = "SELECT
                                c.course_id, c.course_desc, c.course_credit_hrs, c.course_name, c.course_level
                                FROM
                                `Courses` c
                                WHERE
                                c.course_id = '$val'";

                            $results = mysql_query($sql);

                            if (!$results) {
                                die('Invalid query: ' . mysql_error());
                            }
                        $courseItem = mysql_fetch_array ( $results );
                        echo '<p><strong>Course ID: </strong>' . $courseItem['course_id'] . '</p>';
                        echo '<p><strong>Course Name: </strong>' . $courseItem['course_name'] . '</p>';
                        echo '<p><strong>Credit Hours: </strong>' . $courseItem['course_credit_hrs'] . '</p>';
                        echo '<p><strong>*Difficulty Level: </strong>' . $courseItem['course_level'] . '</p><br />';
                    }

            ?>
        </div>

        <div id="sophmore">
        <h3>Sophomore Schedule</h3>
            <?php
                $sophmoreRequest = $_REQUEST['sophmoreStoredCourse'];
                $sophmoreLength = strlen ( $sophmoreRequest );

                $courseArraySO = array();
                $counterSO = 0;
                for($x=($sophmoreLength / 7); $x>0; $x--){
                    $sophmoreSubStr = substr ($sophmoreRequest, $counterSO * 7 , 7);
                    $courseArraySO[$counterSO] = $sophmoreSubStr;
//                    echo $sophmoreSubStr . '<br/>';
                    $counterSO++;

                }
                foreach($courseArraySO as $val){
//                        echo $val;
                            $sql = "SELECT
                                c.course_id, c.course_desc, c.course_credit_hrs, c.course_name, c.course_level
                                FROM
                                `Courses` c
                                WHERE
                                c.course_id = '$val'";

                            $results = mysql_query($sql);

                            if (!$results) {
                                die('Invalid query: ' . mysql_error());
                            }
                        $courseItem = mysql_fetch_array ( $results );
                        echo '<p><strong>Course ID: </strong>' . $courseItem['course_id'] . '</p>';
                        echo '<p><strong>Course Name: </strong>' . $courseItem['course_name'] . '</p>';
                        echo '<p><strong>Credit Hours: </strong>' . $courseItem['course_credit_hrs'] . '</p>';
                        echo '<p><strong>*Difficulty Level: </strong>' . $courseItem['course_level'] . '</p><br />';
                    }
            ?>
        </div>

        <div id="junior">
        <h3>Junior Schedule</h3>
            <?php
                $juniorRequest = $_REQUEST['juniorStoredCourse'];
                $juniorLength = strlen ( $juniorRequest );

                $courseArrayJ = array();
                $counterJ = 0;
                for($x=($juniorLength / 7); $x>0; $x--){
                    $juniorSubStr = substr ($juniorRequest, $counterJ * 7 , 7);
                    $courseArrayJ[$counterJ] = $juniorSubStr;
//                    echo $juniorSubStr . '<br/>';
                    $counterJ++;

                }
                foreach($courseArrayJ as $val){
//                        echo $val;
                            $sql = "SELECT
                                c.course_id, c.course_desc, c.course_credit_hrs, c.course_name, c.course_level
                                FROM
                                `Courses` c
                                WHERE
                                c.course_id = '$val'";

                            $results = mysql_query($sql);

                            if (!$results) {
                                die('Invalid query: ' . mysql_error());
                            }
                        $courseItem = mysql_fetch_array ( $results );
                        echo '<p><strong>Course ID: </strong>' . $courseItem['course_id'] . '</p>';
                        echo '<p><strong>Course Name: </strong>' . $courseItem['course_name'] . '</p>';
                        echo '<p><strong>Credit Hours: </strong>' . $courseItem['course_credit_hrs'] . '</p>';
                        echo '<p><strong>*Difficulty Level: </strong>' . $courseItem['course_level'] . '</p><br />';
                    }
            ?>
        </div>

        <div id="senior">
        <h3>Senior Schedule</h3>
            <?php
                $seniorRequest = $_REQUEST['seniorStoredCourse'];
                $seniorLength = strlen ( $seniorRequest );

                $courseArrayS = array();
                $counterS = 0;
                for($x=($seniorLength / 7); $x>0; $x--){
                    $seniorSubStr = substr ($seniorRequest, $counterS * 7 , 7);
                    $courseArrayS[$counterS] = $seniorSubStr;
//                    echo $seniorSubStr . '<br/>';
                    $counterS++;

                }
                foreach($courseArrayS as $val){
//                        echo $val;
                            $sql = "SELECT
                                c.course_id, c.course_desc, c.course_credit_hrs, c.course_name, c.course_level
                                FROM
                                `Courses` c
                                WHERE
                                c.course_id = '$val'";

                            $results = mysql_query($sql);

                            if (!$results) {
                                die('Invalid query: ' . mysql_error());
                            }
                        $courseItem = mysql_fetch_array ( $results );
                        echo '<p><strong>Course ID: </strong>' . $courseItem['course_id'] . '</p>';
                        echo '<p><strong>Course Name: </strong>' . $courseItem['course_name'] . '</p>';
                        echo '<p><strong>Credit Hours: </strong>' . $courseItem['course_credit_hrs'] . '</p>';
                        echo '<p><strong>*Difficulty Level: </strong>' . $courseItem['course_level'] . '</p><br />';
                    }
            ?>
        </div>
        <a href="javascript:void(0);">Download</a>
        <a href="javascript:void(0);">Print</a>
    </div>

</div>
</body>
<?php require('clear-tables.php') ?>
</html>
