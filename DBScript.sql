USE master;
GO

-- Xóa database nếu tồn tại
IF EXISTS (SELECT * FROM sys.databases WHERE name = 'VHomeClean')
BEGIN
    ALTER DATABASE VHomeClean SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE VHomeClean;
END
GO

-- Tạo database VHomeClean
CREATE DATABASE VHomeClean;
GO

USE VHomeClean;
GO

-- Tạo bảng CateService
CREATE TABLE CateService
(
  CateID INT NOT NULL,
  CateName NVARCHAR(255) NOT NULL,
  PRIMARY KEY (CateID)
);
GO

-- Tạo bảng Service
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
GO

-- Tạo bảng BlogCate
CREATE TABLE BlogCate
(
  BlogCateID INT NOT NULL PRIMARY KEY,
  CateName NVARCHAR(255) NOT NULL
);
GO

-- Tạo bảng Blog
CREATE TABLE Blog
(
  BlogID NVARCHAR(20) NOT NULL,
  CommentID INT NOT NULL,
  Content NVARCHAR(MAX) NOT NULL,
  Author NVARCHAR(100) NOT NULL,
  Title NVARCHAR(255) NOT NULL,
  BlogCateID INT NOT NULL,
  Time DATETIME NOT NULL,
  Image NVARCHAR(255) NOT NULL,
  PRIMARY KEY (BlogID),
  FOREIGN KEY (BlogCateID) REFERENCES BlogCate(BlogCateID)
);
GO

-- Tạo bảng RoleAccount
CREATE TABLE RoleAccount
(
  RoleID INT NOT NULL,
  RoleName NVARCHAR(255) NOT NULL,
  PRIMARY KEY (RoleID)
);
GO

-- Tạo bảng Account
CREATE TABLE Account
(
  AccountID NVARCHAR(20) NOT NULL,
  Email NVARCHAR(255) NOT NULL,
  Password NVARCHAR(255) NOT NULL,
  FullName NVARCHAR(255) NOT NULL,
  Address NVARCHAR(255) NOT NULL,
  Phone NVARCHAR(20) NOT NULL,
  RoleID INT NOT NULL,
  Gender NVARCHAR(20) NOT NULL,
  DateOfBirth DATE NOT NULL,
  Status BIT NOT NULL,
  Image NVARCHAR(MAX) NOT NULL,
  Salary MONEY,
  PRIMARY KEY (AccountID),
  FOREIGN KEY (RoleID) REFERENCES RoleAccount(RoleID)
);
GO

-- Tạo bảng Booking
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
  FOREIGN KEY (ServiceID) REFERENCES Service(ServiceID)
);
GO

-- Tạo bảng BookingDetail
CREATE TABLE BookingDetail
(
  BookingDetail_ID INT IDENTITY(1,1) NOT NULL, 
  BookingID INT NOT NULL,
  TotalPrice MONEY,
  BookingDate DATE NOT NULL,
  BookingAddress NVARCHAR(255) NOT NULL,
  PRIMARY KEY (BookingDetail_ID),
  FOREIGN KEY (BookingID) REFERENCES Booking(BookingID)
);
GO

-- Tạo bảng Feedback
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
GO

-- Tạo bảng Comment
CREATE TABLE Comment
(
  CommentID INT NOT NULL IDENTITY(1,1),
  Message NVARCHAR(MAX) NOT NULL,
  Time DATETIME NOT NULL,
  AccountID NVARCHAR(20) NOT NULL,
  BlogID NVARCHAR(20) NOT NULL,
  PRIMARY KEY (CommentID),
  FOREIGN KEY (AccountID) REFERENCES Account(AccountID),
  FOREIGN KEY (BlogID) REFERENCES Blog(BlogID)
);
GO

