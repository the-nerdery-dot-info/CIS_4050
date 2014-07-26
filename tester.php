<?php
// DEFINE CONSTANTS
define ('DB_NAME', 'Metro_Advisor');
define ('DB_USER', 'root');
define ('DB_PASSWORD', 'root');
define ('DB_HOST', 'localhost');

//Store connection in variable and Connect to server
$link = mysql_connect(DB_HOST, DB_USER, DB_PASSWORD);

//Test connection and kill if no good
if (!$link){
    die('Could Not Connect: ' . mysql_error());
}

//Store selection in variable and Select the database to work with
$db_selected = mysql_select_db(DB_NAME, $link);

//Test selection and kill if no good
if (!$db_selected){
    die('Cannot use' . DB_NAME . ': ' . mysql_error());
}

echo 'Connected Successfully';

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
$sql = "SELECT
            c.*
            FROM
            `Courses` c
            LEFT JOIN
            `CoursesTaken` ct
            ON
            (c.course_id = ct.course_id)
        WHERE ct.course_id IS NULL AND c.cis_major IS NOT NULL AND c.course_level = '1'";

$results = mysql_query($sql);

if (!$results) {
    die('Invalid query: ' . mysql_error());
}
while ($listItem = mysql_fetch_array ( $results )) {

    echo '<li>' . $listItem['course_id'] . '</li>';

};
mysql_close();
?>
