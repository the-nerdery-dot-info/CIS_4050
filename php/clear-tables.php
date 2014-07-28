<?php
   $clearStudent = "TRUNCATE TABLE Student";
    mysql_query($clearStudent);

    $clearCoursesTaken = "TRUNCATE TABLE CoursesTaken";
    mysql_query($clearCoursesTaken);

mysql_close();
?>
