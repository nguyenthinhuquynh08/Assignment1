DROP DATABASE IF EXISTS fresher_training_management;

CREATE DATABASE IF NOT EXISTS fresher_training_management;

USE fresher_training_management;

/*CREATE TABLE*/
CREATE TABLE trainee(
TraineeID INT PRIMARY KEY AUTO_INCREMENT,
Full_Name VARCHAR(50) NOT NULL,
Birth_Date DATE NOT NULL,
Gender ENUM ("male", "female", "unknow"),
ET_IQ TINYINT CHECK(ET_IQ>=0 and ET_IQ<=20),
ET_Gmath TINYINT CHECK(ET_Gmath>=0 and ET_Gmath<=20),
ET_English TINYINT CHECK (ET_English>=0 and ET_English<=50),
Training_Class VARCHAR(50) NOT NULL,
Evaluation_Notes VARCHAR (200)
);

-- Thêm cột VTI_Account vào bảng
ALTER TABLE trainee ADD VTI_Account VARCHAR(50) NOT NULL UNIQUE;