
	DROP DATABASE IF EXISTS VHomeClean;
	GO
	CREATE DATABASE VHomeClean;
	GO
	USE VHomeClean

--Tạo Table
CREATE TABLE CateService
(
  CateID INT NOT NULL,
  CateName NVARCHAR(255) NOT NULL,
  PRIMARY KEY (CateID)
);

CREATE TABLE Service
(
  ServiceID NVARCHAR(20) NOT NULL,
  ServiceName NVARCHAR(255) NOT NULL,
  Price MONEY NOT NULL,
  ServiceDetail NVARCHAR(MAX) NOT NULL,
  CateID INT NOT NULL,
  Image NVARCHAR(255) NOT NULL,
  Status BIT NOT NULL,
  PRIMARY KEY (ServiceID),
  FOREIGN KEY (CateID) REFERENCES CateService(CateID)
);


CREATE TABLE BlogCate
(
  BlogCateID INT NOT NULL PRIMARY KEY,
  CateName INT NOT NULL,
);

CREATE TABLE Blog
(
  BlogID NVARCHAR(20) NOT NULL,
  CommentID INT NOT NULL,
  Content NVARCHAR(MAX) NOT NULL,
  Author NVARCHAR(100) NOT NULL,
  Title NVARCHAR(255) NOT NULL,
  BlogCateID INT NOT NULL,
  Time INT NOT NULL,
  Image NVARCHAR(255) NOT NULL,
  PRIMARY KEY (BlogID),
  FOREIGN KEY (BlogCateID) REFERENCES BlogCate(BlogCateID)
);

CREATE TABLE RoleAccount
(
  RoleID INT NOT NULL,
  RoleName NVARCHAR(255) NOT NULL,
  PRIMARY KEY (RoleID)
);


CREATE TABLE Account
(
  AccountID NVARCHAR(20) NOT NULL,
  Email NVARCHAR(255) NOT NULL,
  Password NVARCHAR(255) NOT NULL,
  FullName NVARCHAR(255) NOT NULL,
  Address NVARCHAR(255) NOT NULL,
  Phone NVARCHAR(20) NOT NULL,
  RoleID INT NOT NULL,
  Status BIT NOT NULL,
  Image NVARCHAR(255) NOT NULL,
  Salary MONEY,
  PRIMARY KEY (AccountID),
  FOREIGN KEY (RoleID) REFERENCES RoleAccount(RoleID)
);

CREATE TABLE Booking
(
  BookingID INT IDENTITY(1,1) NOT NULL,
  AccountID NVARCHAR(20) NOT NULL,
  BookingStatus BIT NOT NULL,
  StaffID NVARCHAR(20),
  ServiceID NVARCHAR(20) NOT NULL,
  PRIMARY KEY (BookingID),
  FOREIGN KEY (AccountID) REFERENCES Account(AccountID),
  FOREIGN KEY (StaffID) REFERENCES Account(AccountID),
  FOREIGN KEY (ServiceID) REFERENCES Service(ServiceID),
);

CREATE TABLE BookingDetail
(
  BookingDetail_ID INT IDENTITY(1,1) NOT NULL, 
  BookingID INT NOT NULL,
  TotalPrice MONEY NOT NULL,
  BookingDate DATE NOT NULL,
  BookingAddress NVARCHAR(255) NOT NULL,
  PRIMARY KEY (BookingDetail_ID),
  FOREIGN KEY (BookingID) REFERENCES Booking(BookingID),
);


CREATE TABLE Feedback
(
  FeedbackID INT NOT NULL IDENTITY(1,1),
  Date DATE NOT NULL,
  Feedback_Text NVARCHAR(MAX) NOT NULL,
  Rating INT NOT NULL,
  AccountID NVARCHAR(20) NOT NULL,
  BookingID INT NOT NULL,
  PRIMARY KEY (FeedbackID),
  FOREIGN KEY (AccountID) REFERENCES Account(AccountID),
  FOREIGN KEY (BookingID) REFERENCES Booking(BookingID)
);

CREATE TABLE Comment
(
  CommentID INT NOT NULL IDENTITY(1,1),
  Message NVARCHAR(MAX) NOT NULL,
  Time DATE NOT NULL,
  AccountID NVARCHAR(20) NOT NULL,
  BlogID NVARCHAR(20) NOT NULL,
  PRIMARY KEY (CommentID),
  FOREIGN KEY (AccountID) REFERENCES Account(AccountID),
  FOREIGN KEY (BlogID) REFERENCES Blog(BlogID)
)

----------------------------------------------Tạo xong table---------------------------------------------------------------




----------------------------------Tạo các trigger để tự động generate ra ID------------------------------------------------------

-- Tạo trigger để tự động tạo giá trị cho ServiceID
DROP TRIGGER IF EXISTS AutoGenerateServiceID 
GO
CREATE TRIGGER AutoGenerateServiceID
ON Service
INSTEAD OF INSERT
AS
BEGIN
  -- Tạo biến để lưu trữ giá trị "SE"
  DECLARE @Prefix NVARCHAR(2) = 'SE';

  -- Tìm giá trị lớn nhất của ServiceID trong bảng
  DECLARE @MaxID INT = ISNULL((SELECT MAX(RIGHT(ServiceID, LEN(ServiceID) - LEN(@Prefix))) FROM Service), 0);

  -- Lặp qua các hàng được chèn vào bảng Service
  INSERT INTO Service (ServiceID, ServiceName, Price, ServiceDetail, CateID, Image, Status)
  SELECT @Prefix + RIGHT('00' + CAST(@MaxID + ROW_NUMBER() OVER (ORDER BY (SELECT 1)) AS NVARCHAR(2)), 2),
         ServiceName,
         Price,
         ServiceDetail,
         CateID,
         Image,
         Status
  FROM inserted;
END;

-- Tạo trigger để tự động tạo giá trị cho AccountID
DROP TRIGGER IF EXISTS AutoGenerateAccountID 
GO
CREATE TRIGGER AutoGenerateAccountID
ON Account
INSTEAD OF INSERT
AS
BEGIN
  -- Tạo biến để lưu trữ giá trị "AC"
  DECLARE @Prefix NVARCHAR(2) = 'AC';

  -- Tìm giá trị lớn nhất của AccountID trong bảng
  DECLARE @MaxID INT = ISNULL((SELECT MAX(RIGHT(AccountID, LEN(AccountID) - LEN(@Prefix))) FROM Account), 0);

  -- Lặp qua các hàng được chèn vào bảng Account
  INSERT INTO Account (AccountID, Email, Password, FullName, Address, Phone, RoleID, Status, Image, Salary)
  SELECT @Prefix + RIGHT('0000' + CAST(@MaxID + ROW_NUMBER() OVER (ORDER BY (SELECT 1)) AS NVARCHAR(4)), 4),
         Email,
         Password,
         FullName,
         Address,
         Phone,
         RoleID,
         Status,
         Image,
         Salary
  FROM inserted;
END;

---------------------------------------------------------------------------------------------------------------------


-----------------------INSERT DATA TO TABLE(NHỚ INSERT DỮ LIỆU THEO THỨ TỰ BẢNG ĐƯỢC TẠO Ở CODE TRÊN) --------------------------------------------------






