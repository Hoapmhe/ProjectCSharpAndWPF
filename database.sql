USE [master]
GO
Create database [PRN212Medicine]
Go
USE [PRN212Medicine]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 7/23/2024 9:28:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[accountId] [int] NOT NULL,
	[medicineId] [int] NOT NULL,
	[quantity] [int] NOT NULL,
 CONSTRAINT [PK_Cart] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InfoAcc]    Script Date: 7/23/2024 9:28:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InfoAcc](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[email] [nvarchar](max) NOT NULL,
	[phone] [nchar](10) NOT NULL,
	[roleId] [int] NOT NULL,
	[wallet] [money] NOT NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Medecine]    Script Date: 7/23/2024 9:28:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medecine](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[decription] [nvarchar](max) NULL,
	[minAge] [int] NOT NULL,
	[typeId] [int] NOT NULL,
	[quantity] [int] NOT NULL,
	[price] [money] NOT NULL,
	[expiredDate] [date] NOT NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_Medecine] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MedicineType]    Script Date: 7/23/2024 9:28:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MedicineType](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[type] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_MedicineType] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderHistory]    Script Date: 7/23/2024 9:28:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderHistory](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[accountId] [int] NOT NULL,
	[amount] [money] NOT NULL,
	[orderDate] [date] NOT NULL,
	[paymentDate] [date] NULL,
	[paymentMethod] [int] NOT NULL,
	[status] [int] NOT NULL,
 CONSTRAINT [PK_OrderHistory] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderHistoryDetails]    Script Date: 7/23/2024 9:28:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderHistoryDetails](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[orderId] [int] NOT NULL,
	[medicineId] [int] NOT NULL,
	[purchasePrice] [money] NOT NULL,
	[quantity] [int] NOT NULL,
 CONSTRAINT [PK_OrderHistoryDetails] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentMethod]    Script Date: 7/23/2024 9:28:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentMethod](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[paymentMethodName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_PaymentMethod] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 7/23/2024 9:28:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[roleId] [int] IDENTITY(1,1) NOT NULL,
	[roleName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_role] PRIMARY KEY CLUSTERED 
(
	[roleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StatusOrder]    Script Date: 7/23/2024 9:28:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StatusOrder](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[statusName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_StatusOrder] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[InfoAcc] ON 

INSERT [dbo].[InfoAcc] ([id], [username], [password], [email], [phone], [roleId], [wallet]) VALUES (3, N'Pmh', N'123', N'admin@gmail.com', N'0123123123', 1, 1000.0000)
INSERT [dbo].[InfoAcc] ([id], [username], [password], [email], [phone], [roleId], [wallet]) VALUES (5, N'test', N'123', N'tocchienvn7604@gmail.com', N'0321321321', 2, 1011.0000)
INSERT [dbo].[InfoAcc] ([id], [username], [password], [email], [phone], [roleId], [wallet]) VALUES (8, N'admin2', N'123', N'admin2@gmail.com', N'0123      ', 1, 100.0000)
INSERT [dbo].[InfoAcc] ([id], [username], [password], [email], [phone], [roleId], [wallet]) VALUES (9, N'trung', N'123123123', N'trung20030812@gmail.com', N'0123312123', 2, 0.0000)
INSERT [dbo].[InfoAcc] ([id], [username], [password], [email], [phone], [roleId], [wallet]) VALUES (10, N'customer test', N'123', N'customer@gmail.com', N'01231     ', 2, 100000.0000)
INSERT [dbo].[InfoAcc] ([id], [username], [password], [email], [phone], [roleId], [wallet]) VALUES (11, N'av1', N'123', N'hoaphung10112003@gmail.com', N'0123123123', 2, 8598.0000)
INSERT [dbo].[InfoAcc] ([id], [username], [password], [email], [phone], [roleId], [wallet]) VALUES (12, N'sale', N'123', N'seller@gmail.com', N'0011      ', 3, 0.0000)
SET IDENTITY_INSERT [dbo].[InfoAcc] OFF
GO
SET IDENTITY_INSERT [dbo].[Medecine] ON 

INSERT [dbo].[Medecine] ([id], [name], [decription], [minAge], [typeId], [quantity], [price], [expiredDate], [status]) VALUES (2, N'Fluconazole Stada', N'Treatment of local and systemic Candida fungal diseases', 10, 1, 80, 12.0000, CAST(N'2025-07-16' AS Date), 1)
INSERT [dbo].[Medecine] ([id], [name], [decription], [minAge], [typeId], [quantity], [price], [expiredDate], [status]) VALUES (7, N'Vastad Stella', N'This is a drug used to treat vaginitis caused by susceptible pathogens and non-specific vaginitis.', 18, 1, 20, 10.0000, CAST(N'2028-01-01' AS Date), 1)
INSERT [dbo].[Medecine] ([id], [name], [decription], [minAge], [typeId], [quantity], [price], [expiredDate], [status]) VALUES (8, N'Amoxicillin', N'Treats bacterial infections', 12, 1, 197, 15.0000, CAST(N'2025-07-16' AS Date), 1)
INSERT [dbo].[Medecine] ([id], [name], [decription], [minAge], [typeId], [quantity], [price], [expiredDate], [status]) VALUES (9, N'Ciprofloxacin', N'Treats bacterial infections', 14, 1, 18, 20.0000, CAST(N'2026-08-20' AS Date), 1)
INSERT [dbo].[Medecine] ([id], [name], [decription], [minAge], [typeId], [quantity], [price], [expiredDate], [status]) VALUES (10, N'Doxycycline', N'Treats bacterial infections', 10, 1, 89, 12.0000, CAST(N'2027-09-10' AS Date), 1)
INSERT [dbo].[Medecine] ([id], [name], [decription], [minAge], [typeId], [quantity], [price], [expiredDate], [status]) VALUES (11, N'Azithromycin', N'Treats bacterial infections', 16, 1, 179, 18.0000, CAST(N'2028-01-01' AS Date), 1)
INSERT [dbo].[Medecine] ([id], [name], [decription], [minAge], [typeId], [quantity], [price], [expiredDate], [status]) VALUES (12, N'Levofloxacin', N'Treats bacterial infections', 18, 1, 108, 15.0000, CAST(N'2029-02-28' AS Date), 1)
INSERT [dbo].[Medecine] ([id], [name], [decription], [minAge], [typeId], [quantity], [price], [expiredDate], [status]) VALUES (13, N'Tamoxifen', N'Treats breast cancer', 18, 2, 48, 50.0000, CAST(N'2025-07-16' AS Date), 1)
INSERT [dbo].[Medecine] ([id], [name], [decription], [minAge], [typeId], [quantity], [price], [expiredDate], [status]) VALUES (14, N'Doxorubicin', N'Treats various cancers', 20, 2, 49, 55.0000, CAST(N'2026-08-20' AS Date), 1)
INSERT [dbo].[Medecine] ([id], [name], [decription], [minAge], [typeId], [quantity], [price], [expiredDate], [status]) VALUES (15, N'Paclitaxel', N'Treats various cancers', 22, 2, 64, 60.0000, CAST(N'2027-09-10' AS Date), 1)
INSERT [dbo].[Medecine] ([id], [name], [decription], [minAge], [typeId], [quantity], [price], [expiredDate], [status]) VALUES (16, N'Vincristine', N'Treats various cancers', 24, 2, 80, 65.0000, CAST(N'2028-01-01' AS Date), 1)
INSERT [dbo].[Medecine] ([id], [name], [decription], [minAge], [typeId], [quantity], [price], [expiredDate], [status]) VALUES (17, N'Cyclophosphamide', N'Treats various cancers', 26, 2, 90, 70.0000, CAST(N'2029-02-28' AS Date), 1)
INSERT [dbo].[Medecine] ([id], [name], [decription], [minAge], [typeId], [quantity], [price], [expiredDate], [status]) VALUES (18, N'Lisinopril', N'Treats high blood pressure', 30, 3, 200, 25.0000, CAST(N'2025-07-16' AS Date), 1)
INSERT [dbo].[Medecine] ([id], [name], [decription], [minAge], [typeId], [quantity], [price], [expiredDate], [status]) VALUES (19, N'Atenolol', N'Treats high blood pressure', 32, 3, 220, 26.0000, CAST(N'2026-08-20' AS Date), 1)
INSERT [dbo].[Medecine] ([id], [name], [decription], [minAge], [typeId], [quantity], [price], [expiredDate], [status]) VALUES (20, N'Metoprolol', N'Treats high blood pressure', 34, 3, 240, 27.0000, CAST(N'2027-09-10' AS Date), 1)
INSERT [dbo].[Medecine] ([id], [name], [decription], [minAge], [typeId], [quantity], [price], [expiredDate], [status]) VALUES (21, N'Amlodipine', N'Treats high blood pressure', 36, 3, 260, 28.0000, CAST(N'2028-01-01' AS Date), 1)
INSERT [dbo].[Medecine] ([id], [name], [decription], [minAge], [typeId], [quantity], [price], [expiredDate], [status]) VALUES (22, N'Simvastatin', N'Treats high cholesterol', 38, 3, 280, 29.0000, CAST(N'2029-02-28' AS Date), 1)
INSERT [dbo].[Medecine] ([id], [name], [decription], [minAge], [typeId], [quantity], [price], [expiredDate], [status]) VALUES (23, N'Zoloft', N'Treats depression', 18, 4, 100, 30.0000, CAST(N'2025-07-16' AS Date), 1)
INSERT [dbo].[Medecine] ([id], [name], [decription], [minAge], [typeId], [quantity], [price], [expiredDate], [status]) VALUES (24, N'Prozac', N'Treats depression', 20, 4, 120, 35.0000, CAST(N'2026-08-20' AS Date), 1)
INSERT [dbo].[Medecine] ([id], [name], [decription], [minAge], [typeId], [quantity], [price], [expiredDate], [status]) VALUES (25, N'Xanax', N'Treats anxiety', 22, 4, 140, 40.0000, CAST(N'2027-09-10' AS Date), 1)
INSERT [dbo].[Medecine] ([id], [name], [decription], [minAge], [typeId], [quantity], [price], [expiredDate], [status]) VALUES (26, N'Valium', N'Treats anxiety', 24, 4, 160, 45.0000, CAST(N'2028-01-01' AS Date), 1)
INSERT [dbo].[Medecine] ([id], [name], [decription], [minAge], [typeId], [quantity], [price], [expiredDate], [status]) VALUES (27, N'Lithium', N'Treats bipolar disorder', 26, 4, 180, 50.0000, CAST(N'2029-02-28' AS Date), 1)
INSERT [dbo].[Medecine] ([id], [name], [decription], [minAge], [typeId], [quantity], [price], [expiredDate], [status]) VALUES (28, N'Loperamide', N'Treats diarrhea', 10, 5, 100, 10.0000, CAST(N'2025-07-16' AS Date), 1)
INSERT [dbo].[Medecine] ([id], [name], [decription], [minAge], [typeId], [quantity], [price], [expiredDate], [status]) VALUES (29, N'Omeprazole', N'Treats acid reflux', 12, 5, 120, 12.0000, CAST(N'2026-08-20' AS Date), 1)
INSERT [dbo].[Medecine] ([id], [name], [decription], [minAge], [typeId], [quantity], [price], [expiredDate], [status]) VALUES (30, N'Pantoprazole', N'Treats acid reflux', 14, 5, 140, 14.0000, CAST(N'2027-09-10' AS Date), 1)
INSERT [dbo].[Medecine] ([id], [name], [decription], [minAge], [typeId], [quantity], [price], [expiredDate], [status]) VALUES (31, N'Ranitidine', N'Treats acid reflux', 16, 5, 160, 16.0000, CAST(N'2028-01-01' AS Date), 1)
INSERT [dbo].[Medecine] ([id], [name], [decription], [minAge], [typeId], [quantity], [price], [expiredDate], [status]) VALUES (32, N'Bisacodyl', N'Treats constipation', 18, 5, 180, 18.0000, CAST(N'2029-02-28' AS Date), 1)
SET IDENTITY_INSERT [dbo].[Medecine] OFF
GO
SET IDENTITY_INSERT [dbo].[MedicineType] ON 

INSERT [dbo].[MedicineType] ([id], [type]) VALUES (1, N'antibiotics')
INSERT [dbo].[MedicineType] ([id], [type]) VALUES (2, N'cancer treatment drugs')
INSERT [dbo].[MedicineType] ([id], [type]) VALUES (3, N'cardiovascular drugs')
INSERT [dbo].[MedicineType] ([id], [type]) VALUES (4, N'psychoactive drugs')
INSERT [dbo].[MedicineType] ([id], [type]) VALUES (5, N'digestive medicine')
SET IDENTITY_INSERT [dbo].[MedicineType] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderHistory] ON 

INSERT [dbo].[OrderHistory] ([id], [accountId], [amount], [orderDate], [paymentDate], [paymentMethod], [status]) VALUES (10, 10, 144.0000, CAST(N'2024-07-21' AS Date), NULL, 1, 2)
INSERT [dbo].[OrderHistory] ([id], [accountId], [amount], [orderDate], [paymentDate], [paymentMethod], [status]) VALUES (11, 10, 177.0000, CAST(N'2024-07-21' AS Date), CAST(N'2024-07-21' AS Date), 2, 1)
INSERT [dbo].[OrderHistory] ([id], [accountId], [amount], [orderDate], [paymentDate], [paymentMethod], [status]) VALUES (12, 10, 12.0000, CAST(N'2024-07-21' AS Date), NULL, 1, 1)
INSERT [dbo].[OrderHistory] ([id], [accountId], [amount], [orderDate], [paymentDate], [paymentMethod], [status]) VALUES (13, 10, 2600.0000, CAST(N'2024-07-21' AS Date), NULL, 1, 1)
INSERT [dbo].[OrderHistory] ([id], [accountId], [amount], [orderDate], [paymentDate], [paymentMethod], [status]) VALUES (14, 10, 10.0000, CAST(N'2024-07-21' AS Date), NULL, 1, 1)
INSERT [dbo].[OrderHistory] ([id], [accountId], [amount], [orderDate], [paymentDate], [paymentMethod], [status]) VALUES (15, 9, 64.0000, CAST(N'2024-07-21' AS Date), NULL, 1, 1)
INSERT [dbo].[OrderHistory] ([id], [accountId], [amount], [orderDate], [paymentDate], [paymentMethod], [status]) VALUES (16, 9, 18.0000, CAST(N'2024-07-21' AS Date), NULL, 1, 1)
INSERT [dbo].[OrderHistory] ([id], [accountId], [amount], [orderDate], [paymentDate], [paymentMethod], [status]) VALUES (17, 11, 24.0000, CAST(N'2024-07-21' AS Date), CAST(N'2024-07-21' AS Date), 2, 1)
INSERT [dbo].[OrderHistory] ([id], [accountId], [amount], [orderDate], [paymentDate], [paymentMethod], [status]) VALUES (18, 11, 22.0000, CAST(N'2024-07-21' AS Date), CAST(N'2024-07-21' AS Date), 2, 1)
INSERT [dbo].[OrderHistory] ([id], [accountId], [amount], [orderDate], [paymentDate], [paymentMethod], [status]) VALUES (19, 11, 27.0000, CAST(N'2024-07-21' AS Date), CAST(N'2024-07-21' AS Date), 2, 1)
INSERT [dbo].[OrderHistory] ([id], [accountId], [amount], [orderDate], [paymentDate], [paymentMethod], [status]) VALUES (20, 11, 50.0000, CAST(N'2024-07-21' AS Date), CAST(N'2024-07-21' AS Date), 2, 2)
INSERT [dbo].[OrderHistory] ([id], [accountId], [amount], [orderDate], [paymentDate], [paymentMethod], [status]) VALUES (21, 11, 30.0000, CAST(N'2024-07-21' AS Date), CAST(N'2024-07-21' AS Date), 2, 2)
INSERT [dbo].[OrderHistory] ([id], [accountId], [amount], [orderDate], [paymentDate], [paymentMethod], [status]) VALUES (22, 11, 240.0000, CAST(N'2024-07-21' AS Date), CAST(N'2024-07-21' AS Date), 2, 2)
INSERT [dbo].[OrderHistory] ([id], [accountId], [amount], [orderDate], [paymentDate], [paymentMethod], [status]) VALUES (23, 11, 500.0000, CAST(N'2024-07-21' AS Date), CAST(N'2024-07-21' AS Date), 2, 2)
INSERT [dbo].[OrderHistory] ([id], [accountId], [amount], [orderDate], [paymentDate], [paymentMethod], [status]) VALUES (24, 11, 155.0000, CAST(N'2024-07-21' AS Date), CAST(N'2024-07-21' AS Date), 2, 2)
INSERT [dbo].[OrderHistory] ([id], [accountId], [amount], [orderDate], [paymentDate], [paymentMethod], [status]) VALUES (25, 11, 200.0000, CAST(N'2024-07-21' AS Date), CAST(N'2024-07-21' AS Date), 2, 2)
INSERT [dbo].[OrderHistory] ([id], [accountId], [amount], [orderDate], [paymentDate], [paymentMethod], [status]) VALUES (26, 11, 200.0000, CAST(N'2024-07-21' AS Date), CAST(N'2024-07-21' AS Date), 2, 2)
INSERT [dbo].[OrderHistory] ([id], [accountId], [amount], [orderDate], [paymentDate], [paymentMethod], [status]) VALUES (27, 11, 120.0000, CAST(N'2024-07-21' AS Date), CAST(N'2024-07-21' AS Date), 2, 2)
INSERT [dbo].[OrderHistory] ([id], [accountId], [amount], [orderDate], [paymentDate], [paymentMethod], [status]) VALUES (28, 11, 24.0000, CAST(N'2024-07-21' AS Date), CAST(N'2024-07-21' AS Date), 2, 2)
INSERT [dbo].[OrderHistory] ([id], [accountId], [amount], [orderDate], [paymentDate], [paymentMethod], [status]) VALUES (29, 11, 132.0000, CAST(N'2024-07-21' AS Date), CAST(N'2024-07-21' AS Date), 2, 4)
INSERT [dbo].[OrderHistory] ([id], [accountId], [amount], [orderDate], [paymentDate], [paymentMethod], [status]) VALUES (30, 11, 550.0000, CAST(N'2024-07-21' AS Date), CAST(N'2024-07-21' AS Date), 2, 4)
INSERT [dbo].[OrderHistory] ([id], [accountId], [amount], [orderDate], [paymentDate], [paymentMethod], [status]) VALUES (31, 11, 180.0000, CAST(N'2024-07-21' AS Date), CAST(N'2024-07-21' AS Date), 2, 4)
INSERT [dbo].[OrderHistory] ([id], [accountId], [amount], [orderDate], [paymentDate], [paymentMethod], [status]) VALUES (32, 11, 24.0000, CAST(N'2024-07-21' AS Date), CAST(N'2024-07-21' AS Date), 2, 4)
INSERT [dbo].[OrderHistory] ([id], [accountId], [amount], [orderDate], [paymentDate], [paymentMethod], [status]) VALUES (33, 11, 30.0000, CAST(N'2024-07-21' AS Date), CAST(N'2024-07-21' AS Date), 2, 4)
INSERT [dbo].[OrderHistory] ([id], [accountId], [amount], [orderDate], [paymentDate], [paymentMethod], [status]) VALUES (34, 11, 200.0000, CAST(N'2024-07-21' AS Date), CAST(N'2024-07-21' AS Date), 2, 1)
INSERT [dbo].[OrderHistory] ([id], [accountId], [amount], [orderDate], [paymentDate], [paymentMethod], [status]) VALUES (35, 11, 100.0000, CAST(N'2024-07-21' AS Date), CAST(N'2024-07-21' AS Date), 2, 1)
INSERT [dbo].[OrderHistory] ([id], [accountId], [amount], [orderDate], [paymentDate], [paymentMethod], [status]) VALUES (36, 11, 120.0000, CAST(N'2024-07-21' AS Date), CAST(N'2024-07-21' AS Date), 2, 1)
INSERT [dbo].[OrderHistory] ([id], [accountId], [amount], [orderDate], [paymentDate], [paymentMethod], [status]) VALUES (37, 11, 10.0000, CAST(N'2024-07-21' AS Date), CAST(N'2024-07-21' AS Date), 2, 1)
INSERT [dbo].[OrderHistory] ([id], [accountId], [amount], [orderDate], [paymentDate], [paymentMethod], [status]) VALUES (38, 11, 120.0000, CAST(N'2024-07-21' AS Date), CAST(N'2024-07-21' AS Date), 2, 2)
INSERT [dbo].[OrderHistory] ([id], [accountId], [amount], [orderDate], [paymentDate], [paymentMethod], [status]) VALUES (39, 11, 90.0000, CAST(N'2024-07-23' AS Date), NULL, 1, 2)
SET IDENTITY_INSERT [dbo].[OrderHistory] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderHistoryDetails] ON 

