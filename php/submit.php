<?php
/*
 * Post data to Student and Courses Taken table on submission of the profile page.
 *
 * */
require('config.php');

//Store data in student table
$student_id = $_POST['student_id'];
$department_id = $_POST['departments'];
$student_lname = $_POST['student_lname'];
$student_fname = $_POST['student_fname'];
$student_phone = $_POST['student_phone'];
$student_email = $_POST['student_email'];

$studentInsert = "INSERT INTO `student`(`student_id`, `department_id`, `student_lname`, `student_fname`, `student_phone`, `student_email`) VALUES ('$student_id','$department_id','$student_lname','$student_fname','$student_phone','$student_email')";

if ( !mysql_query($studentInsert) ) {
    die('Error: ' . mysql_error());
}

//Store data into coursestaken table
foreach ($_POST['my-select'] as $selectedCourses){

    $coursesTakenInsert = "INSERT INTO `CoursesTaken`(`student_id`, `course_id`) VALUES ('$student_id', '$selectedCourses')";
    if ( !mysql_query($coursesTakenInsert) ) {
        die('Error: ' . mysql_error());
    }
};

//mysql_close();
?>


