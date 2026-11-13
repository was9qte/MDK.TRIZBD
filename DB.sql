USE [ispp5503]
GO
/****** Объект:  Table [dbo].[Film]    Дата создания скрипта: 15.10.2026 10:55:40 ******/ 
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Film](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[Duration] [smallint] NOT NULL,
	[ReleaseYear] [smallint] NOT NULL,
	[Description] [nvarchar](500) NULL,
	[Poster] [varbinary](max) NULL,
	[AgeRating] [varchar](10) NULL,
	[RenalStart] [date] NULL,
	[RenalEnd] [date] NULL,
 CONSTRAINT [PK_Film] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Объект:  Table [dbo].[Film_Genre]    Дата создания скрипта: 15.10.2026 10:55:40 ******/ 
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Film_Genre](
	[filmId] [int] NOT NULL,
	[genreId] [int] NOT NULL,
 CONSTRAINT [PK_Film_Genre] PRIMARY KEY CLUSTERED 
(
	[filmId] ASC,
	[genreId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Объект:  Table [dbo].[Films]    Дата создания скрипта: 15.10.2026 10:55:40 ******/ 
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Films](
	[FilmId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](200) NOT NULL,
	[Price] [decimal](10, 2) NOT NULL,
	[FileData] [varbinary](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[FilmId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Объект:  Table [dbo].[Genre]    Дата создания скрипта: 15.10.2026 10:55:40 ******/ 
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genre](
	[Id] [int] NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Genre] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Объект:  Table [dbo].[Hall]    Дата создания скрипта: 15.10.2026 10:55:40 ******/ 
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hall](
	[Id] [tinyint] NOT NULL,
	[Cinema] [nvarchar](50) NOT NULL,
	[HallId] [tinyint] NOT NULL,
	[Rowcount] [tinyint] NOT NULL,
	[SeatsPerRow] [tinyint] NOT NULL,
	[IsVip] [bit] NOT NULL,
 CONSTRAINT [PK_Hall] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Объект:  Table [dbo].[Session]    Дата создания скрипта: 15.10.2026 10:55:40 ******/ 
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Session](
	[Id] [int] NOT NULL,
	[Film_Id] [int] NOT NULL,
	[Hall_Id] [tinyint] NOT NULL,
	[Price] [decimal](4, 0) NOT NULL,
	[StartDateTime] [datetime2](7) NOT NULL,
	[Is3D] [bit] NOT NULL,
 CONSTRAINT [PK_Session] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Объект:  Table [dbo].[Ticket]    Дата создания скрипта: 15.10.2026 10:55:40 ******/ 
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ticket](
	[Id] [int] NOT NULL,
	[VisitorId] [int] NULL,
	[SessionId] [int] NULL,
	[Row] [tinyint] NULL,
	[Place] [tinyint] NULL,
 CONSTRAINT [PK_Ticket] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Объект:  Table [dbo].[Visitor]    Дата создания скрипта: 15.10.2026 10:55:40 ******/ 
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Visitor](
	[Id] [int] NOT NULL,
	[Phone] [char](10) NULL,
	[Name] [nvarchar](50) NOT NULL,
	[DateBirth] [datetime2](7) NOT NULL,
	[Email] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Visitor] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Film] ON 
GO
INSERT [dbo].[Film] ([Id], [Title], [Duration], [ReleaseYear], [Description], [Poster], [AgeRating], [RenalStart], [RenalEnd]) VALUES (6, N'Обитель зла', 60, 2026, NULL, NULL, N'18', CAST(N'2026-10-14' AS Date), CAST(N'2026-10-14' AS Date))
GO
INSERT [dbo].[Film] ([Id], [Title], [Duration], [ReleaseYear], [Description], [Poster], [AgeRating], [RenalStart], [RenalEnd]) VALUES (7, N'Закулисье реальности', 90, 2000, NULL, NULL, N'18', CAST(N'2026-10-14' AS Date), CAST(N'2026-10-14' AS Date))
GO
INSERT [dbo].[Film] ([Id], [Title], [Duration], [ReleaseYear], [Description], [Poster], [AgeRating], [RenalStart], [RenalEnd]) VALUES (8, N'йцу', 1234, 1234, N'', NULL, NULL, CAST(N'2000-08-08' AS Date), CAST(N'2000-08-08' AS Date))
GO
INSERT [dbo].[Film] ([Id], [Title], [Duration], [ReleaseYear], [Description], [Poster], [AgeRating], [RenalStart], [RenalEnd]) VALUES (10, N'Одиссея', 120, 2026, NULL, NULL, N'18', CAST(N'2026-08-09' AS Date), CAST(N'2026-08-10' AS Date))
GO
SET IDENTITY_INSERT [dbo].[Film] OFF
GO
INSERT [dbo].[Film_Genre] ([filmId], [genreId]) VALUES (6, 1)
GO
INSERT [dbo].[Film_Genre] ([filmId], [genreId]) VALUES (6, 2)
GO
INSERT [dbo].[Film_Genre] ([filmId], [genreId]) VALUES (6, 3)
GO
INSERT [dbo].[Film_Genre] ([filmId], [genreId]) VALUES (7, 2)
GO
INSERT [dbo].[Film_Genre] ([filmId], [genreId]) VALUES (8, 1)
GO
INSERT [dbo].[Film_Genre] ([filmId], [genreId]) VALUES (8, 3)
GO
SET IDENTITY_INSERT [dbo].[Films] ON 
GO
INSERT [dbo].[Films] ([FilmId], [Title], [Price], [FileData]) VALUES (1, N'???????', CAST(300.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[Films] ([FilmId], [Title], [Price], [FileData]) VALUES (2, N'????????????', CAST(400.00 AS Decimal(10, 2)), NULL)
GO
INSERT [dbo].[Films] ([FilmId], [Title], [Price], [FileData]) VALUES (3, N'??????', CAST(350.00 AS Decimal(10, 2)), NULL)
GO
SET IDENTITY_INSERT [dbo].[Films] OFF
GO
INSERT [dbo].[Genre] ([Id], [Title]) VALUES (1, N'Ужастик')
GO
INSERT [dbo].[Genre] ([Id], [Title]) VALUES (2, N'Триллер')
GO
INSERT [dbo].[Genre] ([Id], [Title]) VALUES (3, N'Драма')
GO
INSERT [dbo].[Hall] ([Id], [Cinema], [HallId], [Rowcount], [SeatsPerRow], [IsVip]) VALUES (1, N'Мираж Синема', 1, 6, 15, 0)
GO
INSERT [dbo].[Hall] ([Id], [Cinema], [HallId], [Rowcount], [SeatsPerRow], [IsVip]) VALUES (2, N'Пирамида', 2, 6, 15, 1)
GO
INSERT [dbo].[Hall] ([Id], [Cinema], [HallId], [Rowcount], [SeatsPerRow], [IsVip]) VALUES (3, N'Лужники', 3, 6, 15, 0)
GO
INSERT [dbo].[Session] ([Id], [Film_Id], [Hall_Id], [Price], [StartDateTime], [Is3D]) VALUES (1, 6, 1, CAST(300 AS Decimal(4, 0)), CAST(N'2026-10-14T11:56:02.2400000' AS DateTime2), 0)
GO
INSERT [dbo].[Session] ([Id], [Film_Id], [Hall_Id], [Price], [StartDateTime], [Is3D]) VALUES (2, 7, 2, CAST(400 AS Decimal(4, 0)), CAST(N'2026-10-14T12:00:00.0000000' AS DateTime2), 1)
GO
INSERT [dbo].[Session] ([Id], [Film_Id], [Hall_Id], [Price], [StartDateTime], [Is3D]) VALUES (3, 8, 3, CAST(350 AS Decimal(4, 0)), CAST(N'2026-08-10T00:00:00.0000000' AS DateTime2), 1)
GO
INSERT [dbo].[Ticket] ([Id], [VisitorId], [SessionId], [Row], [Place]) VALUES (1, 1, 1, 5, 5)
GO
INSERT [dbo].[Ticket] ([Id], [VisitorId], [SessionId], [Row], [Place]) VALUES (2, 2, 2, 3, 10)
GO
INSERT [dbo].[Ticket] ([Id], [VisitorId], [SessionId], [Row], [Place]) VALUES (3, 3, 3, 2, 7)
GO
INSERT [dbo].[Visitor] ([Id], [Phone], [Name], [DateBirth], [Email]) VALUES (1, N'2342666   ', N'Фома', CAST(N'2007-09-01T00:00:00.0000000' AS DateTime2), N'fsdfs123')
GO
INSERT [dbo].[Visitor] ([Id], [Phone], [Name], [DateBirth], [Email]) VALUES (2, N'135643    ', N'Тарас', CAST(N'2003-09-01T00:00:00.0000000' AS DateTime2), N'dfgr345')
GO
INSERT [dbo].[Visitor] ([Id], [Phone], [Name], [DateBirth], [Email]) VALUES (3, N'1347898   ', N'Карабас', CAST(N'2000-03-01T00:00:00.0000000' AS DateTime2), N'123234fdsfs')
GO
INSERT [dbo].[Visitor] ([Id], [Phone], [Name], [DateBirth], [Email]) VALUES (4, N'8787      ', N'45', CAST(N'2020-01-01T00:00:00.0000000' AS DateTime2), N'545')
GO
INSERT [dbo].[Visitor] ([Id], [Phone], [Name], [DateBirth], [Email]) VALUES (5, N'fhfgh     ', N'fhfg', CAST(N'2020-01-01T00:00:00.0000000' AS DateTime2), N'42')
GO
ALTER TABLE [dbo].[Film_Genre]  WITH CHECK ADD  CONSTRAINT [FK_Film_Genre_Film] FOREIGN KEY([filmId])
REFERENCES [dbo].[Film] ([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Film_Genre] CHECK CONSTRAINT [FK_Film_Genre_Film]
GO
ALTER TABLE [dbo].[Film_Genre]  WITH CHECK ADD  CONSTRAINT [FK_Film_Genre_Genre] FOREIGN KEY([genreId])
REFERENCES [dbo].[Genre] ([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Film_Genre] CHECK CONSTRAINT [FK_Film_Genre_Genre]
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD  CONSTRAINT [FK_Session_Film] FOREIGN KEY([Film_Id])
REFERENCES [dbo].[Film] ([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Session] CHECK CONSTRAINT [FK_Session_Film]
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD  CONSTRAINT [FK_Session_Hall] FOREIGN KEY([Hall_Id])
REFERENCES [dbo].[Hall] ([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Session] CHECK CONSTRAINT [FK_Session_Hall]
GO
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD  CONSTRAINT [FK_Ticket_Session] FOREIGN KEY([SessionId])
REFERENCES [dbo].[Session] ([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Ticket] CHECK CONSTRAINT [FK_Ticket_Session]
GO
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD  CONSTRAINT [FK_Ticket_Visitor] FOREIGN KEY([VisitorId])
REFERENCES [dbo].[Visitor] ([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Ticket] CHECK CONSTRAINT [FK_Ticket_Visitor]
GO
