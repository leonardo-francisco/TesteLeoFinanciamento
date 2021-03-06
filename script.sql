USE [Financiamento]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 31/07/2020 10:45:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[IdCliente] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](50) NULL,
	[Celular] [varchar](11) NULL,
	[UF] [char](2) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Financiamento]    Script Date: 31/07/2020 10:45:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Financiamento](
	[IdFinanciamento] [int] IDENTITY(1,1) NOT NULL,
	[IdCliente] [int] NULL,
	[TipoFinanciamento] [varchar](60) NULL,
	[ValorTotal] [money] NULL,
	[DtVencimento] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdFinanciamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Parcelas]    Script Date: 31/07/2020 10:45:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Parcelas](
	[IdParcela] [int] IDENTITY(1,1) NOT NULL,
	[IdFinanciamento] [int] NULL,
	[NumParcelas] [int] NULL,
	[ValorParcela] [money] NULL,
	[DtVencimento] [datetime] NULL,
	[DtPagamento] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdParcela] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Cliente] ON 

INSERT [dbo].[Cliente] ([IdCliente], [Nome], [Celular], [UF]) VALUES (1, N'Cleber Fonseca', N'11999994455', N'SP')
INSERT [dbo].[Cliente] ([IdCliente], [Nome], [Celular], [UF]) VALUES (2, N'Karina Silva', N'21911112222', N'RJ')
INSERT [dbo].[Cliente] ([IdCliente], [Nome], [Celular], [UF]) VALUES (3, N'Stella Menezes', N'71999996666', N'BA')
INSERT [dbo].[Cliente] ([IdCliente], [Nome], [Celular], [UF]) VALUES (4, N'Otavio Floriano', N'61999994455', N'CE')
INSERT [dbo].[Cliente] ([IdCliente], [Nome], [Celular], [UF]) VALUES (5, N'Maristela Schrost', N'51988880000', N'RS')
INSERT [dbo].[Cliente] ([IdCliente], [Nome], [Celular], [UF]) VALUES (6, N'Bispo Evangelista', N'11966663333', N'SP')
INSERT [dbo].[Cliente] ([IdCliente], [Nome], [Celular], [UF]) VALUES (7, N'Marcos Corolus', N'11977775555', N'SP')
INSERT [dbo].[Cliente] ([IdCliente], [Nome], [Celular], [UF]) VALUES (8, N'Marcia Nakashima', N'11911110000', N'SP')
INSERT [dbo].[Cliente] ([IdCliente], [Nome], [Celular], [UF]) VALUES (9, N'Mercia Steves', N'11944442222', N'SP')
SET IDENTITY_INSERT [dbo].[Cliente] OFF
SET IDENTITY_INSERT [dbo].[Financiamento] ON 