-- Tạo trigger AutoGenerateAccountID
DROP TRIGGER IF EXISTS AutoGenerateAccountID;
GO
CREATE TRIGGER AutoGenerateAccountID
ON Account
INSTEAD OF INSERT
AS
BEGIN
  DECLARE @Prefix NVARCHAR(2) = 'AC';

  DECLARE @MaxID INT = ISNULL((SELECT MAX(CAST(RIGHT(AccountID, LEN(AccountID) - LEN(@Prefix)) AS INT)) FROM Account), 0);

  INSERT INTO Account (AccountID, Email, Password, FullName, Address, Phone, RoleID, Gender, DateOfBirth, Status, Image, Salary)
  SELECT @Prefix + RIGHT('0000' + CAST(@MaxID + ROW_NUMBER() OVER (ORDER BY (SELECT 1)) AS NVARCHAR(4)), 4),
         Email,
         Password,
         FullName,
         Address,
         Phone,
         RoleID,
         Gender,
         DateOfBirth,
         Status,
         Image,
         Salary
  FROM inserted;
END;
GO

-- Tạo trigger AutoGenerateServiceID
DROP TRIGGER IF EXISTS AutoGenerateServiceID;
GO
CREATE TRIGGER AutoGenerateServiceID
ON Service
INSTEAD OF INSERT
AS
BEGIN
  DECLARE @Prefix NVARCHAR(2) = 'SE';

  DECLARE @MaxID INT = ISNULL((SELECT MAX(CAST(RIGHT(ServiceID, LEN(ServiceID) - LEN(@Prefix)) AS INT)) FROM Service), 0);

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
GO

----------------------------------------------------------------------------------------------------------------------------------
GO
INSERT [dbo].[RoleAccount] ([RoleID], [RoleName]) VALUES (1, N'ADMIN')
INSERT [dbo].[RoleAccount] ([RoleID], [RoleName]) VALUES (2, N'STAFF')
INSERT [dbo].[RoleAccount] ([RoleID], [RoleName]) VALUES (3, N'MANAGER')
INSERT [dbo].[RoleAccount] ([RoleID], [RoleName]) VALUES (4, N'CUSTOMER')
GO
INSERT INTO Account (Email, Password, FullName, Address, Phone, RoleID, Gender, DateOfBirth, Status, Image, Salary)
VALUES ('hieublockchain2002@gmail.com', '1', 'Doan Thanh Hieu', 'Binh Duong', '0987654321', 1, 'Male', '2000-02-12', 1, 'image.jpg', 6000888.00),
	   ('trungkiennguyen0310@gmail.com','1','Nguyễn Trung Kiên','32/3, Gia Tan 1, Thong Nhat, Dong Nai','0974102437',1,'Male','2002-10-03',1,'/img/user.jpg',0.0000);

