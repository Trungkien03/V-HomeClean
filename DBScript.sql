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
CREATE DATABASE VHomeClean
COLLATE Vietnamese_CI_AS;
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

CREATE TABLE Notification
(
	NotificationID INT IDENTITY(1,1) PRIMARY KEY,
	AccountID NVARCHAR(20) NOT NULL,
	Detail NVARCHAR(MAX) NOT NULL,
	Create_at DATETIME not null,
	Status bit NOT NULL
	FOREIGN KEY (AccountID) REFERENCES Account(AccountID)
)


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
  Title NVARCHAR(255) NOT NULL,
  SubTitle NVARCHAR(255),
  Content NVARCHAR(MAX) NOT NULL,
  AccountID NVARCHAR(20) NOT NULL,
  BlogCateID INT NOT NULL,
  Time DATETIME NOT NULL,
  Image NVARCHAR(255) NOT NULL,
  PRIMARY KEY (BlogID),
  FOREIGN KEY (AccountID) REFERENCES Account(AccountID),
  FOREIGN KEY (BlogCateID) REFERENCES BlogCate(BlogCateID)
);
GO

CREATE TABLE BlogRating
(
	AccountID NVARCHAR(20) NOT NULL,
	BlogID NVARCHAR(20) NOT NULL,
	Rating INT NOT NULL,
	FOREIGN KEY (AccountID) REFERENCES Account(AccountID),
	FOREIGN KEY (BlogID) REFERENCES Blog(BlogID)
)

GO

-- Tạo bảng Booking
CREATE TABLE Booking
(
  BookingID INT IDENTITY(1,1) NOT NULL,
  AccountID NVARCHAR(20) NOT NULL,
  BookingStatus NVARCHAR(100) NOT NULL,
  StaffID NVARCHAR(20),
  ServiceID NVARCHAR(20) NOT NULL,
  PRIMARY KEY (BookingID),
  FOREIGN KEY (AccountID) REFERENCES Account(AccountID),
  FOREIGN KEY (ServiceID) REFERENCES Service(ServiceID)
);
GO

