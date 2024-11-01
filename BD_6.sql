USE [master]
GO
/****** Object:  Database [Georgy_Stepanyan]    Script Date: 31.10.2024 13:30:34 ******/
CREATE DATABASE [Georgy_Stepanyan]
 CONTAINMENT = NONE

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
/****** Object:  Table [dbo].[Category]    Script Date: 31.10.2024 13:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] NOT NULL,
	[Category] [nvarchar](150) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IdAdress]    Script Date: 31.10.2024 13:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IdAdress](
	[Id] [int] NOT NULL,
	[Adress] [nvarchar](150) NULL,
 CONSTRAINT [PK_IdAdress] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IdStatus]    Script Date: 31.10.2024 13:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IdStatus](
	[Id] [int] NOT NULL,
	[Status] [nvarchar](150) NULL,
 CONSTRAINT [PK_IdStatus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IdStreet]    Script Date: 31.10.2024 13:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IdStreet](
	[Id] [int] NOT NULL,
	[IdStreet] [nvarchar](150) NULL,
 CONSTRAINT [PK_IdStreet] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IdTown]    Script Date: 31.10.2024 13:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IdTown](
	[Id] [int] NOT NULL,
	[Town] [nvarchar](150) NULL,
 CONSTRAINT [PK_IdTown] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manufacture]    Script Date: 31.10.2024 13:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manufacture](
	[Id] [int] NOT NULL,
	[Manufacture] [nvarchar](150) NULL,
 CONSTRAINT [PK_Manufacture] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 31.10.2024 13:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[Id] [int] NOT NULL,
	[User_Id] [int] NULL,
	[Order_Afrticle] [nvarchar](150) NOT NULL,
	[Date_Order] [nvarchar](150) NOT NULL,
	[Date_Of_delevery] [nvarchar](150) NOT NULL,
	[PickPoint] [int] NOT NULL,
	[Code] [nvarchar](150) NOT NULL,
	[Id_Status] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderProduct]    Script Date: 31.10.2024 13:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderProduct](
	[Id] [int] NOT NULL,
	[ProductId] [int] NULL,
	[Article] [nvarchar](150) NULL,
	[Count] [int] NULL,
	[PickPoint_ID] [int] NULL,
 CONSTRAINT [PK_OrderProduct] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PickPoint]    Script Date: 31.10.2024 13:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PickPoint](
	[Id] [int] NOT NULL,
	[IdAdress] [int] NOT NULL,
	[IdTown] [int] NOT NULL,
	[IdStreet] [int] NOT NULL,
	[House] [int] NULL,
 CONSTRAINT [PK_PickPoint] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 31.10.2024 13:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] NOT NULL,
	[IdProductName] [int] NOT NULL,
	[IdManufacture] [int] NOT NULL,
	[IdSupplier] [int] NOT NULL,
	[IdCategory] [int] NOT NULL,
	[Article] [nvarchar](150) NOT NULL,
	[Price] [float] NOT NULL,
	[DiscountMax] [int] NOT NULL,
	[DiscountNow] [int] NOT NULL,
	[ProductInStock] [int] NOT NULL,
	[ProductDescription] [nvarchar](150) NOT NULL,
	[Image] [nvarchar](150) NULL,
	[ProductImage] [image] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductName]    Script Date: 31.10.2024 13:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductName](
	[Id] [int] NOT NULL,
	[ProductName] [nvarchar](150) NULL,
 CONSTRAINT [PK_ProductName] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 31.10.2024 13:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [int] NOT NULL,
	[Role] [nvarchar](150) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 31.10.2024 13:30:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[Id] [int] NOT NULL,
	[Supplier] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_Supplier] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 31.10.2024 13:30:35 ******/
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
	[Password] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Category] ([Id], [Category]) VALUES (1, N'Для животных')
