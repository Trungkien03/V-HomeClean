USE [master]
GO
/****** Object:  Database [VHomeClean]    Script Date: 5/30/2023 9:30:19 AM ******/
CREATE DATABASE [VHomeClean]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'VHomeClean', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\VHomeClean.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'VHomeClean_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\VHomeClean_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [VHomeClean] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [VHomeClean].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [VHomeClean] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [VHomeClean] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [VHomeClean] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [VHomeClean] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [VHomeClean] SET ARITHABORT OFF 
GO
ALTER DATABASE [VHomeClean] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [VHomeClean] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [VHomeClean] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [VHomeClean] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [VHomeClean] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [VHomeClean] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [VHomeClean] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [VHomeClean] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [VHomeClean] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [VHomeClean] SET  ENABLE_BROKER 
GO
ALTER DATABASE [VHomeClean] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [VHomeClean] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [VHomeClean] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [VHomeClean] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [VHomeClean] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [VHomeClean] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [VHomeClean] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [VHomeClean] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [VHomeClean] SET  MULTI_USER 
GO
ALTER DATABASE [VHomeClean] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [VHomeClean] SET DB_CHAINING OFF 
GO
ALTER DATABASE [VHomeClean] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [VHomeClean] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [VHomeClean] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [VHomeClean] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'VHomeClean', N'ON'
GO
ALTER DATABASE [VHomeClean] SET QUERY_STORE = OFF
GO
USE [VHomeClean]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 5/30/2023 9:30:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[AccountID] [nvarchar](20) NOT NULL,
	[Email] [nvarchar](255) NOT NULL,
	[Password] [nvarchar](255) NOT NULL,
	[FullName] [nvarchar](255) NOT NULL,
	[Address] [nvarchar](255) NOT NULL,
	[Phone] [nvarchar](20) NOT NULL,
	[RoleID] [int] NOT NULL,
	[Gender] [nvarchar](20) NOT NULL,
	[DateOfBirth] [datetime] NOT NULL,
	[Status] [bit] NOT NULL,
	[Image] [nvarchar](max) NOT NULL,
	[Salary] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Blog]    Script Date: 5/30/2023 9:30:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blog](
	[BlogID] [nvarchar](20) NOT NULL,
	[CommentID] [int] NOT NULL,
	[Content] [nvarchar](max) NOT NULL,
	[Author] [nvarchar](100) NOT NULL,
	[Title] [nvarchar](255) NOT NULL,
	[BlogCateID] [int] NOT NULL,
	[Time] [datetime] NOT NULL,
	[Image] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[BlogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BlogCate]    Script Date: 5/30/2023 9:30:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BlogCate](
	[BlogCateID] [int] NOT NULL,
	[CateName] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[BlogCateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Booking]    Script Date: 5/30/2023 9:30:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Booking](
	[BookingID] [int] IDENTITY(1,1) NOT NULL,
	[AccountID] [nvarchar](20) NOT NULL,
	[BookingStatus] [bit] NOT NULL,
	[StaffID] [nvarchar](20) NULL,
	[ServiceID] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[BookingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BookingDetail]    Script Date: 5/30/2023 9:30:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookingDetail](
	[BookingDetail_ID] [int] IDENTITY(1,1) NOT NULL,
	[BookingID] [int] NOT NULL,
	[TotalPrice] [money] NOT NULL,
	[BookingDate] [date] NOT NULL,
	[BookingAddress] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[BookingDetail_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CateService]    Script Date: 5/30/2023 9:30:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CateService](
	[CateID] [int] NOT NULL,
	[CateName] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 5/30/2023 9:30:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[CommentID] [int] IDENTITY(1,1) NOT NULL,
	[Message] [nvarchar](max) NOT NULL,
	[Time] [datetime] NOT NULL,
	[AccountID] [nvarchar](20) NOT NULL,
	[BlogID] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CommentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 5/30/2023 9:30:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[FeedbackID] [int] IDENTITY(1,1) NOT NULL,
	[Date] [date] NOT NULL,
	[Feedback_Text] [nvarchar](max) NOT NULL,
	[Rating] [int] NOT NULL,
	[AccountID] [nvarchar](20) NOT NULL,
	[BookingID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[FeedbackID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoleAccount]    Script Date: 5/30/2023 9:30:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleAccount](
	[RoleID] [int] NOT NULL,
	[RoleName] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Service]    Script Date: 5/30/2023 9:30:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service](
	[ServiceID] [nvarchar](20) NOT NULL,
	[ServiceName] [nvarchar](255) NOT NULL,
	[Price] [money] NOT NULL,
	[ServiceDetail] [nvarchar](max) NOT NULL,
	[CateID] [int] NOT NULL,
	[Image] [nvarchar](255) NOT NULL,
	[Status] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ServiceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[CateService] ([CateID], [CateName]) VALUES (1, N'Dịch vụ vệ sinh')
INSERT [dbo].[CateService] ([CateID], [CateName]) VALUES (2, N'Dịch vụ sửa chữa')
INSERT [dbo].[CateService] ([CateID], [CateName]) VALUES (3, N'Dịch vụ giúp việc')
INSERT [dbo].[CateService] ([CateID], [CateName]) VALUES (4, N'Dịch vụ chăm sóc')
GO
INSERT [dbo].[RoleAccount] ([RoleID], [RoleName]) VALUES (1, N'ADMIN')
INSERT [dbo].[RoleAccount] ([RoleID], [RoleName]) VALUES (2, N'STAFF')
INSERT [dbo].[RoleAccount] ([RoleID], [RoleName]) VALUES (3, N'MANAGER')
INSERT [dbo].[RoleAccount] ([RoleID], [RoleName]) VALUES (4, N'CUSTOMER')
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
ALTER TABLE [dbo].[Account]  WITH CHECK ADD FOREIGN KEY([RoleID])
REFERENCES [dbo].[RoleAccount] ([RoleID])
GO
ALTER TABLE [dbo].[Blog]  WITH CHECK ADD FOREIGN KEY([BlogCateID])
REFERENCES [dbo].[BlogCate] ([BlogCateID])
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD FOREIGN KEY([AccountID])
REFERENCES [dbo].[Account] ([AccountID])
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD FOREIGN KEY([ServiceID])
REFERENCES [dbo].[Service] ([ServiceID])
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD FOREIGN KEY([StaffID])
REFERENCES [dbo].[Account] ([AccountID])
GO
ALTER TABLE [dbo].[BookingDetail]  WITH CHECK ADD FOREIGN KEY([BookingID])
REFERENCES [dbo].[Booking] ([BookingID])
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD FOREIGN KEY([AccountID])
REFERENCES [dbo].[Account] ([AccountID])
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD FOREIGN KEY([BlogID])
REFERENCES [dbo].[Blog] ([BlogID])
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD FOREIGN KEY([AccountID])
REFERENCES [dbo].[Account] ([AccountID])
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD FOREIGN KEY([BookingID])
REFERENCES [dbo].[Booking] ([BookingID])
GO
ALTER TABLE [dbo].[Service]  WITH CHECK ADD FOREIGN KEY([CateID])
REFERENCES [dbo].[CateService] ([CateID])
GO
USE [master]
GO
ALTER DATABASE [VHomeClean] SET  READ_WRITE 
GO
