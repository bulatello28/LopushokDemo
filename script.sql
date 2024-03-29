USE [DemoPracticeShaykhutdinov420]
GO
/****** Object:  Table [dbo].[Material]    Script Date: 26.02.2024 17:04:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Material](
	[Id] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[IdTypeMaterial] [int] NOT NULL,
	[CountInPack] [int] NOT NULL,
	[IdMeasurementType] [int] NOT NULL,
	[CountInStorage] [int] NOT NULL,
	[MinPossibleBalance] [int] NOT NULL,
	[Price] [int] NOT NULL,
 CONSTRAINT [PK_Material] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaterialType]    Script Date: 26.02.2024 17:04:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaterialType](
	[Id] [int] NOT NULL,
	[Title] [varchar](30) NOT NULL,
 CONSTRAINT [PK_MaterialType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MeasurementType]    Script Date: 26.02.2024 17:04:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MeasurementType](
	[Id] [int] NOT NULL,
	[Title] [varchar](30) NOT NULL,
 CONSTRAINT [PK_MeasurementType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 26.02.2024 17:04:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Articul] [nvarchar](15) NOT NULL,
	[MinCost] [int] NOT NULL,
	[Image] [image] NULL,
	[IdProductType] [int] NOT NULL,
	[CountOfPeople] [int] NOT NULL,
	[IdWorkshop] [int] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductMaterial]    Script Date: 26.02.2024 17:04:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductMaterial](
	[Id] [int] NOT NULL,
	[IdProduct] [int] NOT NULL,
	[IdMaterial] [int] NOT NULL,
	[CountOfMaterial] [int] NOT NULL,
 CONSTRAINT [PK_ProductMaterial] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductType]    Script Date: 26.02.2024 17:04:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductType](
	[Id] [int] NOT NULL,
	[Title] [varchar](30) NOT NULL,
 CONSTRAINT [PK_ProductType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Workshop]    Script Date: 26.02.2024 17:04:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Workshop](
	[Id] [int] NOT NULL,
 CONSTRAINT [PK_Workshop] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Material] ([Id], [Name], [IdTypeMaterial], [CountInPack], [IdMeasurementType], [CountInStorage], [MinPossibleBalance], [Price]) VALUES (1, N'С1ованный материал серый 0x2', 1, 5, 1, 140, 49, 33128)
INSERT [dbo].[Material] ([Id], [Name], [IdTypeMaterial], [CountInPack], [IdMeasurementType], [CountInStorage], [MinPossibleBalance], [Price]) VALUES (2, N'2 бумаги зеленый 1x1', 2, 3, 1, 634, 36, 26841)
INSERT [dbo].[Material] ([Id], [Name], [IdTypeMaterial], [CountInPack], [IdMeasurementType], [CountInStorage], [MinPossibleBalance], [Price]) VALUES (3, N'С1ованный материал розовый 2x1', 1, 8, 1, 636, 21, 52606)
INSERT [dbo].[Material] ([Id], [Name], [IdTypeMaterial], [CountInPack], [IdMeasurementType], [CountInStorage], [MinPossibleBalance], [Price]) VALUES (4, N'Гранулы для бумаги розовый 2x2', 3, 10, 2, 661, 16, 10608)
INSERT [dbo].[Material] ([Id], [Name], [IdTypeMaterial], [CountInPack], [IdMeasurementType], [CountInStorage], [MinPossibleBalance], [Price]) VALUES (5, N'С1ованный материал белый 1x1', 1, 7, 3, 843, 16, 43440)
INSERT [dbo].[Material] ([Id], [Name], [IdTypeMaterial], [CountInPack], [IdMeasurementType], [CountInStorage], [MinPossibleBalance], [Price]) VALUES (6, N'2 бумаги белый 1x0', 2, 1, 1, 501, 49, 15833)
INSERT [dbo].[Material] ([Id], [Name], [IdTypeMaterial], [CountInPack], [IdMeasurementType], [CountInStorage], [MinPossibleBalance], [Price]) VALUES (7, N'Переработка бумаги синий 0x3', 4, 9, 1, 958, 32, 14180)
INSERT [dbo].[Material] ([Id], [Name], [IdTypeMaterial], [CountInPack], [IdMeasurementType], [CountInStorage], [MinPossibleBalance], [Price]) VALUES (8, N'2 бумаги цветной 2x0', 2, 3, 1, 386, 46, 35544)
INSERT [dbo].[Material] ([Id], [Name], [IdTypeMaterial], [CountInPack], [IdMeasurementType], [CountInStorage], [MinPossibleBalance], [Price]) VALUES (9, N'2 бумаги зеленый 2x2', 2, 8, 3, 593, 20, 55016)
INSERT [dbo].[Material] ([Id], [Name], [IdTypeMaterial], [CountInPack], [IdMeasurementType], [CountInStorage], [MinPossibleBalance], [Price]) VALUES (10, N'2 бумаги белый 3x2', 2, 4, 3, 16, 31, 53759)
INSERT [dbo].[Material] ([Id], [Name], [IdTypeMaterial], [CountInPack], [IdMeasurementType], [CountInStorage], [MinPossibleBalance], [Price]) VALUES (11, N'Переработка бумаги серый 3x3', 4, 10, 1, 89, 20, 49391)
INSERT [dbo].[Material] ([Id], [Name], [IdTypeMaterial], [CountInPack], [IdMeasurementType], [CountInStorage], [MinPossibleBalance], [Price]) VALUES (12, N'Гранулы для бумаги синий 1x2', 3, 6, 2, 112, 34, 25624)
INSERT [dbo].[Material] ([Id], [Name], [IdTypeMaterial], [CountInPack], [IdMeasurementType], [CountInStorage], [MinPossibleBalance], [Price]) VALUES (13, N'2 бумаги серый 3x3', 2, 3, 1, 596, 8, 50247)
INSERT [dbo].[Material] ([Id], [Name], [IdTypeMaterial], [CountInPack], [IdMeasurementType], [CountInStorage], [MinPossibleBalance], [Price]) VALUES (14, N'С1ованный материал цветной 1x3', 1, 3, 1, 772, 40, 51672)
INSERT [dbo].[Material] ([Id], [Name], [IdTypeMaterial], [CountInPack], [IdMeasurementType], [CountInStorage], [MinPossibleBalance], [Price]) VALUES (15, N'2 бумаги синий 2x2', 2, 6, 3, 363, 47, 38450)
INSERT [dbo].[Material] ([Id], [Name], [IdTypeMaterial], [CountInPack], [IdMeasurementType], [CountInStorage], [MinPossibleBalance], [Price]) VALUES (16, N'Гранулы для бумаги розовый 0x3', 3, 4, 2, 379, 41, 3868)
INSERT [dbo].[Material] ([Id], [Name], [IdTypeMaterial], [CountInPack], [IdMeasurementType], [CountInStorage], [MinPossibleBalance], [Price]) VALUES (17, N'Переработка бумаги цветной 1x3', 4, 6, 1, 32, 34, 37930)
INSERT [dbo].[Material] ([Id], [Name], [IdTypeMaterial], [CountInPack], [IdMeasurementType], [CountInStorage], [MinPossibleBalance], [Price]) VALUES (18, N'Гранулы для бумаги цветной 0x1', 3, 5, 2, 759, 28, 9216)
INSERT [dbo].[Material] ([Id], [Name], [IdTypeMaterial], [CountInPack], [IdMeasurementType], [CountInStorage], [MinPossibleBalance], [Price]) VALUES (19, N'2 бумаги цветной 1x2', 2, 10, 1, 246, 37, 5016)
INSERT [dbo].[Material] ([Id], [Name], [IdTypeMaterial], [CountInPack], [IdMeasurementType], [CountInStorage], [MinPossibleBalance], [Price]) VALUES (20, N'Переработка бумаги серый 1x2', 4, 8, 1, 516, 49, 35981)
INSERT [dbo].[Material] ([Id], [Name], [IdTypeMaterial], [CountInPack], [IdMeasurementType], [CountInStorage], [MinPossibleBalance], [Price]) VALUES (21, N'С1ованный материал синий 0x2', 1, 3, 3, 514, 40, 6555)
INSERT [dbo].[Material] ([Id], [Name], [IdTypeMaterial], [CountInPack], [IdMeasurementType], [CountInStorage], [MinPossibleBalance], [Price]) VALUES (22, N'Переработка бумаги синий 1x2', 4, 4, 1, 81, 32, 47873)
INSERT [dbo].[Material] ([Id], [Name], [IdTypeMaterial], [CountInPack], [IdMeasurementType], [CountInStorage], [MinPossibleBalance], [Price]) VALUES (23, N'С1ованный материал цветной 1x2', 1, 1, 1, 429, 47, 15802)
INSERT [dbo].[Material] ([Id], [Name], [IdTypeMaterial], [CountInPack], [IdMeasurementType], [CountInStorage], [MinPossibleBalance], [Price]) VALUES (24, N'2 бумаги розовый 2x1', 2, 1, 1, 349, 9, 36163)
INSERT [dbo].[Material] ([Id], [Name], [IdTypeMaterial], [CountInPack], [IdMeasurementType], [CountInStorage], [MinPossibleBalance], [Price]) VALUES (25, N'2 бумаги белый 3x3', 2, 2, 3, 201, 46, 51261)
INSERT [dbo].[Material] ([Id], [Name], [IdTypeMaterial], [CountInPack], [IdMeasurementType], [CountInStorage], [MinPossibleBalance], [Price]) VALUES (26, N'2 бумаги цветной 2x2', 2, 10, 3, 534, 46, 50776)
INSERT [dbo].[Material] ([Id], [Name], [IdTypeMaterial], [CountInPack], [IdMeasurementType], [CountInStorage], [MinPossibleBalance], [Price]) VALUES (27, N'С1ованный материал розовый 2x3', 1, 3, 1, 552, 7, 4657)
INSERT [dbo].[Material] ([Id], [Name], [IdTypeMaterial], [CountInPack], [IdMeasurementType], [CountInStorage], [MinPossibleBalance], [Price]) VALUES (28, N'2 бумаги розовый 3x2', 2, 9, 1, 144, 41, 51776)
INSERT [dbo].[Material] ([Id], [Name], [IdTypeMaterial], [CountInPack], [IdMeasurementType], [CountInStorage], [MinPossibleBalance], [Price]) VALUES (29, N'Переработка бумаги синий 0x1', 4, 7, 1, 97, 30, 47937)
INSERT [dbo].[Material] ([Id], [Name], [IdTypeMaterial], [CountInPack], [IdMeasurementType], [CountInStorage], [MinPossibleBalance], [Price]) VALUES (30, N'С1ованный материал розовый 1x2', 1, 7, 1, 509, 26, 10604)
INSERT [dbo].[Material] ([Id], [Name], [IdTypeMaterial], [CountInPack], [IdMeasurementType], [CountInStorage], [MinPossibleBalance], [Price]) VALUES (31, N'2 бумаги цветной 1x3', 2, 10, 3, 149, 13, 22724)
INSERT [dbo].[Material] ([Id], [Name], [IdTypeMaterial], [CountInPack], [IdMeasurementType], [CountInStorage], [MinPossibleBalance], [Price]) VALUES (32, N'2 бумаги синий 3x2', 2, 9, 1, 508, 16, 25561)
INSERT [dbo].[Material] ([Id], [Name], [IdTypeMaterial], [CountInPack], [IdMeasurementType], [CountInStorage], [MinPossibleBalance], [Price]) VALUES (33, N'2 бумаги зеленый 2x3', 2, 2, 1, 181, 35, 45388)
INSERT [dbo].[Material] ([Id], [Name], [IdTypeMaterial], [CountInPack], [IdMeasurementType], [CountInStorage], [MinPossibleBalance], [Price]) VALUES (34, N'Гранулы для бумаги розовый 0x2', 3, 7, 3, 37, 50, 17227)
INSERT [dbo].[Material] ([Id], [Name], [IdTypeMaterial], [CountInPack], [IdMeasurementType], [CountInStorage], [MinPossibleBalance], [Price]) VALUES (35, N'Переработка бумаги цветной 0x0', 4, 9, 1, 508, 19, 51147)
INSERT [dbo].[Material] ([Id], [Name], [IdTypeMaterial], [CountInPack], [IdMeasurementType], [CountInStorage], [MinPossibleBalance], [Price]) VALUES (36, N'Переработка бумаги серый 0x2', 4, 3, 1, 167, 17, 10248)
INSERT [dbo].[Material] ([Id], [Name], [IdTypeMaterial], [CountInPack], [IdMeasurementType], [CountInStorage], [MinPossibleBalance], [Price]) VALUES (37, N'Гранулы для бумаги цветной 0x3', 3, 10, 3, 962, 33, 35922)
INSERT [dbo].[Material] ([Id], [Name], [IdTypeMaterial], [CountInPack], [IdMeasurementType], [CountInStorage], [MinPossibleBalance], [Price]) VALUES (38, N'2 бумаги зеленый 3x3', 2, 3, 1, 861, 45, 37283)
INSERT [dbo].[Material] ([Id], [Name], [IdTypeMaterial], [CountInPack], [IdMeasurementType], [CountInStorage], [MinPossibleBalance], [Price]) VALUES (39, N'2 бумаги белый 0x3', 2, 2, 1, 933, 50, 7253)
INSERT [dbo].[Material] ([Id], [Name], [IdTypeMaterial], [CountInPack], [IdMeasurementType], [CountInStorage], [MinPossibleBalance], [Price]) VALUES (40, N'2 бумаги синий 3x1', 2, 3, 1, 720, 11, 44675)
INSERT [dbo].[Material] ([Id], [Name], [IdTypeMaterial], [CountInPack], [IdMeasurementType], [CountInStorage], [MinPossibleBalance], [Price]) VALUES (41, N'С1ованный материал белый 3x3', 1, 8, 1, 942, 12, 17600)
INSERT [dbo].[Material] ([Id], [Name], [IdTypeMaterial], [CountInPack], [IdMeasurementType], [CountInStorage], [MinPossibleBalance], [Price]) VALUES (42, N'2 бумаги белый 1x3', 2, 2, 3, 382, 10, 32770)
INSERT [dbo].[Material] ([Id], [Name], [IdTypeMaterial], [CountInPack], [IdMeasurementType], [CountInStorage], [MinPossibleBalance], [Price]) VALUES (43, N'Переработка бумаги белый 3x0', 4, 10, 1, 247, 11, 39500)
INSERT [dbo].[Material] ([Id], [Name], [IdTypeMaterial], [CountInPack], [IdMeasurementType], [CountInStorage], [MinPossibleBalance], [Price]) VALUES (44, N'Гранулы для бумаги синий 1x3', 3, 10, 2, 841, 18, 38700)
INSERT [dbo].[Material] ([Id], [Name], [IdTypeMaterial], [CountInPack], [IdMeasurementType], [CountInStorage], [MinPossibleBalance], [Price]) VALUES (45, N'С1ованный материал синий 3x1', 1, 10, 1, 270, 50, 38809)
INSERT [dbo].[Material] ([Id], [Name], [IdTypeMaterial], [CountInPack], [IdMeasurementType], [CountInStorage], [MinPossibleBalance], [Price]) VALUES (46, N'С1ованный материал цветной 0x0', 1, 6, 1, 754, 24, 4611)
INSERT [dbo].[Material] ([Id], [Name], [IdTypeMaterial], [CountInPack], [IdMeasurementType], [CountInStorage], [MinPossibleBalance], [Price]) VALUES (47, N'Переработка бумаги цветной 0x1', 4, 8, 1, 833, 34, 53875)
INSERT [dbo].[Material] ([Id], [Name], [IdTypeMaterial], [CountInPack], [IdMeasurementType], [CountInStorage], [MinPossibleBalance], [Price]) VALUES (48, N'С1ованный материал цветной 1x0', 1, 8, 1, 856, 26, 12817)
INSERT [dbo].[Material] ([Id], [Name], [IdTypeMaterial], [CountInPack], [IdMeasurementType], [CountInStorage], [MinPossibleBalance], [Price]) VALUES (49, N'Переработка бумаги синий 0x2', 4, 9, 3, 709, 47, 23157)
INSERT [dbo].[Material] ([Id], [Name], [IdTypeMaterial], [CountInPack], [IdMeasurementType], [CountInStorage], [MinPossibleBalance], [Price]) VALUES (50, N'Переработка бумаги белый 2x0', 4, 5, 1, 794, 17, 21637)
GO
INSERT [dbo].[MaterialType] ([Id], [Title]) VALUES (1, N'Пресс')
INSERT [dbo].[MaterialType] ([Id], [Title]) VALUES (2, N'Рулон')
INSERT [dbo].[MaterialType] ([Id], [Title]) VALUES (3, N'Гранулы')
INSERT [dbo].[MaterialType] ([Id], [Title]) VALUES (4, N'Нарезка')
GO
INSERT [dbo].[MeasurementType] ([Id], [Title]) VALUES (1, N'м')
INSERT [dbo].[MeasurementType] ([Id], [Title]) VALUES (2, N'л')
INSERT [dbo].[MeasurementType] ([Id], [Title]) VALUES (3, N'кг')
GO
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (1, N'Полотенце 28М Клубника', N'334385', 9208, NULL, 1, 2, 6)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (2, N'Набор 24М Дыня', N'337632', 11471, NULL, 2, 5, 5)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (3, N'Набор 9М Бриз', N'259548', 2317, NULL, 2, 4, 5)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (4, N'Набор 50М Клубника', N'278721', 14220, NULL, 3, 3, 1)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (5, N'Полотенце 24М Дыня', N'264493', 10479, NULL, 2, 5, 10)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (6, N'Бумага 21М Дыня', N'366160', 11064, NULL, 4, 1, 2)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (7, N'Полотенце 37М Клубника', N'292358', 3961, NULL, 5, 4, 2)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (8, N'Набор 6М Бриз', N'289779', 14154, NULL, 5, 1, 6)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (9, N'Бумага 37М Клубника', N'442634', 12664, NULL, 3, 5, 4)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (10, N'Набор 41М Дыня', N'385037', 3295, NULL, 5, 5, 9)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (11, N'Бумага 26М Ваниль', N'444337', 3007, NULL, 4, 4, 4)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (12, N'Бумага 50М Ваниль', N'454479', 3163, NULL, 3, 3, 9)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (13, N'Набор 25М Бриз', N'434113', 13047, NULL, 5, 4, 4)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (14, N'Бумага 32М Бриз', N'379800', 6832, NULL, 3, 1, 7)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (15, N'Полотенце 41М Дыня', N'239349', 6238, NULL, 3, 2, 9)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (16, N'Бумага 9М Ваниль', N'446348', 13568, NULL, 3, 3, 1)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (17, N'Бумага 3М Бриз', N'260492', 8278, NULL, 2, 1, 9)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (18, N'Бумага 5М Дыня', N'256862', 3712, NULL, 5, 5, 5)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (19, N'Полотенце 16М Ваниль', N'259488', 10095, NULL, 4, 3, 6)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (20, N'Бумага 44М Бриз', N'422185', 6441, NULL, 5, 2, 5)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (21, N'Набор 19М Дыня', N'382063', 2373, NULL, 4, 1, 7)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (22, N'Бумага 29М Клубника', N'334943', 5997, NULL, 5, 1, 10)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (23, N'Полотенце 27М Дыня', N'238686', 7864, NULL, 2, 2, 2)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (24, N'Набор 11М Дыня', N'450659', 5956, NULL, 2, 3, 7)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (25, N'Полотенце 48М Клубника', N'292206', 9801, NULL, 4, 3, 3)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (26, N'Полотенце 16М Бриз', N'418298', 7342, NULL, 1, 2, 1)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (27, N'Полотенце 14М Клубника', N'309862', 10682, NULL, 2, 4, 8)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (28, N'Полотенце 43М Клубника', N'425641', 14151, NULL, 4, 2, 6)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (29, N'Набор 19М Бриз', N'277950', 9962, NULL, 3, 5, 9)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (30, N'Набор 32М Клубника', N'351062', 4450, NULL, 4, 3, 8)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (31, N'Набор 26М Дыня', N'279801', 4628, NULL, 2, 2, 1)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (32, N'Бумага 15М Клубника', N'449359', 10009, NULL, 2, 3, 7)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (33, N'Полотенце 45М Бриз', N'303994', 13081, NULL, 3, 2, 1)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (34, N'Набор 50М Бриз', N'414595', 10750, NULL, 2, 4, 6)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (35, N'Набор 16М Дыня', N'376834', 11927, NULL, 5, 4, 6)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (36, N'Бумага 45М Бриз', N'374276', 13605, NULL, 3, 3, 9)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (37, N'Бумага 45М Клубника', N'400484', 3475, NULL, 4, 3, 4)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (38, N'Бумага 16М Дыня', N'262257', 9107, NULL, 4, 5, 2)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (39, N'Набор 40М Дыня', N'346154', 3427, NULL, 3, 4, 8)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (40, N'Бумага 33М Бриз', N'347239', 13767, NULL, 2, 5, 9)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (41, N'Полотенце 45М Клубника', N'352034', 11939, NULL, 1, 2, 5)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (42, N'Набор 43М Клубника', N'443538', 13786, NULL, 5, 1, 10)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (43, N'Набор 34М Ваниль', N'316033', 13533, NULL, 4, 1, 4)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (44, N'Бумага 32М Дыня', N'268393', 7424, NULL, 5, 4, 3)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (45, N'Бумага 12М Бриз', N'426804', 10703, NULL, 5, 1, 4)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (46, N'Полотенце 6М Ваниль', N'324941', 5594, NULL, 2, 1, 2)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (47, N'Полотенце 47М Клубника', N'378723', 3871, NULL, 5, 4, 2)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (48, N'Полотенце 15М Бриз', N'365615', 13013, NULL, 5, 1, 6)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (49, N'Набор 9М Дыня', N'440942', 2580, NULL, 5, 3, 4)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (50, N'Набор 17М Клубника', N'441239', 14863, NULL, 4, 2, 10)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (51, N'Набор 5М Бриз', N'278382', 7325, NULL, 2, 3, 9)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (52, N'Набор 29М Ваниль', N'344868', 7618, NULL, 1, 1, 9)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (53, N'Набор 31М Дыня', N'449401', 5236, NULL, 5, 5, 10)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (54, N'Набор 45М Бриз', N'349802', 12040, NULL, 2, 1, 8)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (55, N'Бумага 13М Дыня', N'348651', 3477, NULL, 1, 3, 8)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (56, N'Набор 24М Клубника', N'296007', 14162, NULL, 3, 2, 3)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (57, N'Набор 10М Дыня', N'431234', 3816, NULL, 5, 4, 9)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (58, N'Бумага 12М Клубника', N'456129', 6467, NULL, 5, 3, 4)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (59, N'Полотенце 11М Дыня', N'400418', 11660, NULL, 4, 2, 7)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (60, N'Набор 42М Дыня', N'390914', 14344, NULL, 3, 5, 10)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (61, N'Бумага 5М Бриз', N'345239', 9243, NULL, 5, 1, 8)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (62, N'Набор 14М Дыня', N'373939', 3382, NULL, 1, 2, 3)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (63, N'Бумага 33М Клубника', N'252485', 4240, NULL, 1, 3, 6)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (64, N'Набор 34М Клубника', N'381110', 2372, NULL, 2, 3, 1)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (65, N'Полотенце 14М Дыня', N'331688', 10330, NULL, 2, 2, 8)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (66, N'Бумага 40М Бриз', N'326200', 12927, NULL, 2, 5, 1)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (67, N'Бумага 20М Клубника', N'253218', 11684, NULL, 5, 2, 6)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (68, N'Бумага 50М Бриз', N'340583', 6788, NULL, 3, 4, 7)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (69, N'Полотенце 23М Ваниль', N'437519', 3317, NULL, 1, 1, 10)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (70, N'Набор 8М Дыня', N'240580', 7465, NULL, 5, 5, 2)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (71, N'Бумага 10М Клубника', N'275591', 13600, NULL, 2, 4, 8)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (72, N'Набор 41М Клубника', N'281425', 9908, NULL, 4, 4, 6)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (73, N'Набор 10М Ваниль', N'261465', 13028, NULL, 4, 5, 3)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (74, N'Полотенце 17М Бриз', N'309067', 13825, NULL, 2, 1, 6)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (75, N'Полотенце 27М Ваниль', N'278463', 3978, NULL, 2, 3, 5)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (76, N'Полотенце 50М Ваниль', N'310212', 13204, NULL, 1, 1, 10)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (77, N'Набор 20М Бриз', N'377042', 9227, NULL, 5, 5, 9)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (78, N'Полотенце 47М Дыня', N'294441', 11460, NULL, 4, 4, 5)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (79, N'Бумага 29М Дыня', N'332522', 5439, NULL, 1, 3, 6)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (80, N'Полотенце 44М Ваниль', N'357053', 3396, NULL, 5, 5, 1)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (81, N'Полотенце 7М Ваниль', N'397143', 2868, NULL, 3, 2, 9)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (82, N'Бумага 49М Бриз', N'414339', 10786, NULL, 1, 1, 6)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (83, N'Полотенце 7М Бриз', N'350515', 4986, NULL, 2, 2, 2)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (84, N'Полотенце 25М Бриз', N'258695', 3631, NULL, 1, 1, 8)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (85, N'Полотенце 17М Ваниль', N'403054', 5048, NULL, 4, 2, 9)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (86, N'Бумага 14М Бриз', N'310507', 7846, NULL, 3, 1, 3)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (87, N'Набор 40М Бриз', N'353930', 12767, NULL, 2, 2, 8)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (88, N'Набор 22М Клубника', N'360424', 13524, NULL, 1, 4, 3)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (89, N'Бумага 13М Бриз', N'349861', 3842, NULL, 2, 4, 6)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (90, N'Бумага 7М Ваниль', N'290729', 6934, NULL, 4, 4, 4)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (91, N'Набор 24М Ваниль', N'374263', 3907, NULL, 5, 5, 9)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (92, N'Набор 43М Дыня', N'330360', 5867, NULL, 1, 5, 4)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (93, N'Полотенце 33М Бриз', N'297840', 4611, NULL, 4, 4, 1)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (94, N'Набор 12М Бриз', N'349614', 2551, NULL, 3, 1, 7)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (95, N'Бумага 38М Ваниль', N'416066', 12175, NULL, 1, 2, 2)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (96, N'Бумага 20М Бриз', N'285792', 14370, NULL, 3, 3, 7)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (97, N'Бумага 28М Дыня', N'298632', 14671, NULL, 3, 4, 4)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (98, N'Бумага 10М Дыня', N'446103', 13975, NULL, 5, 1, 3)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (99, N'Набор 22М Бриз', N'443382', 4501, NULL, 3, 3, 5)
INSERT [dbo].[Product] ([Id], [Name], [Articul], [MinCost], [Image], [IdProductType], [CountOfPeople], [IdWorkshop]) VALUES (100, N'Набор 18М Ваниль', N'331270', 11171, NULL, 1, 4, 8)
GO
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (1, 63, 24, 20)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (2, 71, 6, 1)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (3, 37, 6, 4)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (4, 58, 24, 18)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (5, 94, 6, 3)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (6, 1, 24, 9)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (7, 2, 23, 15)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (8, 63, 25, 3)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (9, 11, 39, 12)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (10, 19, 25, 20)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (11, 94, 42, 4)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (12, 47, 33, 4)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (13, 52, 39, 12)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (14, 28, 25, 8)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (15, 1, 25, 4)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (16, 59, 42, 3)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (17, 57, 42, 4)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (18, 67, 42, 6)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (19, 70, 2, 1)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (20, 70, 8, 1)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (21, 79, 38, 15)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (22, 44, 13, 3)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (23, 52, 27, 6)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (24, 11, 40, 15)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (25, 66, 13, 1)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (26, 18, 13, 6)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (27, 10, 2, 16)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (28, 92, 38, 19)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (29, 33, 21, 5)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (30, 67, 27, 6)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (31, 96, 27, 14)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (32, 16, 40, 8)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (33, 99, 2, 3)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (34, 34, 40, 6)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (35, 99, 36, 2)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (36, 55, 14, 9)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (37, 76, 13, 10)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (38, 90, 40, 15)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (39, 47, 40, 14)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (40, 41, 13, 3)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (41, 68, 8, 2)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (42, 19, 21, 4)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (43, 24, 14, 11)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (44, 33, 10, 4)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (45, 16, 22, 15)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (46, 64, 16, 1)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (47, 70, 16, 16)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (48, 92, 16, 11)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (49, 78, 16, 1)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (50, 94, 18, 20)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (51, 10, 18, 18)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (52, 40, 18, 18)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (53, 72, 18, 6)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (54, 47, 18, 3)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (55, 11, 46, 11)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (56, 58, 15, 19)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (57, 66, 12, 18)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (58, 77, 46, 19)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (59, 41, 17, 3)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (60, 76, 46, 19)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (61, 24, 12, 6)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (62, 27, 46, 7)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (63, 47, 12, 14)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (64, 64, 34, 14)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (65, 18, 34, 5)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (66, 32, 29, 15)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (67, 92, 5, 13)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (68, 67, 5, 10)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (69, 27, 5, 5)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (70, 72, 30, 20)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (71, 79, 41, 8)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (72, 11, 48, 19)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (73, 1, 3, 13)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (74, 66, 48, 18)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (75, 95, 47, 8)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (76, 40, 32, 20)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (77, 41, 32, 4)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (78, 41, 49, 14)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (79, 19, 7, 8)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (80, 77, 35, 10)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (81, 47, 28, 5)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (82, 63, 35, 1)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (83, 33, 28, 10)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (84, 18, 7, 19)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (85, 66, 32, 16)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (86, 52, 28, 17)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (87, 100, 44, 8)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (88, 60, 37, 17)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (89, 76, 37, 10)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (90, 52, 44, 11)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (91, 49, 43, 4)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (92, 34, 26, 16)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (93, 71, 26, 11)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (94, 71, 11, 4)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (95, 66, 44, 12)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (96, 92, 44, 16)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (97, 95, 11, 3)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (98, 32, 43, 4)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (99, 63, 37, 10)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [CountOfMaterial]) VALUES (100, 72, 44, 6)
GO
INSERT [dbo].[ProductType] ([Id], [Title]) VALUES (1, N'Один слой')
INSERT [dbo].[ProductType] ([Id], [Title]) VALUES (2, N'Два слоя')
INSERT [dbo].[ProductType] ([Id], [Title]) VALUES (3, N'Три слоя')
INSERT [dbo].[ProductType] ([Id], [Title]) VALUES (4, N'Детская')
INSERT [dbo].[ProductType] ([Id], [Title]) VALUES (5, N'Супер мягкая')
GO
INSERT [dbo].[Workshop] ([Id]) VALUES (1)
INSERT [dbo].[Workshop] ([Id]) VALUES (2)
INSERT [dbo].[Workshop] ([Id]) VALUES (3)
INSERT [dbo].[Workshop] ([Id]) VALUES (4)
INSERT [dbo].[Workshop] ([Id]) VALUES (5)
INSERT [dbo].[Workshop] ([Id]) VALUES (6)
INSERT [dbo].[Workshop] ([Id]) VALUES (7)
INSERT [dbo].[Workshop] ([Id]) VALUES (8)
INSERT [dbo].[Workshop] ([Id]) VALUES (9)
INSERT [dbo].[Workshop] ([Id]) VALUES (10)
GO
ALTER TABLE [dbo].[Material]  WITH CHECK ADD  CONSTRAINT [FK_Material_MaterialType] FOREIGN KEY([IdTypeMaterial])
REFERENCES [dbo].[MaterialType] ([Id])
GO
ALTER TABLE [dbo].[Material] CHECK CONSTRAINT [FK_Material_MaterialType]
GO
ALTER TABLE [dbo].[Material]  WITH CHECK ADD  CONSTRAINT [FK_Material_MeasurementType] FOREIGN KEY([IdMeasurementType])
REFERENCES [dbo].[MeasurementType] ([Id])
GO
ALTER TABLE [dbo].[Material] CHECK CONSTRAINT [FK_Material_MeasurementType]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductType] FOREIGN KEY([IdProductType])
REFERENCES [dbo].[ProductType] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ProductType]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Workshop] FOREIGN KEY([IdWorkshop])
REFERENCES [dbo].[Workshop] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Workshop]
GO
ALTER TABLE [dbo].[ProductMaterial]  WITH CHECK ADD  CONSTRAINT [FK_ProductMaterial_Material] FOREIGN KEY([IdMaterial])
REFERENCES [dbo].[Material] ([Id])
GO
ALTER TABLE [dbo].[ProductMaterial] CHECK CONSTRAINT [FK_ProductMaterial_Material]
GO
ALTER TABLE [dbo].[ProductMaterial]  WITH CHECK ADD  CONSTRAINT [FK_ProductMaterial_Product] FOREIGN KEY([IdProduct])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[ProductMaterial] CHECK CONSTRAINT [FK_ProductMaterial_Product]
GO
