-- Testing_system_3
-- Question 1: Thêm ít nhất 10 record vào mỗi table
Use testing_system;

INSERT INTO department (DepartmentName)
VALUES                 ('Phong Ky Thuat 1'),
                       ('Phong Ky Thuat 2'),
                       ('Phong Dev 1'),
	                   ('Phong Dev 2'),
	                   ('Phong Sale'),
	                   ('Phong Marketing'),
	                   ('Phong Giam Doc'),
	                   ('Phong Tai Chinh'),
                       ('Phong Nhan Su'),
                       ('Phong Hanh Chính')
;

INSERT INTO `position` (PositionName)
VALUES                ('Dev'),
					  ('Dev'),
					  ('Dev'),
                      ('Dev'),
                      ('Test'),
                      ('Test'),
                      ('Scrum Master'),
                      ('Scrum Master'),
                      ('PM'),
                      ('PM')
;

INSERT INTO `account` (Email, Username, FullName, DepartmentID, PositionID, CreateDate)
VALUES     ('vti_account1@vtiacademy.com', 'account_vti1', 'Nguyễn Văn Tình', 1, 5, '2019-12-01'),
		   ('vti_account2@vtiacademy.com', 'account_vti2', 'Trịnh Hoài Linh', 2, 6,  '2020-12-01'),
		   ('vti_account3@vtiacademy.com', 'account_vti3', 'Nguyễn Văn Tân', 3, 2,  '2020-07-01'),
		   ('vti_account4@vtiacademy.com', 'account_vti4', 'Trần Hoài Tâm', 4, 3, '2019-09-01'),
		   ('vti_account5@vtiacademy.com', 'account_vti5', 'Phan Quốc Đạt', 5, 8, '2021-07-01'),
		   ('vti_account6@vtiacademy.com', 'account_vti6', 'Cao Thái Sơn', 6, 7, NOW()),
		   ('vti_account7@vtiacademy.com', 'account_vti7', 'Lê Thanh Nam', 7, 9, '2020-10-01'),
		   ('vti_account8@vtiacademy.com', 'account_vti8', 'Nguyễn Quỳnh Thư', 8, 7, '2019-04-01'),
		   ('vti_account9@vtiacademy.com', 'account_vti9', 'Trần Kim Tuyền', 3, 1, NOW()),
		   ('vti_account10@vtiacademy.com', 'account_vti10', 'Lê Tuấn Tài', 4, 4, '2019-10-01')
;

INSERT INTO `group` (GroupName, CreatorID, CreateDate)
VALUES     ('Nhom 1', '6', '2021-04-03'),
		   ('Nhom 2', '3', '2019-01-03'),
		   ('Nhom 3', '2', '2020-04-03'),
		   ('Nhom 4', '1', NOW()),
		   ('Nhom 5', '4', '2021-06-03'),
		   ('Nhom 6', '8', '2020-04-03'),
		   ('Nhom 7', '5', '2021-04-03'),
		   ('Nhom 8', '5', '2019-05-03'),
		   ('Nhom 9', '3', '2019-01-03'),
		   ('Nhom 10', '1', NOW())
;

INSERT INTO groupaccount (GroupID, AccountID, JoinDate)
VALUES     ('1', '1', '2021-06-01'),
		   ('2', '3', '2020-01-01'),
		   ('3', '2', NOW()),
		   ('7', '4', '2021-06-01'),
		   ('9', '1', '2022-04-15'),
		   ('4', '10', '2019-05-01'),
		   ('5', '1', '2021-06-01'),
		   ('8', '3', '2020-01-05'),
		   ('10', '4', '2021-07-01'),
		   ('6', '1', '2021-06-01'),
		   ('5', '2', '2021-06-01'),
		   ('4', '1', NOW())
;

INSERT INTO typequestion (TypeName)
VALUES ('Essay'),
       ('Multiple-Choice'),
       ('Multiple-Choice'),
       ('Essay'),
       ('Essay'),
       ('Essay'),
       ('Multiple-Choice'),
       ('Essay'),
       ('Multiple-Choice'),
       ('Essay')
;

INSERT INTO categoryquestion(CategoryName)
VALUES ('Java'),
       ('SQL'),
       ('.NET'),
       ('Ruby'),
       ('Python'),
       ('NodeJS'),
       ('HTML'),
       ('CSS'),
       ('JavaScript'),
       ('HTML')
;

INSERT INTO question (Content, CategoryID, TypeID, CreatorID, CreateDate)
VALUES     ('Câu hỏi SQL 1', 2, 2, 1, '2021-04-01'),
		   ('Câu hỏi SQL 2', 2, 4, 2, '2020-01-01'),
		   ('Câu hỏi JAVA 1', 1, 1, 3, '2019-07-01'),
		   ('Câu hỏi JAVA 2', 1, 7, 4, '2018-06-01'),
		   ('Câu hỏi HTML 1', 7, 9, 3, '2022-10-15'),
		   ('Câu hỏi HTML 2', 10, 1, 1, '2019-04-22'),
           ('Câu hỏi C++ 1', 8, 5, 2, '2022-05-15'),
           ('Câu hỏi JavaScrip 1', 1, 4, 3, '2022-08-10'),
            ('Câu hỏi Ruby 1', 6, 1, 2, '2020-08-15'),
           ('Câu hỏi Python 1', 5, 6, 4, NOW())
;

