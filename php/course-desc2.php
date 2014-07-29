<?php
    $student = "SELECT s.department_id FROM `Student` s WHERE s.department_id IS NOT NULL";

    $studentR = mysql_query($student);
        if (!$studentR) {
            die('Invalid query: ' . mysql_error());
        }
//    $useStudent = mysql_fetch_array($studentR);


//CIS STUDENT
    if (mysql_result($studentR, 0) == 'cis') {
        $sql = "SELECT
            c.*
            FROM
            `Courses` c
            LEFT JOIN
            `CoursesTaken` ct
            ON
            (c.course_id = ct.course_id)
        WHERE ct.course_id IS NULL AND c.cis_major IS NOT NULL AND c.course_level = '2'";

                            $results = mysql_query($sql);

                            if (!$results) {
                                die('Invalid query: ' . mysql_error());
                            }
        while ($courseItem = mysql_fetch_array ( $results )) {
                        echo '<p><strong>Course ID: </strong>' . $courseItem['course_id'] . '</p>';
                        echo '<p><strong>Course Name: </strong>' . $courseItem['course_name'] . '</p>';
                        echo '<p><strong>Course Description: </strong>' . $courseItem['course_desc'] . '</p><br />';
        }
//MGT STUDENT
        }else if (mysql_result($studentR, 0) == 'mgt'){
         $sql = "SELECT
            c.*
            FROM
            `Courses` c
            LEFT JOIN
            `CoursesTaken` ct
            ON
            (c.course_id = ct.course_id)
        WHERE ct.course_id IS NULL AND c.mgt_major IS NOT NULL AND c.course_level = '2'";

                            $results = mysql_query($sql);

                            if (!$results) {
                                die('Invalid query: ' . mysql_error());
                            }
        while ($courseItem = mysql_fetch_array ( $results )) {
                        echo '<p><strong>Course ID: </strong>' . $courseItem['course_id'] . '</p>';
                        echo '<p><strong>Course Name: </strong>' . $courseItem['course_name'] . '</p>';
                        echo '<p><strong>Course Description: </strong>' . $courseItem['course_desc'] . '</p><br />';
        }

//MKT STUDENT
        }else if (mysql_result($studentR, 0) == 'mkt'){
         $sql = "SELECT
            c.*
            FROM
            `Courses` c
            LEFT JOIN
            `CoursesTaken` ct
            ON
            (c.course_id = ct.course_id)
        WHERE ct.course_id IS NULL AND c.mkt_major IS NOT NULL AND c.course_level = '2'";

                            $results = mysql_query($sql);

                            if (!$results) {
                                die('Invalid query: ' . mysql_error());
                            }
        while ($courseItem = mysql_fetch_array ( $results )) {
                        echo '<p><strong>Course ID: </strong>' . $courseItem['course_id'] . '</p>';
                        echo '<p><strong>Course Name: </strong>' . $courseItem['course_name'] . '</p>';
                        echo '<p><strong>Course Description: </strong>' . $courseItem['course_desc'] . '</p><br />';
        }
//FIN STUDENT
        }else if (mysql_result($studentR, 0) == 'fin'){
         $sql = "SELECT
            c.*
            FROM
            `Courses` c
            LEFT JOIN
            `CoursesTaken` ct
            ON
            (c.course_id = ct.course_id)
        WHERE ct.course_id IS NULL AND c.fin_major IS NOT NULL AND c.course_level = '2'";

                            $results = mysql_query($sql);

                            if (!$results) {
                                die('Invalid query: ' . mysql_error());
                            }
        while ($courseItem = mysql_fetch_array ( $results )) {
                        echo '<p><strong>Course ID: </strong>' . $courseItem['course_id'] . '</p>';
                        echo '<p><strong>Course Name: </strong>' . $courseItem['course_name'] . '</p>';
                        echo '<p><strong>Course Description: </strong>' . $courseItem['course_desc'] . '</p><br />';
        }
//ACC STUDENT
        }else if (mysql_result($studentR, 0) == 'acc'){
$sql = "SELECT
            c.*
            FROM
            `Courses` c
            LEFT JOIN
            `CoursesTaken` ct
            ON
            (c.course_id = ct.course_id)
        WHERE ct.course_id IS NULL AND c.acc_major IS NOT NULL AND c.course_level = '2'";

                            $results = mysql_query($sql);

                            if (!$results) {
                                die('Invalid query: ' . mysql_error());
                            }
        while ($courseItem = mysql_fetch_array ( $results )) {
                        echo '<p><strong>Course ID: </strong>' . $courseItem['course_id'] . '</p>';
                        echo '<p><strong>Course Name: </strong>' . $courseItem['course_name'] . '</p>';
                        echo '<p><strong>Course Description: </strong>' . $courseItem['course_desc'] . '</p><br />';
        }

        };
?>
