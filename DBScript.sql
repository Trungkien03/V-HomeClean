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
  CommentID INT,
  Title NVARCHAR(255) NOT NULL,
  SubTitle NVARCHAR(MAX),
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

-- Tạo trigger AutoGenerateBlogID 
CREATE TRIGGER AutoGenerateBlogID
ON Blog
INSTEAD OF INSERT
AS
BEGIN
  DECLARE @Prefix NVARCHAR(2) = 'BL';

  DECLARE @MaxID INT = ISNULL((SELECT MAX(CAST(RIGHT(BlogID, LEN(BlogID) - LEN(@Prefix)) AS INT)) FROM Blog), 0);

  INSERT INTO Blog (BlogID, title, subTitle, content, accountID, BlogCateID, time, image)
  SELECT @Prefix + RIGHT('0000' + CAST(@MaxID + ROW_NUMBER() OVER (ORDER BY (SELECT 1)) AS NVARCHAR(4)), 4),
         title,
         subTitle,
         content,
         accountID,
		 BlogCateID,
         time,
         image        
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
INSERT [dbo].[BlogCate] ([BlogCateID], [CateName]) VALUES (1, N'Mẹo dọn dẹp')
INSERT [dbo].[BlogCate] ([BlogCateID], [CateName]) VALUES (2, N'Mẹo sửa chữa')
GO
INSERT [dbo].[Blog] ([BlogID], [CommentID], [Title], [SubTitle], [Content], [AccountID], [BlogCateID], [Time], [Image]) VALUES (N'Bl0001', NULL, N'Lợi ích của lựa chọn dịch vụ vệ sinh nhà cửa theo giờ', N'Dịch vụ vệ sinh nhà cửa theo giờ hiện nay đang rất phổ biến, xuất hiện nhiều ở những thành phố lớn và mang lại rất nhiều lợi ích cho người dùng. Hiện nay với công việc bận rộn thì nhu cầu tìm dịch vụ vệ sinh theo giờ ngày càng lớn. Tuy nhiên nhiều gia đình vẫn khá quan ngại về sự xuất hiện của giúp việc – người lạ trong gia đình mình. Lựa chọn dịch vụ vệ sinh theo giờ chính là sự lựa chọn tối ưu và hoàn hảo nhất. Để giúp các bạn hiểu rõ hơn, chúng ta hãy cùng nhau tìm hiểu về lợi ích của việc lựa chọn dịch vụ vệ sinh nhà cửa theo giờ trong bài viết dưới đây.', N'Dịch vụ vệ sinh theo giờ là hình thức giúp việc mà người giúp việc sẽ đến nhà bạn làm việc theo khung giờ mà bạn mong muốn. Giúp việc theo giờ thường làm trong khoảng từ 2h đến 8h tùy theo khối lượng công việc và nhu cầu của gia đình bạn, sau đó sẽ rời đi. Giúp việc theo giờ thường làm các công việc như: dọn dẹp, nấu cơm, chăm em bé, đón em bé đi học về,…', N'AC0001', 1, CAST(N'2023-02-18T00:00:00.000' AS DateTime), N'https://i.pinimg.com/564x/9d/e0/d2/9de0d2d80be64f7538f78b33c01a93b7.jpg')
INSERT [dbo].[Blog] ([BlogID], [CommentID], [Title], [SubTitle], [Content], [AccountID], [BlogCateID], [Time], [Image]) VALUES (N'Bl0002', NULL, N'Tại sao cần vệ sinh nhà ở bạn có biết?', N'Nhà là nơi sinh sống, làm việc và nghỉ ngơi của mọi thành viên trong gia đình. Vì vậy một ngôi nhà chật chội, ẩm thấp, thiếu ánh sáng có mùi khó chịu dễ gây ra các triệu chứng như nhức đầu, mất ngủ, mệt mỏi, kém ăn…cùng V-HomeClean tìm hiểu tại sao cần vệ sinh nhà ở nhé.', N'Trong mùa cao điểm như dịch bệnh Corona, theo khuyến cáo của Bộ Y Tế bên cạnh việc đeo khẩu trang và rửa tay, dọn dẹp nhà cửa thường xuyên để không gian ở thoáng đãng, sạch sẽ cũng là cách để mọi gia đình cùng chung tay đẩy lùi Corona, làm sạch không gian tránh phát sinh ra nhiều bệnh nguy hiểm như: thấp khớp, còi xương, suy dinh dưỡng, lao phổi, giun sán, hen suyễn…. Do đó, việc tổng vệ sinh nhà cửa thường xuyên là việc làm hết sức cần thiết, không chỉ làm giảm khả năng gây bệnh cho con người mà còn cho ta cảm giác thư thái, dễ chịu sẽ giúp đảm bảo môi trường sống cho gia đình bạn luôn an toàn, sạch sẽ mang lại sức khỏe tốt cho gia đình bạn. Giữ phòng vệ sinh thông thoáng: Để ngăn chặn sự tích tụ của vi khuẩn, bạn nên thường xuyên cọ rửa nhà vệ sinh, đặc biệt là bồn cầu, nắp cống thoát nước, cần gạt… Ngoài ra, nên bật quạt hút mùi nhiều lần trong ngày và mở cửa sổ phòng vệ sinh khi không sử dụng. Giữ cho không khí trong phòng luôn sạch sẽ, thoáng mát, không nên hút thuốc trong phòng, không để cho khói bếp bay vào phòng. Buổi sáng, sau khi thức dậy, nên mở cửa sổ để không khí được thay đổi và điều chỉnh nhiệt trong phòng vào những ngày mưa lạnh.', N'AC0002', 1, CAST(N'2023-03-20T00:00:00.000' AS DateTime), N'https://i.pinimg.com/564x/67/1f/eb/671febbdfc06356f5e71a096f8f27f40.jpg')
INSERT [dbo].[Blog] ([BlogID], [CommentID], [Title], [SubTitle], [Content], [AccountID], [BlogCateID], [Time], [Image]) VALUES (N'Bl0003', NULL, N'Cách làm sạch kính nhà vệ sinh dễ thực hiện nhất cho bạn', N'Cách làm sạch kính nhà vệ sinh đang là sự quan tâm hàng đầu của nhiều phụ nữ đặc biệt là những người nội trợ. Bởi phương pháp này có thể giúp không gian sống trở nên lành mạnh và giúp tinh thần người sử dụng trở nên thoải mái hơn. Để tìm hiểu và có thêm kiến thực về các hình thức làm sách kích của nhà vệ sinh các bạn có thể xem nội dung sau đây của V-HomeClean.', N'Kính nhà vệ sinh là một vật dụng không thể thiếu trong cuộc sống thường nhật của chúng ta vì những lợi ích mà nó mang lại. Sau đây là một số cách vệ sinh theo gợi ý của V-HomeClean để mọi người tham khảo. Các phương pháp làm sạch kính nhà vệ sinh hiệu quả: Làm sạch kính nhà vệ sinh bằng chanh và muốn ăn, làm sạch kính nhà vệ sinh bằng Baking Soda. Như vậy, V-HomeClean đã đưa đến các bạn lý do cũng như một số cách làm sạch kính nhà vệ sinh qua nội dung trên đây. Hy vọng sau khi tìm hiểu các thông tin mọi người có thể chọn và áp dụng được cho mình phương pháp phù hợp với bản thân.', N'AC0003', 1, CAST(N'2022-11-29T00:00:00.000' AS DateTime), N'https://i.pinimg.com/564x/e9/2d/24/e92d24c0d14a57b1e894c066aaa93da6.jpg')
INSERT [dbo].[Blog] ([BlogID], [CommentID], [Title], [SubTitle], [Content], [AccountID], [BlogCateID], [Time], [Image]) VALUES (N'Bl0004', NULL, N'Giặt Rèm làm sao cho đúng?', N'Rèm cửa là vật dụng phổ biến trong các gia đình hiện nay. Ngoài các công dụng che nắng, che bụi thì rèm cửa còn là công cụ để trang trí cho ngôi nhà với mẫu mã đa dạng. Việc che nắng, che bụi sẽ không tránh khỏi việc rèm cửa bị bẩn và xuất hiện nấm mốc. Vậy làm sao để giặt rèm cửa một cách an toàn và hiệu quả hãy cùng V-HomeClean tìm hiểu nha.', N'Rèm cửa không nên giặt bằng máy: Là những loại rèm có chất liệu vải thô hay vải gấm vì chúng rất dễ bị co so với kích thước ban đầu, rèm nhung rất dễ mất lớp tuyết của bề mặt rèm. Đối với các loại rèm này bạn chỉ có thể sử dụng phương pháp giặt khô hoặc dùng máy hút bụi, hút từ trên xuống dưới để giữ độ suôn và mềm mại của rèm. Nếu không có máy hút bụi thì bạn có thể đem phơi nắng một lần, sau đó dùng chổi quét bụi một vài lần theo chiều từ trên xuống dưới rèm. Nếu có máy hơi nóng, bạn hãy sử dụng để vệ sinh khắp bề mặt rèm cửa, hơi nóng sẽ giúp giết chết các mầm mống vi khuẩn và làm cho rèm mới hơn.', N'AC0003', 1, CAST(N'2021-12-11T00:00:00.000' AS DateTime), N'https://i.pinimg.com/564x/e2/74/56/e2745625ae8b45768a0edd23e606cab1.jpg')
INSERT [dbo].[Blog] ([BlogID], [CommentID], [Title], [SubTitle], [Content], [AccountID], [BlogCateID], [Time], [Image]) VALUES (N'Bl0005', NULL, N'Các bước dọn dẹp phòng ngủ bảo vệ sức khỏe', N'Phòng ngủ là nơi rất quan trọng bởi nó là nơi cân bằng mọi sinh hoạt trong cuộc sống. Nhưng ít người lại để tâm chăm sóc chúng. Những nguyên tắc chăm sóc phòng ngủ dưới đây sẽ giúp bạn dọn dẹp phòng ngủ một cách hiệu quả tránh các da và hô hấp thông thường do bụi bẩn gây ra trong lúc ngủ.', N'Nếu bạn không đủ thời gian để dọn dẹp nhà cửa thì việc quan trọng nhất bạn nên làm để đảm bảo sức khỏe và da dẻ là thay ga gối mỗi tuần. Hãy nhớ dù bạn có tắm gội sạch sẽ mỗi ngày trước khi đi ngủ thì bụi trong không khí, vi sinh vật gây hại cũng vẫn bám đọng trên ga gối, các khí thải, chất bã trên cơ thể bạn vẫn tiết ra dù bạn có thể không cảm thấy có mùi hôi hay vết bẩn. Một trong những việc khó khăn nhất khi dọn dẹp phòng ngủ là tìm và xếp những đồ đạc lung tung vào đúng vị trí của nó. Hãy sắp xếp mọi đồ đạc trong phòng vào đúng góc và theo thứ tự từ trước thì sau bạn sẽ dễ dàng hơn. Ví dụ như phân rõ ngăn tủ quần áo của vợ chồng và con cái hay xếp gọn giá sách theo bảng chữ cái. Hạn chế cho thú cưng vào phòng, bạn rất thân thiết và thường xuyên cho chó mèo vào phòng ngủ? Vậy thì bạn hãy ngừng việc đó ngay nếu muốn phòng ngủ luôn sạch sẽ, thơm tho. Lông và chấy rận ở những con thú nuôi sẽ vương vãi khắp chăn đệm, giường chiếu và khó mà giũ sạch. Phòng ngủ của bạn đâu phải là cái ổ! Do đó, hãy mua cho chú chó của bạn một chiếc đệm ngủ và đặt ở góc khác của ngôi nhà.', N'AC0002', 1, CAST(N'2023-01-01T00:00:00.000' AS DateTime), N'https://i.pinimg.com/564x/ad/bb/c0/adbbc0349e5e5278192303c472019233.jpg')
INSERT [dbo].[Blog] ([BlogID], [CommentID], [Title], [SubTitle], [Content], [AccountID], [BlogCateID], [Time], [Image]) VALUES (N'Bl0006', NULL, N'Vì sao máy lạnh không mát? Các nguyên nhân chính là gì?', N'Máy lạnh là thiết bị được sử dụng rất phổ biến hiện nay, nhất là ở nơi có khí hậu nóng như Việt Nam. Tuy nhiên sau một thời gian sử dụng, máy lạnh thường gặp phải tình trạng không tỏa ra hơi mát. Vậy nguyên nhân vì sao máy lạnh không mát? Mọi người hãy cùng V-HomeClean tìm hiểu qua bài viết dưới đây nhé!', N'Máy lạnh dường như đã trở thành thiết bị không thể thiếu trong mỗi gia đình Việt Nam hiện nay. Để biết nguyên nhân vì sao máy lạnh không mát và tìm cách khắc phục thì bạn hãy theo dõi những chia sẻ sau: Do gas máy lạnh có thể đã hết, do nguồn điện không ổn định, do đặt sai chế độ làm mát của máy lạnh, do hỏng tụ điện hoặc bảng mạch. Bạn cần liên hệ ngay với trung tâm sửa chữa, bảo trì máy lạnh để đến kiểm tra và thay mới linh kiện cần thiết. Nếu không muốn gặp phải tình trạng này, bạn đừng bật máy lạnh ở chế độ thấp thường xuyên, tránh trường hợp máy lạnh hoạt động quá tải trong thời gian dài. Các thiết bị điện lạnh nên được vệ sinh định kỳ 3 – 6 tháng một lần, đặc biệt là tấm lọc không khí. Tuy nhiên bạn cần lưu ý không nên tự vệ sinh máy lạnh khi không có kỹ thuật, chuyên môn. ', N'AC0001', 2, CAST(N'2020-09-28T00:00:00.000' AS DateTime), N'https://i.pinimg.com/564x/5d/4e/77/5d4e77fe3c742ffc1d441321b600cb9c.jpg')
INSERT [dbo].[Blog] ([BlogID], [CommentID], [Title], [SubTitle], [Content], [AccountID], [BlogCateID], [Time], [Image]) VALUES (N'Bl0007', NULL, N'Bơm ga tủ lạnh theo quy trình như thế nào? Có dễ không?', N'Ga tủ lạnh có vai trò rất quan trọng đối với hoạt động của thiết bị. Nó có tác dụng chuyển nhiệt lạnh từ ngăn đá xuống ngăn mát. Đối với thiết bị chạy ổn định, khí ga sẽ được lưu thông tuần hoàn. Trong trường hợp tủ lạnh bị rò rỉ khí ga là dấu hiệu cảnh báo thiết bị đã xuống cấp. Lúc này, bạn nên liên hệ tới các đơn vị sửa chữa điện lạnh chuyên nghiệp. Nhân viên kỹ thuật sẽ xuống tận nơi để nạp thêm ga cho tủ lạnh. Hướng dẫn quy trình bơm ga tủ lạnh nhanh nhất: ', N'Chuẩn bị loại ga phù hợp để bơm cho tủ lạnh. Lưu ý rằng, loại ga mới phải đúng chủng loại với ga cũ của biết bị. Một số loại ga sử dụng phổ biến như: ga R134a, ga R12, ga R600, ga R404. Thay thế chai ga mới ở vị trí của máy hút. Từ từ mở van đồng hồ và van chai ga. Khi đó, lượng ga mới sẽ được nạp vào hệ thống. Bạn chờ cho đến khi mức áp suất tăng đến ngưỡng 35-45 PSI thi đóng van của chai ga. Kiểm tra kỹ lại các mối hàn để tránh tình trạng rò rỉ ga. Đồng thời, bạn xem van đồng hồ đã đóng chặt hay chưa. Kết nối nguồn điện của tủ lạnh và tiếp tục nạp ga cho đến khi đạt mức tiêu chuẩn theo quy định. Hy vọng rằng, những thông tin trên đây sẽ giúp bạn hiểu rõ hơn về các dấu hiệu cần bơm ga tủ lạnh và quy trình nạp ga đúng chuẩn.', N'AC0002', 2, CAST(N'2018-01-28T00:00:00.000' AS DateTime), N'https://dienlanhoyasu.com/wp-content/uploads/2022/11/chi-phi-bom-gas-tu-lanh.jpg')
INSERT [dbo].[Blog] ([BlogID], [CommentID], [Title], [SubTitle], [Content], [AccountID], [BlogCateID], [Time], [Image]) VALUES (N'Bl0008', NULL, N'Ngăn mát tủ lạnh không mát – Nguyên nhân và cách khắc phục', N'Hiện tượng ngăn mát tủ lạnh không mát rất dễ nhận biết. Khi bạn cắm nguồn điện, thiết bị hoạt động bình thường nhưng không có hơi lạnh dưới ngăn mát. Vậy nguyên nhân nào dẫn đến tình trạng này? Cách khắc phục ra sao? Cùng V-HomeClean tìm kiếm câu trả lời dưới đây nhé!', N'Lỏng phích cắm tủ lạnh
Để sử dụng tủ lạnh, bạn cần cắm dây nguồn của thiết bị vào ổ điện. Khi đó, nguồn điện lưới sẽ lưu thông và vận hành hoạt động của thiết bị. Nếu phích cắm tủ lạnh bị lỏng thì thiết bị sẽ ngừng hoạt động. Từ đó ngăn dưới tủ lạnh không có đủ hơi mát để bảo quản thực phẩm. Để xử lý sự cố này, bạn nên kiểm tra ổ cắm và thay linh kiện mới nếu cần thiết.
Dây kết nối với nguồn điện bị đứt
Tủ lạnh thường được bố trí trong phòng bếp của gia đình. Nếu bạn không vệ sinh phòng bếp sạch sẽ thì sẽ tạo điều kiện cho các loại vi khuẩn, côn trùng, chuột ẩn náu. Các loài sinh vật này có thể tấn công các thiết bị, trong đó có tủ lạnh. Khi đó, dây nguồn tủ lạnh sẽ bị đứt nên không thể kết nối ổn định với nguồn điện. Chính nguyên nhân này đã dẫn đến tình trạng ngăn mát tủ lạnh không mát. Lúc này, bạn chỉ cần rút phích cắm điện và nối lại dây ở vị trí bị đứt.
Lượng thực phẩm trong tủ bị quá tải
Khi chọn mua tủ lạnh, bạn cần quan tâm đến mức dung tích. Thiết bị có mức dung tích càng lớn thì khả năng chứa thực phẩm càng nhiều. Nếu bạn tích trữ quá tải thực phẩm sẽ gây cản trở quá trình lưu thông hơi lạnh. Khi đó, khả năng làm mát của thiết bị rất yếu. Để đảm bảo độ tươi ngon của thực phẩm, bạn nên mua thiết bị có mức dung tích phù hợp với nhu cầu sử dụng của gia đình.
', N'AC0003', 2, CAST(N'2023-06-08T00:00:00.000' AS DateTime), N'https://dienlanhoyasu.com/wp-content/uploads/2022/11/ngan-mat-tu-lanh-khong-mat.jpg')
INSERT [dbo].[Blog] ([BlogID], [CommentID], [Title], [SubTitle], [Content], [AccountID], [BlogCateID], [Time], [Image]) VALUES (N'Bl0009', NULL, N'Sửa máy giặt giá bao nhiêu? Dịch vụ sửa máy giặt chất lượng ', N'Trước khi giải đáp chủ đề sửa máy giặt giá bao nhiêu, V-HomeClean muốn bạn hiểu rõ hơn về các vấn đề liên quan tới các vấn đề của máy giặt. Máy giặt hư hỏng ảnh hưởng không nhỏ tới cuộc sống sinh hoạt của mỗi gia đình. Đặc biệt, nếu là máy giặt tại các tiệm giặt là chuyên nghiệp thì càng phải xử lý càng nhanh càng tốt.', N'Sửa máy giặt giá bao nhiêu?
Sửa máy giặt giá bao nhiêu? Đối với chi phí sửa máy giặt thì còn phải xét tới từng yếu tố cụ thể. Hiện nay, ở khắp các tỉnh đều có dịch vụ sửa chữa máy giặt tại nhà. Mỗi đơn vị sẽ đưa ra chi phí dịch vụ riêng cho từng vấn đề mà sản phẩm của khách hàng mắc phải. Ngoài yếu tố đơn vị sửa chữa thì chi phí sửa máy giặt cao hay thấp còn phụ thuộc vào nhiều yếu tố khác như:
– Dòng máy giặt: Thị trường có rất nhiều hãng, dòng máy giặt khác nhau. Mỗi dòng đều sẽ có thiết kế với cấu tạo khác nhau. Chính vì vậy, khi sửa chữa, bên dịch vụ cũng sẽ xét tới yếu tố này để đưa ra giá. Giá sửa máy giặt cửa trên chắc chắn sẽ khác với giá sửa dòng máy giặt thiết kế cửa dưới.
– Bộ phận hư hỏng của máy giặt: Sửa máy giặt giá bao nhiêu cũng phụ thuộc vào bộ phận bị hỏng của thiết bị. Mỗi bộ phận của máy giặt đều có cấu tạo riêng nên bộ phận phức tạp thì giá sửa chữa sẽ cao hơn.
– Tình trạng hư hỏng: Máy giặt hư hỏng cấp độ nhẹ thì giá sửa chữa sẽ nhẹ hơn. Ngược lại, hư càng nặng thì giá phải trả càng cao.', N'AC0004', 2, CAST(N'2023-06-01T00:00:00.000' AS DateTime), N'https://dienlanhoyasu.com/wp-content/uploads/2022/11/sua-may-giat-gia-bao-nhieu-oyasu.jpg')
INSERT [dbo].[Blog] ([BlogID], [CommentID], [Title], [SubTitle], [Content], [AccountID], [BlogCateID], [Time], [Image]) VALUES (N'Bl0010', NULL, N'Nguyên nhân và cách sửa máy giặt không quay hiệu quả', N'Trong thời gian sử dụng, người dùng thường gặp phải tình trạng máy giặt không hoạt động. Vậy cách sửa máy giặt không quay diễn ra như thế nào? Cùng Điện Lạnh V-HomeCLean tham khảo bài viết sau!', N'Máy giặt quá tải trọng
Mỗi máy giặt đều sở hữu một khối lượng giặt cố định, thói quen nhét dư quần áo sẽ khiến thiết bị không thể bắt đầu chương trình giặt. Đây là lỗi phổ biến mà người dùng hay mắc phải, chúng ta thường cố cho nhiều đồ đạc nhất nhằm tiết kiệm điện, nước,… gia đình.
Giải pháp: Biện pháp sửa máy giặt không quay trong tình huống này chính là bỏ bớt đồ và giặt lượng quần áo đúng với trọng lượng nhà sản xuất yêu cầu.
Sập nguồn
Mọi người nên kiểm tra jack cắm và nguồn điện tại ổ cắm để cấp điện đầy đủ cho sản phẩm. Sau đó chọn “Start/Pause” và giặt thử vài lần. 
Giải pháp: Nếu đã thực hiện đúng quy tắc mà máy vẫn chưa hiện nguồn, liên hệ Điện Lạnh OYASU ngay.
Lồng giặt kênh
Đồ đạc xếp lệch vào 1 góc tác động trực tiếp làm lồng giặt không cân đối, dẫn đến thiết bị không thể hoạt động.
Giải pháp: Chỉnh lại quần áo cân bằng và khởi động bình thường.
Nắp máy hở
Vì lý do an toàn, nhà phát hành sẽ cài đặt cho máy chỉ được quyền khởi động khi nắp lồng giặt đặt kín.
Giải pháp: Quan sát tỉ mỉ và chắc chắn bạn đã đóng cửa lồng giặt cẩn thận.
Công tắc điều khiển lỗi
Muốn sử dụng thông thạo sản phẩm, khách hàng cần tìm hiểu nút khởi động đầu tiên. Mệnh danh là “linh hồn” của máy giặt, nếu bạn bấm mà thiết bị vẫn chưa quay thì kết luận công tắc điều khiển đang gặp vấn đề.', N'AC0004', 2, CAST(N'2023-06-06T00:00:00.000' AS DateTime), N'https://dienlanhoyasu.com/wp-content/uploads/2022/11/sua-may-giat-khong-quay.png')
INSERT [dbo].[Blog] ([BlogID], [CommentID], [Title], [SubTitle], [Content], [AccountID], [BlogCateID], [Time], [Image]) VALUES (N'Bl0011', NULL, N'Máy lạnh không lạnh sâu vì sao? 7 lý do chính và cách xử lý', N'Điều hòa đang dần trở thành một thiết bị không thể thiếu trong cuộc sống hiện nay. Vấn đề máy lạnh không lạnh sâu khi chưa được kịp thời xử lý sẽ gây ảnh hưởng nghiệm trọng tới thiết bị. Vậy bạn đã nắm được những thông tin gì về tình trạng này? Mọi người có thể tham khảo những chia sẻ sau của Điện lạnh V-HomeClean nhé.', N'Máy nén bị ngưng hoạt động
Một trong những bộ phận khá quan trọng của máy lạnh có thể kể tới là máy nén. Khi bộ phận này gặp sự cố thì khí được tỏa ra tại đây sẽ không được làm mát. Một số nguyên nhân chính gây nên tình trạng hư hỏng của máy nén là lỗi mạch, mất nguồn cấp,….Vì máy nén là bộ phận quan trọng nên mọi người không thể tự ý sửa chữa tại nhà, tránh làm tăng thêm chi phí sau này.
Máy lạnh hết gas
Máy lạnh không lạnh sâu cũng có thể do hết gas. Tình trạng này cũng được xem là những nguyên nhân phổ biến nhất. Hết gas ở máy lạnh có thể do dường ống dẫn gas bị hở hoặc hư hỏng. Mọi người nên nhanh chóng nạp ngay gas vào để máy lạnh hoạt động bình thường nhé.
Không khí không đủ khi đi qua dàn lạnh
Một nguyên nhân nữa khiến máy lạnh không lạnh sâu là do không khí đi qua dàn lạnh không đủ. Điều này có thể do vị trí lắp đặt thiết bị không phù hợp cho việc tiếp nhận không khí. Ngoài ra cũng có thể do tụ đề quạt của máy lạnh nhà bạn đã bị hỏng. Trong trường hợp này, mọi người nên nhanh chóng di chuyển ngay máy lạnh sang một điểm điểm khác. Đó phải là nơi không khí thông thoáng và không bị đồ vật nào cản trở.', N'AC0003', 2, CAST(N'2023-06-07T00:00:00.000' AS DateTime), N'https://dienlanhoyasu.com/wp-content/uploads/2022/11/ve-sinh-may-lanh-co-can-thiet-768x576.jpg')
INSERT [dbo].[Blog] ([BlogID], [CommentID], [Title], [SubTitle], [Content], [AccountID], [BlogCateID], [Time], [Image]) VALUES (N'Bl0012', NULL, N'Mẹo vệ sinh ghế SOFA tại nhà - đơn giản - hiệu quả', N'Ghế sofa vải, sofa da... được rất nhiều người yêu thích. Bởi chúng không chỉ có nhiều thiết kế đẹp mắt, mà còn mang đến sự thoải mái cho người dùng. Tuy nhiên, sau một thời gian sử dụng, vật dụng này bị cáu bẩn và không còn đẹp như mới. Để có thể giải quyết vấn đề này nhanh chóng, bạn hãy xem ngay hướng dẫn cách vệ sinh ghế sofa tại nhà dưới đây.', N'Vệ sinh sofa thường xuyên, cẩn thận giúp bảo vệ sức khỏe cho người sử dụng. Không chỉ vậy, chúng còn giúp tăng tuổi thọ sản phẩm. Dù bạn không nhìn thấy, chúng vẫn có ở đó. Việc này cũng không mất quá nhiều thời gian nếu như bạn có phương pháp rõ ràng. Một điều lưu ý là tùy theo chất liệu, bạn sẽ có cách làm sạch khác nhau. Đối với sofa có vỏ bọc có thể tháo rời: Nếu ghế sofa của bạn có vỏ bọc tháo rời được, việc vệ sinh nệm sẽ khá đơn giản. Bạn có thể cho chúng vào máy giặt hay đem ra tiệm để giặt khô – chỉ cần làm theo những hướng dẫn trên nhãn mác. Đối với sofa không tháo vỏ bọc: Tuy nhiên, nếu lớp vỏ bọc không thể tháo rời, bạn sẽ cần phân loại chúng theo chất liệu. Từ đó, lựa chọn cách vệ sinh sofa và sản phẩm giặt tẩy nệm ghế phù hợp.', N'AC0002', 1, CAST(N'2023-06-05T00:00:00.000' AS DateTime), N'https://i.pinimg.com/564x/fe/e0/d1/fee0d1f70f1eadc5984e2634053edcc1.jpg')
INSERT [dbo].[Blog] ([BlogID], [CommentID], [Title], [SubTitle], [Content], [AccountID], [BlogCateID], [Time], [Image]) VALUES (N'Bl0013', NULL, N'
Cách vệ sinh tủ lạnh nhanh chóng chỉ trong 20 phút', N'Vì tủ lạnh là nơi dự trữ, bảo quản thực phẩm nên việc vệ sinh tủ lạnh cần được diễn ra thường xuyên, định kỳ. Cách vệ sinh tủ lạnh chỉ trong 20 phút liệu có hiệu quả không, cùng Điện lạnh V-HomeClean đi tìm câu trả lời trong bài viết bên dưới nhé.', N'Vệ sinh tủ lạnh có cần thiết không?
Tủ lạnh là một trong những thiết bị điện tử cần được vệ sinh thường xuyên. Bởi chúng là nơi chứa thực phẩm, thức ăn, những thứ đều có hạn sử dụng ngắn. Nếu thức ăn bị hỏng, ôi thiu có thể sinh ra các vi khuẩn mầm bệnh gây hại cho sức khỏe. Tủ lạnh nếu quá bẩn có thể ảnh hưởng đến hiệu quả hoạt động, thậm chí là hao mòn điện năng tiêu thụ khiến chi phí tiền điện tăng cao. Cách vệ sinh tủ lạnh cũng khá đơn giản lại không mất nhiều thời gian nên việc vệ sinh thường xuyên và định kỳ là rất cần thiết. 
Bí kíp cách vệ sinh tủ lạnh hiệu quả chỉ với 20 phút
Nếu bạn vẫn còn chưa tin cách vệ sinh tủ lạnh chỉ trong 20 phút thì có thể xem các bước mô tả cụ thể dưới đây:
Bước 1: Chuẩn bị
Bước đầu tiên là chuẩn bị đầy đủ các vật dụng để tiến hành vệ sinh tủ lạnh. Bạn chỉ cần bỏ ra 2-3 phút để có thể chuẩn bị một cái chổi, khăn lau, miếng mút mềm, dung dịch tẩy rửa chuyên dụng, giấm ăn.
Bước 2: Lau chùi bên ngoài tủ lạnh
Bạn cần 2 phút để thực hiện quét dọn bụi bẩn và lau chùi sạch sẽ những khu vực bên ngoài tủ lạnh. Dưới chân đáy tủ lạnh là nơi chứa rất nhiều bụi bẩn, hãy dùng chùi và quét sạch chúng đi. Lấy khăn khô lau sạch xung quanh phần ngoài của tủ lạnh.', N'AC0004', 1, CAST(N'2023-06-03T00:00:00.000' AS DateTime), N'https://dienlanhoyasu.com/wp-content/uploads/2022/11/cach-ve-sinh-tu-lanh-nhanh-chong.jpg')
INSERT [dbo].[Blog] ([BlogID], [CommentID], [Title], [SubTitle], [Content], [AccountID], [BlogCateID], [Time], [Image]) VALUES (N'Bl0015', NULL, N'Kiem Tra', N'ok', N'Khi sử sụng Dịch vụ vệ sinh nhà cửa theo giờ sẽ có các lợi ích sau: 1. Tạo tâm lý thoải mái cho những người trong gia đình Có rất nhiều người ái ngại khi có sự xuất hiện của người lạ trong gia đình mình thì việc lựa chọn hình thức Dịch vụ vệ sinh nhà cửa theo giờ sẽ là giải pháp giải quyết vấn đề này.', N'AC0001', 1, CAST(N'2023-03-11T00:00:00.000' AS DateTime), N'https://www.thespruce.com/thmb/c3znkzZgMeuvzBy4wH13jVllfUo=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/plants-with-big-flowers-4138211-hero-b10becb169064cc4b3c7967adc1b22e1.jpg')
INSERT [dbo].[Blog] ([BlogID], [CommentID], [Title], [SubTitle], [Content], [AccountID], [BlogCateID], [Time], [Image]) VALUES (N'Bl0016', NULL, N'Kiem Tra', N'ok', N'Khi sử sụng Dịch vụ vệ sinh nhà cửa theo giờ sẽ có các lợi ích sau:
1.
Tạo tâm lý thoải mái cho những người trong gia đình Có rất nhiều người ái ngại khi có sự xuất hiện của người lạ trong gia đình mình thì việc lựa chọn hình thức Dịch vụ vệ sinh nhà cửa theo giờ sẽ là giải pháp giải quyết vấn đề này.', N'AC0001', 1, CAST(N'2023-03-11T00:00:00.000' AS DateTime), N'https://www.thespruce.com/thmb/c3znkzZgMeuvzBy4wH13jVllfUo=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/plants-with-big-flowers-4138211-hero-b10becb169064cc4b3c7967adc1b22e1.jpg')
INSERT [dbo].[Blog] ([BlogID], [CommentID], [Title], [SubTitle], [Content], [AccountID], [BlogCateID], [Time], [Image]) VALUES (N'Bl0017', NULL, N'Kiem Tra', N'ok', N'Khi sử sụng Dịch vụ vệ sinh nhà cửa theo giờ sẽ có các lợi ích sau:\n\n1.\nTạo tâm lý thoải mái cho những người trong gia đình Có rất nhiều người ái ngại khi có sự xuất hiện của người lạ trong gia đình mình thì việc lựa chọn hình thức Dịch vụ vệ sinh nhà cửa theo giờ sẽ là giải pháp giải quyết vấn đề này.', N'AC0001', 1, CAST(N'2023-03-11T00:00:00.000' AS DateTime), N'https://www.thespruce.com/thmb/c3znkzZgMeuvzBy4wH13jVllfUo=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/plants-with-big-flowers-4138211-hero-b10becb169064cc4b3c7967adc1b22e1.jpg')
GO