INSERT INTO answer (Content, QuestionID, isCorrect)
VALUES     ('Câu trả lời 1 - question SQL 1', 1, 1),
		   ('Câu trả lời 2 - question SQL 1', 1, 0),
		   ('Câu trả lời 3 - question SQL 1', 1, 0),
		   ('Câu trả lời 4 - question SQL 1', 1, 1),
		   ('Câu trả lời 5 - question SQL 2', 2, 0),
		   ('Câu trả lời 6 - question SQL 2', 2, 0),
		   ('Câu trả lời 7 - question SQL 2', 2, 0),
		   ('Câu trả lời 8 - question SQL 2', 2, 1),
		   ('Câu trả lời 9 - question JAVA 1', 3, 0),
		   ('Câu trả lời 10 - question JAVA 1', 3, 1)
;

INSERT INTO exam (`Code`, Title, CategoryID, Duration, CreatorID, CreateDate)
VALUES     ('MS_01', 'De thi 01', 1, 90, 1, '2022-01-02'),
		   ('MS_02', 'De thi 02', 7, 60, 5, '2022-04-15'),
		   ('MS_03', 'De thi 03', 2, 60, 9, NOW()),
		   ('MS_04', 'De thi 04', 10, 90, 1, '2022-12-12'),
		   ('MS_05', 'De thi 05', 8, 60, 2, NOW()),
		   ('MS_06', 'De thi 06', 2, 90, 2, '2023-01-31'),
		   ('MS_07', 'De thi 07', 1, 60, 1, '2020-09-27'),
           ('MS_08', 'De thi 08', 6, 60, 6, '2022-08-19'),
           ('MS_09', 'De thi 09', 3, 60, 2, '2021-05-06'),
           ('MS_10', 'De thi 10', 5, 90, 1, NOW())
;

INSERT INTO examquestion (ExamID, QuestionID)
VALUES     (1, 1),
		   (2, 1),
		   (3, 8),
		   (4, 1),
		   (5, 4),
		   (6, 2),
		   (7, 2),
		   (8, 5),
		   (9, 3),
           (10, 3)
;

-- Question 2: lấy ra tất cả các phòng ban

SELECT * FROM testing_system.department;

-- Question 3: Lấy ra ID của 'Phòng ban Sale'

SELECT DepartmentID
FROM testing_system.department
WHERE DepartmentName = 'Phong Sale'
;

-- Question 4: lấy ra thông tin account có full name dài nhất và sắp xếp chúng theo thứ tự giảm dần
-- Lấy ra tên có Fullname dài nhất
SELECT *
FROM testing_system.account
WHERE Length(Fullname) = (SELECT MAX(LENGTH(Fullname)) FROM testing_system.account)
;
-- Sắp xếp theo thứ tự giảm dần theo độ dài tên
 SELECT *
 FROM testing_system.account
 ORDER BY Length(FullName) DESC;
 
 -- Question 5: Lấy ra thông tin account có full name dài nhất và thuộc phòng ban có id= 3
 
 SELECT *
 FROM testing_system.account
WHERE Length(Fullname) = (SELECT MAX(LENGTH(Fullname)) FROM testing_system.account)
AND DepartmentID = 3
;

-- Question 6: lấy ra tên group đã tham gia trước ngày 20/12/2019

SELECT GroupName
FROM testing_system.group
WHERE CreateDate < '2019-12-20';

-- Question 7: Lấy ra ID của question có >= 4 câu trả lời

SELECT QuestionID, COUNT(QuestionID) As TotalAnswer
FROM testing_system.answer
GROUP BY QuestionID
HAVING TotalAnswer >= 4;

-- Question 8: Lấy ra các mã đề thi có thời gian thi >= 60 phút và được tạo trước ngày 20/12/2019

SELECT *
FROM testing_system.exam
WHERE Duration >= 60 AND CreateDate < '2019-12-20';

-- Question 9: Lấy ra 5 group được tạo gần đây nhất

SELECT *
FROM testing_system.group
ORDER BY CreateDate DESC;

SELECT *
FROM testing_system.group
WHERE GroupID IN (4, 10, 5, 1, 7);

-- Question 10: Đếm số nhân viên thuộc department có id = 2

SELECT COUNT(DepartmentID)
FROM testing_system.account
WHERE DepartmentID = 2;

-- Question 11: Lấy ra nhân viên có tên bắt đầu bằng chữ "D" và kết thúc bằng chữ "o"

SELECT *
FROM testing_system.account
WHERE FullName LIKE 'D%o';

-- Question 12: xóa tất cả các exam được tạo trước ngày 20/12/2019

DELETE FROM testing_system.exam
WHERE CreateDate <'2019-12-20' AND ExamID <> 0;

-- Question 13: xóa tất cả các question có nội dung bắt đầu bằng từ "câu hỏi"

DELETE FROM testing_system.question
WHERE Content LIKE 'Câu hỏi%' AND QuestionID <> 0;

-- Question 14: 14: update thông tin của account có id = 5 thành tên "Nguyễn Bá Lộc" và email thành loc.nguyenba@vti.com.vn

UPDATE testing_system.account
SET FullName = 'Nguyễn Bá Lộc', Email = 'loc.nguyenba@vti.com.vn'
WHERE AccountID = 5;

-- Question 15: update account có id = 5 sẽ thuộc group có id = 4

UPDATE testing_system.groupaccount
SET GroupID = 4
WHERE AccountID = 5;
