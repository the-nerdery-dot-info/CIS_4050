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
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('ART1010','ART','Any Arts and Humanities class',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('GLB1010','GLB','Any Global Diversity Course satisfied within major',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('MLT1010','MLT','Any Multicultural Course satified within major',NULL,'3');
/*======END======INSERT INTO COURSES TABLE FOR SOB AND GEN ED======END======*/

/*INSERT INTO COURSES TABLE FOR CIS DEPARTMENT MINUS SOB REQUIREMENTS*/
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('CIS2110','CIS','Structured Problem Solving in Information Systems',NULL,'3');
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

/*INSERT INTO COURSES TABLE FOR ACC DEPARTMENT MINUS SOB REQUIREMENTS*/
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('ACC3090','ACC','Income Tax I',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('ACC3300','ACC','Accounting Information Systems',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('ACC3400','ACC','Cost Accounting',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('ACC3510','ACC','Intermediate Accounting I',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('ACC3520','ACC','Intermediate Accounting II',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('ACC4200','ACC','Auditing',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('ACC3100','ACC','Income Tax II',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('ACC3110','ACC','Volunteer Income Tax Assistance',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('ACC3200','ACC','Governmental Accounting',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('ACC3750','ACC','International Accounting',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('ACC3980','ACC','Internship',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('ACC4510','ACC','Advanced Accounting',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('ACC490C','ACC','Internal Auditing',NULL,'3');
/*=========END=========INSERT INTO COURSES TABLE FOR ACC DEPARTMENT MINUS SOB REQUIREMENTS==========END=========*/

/*INSERT INTO COURSES TABLE FOR MKT DEPARTMENT MINUS SOB REQUIREMENTS*/
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('MKT3010','MKT','Marketing Research',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('MKT3310','MKT','Consumer Behavior',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('MKT3710','MKT','International Marketing',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('MKT4560','MKT','Marketing Strategy',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('MKT3100','MKT','Retail Marketing',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('MKT3110','MKT','Advertising Management',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('MKT3120','MKT','Promotional Strategy',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('MKT3140','MKT','Direct Marketing Management',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('MKT3160','MKT','Sales Management',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('MKT3250','MKT','Personal Selling',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('MKT3300','MKT','Marketing of Services',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('MKT3410','MKT','Marketing Logistics',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('MKT3500','MKT','Sport Marketing',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('MKT3550','MKT','Sport Sales',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('MKT3610','MKT','Business to Business Marketing',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('MKT3750','MKT','Multicultural Marketing',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('MKT3810','MKT','Electronic Marketing',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('MKT3910','MKT','New Product Development',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('MKT3980','MKT','Internship',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('MKT4110','MKT','Reputation and Brand Management',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('MKT4250','MKT','Advanced Selling',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('MKT4520','MKT','Seminar in Marketing Management',NULL,'3');
/*=========END=========INSERT INTO COURSES TABLE FOR MKT DEPARTMENT MINUS SOB REQUIREMENTS==========END=========*/

/*INSERT INTO COURSES TABLE FOR FIN DEPARTMENT MINUS SOB REQUIREMENTS*/
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('FIN3010','FIN','Financial Markets and Institutions',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('FIN3150','FIN','Personal Financial Planning',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('FIN3600','FIN','Investments',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('FIN3850','FIN','Intermediate Finance',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('FIN3100','FIN','International Money and Finance',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('FIN3320','FIN','Entrepreneurial Finance',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('FIN3420','FIN','Principles of Insurance',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('FIN3450','FIN','Retirement Planning and Employee Benefits',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('FIN4200','FIN','Financial Modeling with Spreadsheets',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('FIN4400','FIN','Estate Planning',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('FIN4500','FIN','Analysis of Financial Statements',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('FIN4600','FIN','Security Analysis and Portfolio Management',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('FIN4750','FIN','Seminar in Personal Financial Planning',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('FIN4950','FIN','Financial Strategies and Policies',NULL,'3');
/*=========END=========INSERT INTO COURSES TABLE FOR FIN DEPARTMENT MINUS SOB REQUIREMENTS==========END=========*/

/*INSERT INTO COURSES TABLE FOR MGT DEPARTMENT MINUS SOB REQUIREMENTS*/
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('MGT3020','MGT','Entrepreneurs: Cases and Studies',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('MGT3220','MGT','Legal Environment of Business II',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('MGT3530','MGT','Human Resource Management',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('MGT3550','MGT','Operations Management',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('MGT3820','MGT','International Business',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('MGT4530','MGT','Organizational Behavior',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('MGT3230','MGT','International Business Law',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('MGT3240','MGT','Employment and HR Law',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('MGT4030','MGT','Organizational Development and Change',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('MGT4050','MGT','Purchasing and Supply Chain Management',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('MGT4420','MGT','Entrepreneurial Business Planning',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('MGT4550','MGT','Project Management',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('MGT4610','MGT','Labor Employee Relations',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('MGT4620','MGT','Performance Management and Reward Systems',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('MGT4640','MGT','Employee Training and Development',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('MGT4830','MGT','Workforce Diversity',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('MGT4850','MGT','Organizational Mgmt and Consulting',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('MGT390A','MGT','Global Entrepreneurship',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('MGT490C','MGT','Advanced Topics in Management',NULL,'3');
INSERT INTO `Metro_Advisor`.`Courses`(`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`) VALUES ('MGT490D','MGT','Employee Selection',NULL,'3');
/*=========END=========INSERT INTO COURSES TABLE FOR FIN DEPARTMENT MINUS SOB REQUIREMENTS==========END=========*/

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

/*INSERT INTO PRE REQ TABLE CIS SPECIFIC REQUIREMENTS*/
/*INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'C2110','CIS2010');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'C3050','CIS2110');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'C3060','CIS2110');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'C3145','CIS2110');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'C3230','CIS2110');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'C4050','CIS3050');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'C4050','CIS3060');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'C4050','CIS3145');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'C4050','CIS3230');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'C3030','CIS2110');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'C3220','CIS2110');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'C3270','CIS2010');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'C3280','CIS3230');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'C3290','CIS2010');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'C3290','CIS2110');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'C3460','CIS3060');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'C3460','ACC3300');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'C3460','CIS3300');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'C3490','CIS2010');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'C3500','CIS3230');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'C4030','CIS3030');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'C4060','CIS2110');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'C4060','CIS3060');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'C4160','CIS2110');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'C4160','CIS3060');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'C4260','CIS3060');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'C4280','CIS3230');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'C4281','CIS3230');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'C4410','CIS2110');
INSERT INTO `Metro_Advisor`.`PreReq`( `table_key`, `pre_req_id`, `course_id`) VALUES ( NULL, 'C4410','MGT3000');*/
/*======END======INSERT INTO PRE REQ TABLE CIS SPECIFIC REQUIREMENTS======END======*/

UPDATE `PreReq` SET `pre_req_id`= 'CIS3300' WHERE `table_key`= '32';
UPDATE `PreReq` SET `pre_req_id`= 'CIS3300' WHERE `table_key`= '33';
UPDATE `PreReq` SET `pre_req_id`= 'CIS3300' WHERE `table_key`= '34';
UPDATE `PreReq` SET `pre_req_id`= 'CIS3300' WHERE `table_key`= '35';
UPDATE `PreReq` SET `pre_req_id`= 'CIS3300' WHERE `table_key`= '36';

UPDATE `PreReq` SET `pre_req_id`= 'CIS3320' WHERE `table_key`= '37';
UPDATE `PreReq` SET `pre_req_id`= 'CIS3320' WHERE `table_key`= '38';
UPDATE `PreReq` SET `pre_req_id`= 'CIS3320' WHERE `table_key`= '39';
UPDATE `PreReq` SET `pre_req_id`= 'CIS3320' WHERE `table_key`= '40';
UPDATE `PreReq` SET `pre_req_id`= 'CIS3320' WHERE `table_key`= '41';

UPDATE `PreReq` SET `pre_req_id`= 'FIN3300' WHERE `table_key`= '42';
UPDATE `PreReq` SET `pre_req_id`= 'FIN3300' WHERE `table_key`= '43';
UPDATE `PreReq` SET `pre_req_id`= 'FIN3300' WHERE `table_key`= '44';
UPDATE `PreReq` SET `pre_req_id`= 'FIN3300' WHERE `table_key`= '45';
UPDATE `PreReq` SET `pre_req_id`= 'FIN3300' WHERE `table_key`= '46';
UPDATE `PreReq` SET `pre_req_id`= 'FIN3300' WHERE `table_key`= '47';
UPDATE `PreReq` SET `pre_req_id`= 'FIN3300' WHERE `table_key`= '48';
UPDATE `PreReq` SET `pre_req_id`= 'FIN3300' WHERE `table_key`= '49';

UPDATE `PreReq` SET `pre_req_id`= 'MGT3000' WHERE `table_key`= '50';
UPDATE `PreReq` SET `pre_req_id`= 'MGT3000' WHERE `table_key`= '51';
UPDATE `PreReq` SET `pre_req_id`= 'MGT3000' WHERE `table_key`= '52';
UPDATE `PreReq` SET `pre_req_id`= 'MGT3000' WHERE `table_key`= '53';

UPDATE `PreReq` SET `pre_req_id`= 'MKT3000' WHERE `table_key`= '54';
UPDATE `PreReq` SET `pre_req_id`= 'MKT3000' WHERE `table_key`= '55';
UPDATE `PreReq` SET `pre_req_id`= 'MKT3000' WHERE `table_key`= '56';
UPDATE `PreReq` SET `pre_req_id`= 'MKT3000' WHERE `table_key`= '57';

UPDATE `PreReq` SET `pre_req_id`= 'MGT4950' WHERE `table_key`= '58';
UPDATE `PreReq` SET `pre_req_id`= 'MGT4950' WHERE `table_key`= '59';
UPDATE `PreReq` SET `pre_req_id`= 'MGT4950' WHERE `table_key`= '60';
UPDATE `PreReq` SET `pre_req_id`= 'MGT4950' WHERE `table_key`= '61';
UPDATE `PreReq` SET `pre_req_id`= 'MGT4950' WHERE `table_key`= '62';
UPDATE `PreReq` SET `pre_req_id`= 'MGT4950' WHERE `table_key`= '63';
UPDATE `PreReq` SET `pre_req_id`= 'MGT4950' WHERE `table_key`= '64';
UPDATE `PreReq` SET `pre_req_id`= 'MGT4950' WHERE `table_key`= '65';
UPDATE `PreReq` SET `pre_req_id`= 'MGT4950' WHERE `table_key`= '66';
UPDATE `PreReq` SET `pre_req_id`= 'MGT4950' WHERE `table_key`= '67';
UPDATE `PreReq` SET `pre_req_id`= 'MGT4950' WHERE `table_key`= '68';
UPDATE `PreReq` SET `pre_req_id`= 'MGT4950' WHERE `table_key`= '69';
UPDATE `PreReq` SET `pre_req_id`= 'MGT4950' WHERE `table_key`= '70';
UPDATE `PreReq` SET `pre_req_id`= 'MGT4950' WHERE `table_key`= '71';
UPDATE `PreReq` SET `pre_req_id`= 'MGT4950' WHERE `table_key`= '72';
UPDATE `PreReq` SET `pre_req_id`= 'MGT4950' WHERE `table_key`= '73';
UPDATE `PreReq` SET `pre_req_id`= 'MGT4950' WHERE `table_key`= '74';
UPDATE `PreReq` SET `pre_req_id`= 'MGT4950' WHERE `table_key`= '75';
UPDATE `PreReq` SET `pre_req_id`= 'MGT4950' WHERE `table_key`= '76';
UPDATE `PreReq` SET `pre_req_id`= 'MGT4950' WHERE `table_key`= '77';
UPDATE `PreReq` SET `pre_req_id`= 'MGT4950' WHERE `table_key`= '78';
UPDATE `PreReq` SET `pre_req_id`= 'MGT4950' WHERE `table_key`= '79';
UPDATE `PreReq` SET `pre_req_id`= 'MGT4950' WHERE `table_key`= '80';
UPDATE `PreReq` SET `pre_req_id`= 'MGT4950' WHERE `table_key`= '81';
UPDATE `PreReq` SET `pre_req_id`= 'MGT4950' WHERE `table_key`= '82';
UPDATE `PreReq` SET `pre_req_id`= 'MGT4950' WHERE `table_key`= '83';
UPDATE `PreReq` SET `pre_req_id`= 'MGT4950' WHERE `table_key`= '84';

