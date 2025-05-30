USE [master]
GO
/****** Object:  Database [MatieMarushkina421]    Script Date: 19.04.2025 16:09:36 ******/
CREATE DATABASE [MatieMarushkina421]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MatieMarushkina421', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SERV1215\MSSQL\DATA\MatieMarushkina421.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
 LOG ON 
( NAME = N'MatieMarushkina421_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SERV1215\MSSQL\DATA\MatieMarushkina421_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [MatieMarushkina421] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MatieMarushkina421].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MatieMarushkina421] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MatieMarushkina421] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MatieMarushkina421] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MatieMarushkina421] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MatieMarushkina421] SET ARITHABORT OFF 
GO
ALTER DATABASE [MatieMarushkina421] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MatieMarushkina421] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MatieMarushkina421] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MatieMarushkina421] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MatieMarushkina421] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MatieMarushkina421] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MatieMarushkina421] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MatieMarushkina421] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MatieMarushkina421] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MatieMarushkina421] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MatieMarushkina421] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MatieMarushkina421] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MatieMarushkina421] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MatieMarushkina421] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MatieMarushkina421] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MatieMarushkina421] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MatieMarushkina421] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MatieMarushkina421] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MatieMarushkina421] SET  MULTI_USER 
GO
ALTER DATABASE [MatieMarushkina421] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MatieMarushkina421] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MatieMarushkina421] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MatieMarushkina421] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [MatieMarushkina421] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MatieMarushkina421] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'MatieMarushkina421', N'ON'
GO
ALTER DATABASE [MatieMarushkina421] SET QUERY_STORE = OFF
GO
USE [MatieMarushkina421]
GO
/****** Object:  User [user01]    Script Date: 19.04.2025 16:09:37 ******/
CREATE USER [user01] FOR LOGIN [user01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Appointments]    Script Date: 19.04.2025 16:09:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Appointments](
	[ID] [int] NOT NULL,
	[UserId] [int] NULL,
	[Date] [datetime] NULL,
	[MAsterServiceID] [int] NULL,
 CONSTRAINT [PK_Appointments] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cash]    Script Date: 19.04.2025 16:09:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cash](
	[ID] [int] NOT NULL,
	[UserID] [int] NULL,
	[Count] [decimal](18, 0) NULL,
 CONSTRAINT [PK_Cash] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 19.04.2025 16:09:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MasterService]    Script Date: 19.04.2025 16:09:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MasterService](
	[ID] [int] NOT NULL,
	[UserId] [int] NULL,
	[ServiceID] [int] NULL,
 CONSTRAINT [PK_MasterService] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rang]    Script Date: 19.04.2025 16:09:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rang](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Rang] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reviews]    Script Date: 19.04.2025 16:09:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reviews](
	[ID] [int] NOT NULL,
	[UserID] [int] NULL,
	[MasterSersice] [int] NULL,
	[Rating] [decimal](18, 2) NULL,
	[Description] [nvarchar](50) NULL,
 CONSTRAINT [PK_Reviews] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 19.04.2025 16:09:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Services]    Script Date: 19.04.2025 16:09:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Services](
	[ID] [int] NOT NULL,
	[CategoriID] [int] NULL,
	[NAme] [nvarchar](50) NULL,
	[Price] [decimal](18, 2) NULL,
	[LastEdit] [datetime] NULL,
	[VidId] [int] NULL,
	[Image] [nvarchar](255) NULL,
 CONSTRAINT [PK_Services] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 19.04.2025 16:09:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Login] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[RoleID] [int] NULL,
	[RangID] [int] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vid]    Script Date: 19.04.2025 16:09:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vid](
	[ID] [int] NOT NULL,
	[NAme] [nvarchar](50) NULL,
 CONSTRAINT [PK_Vid] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Appointments] ([ID], [UserId], [Date], [MAsterServiceID]) VALUES (1, 1, CAST(N'2025-02-01T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[Appointments] ([ID], [UserId], [Date], [MAsterServiceID]) VALUES (2, 5, CAST(N'2025-02-02T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[Appointments] ([ID], [UserId], [Date], [MAsterServiceID]) VALUES (3, 6, CAST(N'2025-02-03T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[Appointments] ([ID], [UserId], [Date], [MAsterServiceID]) VALUES (4, 7, CAST(N'2025-02-04T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Appointments] ([ID], [UserId], [Date], [MAsterServiceID]) VALUES (5, 8, CAST(N'2025-02-05T00:00:00.000' AS DateTime), 6)
INSERT [dbo].[Appointments] ([ID], [UserId], [Date], [MAsterServiceID]) VALUES (6, 9, CAST(N'2025-02-06T00:00:00.000' AS DateTime), 7)
INSERT [dbo].[Appointments] ([ID], [UserId], [Date], [MAsterServiceID]) VALUES (7, 10, CAST(N'2025-02-07T00:00:00.000' AS DateTime), 8)
INSERT [dbo].[Appointments] ([ID], [UserId], [Date], [MAsterServiceID]) VALUES (8, 3, CAST(N'2025-02-08T00:00:00.000' AS DateTime), 9)
INSERT [dbo].[Appointments] ([ID], [UserId], [Date], [MAsterServiceID]) VALUES (9, 2, CAST(N'2025-02-09T00:00:00.000' AS DateTime), 10)
INSERT [dbo].[Appointments] ([ID], [UserId], [Date], [MAsterServiceID]) VALUES (10, 4, CAST(N'2025-02-10T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[Cash] ([ID], [UserID], [Count]) VALUES (1, 1, CAST(2030 AS Decimal(18, 0)))
INSERT [dbo].[Cash] ([ID], [UserID], [Count]) VALUES (2, 5, CAST(50 AS Decimal(18, 0)))
INSERT [dbo].[Cash] ([ID], [UserID], [Count]) VALUES (3, 6, CAST(446 AS Decimal(18, 0)))
INSERT [dbo].[Cash] ([ID], [UserID], [Count]) VALUES (4, 7, CAST(1234 AS Decimal(18, 0)))
INSERT [dbo].[Cash] ([ID], [UserID], [Count]) VALUES (5, 8, CAST(444 AS Decimal(18, 0)))
INSERT [dbo].[Cash] ([ID], [UserID], [Count]) VALUES (6, 9, CAST(555 AS Decimal(18, 0)))
INSERT [dbo].[Cash] ([ID], [UserID], [Count]) VALUES (7, 10, CAST(236 AS Decimal(18, 0)))
INSERT [dbo].[Cash] ([ID], [UserID], [Count]) VALUES (8, 2, CAST(5214 AS Decimal(18, 0)))
INSERT [dbo].[Cash] ([ID], [UserID], [Count]) VALUES (9, 3, CAST(12 AS Decimal(18, 0)))
INSERT [dbo].[Cash] ([ID], [UserID], [Count]) VALUES (10, 4, CAST(1444 AS Decimal(18, 0)))
GO
INSERT [dbo].[Category] ([ID], [Name]) VALUES (1, N'Аниме')
INSERT [dbo].[Category] ([ID], [Name]) VALUES (2, N'Новый год')
INSERT [dbo].[Category] ([ID], [Name]) VALUES (3, N'Хэллоуин')
INSERT [dbo].[Category] ([ID], [Name]) VALUES (4, N'Киберпанк')
INSERT [dbo].[Category] ([ID], [Name]) VALUES (5, N'Нуар')
GO
INSERT [dbo].[MasterService] ([ID], [UserId], [ServiceID]) VALUES (1, 4, 1)
INSERT [dbo].[MasterService] ([ID], [UserId], [ServiceID]) VALUES (2, 4, 2)
INSERT [dbo].[MasterService] ([ID], [UserId], [ServiceID]) VALUES (3, 6, 3)
INSERT [dbo].[MasterService] ([ID], [UserId], [ServiceID]) VALUES (4, 4, 4)
INSERT [dbo].[MasterService] ([ID], [UserId], [ServiceID]) VALUES (5, 8, 5)
INSERT [dbo].[MasterService] ([ID], [UserId], [ServiceID]) VALUES (6, 4, 6)
INSERT [dbo].[MasterService] ([ID], [UserId], [ServiceID]) VALUES (7, 8, 7)
INSERT [dbo].[MasterService] ([ID], [UserId], [ServiceID]) VALUES (8, 6, 8)
INSERT [dbo].[MasterService] ([ID], [UserId], [ServiceID]) VALUES (9, 4, 9)
INSERT [dbo].[MasterService] ([ID], [UserId], [ServiceID]) VALUES (10, 4, 10)
GO
INSERT [dbo].[Rang] ([ID], [Name]) VALUES (1, N'Мастер')
INSERT [dbo].[Rang] ([ID], [Name]) VALUES (2, N'Мастер ПРО')
INSERT [dbo].[Rang] ([ID], [Name]) VALUES (3, N'Профессионал')
GO
INSERT [dbo].[Reviews] ([ID], [UserID], [MasterSersice], [Rating], [Description]) VALUES (1, 1, 1, NULL, NULL)
INSERT [dbo].[Reviews] ([ID], [UserID], [MasterSersice], [Rating], [Description]) VALUES (2, 5, 2, NULL, NULL)
INSERT [dbo].[Reviews] ([ID], [UserID], [MasterSersice], [Rating], [Description]) VALUES (3, 6, 3, NULL, NULL)
INSERT [dbo].[Reviews] ([ID], [UserID], [MasterSersice], [Rating], [Description]) VALUES (4, 7, 4, NULL, NULL)
INSERT [dbo].[Reviews] ([ID], [UserID], [MasterSersice], [Rating], [Description]) VALUES (5, 8, 5, NULL, NULL)
INSERT [dbo].[Reviews] ([ID], [UserID], [MasterSersice], [Rating], [Description]) VALUES (6, 9, 6, NULL, NULL)
INSERT [dbo].[Reviews] ([ID], [UserID], [MasterSersice], [Rating], [Description]) VALUES (7, 10, 7, NULL, NULL)
INSERT [dbo].[Reviews] ([ID], [UserID], [MasterSersice], [Rating], [Description]) VALUES (8, 3, 8, NULL, NULL)
INSERT [dbo].[Reviews] ([ID], [UserID], [MasterSersice], [Rating], [Description]) VALUES (9, 2, 9, NULL, NULL)
INSERT [dbo].[Reviews] ([ID], [UserID], [MasterSersice], [Rating], [Description]) VALUES (10, 4, 10, NULL, NULL)
GO
INSERT [dbo].[Role] ([ID], [Name]) VALUES (1, N'Пользователь')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (2, N'Модератор')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (3, N'Администратор')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (4, N'Мастер')
GO
INSERT [dbo].[Services] ([ID], [CategoriID], [NAme], [Price], [LastEdit], [VidId], [Image]) VALUES (1, 1, N'Услуга1', CAST(230.00 AS Decimal(18, 2)), CAST(N'2023-12-12T00:00:00.000' AS DateTime), 1, N'pr\Кастом\Pr1')
INSERT [dbo].[Services] ([ID], [CategoriID], [NAme], [Price], [LastEdit], [VidId], [Image]) VALUES (2, 2, N'Услуга2', CAST(345.00 AS Decimal(18, 2)), CAST(N'2023-12-13T00:00:00.000' AS DateTime), 2, NULL)
INSERT [dbo].[Services] ([ID], [CategoriID], [NAme], [Price], [LastEdit], [VidId], [Image]) VALUES (3, 3, N'Услуга3', CAST(678.00 AS Decimal(18, 2)), CAST(N'2023-12-14T00:00:00.000' AS DateTime), 1, N'pr\Кастом\Pr3')
INSERT [dbo].[Services] ([ID], [CategoriID], [NAme], [Price], [LastEdit], [VidId], [Image]) VALUES (4, 4, N'Услуга4', CAST(654.00 AS Decimal(18, 2)), CAST(N'2023-12-15T00:00:00.000' AS DateTime), 2, NULL)
INSERT [dbo].[Services] ([ID], [CategoriID], [NAme], [Price], [LastEdit], [VidId], [Image]) VALUES (5, 5, N'Услуга5', CAST(333.00 AS Decimal(18, 2)), CAST(N'2023-12-16T00:00:00.000' AS DateTime), 1, N'pr\Кастом\Pr2')
INSERT [dbo].[Services] ([ID], [CategoriID], [NAme], [Price], [LastEdit], [VidId], [Image]) VALUES (6, 1, N'Услуга6', CAST(890.00 AS Decimal(18, 2)), CAST(N'2023-12-17T00:00:00.000' AS DateTime), 2, NULL)
INSERT [dbo].[Services] ([ID], [CategoriID], [NAme], [Price], [LastEdit], [VidId], [Image]) VALUES (7, 2, N'Услуга7', CAST(9000.00 AS Decimal(18, 2)), CAST(N'2023-12-18T00:00:00.000' AS DateTime), 2, N'pr\Косплей\KL1')
INSERT [dbo].[Services] ([ID], [CategoriID], [NAme], [Price], [LastEdit], [VidId], [Image]) VALUES (8, 3, N'Услуга8', CAST(89.00 AS Decimal(18, 2)), CAST(N'2023-12-19T00:00:00.000' AS DateTime), 2, N'pr\Косплей\KL2')
INSERT [dbo].[Services] ([ID], [CategoriID], [NAme], [Price], [LastEdit], [VidId], [Image]) VALUES (9, 4, N'Услуга9', CAST(7567.00 AS Decimal(18, 2)), CAST(N'2023-12-20T00:00:00.000' AS DateTime), 2, N'pr\Косплей\KL7')
INSERT [dbo].[Services] ([ID], [CategoriID], [NAme], [Price], [LastEdit], [VidId], [Image]) VALUES (10, 5, N'Услуга10', CAST(4000.00 AS Decimal(18, 2)), CAST(N'2023-12-21T00:00:00.000' AS DateTime), 2, NULL)
GO
INSERT [dbo].[Users] ([ID], [Name], [Login], [Password], [RoleID], [RangID]) VALUES (1, N'Иванов Иван Иванович', N'User1', N'1', 1, NULL)
INSERT [dbo].[Users] ([ID], [Name], [Login], [Password], [RoleID], [RangID]) VALUES (2, N'Смирнова  Анна Иоановна', N'Moder1', N'2', 2, NULL)
INSERT [dbo].[Users] ([ID], [Name], [Login], [Password], [RoleID], [RangID]) VALUES (3, N'Петров Денис Олегович', N'Admin1', N'3', 3, NULL)
INSERT [dbo].[Users] ([ID], [Name], [Login], [Password], [RoleID], [RangID]) VALUES (4, N'Козлов Илья Львович', N'Master1', N'4', 4, 2)
INSERT [dbo].[Users] ([ID], [Name], [Login], [Password], [RoleID], [RangID]) VALUES (5, N'Новиков Максим Александрович', N'User2', N'5', 1, NULL)
INSERT [dbo].[Users] ([ID], [Name], [Login], [Password], [RoleID], [RangID]) VALUES (6, N' Волкова Елизавета Дмитриевна', N'Master2', N'6', 1, 1)
INSERT [dbo].[Users] ([ID], [Name], [Login], [Password], [RoleID], [RangID]) VALUES (7, N'Петров Кирилл Петрович', N'Admin2', N'7', 1, NULL)
INSERT [dbo].[Users] ([ID], [Name], [Login], [Password], [RoleID], [RangID]) VALUES (8, N'Петрова Петра Петровна', N'Master2', N'8', 1, 3)
INSERT [dbo].[Users] ([ID], [Name], [Login], [Password], [RoleID], [RangID]) VALUES (9, N'Громов Гром громович', N'User3', N'9', 1, NULL)
INSERT [dbo].[Users] ([ID], [Name], [Login], [Password], [RoleID], [RangID]) VALUES (10, N'Сидоров Сергей Олегович', N'3', N'11', 1, NULL)
GO
INSERT [dbo].[Vid] ([ID], [NAme]) VALUES (1, N'Кастомизация')
INSERT [dbo].[Vid] ([ID], [NAme]) VALUES (2, N'Косплей')
GO
ALTER TABLE [dbo].[Appointments]  WITH CHECK ADD  CONSTRAINT [FK_Appointments_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[Appointments] CHECK CONSTRAINT [FK_Appointments_Users]
GO
ALTER TABLE [dbo].[Cash]  WITH CHECK ADD  CONSTRAINT [FK_Cash_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[Cash] CHECK CONSTRAINT [FK_Cash_Users]
GO
ALTER TABLE [dbo].[MasterService]  WITH CHECK ADD  CONSTRAINT [FK_MasterService_Services] FOREIGN KEY([ServiceID])
REFERENCES [dbo].[Services] ([ID])
GO
ALTER TABLE [dbo].[MasterService] CHECK CONSTRAINT [FK_MasterService_Services]
GO
ALTER TABLE [dbo].[MasterService]  WITH CHECK ADD  CONSTRAINT [FK_MasterService_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[MasterService] CHECK CONSTRAINT [FK_MasterService_Users]
GO
ALTER TABLE [dbo].[Reviews]  WITH CHECK ADD  CONSTRAINT [FK_Reviews_MasterService] FOREIGN KEY([MasterSersice])
REFERENCES [dbo].[MasterService] ([ID])
GO
ALTER TABLE [dbo].[Reviews] CHECK CONSTRAINT [FK_Reviews_MasterService]
GO
ALTER TABLE [dbo].[Reviews]  WITH CHECK ADD  CONSTRAINT [FK_Reviews_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[Reviews] CHECK CONSTRAINT [FK_Reviews_Users]
GO
ALTER TABLE [dbo].[Services]  WITH CHECK ADD  CONSTRAINT [FK_Services_Category] FOREIGN KEY([CategoriID])
REFERENCES [dbo].[Category] ([ID])
GO
ALTER TABLE [dbo].[Services] CHECK CONSTRAINT [FK_Services_Category]
GO
ALTER TABLE [dbo].[Services]  WITH CHECK ADD  CONSTRAINT [FK_Services_Vid] FOREIGN KEY([VidId])
REFERENCES [dbo].[Vid] ([ID])
GO
ALTER TABLE [dbo].[Services] CHECK CONSTRAINT [FK_Services_Vid]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Rang] FOREIGN KEY([RangID])
REFERENCES [dbo].[Rang] ([ID])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Rang]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Role] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Role] ([ID])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Role]
GO
USE [master]
GO
ALTER DATABASE [MatieMarushkina421] SET  READ_WRITE 
GO