INSERT [dbo].[Category] ([Id], [Category]) VALUES (2, N'Товары для кошек')
INSERT [dbo].[Category] ([Id], [Category]) VALUES (3, N'Товары для собак')
GO
INSERT [dbo].[IdAdress] ([Id], [Adress]) VALUES (1, N'125061')
INSERT [dbo].[IdAdress] ([Id], [Adress]) VALUES (2, N'125703')
INSERT [dbo].[IdAdress] ([Id], [Adress]) VALUES (3, N'125837')
INSERT [dbo].[IdAdress] ([Id], [Adress]) VALUES (4, N'190949')
INSERT [dbo].[IdAdress] ([Id], [Adress]) VALUES (5, N'344288')
INSERT [dbo].[IdAdress] ([Id], [Adress]) VALUES (6, N'394060')
INSERT [dbo].[IdAdress] ([Id], [Adress]) VALUES (7, N'394242')
INSERT [dbo].[IdAdress] ([Id], [Adress]) VALUES (8, N'394782')
INSERT [dbo].[IdAdress] ([Id], [Adress]) VALUES (9, N'400562')
INSERT [dbo].[IdAdress] ([Id], [Adress]) VALUES (10, N'410172')
INSERT [dbo].[IdAdress] ([Id], [Adress]) VALUES (11, N'410542')
INSERT [dbo].[IdAdress] ([Id], [Adress]) VALUES (12, N'410661')
INSERT [dbo].[IdAdress] ([Id], [Adress]) VALUES (13, N'420151')
INSERT [dbo].[IdAdress] ([Id], [Adress]) VALUES (14, N'426030')
INSERT [dbo].[IdAdress] ([Id], [Adress]) VALUES (15, N'443890')
INSERT [dbo].[IdAdress] ([Id], [Adress]) VALUES (16, N'450375')
INSERT [dbo].[IdAdress] ([Id], [Adress]) VALUES (17, N'450558')
INSERT [dbo].[IdAdress] ([Id], [Adress]) VALUES (18, N'450983')
INSERT [dbo].[IdAdress] ([Id], [Adress]) VALUES (19, N'454311')
INSERT [dbo].[IdAdress] ([Id], [Adress]) VALUES (20, N'603002')
INSERT [dbo].[IdAdress] ([Id], [Adress]) VALUES (21, N'603036')
INSERT [dbo].[IdAdress] ([Id], [Adress]) VALUES (22, N'603379')
INSERT [dbo].[IdAdress] ([Id], [Adress]) VALUES (23, N'603721')
INSERT [dbo].[IdAdress] ([Id], [Adress]) VALUES (24, N'614164')
INSERT [dbo].[IdAdress] ([Id], [Adress]) VALUES (25, N'614510')
INSERT [dbo].[IdAdress] ([Id], [Adress]) VALUES (26, N'614611')
INSERT [dbo].[IdAdress] ([Id], [Adress]) VALUES (27, N'614753')
INSERT [dbo].[IdAdress] ([Id], [Adress]) VALUES (28, N'620839')
INSERT [dbo].[IdAdress] ([Id], [Adress]) VALUES (29, N'625283')
INSERT [dbo].[IdAdress] ([Id], [Adress]) VALUES (30, N'625560')
INSERT [dbo].[IdAdress] ([Id], [Adress]) VALUES (31, N'625590')
INSERT [dbo].[IdAdress] ([Id], [Adress]) VALUES (32, N'625683')
INSERT [dbo].[IdAdress] ([Id], [Adress]) VALUES (33, N'630201')
INSERT [dbo].[IdAdress] ([Id], [Adress]) VALUES (34, N'630370')
INSERT [dbo].[IdAdress] ([Id], [Adress]) VALUES (35, N'660007')
INSERT [dbo].[IdAdress] ([Id], [Adress]) VALUES (36, N'660540')
GO
INSERT [dbo].[IdStatus] ([Id], [Status]) VALUES (1, N'Новый')
INSERT [dbo].[IdStatus] ([Id], [Status]) VALUES (2, N'Завершен')
GO
INSERT [dbo].[IdStreet] ([Id], [IdStreet]) VALUES (1, N' ул.Степная')
INSERT [dbo].[IdStreet] ([Id], [IdStreet]) VALUES (2, N'ул.8 Марта')
INSERT [dbo].[IdStreet] ([Id], [IdStreet]) VALUES (3, N'ул.Вишневая')
INSERT [dbo].[IdStreet] ([Id], [IdStreet]) VALUES (4, N'ул.Гоголя')
INSERT [dbo].[IdStreet] ([Id], [IdStreet]) VALUES (5, N'ул.Дзержинского')
INSERT [dbo].[IdStreet] ([Id], [IdStreet]) VALUES (6, N'ул.Зеленая')
INSERT [dbo].[IdStreet] ([Id], [IdStreet]) VALUES (7, N'ул.Клубная')
INSERT [dbo].[IdStreet] ([Id], [IdStreet]) VALUES (8, N'ул.Коммунистическая')
INSERT [dbo].[IdStreet] ([Id], [IdStreet]) VALUES (9, N'ул.Комсомольская')
INSERT [dbo].[IdStreet] ([Id], [IdStreet]) VALUES (10, N'ул.Маяковского')
INSERT [dbo].[IdStreet] ([Id], [IdStreet]) VALUES (11, N'ул.Мичурина')
INSERT [dbo].[IdStreet] ([Id], [IdStreet]) VALUES (12, N'ул.Молодежная')
INSERT [dbo].[IdStreet] ([Id], [IdStreet]) VALUES (13, N'ул.Набережная')
INSERT [dbo].[IdStreet] ([Id], [IdStreet]) VALUES (14, N'ул.Некрасова')
INSERT [dbo].[IdStreet] ([Id], [IdStreet]) VALUES (15, N'ул.Новая')
INSERT [dbo].[IdStreet] ([Id], [IdStreet]) VALUES (16, N'ул.Октябрьская')
INSERT [dbo].[IdStreet] ([Id], [IdStreet]) VALUES (17, N'ул.Партизанская')
INSERT [dbo].[IdStreet] ([Id], [IdStreet]) VALUES (18, N'ул.Победы')
INSERT [dbo].[IdStreet] ([Id], [IdStreet]) VALUES (19, N'ул.Подгорная')
INSERT [dbo].[IdStreet] ([Id], [IdStreet]) VALUES (20, N'ул.Полевая')
INSERT [dbo].[IdStreet] ([Id], [IdStreet]) VALUES (21, N'ул.Садовая')
INSERT [dbo].[IdStreet] ([Id], [IdStreet]) VALUES (22, N'ул.Светлая')
INSERT [dbo].[IdStreet] ([Id], [IdStreet]) VALUES (23, N'ул.Северная')
INSERT [dbo].[IdStreet] ([Id], [IdStreet]) VALUES (24, N'ул.Солнечная')
INSERT [dbo].[IdStreet] ([Id], [IdStreet]) VALUES (25, N'ул.Спортивная')
INSERT [dbo].[IdStreet] ([Id], [IdStreet]) VALUES (26, N'ул.Фрунзе')
INSERT [dbo].[IdStreet] ([Id], [IdStreet]) VALUES (27, N'ул.Цветочная')
INSERT [dbo].[IdStreet] ([Id], [IdStreet]) VALUES (28, N'ул.Чехова')
INSERT [dbo].[IdStreet] ([Id], [IdStreet]) VALUES (29, N'ул.Школьная')
INSERT [dbo].[IdStreet] ([Id], [IdStreet]) VALUES (30, N'ул.Шоссейная')
GO
INSERT [dbo].[IdTown] ([Id], [Town]) VALUES (1, N'г.Нефтеюганск')
GO
INSERT [dbo].[Manufacture] ([Id], [Manufacture]) VALUES (1, N'Cat Chow')
INSERT [dbo].[Manufacture] ([Id], [Manufacture]) VALUES (2, N'Chappy')
INSERT [dbo].[Manufacture] ([Id], [Manufacture]) VALUES (3, N'Dog Chow')
INSERT [dbo].[Manufacture] ([Id], [Manufacture]) VALUES (4, N'Dreames')
INSERT [dbo].[Manufacture] ([Id], [Manufacture]) VALUES (5, N'Fancy Pets')
INSERT [dbo].[Manufacture] ([Id], [Manufacture]) VALUES (6, N'LIKER')
INSERT [dbo].[Manufacture] ([Id], [Manufacture]) VALUES (7, N'Nobby')
INSERT [dbo].[Manufacture] ([Id], [Manufacture]) VALUES (8, N'Pro Plan')
INSERT [dbo].[Manufacture] ([Id], [Manufacture]) VALUES (9, N'TitBit')
INSERT [dbo].[Manufacture] ([Id], [Manufacture]) VALUES (10, N'Triol')
INSERT [dbo].[Manufacture] ([Id], [Manufacture]) VALUES (11, N'trixie')
INSERT [dbo].[Manufacture] ([Id], [Manufacture]) VALUES (12, N'True Touch')
INSERT [dbo].[Manufacture] ([Id], [Manufacture]) VALUES (13, N'ZooM')
GO
INSERT [dbo].[Order] ([Id], [User_Id], [Order_Afrticle], [Date_Order], [Date_Of_delevery], [PickPoint], [Code], [Id_Status]) VALUES (1, NULL, N'А112Т4, 15, G453T5, 1', N'06.05.2022', N'12.05.2022', 25, N'601', 1)
INSERT [dbo].[Order] ([Id], [User_Id], [Order_Afrticle], [Date_Order], [Date_Of_delevery], [PickPoint], [Code], [Id_Status]) VALUES (2, NULL, N'F432F4, 15, Y324F4, 15', N'06.05.2022', N'12.05.2022', 20, N'602', 1)
INSERT [dbo].[Order] ([Id], [User_Id], [Order_Afrticle], [Date_Order], [Date_Of_delevery], [PickPoint], [Code], [Id_Status]) VALUES (3, 9, N'E532Q5, 10, T432F4, 10', N'08.05.2022', N'14.05.2022', 22, N'603', 2)
INSERT [dbo].[Order] ([Id], [User_Id], [Order_Afrticle], [Date_Order], [Date_Of_delevery], [PickPoint], [Code], [Id_Status]) VALUES (4, NULL, N'G345E4, 1, E345R4, 2', N'08.05.2022', N'14.05.2022', 24, N'604', 2)
INSERT [dbo].[Order] ([Id], [User_Id], [Order_Afrticle], [Date_Order], [Date_Of_delevery], [PickPoint], [Code], [Id_Status]) VALUES (5, NULL, N'R356F4, 1, E431R5, 10', N'10.05.2022', N'16.05.2022', 25, N'605', 2)
INSERT [dbo].[Order] ([Id], [User_Id], [Order_Afrticle], [Date_Order], [Date_Of_delevery], [PickPoint], [Code], [Id_Status]) VALUES (6, 7, N'H436R4, 1, D643B5, 1', N'11.05.2022', N'17.05.2022', 28, N'606', 2)
INSERT [dbo].[Order] ([Id], [User_Id], [Order_Afrticle], [Date_Order], [Date_Of_delevery], [PickPoint], [Code], [Id_Status]) VALUES (7, NULL, N'H342F5, 2, Q245F5, 2', N'12.05.2022', N'18.05.2022', 36, N'607', 1)
INSERT [dbo].[Order] ([Id], [User_Id], [Order_Afrticle], [Date_Order], [Date_Of_delevery], [PickPoint], [Code], [Id_Status]) VALUES (8, NULL, N'K436T5, 1, V527T5, 1', N'13.05.2022', N'19.05.2022', 32, N'608', 1)
INSERT [dbo].[Order] ([Id], [User_Id], [Order_Afrticle], [Date_Order], [Date_Of_delevery], [PickPoint], [Code], [Id_Status]) VALUES (9, 2, N'V527T5, 1, K452T5, 1', N'15.05.2022', N'21.05.2022', 34, N'609', 1)
INSERT [dbo].[Order] ([Id], [User_Id], [Order_Afrticle], [Date_Order], [Date_Of_delevery], [PickPoint], [Code], [Id_Status]) VALUES (10, 8, N'M356R4, 1, W548O7, 1', N'15.05.2022', N'21.05.2022', 36, N'610', 2)
GO
INSERT [dbo].[OrderProduct] ([Id], [ProductId], [Article], [Count], [PickPoint_ID]) VALUES (1, 1, N'А112Т4', 15, 25)
INSERT [dbo].[OrderProduct] ([Id], [ProductId], [Article], [Count], [PickPoint_ID]) VALUES (2, 2, N'F432F4', 15, 20)
INSERT [dbo].[OrderProduct] ([Id], [ProductId], [Article], [Count], [PickPoint_ID]) VALUES (3, 3, N'E532Q5', 10, 22)
INSERT [dbo].[OrderProduct] ([Id], [ProductId], [Article], [Count], [PickPoint_ID]) VALUES (4, 4, N'G345E4', 1, 24)
INSERT [dbo].[OrderProduct] ([Id], [ProductId], [Article], [Count], [PickPoint_ID]) VALUES (5, 5, N'R356F4', 1, 25)
INSERT [dbo].[OrderProduct] ([Id], [ProductId], [Article], [Count], [PickPoint_ID]) VALUES (6, 6, N'H436R4', 1, 28)
INSERT [dbo].[OrderProduct] ([Id], [ProductId], [Article], [Count], [PickPoint_ID]) VALUES (7, 7, N'H342F5', 2, 36)
INSERT [dbo].[OrderProduct] ([Id], [ProductId], [Article], [Count], [PickPoint_ID]) VALUES (8, 8, N'K436T5', 1, 32)
INSERT [dbo].[OrderProduct] ([Id], [ProductId], [Article], [Count], [PickPoint_ID]) VALUES (9, 9, N'V527T5', 1, 32)
INSERT [dbo].[OrderProduct] ([Id], [ProductId], [Article], [Count], [PickPoint_ID]) VALUES (10, 10, N'M356R4', 1, 36)
INSERT [dbo].[OrderProduct] ([Id], [ProductId], [Article], [Count], [PickPoint_ID]) VALUES (11, 1, N'G453T5', 1, 25)
INSERT [dbo].[OrderProduct] ([Id], [ProductId], [Article], [Count], [PickPoint_ID]) VALUES (12, 2, N'Y324F4', 15, 20)
INSERT [dbo].[OrderProduct] ([Id], [ProductId], [Article], [Count], [PickPoint_ID]) VALUES (13, 3, N'T432F4', 10, 22)
INSERT [dbo].[OrderProduct] ([Id], [ProductId], [Article], [Count], [PickPoint_ID]) VALUES (14, 4, N'E345R4', 2, 24)
INSERT [dbo].[OrderProduct] ([Id], [ProductId], [Article], [Count], [PickPoint_ID]) VALUES (15, 5, N'E431R5', 10, 25)
INSERT [dbo].[OrderProduct] ([Id], [ProductId], [Article], [Count], [PickPoint_ID]) VALUES (16, 6, N'D643B5', 1, 28)
INSERT [dbo].[OrderProduct] ([Id], [ProductId], [Article], [Count], [PickPoint_ID]) VALUES (17, 7, N'Q245F5', 2, 36)
INSERT [dbo].[OrderProduct] ([Id], [ProductId], [Article], [Count], [PickPoint_ID]) VALUES (18, 8, N'V527T5', 1, 32)
INSERT [dbo].[OrderProduct] ([Id], [ProductId], [Article], [Count], [PickPoint_ID]) VALUES (19, 9, N'K452T5', 1, 34)
INSERT [dbo].[OrderProduct] ([Id], [ProductId], [Article], [Count], [PickPoint_ID]) VALUES (20, 10, N'W548O7', 1, 36)
GO
INSERT [dbo].[PickPoint] ([Id], [IdAdress], [IdTown], [IdStreet], [House]) VALUES (1, 5, 1, 28, 1)
INSERT [dbo].[PickPoint] ([Id], [IdAdress], [IdTown], [IdStreet], [House]) VALUES (2, 24, 1, 1, 30)
INSERT [dbo].[PickPoint] ([Id], [IdAdress], [IdTown], [IdStreet], [House]) VALUES (3, 7, 1, 8, 43)
INSERT [dbo].[PickPoint] ([Id], [IdAdress], [IdTown], [IdStreet], [House]) VALUES (4, 36, 1, 24, 25)
INSERT [dbo].[PickPoint] ([Id], [IdAdress], [IdTown], [IdStreet], [House]) VALUES (5, 3, 1, 30, 40)
INSERT [dbo].[PickPoint] ([Id], [IdAdress], [IdTown], [IdStreet], [House]) VALUES (6, 2, 1, 17, 49)
INSERT [dbo].[PickPoint] ([Id], [IdAdress], [IdTown], [IdStreet], [House]) VALUES (7, 29, 1, 18, 46)
INSERT [dbo].[PickPoint] ([Id], [IdAdress], [IdTown], [IdStreet], [House]) VALUES (8, 26, 1, 12, 50)
INSERT [dbo].[PickPoint] ([Id], [IdAdress], [IdTown], [IdStreet], [House]) VALUES (9, 19, 1, 15, 19)
INSERT [dbo].[PickPoint] ([Id], [IdAdress], [IdTown], [IdStreet], [House]) VALUES (10, 35, 1, 16, 19)
INSERT [dbo].[PickPoint] ([Id], [IdAdress], [IdTown], [IdStreet], [House]) VALUES (11, 21, 1, 21, 4)
INSERT [dbo].[PickPoint] ([Id], [IdAdress], [IdTown], [IdStreet], [House]) VALUES (12, 18, 1, 9, 26)
INSERT [dbo].[PickPoint] ([Id], [IdAdress], [IdTown], [IdStreet], [House]) VALUES (13, 8, 1, 28, 3)
INSERT [dbo].[PickPoint] ([Id], [IdAdress], [IdTown], [IdStreet], [House]) VALUES (14, 20, 1, 5, 28)
INSERT [dbo].[PickPoint] ([Id], [IdAdress], [IdTown], [IdStreet], [House]) VALUES (15, 17, 1, 13, 30)
INSERT [dbo].[PickPoint] ([Id], [IdAdress], [IdTown], [IdStreet], [House]) VALUES (16, 6, 1, 26, 43)
INSERT [dbo].[PickPoint] ([Id], [IdAdress], [IdTown], [IdStreet], [House]) VALUES (17, 12, 1, 29, 50)
INSERT [dbo].[PickPoint] ([Id], [IdAdress], [IdTown], [IdStreet], [House]) VALUES (18, 31, 1, 8, 20)
INSERT [dbo].[PickPoint] ([Id], [IdAdress], [IdTown], [IdStreet], [House]) VALUES (19, 32, 1, 2, NULL)
INSERT [dbo].[PickPoint] ([Id], [IdAdress], [IdTown], [IdStreet], [House]) VALUES (20, 9, 1, 6, 32)
INSERT [dbo].[PickPoint] ([Id], [IdAdress], [IdTown], [IdStreet], [House]) VALUES (21, 25, 1, 10, 47)
INSERT [dbo].[PickPoint] ([Id], [IdAdress], [IdTown], [IdStreet], [House]) VALUES (22, 11, 1, 22, 46)
INSERT [dbo].[PickPoint] ([Id], [IdAdress], [IdTown], [IdStreet], [House]) VALUES (23, 28, 1, 27, 8)
INSERT [dbo].[PickPoint] ([Id], [IdAdress], [IdTown], [IdStreet], [House]) VALUES (24, 15, 1, 8, 1)
INSERT [dbo].[PickPoint] ([Id], [IdAdress], [IdTown], [IdStreet], [House]) VALUES (25, 22, 1, 25, 46)
INSERT [dbo].[PickPoint] ([Id], [IdAdress], [IdTown], [IdStreet], [House]) VALUES (26, 23, 1, 4, 41)
INSERT [dbo].[PickPoint] ([Id], [IdAdress], [IdTown], [IdStreet], [House]) VALUES (27, 10, 1, 23, 13)
INSERT [dbo].[PickPoint] ([Id], [IdAdress], [IdTown], [IdStreet], [House]) VALUES (28, 13, 1, 3, 32)
INSERT [dbo].[PickPoint] ([Id], [IdAdress], [IdTown], [IdStreet], [House]) VALUES (29, 1, 1, 19, 8)
INSERT [dbo].[PickPoint] ([Id], [IdAdress], [IdTown], [IdStreet], [House]) VALUES (30, 34, 1, 30, 24)
INSERT [dbo].[PickPoint] ([Id], [IdAdress], [IdTown], [IdStreet], [House]) VALUES (31, 27, 1, 20, 35)
INSERT [dbo].[PickPoint] ([Id], [IdAdress], [IdTown], [IdStreet], [House]) VALUES (32, 14, 1, 10, 44)
INSERT [dbo].[PickPoint] ([Id], [IdAdress], [IdTown], [IdStreet], [House]) VALUES (33, 16, 1, 7, 44)
INSERT [dbo].[PickPoint] ([Id], [IdAdress], [IdTown], [IdStreet], [House]) VALUES (34, 30, 1, 14, 12)
INSERT [dbo].[PickPoint] ([Id], [IdAdress], [IdTown], [IdStreet], [House]) VALUES (35, 33, 1, 9, 17)
INSERT [dbo].[PickPoint] ([Id], [IdAdress], [IdTown], [IdStreet], [House]) VALUES (36, 4, 1, 11, 26)
GO
INSERT [dbo].[Product] ([Id], [IdProductName], [IdManufacture], [IdSupplier], [IdCategory], [Article], [Price], [DiscountMax], [DiscountNow], [ProductInStock], [ProductDescription], [Image], [ProductImage]) VALUES (1, 3, 4, 1, 2, N'А112Т4', 123, 30, 3, 6, N'Лакомство для кошек Dreamies Подушечки с курицей, 140 г', N'А112Т4.png', NULL)
INSERT [dbo].[Product] ([Id], [IdProductName], [IdManufacture], [IdSupplier], [IdCategory], [Article], [Price], [DiscountMax], [DiscountNow], [ProductInStock], [ProductDescription], [Image], [ProductImage]) VALUES (2, 8, 12, 2, 1, N'G453T5', 149, 15, 2, 7, N'Щетка-варежка True Touch для вычесывания шерсти, синий', N'G453T5.jpg', NULL)
INSERT [dbo].[Product] ([Id], [IdProductName], [IdManufacture], [IdSupplier], [IdCategory], [Article], [Price], [DiscountMax], [DiscountNow], [ProductInStock], [ProductDescription], [Image], [ProductImage]) VALUES (3, 7, 8, 2, 2, N'F432F4', 1200, 10, 3, 15, N'Сухой корм для кошек Pro Plan с чувствительным пищеварением', N'F432F4.jpg', NULL)
INSERT [dbo].[Product] ([Id], [IdProductName], [IdManufacture], [IdSupplier], [IdCategory], [Article], [Price], [DiscountMax], [DiscountNow], [ProductInStock], [ProductDescription], [Image], [ProductImage]) VALUES (4, 3, 9, 1, 3, N'Y324F4', 86, 5, 4, 17, N'Лакомство для собак Titbit Косточки мясные с индейкой и ягненком, 145 г', N'Y324F4.jpg', NULL)
INSERT [dbo].[Product] ([Id], [IdProductName], [IdManufacture], [IdSupplier], [IdCategory], [Article], [Price], [DiscountMax], [DiscountNow], [ProductInStock], [ProductDescription], [Image], [ProductImage]) VALUES (5, 3, 9, 1, 3, N'E532Q5', 166, 15, 5, 18, N'Лакомство для собак Titbit Печенье Био Десерт с лососем стандарт, 350 г', N'E532Q5.jpg', NULL)
INSERT [dbo].[Product] ([Id], [IdProductName], [IdManufacture], [IdSupplier], [IdCategory], [Article], [Price], [DiscountMax], [DiscountNow], [ProductInStock], [ProductDescription], [Image], [ProductImage]) VALUES (6, 7, 2, 2, 3, N'T432F4', 1700, 25, 2, 5, N'Сухой корм для собак Chappi говядина по-домашнему, с овощами', N'T432F4.jpg', NULL)
INSERT [dbo].[Product] ([Id], [IdProductName], [IdManufacture], [IdSupplier], [IdCategory], [Article], [Price], [DiscountMax], [DiscountNow], [ProductInStock], [ProductDescription], [Image], [ProductImage]) VALUES (7, 6, 6, 2, 3, N'G345E4', 300, 5, 3, 19, N'Мячик для собак LIKER Мячик Лайкер (6294) оранжевый', N'G345E4.jpg', NULL)
INSERT [dbo].[Product] ([Id], [IdProductName], [IdManufacture], [IdSupplier], [IdCategory], [Article], [Price], [DiscountMax], [DiscountNow], [ProductInStock], [ProductDescription], [Image], [ProductImage]) VALUES (8, 1, 5, 2, 2, N'E345R4', 199, 5, 5, 7, N'Игрушка для животных «Котик» с кошачьей мятой FANCY PETS', N'E345R4.jpg', NULL)
INSERT [dbo].[Product] ([Id], [IdProductName], [IdManufacture], [IdSupplier], [IdCategory], [Article], [Price], [DiscountMax], [DiscountNow], [ProductInStock], [ProductDescription], [Image], [ProductImage]) VALUES (9, 5, 7, 1, 3, N'R356F4', 234, 10, 3, 17, N'Миска Nobby с рисунком Dog для собак 130 мл красный', N'R356F4.jpg', NULL)
INSERT [dbo].[Product] ([Id], [IdProductName], [IdManufacture], [IdSupplier], [IdCategory], [Article], [Price], [DiscountMax], [DiscountNow], [ProductInStock], [ProductDescription], [Image], [ProductImage]) VALUES (10, 3, 10, 2, 3, N'E431R5', 170, 5, 5, 5, N'Лакомство для собак Triol Кость из жил 7.5 см, 4шт. в уп.', N'E431R5.png', NULL)
INSERT [dbo].[Product] ([Id], [IdProductName], [IdManufacture], [IdSupplier], [IdCategory], [Article], [Price], [DiscountMax], [DiscountNow], [ProductInStock], [ProductDescription], [Image], [ProductImage]) VALUES (11, 1, 10, 1, 3, N'D563F4', 600, 10, 5, 5, N'Игрушка для собак Triol Бобер 41 см 12141053 бежевый', NULL, NULL)
INSERT [dbo].[Product] ([Id], [IdProductName], [IdManufacture], [IdSupplier], [IdCategory], [Article], [Price], [DiscountMax], [DiscountNow], [ProductInStock], [ProductDescription], [Image], [ProductImage]) VALUES (12, 1, 10, 1, 3, N'H436R4', 300, 15, 2, 15, N'Игрушка для собак Triol 3D плетение EC-04/12171005 бежевый', NULL, NULL)
INSERT [dbo].[Product] ([Id], [IdProductName], [IdManufacture], [IdSupplier], [IdCategory], [Article], [Price], [DiscountMax], [DiscountNow], [ProductInStock], [ProductDescription], [Image], [ProductImage]) VALUES (13, 7, 1, 1, 2, N'D643B5', 4100, 30, 4, 9, N'Сухой корм для котят CAT CHOW с высоким содержанием домашней птицы', NULL, NULL)
INSERT [dbo].[Product] ([Id], [IdProductName], [IdManufacture], [IdSupplier], [IdCategory], [Article], [Price], [DiscountMax], [DiscountNow], [ProductInStock], [ProductDescription], [Image], [ProductImage]) VALUES (14, 5, 10, 2, 1, N'H432F4', 385, 10, 2, 17, N'Миска Triol 9002/KIDP3211/30261087 400 мл серебристый', NULL, NULL)
INSERT [dbo].[Product] ([Id], [IdProductName], [IdManufacture], [IdSupplier], [IdCategory], [Article], [Price], [DiscountMax], [DiscountNow], [ProductInStock], [ProductDescription], [Image], [ProductImage]) VALUES (15, 7, 1, 2, 2, N'S245R4', 280, 15, 3, 8, N'Сухой корм для кошек CAT CHOW', NULL, NULL)
INSERT [dbo].[Product] ([Id], [IdProductName], [IdManufacture], [IdSupplier], [IdCategory], [Article], [Price], [DiscountMax], [DiscountNow], [ProductInStock], [ProductDescription], [Image], [ProductImage]) VALUES (16, 7, 2, 1, 3, N'V352R4', 1700, 25, 4, 9, N'Сухой корм для собак Chappi Мясное изобилие, мясное ассорти', NULL, NULL)
INSERT [dbo].[Product] ([Id], [IdProductName], [IdManufacture], [IdSupplier], [IdCategory], [Article], [Price], [DiscountMax], [DiscountNow], [ProductInStock], [ProductDescription], [Image], [ProductImage]) VALUES (17, 1, 10, 2, 3, N'H342F5', 510, 5, 2, 17, N'Игрушка для собак Triol Енот 41 см 12141063 серый', NULL, NULL)
INSERT [dbo].[Product] ([Id], [IdProductName], [IdManufacture], [IdSupplier], [IdCategory], [Article], [Price], [DiscountMax], [DiscountNow], [ProductInStock], [ProductDescription], [Image], [ProductImage]) VALUES (18, 1, 10, 2, 3, N'Q245F5', 510, 5, 2, 17, N'Игрушка для собак Triol Бобер 41 см 12141063 серый', NULL, NULL)
INSERT [dbo].[Product] ([Id], [IdProductName], [IdManufacture], [IdSupplier], [IdCategory], [Article], [Price], [DiscountMax], [DiscountNow], [ProductInStock], [ProductDescription], [Image], [ProductImage]) VALUES (19, 7, 8, 1, 3, N'G542F5', 2190, 30, 4, 7, N'Сухой корм для собак Pro Plan при чувствительном пищеварении, ягненок', NULL, NULL)
INSERT [dbo].[Product] ([Id], [IdProductName], [IdManufacture], [IdSupplier], [IdCategory], [Article], [Price], [DiscountMax], [DiscountNow], [ProductInStock], [ProductDescription], [Image], [ProductImage]) VALUES (20, 3, 10, 2, 3, N'H542R6', 177, 15, 3, 15, N'Лакомство для собак Triol Мясные полоски из кролика, 70 г', NULL, NULL)
INSERT [dbo].[Product] ([Id], [IdProductName], [IdManufacture], [IdSupplier], [IdCategory], [Article], [Price], [DiscountMax], [DiscountNow], [ProductInStock], [ProductDescription], [Image], [ProductImage]) VALUES (21, 6, 10, 2, 3, N'K436T5', 100, 5, 4, 21, N'Мячик для собак Triol с косточками 12101096 желтый/зеленый', NULL, NULL)
INSERT [dbo].[Product] ([Id], [IdProductName], [IdManufacture], [IdSupplier], [IdCategory], [Article], [Price], [DiscountMax], [DiscountNow], [ProductInStock], [ProductDescription], [Image], [ProductImage]) VALUES (22, 1, 10, 1, 3, N'V527T5', 640, 5, 5, 4, N'Игрушка для собак Triol Ящерица 39 см коричневый', NULL, NULL)
INSERT [dbo].[Product] ([Id], [IdProductName], [IdManufacture], [IdSupplier], [IdCategory], [Article], [Price], [DiscountMax], [DiscountNow], [ProductInStock], [ProductDescription], [Image], [ProductImage]) VALUES (23, 4, 13, 2, 3, N'K452T5', 800, 25, 2, 17, N'Лежак для собак и кошек ZooM Lama 40х30х8 см бежевый', NULL, NULL)
INSERT [dbo].[Product] ([Id], [IdProductName], [IdManufacture], [IdSupplier], [IdCategory], [Article], [Price], [DiscountMax], [DiscountNow], [ProductInStock], [ProductDescription], [Image], [ProductImage]) VALUES (24, 2, 10, 2, 3, N'E466T6', 3500, 30, 5, 3, N'Клетка для собак Triol 30671002 61х45.5х52 см серый/белый', NULL, NULL)
INSERT [dbo].[Product] ([Id], [IdProductName], [IdManufacture], [IdSupplier], [IdCategory], [Article], [Price], [DiscountMax], [DiscountNow], [ProductInStock], [ProductDescription], [Image], [ProductImage]) VALUES (25, 5, 10, 2, 1, N'B427R5', 400, 15, 4, 5, N'Миска для животных Triol "Стрекоза", 450 мл', NULL, NULL)
INSERT [dbo].[Product] ([Id], [IdProductName], [IdManufacture], [IdSupplier], [IdCategory], [Article], [Price], [DiscountMax], [DiscountNow], [ProductInStock], [ProductDescription], [Image], [ProductImage]) VALUES (26, 5, 10, 1, 1, N'H643W2', 292, 25, 3, 13, N'Миска Triol CB02/30231002 100 мл бежевый/голубой', NULL, NULL)
INSERT [dbo].[Product] ([Id], [IdProductName], [IdManufacture], [IdSupplier], [IdCategory], [Article], [Price], [DiscountMax], [DiscountNow], [ProductInStock], [ProductDescription], [Image], [ProductImage]) VALUES (27, 6, 11, 1, 3, N'D356R4', 600, 15, 2, 16, N'Мячик для собак TRIXIE DentaFun (32942) зеленый / белый', NULL, NULL)
INSERT [dbo].[Product] ([Id], [IdProductName], [IdManufacture], [IdSupplier], [IdCategory], [Article], [Price], [DiscountMax], [DiscountNow], [ProductInStock], [ProductDescription], [Image], [ProductImage]) VALUES (28, 3, 9, 2, 3, N'E434U6', 140, 20, 3, 19, N'Лакомство для собак Titbit Лакомый кусочек Нарезка из говядины, 80 г', NULL, NULL)
INSERT [dbo].[Product] ([Id], [IdProductName], [IdManufacture], [IdSupplier], [IdCategory], [Article], [Price], [DiscountMax], [DiscountNow], [ProductInStock], [ProductDescription], [Image], [ProductImage]) VALUES (29, 3, 9, 2, 3, N'M356R4', 50, 5, 4, 6, N'Лакомство для собак Titbit Гематоген мясной Classic, 35 г', NULL, NULL)
INSERT [dbo].[Product] ([Id], [IdProductName], [IdManufacture], [IdSupplier], [IdCategory], [Article], [Price], [DiscountMax], [DiscountNow], [ProductInStock], [ProductDescription], [Image], [ProductImage]) VALUES (30, 7, 3, 1, 3, N'W548O7', 600, 15, 5, 15, N'Сухой корм для щенков DOG CHOW Puppy, ягненок 2.5 кг', NULL, NULL)
GO
INSERT [dbo].[ProductName] ([Id], [ProductName]) VALUES (1, N'Игрушка')
INSERT [dbo].[ProductName] ([Id], [ProductName]) VALUES (2, N'Клетка')
INSERT [dbo].[ProductName] ([Id], [ProductName]) VALUES (3, N'Лакомство')
INSERT [dbo].[ProductName] ([Id], [ProductName]) VALUES (4, N'Лежак')
INSERT [dbo].[ProductName] ([Id], [ProductName]) VALUES (5, N'Миска')
INSERT [dbo].[ProductName] ([Id], [ProductName]) VALUES (6, N'Мячик')
INSERT [dbo].[ProductName] ([Id], [ProductName]) VALUES (7, N'Сухой корм')
INSERT [dbo].[ProductName] ([Id], [ProductName]) VALUES (8, N'Щетка-варежка')
GO
INSERT [dbo].[Role] ([Id], [Role]) VALUES (1, N'Администратор')
INSERT [dbo].[Role] ([Id], [Role]) VALUES (2, N'Клиент')
INSERT [dbo].[Role] ([Id], [Role]) VALUES (3, N'Менеджер')
GO
INSERT [dbo].[Supplier] ([Id], [Supplier]) VALUES (1, N'PetShop')
INSERT [dbo].[Supplier] ([Id], [Supplier]) VALUES (2, N'ZooMir')
GO
INSERT [dbo].[User] ([Id], [IdRole], [UserSurname], [UserName], [UserPastNane], [Login], [Password]) VALUES (1, 1, N'Суслов', N'Илья', N'Арсентьевич', N'pixil59@gmail.com', N'2L6KZG')
INSERT [dbo].[User] ([Id], [IdRole], [UserSurname], [UserName], [UserPastNane], [Login], [Password]) VALUES (2, 1, N'Волкова', N'Эмилия', N'Артёмовна', N'nokupekidda2001@gmail.com', N'JlFRCZ')
INSERT [dbo].[User] ([Id], [IdRole], [UserSurname], [UserName], [UserPastNane], [Login], [Password]) VALUES (3, 1, N'Денисов', N'Михаил', N'Романович', N'frusubroppotou656@yandex.ru', N'YOyhfR')
INSERT [dbo].[User] ([Id], [IdRole], [UserSurname], [UserName], [UserPastNane], [Login], [Password]) VALUES (4, 3, N'Игнатьева', N'Алина', N'Михайловна', N'vilagajaunne-5170@yandex.ru', N'8ntwUp')
INSERT [dbo].[User] ([Id], [IdRole], [UserSurname], [UserName], [UserPastNane], [Login], [Password]) VALUES (5, 3, N'Соловьев', N'Ярослав', N'Маркович', N'frapreubrulloba1141@yandex.ru', N'rwVDh9')
INSERT [dbo].[User] ([Id], [IdRole], [UserSurname], [UserName], [UserPastNane], [Login], [Password]) VALUES (6, 3, N'Тимофеев', N'Михаил', N'Елисеевич', N'leuttevitrafo1998@mail.ru', N'RSbvHv')
INSERT [dbo].[User] ([Id], [IdRole], [UserSurname], [UserName], [UserPastNane], [Login], [Password]) VALUES (7, 2, N'Филимонов', N'Роберт', N'Васильевич', N'loudittoimmolau1900@gmail.com', N'LdNyos')
INSERT [dbo].[User] ([Id], [IdRole], [UserSurname], [UserName], [UserPastNane], [Login], [Password]) VALUES (8, 2, N'Чистякова', N'Виктория', N'Степановна', N'freineiciweijau888@yandex.ru', N'AtnDjr')
INSERT [dbo].[User] ([Id], [IdRole], [UserSurname], [UserName], [UserPastNane], [Login], [Password]) VALUES (9, 2, N'Шилова', N'Майя', N'Артемьевна', N'hittuprofassa4984@mail.com', N'gynQMT')
INSERT [dbo].[User] ([Id], [IdRole], [UserSurname], [UserName], [UserPastNane], [Login], [Password]) VALUES (10, 2, N'Яковлева', N'Ярослава', N'Даниэльевна', N'deummecillummu-4992@mail.ru', N'uzWC67')
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_IdStatus] FOREIGN KEY([Id_Status])
REFERENCES [dbo].[IdStatus] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_IdStatus]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_OrderProduct] FOREIGN KEY([Id])
REFERENCES [dbo].[OrderProduct] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_OrderProduct]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Product] FOREIGN KEY([Id])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Product]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_User] FOREIGN KEY([User_Id])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_User]
GO
ALTER TABLE [dbo].[OrderProduct]  WITH CHECK ADD  CONSTRAINT [FK_OrderProduct_PickPoint] FOREIGN KEY([PickPoint_ID])
REFERENCES [dbo].[PickPoint] ([Id])
GO
ALTER TABLE [dbo].[OrderProduct] CHECK CONSTRAINT [FK_OrderProduct_PickPoint]
GO
ALTER TABLE [dbo].[OrderProduct]  WITH CHECK ADD  CONSTRAINT [FK_OrderProduct_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[OrderProduct] CHECK CONSTRAINT [FK_OrderProduct_Product]
GO
ALTER TABLE [dbo].[PickPoint]  WITH CHECK ADD  CONSTRAINT [FK_PickPoint_IdAdress] FOREIGN KEY([IdAdress])
REFERENCES [dbo].[IdAdress] ([Id])
GO
ALTER TABLE [dbo].[PickPoint] CHECK CONSTRAINT [FK_PickPoint_IdAdress]
GO
ALTER TABLE [dbo].[PickPoint]  WITH CHECK ADD  CONSTRAINT [FK_PickPoint_IdStreet] FOREIGN KEY([IdStreet])
REFERENCES [dbo].[IdStreet] ([Id])
GO
ALTER TABLE [dbo].[PickPoint] CHECK CONSTRAINT [FK_PickPoint_IdStreet]
GO
ALTER TABLE [dbo].[PickPoint]  WITH CHECK ADD  CONSTRAINT [FK_PickPoint_IdTown] FOREIGN KEY([IdTown])
REFERENCES [dbo].[IdTown] ([Id])
GO
ALTER TABLE [dbo].[PickPoint] CHECK CONSTRAINT [FK_PickPoint_IdTown]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([IdCategory])
REFERENCES [dbo].[Category] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Manufacture] FOREIGN KEY([IdManufacture])
REFERENCES [dbo].[Manufacture] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Manufacture]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductName] FOREIGN KEY([IdProductName])
REFERENCES [dbo].[ProductName] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ProductName]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Supplier] FOREIGN KEY([IdSupplier])
REFERENCES [dbo].[Supplier] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Supplier]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([IdRole])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
USE [master]
GO
ALTER DATABASE [Georgy_Stepanyan] SET  READ_WRITE 
GO