GO
INSERT [dbo].[CateService] ([CateID], [CateName]) VALUES (1, N'Dịch vụ vệ sinh')
INSERT [dbo].[CateService] ([CateID], [CateName]) VALUES (2, N'Dịch vụ sửa chữa')
INSERT [dbo].[CateService] ([CateID], [CateName]) VALUES (3, N'Dịch vụ giúp việc')
INSERT [dbo].[CateService] ([CateID], [CateName]) VALUES (4, N'Dịch vụ chăm sóc')
GO
INSERT [dbo].[Service] ([ServiceID], [ServiceName], [Price], [ServiceDetail], [CateID], [Image], [Status]) VALUES (N'SE01', N'Tổng vệ sinh ', 500000.0000, N'8000đ/1m2', 1, N'hehe', 1)
INSERT [dbo].[Service] ([ServiceID], [ServiceName], [Price], [ServiceDetail], [CateID], [Image], [Status]) VALUES (N'SE02', N'Vệ sinh phòng', 100000.0000, N'100000đ/phòng', 1, N'hehe', 1)
INSERT [dbo].[Service] ([ServiceID], [ServiceName], [Price], [ServiceDetail], [CateID], [Image], [Status]) VALUES (N'SE03', N'Vệ sinh sofa, rèm, nệm, kính', 300000.0000, N'báo giá trực tiếp', 1, N'hehe', 1)
INSERT [dbo].[Service] ([ServiceID], [ServiceName], [Price], [ServiceDetail], [CateID], [Image], [Status]) VALUES (N'SE04', N'Vệ sinh máy lạnh', 200000.0000, N'Máy lạnh treo tường: 240000đ, Máy lạnh tủ đứng: 300000đ, Máy lạnh âm trần: 650000(giá cả sẽ tùy vào HP)', 1, N'hehe', 1)
INSERT [dbo].[Service] ([ServiceID], [ServiceName], [Price], [ServiceDetail], [CateID], [Image], [Status]) VALUES (N'SE05', N'Sửa chữa đồ điện', 100000.0000, N'Giá cả phụ thuộc vào loại thiết bị và vấn đề sửa chữa', 2, N'hihi', 1)
INSERT [dbo].[Service] ([ServiceID], [ServiceName], [Price], [ServiceDetail], [CateID], [Image], [Status]) VALUES (N'SE06', N'Sửa chữa nước', 100000.0000, N'Giá cả phụ thuộc vào loại thiết bị và vấn đề sửa chữa', 2, N'hihih', 1)
INSERT [dbo].[Service] ([ServiceID], [ServiceName], [Price], [ServiceDetail], [CateID], [Image], [Status]) VALUES (N'SE07', N'Sửa chữa thiết bị gia dụng', 100000.0000, N'Giá cả phụ thuộc vào loại thiết bị và vấn đề sửa chữa', 2, N'hihi', 1)
INSERT [dbo].[Service] ([ServiceID], [ServiceName], [Price], [ServiceDetail], [CateID], [Image], [Status]) VALUES (N'SE08', N'Sửa chữa thiết bị điện tử', 100000.0000, N'Giá cả phụ thuộc vào loại thiết bị và vấn đề sửa chữa', 2, N'hihi', 1)
INSERT [dbo].[Service] ([ServiceID], [ServiceName], [Price], [ServiceDetail], [CateID], [Image], [Status]) VALUES (N'SE09', N'Giúp việc theo giờ', 200000.0000, N'Giá cả phụ thuộc vào thời điểm và diện tích căn hộ', 3, N'hoho', 1)
INSERT [dbo].[Service] ([ServiceID], [ServiceName], [Price], [ServiceDetail], [CateID], [Image], [Status]) VALUES (N'SE10', N'Đi chợ hộ', 50000.0000, N'Phí vận chuyển cho một đơn hàng trong bán kính 5km là 15000', 3, N'hoho', 1)
INSERT [dbo].[Service] ([ServiceID], [ServiceName], [Price], [ServiceDetail], [CateID], [Image], [Status]) VALUES (N'SE11', N'Nấu ăn hộ', 150000.0000, N'Giá cả phụ thuộc vào số lượng món', 3, N'hoho', 1)
INSERT [dbo].[Service] ([ServiceID], [ServiceName], [Price], [ServiceDetail], [CateID], [Image], [Status]) VALUES (N'SE12', N'Chăm sóc người già', 250000.0000, N'Giá cả phụ thuộc vào số giờ làm', 4, N'haha', 1)
INSERT [dbo].[Service] ([ServiceID], [ServiceName], [Price], [ServiceDetail], [CateID], [Image], [Status]) VALUES (N'SE13', N'Chăm sóc trẻ em', 300000.0000, N'Giá cả phụ thuộc vào số giờ làm', 4, N'haha', 1)
INSERT [dbo].[Service] ([ServiceID], [ServiceName], [Price], [ServiceDetail], [CateID], [Image], [Status]) VALUES (N'SE14', N'Chăm sóc người bệnh', 200000.0000, N'Giá cả phụ thuộc vào số giờ làm', 4, N'haha', 1)
GO