-- Tạo bảng BookingDetail
CREATE TABLE BookingDetail
(
  BookingDetail_ID INT IDENTITY(1,1) NOT NULL, 
  BookingID INT NOT NULL,
  TotalPrice MONEY,
  BookingDate DATETIME NOT NULL,
  BookingAddress NVARCHAR(255) NOT NULL,
  TypeOfService NVARCHAR(100) NOT NULL,
  Message NVARCHAR(MAX),
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
INSERT [dbo].[Account] ([AccountID], [Email], [Password], [FullName], [Address], [Phone], [RoleID], [Gender], [DateOfBirth], [Status], [Image], [Salary]) VALUES (N'AC0001', N'hieublockchain2002@gmail.com', N'1', N'Đoàn Thanh Hiếu', N'Bình Dương', N'0987654321', 1, N'Male', CAST(N'2000-02-12' AS Date), 1, N'img/adminHieu.jpg', 6000888.0000)
GO
INSERT [dbo].[Account] ([AccountID], [Email], [Password], [FullName], [Address], [Phone], [RoleID], [Gender], [DateOfBirth], [Status], [Image], [Salary]) VALUES (N'AC0002', N'trungkiennguyen0310@gmail.com', N'1', N'Nguyễn Trung Kiên', N'32/3, Gia Tân 1, Thống Nhất, Đồng Nai', N'0974102437', 1, N'Male', CAST(N'2002-10-03' AS Date), 1, N'img/adminKien.jpg', 0.0000)
GO
INSERT [dbo].[Account] ([AccountID], [Email], [Password], [FullName], [Address], [Phone], [RoleID], [Gender], [DateOfBirth], [Status], [Image], [Salary]) VALUES (N'AC0003', N'staff1@gmail.com', N'1', N'Adela JohnSon', N'Lê Văn Việt', N'0987654321', 2, N'Female', CAST(N'2002-12-03' AS Date), 1, N'img/cleanner1.jpg', NULL)
GO
INSERT [dbo].[Account] ([AccountID], [Email], [Password], [FullName], [Address], [Phone], [RoleID], [Gender], [DateOfBirth], [Status], [Image], [Salary]) VALUES (N'AC0004', N'staff2@gmail.com', N'1', N'Johnson Micheal', N'Tân Bình', N'0897654321', 2, N'Male', CAST(N'2002-10-10' AS Date), 1, N'img/cleanner2.jpg', NULL)
GO
INSERT [dbo].[Account] ([AccountID], [Email], [Password], [FullName], [Address], [Phone], [RoleID], [Gender], [DateOfBirth], [Status], [Image], [Salary]) VALUES (N'AC0005', N'staff3@gmail.com', N'1', N'Micheal Diana', N'Quận 9, Thành phố Hồ Chí Minh', N'0987675321', 2, N'Female', CAST(N'2002-12-03' AS Date), 1, N'img/cleanner3.jpg', NULL)
GO
INSERT [dbo].[Account] ([AccountID], [Email], [Password], [FullName], [Address], [Phone], [RoleID], [Gender], [DateOfBirth], [Status], [Image], [Salary]) VALUES (N'AC0006', N'user1@gmail.com', N'1', N'Nguyễn Hà Mai', N'Hà Nội', N'0987654321', 4, N'Female', CAST(N'1995-08-15' AS Date), 1, N'img/user1.jpg', NULL)
GO
INSERT [dbo].[Account] ([AccountID], [Email], [Password], [FullName], [Address], [Phone], [RoleID], [Gender], [DateOfBirth], [Status], [Image], [Salary]) VALUES (N'AC0007', N'user2@gmail.com', N'1', N'Trương Tuấn Anh', N'Hồ Chí Minh', N'0976543210', 4, N'Male', CAST(N'1990-03-20' AS Date), 0, N'img/user2.jpg', NULL)
GO
INSERT [dbo].[Account] ([AccountID], [Email], [Password], [FullName], [Address], [Phone], [RoleID], [Gender], [DateOfBirth], [Status], [Image], [Salary]) VALUES (N'AC0008', N'user3@gmail.com', N'1', N'Trần Nguyên Trân', N'Đà Nẵng', N'0965432109', 4, N'Female', CAST(N'1992-10-05' AS Date), 1, N'img/user3.jpg', NULL)
GO
INSERT [dbo].[Account] ([AccountID], [Email], [Password], [FullName], [Address], [Phone], [RoleID], [Gender], [DateOfBirth], [Status], [Image], [Salary]) VALUES (N'AC0009', N'user4@gmail.com', N'1', N'Lê Văn User 4', N'Hải Phòng', N'0954321098', 4, N'Male', CAST(N'1993-07-12' AS Date), 1, N'img/user4.jpg', NULL)
GO
INSERT [dbo].[Account] ([AccountID], [Email], [Password], [FullName], [Address], [Phone], [RoleID], [Gender], [DateOfBirth], [Status], [Image], [Salary]) VALUES (N'AC0010', N'user5@gmail.com', N'1', N'Phạm Thị User 5', N'Cần Thơ', N'0943210987', 4, N'Female', CAST(N'1996-05-30' AS Date), 1, N'img/user5.jpg', NULL)
GO
INSERT [dbo].[Account] ([AccountID], [Email], [Password], [FullName], [Address], [Phone], [RoleID], [Gender], [DateOfBirth], [Status], [Image], [Salary]) VALUES (N'AC0011', N'user6@gmail.com', N'1', N'Hoàng Văn User 6', N'Nghệ An', N'0932109876', 4, N'Male', CAST(N'1991-11-25' AS Date), 1, N'img/user6.jpg', NULL)
GO
INSERT [dbo].[Account] ([AccountID], [Email], [Password], [FullName], [Address], [Phone], [RoleID], [Gender], [DateOfBirth], [Status], [Image], [Salary]) VALUES (N'AC0012', N'user7@gmail.com', N'1', N'Đỗ Thị User 7', N'Bình Dương', N'0921098765', 4, N'Female', CAST(N'1994-09-10' AS Date), 0, N'img/user7.jpg', NULL)
GO
INSERT [dbo].[Account] ([AccountID], [Email], [Password], [FullName], [Address], [Phone], [RoleID], [Gender], [DateOfBirth], [Status], [Image], [Salary]) VALUES (N'AC0013', N'user8@gmail.com', N'1', N'Lý Văn User 8', N'Thanh Hóa', N'0910987654', 4, N'Male', CAST(N'1997-04-08' AS Date), 1, N'img/user8.jpg', NULL)
GO
INSERT [dbo].[Account] ([AccountID], [Email], [Password], [FullName], [Address], [Phone], [RoleID], [Gender], [DateOfBirth], [Status], [Image], [Salary]) VALUES (N'AC0014', N'user9@gmail.com', N'1', N'Ngô Thị User 9', N'Quảng Ninh', N'0909876543', 4, N'Female', CAST(N'1989-12-18' AS Date), 1, N'img/user9.jpg', NULL)
GO
INSERT [dbo].[Account] ([AccountID], [Email], [Password], [FullName], [Address], [Phone], [RoleID], [Gender], [DateOfBirth], [Status], [Image], [Salary]) VALUES (N'AC0015', N'user10@gmail.com', N'1', N'Huỳnh Văn User 10', N'Long An', N'0898765432', 4, N'Male', CAST(N'1998-02-05' AS Date), 0, N'img/user10.jpg', NULL)
GO

GO
INSERT [dbo].[CateService] ([CateID], [CateName]) VALUES (1, N'Dịch vụ vệ sinh')
INSERT [dbo].[CateService] ([CateID], [CateName]) VALUES (2, N'Dịch vụ sửa chữa')
GO

GO
INSERT [dbo].[Service] ([ServiceID], [ServiceName], [Price], [ServiceDetail], [CateID], [Image], [Status]) VALUES (N'SE01', N'Tổng vệ sinh', 500000.0000, N'Dịch vụ tổng vệ sinh cho căn hộ chung cư mang đến sự sạch sẽ và thoáng mát cho không gian sống của bạn. Đội ngũ người giúp việc sẽ dọn dẹp và vệ sinh sàn nhà, lau kính, vệ sinh cửa, cửa sổ và màn cửa, vệ sinh lỗ thông hơi, gầm tủ và các góc khuất khác trong căn hộ. Ngoài ra, nội thất như ghế sofa, bàn, giường và tủ cũng sẽ được làm sạch kỹ lưỡng. Dịch vụ này đảm bảo không gian sống của bạn trở nên sạch sẽ và thoải mái để bạn có thể tận hưởng cuộc sống hàng ngày một cách thoải mái.', 1, N'img/serviceTongVeSinh.jpg', 1)
INSERT [dbo].[Service] ([ServiceID], [ServiceName], [Price], [ServiceDetail], [CateID], [Image], [Status]) VALUES (N'SE02', N'Vệ sinh phòng', 100000.0000, N'Dịch vụ vệ sinh phòng cho chung cư đảm bảo sự sạch sẽ và thoáng mát cho không gian sống của bạn. Đội ngũ người giúp việc sẽ làm sạch và vệ sinh phòng ngủ, phòng khách, phòng ăn, phòng tắm và nhà vệ sinh. Công việc bao gồm lau chùi các bề mặt, thay ga, áo gối và trải giường, vệ sinh bồn cầu, lavabo, vòi sen, và làm sạch kính cửa sổ và ban công. Dịch vụ này giúp bạn có một môi trường sống sạch sẽ và thoải mái để thưởng thức cuộc sống hàng ngày.', 1, N'img/serviceVeSinhPhong.jpg', 1)
INSERT [dbo].[Service] ([ServiceID], [ServiceName], [Price], [ServiceDetail], [CateID], [Image], [Status]) VALUES (N'SE03', N'Vệ sinh sofa, rèm, nệm, kính', 300000.0000, N'Dịch vụ vệ sinh sofa, rèm cửa, nệm và kính đảm bảo sự sạch sẽ và tươi mới cho các bề mặt và vật liệu trong không gian sống của bạn. Đội ngũ người giúp việc sẽ làm sạch sofa, làm sạch và làm mới rèm cửa, làm sạch nệm và làm sáng kính. Qua đó, bạn sẽ có các bề mặt sạch sẽ, không bám bụi, vết bẩn và mùi không mong muốn, tạo nên môi trường sống trong lành và thoải mái.', 1, N'img/serviceVeSinhSofa.jpg', 1)
INSERT [dbo].[Service] ([ServiceID], [ServiceName], [Price], [ServiceDetail], [CateID], [Image], [Status]) VALUES (N'SE04', N'Vệ sinh máy lạnh', 200000.0000, N'Dịch vụ vệ sinh máy lạnh trong chung cư đảm bảo rằng máy lạnh của bạn được làm sạch và bảo trì tốt. Đội ngũ người giúp việc sẽ làm sạch bên ngoài máy lạnh, loại bỏ bụi và vết bẩn. Họ cũng sẽ làm sạch và vệ sinh các bộ lọc và ống dẫn của máy lạnh để đảm bảo luồng không khí sạch và hiệu suất làm lạnh tốt nhất. Việc vệ sinh máy lạnh định kỳ giúp duy trì chất lượng không khí trong căn hộ và đảm bảo hoạt động hiệu quả của máy lạnh.', 1, N'img/serviceVeSinhMayLanh.jpg', 1)
INSERT [dbo].[Service] ([ServiceID], [ServiceName], [Price], [ServiceDetail], [CateID], [Image], [Status]) VALUES (N'SE05', N'Sửa chữa đồ điện', 200000.0000, N'Dịch vụ sửa chữa đồ điện đảm bảo rằng các thiết bị điện trong căn hộ của bạn hoạt động ổn định và an toàn. Đội ngũ kỹ thuật viên sẽ kiểm tra và khắc phục các sự cố như mất điện, đứt dây, hỏng bộ nguồn và các vấn đề khác liên quan đến hệ thống điện. Họ sẽ thực hiện các biện pháp sửa chữa cần thiết để đảm bảo các thiết bị điện hoạt động trơn tru và đáng tin cậy. Dịch vụ này giúp bạn an tâm và tiết kiệm thời gian và công sức trong việc bảo trì và sửa chữa các thiết bị điện trong căn hộ của mình.', 2, N'img/serviceSuaChuaDoDien.jpg', 1)
INSERT [dbo].[Service] ([ServiceID], [ServiceName], [Price], [ServiceDetail], [CateID], [Image], [Status]) VALUES (N'SE06', N'Sửa chữa hệ thống nước', 100000.0000, N'Dịch vụ sửa chữa nước đảm bảo sự hoạt động ổn định của hệ thống nước trong căn hộ của bạn. Đội ngũ thợ sẽ khắc phục sự cố như rò rỉ đường ống nước, hỏng bồn nước, vòi nước hỏng, và các vấn đề khác. Họ sẽ thực hiện các biện pháp sửa chữa và thay thế linh kiện cần thiết để đảm bảo hệ thống nước hoạt động hiệu quả. Dịch vụ này giúp bạn có một nguồn nước sạch sẽ và ổn định trong căn hộ của mình.', 2, N'img/serviceSuaChuaHeThongNuoc.jpg', 1)
INSERT [dbo].[Service] ([ServiceID], [ServiceName], [Price], [ServiceDetail], [CateID], [Image], [Status]) VALUES (N'SE07', N'Sửa chữa thiết bị gia dụng', 100000.0000, N'Dịch vụ sửa chữa thiết bị gia dụng đảm bảo rằng các thiết bị trong gia đình của bạn hoạt động tốt và lâu bền. Đội ngũ kỹ thuật viên chuyên nghiệp sẽ tiến hành sửa chữa các thiết bị như máy giặt, tủ lạnh, lò vi sóng, máy lọc không khí và các thiết bị khác. Họ sẽ kiểm tra, chẩn đoán và khắc phục các sự cố như không hoạt động, hỏng linh kiện, mất hiệu suất và các vấn đề khác. Dịch vụ này giúp bạn tiết kiệm thời gian, tiền bạc và nỗ lực trong việc sửa chữa các thiết bị gia dụng, đồng thời đảm bảo rằng chúng hoạt động tốt và đáng tin cậy.', 2, N'img/serviceSuaChuaGiaDung.jpg', 1)
GO
