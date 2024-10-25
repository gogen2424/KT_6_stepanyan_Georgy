USE [master]
GO
/****** Object:  Database [Georgy_Stepanyan]    Script Date: 25.10.2024 14:38:47 ******/
CREATE DATABASE [Georgy_Stepanyan]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Georgy_Stepanyan', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Georgy_Stepanyan.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Georgy_Stepanyan_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Georgy_Stepanyan_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Georgy_Stepanyan] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Georgy_Stepanyan].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Georgy_Stepanyan] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Georgy_Stepanyan] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Georgy_Stepanyan] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Georgy_Stepanyan] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Georgy_Stepanyan] SET ARITHABORT OFF 
GO
ALTER DATABASE [Georgy_Stepanyan] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Georgy_Stepanyan] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Georgy_Stepanyan] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Georgy_Stepanyan] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Georgy_Stepanyan] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Georgy_Stepanyan] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Georgy_Stepanyan] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Georgy_Stepanyan] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Georgy_Stepanyan] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Georgy_Stepanyan] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Georgy_Stepanyan] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Georgy_Stepanyan] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Georgy_Stepanyan] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Georgy_Stepanyan] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Georgy_Stepanyan] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Georgy_Stepanyan] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Georgy_Stepanyan] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Georgy_Stepanyan] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Georgy_Stepanyan] SET  MULTI_USER 
GO
ALTER DATABASE [Georgy_Stepanyan] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Georgy_Stepanyan] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Georgy_Stepanyan] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Georgy_Stepanyan] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Georgy_Stepanyan] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Georgy_Stepanyan] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Georgy_Stepanyan] SET QUERY_STORE = OFF
GO
USE [Georgy_Stepanyan]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 25.10.2024 14:38:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] NULL,
	[Category] [nvarchar](150) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IdAdress]    Script Date: 25.10.2024 14:38:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IdAdress](
	[Id] [int] NULL,
	[Adress] [nvarchar](150) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IdStreet]    Script Date: 25.10.2024 14:38:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IdStreet](
	[Id] [int] NULL,
	[IdStreet] [nvarchar](150) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manufacture]    Script Date: 25.10.2024 14:38:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manufacture](
	[Id] [int] NULL,
	[Manufacture] [nvarchar](150) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PickPoint]    Script Date: 25.10.2024 14:38:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PickPoint](
	[Id] [int] NOT NULL,
	[IdAdress] [int] NOT NULL,
	[IdTown] [int] NOT NULL,
	[IdStreet] [int] NOT NULL,
	[House] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 25.10.2024 14:38:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] NULL,
	[IdProductName] [int] NULL,
	[IdManufacture] [int] NULL,
	[IdSupplier] [int] NULL,
	[IdCategory] [int] NULL,
	[Article] [nvarchar](150) NULL,
	[Price] [int] NULL,
	[DiscountMax] [int] NULL,
	[DiscountNow] [int] NULL,
	[ProductInStock] [int] NULL,
	[ProductDescription] [nvarchar](150) NULL,
	[Image] [nvarchar](150) NULL,
	[ProductImage] [image] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductName]    Script Date: 25.10.2024 14:38:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductName](
	[Id] [int] NULL,
	[ProductName] [nvarchar](150) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 25.10.2024 14:38:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [int] NULL,
	[Role] [nvarchar](150) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 25.10.2024 14:38:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[Id] [int] NOT NULL,
	[Supplier] [nvarchar](150) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 25.10.2024 14:38:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] NOT NULL,
	[IdRole] [int] NOT NULL,
	[UserSurname] [nvarchar](150) NOT NULL,
	[UserName] [nvarchar](150) NOT NULL,
	[UserPastNane] [nvarchar](150) NOT NULL,
	[Login] [nvarchar](150) NOT NULL,
	[Password] [nvarchar](150) NOT NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Georgy_Stepanyan] SET  READ_WRITE 
GO
