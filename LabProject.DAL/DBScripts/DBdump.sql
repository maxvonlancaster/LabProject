USE [Employees]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 9/9/2019 9:06:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[Surname] [nvarchar](max) NULL,
	[PositionId] [int] NULL,
	[Adress] [nvarchar](max) NULL,
	[Characteristics] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Positions]    Script Date: 9/9/2019 9:06:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Positions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [nvarchar](max) NULL,
	[Salary] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProjectEmployee]    Script Date: 9/9/2019 9:06:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProjectEmployee](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeId] [int] NULL,
	[ProjectId] [int] NULL,
	[DaysOnProject] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Projects]    Script Date: 9/9/2019 9:06:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Projects](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProjectName] [nvarchar](max) NULL,
	[ProjectDescription] [nvarchar](max) NULL,
	[StartDate] [date] NULL,
	[EndDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Positions] ON 

INSERT [dbo].[Positions] ([Id], [Position], [Salary]) VALUES (1, N'Captain', 1000)
INSERT [dbo].[Positions] ([Id], [Position], [Salary]) VALUES (2, N'Science officer', 900)
INSERT [dbo].[Positions] ([Id], [Position], [Salary]) VALUES (3, N'Chief Medical Officer', 900)
INSERT [dbo].[Positions] ([Id], [Position], [Salary]) VALUES (4, N'Medical Officer', 700)
INSERT [dbo].[Positions] ([Id], [Position], [Salary]) VALUES (5, N'Engineer', 700)
INSERT [dbo].[Positions] ([Id], [Position], [Salary]) VALUES (6, N'Communications Officer', 600)
INSERT [dbo].[Positions] ([Id], [Position], [Salary]) VALUES (7, N'Helmsman', 500)
INSERT [dbo].[Positions] ([Id], [Position], [Salary]) VALUES (8, N'Navigator', 500)
SET IDENTITY_INSERT [dbo].[Positions] OFF
SET IDENTITY_INSERT [dbo].[Projects] ON 

INSERT [dbo].[Projects] ([Id], [ProjectName], [ProjectDescription], [StartDate], [EndDate]) VALUES (1, N'USS Enterprise', N'Federation vessel', CAST(N'2230-04-05' AS Date), CAST(N'2235-04-05' AS Date))
INSERT [dbo].[Projects] ([Id], [ProjectName], [ProjectDescription], [StartDate], [EndDate]) VALUES (2, N'USS Excelsior', N'Federation vessel', CAST(N'2235-04-05' AS Date), CAST(N'2240-04-05' AS Date))
INSERT [dbo].[Projects] ([Id], [ProjectName], [ProjectDescription], [StartDate], [EndDate]) VALUES (3, N'USS Enterprise D', N'Federation vessel', CAST(N'2350-05-05' AS Date), CAST(N'2355-05-05' AS Date))
SET IDENTITY_INSERT [dbo].[Projects] OFF
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD FOREIGN KEY([PositionId])
REFERENCES [dbo].[Positions] ([Id])
GO
ALTER TABLE [dbo].[ProjectEmployee]  WITH CHECK ADD FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[Employees] ([Id])
GO
ALTER TABLE [dbo].[ProjectEmployee]  WITH CHECK ADD FOREIGN KEY([ProjectId])
REFERENCES [dbo].[Projects] ([Id])
GO
