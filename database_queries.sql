/*Access database from terminal*/
/* /Applications/MAMP/Library/bin/mysql -u root --password=root Metro_Advisor*/


/*INSET INTO STUDENT TABLE*/
INSERT INTO `Metro_Advisor`.`student` (`student_id`, `department_id`, `student_lname`, `student_fname`, `student_phone`, `student_email`) VALUES ('900544740', 'CIS', 'Shmoe', 'Joe', '3036212120', 'joe@bogus.com');

/*INSERT INTO COURSES TAKEN TABLE*/
 INSERT INTO `Metro_Advisor`.`CoursesTaken` (`student_id`, `course_id`) VALUES ('900544740', 'CIS1010');
/*Courses added...
    CIS1010
    CIS2010
    CIS3230
    ECO2010
    ECO2020
    ENG1010
    ENG1020
    HIS1010
    MKT3000
*/

/*INSERT INTO COURSES TABLE FOR SOB AND GEN ED*/

/*ALL SCHOOL OF BUSINESS COURSES AND ELECTIVES*/
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('ENG1010','ENG','Freshman Composition: The Essay',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('ENG1020','ENG','Freshman Composition: Analysis, Research and Documentation',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('MTH1310','MTH','Finite Math for the Mangement and Social Sciences',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('MTH1320','MTH','Calculus for the Management and Social Sciences',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('SPE1010','SPE','Public Speaking',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('HIS1010','HIS','Any history class',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('PHI1030','PHI','Ethics',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('PHI3360','PHI','Business Ethics',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('ECO2010','ECO','Principles of Economics Macro',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('ECO2020','ECO','Principles of Economics Micro',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('NAT1010','NAT','Any natural science course',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('NAT1020','NAT','Any natural science course',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('PSY1001','PSY','Intro to Psychology',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('SOC1010','SOC','Intro to Sociology',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('PSC1010','PSC','American National Government',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('PSC1020','PSC','Politcal Systems and Ideas',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('ACC2010','ACC','Principles of Accounting I',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('ACC2020','ACC','Principles of Accounting II',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('CIS2010','CIS','Foundations of Information Systems',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('MGT2210','MGT','Legal Environment of Business I',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('MKT2040','MGT','Business Communications',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('CIS3320','CIS','Management Science',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('FIN3300','FIN','Managerial Finance',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('MGT3000','MGT','Organizational Management',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('MKT3000','MKT','Principles of Marketing',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('MGT4950','MGT','Strategic Management',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('CIS1010','CIS','Intro to computers',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('CIS3300','CIS','Managerial Statistics',NULL,'3');
/*======END======INSERT INTO COURSES TABLE FOR SOB AND GEN ED======END======*/

/*INSERT INTO COURSES TABLE FOR CIS DEPARTMENT MINUS SOB REQUIREMENTS*/
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('CIS3050','CIS','Managerial Statistics',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('CIS3060','CIS','Database Management Systems',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('CIS3145','CIS','Business Application Development with Visual Basic',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('CIS3230','CIS','Telecommunication Systems and Networking',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('CIS4050','CIS','Systems Analysis & Design',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('CIS3030','CIS','Business Web Page Development',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('CIS3220','CIS','Analysis of Hardware, Software, and User Interfaces for Microcomputer Platforms',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('CIS3270','CIS','Advanced Computer Applications for Business',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('CIS3280','CIS','LAN and WAN Systems for Business',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('CIS3290','CIS','Operating Systems for End Users',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('CIS3460','CIS','Data Warehousing and Mining',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('CIS3490','CIS','Managing Business Information with Enterprise Systems',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('CIS3500','CIS','Information Systems Security',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('CIS3980','CIS','Internship in Computer Information Systems',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('CIS4030','CIS','Web Site Administration',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('CIS4060','CIS','Advanced Database Management Systems',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('CIS4160','CIS','Advanced Programming Seminar',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('CIS4260','CIS','Database Administration',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('CIS4280','CIS','Network Installation and Administration',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('CIS4281','CIS','Network Installation and Administration With UNIX/Linux',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('CIS4410','CIS','Management Information Systems',NULL,'3');
/*=========END=========INSERT INTO COURSES TABLE FOR CIS DEPARTMENT MINUS SOB REQUIREMENTS==========END=========*/

/*INSERT INTO PRE REQ TABLE BUSINESS CORE AND GEN ED REQUIREMENTS*/
/*
    C = CIS
    M = MGT
    K = Marketing
    F = Finance
    A = Accounting
*/
/*GENERALS*/
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'E1020','ENG1010');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'M1320','MTH1310');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'E2010','ENG1010');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'E2010','ENG1020');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'E2010','MTH1310');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'E2020','ENG1010');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'E2020','ENG1020');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'E2020','MTH1310');
/*BUSINESS CORE ACC2010*/
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'A2010','ENG1010');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'A2010','ENG1020');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'A2010','MTH1310');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'A2010','SPE1010');
/*BUSINESS CORE ACC2020*/
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'A2020','ACC2010');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'A2020','ENG1010');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'A2020','ENG1020');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'A2020','MTH1310');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'A2020','SPE1010');
/*BUSINESS CORE CIS2010*/
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'C2010','CIS1010');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'C2010','ENG1010');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'C2010','ENG1020');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'C2010','MTH1310');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'C2010','SPE1010');
/*BUSINESS CORE */
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'M2210','ENG1010');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'M2210','ENG1020');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'M2210','MTH1310');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'M2210','SPE1010');
/*BUSINESS CORE */
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'M2040','ENG1010');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'M2040','ENG1020');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'M2040','MTH1310');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'M2040','SPE1010');
/*BUSINESS CORE */
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'C3300','MTH1320');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'C3300','CIS2010');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'C3300','ENG1010');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'C3300','ENG1020');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'C3300','MTH1310');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'C3300','SPE1010');
/*BUSINESS CORE */
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'C3320','CIS3300');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'C3320','ENG1010');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'C3320','ENG1020');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'C3320','MTH1310');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'C3320','SPE1010');
/*BUSINESS CORE */
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'F3300','ACC2010');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'F3300','ECO2010');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'F3300','ECO2020');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'F3300','MTH1320');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'F3300','ENG1010');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'F3300','ENG1020');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'F3300','MTH1310');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'F3300','SPE1010');
/*BUSINESS CORE */
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'M3000','ENG1010');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'M3000','ENG1020');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'M3000','MTH1310');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'M3000','SPE1010');
/*BUSINESS CORE */
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'K3000','ENG1010');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'K3000','ENG1020');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'K3000','MTH1310');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'K3000','SPE1010');
/*BUSINESS CORE MGT4950 CAPSTONE*/
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'M4950','ENG1010');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'M4950','ENG1020');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'M4950','MTH1310');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'M4950','SPE1010');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'M4950','HIS1010');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'M4950','PHI1030');  /*problem*/
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'M4950','PHI3360');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'M4950','ECO2010');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'M4950','ECO2020');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'M4950','NAT1010');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'M4950','NAT1020');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'M4950','PSY1001'); /*problem*/
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'M4950','SOC1010');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'M4950','PSC1010'); /*problem*/
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'M4950','PSC1020');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'M4950','MTH1320');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'M4950','ACC2010');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'M4950','ACC2020');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'M4950','CIS2010');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'M4950','CIS1010');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'M4950','CIS3300');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'M4950','MGT2210');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'M4950','MKT2040');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'M4950','CIS3320');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'M4950','FIN3300');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'M4950','MGT3000');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'M4950','MKT3000');
/*======END======INSERT INTO PRE REQ TABLE BUSINESS CORE AND GEN ED REQUIREMENTS======END======*/


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


