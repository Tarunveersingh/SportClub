USE [master]
GO
/****** Object:  Database [SportsClub]    Script Date: 8/4/2020 9:52:22 PM ******/
CREATE DATABASE [SportsClub]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SportsClub_Data', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\SportsClub.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'SportsClub_Log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\SportsClub.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [SportsClub] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SportsClub].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SportsClub] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SportsClub] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SportsClub] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SportsClub] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SportsClub] SET ARITHABORT OFF 
GO
ALTER DATABASE [SportsClub] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SportsClub] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SportsClub] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SportsClub] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SportsClub] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SportsClub] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SportsClub] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SportsClub] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SportsClub] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SportsClub] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SportsClub] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SportsClub] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SportsClub] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SportsClub] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SportsClub] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SportsClub] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SportsClub] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SportsClub] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SportsClub] SET  MULTI_USER 
GO
ALTER DATABASE [SportsClub] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SportsClub] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SportsClub] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SportsClub] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SportsClub] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SportsClub] SET QUERY_STORE = OFF
GO
USE [SportsClub]
GO
/****** Object:  Table [dbo].[ContactTable]    Script Date: 8/4/2020 9:52:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactTable](
	[Contact_ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Subject] [varchar](50) NULL,
	[Msg] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EventTable]    Script Date: 8/4/2020 9:52:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventTable](
	[Event_ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Duration] [varchar](50) NULL,
	[StartDate] [varchar](50) NULL,
	[EndDate] [varchar](50) NULL,
	[Budget] [varchar](50) NULL,
 CONSTRAINT [PK_EventTable] PRIMARY KEY CLUSTERED 
(
	[Event_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoginTable]    Script Date: 8/4/2020 9:52:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoginTable](
	[UserEmail] [varchar](50) NULL,
	[UserPassword] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Player]    Script Date: 8/4/2020 9:52:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Player](
	[MemberID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Contact] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
	[Game] [varchar](50) NULL,
 CONSTRAINT [PK_Player] PRIMARY KEY CLUSTERED 
(
	[MemberID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ContactTable] ON 

INSERT [dbo].[ContactTable] ([Contact_ID], [Name], [Email], [Subject], [Msg]) VALUES (1, N'qw', N'qw@as.com', N'1qw', N'qwq')
SET IDENTITY_INSERT [dbo].[ContactTable] OFF
SET IDENTITY_INSERT [dbo].[EventTable] ON 

INSERT [dbo].[EventTable] ([Event_ID], [Name], [Duration], [StartDate], [EndDate], [Budget]) VALUES (1, N'qw', N'12', N'06/20/2020', N'06/30/2020', N'1200')
SET IDENTITY_INSERT [dbo].[EventTable] OFF
INSERT [dbo].[LoginTable] ([UserEmail], [UserPassword]) VALUES (N'admin@gmail.com', N'admin')
SET IDENTITY_INSERT [dbo].[Player] ON 

INSERT [dbo].[Player] ([MemberID], [Name], [Contact], [Address], [Game]) VALUES (1, N'qwqw', N'12', N'wqw', N'qw')
SET IDENTITY_INSERT [dbo].[Player] OFF
USE [master]
GO
ALTER DATABASE [SportsClub] SET  READ_WRITE 
GO
