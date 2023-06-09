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

INSERT [dbo].[Blog] ([BlogID], [CommentID], [Title], [SubTitle], [Content], [AccountID], [BlogCateID], [Time], [Image]) VALUES (N'Bl0001', NULL, N'Lợi ích của lựa chọn dịch vụ vệ sinh nhà cửa theo giờ', N'Lợi ích của lựa chọn dịch vụ vệ sinh nhà cửa', N'Khi sử sụng Dịch vụ vệ sinh nhà cửa theo giờ sẽ có các lợi ích sau:

1.Tạo tâm lý thoải mái cho những người trong gia đình

Có rất nhiều người ái ngại khi có sự xuất hiện của người lạ trong gia đình mình thì việc lựa chọn hình thức Dịch vụ vệ sinh nhà cửa theo giờ sẽ là giải pháp giải quyết vấn đề này.

Ngoài ra việc thuê Dịch vụ vệ sinh nhà cửa theo giờ sẽ giúp bạn và cả gia đình tránh được nhiều phiền toái không đánh có. Người giúp việc theo giờ chỉ xuất hiện vào thời gian ngắn, được định trước nên sẽ không gây xáo trộn cuộc sống của chủ nhà. Hơn nữa, bạn hoàn toàn có thể xếp lịch làm việc cho người giúp việc trong thời gian cả nhà đi làm để tránh việc gặp mặt giữa gia đình và người giúp việc.

2.Có một ngôi nhà sạch sẽ

Điều đầu tiên bạn sẽ nhận được đó là một ngôi nhà luôn luôn sạch sẽ mà bạn và gia đình bạn xứng đáng có được và hưởng thụ trong đó. Tất cả chúng ta đều sống một cuộc sống rất bận rộn, có rất nhiều việc phải làm. Việc thuê một bên dịch vụ vệ sinh nhà cửa sẽ giúp bạn ít phải lo lắng hơn và có nhiều thời gian hơn dành cho những người thân của bạn. Vào cuối ngày, bạn có thể trở về nhà và thư giãn hoặc bắt đầu lập kế hoạch cho ngày hôm sau mà không cần lo lắng gì cho việc vệ sinh nhà.', N'AC0001', 1, CAST(N'2023-02-18T00:00:00.000' AS DateTime), N'https://i.pinimg.com/564x/9d/e0/d2/9de0d2d80be64f7538f78b33c01a93b7.jpg')
INSERT [dbo].[Blog] ([BlogID], [CommentID], [Title], [SubTitle], [Content], [AccountID], [BlogCateID], [Time], [Image]) VALUES (N'Bl0002', NULL, N'4 cách khử khuẩn nhà cao tầng hiệu quả, bạn đã biết?', N'DỊCH VỤ TỔNG VỆ SINH', N'Một số cách khử khuẩn đối với nhà cao tầng
Việc khử khuẩn ở nhà cao tầng luôn được quan tâm để đảm bảo môi trường sống khỏe cho thành viên được vui chơi thoải mái học tập, làm việc. Dưới đây là chia sẻ một số cách mà bạn nên nắm rõ để thực hiện: 

Thường xuyên dọn dẹp rác
Lượng rác tại mỗi gia đình tích tụ nhiều ngày sẽ nhanh chóng tạo điều kiện cho vi khuẩn sinh sôi và tập trung các loại côn trùng: ruồi, muỗi, kiến,… Đồng thời, mùi hôi bốc lên từ đó khiến cho chúng ta cảm thấy khó chịu. Vậy nên bạn cần phải thực hiện việc thường xuyên dọn dẹp rác đảm bảo bầu không khí trong lành. 

Trồng cây xanh 
Cây xanh có vai trò quan trọng mà chúng ta đều biết nó không chỉ giúp trang trí nhà cửa mà còn khử trùng nhà cửa rất tốt. Nó còn như bộ máy lọc không khí với tác dụng đuổi côn trùng gây hại cho sức khỏe cho gia đình một cách hiệu quả. 

Sử dụng hóa chất để khử khuẩn
Đối với nhà cao tầng bạn cần phải thực hiện công tác khử khuẩn và một trong những cách hiệu quả là sử dụng hóa chất. Tuy nhiên nếu áp dụng cách này thì cần phải tuân thủ thủ đúng như những yêu cầu mà đơn vị sản xuất sẽ đưa ra để đảm bảo an toàn. Ngoài ra, bạn cần phải kiểm tra đúng liều lượng nhằm mục đích đạt hiệu quả như mong muốn nếu không sẽ phí hoài. ', N'AC0002', 1, CAST(N'2023-03-20T00:00:00.000' AS DateTime), N'https://i.pinimg.com/564x/67/1f/eb/671febbdfc06356f5e71a096f8f27f40.jpg')
INSERT [dbo].[Blog] ([BlogID], [CommentID], [Title], [SubTitle], [Content], [AccountID], [BlogCateID], [Time], [Image]) VALUES (N'Bl0003', NULL, N'Cách làm sạch kính nhà vệ sinh dễ thực hiện nhất cho bạn', N'Cách làm sạch kính', N'Các phương pháp làm sạch kính nhà vệ sinh hiệu quả
Kính nhà vệ sinh là một vật dụng không thể thiếu trong cuộc sống thường nhật của chúng ta vì những lợi ích mà nó mang lại. Sau đây là một số cách vệ sinh theo gợi ý của Lamsach5s để mọi người tham khảo như sau.

Làm sạch kính nhà vệ sinh bằng chanh và muốn ăn 
Canh và muốn là 2 loại nguyên liệu có hiệu quả cực tốt trong việc tẩy ố và sát khuẩn. Vì thế mà làm sạch kính nhà vệ sinh theo cách này cũng được nhiều người dùng cụ thể như sau. 

Bước 1: Để bắt đầu các bạn hãy hòa trộn 2 nguyên liệu này lại với nhau theo đúng tỉ lệ 1 thìa nước chanh tương ứng 2 thìa muốn ăn.
Bước 2: Sau khi đã trộn lẫn vào nhau bạn hãy lấy hỗp này cho vào bàn chải và chà lên tấm kính nhà vệ sinh mà mình muốn làm sạch tới khi đều.
Bước 3: Sua khi hoạt thành công việc mọi người hãy chờ thời gian từ 2 – 5 phút và tiếp tục cọ dung dịch này thêm 1 vài lần tới khi sạch là được. 
Bước 4: Xong bước thứ 3 mọi người chỉ cần rửa tấm kính với nước sạch là hoàn thành công việc.', N'AC0003', 1, CAST(N'2022-11-29T00:00:00.000' AS DateTime), N'https://i.pinimg.com/564x/e9/2d/24/e92d24c0d14a57b1e894c066aaa93da6.jpg')
INSERT [dbo].[Blog] ([BlogID], [CommentID], [Title], [SubTitle], [Content], [AccountID], [BlogCateID], [Time], [Image]) VALUES (N'Bl0004', NULL, N'Giặt Rèm làm sao cho đúng?', N'Giặt Rèm', N'Ngâm rèm trong nước trước khi giặt
Đối với những tấm rèm quá bẩn hoặc bị bám dầu mỡ, bạn có thể ngâm một ít đầu thuốc lá vào nước sau đó lọc nước và cho thêm nước giăt rồi ngâm khoảng 10 phút, sau đó mới cho vào máy giặt.

Đối với rèm bẩn vừa phải hoặc ít bẩn, bạn có thể ngâm qua với thuốc tẩy và nước giặt pha loãng tầm 20 phút, sau đó giặt sạch rồi cho vào máy giặt

Chọn chế độ giặt hợp lý cho từng loại vải
Đối với loại rèm vải 2 lớp, bạn nên tháo giặt riêng từng lớp một. Lớp vải voan mỏng bên ngoài bạn có thể giặt thêm với một ít thuốc tẩy. Bạn cũng có thể thiết lập chế độ Pre-wash của máy giặt để rèm trắng sạch hơn.

Đối với một số loại vải thô, nhung gấm hay vải cản sáng, bạn nên giặt khô hoặc dùng máy hút bụi làm sạch bề mặt rèm. Không cần tháo rèm xuống mà dùng máy hút bụi hút dọc theo bề mặt rèm.

Đối với rèm có chất liệu cotton màu, bạn không nên dùng thuốc tẩy hay ngâm rèm trong nước nóng vì sẽ khiến vải co rút và phai màu gây hỏng rèm', N'AC0003', 1, CAST(N'2021-12-11T00:00:00.000' AS DateTime), N'https://i.pinimg.com/564x/e2/74/56/e2745625ae8b45768a0edd23e606cab1.jpg')
INSERT [dbo].[Blog] ([BlogID], [CommentID], [Title], [SubTitle], [Content], [AccountID], [BlogCateID], [Time], [Image]) VALUES (N'Bl0005', NULL, N'3 bước dọn dẹp phòng ngủ bảo vệ sức khỏe', N'Dọn dẹp phòng ngủ', N'Thay ga gối mỗi tuần
Nếu bạn không đủ thời gian để dọn dẹp nhà cửa thì việc quan trọng nhất bạn nên làm để đảm bảo sức khỏe và da dẻ là thay ga gối mỗi tuần. Hãy nhớ dù bạn có tắm gội sạch sẽ mỗi ngày trước khi đi ngủ thì bụi trong không khí, vi sinh vật gây hại cũng vẫn bám đọng trên ga gối, các khí thải, chất bã trên cơ thể bạn vẫn tiết ra dù bạn có thể không cảm thấy có mùi hôi hay vết bẩn. Bạn thậm chí không mặc quần áo đến lần thứ hai thì tại sao lại để ga gối hàng tháng không thay?

Hãy nhớ rằng mọi thứ đều có vị trí của nó
Một trong những việc khó khăn nhất khi dọn dẹp phòng ngủ là tìm và xếp những đồ đạc lung tung vào đúng vị trí của nó. Hãy sắp xếp mọi đồ đạc trong phòng vào đúng góc và theo thứ tự từ trước thì sau bạn sẽ dễ dàng hơn. Ví dụ như phân rõ ngăn tủ quần áo của vợ chồng và con cái hay xếp gọn giá sách theo bảng chữ cái.

Giữ sàn nhà sạch sẽ
Thực tế dù là bạn “tối giản” bề mặt tới đâu thì luôn có sàn nhà là mặt phẳng to uỳnh, nơi trú ngụ yêu thích của bụi bẩn. Vì thế nguyên tắc là luôn dọn dẹp sạch sẽ sàn nhà, dọn dẹp quần áp bẩn trên sàn, không để đồ đạc vương vãi và dùng máy hút bụi để làm sạch sàn nhà. Nếu bạn dùng thảm thì nên mang chúng ra ngoài để rũ sạch bụi bặm một tháng một lần cho dù bạn vẫn đều đặn hút bụi mỗi tuần đi chăng nữa.', N'AC0002', 1, CAST(N'2023-01-01T00:00:00.000' AS DateTime), N'https://i.pinimg.com/564x/ad/bb/c0/adbbc0349e5e5278192303c472019233.jpg')
INSERT [dbo].[Blog] ([BlogID], [CommentID], [Title], [SubTitle], [Content], [AccountID], [BlogCateID], [Time], [Image]) VALUES (N'Bl0006', NULL, N'Vì sao máy lạnh không mát? 5 nguyên nhân chính và cách xử lý', N'Máy lạnh không mát', N'Do nguồn điện không ổn định
Vào mùa hè, khi nhu cầu sử dụng điện tăng cao, năng suất mạnh thì sẽ thường xuyên xuất hiện nên tình trạng quá tải điện. Đây cũng là nguyên nhân hàng đầu khiến cho máy lạnh không mát, thậm chí là không thể hoạt động nếu điện áp quá yếu, không đáp ứng đủ mức điện năng của máy lạnh. Bạn nên lắp đặt thêm ổn áp để ổn định nguồn điện, đáp ứng kịp thời nhu cầu sử dụng năng lượng của gia đình bạn.

Do đặt sai chế độ làm mát của máy lạnh
Khi máy lạnh không mát thì nguyên nhân cũng có thể do bạn đặt sai chế độ hoặc bấm nhầm ký hiệu có tác dụng khác như sưởi, quạt,… trên thiết bị điều khiển. Trong trường hợp này, để điều hòa được chạy tốt và làm mát hiệu quả thì bạn nên bật đúng chế độ làm mát trên thiết bị điều khiển. Có một lưu ý nhỏ là để mát lạnh mát tốt nhất thì bạn nên bật điều hòa ở chế độ Cool thay vì chế độ Fan nhé.

Do hỏng tụ điện hoặc bảng mạch
Một lý do nữa để giải thích cho vấn đề vì sao máy lạnh không mát là việc tụ điện bị hỏng. Điều hòa nhà bạn nếu luôn duy trì ở mức 20 độ trong thời gian dài thì dễ làm cho máy bị quá tải, dẫn đến tụ điện hoặc bảng mạch bị hỏng. Nếu mọi người không kịp thời khắc phục sự cố này thì máy lạnh sẽ chỉ hoạt động như một chiếc quạt gió bình thường.', N'AC0001', 2, CAST(N'2020-09-28T00:00:00.000' AS DateTime), N'https://i.pinimg.com/564x/5d/4e/77/5d4e77fe3c742ffc1d441321b600cb9c.jpg')
INSERT [dbo].[Blog] ([BlogID], [CommentID], [Title], [SubTitle], [Content], [AccountID], [BlogCateID], [Time], [Image]) VALUES (N'Bl0007', NULL, N'Bơm ga tủ lạnh theo quy trình như thế nào? Có dễ không?', N'Tủ lạnh', N'
Bước 1: Chuẩn bị loại ga phù hợp để bơm cho tủ lạnh. Lưu ý rằng, loại ga mới phải đúng chủng loại với ga cũ của biết bị. Một số loại ga sử dụng phổ biến như: ga R134a, ga R12, ga R600, ga R404.

Bước 2: Thay thế chai ga mới ở vị trí của máy hút.

Bước 3: Từ từ mở van đồng hồ và van chai ga. Khi đó, lượng ga mới sẽ được nạp vào hệ thống. Bạn chờ cho đến khi mức áp suất tăng đến ngưỡng 35-45 PSI thi đóng van của chai ga.

Bước 4: Kiểm tra kỹ lại các mối hàn để tránh tình trạng rò rỉ ga. Đồng thời, bạn xem van đồng hồ đã đóng chặt hay chưa.

Bước 5: Kết nối nguồn điện của tủ lạnh và tiếp tục nạp ga cho đến khi đạt mức tiêu chuẩn theo quy định.', N'AC0002', 2, CAST(N'2018-01-28T00:00:00.000' AS DateTime), N'https://dienlanhoyasu.com/wp-content/uploads/2022/11/chi-phi-bom-gas-tu-lanh.jpg')
INSERT [dbo].[Blog] ([BlogID], [CommentID], [Title], [SubTitle], [Content], [AccountID], [BlogCateID], [Time], [Image]) VALUES (N'Bl0008', NULL, N'Ngăn mát tủ lạnh không mát – Nguyên nhân và cách khắc phục', N'Tủ lạnh', N'Lỏng phích cắm tủ lạnh
Để sử dụng tủ lạnh, bạn cần cắm dây nguồn của thiết bị vào ổ điện. Khi đó, nguồn điện lưới sẽ lưu thông và vận hành hoạt động của thiết bị. Nếu phích cắm tủ lạnh bị lỏng thì thiết bị sẽ ngừng hoạt động. Từ đó ngăn dưới tủ lạnh không có đủ hơi mát để bảo quản thực phẩm. Để xử lý sự cố này, bạn nên kiểm tra ổ cắm và thay linh kiện mới nếu cần thiết.

Dây kết nối với nguồn điện bị đứt
Tủ lạnh thường được bố trí trong phòng bếp của gia đình. Nếu bạn không vệ sinh phòng bếp sạch sẽ thì sẽ tạo điều kiện cho các loại vi khuẩn, côn trùng, chuột ẩn náu. Các loài sinh vật này có thể tấn công các thiết bị, trong đó có tủ lạnh. Khi đó, dây nguồn tủ lạnh sẽ bị đứt nên không thể kết nối ổn định với nguồn điện. Chính nguyên nhân này đã dẫn đến tình trạng ngăn mát tủ lạnh không mát. Lúc này, bạn chỉ cần rút phích cắm điện và nối lại dây ở vị trí bị đứt.

Lượng thực phẩm trong tủ bị quá tải
Khi chọn mua tủ lạnh, bạn cần quan tâm đến mức dung tích. Thiết bị có mức dung tích càng lớn thì khả năng chứa thực phẩm càng nhiều. Nếu bạn tích trữ quá tải thực phẩm sẽ gây cản trở quá trình lưu thông hơi lạnh. Khi đó, khả năng làm mát của thiết bị rất yếu. Để đảm bảo độ tươi ngon của thực phẩm, bạn nên mua thiết bị có mức dung tích phù hợp với nhu cầu sử dụng của gia đình.

', N'AC0003', 2, CAST(N'2023-06-08T00:00:00.000' AS DateTime), N'https://dienlanhoyasu.com/wp-content/uploads/2022/11/ngan-mat-tu-lanh-khong-mat.jpg')
INSERT [dbo].[Blog] ([BlogID], [CommentID], [Title], [SubTitle], [Content], [AccountID], [BlogCateID], [Time], [Image]) VALUES (N'Bl0009', NULL, N'Sửa máy giặt giá bao nhiêu? Dịch vụ sửa máy giặt chất lượng ', N'Máy giặc', N'Sửa máy giặt giá bao nhiêu?
Sửa máy giặt giá bao nhiêu? Đối với chi phí sửa máy giặt thì còn phải xét tới từng yếu tố cụ thể. Hiện nay, ở khắp các tỉnh đều có dịch vụ sửa chữa máy giặt tại nhà. Mỗi đơn vị sẽ đưa ra chi phí dịch vụ riêng cho từng vấn đề mà sản phẩm của khách hàng mắc phải. Ngoài yếu tố đơn vị sửa chữa thì chi phí sửa máy giặt cao hay thấp còn phụ thuộc vào nhiều yếu tố khác như:
– Dòng máy giặt: Thị trường có rất nhiều hãng, dòng máy giặt khác nhau. Mỗi dòng đều sẽ có thiết kế với cấu tạo khác nhau. Chính vì vậy, khi sửa chữa, bên dịch vụ cũng sẽ xét tới yếu tố này để đưa ra giá. Giá sửa máy giặt cửa trên chắc chắn sẽ khác với giá sửa dòng máy giặt thiết kế cửa dưới.
– Bộ phận hư hỏng của máy giặt: Sửa máy giặt giá bao nhiêu cũng phụ thuộc vào bộ phận bị hỏng của thiết bị. Mỗi bộ phận của máy giặt đều có cấu tạo riêng nên bộ phận phức tạp thì giá sửa chữa sẽ cao hơn.
– Tình trạng hư hỏng: Máy giặt hư hỏng cấp độ nhẹ thì giá sửa chữa sẽ nhẹ hơn. Ngược lại, hư càng nặng thì giá phải trả càng cao.', N'AC0004', 2, CAST(N'2023-06-01T00:00:00.000' AS DateTime), N'https://dienlanhoyasu.com/wp-content/uploads/2022/11/sua-may-giat-gia-bao-nhieu-oyasu.jpg')
INSERT [dbo].[Blog] ([BlogID], [CommentID], [Title], [SubTitle], [Content], [AccountID], [BlogCateID], [Time], [Image]) VALUES (N'Bl0010', NULL, N'Nguyên nhân và cách sửa máy giặt không quay hiệu quả', N'Máy giặc', N'Máy giặt quá tải trọng
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
INSERT [dbo].[Blog] ([BlogID], [CommentID], [Title], [SubTitle], [Content], [AccountID], [BlogCateID], [Time], [Image]) VALUES (N'Bl0011', NULL, N'Máy lạnh không lạnh sâu vì sao? 7 lý do chính và cách xử lý', N'Máy lạnh', N'Máy nén bị ngưng hoạt động
Một trong những bộ phận khá quan trọng của máy lạnh có thể kể tới là máy nén. Khi bộ phận này gặp sự cố thì khí được tỏa ra tại đây sẽ không được làm mát. Một số nguyên nhân chính gây nên tình trạng hư hỏng của máy nén là lỗi mạch, mất nguồn cấp,….Vì máy nén là bộ phận quan trọng nên mọi người không thể tự ý sửa chữa tại nhà, tránh làm tăng thêm chi phí sau này.

Máy lạnh hết gas
Máy lạnh không lạnh sâu cũng có thể do hết gas. Tình trạng này cũng được xem là những nguyên nhân phổ biến nhất. Hết gas ở máy lạnh có thể do dường ống dẫn gas bị hở hoặc hư hỏng. Mọi người nên nhanh chóng nạp ngay gas vào để máy lạnh hoạt động bình thường nhé.

Không khí không đủ khi đi qua dàn lạnh
Một nguyên nhân nữa khiến máy lạnh không lạnh sâu là do không khí đi qua dàn lạnh không đủ. Điều này có thể do vị trí lắp đặt thiết bị không phù hợp cho việc tiếp nhận không khí. Ngoài ra cũng có thể do tụ đề quạt của máy lạnh nhà bạn đã bị hỏng. Trong trường hợp này, mọi người nên nhanh chóng di chuyển ngay máy lạnh sang một điểm điểm khác. Đó phải là nơi không khí thông thoáng và không bị đồ vật nào cản trở.', N'AC0003', 2, CAST(N'2023-06-07T00:00:00.000' AS DateTime), N'https://dienlanhoyasu.com/wp-content/uploads/2022/11/ve-sinh-may-lanh-co-can-thiet-768x576.jpg')
INSERT [dbo].[Blog] ([BlogID], [CommentID], [Title], [SubTitle], [Content], [AccountID], [BlogCateID], [Time], [Image]) VALUES (N'Bl0012', NULL, N'Mẹo vệ sinh ghế SOFA tại nhà - đơn giản - hiệu quả', N'Vệ sinh sofa', N'Tuân thủ các bước làm sạch ghế sofa cơ bản dưới đây sẽ giúp ghế sofa nhà bạn luôn sạch đẹp, sáng bóng:

Bước 1 - Làm sạch cơ bản: Sử dụng máy hút bụi để hút sạch các bụi bẩn ra khỏi bề mặt ghế ( có thể sử dụng máy hút bụi cầm tay/ hoặc máy hút bụi mini ) .

Bước 2 - Làm sạch bằng dung dịch tẩy rửa phù hợp: Tùy thuộc vào các ký hiệu trên ghế để sử dụng các dung dịch tẩy rửa phù hợp ( khuyến khích nên demo thử ở 1 góc của sofa đối với các dung dịch tẩy rửa để xem mức độ phù hợp cũng như hạn chế các thiệt hại có thể xảy ra ).

Bước 3 - Làm khô: Sử dụng máy thổi khô ( loại này trên thị trường có rất nhiều giá cả dao động 2.500.000 - 4.000.000VNĐ một máy)  để làm khô hoặc chờ khô tự nhiên (áp dụng với mẫu sofa da).

Bước 4 - Thoa sản phẩm bảo dưỡng ( ghế da) : Thoa sản phẩm bảo dưỡng để bảo vệ ghế và giữ độ bóng đẹp, nâng cao tuổi thọ.

Các bước vệ sinh ghế sofa chung về cơ bản là bao gồm 4 bước: Hút bụi, làm sạch bằng dung dịch, làm khô và thoa dưỡng.', N'AC0002', 1, CAST(N'2023-06-05T00:00:00.000' AS DateTime), N'https://i.pinimg.com/564x/fe/e0/d1/fee0d1f70f1eadc5984e2634053edcc1.jpg')
INSERT [dbo].[Blog] ([BlogID], [CommentID], [Title], [SubTitle], [Content], [AccountID], [BlogCateID], [Time], [Image]) VALUES (N'Bl0013', NULL, N'
Cách vệ sinh tủ lạnh nhanh chóng chỉ trong 20 phút', N'Vệ sinh tủ lạnh', N'Vệ sinh tủ lạnh có cần thiết không?
Tủ lạnh là một trong những thiết bị điện tử cần được vệ sinh thường xuyên. Bởi chúng là nơi chứa thực phẩm, thức ăn, những thứ đều có hạn sử dụng ngắn. Nếu thức ăn bị hỏng, ôi thiu có thể sinh ra các vi khuẩn mầm bệnh gây hại cho sức khỏe. Tủ lạnh nếu quá bẩn có thể ảnh hưởng đến hiệu quả hoạt động, thậm chí là hao mòn điện năng tiêu thụ khiến chi phí tiền điện tăng cao. Cách vệ sinh tủ lạnh cũng khá đơn giản lại không mất nhiều thời gian nên việc vệ sinh thường xuyên và định kỳ là rất cần thiết. 

Bí kíp cách vệ sinh tủ lạnh hiệu quả chỉ với 20 phút
Nếu bạn vẫn còn chưa tin cách vệ sinh tủ lạnh chỉ trong 20 phút thì có thể xem các bước mô tả cụ thể dưới đây:

Bước 1: Chuẩn bị

Bước đầu tiên là chuẩn bị đầy đủ các vật dụng để tiến hành vệ sinh tủ lạnh. Bạn chỉ cần bỏ ra 2-3 phút để có thể chuẩn bị một cái chổi, khăn lau, miếng mút mềm, dung dịch tẩy rửa chuyên dụng, giấm ăn.

Bước 2: Lau chùi bên ngoài tủ lạnh

Bạn cần 2 phút để thực hiện quét dọn bụi bẩn và lau chùi sạch sẽ những khu vực bên ngoài tủ lạnh. Dưới chân đáy tủ lạnh là nơi chứa rất nhiều bụi bẩn, hãy dùng chùi và quét sạch chúng đi. Lấy khăn khô lau sạch xung quanh phần ngoài của tủ lạnh.', N'AC0004', 1, CAST(N'2023-06-03T00:00:00.000' AS DateTime), N'https://dienlanhoyasu.com/wp-content/uploads/2022/11/cach-ve-sinh-tu-lanh-nhanh-chong.jpg')
GO