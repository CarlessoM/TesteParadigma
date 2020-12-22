USE [Paradigma]
GO
/****** Object:  Table [dbo].[Departamento]    Script Date: 12/22/2020 3:05:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departamento](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Departamento] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pessoa]    Script Date: 12/22/2020 3:05:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pessoa](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](max) NOT NULL,
	[Salario] [numeric](18, 0) NOT NULL,
	[DeptId] [int] NOT NULL,
 CONSTRAINT [PK_Pessoa] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Departamento] ON 
GO
INSERT [dbo].[Departamento] ([Id], [Nome]) VALUES (1, N'TI')
GO
INSERT [dbo].[Departamento] ([Id], [Nome]) VALUES (2, N'Vendas')
GO
SET IDENTITY_INSERT [dbo].[Departamento] OFF
GO
SET IDENTITY_INSERT [dbo].[Pessoa] ON 
GO
INSERT [dbo].[Pessoa] ([Id], [Nome], [Salario], [DeptId]) VALUES (1, N'Joe', CAST(70000 AS Numeric(18, 0)), 1)
GO
INSERT [dbo].[Pessoa] ([Id], [Nome], [Salario], [DeptId]) VALUES (2, N'Henry', CAST(80000 AS Numeric(18, 0)), 2)
GO
INSERT [dbo].[Pessoa] ([Id], [Nome], [Salario], [DeptId]) VALUES (3, N'Sam', CAST(60000 AS Numeric(18, 0)), 2)
GO
INSERT [dbo].[Pessoa] ([Id], [Nome], [Salario], [DeptId]) VALUES (4, N'Max', CAST(90000 AS Numeric(18, 0)), 1)
GO
SET IDENTITY_INSERT [dbo].[Pessoa] OFF
GO
ALTER TABLE [dbo].[Pessoa]  WITH CHECK ADD  CONSTRAINT [FK_Pessoa_Departamento] FOREIGN KEY([DeptId])
REFERENCES [dbo].[Departamento] ([Id])
GO
ALTER TABLE [dbo].[Pessoa] CHECK CONSTRAINT [FK_Pessoa_Departamento]
GO