INSERT [dbo].[OrderHistoryDetails] ([id], [orderId], [medicineId], [purchasePrice], [quantity]) VALUES (1, 10, 2, 12.0000, 12)
INSERT [dbo].[OrderHistoryDetails] ([id], [orderId], [medicineId], [purchasePrice], [quantity]) VALUES (2, 11, 2, 12.0000, 1)
INSERT [dbo].[OrderHistoryDetails] ([id], [orderId], [medicineId], [purchasePrice], [quantity]) VALUES (3, 11, 8, 15.0000, 11)
INSERT [dbo].[OrderHistoryDetails] ([id], [orderId], [medicineId], [purchasePrice], [quantity]) VALUES (4, 12, 2, 12.0000, 1)
INSERT [dbo].[OrderHistoryDetails] ([id], [orderId], [medicineId], [purchasePrice], [quantity]) VALUES (5, 13, 2, 12.0000, 50)
INSERT [dbo].[OrderHistoryDetails] ([id], [orderId], [medicineId], [purchasePrice], [quantity]) VALUES (6, 13, 9, 20.0000, 100)
INSERT [dbo].[OrderHistoryDetails] ([id], [orderId], [medicineId], [purchasePrice], [quantity]) VALUES (7, 14, 7, 10.0000, 1)
INSERT [dbo].[OrderHistoryDetails] ([id], [orderId], [medicineId], [purchasePrice], [quantity]) VALUES (8, 15, 2, 12.0000, 2)
INSERT [dbo].[OrderHistoryDetails] ([id], [orderId], [medicineId], [purchasePrice], [quantity]) VALUES (9, 15, 9, 20.0000, 2)
INSERT [dbo].[OrderHistoryDetails] ([id], [orderId], [medicineId], [purchasePrice], [quantity]) VALUES (10, 16, 11, 18.0000, 1)
INSERT [dbo].[OrderHistoryDetails] ([id], [orderId], [medicineId], [purchasePrice], [quantity]) VALUES (11, 17, 2, 12.0000, 2)
INSERT [dbo].[OrderHistoryDetails] ([id], [orderId], [medicineId], [purchasePrice], [quantity]) VALUES (12, 18, 2, 12.0000, 1)
INSERT [dbo].[OrderHistoryDetails] ([id], [orderId], [medicineId], [purchasePrice], [quantity]) VALUES (13, 18, 7, 10.0000, 1)
INSERT [dbo].[OrderHistoryDetails] ([id], [orderId], [medicineId], [purchasePrice], [quantity]) VALUES (14, 19, 2, 12.0000, 1)
INSERT [dbo].[OrderHistoryDetails] ([id], [orderId], [medicineId], [purchasePrice], [quantity]) VALUES (15, 19, 8, 15.0000, 1)
INSERT [dbo].[OrderHistoryDetails] ([id], [orderId], [medicineId], [purchasePrice], [quantity]) VALUES (16, 20, 7, 10.0000, 5)
INSERT [dbo].[OrderHistoryDetails] ([id], [orderId], [medicineId], [purchasePrice], [quantity]) VALUES (17, 21, 8, 15.0000, 2)
INSERT [dbo].[OrderHistoryDetails] ([id], [orderId], [medicineId], [purchasePrice], [quantity]) VALUES (18, 22, 15, 60.0000, 4)
INSERT [dbo].[OrderHistoryDetails] ([id], [orderId], [medicineId], [purchasePrice], [quantity]) VALUES (19, 23, 7, 10.0000, 50)
INSERT [dbo].[OrderHistoryDetails] ([id], [orderId], [medicineId], [purchasePrice], [quantity]) VALUES (20, 24, 13, 50.0000, 2)
INSERT [dbo].[OrderHistoryDetails] ([id], [orderId], [medicineId], [purchasePrice], [quantity]) VALUES (21, 24, 14, 55.0000, 1)
INSERT [dbo].[OrderHistoryDetails] ([id], [orderId], [medicineId], [purchasePrice], [quantity]) VALUES (22, 25, 9, 20.0000, 10)
INSERT [dbo].[OrderHistoryDetails] ([id], [orderId], [medicineId], [purchasePrice], [quantity]) VALUES (23, 26, 9, 20.0000, 10)
INSERT [dbo].[OrderHistoryDetails] ([id], [orderId], [medicineId], [purchasePrice], [quantity]) VALUES (24, 27, 15, 60.0000, 2)
INSERT [dbo].[OrderHistoryDetails] ([id], [orderId], [medicineId], [purchasePrice], [quantity]) VALUES (25, 28, 2, 12.0000, 2)
INSERT [dbo].[OrderHistoryDetails] ([id], [orderId], [medicineId], [purchasePrice], [quantity]) VALUES (26, 29, 10, 12.0000, 11)
INSERT [dbo].[OrderHistoryDetails] ([id], [orderId], [medicineId], [purchasePrice], [quantity]) VALUES (27, 30, 14, 55.0000, 10)
INSERT [dbo].[OrderHistoryDetails] ([id], [orderId], [medicineId], [purchasePrice], [quantity]) VALUES (28, 31, 12, 15.0000, 12)
INSERT [dbo].[OrderHistoryDetails] ([id], [orderId], [medicineId], [purchasePrice], [quantity]) VALUES (29, 32, 2, 12.0000, 2)
INSERT [dbo].[OrderHistoryDetails] ([id], [orderId], [medicineId], [purchasePrice], [quantity]) VALUES (30, 33, 7, 10.0000, 3)
INSERT [dbo].[OrderHistoryDetails] ([id], [orderId], [medicineId], [purchasePrice], [quantity]) VALUES (31, 34, 9, 20.0000, 10)
INSERT [dbo].[OrderHistoryDetails] ([id], [orderId], [medicineId], [purchasePrice], [quantity]) VALUES (32, 35, 7, 10.0000, 10)
INSERT [dbo].[OrderHistoryDetails] ([id], [orderId], [medicineId], [purchasePrice], [quantity]) VALUES (33, 36, 2, 12.0000, 10)
INSERT [dbo].[OrderHistoryDetails] ([id], [orderId], [medicineId], [purchasePrice], [quantity]) VALUES (34, 37, 7, 10.0000, 1)
INSERT [dbo].[OrderHistoryDetails] ([id], [orderId], [medicineId], [purchasePrice], [quantity]) VALUES (35, 38, 2, 12.0000, 10)
INSERT [dbo].[OrderHistoryDetails] ([id], [orderId], [medicineId], [purchasePrice], [quantity]) VALUES (36, 39, 7, 10.0000, 9)
SET IDENTITY_INSERT [dbo].[OrderHistoryDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[PaymentMethod] ON 

INSERT [dbo].[PaymentMethod] ([id], [paymentMethodName]) VALUES (1, N'COD')
INSERT [dbo].[PaymentMethod] ([id], [paymentMethodName]) VALUES (2, N'Bank')
SET IDENTITY_INSERT [dbo].[PaymentMethod] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([roleId], [roleName]) VALUES (1, N'admin')
INSERT [dbo].[Role] ([roleId], [roleName]) VALUES (2, N'customer')
INSERT [dbo].[Role] ([roleId], [roleName]) VALUES (3, N'seller')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[StatusOrder] ON 

INSERT [dbo].[StatusOrder] ([id], [statusName]) VALUES (1, N'Processing')
INSERT [dbo].[StatusOrder] ([id], [statusName]) VALUES (2, N'Delivering')
INSERT [dbo].[StatusOrder] ([id], [statusName]) VALUES (3, N'Complete')
INSERT [dbo].[StatusOrder] ([id], [statusName]) VALUES (4, N'Denied')
SET IDENTITY_INSERT [dbo].[StatusOrder] OFF
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_InfoAcc] FOREIGN KEY([accountId])
REFERENCES [dbo].[InfoAcc] ([id])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_InfoAcc]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Medecine] FOREIGN KEY([medicineId])
REFERENCES [dbo].[Medecine] ([id])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_Medecine]
GO
ALTER TABLE [dbo].[InfoAcc]  WITH CHECK ADD  CONSTRAINT [FK_InfoAcc_Role] FOREIGN KEY([roleId])
REFERENCES [dbo].[Role] ([roleId])
GO
ALTER TABLE [dbo].[InfoAcc] CHECK CONSTRAINT [FK_InfoAcc_Role]
GO
ALTER TABLE [dbo].[Medecine]  WITH CHECK ADD  CONSTRAINT [FK_Medecine_MedicineType] FOREIGN KEY([typeId])
REFERENCES [dbo].[MedicineType] ([id])
GO
ALTER TABLE [dbo].[Medecine] CHECK CONSTRAINT [FK_Medecine_MedicineType]
GO
ALTER TABLE [dbo].[OrderHistory]  WITH CHECK ADD  CONSTRAINT [FK_OrderHistory_InfoAcc] FOREIGN KEY([accountId])
REFERENCES [dbo].[InfoAcc] ([id])
GO
ALTER TABLE [dbo].[OrderHistory] CHECK CONSTRAINT [FK_OrderHistory_InfoAcc]
GO
ALTER TABLE [dbo].[OrderHistory]  WITH CHECK ADD  CONSTRAINT [FK_OrderHistory_PaymentMethod] FOREIGN KEY([paymentMethod])
REFERENCES [dbo].[PaymentMethod] ([id])
GO
ALTER TABLE [dbo].[OrderHistory] CHECK CONSTRAINT [FK_OrderHistory_PaymentMethod]
GO
ALTER TABLE [dbo].[OrderHistory]  WITH CHECK ADD  CONSTRAINT [FK_OrderHistory_StatusOrder] FOREIGN KEY([status])
REFERENCES [dbo].[StatusOrder] ([id])
GO
ALTER TABLE [dbo].[OrderHistory] CHECK CONSTRAINT [FK_OrderHistory_StatusOrder]
GO
ALTER TABLE [dbo].[OrderHistoryDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderHistoryDetails_Medecine] FOREIGN KEY([medicineId])
REFERENCES [dbo].[Medecine] ([id])
GO
ALTER TABLE [dbo].[OrderHistoryDetails] CHECK CONSTRAINT [FK_OrderHistoryDetails_Medecine]
GO
ALTER TABLE [dbo].[OrderHistoryDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderHistoryDetails_OrderHistory] FOREIGN KEY([orderId])
REFERENCES [dbo].[OrderHistory] ([id])
GO
ALTER TABLE [dbo].[OrderHistoryDetails] CHECK CONSTRAINT [FK_OrderHistoryDetails_OrderHistory]
GO
