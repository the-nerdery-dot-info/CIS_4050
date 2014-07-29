



    $advidorInfo = "SELECT
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
        echo '<p>' . '<strong>First Name: </strong>' .  $advisorResult['advisor_fname'] . ' ' . $advisorResult['advisor_lname'] . '</p>';
        echo '<p>' . '<strong>Last Name: </strong>' .  $advisorResult['advisor_lname'] . '</p>';
        echo '<p>' . '<strong>Major: </strong>' .  $advisorResult['department_name'] . '</p>';
        echo '<p>' . '<strong>advisor Email: </strong>' .  $advisorResult['advisor_email'] . '</p>';
        \

               echo '<p>' . '<strong>First Name: </strong>' .  $advisorResult['advisor_fname'] . ' ' . $advisorResult['advisor_lname'] . '</p>';
        echo '<p>' . '<strong>Last Name: </strong>' .  $advisorResult['advisor_lname'] . '</p>';
        echo '<p>' . '<strong>Advisor Department: </strong>' .  $advisorResult['department_name'] . '</p>';
        echo '<p>' . '<strong>Advisor Email: </strong>' .  $advisorResult['advisor_email'] . '</p>';