INSERT [dbo].[Financiamento] ([IdFinanciamento], [IdCliente], [TipoFinanciamento], [ValorTotal], [DtVencimento]) VALUES (1, 1, N'Credito Pessoal', 9100.0000, CAST(N'2020-09-15T00:00:00.000' AS DateTime))
INSERT [dbo].[Financiamento] ([IdFinanciamento], [IdCliente], [TipoFinanciamento], [ValorTotal], [DtVencimento]) VALUES (2, 6, N'Financiamento Veicular', 18500.0000, CAST(N'2020-12-26T00:00:00.000' AS DateTime))
INSERT [dbo].[Financiamento] ([IdFinanciamento], [IdCliente], [TipoFinanciamento], [ValorTotal], [DtVencimento]) VALUES (3, 7, N'Financiamento Imóvel', 418500.0000, CAST(N'2020-10-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Financiamento] ([IdFinanciamento], [IdCliente], [TipoFinanciamento], [ValorTotal], [DtVencimento]) VALUES (4, 8, N'Credito Pessoal', 20000.0000, CAST(N'2020-11-20T00:00:00.000' AS DateTime))
INSERT [dbo].[Financiamento] ([IdFinanciamento], [IdCliente], [TipoFinanciamento], [ValorTotal], [DtVencimento]) VALUES (5, 9, N'Emprestimo Consignado', 18500.0000, CAST(N'2020-08-17T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Financiamento] OFF
SET IDENTITY_INSERT [dbo].[Parcelas] ON 

INSERT [dbo].[Parcelas] ([IdParcela], [IdFinanciamento], [NumParcelas], [ValorParcela], [DtVencimento], [DtPagamento]) VALUES (1, 1, 1, 1300.0000, CAST(N'2020-03-15T00:00:00.000' AS DateTime), CAST(N'2020-09-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Parcelas] ([IdParcela], [IdFinanciamento], [NumParcelas], [ValorParcela], [DtVencimento], [DtPagamento]) VALUES (2, 1, 2, 1300.0000, CAST(N'2020-04-15T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Parcelas] ([IdParcela], [IdFinanciamento], [NumParcelas], [ValorParcela], [DtVencimento], [DtPagamento]) VALUES (3, 1, 3, 1300.0000, CAST(N'2020-05-15T00:00:00.000' AS DateTime), CAST(N'2020-05-25T00:00:00.000' AS DateTime))
INSERT [dbo].[Parcelas] ([IdParcela], [IdFinanciamento], [NumParcelas], [ValorParcela], [DtVencimento], [DtPagamento]) VALUES (4, 1, 4, 1300.0000, CAST(N'2020-06-15T00:00:00.000' AS DateTime), CAST(N'2020-06-16T00:00:00.000' AS DateTime))
INSERT [dbo].[Parcelas] ([IdParcela], [IdFinanciamento], [NumParcelas], [ValorParcela], [DtVencimento], [DtPagamento]) VALUES (5, 1, 5, 1300.0000, CAST(N'2020-07-15T00:00:00.000' AS DateTime), CAST(N'2020-06-16T00:00:00.000' AS DateTime))
INSERT [dbo].[Parcelas] ([IdParcela], [IdFinanciamento], [NumParcelas], [ValorParcela], [DtVencimento], [DtPagamento]) VALUES (6, 1, 6, 1300.0000, CAST(N'2020-08-15T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Parcelas] ([IdParcela], [IdFinanciamento], [NumParcelas], [ValorParcela], [DtVencimento], [DtPagamento]) VALUES (7, 1, 7, 1300.0000, CAST(N'2020-09-15T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Parcelas] ([IdParcela], [IdFinanciamento], [NumParcelas], [ValorParcela], [DtVencimento], [DtPagamento]) VALUES (8, 2, 1, 3700.0000, CAST(N'2020-10-26T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Parcelas] ([IdParcela], [IdFinanciamento], [NumParcelas], [ValorParcela], [DtVencimento], [DtPagamento]) VALUES (9, 2, 2, 3700.0000, CAST(N'2020-11-26T00:00:00.000' AS DateTime), CAST(N'2020-11-29T00:00:00.000' AS DateTime))
INSERT [dbo].[Parcelas] ([IdParcela], [IdFinanciamento], [NumParcelas], [ValorParcela], [DtVencimento], [DtPagamento]) VALUES (10, 2, 3, 3700.0000, CAST(N'2020-12-26T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Parcelas] ([IdParcela], [IdFinanciamento], [NumParcelas], [ValorParcela], [DtVencimento], [DtPagamento]) VALUES (11, 3, 1, 46500.0000, CAST(N'2020-02-05T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Parcelas] ([IdParcela], [IdFinanciamento], [NumParcelas], [ValorParcela], [DtVencimento], [DtPagamento]) VALUES (12, 3, 2, 46500.0000, CAST(N'2020-03-05T00:00:00.000' AS DateTime), CAST(N'2020-03-29T00:00:00.000' AS DateTime))
INSERT [dbo].[Parcelas] ([IdParcela], [IdFinanciamento], [NumParcelas], [ValorParcela], [DtVencimento], [DtPagamento]) VALUES (13, 3, 3, 46500.0000, CAST(N'2020-04-05T00:00:00.000' AS DateTime), CAST(N'2020-04-29T00:00:00.000' AS DateTime))
INSERT [dbo].[Parcelas] ([IdParcela], [IdFinanciamento], [NumParcelas], [ValorParcela], [DtVencimento], [DtPagamento]) VALUES (14, 3, 4, 46500.0000, CAST(N'2020-05-05T00:00:00.000' AS DateTime), CAST(N'2020-05-29T00:00:00.000' AS DateTime))
INSERT [dbo].[Parcelas] ([IdParcela], [IdFinanciamento], [NumParcelas], [ValorParcela], [DtVencimento], [DtPagamento]) VALUES (15, 3, 5, 46500.0000, CAST(N'2020-06-05T00:00:00.000' AS DateTime), CAST(N'2020-06-29T00:00:00.000' AS DateTime))
INSERT [dbo].[Parcelas] ([IdParcela], [IdFinanciamento], [NumParcelas], [ValorParcela], [DtVencimento], [DtPagamento]) VALUES (16, 3, 6, 46500.0000, CAST(N'2020-07-05T00:00:00.000' AS DateTime), CAST(N'2020-07-29T00:00:00.000' AS DateTime))
INSERT [dbo].[Parcelas] ([IdParcela], [IdFinanciamento], [NumParcelas], [ValorParcela], [DtVencimento], [DtPagamento]) VALUES (17, 3, 7, 46500.0000, CAST(N'2020-08-05T00:00:00.000' AS DateTime), CAST(N'2020-08-29T00:00:00.000' AS DateTime))
INSERT [dbo].[Parcelas] ([IdParcela], [IdFinanciamento], [NumParcelas], [ValorParcela], [DtVencimento], [DtPagamento]) VALUES (18, 3, 8, 46500.0000, CAST(N'2020-09-05T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Parcelas] ([IdParcela], [IdFinanciamento], [NumParcelas], [ValorParcela], [DtVencimento], [DtPagamento]) VALUES (19, 3, 9, 46500.0000, CAST(N'2020-10-05T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Parcelas] ([IdParcela], [IdFinanciamento], [NumParcelas], [ValorParcela], [DtVencimento], [DtPagamento]) VALUES (20, 4, 1, 2000.0000, CAST(N'2020-02-20T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Parcelas] ([IdParcela], [IdFinanciamento], [NumParcelas], [ValorParcela], [DtVencimento], [DtPagamento]) VALUES (21, 4, 2, 2000.0000, CAST(N'2020-03-20T00:00:00.000' AS DateTime), CAST(N'2020-03-29T00:00:00.000' AS DateTime))
INSERT [dbo].[Parcelas] ([IdParcela], [IdFinanciamento], [NumParcelas], [ValorParcela], [DtVencimento], [DtPagamento]) VALUES (22, 4, 3, 2000.0000, CAST(N'2020-04-20T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Parcelas] ([IdParcela], [IdFinanciamento], [NumParcelas], [ValorParcela], [DtVencimento], [DtPagamento]) VALUES (23, 4, 4, 2000.0000, CAST(N'2020-05-20T00:00:00.000' AS DateTime), CAST(N'2020-05-29T00:00:00.000' AS DateTime))
INSERT [dbo].[Parcelas] ([IdParcela], [IdFinanciamento], [NumParcelas], [ValorParcela], [DtVencimento], [DtPagamento]) VALUES (24, 4, 5, 2000.0000, CAST(N'2020-06-20T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Parcelas] ([IdParcela], [IdFinanciamento], [NumParcelas], [ValorParcela], [DtVencimento], [DtPagamento]) VALUES (25, 4, 6, 2000.0000, CAST(N'2020-07-20T00:00:00.000' AS DateTime), CAST(N'2020-07-29T00:00:00.000' AS DateTime))
INSERT [dbo].[Parcelas] ([IdParcela], [IdFinanciamento], [NumParcelas], [ValorParcela], [DtVencimento], [DtPagamento]) VALUES (26, 4, 7, 2000.0000, CAST(N'2020-08-20T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Parcelas] ([IdParcela], [IdFinanciamento], [NumParcelas], [ValorParcela], [DtVencimento], [DtPagamento]) VALUES (27, 4, 8, 2000.0000, CAST(N'2020-09-20T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Parcelas] ([IdParcela], [IdFinanciamento], [NumParcelas], [ValorParcela], [DtVencimento], [DtPagamento]) VALUES (28, 4, 9, 2000.0000, CAST(N'2020-10-20T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Parcelas] ([IdParcela], [IdFinanciamento], [NumParcelas], [ValorParcela], [DtVencimento], [DtPagamento]) VALUES (29, 4, 10, 2000.0000, CAST(N'2020-11-20T00:00:00.000' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Parcelas] OFF
ALTER TABLE [dbo].[Financiamento]  WITH CHECK ADD FOREIGN KEY([IdCliente])
REFERENCES [dbo].[Cliente] ([IdCliente])
GO
ALTER TABLE [dbo].[Parcelas]  WITH CHECK ADD FOREIGN KEY([IdFinanciamento])
REFERENCES [dbo].[Financiamento] ([IdFinanciamento])
GO
