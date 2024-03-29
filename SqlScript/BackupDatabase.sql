USE [master]
GO
/****** Object:  Database [StockManagementDB]    Script Date: 7/7/2019 3:33:58 AM ******/
CREATE DATABASE [StockManagementDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'StockManagementDB', FILENAME = N'c:\Program Files (x86)\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\StockManagementDB.mdf' , SIZE = 3136KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'StockManagementDB_log', FILENAME = N'c:\Program Files (x86)\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\StockManagementDB_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [StockManagementDB] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [StockManagementDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [StockManagementDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [StockManagementDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [StockManagementDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [StockManagementDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [StockManagementDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [StockManagementDB] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [StockManagementDB] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [StockManagementDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [StockManagementDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [StockManagementDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [StockManagementDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [StockManagementDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [StockManagementDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [StockManagementDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [StockManagementDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [StockManagementDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [StockManagementDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [StockManagementDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [StockManagementDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [StockManagementDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [StockManagementDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [StockManagementDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [StockManagementDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [StockManagementDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [StockManagementDB] SET  MULTI_USER 
GO
ALTER DATABASE [StockManagementDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [StockManagementDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [StockManagementDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [StockManagementDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [StockManagementDB]
GO
/****** Object:  Table [dbo].[Categorys]    Script Date: 7/7/2019 3:33:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categorys](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Companys]    Script Date: 7/7/2019 3:33:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Companys](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Items]    Script Date: 7/7/2019 3:33:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Items](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ItemName] [nvarchar](255) NULL,
	[ReOrderQuantity] [int] NULL,
	[CompanyID] [int] NULL,
	[CategoryID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Stocks]    Script Date: 7/7/2019 3:33:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stocks](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StockDate] [datetime] NULL,
	[StockStatus] [nvarchar](50) NULL,
	[Quantity] [int] NULL,
	[ItemID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 7/7/2019 3:33:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](255) NULL,
	[Password] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[GridView]    Script Date: 7/7/2019 3:33:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[GridView]
as
select ss.Id as StockId, ss.ItemID,it.CompanyID,it.CategoryID, it.[ItemName],ss.Quantity,ss.StockDate,ss.StockStatus from [dbo].[Stocks] ss
inner join [dbo].[Items] it
on it.Id=ss.ItemID
GO
/****** Object:  View [dbo].[ItemsView]    Script Date: 7/7/2019 3:33:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[ItemsView] 
as
select it.Id, it.ItemName , it.ReOrderQuantity ,it.CompanyId ,cm.CompanyName ,it.CategoryId ,ctg.CategoryName  from Companys cm
inner join items it on it.CompanyID = cm.id
inner join Categorys ctg on ctg.Id = it.CategoryID
GO
/****** Object:  View [dbo].[StockReport]    Script Date: 7/7/2019 3:33:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[StockReport] as
select it.Id as ItemId,ItemName,co.CompanyName,ca.CategoryName,ca.Id,ss.Quantity,ss.StockDate,ss.StockStatus from Stocks ss
inner join Items it on ss.ItemID= it.Id
inner  join Companys co
on it.CompanyID=co.Id 
inner join Categorys ca on ca.Id = it.CategoryID
GO
SET IDENTITY_INSERT [dbo].[Categorys] ON 

INSERT [dbo].[Categorys] ([Id], [CategoryName]) VALUES (1, N'Food')
INSERT [dbo].[Categorys] ([Id], [CategoryName]) VALUES (2, N'Electonics')
INSERT [dbo].[Categorys] ([Id], [CategoryName]) VALUES (3, N'Health')
INSERT [dbo].[Categorys] ([Id], [CategoryName]) VALUES (4, N'Low')
INSERT [dbo].[Categorys] ([Id], [CategoryName]) VALUES (5, N'High')
INSERT [dbo].[Categorys] ([Id], [CategoryName]) VALUES (6, N'Mid')
INSERT [dbo].[Categorys] ([Id], [CategoryName]) VALUES (7, N'pesa')
INSERT [dbo].[Categorys] ([Id], [CategoryName]) VALUES (8, N'ha ha')
SET IDENTITY_INSERT [dbo].[Categorys] OFF
SET IDENTITY_INSERT [dbo].[Companys] ON 

INSERT [dbo].[Companys] ([Id], [CompanyName]) VALUES (1, N'Azolve')
INSERT [dbo].[Companys] ([Id], [CompanyName]) VALUES (2, N'Tiger IT')
INSERT [dbo].[Companys] ([Id], [CompanyName]) VALUES (3, N'Brain Station 24')
INSERT [dbo].[Companys] ([Id], [CompanyName]) VALUES (4, N'Google')
INSERT [dbo].[Companys] ([Id], [CompanyName]) VALUES (5, N'Microsoft window')
SET IDENTITY_INSERT [dbo].[Companys] OFF
SET IDENTITY_INSERT [dbo].[Items] ON 

INSERT [dbo].[Items] ([Id], [ItemName], [ReOrderQuantity], [CompanyID], [CategoryID]) VALUES (1, N'laptop', 20, 1, 1)
INSERT [dbo].[Items] ([Id], [ItemName], [ReOrderQuantity], [CompanyID], [CategoryID]) VALUES (2, N'laptop', 20, 1, 2)
INSERT [dbo].[Items] ([Id], [ItemName], [ReOrderQuantity], [CompanyID], [CategoryID]) VALUES (3, N'laptop', 20, 2, 1)
INSERT [dbo].[Items] ([Id], [ItemName], [ReOrderQuantity], [CompanyID], [CategoryID]) VALUES (4, N'laptop', 20, 2, 3)
INSERT [dbo].[Items] ([Id], [ItemName], [ReOrderQuantity], [CompanyID], [CategoryID]) VALUES (5, N'as', 10, 1, 1)
INSERT [dbo].[Items] ([Id], [ItemName], [ReOrderQuantity], [CompanyID], [CategoryID]) VALUES (6, N'atm', 20, 1, 1)
INSERT [dbo].[Items] ([Id], [ItemName], [ReOrderQuantity], [CompanyID], [CategoryID]) VALUES (7, N'atm', 20, 1, 3)
INSERT [dbo].[Items] ([Id], [ItemName], [ReOrderQuantity], [CompanyID], [CategoryID]) VALUES (8, N'hi', 20, 1, 1)
INSERT [dbo].[Items] ([Id], [ItemName], [ReOrderQuantity], [CompanyID], [CategoryID]) VALUES (9, N'asdasd', 10, 1, 1)
INSERT [dbo].[Items] ([Id], [ItemName], [ReOrderQuantity], [CompanyID], [CategoryID]) VALUES (10, N'dik', 0, 1, 1)
INSERT [dbo].[Items] ([Id], [ItemName], [ReOrderQuantity], [CompanyID], [CategoryID]) VALUES (11, N'asa', 0, 1, 2)
INSERT [dbo].[Items] ([Id], [ItemName], [ReOrderQuantity], [CompanyID], [CategoryID]) VALUES (12, N'abc', 0, 5, 6)
SET IDENTITY_INSERT [dbo].[Items] OFF
SET IDENTITY_INSERT [dbo].[Stocks] ON 

INSERT [dbo].[Stocks] ([Id], [StockDate], [StockStatus], [Quantity], [ItemID]) VALUES (1, CAST(0x0000AA8100000000 AS DateTime), N'StockIn', 20, 1)
INSERT [dbo].[Stocks] ([Id], [StockDate], [StockStatus], [Quantity], [ItemID]) VALUES (2, CAST(0x0000AA8100000000 AS DateTime), N'StockIn', 20, 2)
INSERT [dbo].[Stocks] ([Id], [StockDate], [StockStatus], [Quantity], [ItemID]) VALUES (3, CAST(0x0000AA8100000000 AS DateTime), N'StockIn', 30, 2)
INSERT [dbo].[Stocks] ([Id], [StockDate], [StockStatus], [Quantity], [ItemID]) VALUES (4, CAST(0x0000AA8100000000 AS DateTime), N'StockIn', 30, 2)
INSERT [dbo].[Stocks] ([Id], [StockDate], [StockStatus], [Quantity], [ItemID]) VALUES (5, CAST(0x0000AA8100000000 AS DateTime), N'StockIn', 30, 2)
INSERT [dbo].[Stocks] ([Id], [StockDate], [StockStatus], [Quantity], [ItemID]) VALUES (6, CAST(0x0000AA8100000000 AS DateTime), N'StockIn', 30, 2)
INSERT [dbo].[Stocks] ([Id], [StockDate], [StockStatus], [Quantity], [ItemID]) VALUES (8, CAST(0x0000AA8100000000 AS DateTime), N'Sold', 1, 1)
INSERT [dbo].[Stocks] ([Id], [StockDate], [StockStatus], [Quantity], [ItemID]) VALUES (9, CAST(0x0000AA8100000000 AS DateTime), N'Sold', 1, 6)
INSERT [dbo].[Stocks] ([Id], [StockDate], [StockStatus], [Quantity], [ItemID]) VALUES (12, CAST(0x0000AA8100000000 AS DateTime), N'StockIn', 10, 1)
INSERT [dbo].[Stocks] ([Id], [StockDate], [StockStatus], [Quantity], [ItemID]) VALUES (16, CAST(0x0000AA8100000000 AS DateTime), N'StockIn', 50, 1)
INSERT [dbo].[Stocks] ([Id], [StockDate], [StockStatus], [Quantity], [ItemID]) VALUES (17, CAST(0x0000AA8100000000 AS DateTime), N'Sold', 1, 1)
INSERT [dbo].[Stocks] ([Id], [StockDate], [StockStatus], [Quantity], [ItemID]) VALUES (18, CAST(0x0000AA8100000000 AS DateTime), N'Sold', 10, 1)
INSERT [dbo].[Stocks] ([Id], [StockDate], [StockStatus], [Quantity], [ItemID]) VALUES (20, CAST(0x0000AA8200000000 AS DateTime), N'Sold', 10, 3)
INSERT [dbo].[Stocks] ([Id], [StockDate], [StockStatus], [Quantity], [ItemID]) VALUES (21, CAST(0x0000AA8200000000 AS DateTime), N'Sold', 10, 3)
INSERT [dbo].[Stocks] ([Id], [StockDate], [StockStatus], [Quantity], [ItemID]) VALUES (22, CAST(0x0000AA8200000000 AS DateTime), N'Sold', 10, 1)
INSERT [dbo].[Stocks] ([Id], [StockDate], [StockStatus], [Quantity], [ItemID]) VALUES (23, CAST(0x0000AA8200000000 AS DateTime), N'Sold', 5, 1)
INSERT [dbo].[Stocks] ([Id], [StockDate], [StockStatus], [Quantity], [ItemID]) VALUES (24, CAST(0x0000AA8200000000 AS DateTime), N'Sold', 70, 1)
INSERT [dbo].[Stocks] ([Id], [StockDate], [StockStatus], [Quantity], [ItemID]) VALUES (25, CAST(0x0000AA8300000000 AS DateTime), N'StockIn', 90, 1)
INSERT [dbo].[Stocks] ([Id], [StockDate], [StockStatus], [Quantity], [ItemID]) VALUES (26, CAST(0x0000AA8300000000 AS DateTime), N'StockIn', 10, 1)
INSERT [dbo].[Stocks] ([Id], [StockDate], [StockStatus], [Quantity], [ItemID]) VALUES (27, CAST(0x0000AA8300000000 AS DateTime), N'StockIn', 10, 1)
INSERT [dbo].[Stocks] ([Id], [StockDate], [StockStatus], [Quantity], [ItemID]) VALUES (28, CAST(0x0000AA8300000000 AS DateTime), N'StockIn', 10, 1)
INSERT [dbo].[Stocks] ([Id], [StockDate], [StockStatus], [Quantity], [ItemID]) VALUES (29, CAST(0x0000AA8300000000 AS DateTime), N'StockIn', 2, 7)
INSERT [dbo].[Stocks] ([Id], [StockDate], [StockStatus], [Quantity], [ItemID]) VALUES (30, CAST(0x0000AA8300000000 AS DateTime), N'Sold', 5, 2)
SET IDENTITY_INSERT [dbo].[Stocks] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [UserName], [Password]) VALUES (1, N'Admin', N'Admin')
SET IDENTITY_INSERT [dbo].[Users] OFF
ALTER TABLE [dbo].[Items]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categorys] ([Id])
GO
ALTER TABLE [dbo].[Items]  WITH CHECK ADD FOREIGN KEY([CompanyID])
REFERENCES [dbo].[Companys] ([Id])
GO
ALTER TABLE [dbo].[Stocks]  WITH CHECK ADD FOREIGN KEY([ItemID])
REFERENCES [dbo].[Items] ([Id])
GO
USE [master]
GO
ALTER DATABASE [StockManagementDB] SET  READ_WRITE 
GO
