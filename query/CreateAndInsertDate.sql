USE [master]
GO
/****** Object:  Database [ExternalSources]    Script Date: 05/23/2024 3:46:53 PM ******/
CREATE DATABASE [ExternalSources]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ExternalSources', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.QUYNHNHI\MSSQL\DATA\ExternalSources.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ExternalSources_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.QUYNHNHI\MSSQL\DATA\ExternalSources_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [ExternalSources] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ExternalSources].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ExternalSources] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ExternalSources] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ExternalSources] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ExternalSources] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ExternalSources] SET ARITHABORT OFF 
GO
ALTER DATABASE [ExternalSources] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ExternalSources] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ExternalSources] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ExternalSources] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ExternalSources] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ExternalSources] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ExternalSources] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ExternalSources] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ExternalSources] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ExternalSources] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ExternalSources] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ExternalSources] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ExternalSources] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ExternalSources] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ExternalSources] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ExternalSources] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ExternalSources] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ExternalSources] SET RECOVERY FULL 
GO
ALTER DATABASE [ExternalSources] SET  MULTI_USER 
GO
ALTER DATABASE [ExternalSources] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ExternalSources] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ExternalSources] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ExternalSources] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ExternalSources] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ExternalSources] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'ExternalSources', N'ON'
GO
ALTER DATABASE [ExternalSources] SET QUERY_STORE = ON
GO
ALTER DATABASE [ExternalSources] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [ExternalSources]
GO
/****** Object:  Table [dbo].[Date]    Script Date: 05/23/2024 3:46:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Date](
	[date key] [int] NULL,
	[full date] [datetime] NULL,
	[day of week] [int] NULL,
	[day num in month] [int] NULL,
	[day num overall] [int] NULL,
	[day name] [varchar](10) NULL,
	[day abbrev] [varchar](10) NULL,
	[weekday flag] [nvarchar](255) NULL,
	[week num in year] [int] NULL,
	[week num overall] [int] NULL,
	[week begin date] [datetime] NULL,
	[week begin date key] [int] NULL,
	[month] [int] NULL,
	[month num overall] [int] NULL,
	[month name] [varchar](10) NULL,
	[month abbrev] [varchar](10) NULL,
	[quarter] [int] NULL,
	[year] [int] NULL,
	[yearmo] [int] NULL,
	[fiscal month] [int] NULL,
	[fiscal quarter] [int] NULL,
	[fiscal year] [int] NULL,
	[month end flag] [nvarchar](255) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Date] ([date key], [full date], [day of week], [day num in month], [day num overall], [day name], [day abbrev], [weekday flag], [week num in year], [week num overall], [week begin date], [week begin date key], [month], [month num overall], [month name], [month abbrev], [quarter], [year], [yearmo], [fiscal month], [fiscal quarter], [fiscal year], [month end flag]) VALUES (-159, CAST(N'2000-12-07T00:00:00.000' AS DateTime), 4, 7, 1803, N'Thursday', N'Thu', N'Y', 50, 262, CAST(N'2000-12-04T00:00:00.000' AS DateTime), 20001204, 12, 60, N'December', N'Dec', 4, 2000, 200012, 6, 2, 2001, N'N')
INSERT [dbo].[Date] ([date key], [full date], [day of week], [day num in month], [day num overall], [day name], [day abbrev], [weekday flag], [week num in year], [week num overall], [week begin date], [week begin date key], [month], [month num overall], [month name], [month abbrev], [quarter], [year], [yearmo], [fiscal month], [fiscal quarter], [fiscal year], [month end flag]) VALUES (53, CAST(N'2000-12-08T00:00:00.000' AS DateTime), 5, 8, 1804, N'Friday', N'Fri', N'Y', 50, 262, CAST(N'2000-12-04T00:00:00.000' AS DateTime), 20001204, 12, 60, N'December', N'Dec', 4, 2000, 200012, 6, 2, 2001, N'N')
INSERT [dbo].[Date] ([date key], [full date], [day of week], [day num in month], [day num overall], [day name], [day abbrev], [weekday flag], [week num in year], [week num overall], [week begin date], [week begin date key], [month], [month num overall], [month name], [month abbrev], [quarter], [year], [yearmo], [fiscal month], [fiscal quarter], [fiscal year], [month end flag]) VALUES (110, CAST(N'2000-12-09T00:00:00.000' AS DateTime), 6, 9, 1805, N'Saturday', N'Sat', N'N', 50, 262, CAST(N'2000-12-04T00:00:00.000' AS DateTime), 20001204, 12, 60, N'December', N'Dec', 4, 2000, 200012, 6, 2, 2001, N'N')
INSERT [dbo].[Date] ([date key], [full date], [day of week], [day num in month], [day num overall], [day name], [day abbrev], [weekday flag], [week num in year], [week num overall], [week begin date], [week begin date key], [month], [month num overall], [month name], [month abbrev], [quarter], [year], [yearmo], [fiscal month], [fiscal quarter], [fiscal year], [month end flag]) VALUES (117, CAST(N'2000-12-10T00:00:00.000' AS DateTime), 7, 10, 1806, N'Sunday', N'Sun', N'N', 50, 262, CAST(N'2000-12-04T00:00:00.000' AS DateTime), 20001204, 12, 60, N'December', N'Dec', 4, 2000, 200012, 6, 2, 2001, N'N')
INSERT [dbo].[Date] ([date key], [full date], [day of week], [day num in month], [day num overall], [day name], [day abbrev], [weekday flag], [week num in year], [week num overall], [week begin date], [week begin date key], [month], [month num overall], [month name], [month abbrev], [quarter], [year], [yearmo], [fiscal month], [fiscal quarter], [fiscal year], [month end flag]) VALUES (-7, CAST(N'2000-12-11T00:00:00.000' AS DateTime), 1, 11, 1807, N'Monday', N'Mon', N'Y', 51, 263, CAST(N'2000-12-11T00:00:00.000' AS DateTime), 20001211, 12, 60, N'December', N'Dec', 4, 2000, 200012, 6, 2, 2001, N'N')
INSERT [dbo].[Date] ([date key], [full date], [day of week], [day num in month], [day num overall], [day name], [day abbrev], [weekday flag], [week num in year], [week num overall], [week begin date], [week begin date key], [month], [month num overall], [month name], [month abbrev], [quarter], [year], [yearmo], [fiscal month], [fiscal quarter], [fiscal year], [month end flag]) VALUES (-8, CAST(N'2000-12-12T00:00:00.000' AS DateTime), 2, 12, 1808, N'Tuesday', N'Tue', N'Y', 51, 263, CAST(N'2000-12-11T00:00:00.000' AS DateTime), 20001211, 12, 60, N'December', N'Dec', 4, 2000, 200012, 6, 2, 2001, N'N')
INSERT [dbo].[Date] ([date key], [full date], [day of week], [day num in month], [day num overall], [day name], [day abbrev], [weekday flag], [week num in year], [week num overall], [week begin date], [week begin date key], [month], [month num overall], [month name], [month abbrev], [quarter], [year], [yearmo], [fiscal month], [fiscal quarter], [fiscal year], [month end flag]) VALUES (-9, CAST(N'2000-12-13T00:00:00.000' AS DateTime), 3, 13, 1809, N'Wednesday', N'Wed', N'Y', 51, 263, CAST(N'2000-12-11T00:00:00.000' AS DateTime), 20001211, 12, 60, N'December', N'Dec', 4, 2000, 200012, 6, 2, 2001, N'N')
INSERT [dbo].[Date] ([date key], [full date], [day of week], [day num in month], [day num overall], [day name], [day abbrev], [weekday flag], [week num in year], [week num overall], [week begin date], [week begin date key], [month], [month num overall], [month name], [month abbrev], [quarter], [year], [yearmo], [fiscal month], [fiscal quarter], [fiscal year], [month end flag]) VALUES (-10, CAST(N'2000-12-14T00:00:00.000' AS DateTime), 4, 14, 1810, N'Thursday', N'Thu', N'Y', 51, 263, CAST(N'2000-12-11T00:00:00.000' AS DateTime), 20001211, 12, 60, N'December', N'Dec', 4, 2000, 200012, 6, 2, 2001, N'N')
INSERT [dbo].[Date] ([date key], [full date], [day of week], [day num in month], [day num overall], [day name], [day abbrev], [weekday flag], [week num in year], [week num overall], [week begin date], [week begin date key], [month], [month num overall], [month name], [month abbrev], [quarter], [year], [yearmo], [fiscal month], [fiscal quarter], [fiscal year], [month end flag]) VALUES (19, CAST(N'2000-12-15T00:00:00.000' AS DateTime), 5, 15, 1811, N'Friday', N'Fri', N'Y', 51, 263, CAST(N'2000-12-11T00:00:00.000' AS DateTime), 20001211, 12, 60, N'December', N'Dec', 4, 2000, 200012, 6, 2, 2001, N'N')
INSERT [dbo].[Date] ([date key], [full date], [day of week], [day num in month], [day num overall], [day name], [day abbrev], [weekday flag], [week num in year], [week num overall], [week begin date], [week begin date key], [month], [month num overall], [month name], [month abbrev], [quarter], [year], [yearmo], [fiscal month], [fiscal quarter], [fiscal year], [month end flag]) VALUES (54, CAST(N'2000-12-16T00:00:00.000' AS DateTime), 6, 16, 1812, N'Saturday', N'Sat', N'N', 51, 263, CAST(N'2000-12-11T00:00:00.000' AS DateTime), 20001211, 12, 60, N'December', N'Dec', 4, 2000, 200012, 6, 2, 2001, N'N')
INSERT [dbo].[Date] ([date key], [full date], [day of week], [day num in month], [day num overall], [day name], [day abbrev], [weekday flag], [week num in year], [week num overall], [week begin date], [week begin date key], [month], [month num overall], [month name], [month abbrev], [quarter], [year], [yearmo], [fiscal month], [fiscal quarter], [fiscal year], [month end flag]) VALUES (166, CAST(N'2000-12-17T00:00:00.000' AS DateTime), 7, 17, 1813, N'Sunday', N'Sun', N'N', 51, 263, CAST(N'2000-12-11T00:00:00.000' AS DateTime), 20001211, 12, 60, N'December', N'Dec', 4, 2000, 200012, 6, 2, 2001, N'N')
INSERT [dbo].[Date] ([date key], [full date], [day of week], [day num in month], [day num overall], [day name], [day abbrev], [weekday flag], [week num in year], [week num overall], [week begin date], [week begin date key], [month], [month num overall], [month name], [month abbrev], [quarter], [year], [yearmo], [fiscal month], [fiscal quarter], [fiscal year], [month end flag]) VALUES (215, CAST(N'2000-12-18T00:00:00.000' AS DateTime), 1, 18, 1814, N'Monday', N'Mon', N'Y', 52, 264, CAST(N'2000-12-18T00:00:00.000' AS DateTime), 20001218, 12, 60, N'December', N'Dec', 4, 2000, 200012, 6, 2, 2001, N'N')
INSERT [dbo].[Date] ([date key], [full date], [day of week], [day num in month], [day num overall], [day name], [day abbrev], [weekday flag], [week num in year], [week num overall], [week begin date], [week begin date key], [month], [month num overall], [month name], [month abbrev], [quarter], [year], [yearmo], [fiscal month], [fiscal quarter], [fiscal year], [month end flag]) VALUES (111, CAST(N'2000-12-19T00:00:00.000' AS DateTime), 2, 19, 1815, N'Tuesday', N'Tue', N'Y', 52, 264, CAST(N'2000-12-18T00:00:00.000' AS DateTime), 20001218, 12, 60, N'December', N'Dec', 4, 2000, 200012, 6, 2, 2001, N'N')
GO
USE [master]
GO
ALTER DATABASE [ExternalSources] SET  READ_WRITE 
GO
