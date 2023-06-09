USE [master]
GO
/****** Object:  Database [GradDB3]    Script Date: 6/2/2023 10:44:22 PM ******/
CREATE DATABASE [GradDB3]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'GradDB3', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\GradDB3.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'GradDB3_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\GradDB3_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [GradDB3] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [GradDB3].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [GradDB3] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [GradDB3] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [GradDB3] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [GradDB3] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [GradDB3] SET ARITHABORT OFF 
GO
ALTER DATABASE [GradDB3] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [GradDB3] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [GradDB3] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [GradDB3] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [GradDB3] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [GradDB3] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [GradDB3] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [GradDB3] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [GradDB3] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [GradDB3] SET  ENABLE_BROKER 
GO
ALTER DATABASE [GradDB3] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [GradDB3] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [GradDB3] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [GradDB3] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [GradDB3] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [GradDB3] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [GradDB3] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [GradDB3] SET RECOVERY FULL 
GO
ALTER DATABASE [GradDB3] SET  MULTI_USER 
GO
ALTER DATABASE [GradDB3] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [GradDB3] SET DB_CHAINING OFF 
GO
ALTER DATABASE [GradDB3] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [GradDB3] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [GradDB3] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [GradDB3] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'GradDB3', N'ON'
GO
ALTER DATABASE [GradDB3] SET QUERY_STORE = ON
GO
ALTER DATABASE [GradDB3] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [GradDB3]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 6/2/2023 10:44:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 6/2/2023 10:44:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 6/2/2023 10:44:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 6/2/2023 10:44:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 6/2/2023 10:44:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 6/2/2023 10:44:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 6/2/2023 10:44:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[major] [int] NOT NULL,
	[LinkedIn] [nvarchar](max) NULL,
	[GitHub] [nvarchar](max) NULL,
	[Website] [nvarchar](max) NULL,
	[Courses_Ids] [nvarchar](max) NOT NULL,
	[OnlineCourses_Ids] [nvarchar](max) NOT NULL,
	[Books_Ids] [nvarchar](max) NOT NULL,
	[Skills_Ids] [nvarchar](max) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 6/2/2023 10:44:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Books]    Script Date: 6/2/2023 10:44:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Books](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BookTitle] [nvarchar](max) NULL,
	[BookDescription] [nvarchar](max) NULL,
 CONSTRAINT [PK_Books] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OnlineCourses]    Script Date: 6/2/2023 10:44:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OnlineCourses](
	[OnlineCourseId] [int] IDENTITY(1,1) NOT NULL,
	[CourseTitle] [nvarchar](max) NULL,
	[CourseDescription] [nvarchar](max) NULL,
	[Level] [nvarchar](max) NULL,
	[ReviewCount] [int] NULL,
	[CourseURL] [nvarchar](max) NULL,
	[Category] [nvarchar](max) NULL,
 CONSTRAINT [PK_OnlineCourses] PRIMARY KEY CLUSTERED 
(
	[OnlineCourseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[portfolios]    Script Date: 6/2/2023 10:44:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[portfolios](
	[UserId] [nvarchar](450) NOT NULL,
	[SkillId] [int] NOT NULL,
	[Scale] [float] NOT NULL,
 CONSTRAINT [PK_portfolios] PRIMARY KEY CLUSTERED 
(
	[SkillId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RecommendedCourses]    Script Date: 6/2/2023 10:44:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecommendedCourses](
	[UserId] [nvarchar](450) NOT NULL,
	[OnlineCourseId] [int] NOT NULL,
	[Flag] [bit] NOT NULL,
 CONSTRAINT [PK_RecommendedCourses] PRIMARY KEY CLUSTERED 
(
	[OnlineCourseId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[selectedUniCourses]    Script Date: 6/2/2023 10:44:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[selectedUniCourses](
	[UserId] [nvarchar](450) NULL,
	[CourseId] [int] NOT NULL,
	[Grade] [nvarchar](max) NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_selectedUniCourses] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Skills]    Script Date: 6/2/2023 10:44:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Skills](
	[SkillId] [int] IDENTITY(1,1) NOT NULL,
	[SkillName] [nvarchar](max) NULL,
 CONSTRAINT [PK_Skills] PRIMARY KEY CLUSTERED 
(
	[SkillId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UniCourses]    Script Date: 6/2/2023 10:44:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UniCourses](
	[CourseId] [int] IDENTITY(1,1) NOT NULL,
	[CourseName] [nvarchar](max) NULL,
 CONSTRAINT [PK_UniCourses] PRIMARY KEY CLUSTERED 
(
	[CourseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230531121140_first', N'7.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230531123448_category', N'7.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230531181933_modify2', N'7.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230531183212_te', N'7.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230531192003_foreignKey', N'7.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230602142920_selectedcourses', N'7.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230602190757_uniCourse', N'7.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230602193212_updae', N'7.0.5')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'1', N'Admin', NULL, NULL)
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'226e8c95-b7b2-4fca-aa14-acbb476f1021', N'1')
GO
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [major], [LinkedIn], [GitHub], [Website], [Courses_Ids], [OnlineCourses_Ids], [Books_Ids], [Skills_Ids], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'226e8c95-b7b2-4fca-aa14-acbb476f1021', N'Admin', N'Admin', 0, NULL, NULL, NULL, N'', N'', N'', N'', N'Admin1', N'ADMIN1', N'Admin@yahoo.com', N'ADMIN@YAHOO.COM', 0, N'AQAAAAIAAYagAAAAEDaJkWuVnILuCLvulvVzJV/SGq0iN4cGU4qoGwZljO3T1dzLSTh9A2FEadUe0Ame2w==', N'QC2RT2X6E3PJLWEXVB5TUBRLB6IDBKMG', N'9b5365ec-ddbc-436e-b5bd-0e8236288b8f', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [major], [LinkedIn], [GitHub], [Website], [Courses_Ids], [OnlineCourses_Ids], [Books_Ids], [Skills_Ids], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'da52becc-32c2-4eb0-a3bc-447d5abd7098', N'Dareen', N'Fraihat', 0, N'dareen.frehat', N'dareeeenf', N'asaaaaaaaaaaaaaaa', N'34', N'76,77,78,76,77,78,6,7,8,1,2,3', N'', N'1,2,21,22,23', N'dareenf', N'DAREENF', N'dareen@yahoo.com', N'DAREEN@YAHOO.COM', 0, N'AQAAAAIAAYagAAAAEOGKhkfc7RFhPxFuCcqOsYx3ub3R02zg7dai+azgRXy2eWSs2cOXpGHLlB1jHKtq7A==', N'DDQRDSR72UGBVNIEMG73H5I2DVYFDTZX', N'6b7be7cc-05c4-4096-94cf-88c0033be5a7', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[OnlineCourses] ON 

INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (1, N'Data Engineering with AWS', N'Learn to design data models, build data warehouses and data lakes, automate data pipelines, and manage massive datasets.', N'intermediate', 1802, N'https://www.udacity.com/course/data-engineer-nanodegree--nd027', N'Cloud computing and Distributed systems')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (2, N'Product Manager', N'Envision and execute the development of industry-defining products, and learn how to successfully bring them to market.', N'beginner', 864, N'https://www.udacity.com/course/product-manager-nanodegree--nd036', N'software engineering')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (3, N'C++', N'Get hands-on experience building five real-world projects in this popular general-purpose programming language.', N'intermediate', 1126, N'https://www.udacity.com/course/c-plus-plus-nanodegree--nd213', N'software development')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (4, N'Business Analytics', N'Gain foundational data skills like analyzing data, modeling business scenarios, and communicating findings.', N'beginner', 2649, N'https://www.udacity.com/course/business-analytics-nanodegree--nd098', N'Data analysis')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (5, N'Data Scientist', N'Build effective machine learning models, run data pipelines, build recommendation systems, and deploy solutions to the cloud with industry-aligned projects.', N'advanced', 1212, N'https://www.udacity.com/course/data-scientist-nanodegree--nd025', N'machine learning')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (6, N'Introduction to Programming', N'A first step for beginners towards careers in web and app development, machine learning, data science, AI, and more.', N'beginner', 3865, N'https://www.udacity.com/course/intro-to-programming-nanodegree--nd000', N'software development')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (7, N'Data Analyst', N'Use Python, SQL, and statistics to uncover insights, communicate critical findings, and create data-driven solutions.', N'intermediate', 3496, N'https://www.udacity.com/course/data-analyst-nanodegree--nd002', N'Data analysis')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (8, N'Deep Learning', N'Deep learning is driving advances in artificial intelligence that are changing our worldâ€”enroll now and learn to build and apply your own deep neural networks.', N'intermediate', 3368, N'https://www.udacity.com/course/deep-learning-nanodegree--nd101', N'deep learning')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (9, N'Programming for Data Science with Python', N'Learn the fundamental programming tools for data professionals: Python, SQL, terminal, and Git.', N'beginner', 1558, N'https://www.udacity.com/course/programming-for-data-science-nanodegree--nd104', N'software development')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (10, N'Full Stack Web Developer', N'Learn to design and develop powerful modern web applications that form the foundation for the apps, websites, and systems that people and businesses use every day.', N'intermediate', 749, N'https://www.udacity.com/course/full-stack-web-developer-nanodegree--nd0044', N'frontend development')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (11, N'AWS Machine Learning Engineer', N'Learn the data science and machine learning skills required to build and deploy machine learning models in production using Amazon SageMaker.', N'intermediate', 143, N'https://www.udacity.com/course/aws-machine-learning-engineer-nanodegree--nd189', N'Cloud computing and Distributed systems')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (12, N'SQL', N'Master SQL, the core language for big data analysis, to enable insight-driven decision-making and strategy.', N'beginner', 339, N'https://www.udacity.com/course/learn-sql--nd072', N'Database management')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (13, N'Machine Learning DevOps Engineer', N'Gain the DevOps skills required to automate the various aspects and stages of building and monitoring machine learning models.', N'advanced', 115, N'https://www.udacity.com/course/machine-learning-dev-ops-engineer-nanodegree--nd0821', N'software engineering')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (14, N'Artificial Intelligence for Trading', N'Complete real-world projects designed by industry experts, covering topics from asset management to trading signal generation. Master AI algorithms for trading, and build your career-ready portfolio.', N'intermediate', 789, N'https://www.udacity.com/course/ai-for-trading--nd880', N'Artificial intelligence')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (15, N'React', N'Learn to build declarative user interfaces for the web with React as well as manage state more predictably in your applications with Redux.', N'intermediate', 1269, N'https://www.udacity.com/course/react-nanodegree--nd019', N'frontend development')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (16, N'Self-Driving Car Engineer', N'Learn the techniques that power self-driving cars across the full stack of a vehicleâ€™s autonomous capabilities.', N'advanced', 714, N'https://www.udacity.com/course/self-driving-car-engineer-nanodegree--nd0013', N'machine learning')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (17, N'UX Designer', N'Design impactful user experiences for products in todayâ€™s digital world.', N'beginner', 1032, N'https://www.udacity.com/course/ux-designer-nanodegree--nd578', N'UI/UX Design')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (18, N'Java Developer', N'Learn back-end development with Java, one of the most popular programming languages in the world.', N'intermediate', 359, N'https://www.udacity.com/course/java-developer-nanodegree--nd035', N'software development')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (19, N'Data Engineering with Microsoft Azure ', N'Master job-ready Azure skills like designing data models and utilizing other in-demand components of the cloud computing service.', N'intermediate', 714, N'https://www.udacity.com/course/data-engineering-with-microsoft-azure-nanodegree--nd0277', N'Cloud computing and Distributed systems')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (20, N'AI Programming with Python', N'Learn Python, NumPy, pandas, Matplotlib, PyTorch, calculus, and linear algebraâ€”the foundations for building your own neural network.', N'beginner', 1626, N'https://www.udacity.com/course/ai-programming-python-nanodegree--nd089', N'software development')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (21, N'Data Product Manager', N'Apply data science best practices to build products that deliver the right experience to the right usersâ€”at the right time.', N'intermediate', 220, N'https://www.udacity.com/course/data-product-manager-nanodegree--nd030', N'software engineering')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (22, N'Intermediate Python', N'Learn how to plan, design, and implement enterprise data infrastructure solutions and create the blueprints for your organizationâ€™s data success.', N'intermediate', 144, N'https://www.udacity.com/course/intermediate-python-nanodegree--nd303', N'software development')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (23, N'Growth Product Manager', N'Lead experimentation and data-driven decision-making to drive products to the next level of scale, impact, and profitability.', N'intermediate', 50, N'https://www.udacity.com/course/growth-product-manager-nanodegree--nd037', N'software engineering')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (24, N'Front End Web Developer', N'Learn how to build high quality websites and dynamic applications to create stunning user experiences for the web.', N'intermediate', 1194, N'https://www.udacity.com/course/front-end-web-developer-nanodegree--nd0011', N'frontend development')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (25, N'Blockchain Developer', N'Demand for blockchain developers is skyrocketing. In this program, you''ll work with the Bitcoin and Ethereum protocols, build projects for real-world application, and gain the essential skills for a career in this dynamic space.', N'intermediate', 566, N'https://www.udacity.com/course/blockchain-developer-nanodegree--nd1309', N'Cloud computing and Distributed systems')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (26, N'Deep Reinforcement Learning', N'Master the deep reinforcement learning skills that are powering amazing advances in AIâ€”and start applying these skills to applications like video games and robotics.', N'advanced', 534, N'https://www.udacity.com/course/deep-reinforcement-learning-nanodegree--nd893', N'machine learning')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (27, N'Computer Vision', N'Learn the in-demand skills of computer vision, a growing field of AI, that empower advancements in robotics and automation.', N'advanced', 798, N'https://www.udacity.com/course/computer-vision-nanodegree--nd891', N'image processing and computer vision')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (28, N'Data Structures and Algorithms', N'Get hands-on practice with over 100 data structures and algorithm exercises with technical mentor support when needed to help prepare you for the workplace.', N'intermediate', 850, N'https://www.udacity.com/course/data-structures-and-algorithms-nanodegree--nd256', N'problem-solving')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (29, N'Robotics Software Engineer', N'Build five hands-on projects to acquire core robotics software engineering skills: ROS, Gazebo, localization, mapping, SLAM, navigation, and path planning.', N'advanced', 571, N'https://www.udacity.com/course/robotics-software-engineer--nd209', N'software engineering')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (30, N'AI Product Manager', N'Develop AI products that deliver real business value by building skills that help you compete in the new AI-powered world.', N'beginner', 616, N'https://www.udacity.com/course/ai-product-manager-nanodegree--nd088', N'software engineering')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (31, N'Android Kotlin Developer', N'Master Android app development with Kotlin, a modern programming language that enables developers to be more productive.', N'intermediate', 355, N'https://www.udacity.com/course/android-kotlin-developer-nanodegree--nd940', N'Mobile development')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (32, N'Java Programming', N'Elevate your Java abilities with the fundamental skills used by developers to design, code, test, and deploy cutting-edge Java software.', N'intermediate', 143, N'https://www.udacity.com/course/java-programming-nanodegree--nd079', N'software development')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (33, N'Cloud DevOps Engineer', N'Companies are looking for talented DevOps engineers to remain competitive in this agile world. Enroll now to master skills like operationalizing infrastructure at scale and delivering applications and services at high velocity.', N'intermediate', 846, N'https://www.udacity.com/course/cloud-dev-ops-nanodegree--nd9991', N'Cloud computing and Distributed systems')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (34, N'Data Architect', N'Learn how to plan, design and implement enterprise data infrastructure solutions and create the blueprints for your organizationâ€™s data success.', N'advanced', 122, N'https://www.udacity.com/course/data-architect-nanodegree--nd038', N'Database management')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (35, N'Data Analysis and Visualization with Microsoft Power BI', N'Utilize Microsoft Power BI as a primary tool for data pre-processing, visualization, and analysis.', N'beginner', 256, N'https://www.udacity.com/course/data-analysis-and-visualization-with-power-BI-nanodegree--nd331', N'Data analysis')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (36, N'Natural Language Processing', N'Learn the job-ready skills that progress computers to be able to understand, process, and respond to human language.', N'advanced', 525, N'https://www.udacity.com/course/natural-language-processing-nanodegree--nd892', N'Natural language processing')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (37, N'Intro to Self-Driving Cars', N'This introductory program is the perfect way to start your journey into the future of transportationâ€”flying cars.', N'intermediate', 806, N'https://www.udacity.com/course/intro-to-self-driving-cars--nd113', N'machine learning')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (38, N'Full Stack JavaScript Developer', N'Find success as a full stack developer by focusing on topics like UI, UX, APIs, server side business logic, persistence layers, and more.', N'intermediate', 89, N'https://www.udacity.com/course/full-stack-javascript-developer-nanodegree--nd0067', N'software development')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (39, N'Introduction to Cybersecurity', N'Get your start in the high growth field of cybersecurity by building foundational skills including evaluating, maintaining, and monitoring the security of computer systems.', N'beginner', 163, N'https://www.udacity.com/course/intro-to-cybersecurity-nanodegree--nd545', N'Security')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (40, N'Data Streaming', N'Learn how to stream data to unlock key insights in real-time.', N'advanced', 242, N'https://www.udacity.com/course/data-streaming-nanodegree--nd029', N'Cloud computing and Distributed systems')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (41, N'Cloud Developer', N'Cloud development is the foundation for the new world of software development. Enroll now to build and deploy production-ready full stack apps at scale on AWS.', N'intermediate', 844, N'https://www.udacity.com/course/cloud-developer-nanodegree--nd9990', N'Cloud computing and Distributed systems')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (42, N'Intro to Machine Learning with TensorFlow', N'Build a solid foundation in supervised, unsupervised, and deep learning. Then, use these skills to test and deploy machine learning models in a production environment.', N'intermediate', 529, N'https://www.udacity.com/course/intro-to-machine-learning-with-tensorflow-nanodegree--nd230', N'machine learning')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (43, N'Sensor Fusion Engineer', N'Learn to fuse lidar point clouds, radar signatures, and camera images using Kalman Filters to detect and track vehicles and pedestrians over time.', N'advanced', 301, N'https://www.udacity.com/course/sensor-fusion-engineer-nanodegree--nd313', N'image processing and computer vision')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (44, N'Predictive Analytics For Business', N'Learn essential AI concepts including search, optimization, planning, pattern recognition, and more from experts like Peter Norvig and Sebastian Thrun.', N'beginner', 554, N'https://www.udacity.com/course/predictive-analytics-for-business-nanodegree--nd008t', N'Artificial intelligence')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (45, N'Intermediate JavaScript', N'Master JavaScript, the most popular programming language in the world. Be equipped for advanced roles in web development, server-side application development, and desktop development.', N'intermediate', 161, N'https://www.udacity.com/course/intermediate-javascript-nanodegree--nd032', N'software development')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (46, N'Agile Software Development', N'Get equipped with the skills you need to guide the delivery of high value products with top notch software development teams.
', N'beginner', 151, N'https://www.udacity.com/course/agile-software-development-nanodegree--nd144', N'software engineering')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (47, N'Intro to Machine Learning with PyTorch', N'Build a solid foundation in supervised, unsupervised, and deep learning. Then, use these skills to test and deploy machine learning models in a production environment.', N'intermediate', 446, N'https://www.udacity.com/course/intro-to-machine-learning-nanodegree--nd229', N'machine learning')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (48, N'AWS Cloud Architect', N'Build confidence planning, designing, and creating high availability cloud infrastructure.', N'advanced', 277, N'https://www.udacity.com/course/aws-cloud-architect-nanodegree--nd063', N'Cloud computing and Distributed systems')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (49, N'AI for Business Leaders', N'Master the foundations of artificial intelligence so you can strategically implement machine learning technology in your organization, and leverage it for corporate growth.', N'intermediate', 124, N'https://www.udacity.com/course/ai-for-business-leaders--nd054', N'Artificial intelligence')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (50, N'AI for Healthcare', N'Be at the forefront of the AI revolution in healthcare and transform patient outcomes by enabling enhanced medical decision-making powered by machine learning.', N'advanced', 145, N'https://www.udacity.com/course/ai-for-healthcare-nanodegree--nd320', N'Artificial intelligence')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (51, N'iOS Developer', N'Master the Swift programming language, and create a portfolio of iOS apps for iPhone and iPad to showcase your skills!', N'beginner', 897, N'https://www.udacity.com/course/ios-developer-nanodegree--nd003', N'Mobile development')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (52, N'Artificial Intelligence', N'Learn essential Artificial Intelligence concepts from AI experts like Peter Norvig and Sebastian Thrun, including search, optimization, planning, pattern recognition, and more.', N'advanced', 355, N'https://www.udacity.com/course/ai-artificial-intelligence-nanodegree--nd898', N'Artificial intelligence')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (53, N'Cloud Native Application Architecture', N'Learn to run and manage scalable applications in a cloud native environment using open source tools and projects like ArgoCD, gRPC, and Grafana.', N'intermediate', 151, N'https://www.udacity.com/course/cloud-native-application-architecture-nanodegree--nd064', N'Cloud computing and Distributed systems')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (54, N'Data Visualization', N'Combine data, visuals, and narrative to tell impactful stories and make data-driven decisions.', N'beginner', 206, N'https://www.udacity.com/course/data-visualization-nanodegree--nd197', N'Data analysis')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (55, N'Cloud Architect using Microsoft Azure', N'Meet the growing demand for Azure cloud architects and learn the skills to translate business requirements into technical specifications for reliable, scalable, and secure cloud infrastructure using Microsoft Azure.', N'advanced', 94, N'https://www.udacity.com/course/cloud-architect-using-microsoft-azure-nanodegree--nd090', N'Cloud computing and Distributed systems')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (56, N'Ethical Hacker', N'Learn how to find and exploit vulnerabilities, design and execute penetration testing plans, and report on test findings.', N'advanced', 714, N'https://www.udacity.com/course/ethical-hacker-nanodegree--nd350', N'Security')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (57, N'Privacy Engineer', N'Master the skills necessary to become a successful privacy engineer. Learn to create technical solutions and implement privacy principles by integrating Privacy-by-Design into product development, data infrastructure, and software release lifecycles.', N'intermediate', 714, N'https://www.udacity.com/course/privacy-engineer-nanodegree--nd325', N'Security')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (58, N'Machine Learning Engineer for Microsoft Azure', N'Strengthen your machine learning skills and build practical experience by training, validating, and evaluating models using Azure Machine Learning. ', N'intermediate', 200, N'https://www.udacity.com/course/machine-learning-engineer-for-microsoft-azure-nanodegree--nd00333', N'Cloud computing and Distributed systems')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (59, N'Data Science for Business Leaders', N'Master the people, platforms, and processes required to leverage the power of Data Science in your business.', N'intermediate', 83, N'https://www.udacity.com/course/data-science-for-business-leaders--nd045', N'machine learning')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (60, N'Security Engineer', N'Take advantage of the growing need for skilled security professionals by mastering the sought-after skills to protect an organizationâ€™s computer networks and systems from security threats or attacks.', N'intermediate', 57, N'https://www.udacity.com/course/security-engineer-nanodegree--nd698', N'Security')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (61, N'Site Reliability Engineer', N'Learn to build automation tools that ensure designed solutions respond to requirements such as availability, performance, security, and maintainability.', N'intermediate', 714, N'https://www.udacity.com/course/site-reliability-engineer-nanodegree--nd087', N'software engineering')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (62, N'Cloud DevOps using Microsoft Azure', N'Learn how to deploy, test, and monitor cloud applications on Azure, one of the most popular cloud services platforms across the globe.', N'intermediate', 106, N'https://www.udacity.com/course/cloud-devops-using-microsoft-azure-nanodegree--nd082', N'Cloud computing and Distributed systems')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (63, N'Security Analyst', N'Learn to identify, correct, and respond to security weaknesses and incidents through open-ended projects that mimic workplace security challenges.', N'intermediate', 714, N'https://www.udacity.com/course/security-analyst-nanodegree--nd324', N'Security')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (64, N'Cloud Developer using Microsoft Azure', N'Master critical cloud computing skills used to deploy, build, migrate, and monitor applications on Azure.', N'intermediate', 65, N'https://www.udacity.com/course/cloud-developer-using-microsoft-azure-nanodegree--nd081', N'Cloud computing and Distributed systems')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (65, N'Data Privacy', N'Equip yourself with industry-guided data privacy best practices for physical or virtual office environments.', N'beginner', 714, N'https://www.udacity.com/course/data-privacy--cd1826', N'Security')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (66, N'Cloud Computing for Business Leaders', N'Focus on the unique knowledge and skills that business leaders need to unlock the value of cloud technologies in their organizations.', N'intermediate', 714, N'https://www.udacity.com/course/cloud-computing-for-business-leaders-nanodegree--nd046', N'Cloud computing and Distributed systems')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (67, N'Security Architect', N'The goal of the Security Architect Nanodegree is to equip learners with the necessary skills to implement elements of security infrastructure design and management at an enterprise level.', N'intermediate', 714, N'https://www.udacity.com/course/security-architect-nanodegree--nd992', N'Security')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (68, N'Enterprise Security', N'This program addresses security topics related to corporate environments, which are often distinct from production environments and center around the devices, identities, and infrastructure used by personnel on a daily basis.', N'intermediate', 714, N'https://www.udacity.com/course/enterprise-security-nanodegree--nd0035', N'Security')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (69, N'AI Engineer using Microsoft Azure', N'Master the skills necessary to implement machine learning models, build end-to-end AI solutions, and manage continuous improvement of an Azure AI solution.', N'advanced', 714, N'https://www.udacity.com/course/ai-engineer-using-microsoft-azure--nd073', N'Cloud computing and Distributed systems')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (70, N'Programming for Data Science with R', N'Prepare for a data science career by learning the fundamental data programming tools: R, SQL, command line, and git.', N'beginner', 95, N'https://www.udacity.com/course/programming-for-data-science-nanodegree-with-R--nd118', N'machine learning')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (71, N'Zero Trust Security', N'Learners leave the course with a reinvigorated perspective on cybersecurity and a lexicon of practices and solutions that support what is rapidly becoming the new dominant strategy in enterprise security.', N'intermediate', 714, N'https://www.udacity.com/course/zero-trust-security--cd11535', N'Security')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (72, N'Cybersecurity for Business Leaders', N'Learn to leverage the capabilities of cybersecurity best practices to protect your organization and unlock next-level results.', N'beginner', 714, N'https://www.udacity.com/course/cybersecurity-for-business-leaders--nd1202', N'Security')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (73, N'Ethical AI', N'Learn to apply ethical AI to minimize bias, while maximizing fairness and explainability, ensuring an ethical future for all.', N'intermediate', 714, N'https://www.udacity.com/course/ethical-ai--cd1827', N'Artificial intelligence')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (74, N'AWS Machine Learning Foundations Course', N'Learn what machine learning is and the steps involved in building and evaluating models. Gain in demand skills needed at businesses working to solve challenges with AI.', N'intermediate', 714, N'https://www.udacity.com/course/aws-machine-learning-foundations--ud065', N'Cloud computing and Distributed systems')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (75, N'Introduction to Machine Learning using Microsoft Azure', N'Gain a high-level introduction to the field of machine learning and prepare to use Azure Machine Learning Studio to train machine learning models. Plus, learn how to perform a variety of tasks on Azure Machine Learning labs â€” from data import, transformation and management to training, validating and evaluating models.', N'intermediate', 714, N'https://www.udacity.com/course/introduction-to-machine-learning-using-microsoft-azure--ud00333', N'Cloud computing and Distributed systems')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (76, N'AI Fundamentals', N'AI Fundamentals is an entry point into the world of AI using Microsoft''s cloud-based solutions, such as Azure Machine Learning and Azure Cognitive Services.', N'beginner', 714, N'https://www.udacity.com/course/ai-fundamentals--ud099', N'Artificial intelligence')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (77, N'Linear Algebra Refresher Course', N'Learn linear algebra by doing: you will code your own library of linear algebra functions!', N'intermediate', 714, N'https://www.udacity.com/course/linear-algebra-refresher-course--ud953', N'Mathematics')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (78, N'Machine Learning: Unsupervised Learning', N'Ever wonder how Netflix can predict what movies you''ll like? Or how Amazon knows what you want to buy before you do? The answer can be found in Unsupervised Learning!', N'intermediate', 714, N'https://www.udacity.com/course/machine-learning-unsupervised-learning--ud741', N'machine learning')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (79, N'Big Data Analytics in Healthcare', N'In this course, we introduce the characteristics of medical data and associated data mining challenges on dealing with such data. We cover various algorithms and systems.', N'intermediate', 714, N'https://www.udacity.com/course/big-data-analytics-in-healthcare--ud758', N'Cloud computing and Distributed systems')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (80, N'IntelÂ® Edge AI Fundamentals with OpenVINOâ„¢', N'Stay at the cutting-edge of AI technology by gaining practical skills for deploying edge AI. Learn how to use the Intel Distribution of OpenVINO toolkit to deploy computer vision capabilities inside a range of edge applications.', N'intermediate', 714, N'https://www.udacity.com/course/intel-edge-AI-fundamentals-with-openvino--ud132', N'Artificial intelligence')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (81, N'Artificial Intelligence', N'This course gives a survey of topics in AI along with in-depth foundational concepts such as classical search, probability, machine learning, logic and planning.', N'intermediate', 714, N'https://www.udacity.com/course/artificial-intelligence--ud954', N'Artificial intelligence')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (82, N'Secure and Private AI', N'Learn how to extend PyTorch with the tools necessary to train AI models that preserve user privacy.', N'advanced', 714, N'https://www.udacity.com/course/secure-and-private-ai--ud185', N'Security')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (83, N'Model Building and Validation', N'This course will teach you how to start from scratch in understanding and paying attention to what is important in the data and how to answer questions about data.', N'advanced', 714, N'https://www.udacity.com/course/model-building-and-validation--ud919', N'software engineering')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (84, N'Data Visualization and D3.js', N'Learn the fundamentals of data visualization and apply design and narrative concepts to create your own visualization.', N'intermediate', 714, N'https://www.udacity.com/course/data-visualization-and-d3js--ud507', N'Data analysis')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (85, N'Machine Learning for Trading', N'Implement machine learning based strategies to make trading decisions using real-world data.', N'intermediate', 714, N'https://www.udacity.com/course/machine-learning-for-trading--ud501', N'machine learning')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (86, N'Machine Learning', N'In this course, you''ll learn how to apply Supervised, Unsupervised and Reinforcement Learning techniques for solving a range of data science problems.', N'intermediate', 714, N'https://www.udacity.com/course/machine-learning--ud262', N'machine learning')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (87, N'Intro to Hadoop and MapReduce', N'In this short course, learn the fundamentals of MapReduce and Apache Hadoop to start making sense of Big Data in the real world!', N'intermediate', 714, N'https://www.udacity.com/course/intro-to-hadoop-and-mapreduce--ud617', N'Cloud computing and Distributed systems')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (88, N'Real-Time Analytics with Apache Storm', N'The world is trending in real time! Learn Apache Storm, taught by Twitter, to scalably analyze real-time tweets and drive d3 visualizations. Storm is free, open and fun!', N'intermediate', 714, N'https://www.udacity.com/course/real-time-analytics-with-apache-storm--ud381', N'Cloud computing and Distributed systems')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (89, N'A/B Testing', N'This course will cover the design and analysis of A/B tests, also known as split tests, which are online experiments used to test potential improvements to a website or mobile application. ', N'intermediate', 714, N'https://www.udacity.com/course/ab-testing--ud257', N'Quality Assurance and Testing')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (90, N'Data Analysis with R', N'Data is everywhere and so much of it is unexplored. Learn how to investigate and summarize data sets using R and eventually create your own analysis.', N'intermediate', 714, N'https://www.udacity.com/course/data-analysis-with-r--ud651', N'Data analysis')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (91, N'Knowledge-Based AI: Cognitive Systems', N'The twin goals of knowledge-based artificial intelligence (AI) are to build AI agents capable of human-level intelligence and gain insights into human cognition.', N'advanced', 714, N'https://www.udacity.com/course/knowledge-based-ai-cognitive-systems--ud409', N'Artificial intelligence')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (92, N'Introduction to TensorFlow Lite', N'Learn how to deploy deep learning models on mobile and embedded devices with TensorFlow Lite.', N'intermediate', 714, N'https://www.udacity.com/course/intro-to-tensorflow-lite--ud190', N'deep learning')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (93, N'Introduction to Computer Vision', N'This course provides an introduction to computer vision including fundamentals, methods for application and machine learning classification.', N'intermediate', 714, N'https://www.udacity.com/course/introduction-to-computer-vision--ud810', N'image processing and computer vision')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (94, N'Intro to TensorFlow for Deep Learning', N'Developed by Google and Udacity, this course teaches a practical approach to deep learning for software developers.', N'intermediate', 714, N'https://www.udacity.com/course/intro-to-tensorflow-for-deep-learning--ud187', N'deep learning')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (95, N'Eigenvectors and Eigenvalues', N'Learn how to calculate eigenvalues and eigenvectors and why they are important for AI applications.', N'beginner', 714, N'https://www.udacity.com/course/eigenvectors-and-eigenvalues--ud104', N'Mathematics')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (96, N'Intro to Artificial Intelligence', N'This course will introduce you to the basics of AI. Topics include machine learning, probabilistic reasoning, robotics, computer vision, and natural language processing.', N'intermediate', 714, N'https://www.udacity.com/course/intro-to-artificial-intelligence--cs271', N'Artificial intelligence')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (97, N'Artificial Intelligence for Robotics', N'Learn how to program all the major systems of a robotic car. Topics include planning, search, localization, tracking, and control.', N'advanced', 714, N'https://www.udacity.com/course/artificial-intelligence-for-robotics--cs373', N'Artificial intelligence')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (98, N'Intro to Deep Learning with PyTorch', N'Learn the basics of deep learning and implement your own deep neural networks with PyTorch', N'intermediate', 714, N'https://www.udacity.com/course/deep-learning-pytorch--ud188', N'deep learning')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (99, N'AWS DeepRacer', N'Learn the fundamentals of machine learning and reinforcement learning in a fun and engaging way through autonomous driving with AWS DeepRacer.', N'intermediate', 714, N'https://www.udacity.com/course/aws-deepracer--ud014', N'Cloud computing and Distributed systems')
GO
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (100, N'Reinforcement Learning', N'Learn how to engage with machine learning from a theoretical perspective. Explore automated decision-making and dive into advanced algorithms. ', N'advanced', 714, N'https://www.udacity.com/course/reinforcement-learning--ud600', N'machine learning')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (101, N'Introduction to Machine Learning Course', N'This class will teach you the end-to-end process of investigating data through a machine learning lens. Learn online, with Udacity.', N'intermediate', 714, N'https://www.udacity.com/course/intro-to-machine-learning--ud120', N'machine learning')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (102, N'Microsoft Power Platform', N'Learn to build powerful and effective solutions with ease with Microsoft Power Platform. Created in partnership with the Microsoft Power Platform team, this course will introduce you to efficient low-code solutions for data analytics, app development, and artifical intelligence.', N'beginner', 714, N'https://www.udacity.com/course/microsoft-power-platform--ud091', N'Cloud computing and Distributed systems')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (103, N'Front End Frameworks', N'Explore and build interactive, single-page applications with popular JavaScript frameworks!', N'advanced', 714, N'https://www.udacity.com/course/front-end-frameworks--ud894', N'frontend development')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (104, N'Responsive Web Design Fundamentals', N'Learn and practice strategies for developing websites that look great on every device! Made with Google''s Pete LePage.', N'intermediate', 714, N'https://www.udacity.com/course/responsive-web-design-fundamentals--ud893', N'frontend development')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (105, N'How to Install Android Studio', N'Participate in this short tutorial to install Android Studio on your computer and set up a new project using the program''s Project Wizard.', N'beginner', 714, N'https://www.udacity.com/course/how-to-install-android-studio--ud808', N'Mobile development')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (106, N'Website Performance Optimization', N'Learn how browsers convert HTML, CSS and JavaScript into websites while you experiment with Chrome Developer Tools to measure and optimize website speed!', N'intermediate', 714, N'https://www.udacity.com/course/website-performance-optimization--ud884', N'frontend development')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (107, N'iOS Networking with Swift', N'Learn how to incorporate networking into your apps to access data from around the world. Build the On the Map app to share location and fun links with fellow students.', N'advanced', 714, N'https://www.udacity.com/course/ios-networking-with-swift--ud421', N'Networking')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (108, N'JavaScript Design Patterns', N'Learn the importance of code organization and how to implement it with either vanilla JavaScript or an organizational library or framework.', N'advanced', 714, N'https://www.udacity.com/course/javascript-design-patterns--ud989', N'software development')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (109, N'Android Performance', N'Performance matters to users, so it must matter to you. Learn how to identify and fix bottlenecks in your Android applications, and ensure a smooth user experience.', N'advanced', 714, N'https://www.udacity.com/course/android-performance--ud825', N'Mobile development')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (110, N'Responsive Images', N'Go beyond image tags! Learn how to make images a part of your responsive design workflow.', N'intermediate', 714, N'https://www.udacity.com/course/responsive-images--ud882', N'image processing and computer vision')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (111, N'Xcode Debugging', N'In this course, you''ll learn standard methodologies for debugging software, and how to use Xcode''s debugging tools to find and squash bugs.', N'advanced', 714, N'https://www.udacity.com/course/xcode-debugging--ud774', N'software development')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (112, N'Build Native Mobile Apps with Flutter', N'Learn from experts at Google how to use Flutter to craft high-quality native interfaces on iOS and Android devices in record time.', N'intermediate', 714, N'https://www.udacity.com/course/build-native-mobile-apps-with-flutter--ud905', N'Mobile development')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (113, N'JavaScript Promises', N'Learn how to simplify asynchronous work with Native JavaScript Promises!', N'advanced', 714, N'https://www.udacity.com/course/javascript-promises--ud898', N'software development')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (114, N'UIKit Fundamentals', N'Learn the iOS UIKit framework, which is the cornerstone of creating user interfaces in all iOS apps and crucial for any iOS Developer to be intimately familiar with.', N'intermediate', 714, N'https://www.udacity.com/course/uikit-fundamentals--ud788', N'UI/UX Design')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (115, N'Client-Server Communication', N'Learn how a client communicates with a server, including HTTP''s request and response cycle, HTTP/2 and HTTPs.', N'advanced', 714, N'https://www.udacity.com/course/client-server-communication--ud897', N'Networking')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (116, N'Building High Conversion Web Forms', N'Increase conversions with best practices for fast, efficient forms! Learn how to design and build web forms for users on any device.', N'intermediate', 714, N'https://www.udacity.com/course/building-high-conversion-web-forms--ud890', N'UI/UX Design')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (117, N'Software Architecture & Design', N'Software Architecture and Design teaches the principles and concepts involved in the analysis and design of large software systems.', N'intermediate', 714, N'https://www.udacity.com/course/software-architecture-design--ud821', N'software engineering')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (118, N'Intro to Information Security', N'
For an app developer, providing a seamless user experience is critical for building engagement and growing a user base. Passwordless login solutions provide your users with a simple, secure, and positive first experience.

In this course, you''ll learn two frameworks for sign-up and authentication: Account Kit, which uses a phone number and code, and Facebook Login for Android. Youâ€™ll learn how to configure both types of authentication side by side in a sample app, test the flow on a series of common use cases, and wrap things up with an introduction to Facebookâ€™s Graph API, a window into an incredible wealth of data for creating a more engaging experience for your users.
', N'intermediate', 714, N'https://www.udacity.com/course/intro-to-information-security--ud459', N'Security')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (119, N'Authentication & Authorization: OAuth', N'Learn to implement the OAuth 2.0 framework to allow users to securely and easily login to your web applications.', N'intermediate', 714, N'https://www.udacity.com/course/authentication-authorization-oauth--ud330', N'backend development')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (120, N'Intro to iOS App Development with Swift', N'Take the first step in becoming an iOS Developer by learning about Swift and writing your first app.', N'intermediate', 714, N'https://www.udacity.com/course/intro-to-ios-app-development-with-swift--ud585', N'Mobile development')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (121, N'Introduction to Operating Systems', N'Introduction to Operating Systems teaches the basic operating system abstractions, mechanisms, and their implementations.', N'intermediate', 714, N'https://www.udacity.com/course/introduction-to-operating-systems--ud923', N'Computer architecture')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (122, N'Web Accessibility', N'Get hands-on experience making web applications accessible. Youâ€™ll understand when and why users need accessibility, then youâ€™ll dive into how to implement.', N'advanced', 714, N'https://www.udacity.com/course/web-accessibility--ud891', N'software engineering')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (123, N'Android Basics: Data Storage', N'In this course, you''ll learn the basics of data storage in Android, building your first database and an app that could be used for any small business!', N'beginner', 714, N'https://www.udacity.com/course/android-basics-data-storage--ud845', N'Mobile development')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (124, N'Scalable Microservices with Kubernetes', N'This course is designed to teach you about managing microservices, using Kubernetes. This course is built in partnership with experts such as Googleâ€™s Kelsey Hightower.', N'intermediate', 714, N'https://www.udacity.com/course/scalable-microservices-with-kubernetes--ud615', N'Cloud computing and Distributed systems')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (125, N'Developing Android Apps with Kotlin', N'Learn the fundamentals of the Kotlin programming language from Kotlin experts at Google.', N'intermediate', 714, N'https://www.udacity.com/course/developing-android-apps-with-kotlin--ud9012', N'Mobile development')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (126, N'Browser Rendering Optimization', N'This course will demystify the browser''s rendering pipeline and make it easy for you to build high performance web apps.', N'advanced', 714, N'https://www.udacity.com/course/browser-rendering-optimization--ud860', N'Mobile development')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (127, N'Learn Swift Programming Syntax', N'This course focuses on the syntax of the Swift programming language. By the end of the course, you''ll be able to apply Swift essentials to building iOS apps.', N'intermediate', 714, N'https://www.udacity.com/course/learn-swift-programming-syntax--ud902', N'Mobile development')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (128, N'Offline Web Applications', N'Learn how to develop offline-first web application using Service Workers and IndexedDB.', N'intermediate', 714, N'https://www.udacity.com/course/offline-web-applications--ud899', N'Mobile development')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (129, N'Kotlin for Android Developers', N'Take an Android app in Java and convert it to Kotlin, learning key features of the Kotlin programming language along the way.', N'advanced', 714, N'https://www.udacity.com/course/kotlin-for-android-developers--ud888', N'Mobile development')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (130, N'UX Design for Mobile Developers', N'This is a design course made for developers. You''ll learn UX design skills which will help you make 5-star mobile apps that your users will love.', N'beginner', 714, N'https://www.udacity.com/course/ux-design-for-mobile-developers--ud849', N'Mobile development')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (131, N'Software Development Process', N'Software Development Processes explores requirements engineering, architecture and design, testing, and software quality in general.', N'intermediate', 714, N'https://www.udacity.com/course/software-development-process--ud805', N'software engineering')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (132, N'Data Visualization in Tableau', N'Learn the fundamentals of data visualization and practice communicating with data.', N'beginner', 714, N'https://www.udacity.com/course/data-visualization-in-tableau--ud1006', N'Data analysis')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (133, N'Intro to Progressive Web Apps', N'In this course you will get started working on your very first Progressive Web App (PWA) - a web app that can take advantage of many features native applications have enjoyed!', N'intermediate', 714, N'https://www.udacity.com/course/intro-to-progressive-web-apps--ud811', N'backend development')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (134, N'Writing READMEs', N'Documentation is an important part of the development process. Learn to write READMEs using Markdown so your code can be used by other humans!', N'beginner', 714, N'https://www.udacity.com/course/writing-readmes--ud777', N'software engineering')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (135, N'Software Analysis & Testing', N'This course covers the theory and practice of software analysis, which is at the heart of software development processes such as diagnosing bugs, testing, and debugging.', N'intermediate', 714, N'https://www.udacity.com/course/software-analysis-testing--ud333', N'software engineering')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (136, N'iOS Persistence and Core Data', N'Persisting data is a core skill for any iOS developer. Learn how to store app data to your device using three common techniques: NSUserDefaults, Sandbox, and Core Data.', N'advanced', 714, N'https://www.udacity.com/course/ios-persistence-and-core-data--ud325', N'Mobile development')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (137, N'Computer Networking', N'This is an advanced Computer Networking course that delves into the latest concepts and tools used by the CN industry.', N'intermediate', 714, N'https://www.udacity.com/course/computer-networking--ud436', N'Networking')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (138, N'Firebase Analytics: iOS', N'Learn how to grow an app''s user base using Firebase Analytics, a free and unlimited analytics solution', N'intermediate', 714, N'https://www.udacity.com/course/firebase-analytics-ios--ud353', N'Mobile development')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (139, N'Human-Computer Interaction', N'This course is an introductory course on human-computer interaction, covering the principles, techniques, and open areas of development in HCI.', N'intermediate', 714, N'https://www.udacity.com/course/human-computer-interaction--ud400', N'UI/UX Design')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (140, N'2D Game Development with libGDX', N'This course explores how to use LibGDX to build 2D games that run anywhere, from web browsers to mobile devices. At the end you will create a full game, called Icicles.', N'intermediate', 714, N'https://www.udacity.com/course/2d-game-development-with-libgdx--ud405', N'game development')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (141, N'Intro to jQuery', N'Learn how to access and modify the DOM with ease using jQuery!', N'intermediate', 714, N'https://www.udacity.com/course/intro-to-jquery--ud245', N'frontend development')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (142, N'Cyber-Physical Systems Security', N'This course provides an introduction to security issues relating to cyber-physical systems including industrial control systems and critical infrastructures.', N'intermediate', 714, N'https://www.udacity.com/course/cyber-physical-systems-security--ud279', N'Security')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (143, N'How to create <anything> in Android', N'Learn to implement the newest Android user interface components while building apps in Android Studio.', N'beginner', 714, N'https://www.udacity.com/course/how-to-create-anything-in-android--ud802', N'Mobile development')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (144, N'Introduction to Graduate Algorithms', N'Learn advanced techniques for designing algorithms and apply them to hard computational problems.', N'advanced', 714, N'https://www.udacity.com/course/introduction-to-graduate-algorithms--ud401', N'problem-solving')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (145, N'Dynamic Web Applications with Sinatra', N'Sinatra is a micro-framework for quickly developing small Ruby applications for the web. In this course, you''ll learn all about Sinatra, routing, and templating.', N'intermediate', 714, N'https://www.udacity.com/course/dynamic-web-applications-with-sinatra--ud268', N'Mobile development')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (146, N'How to Make a Platformer Using libGDX', N'This course will explore how to create a game called Giga Gal. Giga Gal is a platformer in which you run, collect energy packs, jump a bunch, and shoot enemies.', N'intermediate', 714, N'https://www.udacity.com/course/how-to-make-a-platformer-using-libgdx--ud406', N'game development')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (147, N'JavaScript Testing', N'Learn how to iterate on your web applications with confidence using the red-green-refactor workflow cycle and automated testing frameworks.', N'intermediate', 714, N'https://www.udacity.com/course/javascript-testing--ud549', N'software development')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (148, N'Object-Oriented JavaScript', N'
For an app developer, providing a seamless user experience is critical for building engagement and growing a user base. Passwordless login solutions provide your users with a simple, secure, and positive first experience.

In this course, you''ll learn two frameworks for sign-up and authentication: Account Kit, which uses a phone number and code, and Facebook Login for Android. Youâ€™ll learn how to configure both types of authentication side by side in a sample app, test the flow on a series of common use cases, and wrap things up with an introduction to Facebookâ€™s Graph API, a window into an incredible wealth of data for creating a more engaging experience for your users.
', N'intermediate', 714, N'https://www.udacity.com/course/object-oriented-javascript--ud711', N'software development')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (149, N'Compilers: Theory and Practice', N'This course teaches the theory and practice behind building compilers for higher level programming languages.', N'intermediate', 714, N'https://www.udacity.com/course/compilers-theory-and-practice--ud168', N'Computer architecture')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (150, N'HTML5 Canvas', N'Learn how you can use HTML5 Canvas to create and modify images or even interactive animations.', N'beginner', 714, N'https://www.udacity.com/course/html5-canvas--ud292', N'frontend development')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (151, N'Object Oriented Programming in Java', N'Learn how to apply powerful object-oriented programming concepts in Java', N'intermediate', 714, N'https://www.udacity.com/course/object-oriented-programming-in-java--ud283', N'software development')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (152, N'Designing RESTful APIs', N'Build and secure a web server with a RESTful Developer-Friendly API that developers will love to use.', N'intermediate', 714, N'https://www.udacity.com/course/designing-restful-apis--ud388', N'APIs')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (153, N'GT - Refresher - Advanced OS', N'This course covers the essential Operating Systems concepts students need in preparation for the rest of the GT "Advanced Operating Systems" sequence.', N'intermediate', 714, N'https://www.udacity.com/course/gt-refresher-advanced-os--ud098', N'Computer architecture')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (154, N'Intro to JavaScript', N'Learn the fundamentals of JavaScript, the most popular programming language in web development.', N'beginner', 714, N'https://www.udacity.com/course/intro-to-javascript--ud803', N'software development')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (155, N'Continuous Integration and Deployment', N'In this course, you''ll learn how to improve the mobile development process by using continuous integration and deployment.', N'intermediate', 714, N'https://www.udacity.com/course/continuous-integration-and-deployment--ud1030', N'software engineering')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (156, N'Swift for Beginners', N'Learn Swift, Apple''s programming language for building iOS applications. Start with the basics and work your way towards completing sets of challenges in Swift.', N'beginner', 714, N'https://www.udacity.com/course/swift-for-beginners--ud1022', N'Mobile development')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (157, N'Intro to Statistics', N'Get ready to analyze, visualize, and interpret data! Thought-provoking examples and chances to combine statistics and programming will keep you engaged and challenged.', N'beginner', 714, N'https://www.udacity.com/course/intro-to-statistics--st101', N'Mathematics')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (158, N'Intro to HTML and CSS', N'In this course, you''ll learn the fundamentals web development, along with best practices and professional problem-solving techniques using Developer Tools.', N'beginner', 714, N'https://www.udacity.com/course/intro-to-html-and-css--ud001', N'frontend development')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (159, N'Introduction to Python Programming', N'In this course, you''ll learn the fundamentals of the Python programming language, along with programming best practices. Youâ€™ll learn to represent and store data using Python data types and variables, and use conditionals and loops to control the flow of your programs. Youâ€™ll harness the power of complex data structures like lists, sets, dictionaries, and tuples to store collections of related data. Youâ€™ll define and document your own custom functions, write scripts, and handle errors. Lastly, youâ€™ll learn to find and use modules in the Python Standard Library and other third-party libraries.', N'beginner', 714, N'https://www.udacity.com/course/introduction-to-python--ud1110', N'software development')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (160, N'Introduction to Virtual Reality', N'If you are interested in learning more about virtual reality, this course will teach you the principles of VR technology and help you understand what you can build in VR.', N'beginner', 714, N'https://www.udacity.com/course/introduction-to-virtual-reality--ud1012', N'game development')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (161, N'Objective-C for Swift Developers', N'Learn the distinguishing language features of Objective-C. Practice Objective-C syntax by writing classes, and writing and calling methods.', N'intermediate', 714, N'https://www.udacity.com/course/objective-c-for-swift-developers--ud1009', N'Mobile development')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (162, N'Interactive 3D Graphics', N'This course will teach you the principles of 3D computer graphics: meshes, transforms, lighting, animation, and making interactive 3D applications run in a browser.', N'intermediate', 714, N'https://www.udacity.com/course/interactive-3d-graphics--cs291', N'UI/UX Design')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (163, N'Full Stack Foundations', N'Learn the fundamentals of back-end web development by creating your own web application from the ground up using the iterative development process.', N'intermediate', 714, N'https://www.udacity.com/course/full-stack-foundations--ud088', N'backend development')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (164, N'High Performance Computer Architecture', N'The HPCA course covers performance measurement, pipelining, and improved parallelism through various means.', N'advanced', 714, N'https://www.udacity.com/course/high-performance-computer-architecture--ud007', N'Computer architecture')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (165, N'AutoLayout', N'With this course, you will learn about AutoLayout and how to use stack views and constraints to create pixel-perfect UIs.', N'intermediate', 714, N'https://www.udacity.com/course/auto-layout--ud1026', N'UI/UX Design')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (166, N'Kotlin Bootcamp for Programmers', N'Learn the fundamentals of the Kotlin programming language from Kotlin experts at Google.', N'intermediate', 714, N'https://www.udacity.com/course/kotlin-bootcamp-for-programmers--ud9011', N'Mobile development')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (167, N'Shell Workshop', N'This course is intended to get you up to speed on the shell â€” using a terminal, managing files and directories, and running command-line programs.', N'beginner', 714, N'https://www.udacity.com/course/shell-workshop--ud206', N'software development')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (168, N'Core ML: Machine Learning for iOS', N'Learn how to use Apple''s Core ML framework to build iOS apps with intelligent new features.', N'intermediate', 714, N'https://www.udacity.com/course/core-ml--ud1038', N'machine learning')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (169, N'Statistics', N'We live in a time of unprecedented access to information. You''ll learn how to use statistics to interpret that information and make decisions.', N'beginner', 714, N'https://www.udacity.com/course/statistics--st095', N'Mathematics')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (170, N'Intro to Theoretical Computer Science', N'Learn the basic concepts in theoretical computer science. Discover what they imply for solving tough computational challenges.', N'intermediate', 714, N'https://www.udacity.com/course/intro-to-theoretical-computer-science--cs313', N'theoretical computer science')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (171, N'Design of Computer Programs', N'Learn how to model problems, and how to optimize performance by using some of the advanced features of Python.', N'advanced', 714, N'https://www.udacity.com/course/design-of-computer-programs--cs212', N'software development')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (172, N'Data Wrangling with MongoDB', N'Data Scientists spend most of their time cleaning data. In this course, you will learn to convert and manipulate messy data to extract what you need.', N'intermediate', 714, N'https://www.udacity.com/course/data-wrangling-with-mongodb--ud032', N'Database management')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (173, N'Swift for Developers', N'Get a quick practical introduction to Swift programming basics and build your first iOS app!', N'beginner', 714, N'https://www.udacity.com/course/swift-for-developers--ud1025', N'Mobile development')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (174, N'Firebase in a Weekend: Android', N'This course will teach you when and why to choose Firebase as a backend for your Android application.', N'intermediate', 714, N'https://www.udacity.com/course/firebase-in-a-weekend-by-google-android--ud0352', N'Mobile development')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (175, N'Software Debugging', N'In this course you will learn how to debug programs systematically using scientific methods and build several automated debugging tools in Python.', N'intermediate', 714, N'https://www.udacity.com/course/software-debugging--cs259', N'software engineering')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (176, N'Deploying a Hadoop Cluster', N'Deploy your own Hadoop cluster to crunch some big data!', N'intermediate', 714, N'https://www.udacity.com/course/deploying-a-hadoop-cluster--ud1000', N'Cloud computing and Distributed systems')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (177, N'Server-Side Swift', N'In this course, built in collaboration with IBM and Hashicorp, you''ll learn how to use Swift as a server-side language for building end-to-end applications.', N'intermediate', 714, N'https://www.udacity.com/course/server-side-swift--ud1031', N'Mobile development')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (178, N'Networking for Web Developers', N'You''ve used the Internet. Now find out more about how it works.', N'beginner', 714, N'https://www.udacity.com/course/networking-for-web-developers--ud256', N'Networking')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (179, N'Database Systems Concepts & Design', N'This course presents an example of applying a database application development methodology to a major real-world project.', N'intermediate', 714, N'https://www.udacity.com/course/database-systems-concepts-design--ud150', N'Database management')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (180, N'Intro to Physics', N'Go to the places where big physics discoveries were made in the past and make them yourself. Youâ€™ll visit Italy, the Netherlands, and the UK as you learn basic physics.', N'beginner', 714, N'https://www.udacity.com/course/intro-to-physics--ph100', N'Analytical thinking')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (181, N'Intro to Relational Databases', N'Relational databases are a powerful tool used throughout the industry. Learn the basics of SQL and how to connect your Python code to a relational database.', N'intermediate', 714, N'https://www.udacity.com/course/intro-to-relational-databases--ud197', N'Database management')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (182, N'ES6 - JavaScript Improved', N'Learn about the changes made to the JavaScript programming language in ECMAScript 6 and how to use these new improvements to write better cleaner code.', N'advanced', 714, N'https://www.udacity.com/course/es6-javascript-improved--ud356', N'software development')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (183, N'Mobile Design and Usability for iOS', N'In this course, taught in collaboration with Facebook, you''ll learn how to design an intuitive, user-centered mobile app, from product conception to release.', N'intermediate', 714, N'https://www.udacity.com/course/mobile-design-and-usability-for-ios--ud1034', N'Mobile development')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (184, N'Intro to AJAX', N'Learn how to perform asynchronous requests as you build a web app with data from Google Street View, the New York Times and Wikipedia!', N'intermediate', 714, N'https://www.udacity.com/course/intro-to-ajax--ud110', N'frontend development')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (185, N'Intro to Algorithms', N'This class will give you an introduction to the design and analysis of algorithms, enabling you to analyze networks and discover how individuals are connected.', N'intermediate', 714, N'https://www.udacity.com/course/intro-to-algorithms--cs215', N'problem-solving')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (186, N'The MVC Pattern in Ruby', N'In this course youâ€™ll learn how to organize your code, and why thatâ€™s important. Youâ€™ll be using the MVC Design Pattern in the web application micro-framework Sinatra.', N'intermediate', 714, N'https://www.udacity.com/course/the-mvc-pattern-in-ruby--ud270', N'software development')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (187, N'WeChat Mini Program Development', N'Developed by Tencent and Udacity, this course will teach you to build your first Mini Program.', N'beginner', 714, N'https://www.udacity.com/course/wechat-mini-programs--ud667', N'software development')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (188, N'Asynchronous JavaScript Requests', N'Learn how to asynchronously request data in your web applications with Ajax.', N'intermediate', 714, N'https://www.udacity.com/course/asynchronous-javascript-requests--ud109', N'software development')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (189, N'Embedded Systems', N'This course takes a holistic view of the embedded system stack focusing on processor architectures, instruction sets, and the associated advanced compiler optimizations.', N'intermediate', 714, N'https://www.udacity.com/course/embedded-systems--ud169', N'Computer architecture')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (190, N'High Performance Computing', N'This course will give you solid foundations for developing, analyzing, and implementing parallel and locality-efficient algorithms.  Offered at Georgia Tech as CS6220', N'advanced', 714, N'https://www.udacity.com/course/high-performance-computing--ud281', N'Cloud computing and Distributed systems')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (191, N'HTTP & Web Servers', N'HTTP is the fundamental protocol of the Web. Explore how it works using Python code and command-line tools.', N'intermediate', 714, N'https://www.udacity.com/course/http-web-servers--ud303', N'Networking')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (192, N'Advanced Android with Kotlin', N'Develop Feature-Rich Android Apps with the Kotlin Programming Language.', N'intermediate', 714, N'https://www.udacity.com/course/advanced-android-with-kotlin--ud940', N'Mobile development')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (193, N'Computability, Complexity & Algorithms', N'Learn tools and techniques that will help you recognize when problems you encounter are intractable and when there an efficient solution.', N'advanced', 714, N'https://www.udacity.com/course/computability-complexity-algorithms--ud061', N'problem-solving')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (194, N'Advanced Operating Systems', N'
For an app developer, providing a seamless user experience is critical for building engagement and growing a user base. Passwordless login solutions provide your users with a simple, secure, and positive first experience.

In this course, you''ll learn two frameworks for sign-up and authentication: Account Kit, which uses a phone number and code, and Facebook Login for Android. Youâ€™ll learn how to configure both types of authentication side by side in a sample app, test the flow on a series of common use cases, and wrap things up with an introduction to Facebookâ€™s Graph API, a window into an incredible wealth of data for creating a more engaging experience for your users.
', N'advanced', 714, N'https://www.udacity.com/course/advanced-operating-systems--ud189', N'Computer architecture')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (195, N'Version Control with Git', N'Learn how to use Git, a popular Version Control System and essential tool for any developer.', N'beginner', 714, N'https://www.udacity.com/course/version-control-with-git--ud123', N'software development')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (196, N'Firebase in a Weekend: iOS', N'This course will teach you when and why to choose Firebase as a backend for your iOS application.', N'intermediate', 714, N'https://www.udacity.com/course/firebase-in-a-weekend-by-google-ios--ud0351', N'Mobile development')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (197, N'Intro to Point & Click App Development', N'In this short class you''ll build powerful apps without writing code. Great if you''re an aspiring developer or someone who wants to learn what programmers do.', N'beginner', 714, N'https://www.udacity.com/course/intro-to-point-click-app-development--ud162', N'Mobile development')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (198, N'Deploying Applications with Heroku', N'Deploy your first web application using the Heroku platform and learn about the underlying mechanics of web hosting.', N'intermediate', 714, N'https://www.udacity.com/course/deploying-applications-with-heroku--ud272', N'Cloud computing and Distributed systems')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (199, N'Applied Cryptography', N'Cryptography is present in everyday life, from paying with a credit card to using the telephone.  Learn all about making and breaking puzzles in computing.', N'advanced', 714, N'https://www.udacity.com/course/applied-cryptography--cs387', N'Security')
GO
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (200, N'Java Programming Basics', N'Take your first steps towards becoming a Java developer! Learn Java syntax and create conditional statements, loops, and functions.', N'beginner', 714, N'https://www.udacity.com/course/java-programming-basics--ud282', N'software development')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (201, N'C++ For Programmers', N'This course teaches C++ to students already familiar with a programming language. Students will learn how to use header files, control flow, functions, classes.', N'intermediate', 714, N'https://www.udacity.com/course/c-for-programmers--ud210', N'software development')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (202, N'Intro to Backend', N'Learn to build a multiuser blog with Google App Engine that permits users to sign in', N'intermediate', 714, N'https://www.udacity.com/course/intro-to-backend--ud171', N'backend development')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (203, N'Network Security', N'This course provides an introduction to computer and network security. Students successfully completing this class will be able to evaluate works in academic and commercial security, and will have rudimentary skills in security research.', N'intermediate', 714, N'https://www.udacity.com/course/network-security--ud199', N'Security')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (204, N'JavaScript and the DOM', N'
For an app developer, providing a seamless user experience is critical for building engagement and growing a user base. Passwordless login solutions provide your users with a simple, secure, and positive first experience.

In this course, you''ll learn two frameworks for sign-up and authentication: Account Kit, which uses a phone number and code, and Facebook Login for Android. Youâ€™ll learn how to configure both types of authentication side by side in a sample app, test the flow on a series of common use cases, and wrap things up with an introduction to Facebookâ€™s Graph API, a window into an incredible wealth of data for creating a more engaging experience for your users.
', N'intermediate', 714, N'https://www.udacity.com/course/javascript-and-the-dom--ud117', N'software development')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (205, N'Firebase Analytics: Android', N'Learn how to grow an app''s user base using Firebase Analytics, a free and unlimited analytics solution', N'intermediate', 714, N'https://www.udacity.com/course/firebase-analytics-android--ud354', N'Mobile development')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (206, N'Configuring Linux Web Servers', N'
For an app developer, providing a seamless user experience is critical for building engagement and growing a user base. Passwordless login solutions provide your users with a simple, secure, and positive first experience.

In this course, you''ll learn two frameworks for sign-up and authentication: Account Kit, which uses a phone number and code, and Facebook Login for Android. Youâ€™ll learn how to configure both types of authentication side by side in a sample app, test the flow on a series of common use cases, and wrap things up with an introduction to Facebookâ€™s Graph API, a window into an incredible wealth of data for creating a more engaging experience for your users.
', N'intermediate', 714, N'https://www.udacity.com/course/configuring-linux-web-servers--ud299', N'Networking')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (207, N'How to Make an iOS App', N'Learn the process of building an app, taking your ideas from drawing board to App Store!', N'advanced', 714, N'https://www.udacity.com/course/how-to-make-an-ios-app--ud607', N'Mobile development')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (208, N'Google Maps APIs', N'This course will introduce you to the content available through the Google Maps APIs through building a real-estate listings web application step-by-step.', N'intermediate', 714, N'https://www.udacity.com/course/google-maps-apis--ud864', N'APIs')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (209, N'Passwordless Login Solutions for Android', N'
For an app developer, providing a seamless user experience is critical for building engagement and growing a user base. Passwordless login solutions provide your users with a simple, secure, and positive first experience.

In this course, you''ll learn two frameworks for sign-up and authentication: Account Kit, which uses a phone number and code, and Facebook Login for Android. Youâ€™ll learn how to configure both types of authentication side by side in a sample app, test the flow on a series of common use cases, and wrap things up with an introduction to Facebookâ€™s Graph API, a window into an incredible wealth of data for creating a more engaging experience for your users.
', N'intermediate', 714, N'https://www.udacity.com/course/passwordless-login-solutions-for-android--ud357', N'Mobile development')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (210, N'Mobile Design and Usability for Android', N'In this course, taught in collaboration with Facebook, you''ll learn how to design an intuitive, user-centered mobile app, from product conception to release.', N'intermediate', 714, N'https://www.udacity.com/course/mobile-design-and-usability-for-android--ud358', N'Mobile development')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (211, N'iOS Design Patterns', N'In this course, you''ll explore iOS design patterns â€” the practical and battle-tested solutions to common problems that are used everyday by developers.', N'intermediate', 714, N'https://www.udacity.com/course/ios-design-patterns--ud1029', N'Mobile development')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (212, N'Engagement & Monetization | Mobile Games', N'You will learn the most effective monetization strategies for your game, how to  keep your players interested and engaged, so that your game stands out in the app store.', N'beginner', 714, N'https://www.udacity.com/course/engagement-monetization-mobile-games--ud407', N'Mobile development')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (213, N'Intro to Data Analysis', N'Explore a variety of datasets, posing and answering your own questions about each. You''ll be using the Python libraries NumPy, Pandas, and Matplotlib.', N'beginner', 714, N'https://www.udacity.com/course/intro-to-data-analysis--ud170', N'Data analysis')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (214, N'SQL for Data Analysis', N'Learn to use Structured Query Language (SQL) to extract and analyze data stored in databases', N'beginner', 714, N'https://www.udacity.com/course/sql-for-data-analysis--ud198', N'Database management')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (215, N'Intro to Inferential Statistics', N'Intro to Inferential Statistics will teach you how to test your hypotheses and begin to make predictions based on statistical results drawn from data!', N'beginner', 714, N'https://www.udacity.com/course/intro-to-inferential-statistics--ud201', N'Mathematics')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (216, N'Spark', N'Master how to work with big data and build machine learning models at scale using Spark!', N'intermediate', 714, N'https://www.udacity.com/course/learn-spark-at-udacity--ud2002', N'Cloud computing and Distributed systems')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (217, N'Data Analysis and Visualization', N'This course will introduce students to the field by covering stateÂ­-of-Â­the-art modeling, analysis and visualization techniques.', N'intermediate', 714, N'https://www.udacity.com/course/data-analysis-and-visualization--ud404', N'Data analysis')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (218, N'Rapid Prototyping', N'Learning to prototype will save you time and money in the development process. Youâ€™ll create quality apps faster and have confidence in the viability of your products.', N'intermediate', 714, N'https://www.udacity.com/course/rapid-prototyping--ud723', N'UI/UX Design')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (219, N'Creating an Analytical Dataset', N'Learn how to prepare data to ensure the efficacy of your analysis while improving fluency in Alteryx.', N'beginner', 714, N'https://www.udacity.com/course/creating-an-analytical-dataset--ud977', N'Data analysis')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (220, N'Problem Solving with Advanced Analytics', N'Learn a scientific approach to solving problems with data, a foundational skill for anyone interested in making data driven decisions in a business context.', N'beginner', 714, N'https://www.udacity.com/course/problem-solving-with-advanced-analytics--ud976', N'problem-solving')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (221, N'Classification Models', N'Learn how to use classification predictive models to solve business problems involving non-numeric data.', N'intermediate', 714, N'https://www.udacity.com/course/classification-models--ud978', N'machine learning')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (222, N'Product Design', N'Learn product validation, UI/UX practices, Googleâ€™s Design Sprint and the process for setting and tracking actionable metrics.', N'intermediate', 714, N'https://www.udacity.com/course/product-design--ud509', N'UI/UX Design')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (223, N'Time Series Forecasting', N'The Time Series Forecasting course provides students with the foundational knowledge to build and apply time series forecasting models in a variety of business contexts.', N'intermediate', 714, N'https://www.udacity.com/course/time-series-forecasting--ud980', N'Data analysis')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (224, N'A/B Testing for Business Analysts', N'The A/B Testing course provides students with the foundational knowledge to design and analyze A/B tests to create business insights and support decision making.', N'intermediate', 714, N'https://www.udacity.com/course/ab-testing--ud979', N'Quality Assurance and Testing')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (225, N'Oracle Autonomous Database Administration', N'Dive into the fundamentals of autonomous databases. Explore the process of planning, implementing, and deploying an Oracle Autonomous Database, the first and only autonomous database service in the cloud.', N'beginner', 714, N'https://www.udacity.com/course/oracle-autonomous-database-administration--cd12502', N'Database management')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (226, N'Oracle Cloud Infrastructure Architect Associate', N'Develop key insights into key concepts and features of Oracle Cloud Infrastructure (OCI).', N'intermediate', 714, N'https://www.udacity.com/course/oracle-cloud-infrastructure-architect-associate--cd12503', N'Database management')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (227, N'Oracle Cloud Infrastructure Architect Professional', N'This course will help you gain strong knowledge through hands-on experience with architecting infrastructure using Oracle Cloud Infrastructure services.', N'advanced', 714, N'https://www.udacity.com/course/oracle-cloud-infrastructure-architect-professional--cd12504', N'Database management')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (228, N'Oracle Cloud Infrastructure Foundations', N'Develop foundational knowledge of Oracle Cloud Infrastructure Cloud Services.', N'beginner', 714, N'https://www.udacity.com/course/oracle-cloud-infrastructure-foundations--cd12505', N'Database management')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (229, N'Oracle Cloud Infrastructure Operations Professional', N'This course is going to walk you through some of the day-to-day operational activities that you might find yourself managing in the Oracle Cloud Infrastructure ecosystem.', N'beginner', 714, N'https://www.udacity.com/course/oracle-cloud-infrastructure-operations-professional--cd12506', N'Database management')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (230, N'Cloud Native Fundamentals', N'Throughout this course, students will learn how to structure, package, and release an application to a Kubernetes cluster, while using an automated CI/CD pipeline.', N'intermediate', 714, N'https://www.udacity.com/course/cloud-native-fundamentals--ud064', N'Cloud computing and Distributed systems')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (231, N'Cyber-Physical Systems Design & Analysis', N'This course provides an introduction to cyber-physical systems with an industrial perspective.', N'advanced', 714, N'https://www.udacity.com/course/cyber-physical-systems-design-analysis--ud9876', N'Security')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (232, N'Differential Equations in Action', N'Write Python code to find numerical solutions to systems of differential equations. The models you create will fight wildfires, bring spaceships back to earth, and more!', N'intermediate', 714, N'https://www.udacity.com/course/differential-equations-in-action--cs222', N'Mathematics')
INSERT [dbo].[OnlineCourses] ([OnlineCourseId], [CourseTitle], [CourseDescription], [Level], [ReviewCount], [CourseURL], [Category]) VALUES (233, N'Data Structures & Algorithms in Swift', N'Review and practice the skills technical interviewers expect you to know and learn how to explain your Swift solutions.', N'intermediate', 714, N'https://www.udacity.com/course/data-structures-and-algorithms-in-swift--ud1011', N'Mobile development')
SET IDENTITY_INSERT [dbo].[OnlineCourses] OFF
GO
SET IDENTITY_INSERT [dbo].[selectedUniCourses] ON 

INSERT [dbo].[selectedUniCourses] ([UserId], [CourseId], [Grade], [Id]) VALUES (N'226e8c95-b7b2-4fca-aa14-acbb476f1021', 2, N'A+', 1)
INSERT [dbo].[selectedUniCourses] ([UserId], [CourseId], [Grade], [Id]) VALUES (N'226e8c95-b7b2-4fca-aa14-acbb476f1021', 5, N'C+', 2)
INSERT [dbo].[selectedUniCourses] ([UserId], [CourseId], [Grade], [Id]) VALUES (N'226e8c95-b7b2-4fca-aa14-acbb476f1021', 2, N'A+', 3)
INSERT [dbo].[selectedUniCourses] ([UserId], [CourseId], [Grade], [Id]) VALUES (N'226e8c95-b7b2-4fca-aa14-acbb476f1021', 5, N'C+', 4)
INSERT [dbo].[selectedUniCourses] ([UserId], [CourseId], [Grade], [Id]) VALUES (N'226e8c95-b7b2-4fca-aa14-acbb476f1021', 2, N'A+', 5)
INSERT [dbo].[selectedUniCourses] ([UserId], [CourseId], [Grade], [Id]) VALUES (N'226e8c95-b7b2-4fca-aa14-acbb476f1021', 5, N'C+', 6)
INSERT [dbo].[selectedUniCourses] ([UserId], [CourseId], [Grade], [Id]) VALUES (N'226e8c95-b7b2-4fca-aa14-acbb476f1021', 2, N'A+', 7)
INSERT [dbo].[selectedUniCourses] ([UserId], [CourseId], [Grade], [Id]) VALUES (N'226e8c95-b7b2-4fca-aa14-acbb476f1021', 5, N'C+', 8)
INSERT [dbo].[selectedUniCourses] ([UserId], [CourseId], [Grade], [Id]) VALUES (N'226e8c95-b7b2-4fca-aa14-acbb476f1021', 2, N'A+', 9)
INSERT [dbo].[selectedUniCourses] ([UserId], [CourseId], [Grade], [Id]) VALUES (N'226e8c95-b7b2-4fca-aa14-acbb476f1021', 5, N'C+', 10)
INSERT [dbo].[selectedUniCourses] ([UserId], [CourseId], [Grade], [Id]) VALUES (N'226e8c95-b7b2-4fca-aa14-acbb476f1021', 2, N'A+', 11)
INSERT [dbo].[selectedUniCourses] ([UserId], [CourseId], [Grade], [Id]) VALUES (N'226e8c95-b7b2-4fca-aa14-acbb476f1021', 5, N'C+', 12)
INSERT [dbo].[selectedUniCourses] ([UserId], [CourseId], [Grade], [Id]) VALUES (N'226e8c95-b7b2-4fca-aa14-acbb476f1021', 2, N'A+', 13)
INSERT [dbo].[selectedUniCourses] ([UserId], [CourseId], [Grade], [Id]) VALUES (N'226e8c95-b7b2-4fca-aa14-acbb476f1021', 5, N'C+', 14)
INSERT [dbo].[selectedUniCourses] ([UserId], [CourseId], [Grade], [Id]) VALUES (N'226e8c95-b7b2-4fca-aa14-acbb476f1021', 2, N'A+', 15)
INSERT [dbo].[selectedUniCourses] ([UserId], [CourseId], [Grade], [Id]) VALUES (N'226e8c95-b7b2-4fca-aa14-acbb476f1021', 5, N'C+', 16)
SET IDENTITY_INSERT [dbo].[selectedUniCourses] OFF
GO
SET IDENTITY_INSERT [dbo].[Skills] ON 

INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (1, N'C++')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (2, N'C')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (3, N'C#')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (4, N'Java')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (5, N'Javascript')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (6, N'python')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (7, N'ruby')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (8, N'R')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (9, N'php')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (10, N'Matlab')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (11, N'prolog')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (12, N'Haskell')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (13, N'frontend development')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (14, N'backend development')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (15, N'APIs')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (16, N'Database management')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (17, N'Networking')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (18, N'Data analysis')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (19, N'Data Engineering')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (20, N'Cloud computing and Distributed systems')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (21, N'Cybersecurity')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (22, N'Mobile development')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (23, N'software engineering')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (24, N'software development')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (25, N'Design Patterns')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (26, N'Quality Assurance and Testing')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (27, N'Computer architecture')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (28, N'Mathematics')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (29, N'Artificial intelligence')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (30, N'machine learning')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (31, N'deep learning')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (32, N'Natural language processing')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (33, N'image processing and computer vision')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (34, N'problem-solving')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (35, N'UI/UX Design')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (36, N'game development')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (37, N'theoretical computer science')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (38, N'Analytical Thinking')
SET IDENTITY_INSERT [dbo].[Skills] OFF
GO
SET IDENTITY_INSERT [dbo].[UniCourses] ON 

INSERT [dbo].[UniCourses] ([CourseId], [CourseName]) VALUES (1, N'Graph Theory')
INSERT [dbo].[UniCourses] ([CourseId], [CourseName]) VALUES (2, N'Mobile Wireless Networks')
INSERT [dbo].[UniCourses] ([CourseId], [CourseName]) VALUES (3, N'Special topics')
INSERT [dbo].[UniCourses] ([CourseId], [CourseName]) VALUES (4, N'Fundamentals of IoT')
INSERT [dbo].[UniCourses] ([CourseId], [CourseName]) VALUES (5, N'Cloud computing concepts')
INSERT [dbo].[UniCourses] ([CourseId], [CourseName]) VALUES (6, N'Mobile development frameworks')
INSERT [dbo].[UniCourses] ([CourseId], [CourseName]) VALUES (7, N'Database technologies and applications')
INSERT [dbo].[UniCourses] ([CourseId], [CourseName]) VALUES (8, N'Digital Image Processing')
INSERT [dbo].[UniCourses] ([CourseId], [CourseName]) VALUES (9, N'Advanced web development')
INSERT [dbo].[UniCourses] ([CourseId], [CourseName]) VALUES (10, N'Security of web applications')
INSERT [dbo].[UniCourses] ([CourseId], [CourseName]) VALUES (11, N'Network security')
INSERT [dbo].[UniCourses] ([CourseId], [CourseName]) VALUES (12, N'Applied statistics')
INSERT [dbo].[UniCourses] ([CourseId], [CourseName]) VALUES (13, N'Bioinformatics')
INSERT [dbo].[UniCourses] ([CourseId], [CourseName]) VALUES (14, N'Machine learning and neural networks')
INSERT [dbo].[UniCourses] ([CourseId], [CourseName]) VALUES (15, N'Advanced Programming in Special Languages[user choi]*')
INSERT [dbo].[UniCourses] ([CourseId], [CourseName]) VALUES (16, N'Logic Design')
INSERT [dbo].[UniCourses] ([CourseId], [CourseName]) VALUES (17, N'Theory of Computation')
INSERT [dbo].[UniCourses] ([CourseId], [CourseName]) VALUES (18, N'Data Structures Lab')
INSERT [dbo].[UniCourses] ([CourseId], [CourseName]) VALUES (19, N'Computer Ethics')
INSERT [dbo].[UniCourses] ([CourseId], [CourseName]) VALUES (20, N'Computer Organization')
INSERT [dbo].[UniCourses] ([CourseId], [CourseName]) VALUES (21, N'Theory of Algorithms')
INSERT [dbo].[UniCourses] ([CourseId], [CourseName]) VALUES (22, N'Numerical Analysis')
INSERT [dbo].[UniCourses] ([CourseId], [CourseName]) VALUES (23, N'Modeling and Simulation')
INSERT [dbo].[UniCourses] ([CourseId], [CourseName]) VALUES (24, N'Computer Graphics')
INSERT [dbo].[UniCourses] ([CourseId], [CourseName]) VALUES (25, N'Computer Networks')
INSERT [dbo].[UniCourses] ([CourseId], [CourseName]) VALUES (26, N'Operating Systems')
INSERT [dbo].[UniCourses] ([CourseId], [CourseName]) VALUES (27, N'Systems Programming and Compilers Construction')
INSERT [dbo].[UniCourses] ([CourseId], [CourseName]) VALUES (28, N'Discrete Mathematics')
INSERT [dbo].[UniCourses] ([CourseId], [CourseName]) VALUES (29, N'Computer Skills for Scientific Faculties')
INSERT [dbo].[UniCourses] ([CourseId], [CourseName]) VALUES (30, N'Fundamentals of Information Technology')
INSERT [dbo].[UniCourses] ([CourseId], [CourseName]) VALUES (31, N'Web Applications development')
INSERT [dbo].[UniCourses] ([CourseId], [CourseName]) VALUES (32, N'Object-Oriented Programming')
INSERT [dbo].[UniCourses] ([CourseId], [CourseName]) VALUES (33, N'data strucure')
INSERT [dbo].[UniCourses] ([CourseId], [CourseName]) VALUES (34, N'Database Management Systems')
INSERT [dbo].[UniCourses] ([CourseId], [CourseName]) VALUES (35, N'Linear Algebra for Computational Sciences')
INSERT [dbo].[UniCourses] ([CourseId], [CourseName]) VALUES (36, N'Seminar-Road to Software Industry')
INSERT [dbo].[UniCourses] ([CourseId], [CourseName]) VALUES (37, N'Calculus-1')
INSERT [dbo].[UniCourses] ([CourseId], [CourseName]) VALUES (38, N'Calculus-2')
INSERT [dbo].[UniCourses] ([CourseId], [CourseName]) VALUES (39, N'Principles of Statistics')
INSERT [dbo].[UniCourses] ([CourseId], [CourseName]) VALUES (40, N'Physics for Computer Science')
INSERT [dbo].[UniCourses] ([CourseId], [CourseName]) VALUES (41, N'Physics for Computer Science-Lab')
INSERT [dbo].[UniCourses] ([CourseId], [CourseName]) VALUES (42, N'PL')
INSERT [dbo].[UniCourses] ([CourseId], [CourseName]) VALUES (43, N'Computational Problems and Techniques')
INSERT [dbo].[UniCourses] ([CourseId], [CourseName]) VALUES (44, N'Parallel and Distributed Systems')
INSERT [dbo].[UniCourses] ([CourseId], [CourseName]) VALUES (45, N'Software Engineering')
INSERT [dbo].[UniCourses] ([CourseId], [CourseName]) VALUES (46, N'Artificial Intelligence')
INSERT [dbo].[UniCourses] ([CourseId], [CourseName]) VALUES (47, N'Information Security and Privacy')
INSERT [dbo].[UniCourses] ([CourseId], [CourseName]) VALUES (48, N'Advanced Networking')
INSERT [dbo].[UniCourses] ([CourseId], [CourseName]) VALUES (49, N'Design Patterns and Clean Code')
INSERT [dbo].[UniCourses] ([CourseId], [CourseName]) VALUES (50, N'Computer Systems Performance')
SET IDENTITY_INSERT [dbo].[UniCourses] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 6/2/2023 10:44:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 6/2/2023 10:44:23 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 6/2/2023 10:44:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 6/2/2023 10:44:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 6/2/2023 10:44:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 6/2/2023 10:44:23 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 6/2/2023 10:44:23 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_portfolios_UserId]    Script Date: 6/2/2023 10:44:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_portfolios_UserId] ON [dbo].[portfolios]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_RecommendedCourses_UserId]    Script Date: 6/2/2023 10:44:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_RecommendedCourses_UserId] ON [dbo].[RecommendedCourses]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_selectedUniCourses_CourseId]    Script Date: 6/2/2023 10:44:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_selectedUniCourses_CourseId] ON [dbo].[selectedUniCourses]
(
	[CourseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_selectedUniCourses_UserId]    Script Date: 6/2/2023 10:44:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_selectedUniCourses_UserId] ON [dbo].[selectedUniCourses]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[portfolios] ADD  DEFAULT (N'') FOR [UserId]
GO
ALTER TABLE [dbo].[RecommendedCourses] ADD  DEFAULT (N'') FOR [UserId]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[portfolios]  WITH CHECK ADD  CONSTRAINT [FK_portfolios_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[portfolios] CHECK CONSTRAINT [FK_portfolios_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[portfolios]  WITH CHECK ADD  CONSTRAINT [FK_portfolios_Skills_SkillId] FOREIGN KEY([SkillId])
REFERENCES [dbo].[Skills] ([SkillId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[portfolios] CHECK CONSTRAINT [FK_portfolios_Skills_SkillId]
GO
ALTER TABLE [dbo].[RecommendedCourses]  WITH CHECK ADD  CONSTRAINT [FK_RecommendedCourses_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RecommendedCourses] CHECK CONSTRAINT [FK_RecommendedCourses_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[RecommendedCourses]  WITH CHECK ADD  CONSTRAINT [FK_RecommendedCourses_OnlineCourses_OnlineCourseId] FOREIGN KEY([OnlineCourseId])
REFERENCES [dbo].[OnlineCourses] ([OnlineCourseId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RecommendedCourses] CHECK CONSTRAINT [FK_RecommendedCourses_OnlineCourses_OnlineCourseId]
GO
ALTER TABLE [dbo].[selectedUniCourses]  WITH CHECK ADD  CONSTRAINT [FK_selectedUniCourses_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[selectedUniCourses] CHECK CONSTRAINT [FK_selectedUniCourses_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[selectedUniCourses]  WITH CHECK ADD  CONSTRAINT [FK_selectedUniCourses_UniCourses_CourseId] FOREIGN KEY([CourseId])
REFERENCES [dbo].[UniCourses] ([CourseId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[selectedUniCourses] CHECK CONSTRAINT [FK_selectedUniCourses_UniCourses_CourseId]
GO
USE [master]
GO
ALTER DATABASE [GradDB3] SET  READ_WRITE 
GO
