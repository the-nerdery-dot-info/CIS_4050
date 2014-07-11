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
