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
<link href="../css/profilelayout.css" rel="stylesheet" type="text/css" media="screen"/>
<link href="../css/success.css" rel="stylesheet" type="text/css" media="screen"/>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>

</head>
<body>

<div id="wrapper2">
    <header>
        <hi></hi>

    </header>

    <div id="wrap-center-multiselect">
        <div id="freshman">
            <?php
                $freshmanRequest = $_REQUEST['freshmanStoredCourse'];
                $freshmanLength = strlen ( $freshmanRequest );

                $courseArrayF = array();
                $counterF = 0;
                for($x=($freshmanLength / 7); $x>=0; $x--){
                    $freshmanSubStr = substr ($freshmanRequest, $counterF * 7 , 7);
//                    echo $freshmanSubStr . '<br/>';
                    $courseArrayF[$counterF] = $freshmanSubStr;
//                    echo $courseArray[$counterF] . '<br/>';
                    $counterF++;

                }
                    foreach($courseArrayF as $val){
//                        echo $val;
                            $sql = "SELECT
                                c.course_id, c.course_desc, c.course_credit_hrs, c.course_name
                                FROM
                                `Courses` c
                                WHERE
                                c.course_id = '$val'";

                            $results = mysql_query($sql);

                            if (!$results) {
                                die('Invalid query: ' . mysql_error());
                            }
                        $courseItem = mysql_fetch_array ( $results );
                        echo $courseItem['course_id'] . '<br /><br />';
                        echo $courseItem['course_name'] . '<br /><br />';
                    }

            ?>
        </div>
        <div id="sophmore">
            <?php
                $sophmoreRequest = $_REQUEST['sophmoreStoredCourse'];
                $sophmoreLength = strlen ( $sophmoreRequest );

                $courseArraySO = array();
                $counterSO = 0;
                for($x=($sophmoreLength / 7); $x>=0; $x--){
                    $sophmoreSubStr = substr ($sophmoreRequest, $counterSO * 7 , 7);
                    $courseArraySO[$counterSO] = $sophmoreSubStr;
//                    echo $sophmoreSubStr . '<br/>';
                    $counterSO++;

                }
                foreach($courseArraySO as $val){
//                        echo $val;
                            $sql = "SELECT
                                c.course_id, c.course_desc, c.course_credit_hrs, c.course_name
                                FROM
                                `Courses` c
                                WHERE
                                c.course_id = '$val'";

                            $results = mysql_query($sql);

                            if (!$results) {
                                die('Invalid query: ' . mysql_error());
                            }
                        $courseItem = mysql_fetch_array ( $results );
                        echo $courseItem['course_id'] . '<br /><br />';
                        echo $courseItem['course_name'] . '<br /><br />';
                    }
            ?>
        </div>
        <div id="junior">
            <?php
                $juniorRequest = $_REQUEST['juniorStoredCourse'];
                $juniorLength = strlen ( $juniorRequest );

                $courseArrayJ = array();
                $counterJ = 0;
                for($x=($juniorLength / 7); $x>=0; $x--){
                    $juniorSubStr = substr ($juniorRequest, $counterJ * 7 , 7);
                    $courseArrayJ[$counterJ] = $juniorSubStr;
//                    echo $juniorSubStr . '<br/>';
                    $counterJ++;

                }
                foreach($courseArrayJ as $val){
//                        echo $val;
                            $sql = "SELECT
                                c.course_id, c.course_desc, c.course_credit_hrs, c.course_name
                                FROM
                                `Courses` c
                                WHERE
                                c.course_id = '$val'";

                            $results = mysql_query($sql);

                            if (!$results) {
                                die('Invalid query: ' . mysql_error());
                            }
                        $courseItem = mysql_fetch_array ( $results );
                        echo $courseItem['course_id'] . '<br /><br />';
                        echo $courseItem['course_name'] . '<br /><br />';
                    }
            ?>
        </div>
        <div id="senior">
            <?php
                $seniorRequest = $_REQUEST['seniorStoredCourse'];
                $seniorLength = strlen ( $seniorRequest );

                $courseArrayS = array();
                $counterS = 0;
                for($x=($seniorLength / 7); $x>=0; $x--){
                    $seniorSubStr = substr ($seniorRequest, $counterS * 7 , 7);
                    $seniorSubStr = substr ($seniorRequest, $counterS * 7 , 7);
//                    echo $seniorSubStr . '<br/>';
                    $counterS++;

                }
                foreach($courseArrayS as $val){
//                        echo $val;
                            $sql = "SELECT
                                c.course_id, c.course_desc, c.course_credit_hrs, c.course_name
                                FROM
                                `Courses` c
                                WHERE
                                c.course_id = '$val'";

                            $results = mysql_query($sql);

                            if (!$results) {
                                die('Invalid query: ' . mysql_error());
                            }
                        $courseItem = mysql_fetch_array ( $results );
                        echo $courseItem['course_id'] . '<br /><br />';
                        echo $courseItem['course_name'] . '<br /><br />';
                    }
            ?>
        </div>
    </div>

</div>
</body>
</html>
