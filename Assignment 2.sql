-- Tạo database testing_system
DROP DATABASE IF EXISTS testing_system;

CREATE DATABASE IF NOT EXISTS testing_system;

USE testing_system;

-- TABLE 1:  department

CREATE TABLE department (
DepartmentID TINYINT PRIMARY KEY AUTO_INCREMENT,
DepartmentName VARCHAR(200) NOT NULL UNIQUE
);

-- TABLE 2: Position

CREATE TABLE position (
PositionID TINYINT PRIMARY KEY AUTO_INCREMENT,
PositionName ENUM ('Dev', 'Test', 'Scrum Master', 'PM')
);

-- TABLE 3:  Account

CREATE TABLE `account` (
AccountID TINYINT PRIMARY KEY AUTO_INCREMENT,
Email VARCHAR(200),
Username VARCHAR(50),
FullName VARCHAR(200),
DepartmentID TINYINT DEFAULT NULL,
PositionID TINYINT DEFAULT NULL,
CreateDate DATE,
CONSTRAINT account_department_fk FOREIGN KEY (DepartmentID) REFERENCES department(DepartmentID) ON DELETE SET NULL ON UPDATE CASCADE,
CONSTRAINT account_position_fk FOREIGN KEY (PositionID) REFERENCES `position`(PositionID) ON DELETE SET NULL ON UPDATE CASCADE
);

-- TABLE 4:  Group

CREATE TABLE `group` (
GroupID TINYINT PRIMARY KEY AUTO_INCREMENT,
GroupName VARCHAR(100),
CreatorID SMALLINT,
CreateDate DATE
);

-- TABLE 5: GroupAccount

CREATE TABLE groupaccount (
GroupID TINYINT DEFAULT NULL,
AccountID TINYINT DEFAULT NULL,
JoinDate DATETIME DEFAULT NOW(),
CONSTRAINT groupaccount_group_fk FOREIGN KEY (GroupID) REFERENCES `group`(GroupID) ON DELETE SET NULL ON UPDATE CASCADE,
CONSTRAINT groupaccount_account_fk FOREIGN KEY (AccountID) REFERENCES `account`(AccountID) ON DELETE SET NULL ON UPDATE CASCADE
);

-- TABLE 6: TYPEQUESTION

CREATE TABLE typequestion (
TypeID TINYINT PRIMARY KEY AUTO_INCREMENT,
TypeName ENUM ('Essay', 'Multiple-Choice')
);

-- Table 7: CategoryQuestion

CREATE TABLE categoryquestion (
CategoryID TINYINT PRIMARY KEY AUTO_INCREMENT,
CategoryName ENUM ('Java', 'SQL', '.NET', 'Ruby', 'Python', 'NodeJS', 'HTML', 'CSS', 'JavaScript')
);

-- Table 8: Question

CREATE TABLE question (
QuestionID TINYINT PRIMARY KEY AUTO_INCREMENT,
Content VARCHAR(200),
CategoryID TINYINT DEFAULT NULL,
TypeID TINYINT DEFAULT NULL,
CreatorID SMALLINT,
CreateDate DATETIME DEFAULT NOW(),
CONSTRAINT question_categoryquestion_fk FOREIGN KEY (CategoryID) REFERENCES categoryquestion(CategoryID) ON DELETE SET NULL ON UPDATE CASCADE,
CONSTRAINT question_typequestion_fk FOREIGN KEY (TypeID) REFERENCES typequestion(TypeID) ON DELETE SET NULL ON UPDATE CASCADE
);

-- Table 9: Answer

CREATE TABLE answer (
AnswerID TINYINT PRIMARY KEY AUTO_INCREMENT,
Content VARCHAR(200),
QuestionID TINYINT DEFAULT NULL,
isCorrect BIT,
CONSTRAINT answer_question_fk FOREIGN KEY (QuestionID) REFERENCES question(QuestionID) ON DELETE SET NULL ON UPDATE CASCADE
);

-- Table 10: Exam

CREATE TABLE exam (
ExamID TINYINT PRIMARY KEY AUTO_INCREMENT,
`Code` VARCHAR(10),
Title VARCHAR(100),
CategoryID TINYINT DEFAULT NULL,
Duration TINYINT,
CreatorID SMALLINT DEFAULT NULL,
CreateDate DATETIME DEFAULT NOW(),
CONSTRAINT exam_categoryquestion_fk FOREIGN KEY (CategoryID) REFERENCES categoryquestion(CategoryID) ON DELETE SET NULL ON UPDATE CASCADE
);

-- Table 11: ExamQuestion

CREATE TABLE examquestion (
ExamID TINYINT,
QuestionID TINYINT,
CONSTRAINT examquestion_exam_fk FOREIGN KEY (ExamID) REFERENCES exam(ExamID) ON DELETE SET NULL ON UPDATE CASCADE,
CONSTRAINT examquestion_question_fk FOREIGN KEY (QuestionID) REFERENCES question(QuestionID) ON DELETE SET NULL ON UPDATE CASCADE
);
