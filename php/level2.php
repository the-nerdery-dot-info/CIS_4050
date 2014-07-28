<?php

    $currentStudent = "SELECT s.department_id FROM `Student` s WHERE s.department_id IS NOT NULL";

    $studentResult = mysql_query($currentStudent);
        if (!$studentResult) {
            die('Invalid query: ' . mysql_error());
        }
//    $useStudent = mysql_fetch_array($studentResult);


//CIS STUDENT
    if (mysql_result($studentResult, 0) == 'cis') {
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
        while ($listItem = mysql_fetch_array ( $results )) {

            echo '<option>' . $listItem['course_id'] . '</option>';

        };
//MGT STUDENT
        }else if (mysql_result($studentResult, 0) == 'mgt'){
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
        while ($listItem = mysql_fetch_array ( $results )) {

            echo '<option>' . $listItem['course_id'] . '</option>';

        };
//MKT STUDENT
        }else if (mysql_result($studentResult, 0) == 'mkt'){
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
        while ($listItem = mysql_fetch_array ( $results )) {

            echo '<option>' . $listItem['course_id'] . '</option>';

        };
//FIN STUDENT
        }else if (mysql_result($studentResult, 0) == 'fin'){
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
        while ($listItem = mysql_fetch_array ( $results )) {

            echo '<option>' . $listItem['course_id'] . '</option>';

        };
//ACC STUDENT
        }else if (mysql_result($studentResult, 0) == 'acc'){
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
        while ($listItem = mysql_fetch_array ( $results )) {

            echo '<option>' . $listItem['course_id'] . '</option>';

        };
        }
        ?>
