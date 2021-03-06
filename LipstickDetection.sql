USE [master]
GO
/****** Object:  Database [LipstickDetection]    Script Date: 07/13/2018 12:57:03 ******/
CREATE DATABASE [LipstickDetection] ON  PRIMARY 
( NAME = N'LipstickDetection', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\LipstickDetection.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'LipstickDetection_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\LipstickDetection_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [LipstickDetection] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LipstickDetection].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LipstickDetection] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [LipstickDetection] SET ANSI_NULLS OFF
GO
ALTER DATABASE [LipstickDetection] SET ANSI_PADDING OFF
GO
ALTER DATABASE [LipstickDetection] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [LipstickDetection] SET ARITHABORT OFF
GO
ALTER DATABASE [LipstickDetection] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [LipstickDetection] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [LipstickDetection] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [LipstickDetection] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [LipstickDetection] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [LipstickDetection] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [LipstickDetection] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [LipstickDetection] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [LipstickDetection] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [LipstickDetection] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [LipstickDetection] SET  DISABLE_BROKER
GO
ALTER DATABASE [LipstickDetection] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [LipstickDetection] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [LipstickDetection] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [LipstickDetection] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [LipstickDetection] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [LipstickDetection] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [LipstickDetection] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [LipstickDetection] SET  READ_WRITE
GO
ALTER DATABASE [LipstickDetection] SET RECOVERY SIMPLE
GO
ALTER DATABASE [LipstickDetection] SET  MULTI_USER
GO
ALTER DATABASE [LipstickDetection] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [LipstickDetection] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'LipstickDetection', N'ON'
GO
USE [LipstickDetection]
GO
/****** Object:  Table [dbo].[UserData]    Script Date: 07/13/2018 12:57:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserData](
	[Username_ID] [varchar](50) NOT NULL,
	[Password_ID] [varchar](50) NOT NULL,
	[Name] [varchar](100) NULL,
	[Surname] [varchar](100) NULL,
	[Email] [varchar](100) NULL,
	[Permission] [varchar](100) NOT NULL,
 CONSTRAINT [PK_UserData] PRIMARY KEY CLUSTERED 
(
	[Username_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tonecolor_test]    Script Date: 07/13/2018 12:57:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tonecolor_test](
	[Tone] [varchar](100) NULL,
	[Algorithm] [varchar](100) NULL,
	[No1] [varchar](100) NULL,
	[No2] [varchar](100) NULL,
	[No3] [varchar](100) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TimeData]    Script Date: 07/13/2018 12:57:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TimeData](
	[No] [int] IDENTITY(1,1) NOT NULL,
	[Series_ID] [varchar](50) NOT NULL,
	[Username_ID] [varchar](50) NOT NULL,
	[Timelogin] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TimeData] PRIMARY KEY CLUSTERED 
(
	[No] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Test_Tonered]    Script Date: 07/13/2018 12:57:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Test_Tonered](
	[Tone] [varchar](100) NULL,
	[Algorithm] [varchar](100) NULL,
	[No1] [varchar](100) NULL,
	[No2] [varchar](100) NULL,
	[No3] [varchar](100) NULL,
	[number] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Test_Tonepurple]    Script Date: 07/13/2018 12:57:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Test_Tonepurple](
	[Tone] [varchar](100) NULL,
	[Algorithm] [varchar](100) NULL,
	[No1] [varchar](100) NULL,
	[No2] [varchar](100) NULL,
	[No3] [varchar](100) NULL,
	[number] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Test_Tonepink]    Script Date: 07/13/2018 12:57:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Test_Tonepink](
	[Tone] [varchar](100) NULL,
	[Algorithm] [varchar](100) NULL,
	[No1] [varchar](100) NULL,
	[No2] [varchar](100) NULL,
	[NO3] [varchar](100) NULL,
	[number] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Test_Toneorange]    Script Date: 07/13/2018 12:57:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Test_Toneorange](
	[Tone] [varchar](100) NULL,
	[Algorithm] [varchar](100) NULL,
	[No1] [varchar](100) NULL,
	[No2] [varchar](100) NULL,
	[No3] [varchar](100) NULL,
	[number] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Test_Tonebrown]    Script Date: 07/13/2018 12:57:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Test_Tonebrown](
	[Tone] [varchar](100) NULL,
	[Algorithm] [varchar](100) NULL,
	[No1] [varchar](100) NULL,
	[No2] [varchar](100) NULL,
	[No3] [varchar](100) NULL,
	[number] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SeriesData]    Script Date: 07/13/2018 12:57:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SeriesData](
	[No] [int] IDENTITY(1,1) NOT NULL,
	[Series_ID] [varchar](50) NOT NULL,
	[Brand_ID] [varchar](50) NOT NULL,
	[Series_Name] [varchar](100) NOT NULL,
	[Number] [varchar](100) NOT NULL,
	[Price] [float] NOT NULL,
	[HexcodeColor] [varchar](100) NOT NULL,
 CONSTRAINT [PK_SeriesData] PRIMARY KEY CLUSTERED 
(
	[No] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Series]    Script Date: 07/13/2018 12:57:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Series](
	[Series_ID] [varchar](50) NOT NULL,
	[Brand_ID] [varchar](50) NOT NULL,
	[Series_Name] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Series] PRIMARY KEY CLUSTERED 
(
	[Series_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Premission]    Script Date: 07/13/2018 12:57:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Premission](
	[Premission] [varchar](100) NULL,
	[Premission_N] [varchar](100) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BrandData]    Script Date: 07/13/2018 12:57:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BrandData](
	[Brand_ID] [varchar](50) NOT NULL,
	[Brand_Name] [varchar](100) NOT NULL,
 CONSTRAINT [PK_BrandData] PRIMARY KEY CLUSTERED 
(
	[Brand_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
