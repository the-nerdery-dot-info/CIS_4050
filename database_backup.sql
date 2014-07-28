-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Jul 26, 2014 at 09:40 PM
-- Server version: 5.5.34
-- PHP Version: 5.5.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `Metro_Advisor`
--

-- --------------------------------------------------------

--
-- Table structure for table `Advisors`
--

CREATE TABLE `Advisors` (
  `advisor_id` varchar(9) NOT NULL,
  `department_id` varchar(7) NOT NULL,
  `advisor_lname` varchar(100) NOT NULL,
  `advisor_fname` varchar(100) NOT NULL,
  `advisor_email` varchar(100) NOT NULL,
  PRIMARY KEY (`advisor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Courses`
--

CREATE TABLE `Courses` (
  `course_id` varchar(7) NOT NULL,
  `department_id` varchar(7) NOT NULL,
  `course_name` varchar(200) NOT NULL,
  `course_desc` longtext,
  `course_credit_hrs` int(1) NOT NULL,
  `course_level` int(1) NOT NULL,
  `cis_major` varchar(3) DEFAULT NULL,
  `mgt_major` varchar(3) DEFAULT NULL,
  `mkt_major` varchar(3) DEFAULT NULL,
  `acc_major` varchar(3) DEFAULT NULL,
  `fin_major` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Courses`
--

INSERT INTO `Courses` (`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`, `course_level`, `cis_major`, `mgt_major`, `mkt_major`, `acc_major`, `fin_major`) VALUES
('ACC2010', 'ACC', 'Principles of Accounting I', 'This course introduces students to the role of accounting in society and economic decision making. The course focuses on financial accounting and reporting as tools to aid external decision making, financial analysis, and interpretation. Topics covered include: conceptual foundations and principles underlying financial statements; accounting systems overview; analysis and interpretation of financing, investing, and operating activities; and attestation.', 3, 2, 'CIS', 'MGT', 'MKT', 'ACC', 'FIN'),
('ACC2020', 'ACC', 'Principles of Accounting II', 'This course is a continuation of ACC 2010. The course focuses on managerial accounting and cost management as tools to aid internal decision making, planning and control. Topics covered include: accounting and management decisions; traditional and activity-based costing systems; planning and control systems; managerial accounting in a global environment; and current approaches including ABM, JIT, value chain, target costing, continuous improvement and quality management.', 3, 2, 'CIS', 'MGT', 'MKT', 'ACC', 'FIN'),
('ACC3090', 'ACC', 'Income Tax I', 'This course is a study of federal income tax laws with an emphasis on personal income taxation, including such topics as gross income, gains and losses and deductions.', 3, 3, NULL, NULL, NULL, 'ACC', NULL),
('ACC3100', 'ACC', 'Income Tax II', 'This course is a continuation of ACC 3090 with a comparative focus on the taxation of organizational tax entities, including partnerships, corporations and S-corporations.', 3, 3, NULL, NULL, NULL, 'ACC', NULL),
('ACC3110', 'ACC', 'Volunteer Income Tax Assistance', 'Students will have primary responsibility for operating a VITA site as a tax service. Students will prepare both federal and State of Colorado income tax returns. The focus will be on preparing returns for the elderly, disabled, foreign students and low income individuals.', 3, 3, NULL, NULL, NULL, 'ACC', NULL),
('ACC3200', 'ACC', 'Governmental Accounting', 'This course is a study of generally accepted accounting principles and financial reporting used by state and local governmental units. This includes achieving an understanding of fund accounting and inclusion of budgets within the accounting systems. A study of accounting and financial reporting of colleges, hospitals, voluntary health and welfare organizations, and other not-for-profit institutions is included.', 3, 3, NULL, NULL, NULL, 'ACC', NULL),
('ACC3300', 'ACC', 'Accounting Information Systems', NULL, 3, 0, NULL, NULL, NULL, 'ACC', NULL),
('ACC3400', 'ACC', 'Cost Accounting', 'This course is a study of principles and current issues relating to the design, implementation, control and regulation of accounting information systems. Tools and technologies related to accounting systems and the place of accounting systems within the modern enterprise provide a focus for the course, which includes an introduction to accounting-related information technology (IT) audit issues.', 3, 3, NULL, NULL, NULL, 'ACC', NULL),
('ACC3510', 'ACC', 'Intermediate Accounting I', 'This is the first course in Intermediate Accounting. The Intermediate Accounting courses are designed to teach the concepts and procedures underlying the measurement and reporting of financial information.', 3, 3, NULL, NULL, NULL, 'ACC', NULL),
('ACC3520', 'ACC', 'Intermediate Accounting II', 'This course is a continuation of ACC 3510 and covers an in-depth study of basic accounting principles with an emphasis on stockholders’ equity and special problems.', 3, 3, NULL, NULL, NULL, 'ACC', NULL),
('ACC3750', 'ACC', 'International Accounting', 'This course is a study of the impact on financial reporting and managerial decision-making due to the similarities and differences in accounting standards throughout the world. This course examines the history and development of accounting standards and reviews current topics which affect the comparison of global financial reporting.', 3, 4, NULL, NULL, NULL, 'ACC', NULL),
('ACC3980', 'ACC', 'Internship', 'Supervised by a faculty member within the major department, internships provide practical, hands-on experience in a professional field related to the major. Internship placements must be established prior to enrollment in this course in consultation with the Applied Learning Center.', 3, 4, NULL, NULL, NULL, 'ACC', NULL),
('ACC4200', 'ACC', 'Auditing', 'This course is an introduction to contemporary theory and practice of auditing and attestation. The course will acquaint the students with Generally Accepted Auditing and Attestation Standards (GAAS), professional ethics, internal control, objectives and procedures for audits and attestation, risk assessment, audit and attestation reports, legal liability, research methodology, and corporate governance. Concepts included are professionalism, independence, evidence, risk, control, and enhancement of reliability and relevance properties of attester’s services.', 3, 0, NULL, NULL, NULL, 'ACC', NULL),
('ACC4510', 'ACC', 'Advanced Accounting', 'This course includes coverage of reporting requirements for partnerships, SEC-regulated companies, not-for-profit organizations, and financially distressed entities, as well as information disclosure requirements for state and local governments, international harmonization of accounting standards, and the possible conversion to International Accounting Standards in the U.S.', 3, 4, NULL, NULL, NULL, 'ACC', NULL),
('ACC490C', 'ACC', 'Internal Auditing', '', 3, 0, NULL, NULL, NULL, 'ACC', NULL),
('ART1010', 'ART', 'Any Arts and Humanities class', '', 3, 0, 'CIS', 'MGT', 'MKT', 'ACC', 'FIN'),
('CIS1010', 'CIS', 'Intro to computers', 'This course is designed for students who wish to use a microcomputer in their academic pursuits and their career. The student will learn how to use a personal computer with application software featuring word processing, spreadsheets, file management, graphics, electronic communications, and thesaurus/spelling checker. This course also reviews the historical, societal, ethical, and technological aspects of computers.', 3, 1, 'CIS', 'MGT', 'MKT', 'ACC', 'FIN'),
('CIS2010', 'CIS', 'Foundations of Information Systems', 'This course is an introduction to fundamental business information systems from a business perspective. It includes computer hardware and software, use of business productivity tools and Internet, and introduction to fundamental and functional business information systems.', 3, 2, 'CIS', 'MGT', 'MKT', 'ACC', 'FIN'),
('CIS2110', 'CIS', 'Structured Problem Solving in Information Systems', 'This is a problem-solving course in which the tools of structured design are used to design computerized solutions to business problems. Procedural programming languages are used to implement these designs. Emphasis is placed on the implementation of the three logic constructs in procedural languages: sequence, selection and iteration.', 3, 2, 'CIS', NULL, NULL, NULL, NULL),
('CIS3030', 'CIS', 'Business Web Page Development', 'This is a course in business Web page development. Specifically, the student will learn how to plan the development of a Web site, compose Web site specifications, apply coding to the development of any kind of Web site, and find and use development resources. The student will use a leading code-centric text editor to aid in all course Web page development projects. The student will also be introduced to a leading graphical editing tool for supplemental use.', 3, 3, 'CIS', NULL, NULL, NULL, NULL),
('CIS3050', 'CIS', 'Managerial Statistics', 'This course covers the basic concepts of an information system and systems analysis tools and techniques necessary to develop requirements for a business information system. Students will concentrate on systems analysis using current methodologies, technologies, and available tools of analysis, as we11 as an examination of the effect on systems analysis by business drivers such as globalization, security, privacy, ethics, collaboration. The course will focus on the analysis phase including requirements definition, modeling, feasibility, project planning and management, and documentation.', 3, 3, 'CIS', NULL, NULL, NULL, NULL),
('CIS3060', 'CIS', 'Database Management Systems', 'This course provides an introduction to the design, development, implementation, and manipulation of databases as well as covering the essentials of file processing. The student will create information level database designs from a set of user requirements and implement those designs employing a 4GL database tool. Finally, the student will be introduced to current topics in the database field, which may include Data Warehousing, Distributed Systems, Object-Oriented Systems, Spatial Databases, and Database Driven Web Sites.', 3, 3, 'CIS', NULL, NULL, NULL, NULL),
('CIS3145', 'CIS', 'Business Application Development with Visual Basic', 'This course provides a visual development environment to develop object-oriented, event driven GUI business applications. Visual Basic is a graphical user interface RAD tool for development of Web and Windows applications. Students will complete an application project that requires the analysis of a problem, development of an appropriate program design, creation of a MSIL solution and a plan for implementation with appropriate documentation.', 3, 3, 'CIS', NULL, NULL, NULL, NULL),
('CIS3220', 'CIS', 'Analysis of Hardware, Software, and User Interfaces for Microcomputer Platforms', NULL, 3, 0, 'CIS', NULL, NULL, NULL, NULL),
('CIS3230', 'CIS', 'Telecommunication Systems and Networking', 'This course is a study of the transmission of data, voice, and video including: transmission systems and associated hardware and software; types of networks; introduction to the OSI model, LANs and WANs; and applications of networks.', 3, 3, 'CIS', NULL, NULL, NULL, NULL),
('CIS3270', 'CIS', 'Advanced Computer Applications for Business', 'This is a software solutions microcomputer course that teaches problem solving at the business operational level using advanced applications of word processing, presentation graphics, electronic spreadsheets, and database management. Hands-on practice with the advanced Microsoft application suite and computer-based examinations are included.', 3, 3, 'CIS', NULL, NULL, NULL, NULL),
('CIS3280', 'CIS', 'LAN and WAN Systems for Business', 'Presents the technology, architecture, and interconnection of Local Area Networks and Wide Area Networks. The advantages and disadvantages of each technology will be discussed so that well-informed decisions can be made regarding the design of communication networks.', 3, 3, 'CIS', NULL, NULL, NULL, NULL),
('CIS3290', 'CIS', 'Operating Systems for End Users', 'An end-user oriented microcomputer operating systems course which teaches advanced concepts of the most popular operating systems, both networked and stand-alone. The course includes instruction in theory, plus hands-on experience with each operating system.', 3, 0, 'CIS', NULL, NULL, NULL, NULL),
('CIS3300', 'CIS', 'Managerial Statistics', 'This course introduces the student to the applications of statistical inference and the translation of quantitative data into information that can be used in business decision making. This course covers the topics of point estimation, confidence interval estimation, hypothesis testing, analysis of variance, regression analysis, model building, and forecasting. A specific statistical package is required.', 3, 3, 'CIS', 'MGT', 'MKT', 'ACC', 'FIN'),
('CIS3320', 'CIS', 'Management Science', 'This course is an introduction to business management science techniques. The course covers the topics of linear programming, project scheduling, inventory models, decision analysis, queuing theory, and simulation, in the context of management decision-making skills.', 3, 3, 'CIS', 'MGT', 'MKT', 'ACC', 'FIN'),
('CIS3460', 'CIS', 'Data Warehousing and Mining', 'This course covers the concepts of data warehousing and data mining, and how they are used to convert data into strategic business information. It discusses the design, architecture, planning, and project management of a data warehouse. Data mining techniques (classification, association, genetic algorithms, machine learning, etc.) are discussed as a way to discover useful relationships among data.', 3, 3, 'CIS', NULL, NULL, NULL, NULL),
('CIS3490', 'CIS', 'Managing Business Information with Enterprise Systems', '', 3, 3, 'CIS', NULL, NULL, NULL, NULL),
('CIS3500', 'CIS', 'Information Systems Security', 'This course covers a broad range of topics in security for networked and internetworked computer systems. It examines security and integrity objectives in terms of high level policy and presents security services used to address those requirements. Network security architectures are analyzed to insure that critical security functions are protected from unauthorized access and modification. Access control in networked systems is examined.', 3, 4, 'CIS', NULL, NULL, NULL, NULL),
('CIS3980', 'CIS', 'Internship in Computer Information Systems', 'Arranged', 3, 4, 'CIS', NULL, NULL, NULL, NULL),
('CIS4030', 'CIS', 'Web Site Administration', 'This course presents the fundamentals of organizing and administering a business Web site with multiple clients. Students will learn how to design effective, business-oriented Web pages. They will be able to give advice to the users, describe how to put Web pages on a server, how to organize the published information, how to plan a business Web site, specify the hardware, choose the daemon, and install and configure a server. In addition, the course will cover the security issues of the internet access, the different protection techniques, how to maintain a site, content and interpretation of the log files, and tools and techniques required to run an effective business site.', 3, 4, 'CIS', NULL, NULL, NULL, NULL),
('CIS4050', 'CIS', 'Systems Analysis & Design', NULL, 3, 0, 'CIS', NULL, NULL, NULL, NULL),
('CIS4060', 'CIS', 'Advanced Database Management Systems', 'This course provides an in-depth understanding of database management systems by extending the database concepts and programming skills developed in prerequisite courses. The student will be presented with a variety of realistic business problems and be asked to produce functional solutions to these problems. The course will use the Oracle 2000 Developer or similar software to drive the design and development of business application software.', 3, 4, 'CIS', NULL, NULL, NULL, NULL),
('CIS4160', 'CIS', 'Advanced Programming Seminar', 'This course addresses advanced language techniques and their application to Information Systems problems. It discusses the appropriateness of certain languages and programming techniques.', 3, 0, 'CIS', NULL, NULL, NULL, NULL),
('CIS4260', 'CIS', 'Database Administration', 'This course covers the functions and responsibilities of the Database Administrator (DBA) in an organization with integrated, shared Relational Database Management System (RDMS). The course will focus on the technical requirements of DBA including enrolling new users, creating the database, backup and recovery of data, security measures, implementing data integrity, and tuning the database.', 3, 4, 'CIS', NULL, NULL, NULL, NULL),
('CIS4280', 'CIS', 'Network Installation and Administration', 'This course presents the knowledge and skills necessary to install the network operating system and to preform competently in the role os a network administrator.', 3, 0, 'CIS', NULL, NULL, NULL, NULL),
('CIS4281', 'CIS', 'Network Installation and Administration With UNIX/Linux', NULL, 3, 0, 'CIS', NULL, NULL, NULL, NULL),
('CIS4410', 'CIS', 'Management Information Systems', 'This course provides an overview of management information systems, managerial decision making practices and styles and requisite information needs. International information concepts, the influence of national cultures on decision making, information use and on various system design approaches are examined. The course addresses the practical aspects of the development of management information systems and decision support systems.', 3, 4, 'CIS', NULL, NULL, NULL, NULL),
('ECO2010', 'ECO', 'Principles of Economics Macro', 'This course offers an introductory analysis of the economy as a whole. Course topics include measuring economic performance and exploring the determinants of long-run economic growth. Students learn the role and impact of macroeconomic policies such as taxes, government spending, and actions taken by the Federal Reserve. This course applies macroeconomic principles and analysis to current events and problems as well as exploring the impact of the macroeconomy on the human experience.', 3, 2, 'CIS', 'MGT', 'MKT', 'ACC', 'FIN'),
('ECO2020', 'ECO', 'Principles of Economics Micro', 'This course offers an introductory analysis of economic decision making in a market system. The roles, actions, and interactions of consumers, firms, and the government are explored. Market failure and government failure are also considered. Microeconomic principles and analysis are applied to current events and problems and are used to explore human behavior.', 3, 2, 'CIS', 'MGT', 'MKT', 'ACC', 'FIN'),
('ELC1001', 'ELC', 'One credit hour elective', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL),
('ELC1003', 'ELC', 'Three credit hour elective', NULL, 3, 0, NULL, NULL, NULL, NULL, NULL),
('ELC1004', 'ELC', 'Four credit hour elective', NULL, 4, 0, NULL, NULL, NULL, NULL, NULL),
('ELC2001', 'ELC', 'One credit hour elective', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL),
('ELC2003', 'ELC', 'Three credit hour elective', NULL, 3, 0, NULL, NULL, NULL, NULL, NULL),
('ELC2004', 'ELC', 'Four credit hour elective', NULL, 4, 0, NULL, NULL, NULL, NULL, NULL),
('ELC3001', 'ELC', 'One credit hour elective', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL),
('ELC3003', 'ELC', 'Three credit hour elective', NULL, 3, 0, NULL, NULL, NULL, NULL, NULL),
('ELC3004', 'ELC', 'Four credit hour elective', NULL, 4, 0, NULL, NULL, NULL, NULL, NULL),
('ELC4001', 'ELC', 'One credit hour elective', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL),
('ELC4003', 'ELC', 'Three credit hour elective', NULL, 3, 0, NULL, NULL, NULL, NULL, NULL),
('ELC4004', 'ELC', 'Four credit hour elective', NULL, 4, 0, NULL, NULL, NULL, NULL, NULL),
('ELC5001', 'ELC', 'One credit hour elective', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL),
('ELC5003', 'ELC', 'Three credit hour elective', NULL, 3, 0, NULL, NULL, NULL, NULL, NULL),
('ELC5004', 'ELC', 'Four credit hour elective', NULL, 4, 0, NULL, NULL, NULL, NULL, NULL),
('ELC6001', 'ELC', 'One credit hour elective', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL),
('ELC6003', 'ELC', 'Three credit hour elective', NULL, 3, 0, NULL, NULL, NULL, NULL, NULL),
('ELC6004', 'ELC', 'Four credit hour elective', NULL, 4, 0, NULL, NULL, NULL, NULL, NULL),
('ELC7001', 'ELC', 'One credit hour elective', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL),
('ELC7003', 'ELC', 'Three credit hour elective', NULL, 3, 0, NULL, NULL, NULL, NULL, NULL),
('ELC7004', 'ELC', 'Four credit hour elective', NULL, 4, 0, NULL, NULL, NULL, NULL, NULL),
('ELC8001', 'ELC', 'One credit hour elective', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL),
('ELC8003', 'ELC', 'Three credit hour elective', NULL, 3, 0, NULL, NULL, NULL, NULL, NULL),
('ELC8004', 'ELC', 'Four credit hour elective', NULL, 4, 0, NULL, NULL, NULL, NULL, NULL),
('ELC9001', 'ELC', 'One credit hour elective', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL),
('ELC9003', 'ELC', 'Three credit hour elective', NULL, 3, 0, NULL, NULL, NULL, NULL, NULL),
('ELC9004', 'ELC', 'Four credit hour elective', NULL, 4, 0, NULL, NULL, NULL, NULL, NULL),
('ENG1010', 'ENG', 'Freshman Composition: The Essay', 'ENG 1010 is a course focusing on the process of writing and revising college-level texts in three major categories: arguments through personal reflection, arguments through analysis, and arguments through interpretation. The course employs lecture, discussion, workshop, and conference methods. Students learn how to read, summarize, and analyze texts. Students demonstrate their ability to generate, organize, and produce writing for appropriate audiences.', 3, 1, 'CIS', 'MGT', 'MKT', 'ACC', 'FIN'),
('ENG1020', 'ENG', 'Freshman Composition: Analysis, Research and Documentation', 'This is a course in the process of writing extended essays supported by research. The course includes an introduction to library use, research techniques, and the conventions of MLA and APA styles of documentation, as well as practice in critical reading, thinking, and writing across the disciplines. Students can expect to do a series of shorter writing and research assignments leading to the longer, documented paper. ENG 1020 includes hands-on instruction in the use of computers in research and writing in a computer lab', 3, 1, 'CIS', 'MGT', 'MKT', 'ACC', 'FIN'),
('FIN3010', 'FIN', 'Financial Markets and Institutions', 'This course provides a framework for understanding our financial environment, including markets, institutions, and securities. Each type of market and how financial institutions use it, its internationalization, and recent events that have affected it are studied.', 3, 3, NULL, NULL, NULL, NULL, 'FIN'),
('FIN3100', 'FIN', 'International Money and Finance', 'This course covers the basics of the foreign exchange market, the balance of payments, parity conditions in international finance, foreign exchange risk and forecasting, the financing of international activities, and international capital flows. The course will focus on the financial management of the multinational firm.', 3, 3, NULL, NULL, NULL, NULL, 'FIN'),
('FIN3150', 'FIN', 'Personal Financial Planning', 'This course is an introduction to the field of personal financial planning for business students. The student will study money management, investments, insurance, employee benefits, retirement planning, and estate planning as they relate to individual and family financial planning.', 3, 3, NULL, NULL, NULL, NULL, 'FIN'),
('FIN3300', 'FIN', 'Managerial Finance', 'This is a study of the dynamic environment of financial management using the following analytical skills: financial analysis and forecasting, time value of money, security valuation, capital budgeting, capital structure, the cost of capital, and working capital management.', 3, 3, 'CIS', 'MGT', 'MKT', 'ACC', 'FIN'),
('FIN3320', 'FIN', 'Entrepreneurial Finance', 'The course is designed to acquaint students with the basic concepts of obtaining funds for the start-up and financing the continued growth of the firm. The course covers start-up financing, growth capital, daily financial management, valuation and strategic financial planning.', 3, 3, NULL, NULL, NULL, NULL, 'FIN'),
('FIN3420', 'FIN', 'Principles of Insurance', 'This course explores the underlying principles of insurance, and the need for insurance in a progressive, dynamic society. It includes an introductory examination of insurable risks, uses of insurance, as well as a study of the important coverages that are currently available. ', 3, 3, NULL, NULL, NULL, NULL, 'FIN'),
('FIN3450', 'FIN', 'Retirement Planning and Employee Benefits', 'This is a study of the principles of retirement planning and employee benefits, including the determination of financial needs at retirement. The various employee benefits and retirement plans for employees and selfemployed persons will be studied.', 3, 3, NULL, NULL, NULL, NULL, 'FIN'),
('FIN3600', 'FIN', 'Investments', 'This course is a survey of the organization and regulation of security markets; security analysis and valuation; and principles of portfolio management from the viewpoint of the individual investor.', 3, 4, NULL, NULL, NULL, NULL, 'FIN'),
('FIN3850', 'FIN', 'Intermediate Finance', 'This is an advanced, integrated study of investment risks and returns, the development of modern portfolio theory, financial statements, capital budgeting, and working capital issues. Use of financial calculators and Excel spreadsheets is required to analyze financial problems.', 3, 4, NULL, NULL, NULL, NULL, 'FIN'),
('FIN4200', 'FIN', 'Financial Modeling with Spreadsheets', 'This course provides the student with a set of financial analysis skills to use in building complex financial models utilizing electronic spreadsheets. The topics covered include building financial statements, analysis of financial statements, modern portfolio theory, capital budgeting, regression analysis and both linear and nonlinear programming for financial applications.', 3, 4, NULL, NULL, NULL, NULL, 'FIN'),
('FIN4400', 'FIN', 'Estate Planning', 'The course provides the student with the basic concepts of estate planning and importance in overall financial planning. The course covers the tools and techniques of estate planning so as to arrange the efficient future wealth transfers to maximize the financial well being of both the individual and recipients of the wealth transfer.', 3, 4, NULL, NULL, NULL, NULL, 'FIN'),
('FIN4500', 'FIN', 'Analysis of Financial Statements', '', 3, 4, NULL, NULL, NULL, NULL, 'FIN'),
('FIN4600', 'FIN', 'Security Analysis and Portfolio Management', 'This course is designed to provide students with a comprehensive understanding of security analysis and portfolio management. The focus of the course is on selecting the appropriate securities and managing the portfolio to meet the investor objectives. This is the capstone assessment course for finance majors with a concentration in financial services.', 3, 4, NULL, NULL, NULL, NULL, 'FIN'),
('FIN4750', 'FIN', 'Seminar in Personal Financial Planning', '', 3, 4, NULL, NULL, NULL, NULL, 'FIN'),
('FIN4950', 'FIN', 'Financial Strategies and Policies', 'This is an integrated, case study approach to financial management. Emphasis is on presentation of analysis and recommendations for strategies and policies. This is the capstone and assessment course for finance majors. Proficiency in personal computer word processing and spreadsheet applications is necessary.', 3, 4, NULL, NULL, NULL, NULL, 'FIN'),
('GLB1010', 'GLB', 'Any Global Diversity Course satisfied within major', 'This is a global Diversity course', 3, 1, 'CIS', 'MGT', 'MKT', 'ACC', 'FIN'),
('HIS1010', 'HIS', 'Any history class', '', 3, 1, 'CIS', 'MGT', 'MKT', 'ACC', 'FIN'),
('MGT2210', 'MGT', 'Legal Environment of Business I', 'This course is designed to present the legal system as it applies to business. The course includes a discussion of fundamental concepts related to the nature and sources of law and to the resolution of disputes. Statutes, regulations and related governmental agencies that regulate employment, securities, trade and workplace decisions as well as the law of agency, contracts, organizations and torts are analyzed. Ethical and international aspects of law are treated where appropriate.', 3, 2, 'CIS', 'MGT', 'MKT', 'ACC', 'FIN'),
('MGT3000', 'MGT', 'Organizational Management', 'This course examines, analyzes and assesses managerial functions and processes as related to business and other organizations. It is designed to prepare students to meet the challenges of a highly dynamic and ever changing business environment by formulating individual competencies and skills, translating theory into practice, creating critical thinkers, and reflecting on the integration of new concepts and environmental changes into managerial practices.', 3, 3, 'CIS', 'MGT', 'MKT', 'ACC', 'FIN'),
('MGT3020', 'MGT', 'Entrepreneurs: Cases and Studies', 'Fundamentals of Entrepreneurship identifies the management skills necessary for starting, buying, or working for a business with high growth potential. Areas addressed include the positives and negatives of starting a business, researching and developing a business concept; investigating market factors; and planning financial strategies. Students will evaluate business ideas and develop a written feasibility plan.', 3, 3, NULL, 'MGT', NULL, NULL, NULL),
('MGT3220', 'MGT', 'Legal Environment of Business II', 'This course provides an overview of the contemporary legal environment in which businesses operate. It explores various forms of business organizations, such as corporations and limited liability companies, and business opportunities, such as franchises. Also covered are important areas of government regulation of business including securities law, antitrust law, environmental law, and bankruptcy law. The course also delves into the realm of employment law, with a focus on employment discrimination, affirmative action, and labor law.', 3, 3, NULL, 'MGT', NULL, NULL, NULL),
('MGT3230', 'MGT', 'International Business Law', 'This course provides an overview of the contemporary legal environment in which businesses operate. It explores various forms of business organizations, such as corporations and limited liability companies, and business opportunities, such as franchises. Also covered are important areas of government regulation of business including securities law, antitrust law, environmental law, and bankruptcy law. The course also delves into the realm of employment law, with a focus on employment discrimination, affirmative action, and labor law.', 3, 3, NULL, 'MGT', NULL, NULL, NULL),
('MGT3240', 'MGT', 'Employment and HR Law', NULL, 3, 0, NULL, 'MGT', NULL, NULL, NULL),
('MGT3530', 'MGT', 'Human Resource Management', 'This course provides the student with a broad overview of the contemporary issues, theories and principles used to effectively manage human resources in organizations. The psychological, social, legal and economic bases underlying the practices of human resource management are studied. Topics such as recruitment, selection, performance appraisal and compensation are analyzed.', 3, 3, NULL, 'MGT', NULL, NULL, NULL),
('MGT3550', 'MGT', 'Operations Management', 'This course is an introduction to the activities required to manufacture a product or create a service. Topics include work-force issues, bottlenecks, scheduling, quality assurance, materials control, and dealing with capacity and technological change. Manufacturing and service management in the international arena is contrasted with such management in contemporary American organizations.', 3, 4, NULL, 'MGT', NULL, NULL, NULL),
('MGT3820', 'MGT', 'International Business', NULL, 3, 0, NULL, 'MGT', NULL, NULL, NULL),
('MGT390A', 'MGT', 'Global Entrepreneurship', '', 3, 4, NULL, 'MGT', NULL, NULL, NULL),
('MGT4030', 'MGT', 'Organizational Development and Change', 'This course examines the process of planned change and development strategies in organizations. The focus is on using knowledge of behavioral and social science to help organizations, groups, and individuals improve effectiveness in aligning with strategic objectives.', 3, 4, NULL, 'MGT', NULL, NULL, NULL),
('MGT4050', 'MGT', 'Purchasing and Supply Chain Management', '', 3, 4, NULL, 'MGT', NULL, NULL, NULL),
('MGT4420', 'MGT', 'Entrepreneurial Business Planning', 'This course requires the student to prepare a definitive, comprehensive business plan involving all aspects of a proposed new venture. To attract seed money and growth capital, the student plan must address probable startup issues involving market analysis, competition, workforce and capacity planning. Emphasis is on financial viability and business plan packaging to secure financial seed money.', 3, 4, NULL, 'MGT', NULL, NULL, NULL),
('MGT4530', 'MGT', 'Organizational Behavior', 'This course examines the behavior of individuals and small groups in organizational settings. The emphasis is on how organizations influence behavior in their quest for operating efficiency and effectiveness.', 3, 4, NULL, 'MGT', NULL, NULL, NULL),
('MGT4550', 'MGT', 'Project Management', 'This course investigates the concepts and applicability of matrix organizations and project management. The unique nature of the project management structure is also examined, including its emphasis on integrative decision making throughout a product?s life cycle.', 3, 4, NULL, 'MGT', NULL, NULL, NULL),
('MGT4610', 'MGT', 'Labor Employee Relations', '', 3, 4, NULL, 'MGT', NULL, NULL, NULL),
('MGT4620', 'MGT', 'Performance Management and Reward Systems', '', 3, 4, NULL, 'MGT', NULL, NULL, NULL),
('MGT4640', 'MGT', 'Employee Training and Development', 'This course focuses on the design, implementation and uses of training and development as a necessary part of increasing the value of employee and manager skills. Rapid organizational change precipitated by global competition, multicultural and multinational workers, and technology implementation require organizations to develop the human potential and careers of their employees at all levels.', 3, 4, NULL, 'MGT', NULL, NULL, NULL),
('MGT4830', 'MGT', 'Workforce Diversity', 'Multicultural Senior Experience This course provides an integrated perspective on the management practices and systems that influence the development and contributions of individuals within a culturally diverse work force.', 3, 4, NULL, 'MGT', NULL, NULL, NULL),
('MGT4850', 'MGT', 'Organizational Mgmt and Consulting', '', 3, 4, NULL, 'MGT', NULL, NULL, NULL),
('MGT490C', 'MGT', 'Advanced Topics in Management', '', 3, 4, NULL, 'MGT', NULL, NULL, NULL),
('MGT490D', 'MGT', 'Employee Selection', '', 3, 4, NULL, 'MGT', NULL, NULL, NULL),
('MGT4950', 'MGT', 'Strategic Management', 'This course presents concepts used by managers to develop companies that can prosper in a competitive, global environment. Students are provided the opportunity to apply the concepts and theories of strategic management along with knowledge gained from business courses, general studies, and work experience to the operating and strategic challenges faced by domestic and global organizations.', 3, 4, 'CIS', 'MGT', 'MKT', 'ACC', 'FIN'),
('MKT2040', 'MGT', 'Business Communications', 'The various forms of managerial communication within a business environment are studied. Emphasis is placed on writing, listening, speaking, nonverbal and interpersonal communications with both internal and external audiences of a business. Students will apply the principles learned to both oral and written presentations.', 3, 2, NULL, NULL, NULL, NULL, NULL),
('MKT3000', 'MKT', 'Principles of Marketing', 'This course helps students understand marketing, the process through which organizations analyze, plan, implement and control programs to develop and maintain beneficial exchanges with target buyers. Effective marketing is critical for the long-term success of any business organization because this function ensures that the firm attracts, retains, and grows customers by creating, delivering, and communicating superior customer value.', 3, 3, 'CIS', 'MGT', 'MKT', 'ACC', 'FIN'),
('MKT3010', 'MKT', 'Marketing Research', 'This course will provide the marketing student with a systematic and objective approach to the search for and analysis of information relevant to the identification and solution of marketing problems.', 3, 3, NULL, NULL, 'MKT', NULL, NULL),
('MKT3100', 'MKT', 'Retail Marketing', 'This course will familiarize the student with fundamental retailing concepts and practices. Emphasis will be given to a strategic planning approach for developing and managing the retail marketing mix.', 3, 3, NULL, NULL, 'MKT', NULL, NULL),
('MKT3110', 'MKT', 'Advertising Management', 'The principles of advertising are covered in this course from a business planning framework. The course surveys the advertising field from the marketing-advertising planning framework. It also discusses the targeting of advertising, types of media, media planning and buying, creative planning, and the basic creative formats for each medium. An evaluation of advertising and the production of efficient ads are discussed.', 3, 3, NULL, NULL, 'MKT', NULL, NULL),
('MKT3120', 'MKT', 'Promotional Strategy', 'Following Advertising Management, MKT 3110, this course provides an in-depth understanding and analysis of promotional strategies and tactics necessary in the management of all marketing communications. Students design and execute actual advertising, sales promotion, and publicity plans for a real business.', 3, 3, NULL, NULL, 'MKT', NULL, NULL),
('MKT3140', 'MKT', 'Direct Marketing Management', NULL, 3, 0, NULL, NULL, 'MKT', NULL, NULL),
('MKT3160', 'MKT', 'Sales Management', 'This course will provide students with a comprehensive study of problems involved in managing a sales force. Areas covered include organizations, motivation, and performance evaluation. Case analysis is emphasized.', 3, 3, NULL, NULL, 'MKT', NULL, NULL),
('MKT3250', 'MKT', 'Personal Selling', 'This course examines the environment of personal selling and the process of personal selling. Areas covered include communicating with diverse customers, ethical and legal considerations in personal selling, and the elements of the personal selling process. The course has a case orientation.', 3, 3, NULL, NULL, 'MKT', NULL, NULL),
('MKT3300', 'MKT', 'Marketing of Services', 'This course will introduce students to the problems and issues that are unique to marketing a service organization as well as marketing services. Topics include service strategy, listening to customers, complaint management, service guarantees, customer satisfaction, measuring return on quality, managing moment of truth, relationship marketing, and employee empowerment.', 3, 3, NULL, NULL, 'MKT', NULL, NULL),
('MKT3310', 'MKT', 'Consumer Behavior', 'This course analyzes the underlying theories and complex variables influencing consumers and their purchase decision-making processes. The marketing strategy implications of consumer behavior concepts are studied.', 3, 3, NULL, NULL, 'MKT', NULL, NULL),
('MKT3410', 'MKT', 'Marketing Logistics', 'This course focuses on the task of logistics as a marketing function. It provides the student with a review and understanding of the history, types of transportation, storage arrangements and optimization of the logistics operation. The evolution of marketing channels and their relationship to logistics and the marketing process is also covered in this course.', 3, 3, NULL, NULL, 'MKT', NULL, NULL),
('MKT3500', 'MKT', 'Sport Marketing', 'This course is a study of how the principles of marketing are applied in the sports industry. The course examines the marketing of sports, teams, athletes, etc., as well as the use of sports to market products (e.g., sponsorship and promotional licensing). ', 3, 3, NULL, NULL, 'MKT', NULL, NULL),
('MKT3550', 'MKT', 'Sport Sales', NULL, 3, 0, NULL, NULL, 'MKT', NULL, NULL),
('MKT3610', 'MKT', 'Business to Business Marketing', '', 3, 3, NULL, NULL, 'MKT', NULL, NULL),
('MKT3710', 'MKT', 'International Marketing', 'The primary objective of this course is to introduce students to the issues and complexities involved in the international marketing process. This course will sensitize students to the economic, political, and cultural differences among nations as they affect marketing; introduce students to the framework of organizations, laws, and business practices as they affect marketing; and develop a student?s ability to identify and evaluate marketing opportunities in the international marketplace.', 3, 4, NULL, NULL, 'MKT', NULL, NULL),
('MKT3750', 'MKT', 'Multicultural Marketing', 'N/A', 3, 4, NULL, NULL, 'MKT', NULL, NULL),
('MKT3810', 'MKT', 'Electronic Marketing', 'This course is designed to introduce students to the cutting edge technologies that are necessary to perform effectively as marketing professionals. The primary focus of this course is marketing uses of the worldwide network of computers known as the Internet including Web site design and maintenance, marketing research, email, and advertising. The course will also provide limited coverage of other electronic technologies including fax-on-demand, CD-ROM, and database marketing.', 3, 4, NULL, NULL, 'MKT', NULL, NULL),
('MKT3910', 'MKT', 'New Product Development', '', 3, 4, NULL, NULL, 'MKT', NULL, NULL),
('MKT3980', 'MKT', 'Internship', '', 3, 4, NULL, NULL, 'MKT', NULL, NULL),
('MKT4110', 'MKT', 'Reputation and Brand Management', 'This course examines the difference between reputation and brand management, demonstrates how marketing activities impact both the reputation of an organization and the power of its brand, and examines the strategic importance of effectively managing both.', 3, 4, NULL, NULL, 'MKT', NULL, NULL),
('MKT4250', 'MKT', 'Advanced Selling', 'This course builds on the skills developed in MKT 3250 and focuses on relationship selling with an emphasis on value-added selling, major account selling, team selling, negotiating, proposal writing, and business-to-business selling. Complex selling situations that involve multiple decision makers will be evaluated.', 3, 4, NULL, NULL, 'MKT', NULL, NULL),
('MKT4520', 'MKT', 'Seminar in Marketing Management', NULL, 3, 0, NULL, NULL, 'MKT', NULL, NULL),
('MKT4560', 'MKT', 'Marketing Strategy', 'This culminating course for all marketing majors emphasizes the case approach to the study of marketing problems. Problem areas to be studied include market and profitability analysis, marketing planning, strategy, and control.', 3, 4, NULL, NULL, 'MKT', NULL, NULL),
('MLT1010', 'MLT', 'Any Multicultural Course satified within major', '', 3, 1, 'CIS', 'MGT', 'MKT', 'ACC', 'FIN'),
('MTH1310', 'MTH', 'Finite Math for the Mangement and Social Sciences', 'This course stresses the application of mathematics to business and the social sciences. The topics covered include evaluation and graphing of functions, the geometry of straight lines, operations on matrices, solving systems of equations, and an introduction to set theory and probability theory. All sections will integrate the use of a graphing calculator into the course. A specific calculator will be required.', 3, 1, 'CIS', 'MGT', 'MKT', 'ACC', 'FIN'),
('MTH1320', 'MTH', 'Calculus for the Management and Social Sciences', 'This course is an introduction to calculus emphasizing applications in business and social sciences. Topics include differentiation, partial differentiation, indefinite and definite integration. All sections will integrate the use of a graphing calculator into the course. A specific calculator will be required.', 3, 1, 'CIS', 'MGT', 'MKT', 'ACC', 'FIN'),
('NAT1010', 'NAT', 'Any natural science course', '', 3, 0, 'CIS', 'MGT', 'MKT', 'ACC', 'FIN'),
('NAT1020', 'NAT', 'Any natural science course', '', 3, 0, 'CIS', 'MGT', 'MKT', 'ACC', 'FIN'),
('PHI1030', 'PHI', 'Ethics', 'This is a first philosophy course designed to introduce students to basic philosophical issues, primarily in the areas of moral and social philosophy. This course covers fundamental questions such as, for example: “What is the relation, if any, between morality and religion?” or “How should society be best organized?” Important cultural achievements, in the form of original and complete works, will be emphasized.', 3, 1, 'CIS', 'MGT', 'MKT', 'ACC', 'FIN'),
('PHI3360', 'PHI', 'Business Ethics', 'This course investigates the value conflicts that may arise from current circumstances in the modern business world. Designed to assist students in becoming effective business professionals, it examines four main areas of current practice in some detail: the responsibility of business in society, corporate governance, ethical decision-making, and ethical leadership. Interpretive, critical and analytical skills will be emphasized and cultivated.', 3, 3, 'CIS', 'MGT', 'MKT', 'ACC', 'FIN'),
('PSC1010', 'PSC', 'American National Government', 'This course introduces the basic principles, institutions, actors, and processes of American National Government. It allows the student to recognize the U.S. Constitutions design and its lasting influence. It also presents some of the changing social, economic, and political variables that create powerfully new conceptions of the structure, purpose, and flow of American politics.', 3, 1, 'CIS', 'MGT', 'MKT', 'ACC', 'FIN'),
('PSC1020', 'PSC', 'Politcal Systems and Ideas', 'This course examines political societies and explores the basic ideas, structures, and issues of modern political systems.', 3, 1, 'CIS', 'MGT', 'MKT', 'ACC', 'FIN'),
('PSY1001', 'PSY', 'Intro to Psychology', 'This course presents basic concepts, principles, and methods involved in the scientific study and understanding of human behavior. Attention is given to organic bases of human and other animal behavior with emphasis on the scientific method, behavioral neuroscience, sensation and perception, learning, cognition, personality, mental health, social behavior, and developmental processes. This course is required for all psychology majors and minors.', 3, 1, 'CIS', 'MGT', 'MKT', 'ACC', 'FIN'),
('SOC1010', 'SOC', 'Intro to Sociology', 'This course facilitates the development of a sociological perspective as it applies to understanding the social forces that shape peoples lives, interests, and personalities. The emphasis is on the scientific study of people in groups, the importance of culture, the processes of socialization, social control and social conflict, and the major institutions of society.', 3, 1, 'CIS', 'MGT', 'MKT', 'ACC', 'FIN'),
('SPE1010', 'SPE', 'Public Speaking', 'Oral Communication This course integrates both the theory and practical skills of topic research, composition, delivery, and criticism of public speaking. Skill development includes effective public presentation strategies and audience analysis. Students develop crit ical listening skills by evaluating their own public speaking style as well as the effectiveness of their peers and professional speakers. This course builds public speaking confidence, and introduces the student to the power of public rhetoric in social and professional context.', 3, 1, 'CIS', 'MGT', 'MKT', 'ACC', 'FIN');

-- --------------------------------------------------------

--
-- Table structure for table `CoursesTaken`
--

CREATE TABLE `CoursesTaken` (
  `student_id` varchar(9) NOT NULL,
  `course_id` varchar(7) NOT NULL,
  PRIMARY KEY (`student_id`,`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `CoursesTaken`
--

INSERT INTO `CoursesTaken` (`student_id`, `course_id`) VALUES
('900544740', 'ACC2020'),
('900544740', 'CIS1010'),
('900544740', 'CIS2010'),
('900544740', 'CIS3300'),
('900544740', 'CIS3320'),
('900544740', 'ENG1010'),
('900544740', 'ENG1020'),
('900544740', 'HIS1010'),
('900544740', 'MGT3020'),
('900544740', 'MGT3220'),
('900544740', 'MGT3230'),
('900544740', 'MGT3240'),
('900544740', 'MGT3530'),
('900544740', 'MLT1010'),
('900544740', 'MTH1310'),
('900544740', 'MTH1320'),
('900544740', 'NAT1020'),
('900544740', 'PHI3360'),
('900544740', 'SPE1010');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `department_id` varchar(3) NOT NULL,
  `department_name` varchar(255) NOT NULL,
  PRIMARY KEY (`department_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`department_id`, `department_name`) VALUES
('ACC', 'Accounting'),
('ART', 'Arts and Humanities'),
('CIS', 'Computer Information Systems'),
('ECO', 'Economics'),
('ELC', 'Electives'),
('ENG', 'English'),
('FIN', 'Finance'),
('GLB', 'Global Diversity Course'),
('HIS', 'History'),
('MGT', 'Management'),
('MKT', 'Marketing'),
('MLT', 'Multicultural Course'),
('MTH', 'Math'),
('NAT', 'Natural Science Courses'),
('PHI', 'Physics'),
('PSC', 'Political Science'),
('PSY', 'Psychology'),
('SOC', 'Sociology'),
('SPE', 'Speach');

-- --------------------------------------------------------

--
-- Table structure for table `PreReq`
--

CREATE TABLE `PreReq` (
  `table_key` int(11) NOT NULL AUTO_INCREMENT,
  `pre_req_id` varchar(7) NOT NULL,
  `course_id` varchar(7) NOT NULL,
  PRIMARY KEY (`table_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=85 ;

--
-- Dumping data for table `PreReq`
--

INSERT INTO `PreReq` (`table_key`, `pre_req_id`, `course_id`) VALUES
(1, 'ENG1020', 'ENG1010'),
(2, 'MTH1320', 'MTH1310'),
(3, 'ECO2010', 'ENG1010'),
(4, 'ECO2010', 'ENG1020'),
(5, 'ECO2010', 'MTH1310'),
(6, 'ECO2020', 'ENG1010'),
(7, 'ECO2020', 'ENG1020'),
(8, 'ECO2020', 'MTH1310'),
(9, 'ACC2010', 'ENG1010'),
(10, 'ACC2010', 'ENG1020'),
(11, 'ACC2010', 'MTH1310'),
(12, 'ACC2010', 'SPE1010'),
(13, 'ACC2020', 'ACC2010'),
(14, 'ACC2020', 'ENG1010'),
(15, 'ACC2020', 'ENG1020'),
(16, 'ACC2020', 'MTH1310'),
(17, 'ACC2020', 'SPE1010'),
(18, 'CIS2010', 'CIS1010'),
(19, 'CIS2010', 'ENG1010'),
(20, 'CIS2010', 'ENG1020'),
(21, 'CIS2010', 'MTH1310'),
(22, 'CIS2010', 'SPE1010'),
(23, 'MGT2210', 'ENG1010'),
(24, 'MGT2210', 'ENG1020'),
(25, 'MGT2210', 'MTH1310'),
(26, 'MGT2210', 'SPE1010'),
(27, 'MKT2040', 'ENG1010'),
(28, 'MKT2040', 'ENG1020'),
(29, 'MKT2040', 'MTH1310'),
(30, 'MKT2040', 'SPE1010'),
(31, 'CIS3300', 'MTH1320'),
(32, 'CIS3300', 'CIS2010'),
(33, 'CIS3300', 'ENG1010'),
(34, 'CIS3300', 'ENG1020'),
(35, 'CIS3300', 'MTH1310'),
(36, 'CIS3300', 'SPE1010'),
(37, 'CIS3320', 'CIS3300'),
(38, 'CIS3320', 'ENG1010'),
(39, 'CIS3320', 'ENG1020'),
(40, 'CIS3320', 'MTH1310'),
(41, 'CIS3320', 'SPE1010'),
(42, 'FIN3300', 'ACC2010'),
(43, 'FIN3300', 'ECO2010'),
(44, 'FIN3300', 'ECO2020'),
(45, 'FIN3300', 'MTH1320'),
(46, 'FIN3300', 'ENG1010'),
(47, 'FIN3300', 'ENG1020'),
(48, 'FIN3300', 'MTH1310'),
(49, 'FIN3300', 'SPE1010'),
(50, 'MGT3000', 'ENG1010'),
(51, 'MGT3000', 'ENG1020'),
(52, 'MGT3000', 'MTH1310'),
(53, 'MGT3000', 'SPE1010'),
(54, 'MKT3000', 'ENG1010'),
(55, 'MKT3000', 'ENG1020'),
(56, 'MKT3000', 'MTH1310'),
(57, 'MKT3000', 'SPE1010'),
(58, 'MGT4950', 'ENG1010'),
(59, 'MGT4950', 'ENG1020'),
(60, 'MGT4950', 'MTH1310'),
(61, 'MGT4950', 'SPE1010'),
(62, 'MGT4950', 'HIS1010'),
(63, 'MGT4950', 'PHI1030'),
(64, 'MGT4950', 'PHI3360'),
(65, 'MGT4950', 'ECO2010'),
(66, 'MGT4950', 'ECO2020'),
(67, 'MGT4950', 'NAT1010'),
(68, 'MGT4950', 'NAT1020'),
(69, 'MGT4950', 'PSY1001'),
(70, 'MGT4950', 'SOC1010'),
(71, 'MGT4950', 'PSC1010'),
(72, 'MGT4950', 'PSC1020'),
(73, 'MGT4950', 'MTH1320'),
(74, 'MGT4950', 'ACC2010'),
(75, 'MGT4950', 'ACC2020'),
(76, 'MGT4950', 'CIS2010'),
(77, 'MGT4950', 'CIS1010'),
(78, 'MGT4950', 'CIS3300'),
(79, 'MGT4950', 'MGT2210'),
(80, 'MGT4950', 'MKT2040'),
(81, 'MGT4950', 'CIS3320'),
(82, 'MGT4950', 'FIN3300'),
(83, 'MGT4950', 'MGT3000'),
(84, 'MGT4950', 'MKT3000');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` varchar(9) NOT NULL,
  `department_id` varchar(3) NOT NULL,
  `student_lname` varchar(100) NOT NULL,
  `student_fname` varchar(100) NOT NULL,
  `student_phone` varchar(10) NOT NULL,
  `student_email` varchar(100) NOT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
