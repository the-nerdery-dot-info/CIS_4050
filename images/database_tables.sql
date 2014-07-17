/*STUDENT TABLE*/
CREATE TABLE student (
    student_id VARCHAR(9) NOT NULL,
    department_id VARCHAR(3) NOT NULL,
    student_lname VARCHAR(100) NOT NULL,
    student_fname VARCHAR(100) NOT NULL,
    student_phone VARCHAR(10) NOT NULL,
    student_email VARCHAR(100) NOT NULL,
    PRIMARY KEY (student_id)
) ENGINE = Innodb;

/*CLASSES TAKEN TABLE*/
CREATE TABLE CoursesTaken (
    student_id VARCHAR(9) NOT NULL,
    course_id VARCHAR(7) NOT NULL,
    PRIMARY KEY (student_id, course_id)
) ENGINE = Innodb;

/*DEPARTMENT TABLE*/
CREATE TABLE department (
    department_id VARCHAR(3) NOT NULL,
    department_name VARCHAR(255) NOT NULL,
    PRIMARY KEY (department_id)
) ENGINE = Innodb;

/*DEPARTMENT COURSES*/
CREATE TABLE Courses (
    course_id VARCHAR(7) NOT NULL,
    department_id VARCHAR(7) NOT NULL,
    course_name VARCHAR(200) NOT NULL,
    course_desc VARCHAR(255),
    course_credit_hrs INT(1) NOT NULL,
    PRIMARY KEY (course_id)
) ENGINE = Innodb;

/*PreReq*/
CREATE TABLE PreReq (
    table_key INT(11) NOT NULL AUTO_INCREMENT,
    pre_req_id VARCHAR(6) NOT NULL,
    course_id VARCHAR(7) NOT NULL,
    PRIMARY KEY (table_key)
) ENGINE = Innodb;

/*ADVISORS*/
CREATE TABLE Advisors (
    advisor_id VARCHAR(9) NOT NULL,
    department_id VARCHAR(7) NOT NULL,
    advisor_lname VARCHAR(100) NOT NULL,
    advisor_fname VARCHAR(100) NOT NULL,
    advisor_email VARCHAR(100) NOT NULL,
    PRIMARY KEY (advisor_id)
) ENGINE = Innodb;

/*join department and student tables*/
select
    s.department_id/*, ct.course_id, c.course_id*/
    from
    `Student` s
    join
    `Department` d
    on
    d.department_id = s.department_id
where
student_id = 900544740;
/*END====================*/

/*join courses to department by student id*/
select
    s.department_id, c.course_id
    from
    `Student` s
    join
    `Department` d
    on
    d.department_id = s.department_id
    join
    `Courses` c
    on
    c.department_id = d.department_id
where
student_id = 900544740;
/*END====================*/

/*join courses taken table and show only cis class needed*/
select
    s.department_id, c.course_id, ct.course_id
    from
    `Student` s
    join
    `Department` d
    on
    d.department_id = s.department_id
    join
    `Courses` c
    on
    c.department_id = d.department_id
    join
    `CoursesTaken` ct
    on
    ct.course_id = c.course_id
where
    ct.course_id != c.course_id;
/*END====================*/

SELECT
    S.department_id, D.department_name, DC.course_name, PRJT.course_id, PRT.pre_req_id, PRT.required_course_id
FROM
    `Student` S
    JOIN
    	`Department` D
        ON
        S.department_id = D.department_id
    JOIN
        `Department Courses` DC
        ON
        D.department_id = DC.department_id
    JOIN
    	`Pre Req Join Table` PRJT
        ON
        DC.course_id = PRJT.course_id
    JOIN
    	`Pre Req Table` PRT
        ON
        PRJT.pre_req_id = PRT.pre_req_id
WHERE
    `student_id` = 900544740;


/*===============================================*/
SELECT
    S.department_id, D.department_name, DC.course_name, PRJT.course_id, PRT.pre_req_id, PRT.required_course_id
FROM
    `Student` S
    JOIN
    	`Department` D
        ON
        S.department_id = D.department_id
    JOIN
        `Department Courses` DC
        ON
        D.department_id = DC.department_id
    JOIN
    	`Pre Req Join Table` PRJT
        ON
        DC.course_id = PRJT.course_id
    JOIN
    	`Pre Req Table` PRT
        ON
        PRJT.pre_req_id = PRT.pre_req_id
WHERE
    `student_id` = 900544740;
    SELECT
    CTT.course_id
    FROM
    	`Classes Taken Table` CTT
        JOIN
        `Student` S
        ON
        CTT.student_id = S.student_id;


/*===============================================*/
/*Shows all of the courses taken that are also in the DEPARTMENT COURSES table*/
/*===============================================*/
 SELECT
 C.course_id
 	FROM
 	`CoursesTaken` CT
    	JOIN
        `Student` S
        ON
        CT.student_id = S.student_id
        JOIN
        `Courses` C
        ON
        C.course_id = CT.course_id
WHERE
C.course_id != CT.course_id


