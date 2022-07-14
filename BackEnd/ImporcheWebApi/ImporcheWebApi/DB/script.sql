USE [ServisSaltesa]
GO
/****** Object:  User [helmer]    Script Date: 5/31/2021 4:49:26 PM ******/
CREATE USER [helmer] FOR LOGIN [helmer] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [helmer]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [helmer]
GO
ALTER ROLE [db_denydatawriter] ADD MEMBER [helmer]
GO
/****** Object:  Table [dbo].[Categorias_Trans]    Script Date: 5/31/2021 4:49:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categorias_Trans](
	[Categoria_id] [int] IDENTITY(1,1) NOT NULL,
	[Categoria_Nombre] [varchar](50) NOT NULL,
	[Categoria_Descripcion] [varchar](100) NOT NULL,
	[Registro_Estado] [bit] NOT NULL,
	[Registro_Usuario] [varchar](50) NOT NULL,
	[Registro_Fecha] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Categoria_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clientes_Trans]    Script Date: 5/31/2021 4:49:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes_Trans](
	[Cliente_id] [int] IDENTITY(1,1) NOT NULL,
	[Cliente_Nombre] [varchar](50) NOT NULL,
	[Cliente_Apellido] [varchar](50) NOT NULL,
	[Cliente_Direccion] [varchar](100) NOT NULL,
	[Cliente_Email] [varchar](100) NOT NULL,
	[Cliente_Telefono] [varchar](15) NULL,
	[Cliente_Celular] [varchar](12) NULL,
	[Cliente_RNC] [varchar](10) NULL,
	[Registro_Estado] [bit] NOT NULL,
	[Registro_Usuario] [varchar](50) NULL,
	[Registro_Fecha] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Cliente_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Color_Cata]    Script Date: 5/31/2021 4:49:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Color_Cata](
	[Color_id] [int] IDENTITY(1,1) NOT NULL,
	[Color_Nombre] [varchar](40) NOT NULL,
	[Registro_Estado] [bit] NOT NULL,
	[Registro_Usuario] [varchar](50) NOT NULL,
	[Registro_Fecha] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Color_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comprobantes_Cata]    Script Date: 5/31/2021 4:49:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comprobantes_Cata](
	[Comprobante_id] [tinyint] NOT NULL,
	[Comprobante_Nombre] [varchar](50) NOT NULL,
	[Comprobante_Descripcion] [varchar](500) NOT NULL,
	[Registro_Estado] [bit] NOT NULL,
	[Regidtro_Usuario] [varchar](50) NOT NULL,
	[Registro_Fecha] [datetime] NOT NULL,
 CONSTRAINT [PK_Comprobantes_Cata] PRIMARY KEY CLUSTERED 
(
	[Comprobante_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleados_Trans]    Script Date: 5/31/2021 4:49:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleados_Trans](
	[Empleado_id] [int] IDENTITY(1,1) NOT NULL,
	[Empleado_Nombre] [varchar](50) NOT NULL,
	[Empleado_Apellido] [varchar](50) NOT NULL,
	[Empleado_Direccion] [varchar](150) NOT NULL,
	[Empleado_Telefono] [varchar](13) NOT NULL,
	[Empleado_Celular] [varchar](13) NOT NULL,
	[Empresa_ID] [int] NOT NULL,
	[Empleado_Edad] [tinyint] NULL,
	[Registro_Estado] [bit] NOT NULL,
	[Registro_Usuario] [varchar](50) NOT NULL,
	[Registro_Fecha] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Empleado_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empresas_Trans]    Script Date: 5/31/2021 4:49:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empresas_Trans](
	[Empresa_id] [int] IDENTITY(1,1) NOT NULL,
	[Empresa_User] [varchar](50) NOT NULL,
	[Empresa_Password] [varchar](100) NOT NULL,
	[Empresa_Nombre] [varchar](200) NOT NULL,
	[Empresa_Email] [varchar](100) NOT NULL,
	[Empresa_Direccion] [varchar](300) NOT NULL,
	[Empresa_Telefono] [varchar](13) NOT NULL,
	[Empresa_Logo] [varchar](100) NOT NULL,
	[Registro_Estado] [bit] NOT NULL,
	[Registro_Usuario] [varchar](50) NOT NULL,
	[Registro_Fecha] [datetime] NOT NULL,
 CONSTRAINT [PK__Empresas__EAF7B53C7D8FF197] PRIMARY KEY CLUSTERED 
(
	[Empresa_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Facturas_Detalles_Trans]    Script Date: 5/31/2021 4:49:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Facturas_Detalles_Trans](
	[Detalle_id] [int] IDENTITY(1,1) NOT NULL,
	[Factura_ID] [int] NOT NULL,
	[Detalle_Cantidad] [int] NOT NULL,
	[Detalle_Descripcion] [varchar](200) NULL,
	[Importe] [decimal](18, 2) NOT NULL,
	[Registro_Estado] [bit] NOT NULL,
	[Registro_Usuario] [varchar](50) NULL,
	[Registro_Fecha] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Detalle_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Facturas_Trans]    Script Date: 5/31/2021 4:49:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Facturas_Trans](
	[factura_id] [int] IDENTITY(1,1) NOT NULL,
	[Cliente_ID] [int] NOT NULL,
	[Marca_ID] [int] NOT NULL,
	[Modelo_ID] [int] NOT NULL,
	[TipoVehiculo_ID] [tinyint] NOT NULL,
	[Factura_Comprobante] [varchar](20) NULL,
	[TipoTransaccion_ID] [tinyint] NOT NULL,
	[Factura_NCF] [varchar](50) NOT NULL,
	[Factura_NIF] [varchar](50) NOT NULL,
	[Factura_ITBIS] [decimal](18, 2) NOT NULL,
	[Factura_Neto] [decimal](18, 2) NOT NULL,
	[Factura_Subtotal] [decimal](18, 2) NOT NULL,
	[Factura_Total] [decimal](18, 2) NOT NULL,
	[Registro_Estado] [bit] NOT NULL,
	[Registro_Usuario] [varchar](50) NULL,
	[Registro_Fecha] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[factura_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inventarios_Trans]    Script Date: 5/31/2021 4:49:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventarios_Trans](
	[Inventario_id] [int] IDENTITY(1,1) NOT NULL,
	[Producto_ID] [int] NOT NULL,
	[Categoria_ID] [int] NOT NULL,
	[Proveedor_ID] [int] NOT NULL,
	[Inventario_Entrada] [int] NOT NULL,
	[Inventario_Stock] [int] NOT NULL,
	[Inventario_Salida] [int] NOT NULL,
	[Registro_Estado] [bit] NOT NULL,
	[Registro_Usuario] [varchar](50) NOT NULL,
	[Registro_Fecha] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Inventario_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Marcas_Cata]    Script Date: 5/31/2021 4:49:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Marcas_Cata](
	[Marca_id] [int] IDENTITY(1,1) NOT NULL,
	[Marca_Nombre] [varchar](30) NOT NULL,
	[Marca_Descripcion] [varchar](500) NOT NULL,
	[Registro_Estado] [bit] NOT NULL,
	[Registro_Usuario] [varchar](50) NOT NULL,
	[Registro_Fecha] [datetime] NOT NULL,
 CONSTRAINT [PK__Marcas_C__5546B22CB64F642E] PRIMARY KEY CLUSTERED 
(
	[Marca_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Modelos_Cata]    Script Date: 5/31/2021 4:49:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Modelos_Cata](
	[Modelo_id] [int] IDENTITY(1,1) NOT NULL,
	[Modelo_Nombre] [varchar](50) NOT NULL,
	[Modelo_Color] [varchar](15) NULL,
	[Marca_ID] [int] NOT NULL,
	[Modelo_Descripcion] [varchar](100) NOT NULL,
	[Registro_Estado] [bit] NOT NULL,
	[Registro_Usuario] [varchar](50) NULL,
	[Registro_Fecha] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Modelo_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Productos_Trans]    Script Date: 5/31/2021 4:49:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productos_Trans](
	[Producto_id] [int] IDENTITY(1,1) NOT NULL,
	[Producto_Codigo] [varchar](10) NOT NULL,
	[Producto_Nombre] [varchar](100) NOT NULL,
	[Producto_Descripcion] [varchar](200) NOT NULL,
	[Producto_Costo] [decimal](18, 2) NOT NULL,
	[Producto_Precio] [decimal](18, 2) NOT NULL,
	[Producto_Cantidad] [int] NOT NULL,
	[Color_ID] [int] NOT NULL,
	[Categoria_ID] [int] NOT NULL,
	[Fecha_Ingreso] [datetime] NOT NULL,
	[Fecha_Caducidad] [datetime] NOT NULL,
	[Proveedor_Codigo_ID] [int] NOT NULL,
	[Registro_Estado] [bit] NOT NULL,
	[Registro_Usuario] [varchar](50) NOT NULL,
	[Registro_Fecha] [datetime] NOT NULL,
 CONSTRAINT [PK__Producto__9F1818A5B106C31D] PRIMARY KEY CLUSTERED 
(
	[Producto_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo_Comprobantes_Trans]    Script Date: 5/31/2021 4:49:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo_Comprobantes_Trans](
	[Tipo_Comprobante_id] [int] IDENTITY(1,1) NOT NULL,
	[Comprobante_ID] [tinyint] NOT NULL,
	[Tipo_Comprobante_Serie] [char](3) NOT NULL,
	[Tipo_Comprobante_Numero] [varchar](3) NOT NULL,
	[Tipo_Comprobante_Secuencia] [varchar](11) NOT NULL,
	[Empresa_ID] [int] NOT NULL,
	[Registro_Estado] [bit] NOT NULL,
	[Registro_Usuario] [varchar](50) NOT NULL,
	[Registro_Fecha] [datetime] NOT NULL,
 CONSTRAINT [PK__Tipo_Com__F6EB6F9A2FB6FB47] PRIMARY KEY CLUSTERED 
(
	[Tipo_Comprobante_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo_Transaccion_Cata]    Script Date: 5/31/2021 4:49:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo_Transaccion_Cata](
	[Transaccion_id] [tinyint] NOT NULL,
	[Transaccion_Nombre] [varchar](30) NOT NULL,
	[Transaccion_Descripcion] [varchar](100) NOT NULL,
	[Registro_Estado] [bit] NOT NULL,
	[Registro_Usuario] [varchar](50) NULL,
	[Registro_Fecha] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Transaccion_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo_Vehiculo_Cata]    Script Date: 5/31/2021 4:49:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo_Vehiculo_Cata](
	[TipoVehiculo_id] [tinyint] NOT NULL,
	[TipoVehiculo_Nombre] [varchar](30) NOT NULL,
	[TipoVehiculo_Descripcion] [varchar](100) NOT NULL,
	[Registro_Estado] [bit] NOT NULL,
	[Registro_Usuario] [varchar](50) NULL,
	[Registro_Fecha] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[TipoVehiculo_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Clientes_Trans] ON 

INSERT [dbo].[Clientes_Trans] ([Cliente_id], [Cliente_Nombre], [Cliente_Apellido], [Cliente_Direccion], [Cliente_Email], [Cliente_Telefono], [Cliente_Celular], [Cliente_RNC], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (1, N'Juan', N'Sanchez', N'Calle 13 #44 ensanche la Fe', N'sanchez44@gmail.com', N'8095317845', N'8093214567', N'43543553', 1, N'SSRL\h.salas', CAST(N'2021-01-27T19:07:48.630' AS DateTime))
INSERT [dbo].[Clientes_Trans] ([Cliente_id], [Cliente_Nombre], [Cliente_Apellido], [Cliente_Direccion], [Cliente_Email], [Cliente_Telefono], [Cliente_Celular], [Cliente_RNC], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (5, N'Rafael', N'peralta', N'avenida 27  de febrero #232 el millon ', N'fperalta@hotmail.com', N'7315558868', N'7724242725', N'53442142', 1, N'SSRL\h.salas', CAST(N'2021-01-27T19:11:28.343' AS DateTime))
INSERT [dbo].[Clientes_Trans] ([Cliente_id], [Cliente_Nombre], [Cliente_Apellido], [Cliente_Direccion], [Cliente_Email], [Cliente_Telefono], [Cliente_Celular], [Cliente_RNC], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (6, N'Juliana ', N'castillo', N'isabela aguiar #55, herrera', N'jcastillo@gmail.com', N'4543544345', N'4534534553', N'74244242', 1, N'SSRL\h.salas', CAST(N'2021-01-27T19:12:47.467' AS DateTime))
INSERT [dbo].[Clientes_Trans] ([Cliente_id], [Cliente_Nombre], [Cliente_Apellido], [Cliente_Direccion], [Cliente_Email], [Cliente_Telefono], [Cliente_Celular], [Cliente_RNC], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (7, N'Evaluna', N'Montaner', N'calle delirio #78, Almarosa', N'evaluna@hotmail.com', N'4242427754', N'4557727757', N'17527277', 1, N'SSRL\h.salas', CAST(N'2021-01-27T19:14:06.773' AS DateTime))
INSERT [dbo].[Clientes_Trans] ([Cliente_id], [Cliente_Nombre], [Cliente_Apellido], [Cliente_Direccion], [Cliente_Email], [Cliente_Telefono], [Cliente_Celular], [Cliente_RNC], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (8, N'Sebastian ', N'Yatra', N'calle colombia #12, san isidro', N'yatra@yahoo.com', N' 6576787987', N'455675676', N'12345678', 1, N'SSRL\h.salas', CAST(N'2021-01-27T19:17:09.487' AS DateTime))
SET IDENTITY_INSERT [dbo].[Clientes_Trans] OFF
SET IDENTITY_INSERT [dbo].[Color_Cata] ON 

INSERT [dbo].[Color_Cata] ([Color_id], [Color_Nombre], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (1, N'Azul', 1, N'SSRL\h.salas', CAST(N'2021-03-04T00:23:51.970' AS DateTime))
INSERT [dbo].[Color_Cata] ([Color_id], [Color_Nombre], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (2, N'Rojo', 1, N'SSRL\h.salas', CAST(N'2021-03-04T00:24:01.623' AS DateTime))
INSERT [dbo].[Color_Cata] ([Color_id], [Color_Nombre], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (3, N'Negro', 1, N'SSRL\h.salas', CAST(N'2021-03-04T00:24:05.603' AS DateTime))
INSERT [dbo].[Color_Cata] ([Color_id], [Color_Nombre], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (4, N'Verde', 1, N'SSRL\h.salas', CAST(N'2021-03-04T00:24:09.193' AS DateTime))
INSERT [dbo].[Color_Cata] ([Color_id], [Color_Nombre], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (5, N'Naranja', 1, N'SSRL\h.salas', CAST(N'2021-03-04T00:24:17.370' AS DateTime))
INSERT [dbo].[Color_Cata] ([Color_id], [Color_Nombre], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (6, N'Bronce', 1, N'SSRL\h.salas', CAST(N'2021-03-04T00:24:28.617' AS DateTime))
INSERT [dbo].[Color_Cata] ([Color_id], [Color_Nombre], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (7, N'Morado', 1, N'SSRL\h.salas', CAST(N'2021-03-04T00:24:38.580' AS DateTime))
INSERT [dbo].[Color_Cata] ([Color_id], [Color_Nombre], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (8, N'Blanco', 1, N'SSRL\h.salas', CAST(N'2021-03-04T00:24:41.570' AS DateTime))
INSERT [dbo].[Color_Cata] ([Color_id], [Color_Nombre], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (9, N'Amarillo', 1, N'SSRL\h.salas', CAST(N'2021-03-04T00:24:50.873' AS DateTime))
SET IDENTITY_INSERT [dbo].[Color_Cata] OFF
INSERT [dbo].[Comprobantes_Cata] ([Comprobante_id], [Comprobante_Nombre], [Comprobante_Descripcion], [Registro_Estado], [Regidtro_Usuario], [Registro_Fecha]) VALUES (1, N'Factura de Crédito Fiscal', N'registran las transacciones comerciales de compra y venta de bienes y/o los que prestan algún servicio. Permiten al comprador o usuario que lo solicite sustentar gastos y costos del ISR o créditos del ITBIS.', 1, N'SSRL\h.salas', CAST(N'2020-12-16T17:00:47.407' AS DateTime))
INSERT [dbo].[Comprobantes_Cata] ([Comprobante_id], [Comprobante_Nombre], [Comprobante_Descripcion], [Registro_Estado], [Regidtro_Usuario], [Registro_Fecha]) VALUES (2, N'Factura de Consumo ', N'acreditan la transferencia de bienes, la entrega en uso o la prestación de servicios a consumidores finales. No poseen efectos tributarios, es decir, que no podrán ser utilizados para créditos en el ITBIS y/o reducir gastos y costos del ISR', 1, N'SSRL\h.salas', CAST(N'2020-12-16T17:01:51.863' AS DateTime))
INSERT [dbo].[Comprobantes_Cata] ([Comprobante_id], [Comprobante_Nombre], [Comprobante_Descripcion], [Registro_Estado], [Regidtro_Usuario], [Registro_Fecha]) VALUES (3, N'Notas de Débito', N'documentos que emiten los vendedores de bienes y/o los que prestan servicios para recuperar costos y gastos, como: intereses por mora, fletes u otros, después de emitido el comprobante fiscal. Sólo podrán ser emitidas al mismo adquiriente o usuario para modificar comprobantes emitidos con anterioridad.
', 1, N'SSRL\h.salas', CAST(N'2020-12-16T17:03:02.600' AS DateTime))
INSERT [dbo].[Comprobantes_Cata] ([Comprobante_id], [Comprobante_Nombre], [Comprobante_Descripcion], [Registro_Estado], [Regidtro_Usuario], [Registro_Fecha]) VALUES (4, N'Notas de Crédito ', N'documentos que emiten los vendedores de bienes y/ o prestadores de servicios por modificaciones posteriores en las condiciones de venta originalmente pactadas, es decir, para anular operaciones, efectuar devoluciones, conceder descuentos y bonificaciones, corregir errores o casos similares.', 1, N'SSRL\h.salas', CAST(N'2020-12-16T17:03:27.433' AS DateTime))
INSERT [dbo].[Comprobantes_Cata] ([Comprobante_id], [Comprobante_Nombre], [Comprobante_Descripcion], [Registro_Estado], [Regidtro_Usuario], [Registro_Fecha]) VALUES (5, N'Comprobante de Compras ', N'documentos emitido por las personas físicas o jurídicas cuando adquieran bienes o servicios de personas no registradas como contribuyentes o que sean autorizados mediante norma general.
', 1, N'SSRL\h.salas', CAST(N'2020-12-16T17:03:46.210' AS DateTime))
INSERT [dbo].[Comprobantes_Cata] ([Comprobante_id], [Comprobante_Nombre], [Comprobante_Descripcion], [Registro_Estado], [Regidtro_Usuario], [Registro_Fecha]) VALUES (6, N'Registro Único de Ingresos', N'documento utilizado para registrar un resumen de las transacciones diarias realizadas por las personas físicas o jurídicas a consumidores finales, concentradas fundamentalmente en productos o servicios exentos del ITBIS.', 1, N'SSRL\h.salas', CAST(N'2020-12-16T17:04:03.207' AS DateTime))
INSERT [dbo].[Comprobantes_Cata] ([Comprobante_id], [Comprobante_Nombre], [Comprobante_Descripcion], [Registro_Estado], [Regidtro_Usuario], [Registro_Fecha]) VALUES (7, N'Comprobante para Gastos Menores', N'son aquellos comprobantes emitidos por las personas físicas o jurídicas para sustentar pagos realizados por su personal, sean estos efectuados en territorio dominicano o en el extranjero y en ocasión a las actividades relacionadas al trabajo, tales como: consumibles, pasajes, transporte público, tarifas de estacionamiento y Peajes.', 1, N'SSRL\h.salas', CAST(N'2020-12-16T17:04:39.427' AS DateTime))
INSERT [dbo].[Comprobantes_Cata] ([Comprobante_id], [Comprobante_Nombre], [Comprobante_Descripcion], [Registro_Estado], [Regidtro_Usuario], [Registro_Fecha]) VALUES (8, N'Comprobante de Regímenes Especiales ', N'son utilizados para facturar las ventas de bienes o prestación de servicios exentos del ITBIS o ISC a personas físicas o jurídicas acogidas a regímenes especiales de tributación, mediante leyes especiales, contratos o convenios debidamente ratificados por el Congreso Nacional. 
', 1, N'SSRL\h.salas', CAST(N'2020-12-16T17:04:58.483' AS DateTime))
INSERT [dbo].[Comprobantes_Cata] ([Comprobante_id], [Comprobante_Nombre], [Comprobante_Descripcion], [Registro_Estado], [Regidtro_Usuario], [Registro_Fecha]) VALUES (9, N'Comprobante Gubernamental ', N'son utilizados para facturar la venta de bienes y la prestación de servicios al Gobierno Central, Instituciones Descentralizadas y Autónomas, Instituciones de Seguridad Social y cualquier entidad gubernamental que no realice una actividad comercial.', 1, N'SSRL\h.salas', CAST(N'2020-12-16T17:05:29.110' AS DateTime))
INSERT [dbo].[Comprobantes_Cata] ([Comprobante_id], [Comprobante_Nombre], [Comprobante_Descripcion], [Registro_Estado], [Regidtro_Usuario], [Registro_Fecha]) VALUES (10, N'Comprobante para exportaciones ', N'son utilizados por los exportadores nacionales; zonas francas comerciales e industriales para reportar las ventas de bienes fuera del territorio nacional. ?
', 1, N'SSRL\h.salas', CAST(N'2020-12-16T17:05:50.483' AS DateTime))
INSERT [dbo].[Comprobantes_Cata] ([Comprobante_id], [Comprobante_Nombre], [Comprobante_Descripcion], [Registro_Estado], [Regidtro_Usuario], [Registro_Fecha]) VALUES (11, N'Comprobante para Pagos al Exterior', N'son emitidos por concepto de pago de rentas gravadas de fuente dominicana a personas físicas o jurídicas no residentes fiscales. Al emitir este documento se debe realizar la retención total del Impuesto Sobre la Renta, de conformidad a los artículos 297 y 305 del Código Tributario.
', 1, N'SSRL\h.salas', CAST(N'2020-12-16T17:06:11.103' AS DateTime))
INSERT [dbo].[Comprobantes_Cata] ([Comprobante_id], [Comprobante_Nombre], [Comprobante_Descripcion], [Registro_Estado], [Regidtro_Usuario], [Registro_Fecha]) VALUES (12, N'Comprobante Fiscal Electrónico', N'es un documento electrónico firmado digitalmente, que acredita la transferencia de bienes, entrega en uso o la prestación de servicios, debiendo cumplir siempre con los requisitos establecidos en la normativa dispuesta para estos fines.????????', 1, N'SSRL\h.salas', CAST(N'2020-12-16T17:06:37.207' AS DateTime))
SET IDENTITY_INSERT [dbo].[Empleados_Trans] ON 

INSERT [dbo].[Empleados_Trans] ([Empleado_id], [Empleado_Nombre], [Empleado_Apellido], [Empleado_Direccion], [Empleado_Telefono], [Empleado_Celular], [Empresa_ID], [Empleado_Edad], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (1, N'Jose', N'Gonzales', N'Calle privada #12, el millon ', N'8097456227', N'8296423489', 1, 23, 1, N'SSRL\h.salas', CAST(N'2020-10-10T20:11:06.603' AS DateTime))
SET IDENTITY_INSERT [dbo].[Empleados_Trans] OFF
SET IDENTITY_INSERT [dbo].[Empresas_Trans] ON 

INSERT [dbo].[Empresas_Trans] ([Empresa_id], [Empresa_User], [Empresa_Password], [Empresa_Nombre], [Empresa_Email], [Empresa_Direccion], [Empresa_Telefono], [Empresa_Logo], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (1, N'yonnich11', N'1234566789', N'Yonnich Tecnology', N'yonnich@gmail.com', N'Calle Repaldo 14 #18,las Caobas', N'8092379524', N'//prueba/yonnich.png', 1, N'SSRL\h.salas', CAST(N'2020-10-10T20:10:55.920' AS DateTime))
SET IDENTITY_INSERT [dbo].[Empresas_Trans] OFF
SET IDENTITY_INSERT [dbo].[Marcas_Cata] ON 

INSERT [dbo].[Marcas_Cata] ([Marca_id], [Marca_Nombre], [Marca_Descripcion], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (1, N'Abarth', N'Abarth es una marca perteneciente al Grupo FCA. Aunque tiene un estatus de marca, podríamos considerarla el preparador oficial de FIAT. Aunque Abarth está completamente integrada en la órbita de FIAT desde el año 1971, en 2007 es cuando fue refundada como fabricante con estatus propio e independiente dentro del Grupo FCA.', 1, N'SSRL\h.salas', CAST(N'2020-09-23T01:23:11.390' AS DateTime))
INSERT [dbo].[Marcas_Cata] ([Marca_id], [Marca_Nombre], [Marca_Descripcion], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (2, N'Alfa Romero', N'Alfa Romeo es un fabricante italiano de automóviles deportivos y de alta gama. La marca, fue fundada en 1910 en Milán, ciudad a la que ha estado ligada desde su creación. El nombre está compuesto por las siglas A.L.F.A (Anonima Lombarda Fabbrica Automobili) y el apellido Romeo, procedente de Nicola Romeo', 1, N'SSRL\h.salas', CAST(N'2020-09-23T01:26:11.723' AS DateTime))
INSERT [dbo].[Marcas_Cata] ([Marca_id], [Marca_Nombre], [Marca_Descripcion], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (3, N'Alpine', N'Segunda Guerra Mundial nacía Alpine, un pequeño preparador de deportivos de carreras afincado en un taller de Dieppe, en Francia', 1, N'SSRL\h.salas', CAST(N'2020-09-23T01:30:38.073' AS DateTime))
INSERT [dbo].[Marcas_Cata] ([Marca_id], [Marca_Nombre], [Marca_Descripcion], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (4, N'Aston Martin', N'Aston Martin es una fabricante inglés de automóviles deportivos, fundado en el año 1913 por Robert Bamford y Lionel Martin, bajo la denominación original de Bamford & Martin Ltd', 1, N'SSRL\h.salas', CAST(N'2020-09-23T01:31:52.970' AS DateTime))
INSERT [dbo].[Marcas_Cata] ([Marca_id], [Marca_Nombre], [Marca_Descripcion], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (5, N'Audi', N'Audi es una marca de coches premium, especializada en automóviles de lujo. Pertenece al Grupo Volkswagen, uno de los grupos automovilísticos más grandes del mundo, y su sede se encuentra en la ciudad de Ingolstadt, al sur de Alemania', 1, N'SSRL\h.salas', CAST(N'2020-09-23T01:33:18.177' AS DateTime))
INSERT [dbo].[Marcas_Cata] ([Marca_id], [Marca_Nombre], [Marca_Descripcion], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (6, N'Bentley', N'Bentley es un fabricante de vehículos de lujo fundado en Gran Bretaña, el 18 de enero de 1919 por Walter Owen Bentley, más conocido por sus siglas como “W. O.”', 1, N'SSRL\h.salas', CAST(N'2020-09-23T01:34:40.913' AS DateTime))
INSERT [dbo].[Marcas_Cata] ([Marca_id], [Marca_Nombre], [Marca_Descripcion], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (7, N'BMW', N'BMW es un fabricante de coches y motos premium de origen y capital alemán. Sus siglas significan "Bayerische Motoren Werke" (Fábrica Bávara de Motores) y su sede se encuentra en la ciudad alemana de Múnich.', 1, N'SSRL\h.salas', CAST(N'2020-09-23T01:35:13.913' AS DateTime))
INSERT [dbo].[Marcas_Cata] ([Marca_id], [Marca_Nombre], [Marca_Descripcion], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (8, N'Bugatti', N'Bugatti es una firma de hiperdeportivos de lujo fundada por Ettore Bugatti en 1909 en Molsheim, una región de Alsacia que inicialmente pertenecía a Alemania y, tras el tratado de Versalles, fue transferida a Francia', 1, N'SSRL\h.salas', CAST(N'2020-09-23T01:36:01.077' AS DateTime))
INSERT [dbo].[Marcas_Cata] ([Marca_id], [Marca_Nombre], [Marca_Descripcion], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (9, N'Citroen', N'Citroën es un constructor automovilístico de origen francés fundado en el año 1919 por André Citroën. Se trata de uno de los fabricantes históricos en Europa por tener en su trayectoria el desarrollo de modelos y tecnologías que en su momento supusieron un importante hito en la industria del automóvil', 1, N'SSRL\h.salas', CAST(N'2020-09-23T01:36:35.060' AS DateTime))
INSERT [dbo].[Marcas_Cata] ([Marca_id], [Marca_Nombre], [Marca_Descripcion], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (10, N'Cupra', N'CUPRA es una submarca española de SEAT, creada en 2018 para ofrecer los coches más exclusivos, de altas prestaciones y con posibilidades de equipamiento y personalización diferenciados con respecto a la gama SEAT.', 1, N'SSRL\h.salas', CAST(N'2020-09-23T01:37:53.247' AS DateTime))
INSERT [dbo].[Marcas_Cata] ([Marca_id], [Marca_Nombre], [Marca_Descripcion], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (11, N'Dacia', N'Dacia es un fabricante rumano de automóviles de bajo coste actualmente propiedad del grupo Renault', 1, N'SSRL\h.salas', CAST(N'2020-09-23T01:38:47.027' AS DateTime))
INSERT [dbo].[Marcas_Cata] ([Marca_id], [Marca_Nombre], [Marca_Descripcion], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (12, N'DFSK', N'DFSK es una marca de coches low-cost, de origen chino, fundada en 2003. Desde entonces su crecimiento ha sido exponencial, convirtiéndose actualmente en una de las referencias entre los fabricantes chinos de automóviles', 1, N'SSRL\h.salas', CAST(N'2020-09-23T01:39:07.387' AS DateTime))
INSERT [dbo].[Marcas_Cata] ([Marca_id], [Marca_Nombre], [Marca_Descripcion], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (13, N'DS', N'DS Automobiles es la marca premium del Grupo PSA, un grupo francés formado también por otras marcas como Citroën, Peugeot y Opel. Existe desde 2009, cuando fue presentada como la división de lujo de Citroën', 1, N'SSRL\h.salas', CAST(N'2020-09-23T01:40:22.847' AS DateTime))
INSERT [dbo].[Marcas_Cata] ([Marca_id], [Marca_Nombre], [Marca_Descripcion], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (14, N'Ferrari', N'Ferrari es una marca italiana de coches deportivos y superdeportivos, con sede en Maranello y fundada por Enzo Ferrari.', 1, N'SSRL\h.salas', CAST(N'2020-09-23T01:41:22.250' AS DateTime))
INSERT [dbo].[Marcas_Cata] ([Marca_id], [Marca_Nombre], [Marca_Descripcion], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (15, N'Fiat', N'Fiat es una marca de coches italiana, es la mayor marca de coches de Italia, con sede en Turín y una de las marcas de coches más relevantes', 1, N'SSRL\h.salas', CAST(N'2020-09-23T01:41:50.483' AS DateTime))
INSERT [dbo].[Marcas_Cata] ([Marca_id], [Marca_Nombre], [Marca_Descripcion], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (16, N'Ford', N'Ford es un fabricante estadounidense de automóviles. Sería muy difícil entender la historia del automóvil tal y como la conocemos ahora sin el fabricante de Detroit y su fundador, Henry Ford.', 1, N'SSRL\h.salas', CAST(N'2020-09-23T01:42:30.927' AS DateTime))
INSERT [dbo].[Marcas_Cata] ([Marca_id], [Marca_Nombre], [Marca_Descripcion], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (17, N'Hispano Suiza', N'Hispano Suiza es una marca española de automóviles de lujo y competición, que fue fundada en Barcelona en 1904. ', 1, N'SSRL\h.salas', CAST(N'2020-09-23T01:43:04.727' AS DateTime))
INSERT [dbo].[Marcas_Cata] ([Marca_id], [Marca_Nombre], [Marca_Descripcion], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (18, N'Honda', N'Honda es un fabricante japonés de automóviles, motocicletas y aviones. Fue fundada tras la Segunda Guerra Mundial, en 1946, por Soichiro Honda - de ahí su nombre - que consolidaría al fabricante como una de las piezas claves del sector de la automoción en Japón', 1, N'SSRL\h.salas', CAST(N'2020-09-23T01:43:40.517' AS DateTime))
INSERT [dbo].[Marcas_Cata] ([Marca_id], [Marca_Nombre], [Marca_Descripcion], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (19, N'Hyundai', N'Hyundai es un fabricante surcoreano de automóviles, fundado en 1967. Es un fabricante generalista, que forma parte del grupo automovilístico Hyundai Motor Group, junto con Kia y Genesis.', 1, N'SSRL\h.salas', CAST(N'2020-09-23T01:44:10.267' AS DateTime))
INSERT [dbo].[Marcas_Cata] ([Marca_id], [Marca_Nombre], [Marca_Descripcion], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (20, N'Jaguar', N'Jaguar es una marca premium británica, que forma parte del Grupo Jaguar-Land Rover.', 1, N'SSRL\h.salas', CAST(N'2020-09-23T01:44:58.097' AS DateTime))
INSERT [dbo].[Marcas_Cata] ([Marca_id], [Marca_Nombre], [Marca_Descripcion], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (21, N'Jeep', N'Jeep es una marca de automóviles americana con sede central en Ohio, Estados Unidos. Con un enfoque a medio camino entre premium y generalista, en su gama se pueden encontrar todo tipo de modelos, siempre con una clara vertiente campera.', 1, N'SSRL\h.salas', CAST(N'2020-09-23T01:45:31.043' AS DateTime))
INSERT [dbo].[Marcas_Cata] ([Marca_id], [Marca_Nombre], [Marca_Descripcion], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (22, N'KIA', N'KIA Motors es una empresa automotriz generalista surcoreana, con base en Yangjae-dong, Seúl, Corea del Sur. KIA es ya una de las marcas más importantes de Corea del Sur.KIA Motors es una empresa automotriz generalista surcoreana, con base en Yangjae-dong, Seúl, Corea del Sur. KIA es ya una de las marcas más importantes de Corea del Sur.', 1, N'SSRL\h.salas', CAST(N'2020-09-23T01:45:58.210' AS DateTime))
INSERT [dbo].[Marcas_Cata] ([Marca_id], [Marca_Nombre], [Marca_Descripcion], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (24, N'Koenigsegg', N'Koenigsegg es un fabricante de superdeportivos con sede en Ängelholm, Suecia', 1, N'SSRL\h.salas', CAST(N'2020-09-23T01:46:24.720' AS DateTime))
INSERT [dbo].[Marcas_Cata] ([Marca_id], [Marca_Nombre], [Marca_Descripcion], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (25, N'Lamborghini', N'Hay quien atribuye a Sinatra la frase de “compras un Ferrari cuando quieres ser alguien, compras un Lamborghini cuando ya eres alguien”. Sea como fuere, Automobili Lamborghini S.p.A.', 1, N'SSRL\h.salas', CAST(N'2020-09-23T01:46:53.817' AS DateTime))
INSERT [dbo].[Marcas_Cata] ([Marca_id], [Marca_Nombre], [Marca_Descripcion], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (26, N'Land Rover', N'Land Rover es un fabricante británico de automóviles premium todoterreno, con sede en la localidad inglesa de Coventry, West Midlands. La marca siempre ha sido reconocida por sus vehículos con grandes capacidades de avance fuera del asfalto. Desde 2008,', 1, N'SSRL\h.salas', CAST(N'2020-09-23T01:47:23.980' AS DateTime))
INSERT [dbo].[Marcas_Cata] ([Marca_id], [Marca_Nombre], [Marca_Descripcion], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (27, N'Lexus', N'Lexus es la marca premium, del fabricante japonés Toyota. Su estrategia comercial es similar a la de Infiniti para Nissan. ', 1, N'SSRL\h.salas', CAST(N'2020-09-23T01:48:21.877' AS DateTime))
INSERT [dbo].[Marcas_Cata] ([Marca_id], [Marca_Nombre], [Marca_Descripcion], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (28, N'Lotus', N'Lotus es un pequeño fabricante británico con sede en Hethel (Norfolk, Inglaterra) fundado en 1952 por Colin Chapman.', 1, N'SSRL\h.salas', CAST(N'2020-09-23T01:48:53.900' AS DateTime))
INSERT [dbo].[Marcas_Cata] ([Marca_id], [Marca_Nombre], [Marca_Descripcion], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (29, N'Maserati', N'Maserati es, sin duda, uno de los mejores referentes del coche deportivo y de lujo italiano. Esta marca centenaria nacía en Bolonia hace más de un siglo y, desde entonces, se ha caracterizado por fabricar algunos de los mejores deportivos y grandes turismos que se hayan fabricado en Italia.', 1, N'SSRL\h.salas', CAST(N'2020-09-23T01:49:32.347' AS DateTime))
INSERT [dbo].[Marcas_Cata] ([Marca_id], [Marca_Nombre], [Marca_Descripcion], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (30, N'Mazda', N'Mazda es a día de hoy uno de los fabricantes más respetados y conocidos de Japón. Una marca que nacía en 1920 en Hiroshima, antes de la Segunda Guerra Mundial, y que a lo largo de su historia ha vivido diferentes etapas que de alguna definieron su filosofía, como el hecho de haber pertenecido a Ford hasta 2010', 1, N'SSRL\h.salas', CAST(N'2020-09-23T01:50:14.717' AS DateTime))
INSERT [dbo].[Marcas_Cata] ([Marca_id], [Marca_Nombre], [Marca_Descripcion], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (31, N'McLaren', N'McLaren Automotive es un fabricante británico de superdeportivos, con sede en Woking, Gran Bretaña. Con una larga tradición en competición, actualmente comercializa una gama de deportivos premium muy apreciada entre los fanáticos de las altas prestaciones.', 1, N'SSRL\h.salas', CAST(N'2020-09-23T01:50:52.243' AS DateTime))
INSERT [dbo].[Marcas_Cata] ([Marca_id], [Marca_Nombre], [Marca_Descripcion], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (32, N'Mercedes-Benz', N'La marca de coches Mercedes-Benz es una de las firmas automovilísticas más importantes del mundo, ya que fue Karl Benz quien desarrolló el primer automóvil del mundo en 1885', 1, N'SSRL\h.salas', CAST(N'2020-09-23T01:51:21.670' AS DateTime))
INSERT [dbo].[Marcas_Cata] ([Marca_id], [Marca_Nombre], [Marca_Descripcion], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (33, N'MINI', N'La marca MINI es, por méritos propios, una de las firmas más carismáticas de cuantas invaden nuestras calles y carreteras. Lo es por una historia que nos remonta a un primer Mini nacido a finales de los años 50 y convertido en icono del pop británico, en una seña de identidad del país y en todo un alarde del diseño en un tamaño de lo más contenido', 1, N'SSRL\h.salas', CAST(N'2020-09-23T01:51:46.657' AS DateTime))
INSERT [dbo].[Marcas_Cata] ([Marca_id], [Marca_Nombre], [Marca_Descripcion], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (34, N'Mitsubishi', N'Mitsubishi es una marca de coches muy conocida en Europa, principalmente por sus todoterreno y SUV, y por haber sido el fabricante de uno de los deportivos más peculiares del mercado, el famoso Mitsubishi Lancer Evolution, conocido simplemente como EVO', 1, N'SSRL\h.salas', CAST(N'2020-09-23T01:52:17.433' AS DateTime))
INSERT [dbo].[Marcas_Cata] ([Marca_id], [Marca_Nombre], [Marca_Descripcion], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (35, N'Nissan', N'Nissan es una marca japonesa generalista, conocida durante décadas como Datsun en algunos mercados mundial. El núcleo duro del negocio de Nissan son actualmente los vehículos crossover, pero es una marca también tradicionalmente especializada en todoterrenos y deportivos', 1, N'SSRL\h.salas', CAST(N'2020-09-23T01:52:54.030' AS DateTime))
INSERT [dbo].[Marcas_Cata] ([Marca_id], [Marca_Nombre], [Marca_Descripcion], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (36, N'Opel', N'Opel es un fabricante de origen alemán nacido en Rüsselsheim. Fue fundado en 1862 por Adam Opel y empezó siendo fabricante de máquinas de coser. Desde 2017, es propiedad del Grupo automovilístico francés PSA.', 1, N'SSRL\h.salas', CAST(N'2020-09-23T01:53:23.920' AS DateTime))
INSERT [dbo].[Marcas_Cata] ([Marca_id], [Marca_Nombre], [Marca_Descripcion], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (37, N'Pagani', N'Pagani es una fabricante italiano de coches superdeportivos cuya sede y única fábrica está afincada en San Cesario sul Panaro, una localidad próxima a Módena, Italia.L', 1, N'SSRL\h.salas', CAST(N'2020-09-23T01:53:58.153' AS DateTime))
INSERT [dbo].[Marcas_Cata] ([Marca_id], [Marca_Nombre], [Marca_Descripcion], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (38, N'Peugeot', N'Peugeot es un fabricante de automóviles originario de Francia, con más de 200 años de historia. Fundada el 26 de abril de 1810, actualmente es una de las marcas francesas más reconocida a nivel internacional, con una amplia presencia mundial.', 1, N'SSRL\h.salas', CAST(N'2020-09-23T01:54:26.530' AS DateTime))
INSERT [dbo].[Marcas_Cata] ([Marca_id], [Marca_Nombre], [Marca_Descripcion], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (39, N'Polestar', N'Polestar es una marca de automóviles de altas prestaciones con algún tipo de electrificación (híbridos y eléctricos), propiedad de Volvo, con sede en la ciudad sueca de Gotemburgo', 1, N'SSRL\h.salas', CAST(N'2020-09-23T01:54:52.673' AS DateTime))
INSERT [dbo].[Marcas_Cata] ([Marca_id], [Marca_Nombre], [Marca_Descripcion], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (40, N'Porsche', N'Porsche es un fabricante alemán de vehículos de corte deportivo, quizás uno de los más conocidos del mundo y, con diferencia, el que más vehículos vende cada año.', 1, N'SSRL\h.salas', CAST(N'2020-09-23T01:55:26.757' AS DateTime))
INSERT [dbo].[Marcas_Cata] ([Marca_id], [Marca_Nombre], [Marca_Descripcion], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (41, N'Renault', N'Desde hace más de un siglo, Renault ha fabricado coches hasta convertirse en uno de los fabricantes de automóviles más importantes en Francia, su país de origen, y en Europa.', 1, N'SSRL\h.salas', CAST(N'2020-09-23T01:55:52.763' AS DateTime))
INSERT [dbo].[Marcas_Cata] ([Marca_id], [Marca_Nombre], [Marca_Descripcion], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (42, N'Rolls-Royce', N'Rolls-Royce es una marca británica de súper lujo, fundada en 1904 y considerada la marca de coches más lujosa del mundo. Desde 1998 pertenece a BMW, siendo su máxima rival la británica Bentley.', 1, N'SSRL\h.salas', CAST(N'2020-09-23T01:56:21.923' AS DateTime))
INSERT [dbo].[Marcas_Cata] ([Marca_id], [Marca_Nombre], [Marca_Descripcion], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (43, N'SEAT', N'SEAT es una marca de coches generalista con origen y base en Martorell (España), fundada en 1950 y propiedad del Grupo Volkswagen desde 1986. Sus siglas originalmente eran el acrónimo de "Sociedad Española de Automóviles de Turismo". ', 1, N'SSRL\h.salas', CAST(N'2020-09-23T01:56:55.637' AS DateTime))
INSERT [dbo].[Marcas_Cata] ([Marca_id], [Marca_Nombre], [Marca_Descripcion], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (44, N'Skoda', N'Skoda es un fabricante perteneciente al Grupo Volkswagen, cuya sede reside en República Checa, y especializado en productos en los que prima una calidad percibida más que aceptable, un enfoque muy práctico, y un precio muy competitivo y económico con respecto a sus rivales', 1, N'SSRL\h.salas', CAST(N'2020-09-23T01:57:36.040' AS DateTime))
INSERT [dbo].[Marcas_Cata] ([Marca_id], [Marca_Nombre], [Marca_Descripcion], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (45, N'Smart', N'Smart Automobile, conocida simplemente como smart, es una marca de origen alemán perteneciente al grupo Daimler AG -propietaria también de Mercedes-Benz-.', 1, N'SSRL\h.salas', CAST(N'2020-09-23T01:58:10.933' AS DateTime))
INSERT [dbo].[Marcas_Cata] ([Marca_id], [Marca_Nombre], [Marca_Descripcion], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (46, N'SsangYong', N'SsangYong es una marca joven, al menos en Europa. Aunque sus inicios en Corea se remontan a los años cincuenta, durante décadas SsangYong se dedicó sobre todo a la construcción de jeeps, camiones y autobuses bajo licencia', 1, N'SSRL\h.salas', CAST(N'2020-09-23T01:58:45.193' AS DateTime))
INSERT [dbo].[Marcas_Cata] ([Marca_id], [Marca_Nombre], [Marca_Descripcion], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (47, N'Subaru', N'Subaru es una de las numerosas compañías automovilísticas nacidas en Japón, con sede en la ciudad de Ota, y una de las más jóvenes. Actualmente comercializa modelos en varios segmentos, desde el crossover compacto XV, hasta el deportivo BRZ pasando por los Forester, Outback o Levorg.', 1, N'SSRL\h.salas', CAST(N'2020-09-23T01:59:21.703' AS DateTime))
INSERT [dbo].[Marcas_Cata] ([Marca_id], [Marca_Nombre], [Marca_Descripcion], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (48, N'Suzuki', N'Suzuki es un fabricante japonés de coches y motocicletas, aunque también fabrica motores fueraborda y quads como complemento a su línea de negocio principal. Es un fabricante generalista, actualmente independiente, al igual que otros fabricantes japoneses como Mazda u Honda', 1, N'SSRL\h.salas', CAST(N'2020-09-23T02:00:05.297' AS DateTime))
INSERT [dbo].[Marcas_Cata] ([Marca_id], [Marca_Nombre], [Marca_Descripcion], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (49, N'Tesla', N'Tesla es una compañía americana de vehículos 100% eléctricos, con enfoque premium, dirigida por Elon Musk (cofundador de otras empresas como PayPal o Space X).', 1, N'SSRL\h.salas', CAST(N'2020-09-23T02:00:30.303' AS DateTime))
INSERT [dbo].[Marcas_Cata] ([Marca_id], [Marca_Nombre], [Marca_Descripcion], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (50, N'Toyota', N'La marca de coches Toyota es una de las empresas más grandes del mundo. Su sede está en la ciudad de Toyota, en la prefectura de Aichi, Japón. Toyota es un fabricante global de coches de carácter generalista y dispone de una segunda marca, Lexus, para sus modelos premium.', 1, N'SSRL\h.salas', CAST(N'2020-09-23T02:00:53.557' AS DateTime))
INSERT [dbo].[Marcas_Cata] ([Marca_id], [Marca_Nombre], [Marca_Descripcion], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (51, N'Volkswagen', N'Volkswagen es un constructor automovilístico alemán fundado en el año 1933 con sede en Wolfsburgo, Alemania. Volkswagen es uno de los fabricantes con mayor volumen de producción y ventas en todo el mundo formando parte del Grupo Volkswagen', 1, N'SSRL\h.salas', CAST(N'2020-09-23T02:01:20.797' AS DateTime))
INSERT [dbo].[Marcas_Cata] ([Marca_id], [Marca_Nombre], [Marca_Descripcion], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (52, N'Volvo', N'Volvo es un fabricante de automóviles sueco fundado en el año 1927 cuya sede está situada en Gotemburgo (Suecia), si bien, la subsidiaria de Volvo, Geely, es de origen chino. El fabricante Volvo es uno de los constructores automovilísticos más representativos del mercado europeo, además de contar con presencia en otros mercados del mundo como EE.UU. y China', 1, N'SSRL\h.salas', CAST(N'2020-09-23T02:01:46.033' AS DateTime))
SET IDENTITY_INSERT [dbo].[Marcas_Cata] OFF
SET IDENTITY_INSERT [dbo].[Modelos_Cata] ON 

INSERT [dbo].[Modelos_Cata] ([Modelo_id], [Modelo_Nombre], [Modelo_Color], [Marca_ID], [Modelo_Descripcion], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (1, N'Abarth 595', N'Amarrillo', 1, N'Modelo de la marca Abart', 1, N'SSRL\h.salas', CAST(N'2020-10-09T02:45:34.123' AS DateTime))
INSERT [dbo].[Modelos_Cata] ([Modelo_id], [Modelo_Nombre], [Modelo_Color], [Marca_ID], [Modelo_Descripcion], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (2, N'Abart 124 Spider', N'Gris', 1, N'Modelo tuning de la marca Abarth', 1, N'SSRL\h.salas', CAST(N'2020-10-09T02:47:01.533' AS DateTime))
INSERT [dbo].[Modelos_Cata] ([Modelo_id], [Modelo_Nombre], [Modelo_Color], [Marca_ID], [Modelo_Descripcion], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (3, N' Mito', N'Gris', 2, N'Modelo de normal de la marca alfa romeo ', 1, N'SSRL\h.salas', CAST(N'2020-10-09T02:50:03.293' AS DateTime))
INSERT [dbo].[Modelos_Cata] ([Modelo_id], [Modelo_Nombre], [Modelo_Color], [Marca_ID], [Modelo_Descripcion], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (4, N'Guilietta', N'Blanco ', 2, N'Modelo haspack de la marca alfa romeo', 1, N'SSRL\h.salas', CAST(N'2020-10-09T02:52:42.410' AS DateTime))
INSERT [dbo].[Modelos_Cata] ([Modelo_id], [Modelo_Nombre], [Modelo_Color], [Marca_ID], [Modelo_Descripcion], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (5, N'Giulia', N'Azul', 2, N'Modelo Normal de la marca alfa romeo ', 1, N'SSRL\h.salas', CAST(N'2020-10-09T02:53:49.070' AS DateTime))
INSERT [dbo].[Modelos_Cata] ([Modelo_id], [Modelo_Nombre], [Modelo_Color], [Marca_ID], [Modelo_Descripcion], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (6, N'4C', N'Rojo', 2, N'Modelo tuning de la marca alfa romero ', 1, N'SSRL\h.salas', CAST(N'2020-10-09T02:55:08.640' AS DateTime))
INSERT [dbo].[Modelos_Cata] ([Modelo_id], [Modelo_Nombre], [Modelo_Color], [Marca_ID], [Modelo_Descripcion], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (7, N'Tonale', N'Rojo', 2, N'Modelo jeep de la marca Alfa romero', 1, N'SSRL\h.salas', CAST(N'2020-10-09T02:55:44.013' AS DateTime))
INSERT [dbo].[Modelos_Cata] ([Modelo_id], [Modelo_Nombre], [Modelo_Color], [Marca_ID], [Modelo_Descripcion], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (8, N'Stelvio', N'Gris ', 2, N'Modelo jeep de la marca alfa romeo ', 1, N'SSRL\h.salas', CAST(N'2020-10-09T02:56:26.143' AS DateTime))
INSERT [dbo].[Modelos_Cata] ([Modelo_id], [Modelo_Nombre], [Modelo_Color], [Marca_ID], [Modelo_Descripcion], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (9, N'A110', N'Azul ', 3, N'Modelo de la marcas Alpine', 1, N'SSRL\h.salas', CAST(N'2020-10-09T02:57:24.613' AS DateTime))
INSERT [dbo].[Modelos_Cata] ([Modelo_id], [Modelo_Nombre], [Modelo_Color], [Marca_ID], [Modelo_Descripcion], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (10, N'Rapide', N'Verde oscuro', 4, N'Modelo tunnig de la marca aston martin ', 1, N'SSRL\h.salas', CAST(N'2020-10-09T02:59:33.270' AS DateTime))
INSERT [dbo].[Modelos_Cata] ([Modelo_id], [Modelo_Nombre], [Modelo_Color], [Marca_ID], [Modelo_Descripcion], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (11, N'Ventage ', N'Gris', 4, N'Modelo tuning de la marca aston martin ', 1, N'SSRL\h.salas', CAST(N'2020-10-09T03:00:03.770' AS DateTime))
INSERT [dbo].[Modelos_Cata] ([Modelo_id], [Modelo_Nombre], [Modelo_Color], [Marca_ID], [Modelo_Descripcion], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (12, N'Vanquist S', N'Azul ', 4, N'Modelo de carrera de la marca aston martin ', 1, N'SSRL\h.salas', CAST(N'2020-10-09T03:02:27.703' AS DateTime))
INSERT [dbo].[Modelos_Cata] ([Modelo_id], [Modelo_Nombre], [Modelo_Color], [Marca_ID], [Modelo_Descripcion], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (13, N'DBS Superleggera', N'Rojo', 4, N'Modelo tuning de la marca aston martin ', 1, N'SSRL\h.salas', CAST(N'2020-10-09T03:04:48.883' AS DateTime))
INSERT [dbo].[Modelos_Cata] ([Modelo_id], [Modelo_Nombre], [Modelo_Color], [Marca_ID], [Modelo_Descripcion], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (14, N'DB11', N'Gris', 4, N'Modelo de carrera de la marca aston martin ', 1, N'SSRL\h.salas', CAST(N'2020-10-09T03:05:48.440' AS DateTime))
INSERT [dbo].[Modelos_Cata] ([Modelo_id], [Modelo_Nombre], [Modelo_Color], [Marca_ID], [Modelo_Descripcion], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (15, N'Valhalla', N'Gris', 4, N'Modelo de carrera de la marca aston martin ', 1, N'SSRL\h.salas', CAST(N'2020-10-09T03:07:38.000' AS DateTime))
INSERT [dbo].[Modelos_Cata] ([Modelo_id], [Modelo_Nombre], [Modelo_Color], [Marca_ID], [Modelo_Descripcion], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (16, N'Valkyrie', N'Naranja', 4, N'Modelo de carrera de la marca asto martin ', 1, N'SSRL\h.salas', CAST(N'2020-10-09T03:08:22.733' AS DateTime))
INSERT [dbo].[Modelos_Cata] ([Modelo_id], [Modelo_Nombre], [Modelo_Color], [Marca_ID], [Modelo_Descripcion], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (17, N'DBX', N'Rojo', 4, N'Modelo jeep de la marca de aston martin ', 1, N'SSRL\h.salas', CAST(N'2020-10-09T03:09:03.010' AS DateTime))
SET IDENTITY_INSERT [dbo].[Modelos_Cata] OFF
SET IDENTITY_INSERT [dbo].[Tipo_Comprobantes_Trans] ON 

INSERT [dbo].[Tipo_Comprobantes_Trans] ([Tipo_Comprobante_id], [Comprobante_ID], [Tipo_Comprobante_Serie], [Tipo_Comprobante_Numero], [Tipo_Comprobante_Secuencia], [Empresa_ID], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (1, 1, N'B  ', N'01', N'0000000000', 1, 1, N'SSRL\h.salas', CAST(N'2020-12-31T00:01:16.220' AS DateTime))
INSERT [dbo].[Tipo_Comprobantes_Trans] ([Tipo_Comprobante_id], [Comprobante_ID], [Tipo_Comprobante_Serie], [Tipo_Comprobante_Numero], [Tipo_Comprobante_Secuencia], [Empresa_ID], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (2, 2, N'B  ', N'02', N'0000000000', 1, 1, N'SSRL\h.salas', CAST(N'2021-01-12T02:31:36.113' AS DateTime))
INSERT [dbo].[Tipo_Comprobantes_Trans] ([Tipo_Comprobante_id], [Comprobante_ID], [Tipo_Comprobante_Serie], [Tipo_Comprobante_Numero], [Tipo_Comprobante_Secuencia], [Empresa_ID], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (3, 3, N'B  ', N'03', N'0000000000', 1, 1, N'SSRL\h.salas', CAST(N'2021-01-12T02:33:55.207' AS DateTime))
INSERT [dbo].[Tipo_Comprobantes_Trans] ([Tipo_Comprobante_id], [Comprobante_ID], [Tipo_Comprobante_Serie], [Tipo_Comprobante_Numero], [Tipo_Comprobante_Secuencia], [Empresa_ID], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (4, 4, N'B  ', N'04', N'0000000000', 1, 1, N'SSRL\h.salas', CAST(N'2021-01-12T02:34:49.193' AS DateTime))
INSERT [dbo].[Tipo_Comprobantes_Trans] ([Tipo_Comprobante_id], [Comprobante_ID], [Tipo_Comprobante_Serie], [Tipo_Comprobante_Numero], [Tipo_Comprobante_Secuencia], [Empresa_ID], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (6, 5, N'B  ', N'11', N'0000000000', 1, 1, N'SSRL\h.salas', CAST(N'2021-01-12T02:36:25.200' AS DateTime))
INSERT [dbo].[Tipo_Comprobantes_Trans] ([Tipo_Comprobante_id], [Comprobante_ID], [Tipo_Comprobante_Serie], [Tipo_Comprobante_Numero], [Tipo_Comprobante_Secuencia], [Empresa_ID], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (7, 6, N'B  ', N'12', N'0000000000', 1, 1, N'SSRL\h.salas', CAST(N'2021-01-12T02:36:59.927' AS DateTime))
INSERT [dbo].[Tipo_Comprobantes_Trans] ([Tipo_Comprobante_id], [Comprobante_ID], [Tipo_Comprobante_Serie], [Tipo_Comprobante_Numero], [Tipo_Comprobante_Secuencia], [Empresa_ID], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (8, 7, N'B  ', N'13', N'0000000000', 1, 1, N'SSRL\h.salas', CAST(N'2021-01-12T02:37:37.793' AS DateTime))
INSERT [dbo].[Tipo_Comprobantes_Trans] ([Tipo_Comprobante_id], [Comprobante_ID], [Tipo_Comprobante_Serie], [Tipo_Comprobante_Numero], [Tipo_Comprobante_Secuencia], [Empresa_ID], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (9, 8, N'B  ', N'14', N'0000000000', 1, 1, N'SSRL\h.salas', CAST(N'2021-01-12T02:38:24.683' AS DateTime))
INSERT [dbo].[Tipo_Comprobantes_Trans] ([Tipo_Comprobante_id], [Comprobante_ID], [Tipo_Comprobante_Serie], [Tipo_Comprobante_Numero], [Tipo_Comprobante_Secuencia], [Empresa_ID], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (10, 9, N'B  ', N'15', N'0000000000', 1, 1, N'SSRL\h.salas', CAST(N'2021-01-12T02:38:52.053' AS DateTime))
INSERT [dbo].[Tipo_Comprobantes_Trans] ([Tipo_Comprobante_id], [Comprobante_ID], [Tipo_Comprobante_Serie], [Tipo_Comprobante_Numero], [Tipo_Comprobante_Secuencia], [Empresa_ID], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (11, 10, N'B  ', N'16', N'0000000000', 1, 1, N'SSRL\h.salas', CAST(N'2021-01-12T02:39:30.137' AS DateTime))
INSERT [dbo].[Tipo_Comprobantes_Trans] ([Tipo_Comprobante_id], [Comprobante_ID], [Tipo_Comprobante_Serie], [Tipo_Comprobante_Numero], [Tipo_Comprobante_Secuencia], [Empresa_ID], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (12, 11, N'B  ', N'17', N'0000000000', 1, 1, N'SSRL\h.salas', CAST(N'2021-01-12T02:39:59.183' AS DateTime))
INSERT [dbo].[Tipo_Comprobantes_Trans] ([Tipo_Comprobante_id], [Comprobante_ID], [Tipo_Comprobante_Serie], [Tipo_Comprobante_Numero], [Tipo_Comprobante_Secuencia], [Empresa_ID], [Registro_Estado], [Registro_Usuario], [Registro_Fecha]) VALUES (13, 12, N'E  ', N'31', N'0000000000', 1, 1, N'SSRL\h.salas', CAST(N'2021-01-12T02:41:34.893' AS DateTime))
SET IDENTITY_INSERT [dbo].[Tipo_Comprobantes_Trans] OFF
ALTER TABLE [dbo].[Categorias_Trans] ADD  DEFAULT ((1)) FOR [Registro_Estado]
GO
ALTER TABLE [dbo].[Categorias_Trans] ADD  DEFAULT (suser_sname()) FOR [Registro_Usuario]
GO
ALTER TABLE [dbo].[Categorias_Trans] ADD  DEFAULT (getdate()) FOR [Registro_Fecha]
GO
ALTER TABLE [dbo].[Clientes_Trans] ADD  DEFAULT ((1)) FOR [Registro_Estado]
GO
ALTER TABLE [dbo].[Clientes_Trans] ADD  DEFAULT (suser_sname()) FOR [Registro_Usuario]
GO
ALTER TABLE [dbo].[Clientes_Trans] ADD  DEFAULT (getdate()) FOR [Registro_Fecha]
GO
ALTER TABLE [dbo].[Color_Cata] ADD  DEFAULT ((1)) FOR [Registro_Estado]
GO
ALTER TABLE [dbo].[Color_Cata] ADD  DEFAULT (suser_sname()) FOR [Registro_Usuario]
GO
ALTER TABLE [dbo].[Color_Cata] ADD  DEFAULT (getdate()) FOR [Registro_Fecha]
GO
ALTER TABLE [dbo].[Comprobantes_Cata] ADD  CONSTRAINT [DF_Comprobantes_Cata_Registro_Estado]  DEFAULT ((1)) FOR [Registro_Estado]
GO
ALTER TABLE [dbo].[Comprobantes_Cata] ADD  CONSTRAINT [DF_Comprobantes_Cata_Regidtro_Usuario]  DEFAULT (suser_sname()) FOR [Regidtro_Usuario]
GO
ALTER TABLE [dbo].[Comprobantes_Cata] ADD  CONSTRAINT [DF_Comprobantes_Cata_Registro_Fecha]  DEFAULT (getdate()) FOR [Registro_Fecha]
GO
ALTER TABLE [dbo].[Empleados_Trans] ADD  DEFAULT ((1)) FOR [Registro_Estado]
GO
ALTER TABLE [dbo].[Empleados_Trans] ADD  DEFAULT (suser_sname()) FOR [Registro_Usuario]
GO
ALTER TABLE [dbo].[Empleados_Trans] ADD  DEFAULT (getdate()) FOR [Registro_Fecha]
GO
ALTER TABLE [dbo].[Empresas_Trans] ADD  CONSTRAINT [DF__Empresas___Regis__29221CFB]  DEFAULT ((1)) FOR [Registro_Estado]
GO
ALTER TABLE [dbo].[Empresas_Trans] ADD  CONSTRAINT [DF__Empresas___Regis__2A164134]  DEFAULT (suser_sname()) FOR [Registro_Usuario]
GO
ALTER TABLE [dbo].[Empresas_Trans] ADD  CONSTRAINT [DF__Empresas___Regis__2B0A656D]  DEFAULT (getdate()) FOR [Registro_Fecha]
GO
ALTER TABLE [dbo].[Facturas_Detalles_Trans] ADD  DEFAULT ((1)) FOR [Registro_Estado]
GO
ALTER TABLE [dbo].[Facturas_Detalles_Trans] ADD  DEFAULT (suser_sname()) FOR [Registro_Usuario]
GO
ALTER TABLE [dbo].[Facturas_Detalles_Trans] ADD  DEFAULT (getdate()) FOR [Registro_Fecha]
GO
ALTER TABLE [dbo].[Facturas_Trans] ADD  DEFAULT ((1)) FOR [Registro_Estado]
GO
ALTER TABLE [dbo].[Facturas_Trans] ADD  DEFAULT (suser_sname()) FOR [Registro_Usuario]
GO
ALTER TABLE [dbo].[Facturas_Trans] ADD  DEFAULT (getdate()) FOR [Registro_Fecha]
GO
ALTER TABLE [dbo].[Inventarios_Trans] ADD  DEFAULT ((1)) FOR [Registro_Estado]
GO
ALTER TABLE [dbo].[Inventarios_Trans] ADD  DEFAULT (suser_sname()) FOR [Registro_Usuario]
GO
ALTER TABLE [dbo].[Inventarios_Trans] ADD  DEFAULT (getdate()) FOR [Registro_Fecha]
GO
ALTER TABLE [dbo].[Marcas_Cata] ADD  CONSTRAINT [DF__Marcas_Ca__Regis__4E88ABD4]  DEFAULT ((1)) FOR [Registro_Estado]
GO
ALTER TABLE [dbo].[Marcas_Cata] ADD  CONSTRAINT [DF__Marcas_Ca__Regis__4F7CD00D]  DEFAULT (suser_sname()) FOR [Registro_Usuario]
GO
ALTER TABLE [dbo].[Marcas_Cata] ADD  CONSTRAINT [DF__Marcas_Ca__Regis__5070F446]  DEFAULT (getdate()) FOR [Registro_Fecha]
GO
ALTER TABLE [dbo].[Modelos_Cata] ADD  DEFAULT ((1)) FOR [Registro_Estado]
GO
ALTER TABLE [dbo].[Modelos_Cata] ADD  DEFAULT (suser_sname()) FOR [Registro_Usuario]
GO
ALTER TABLE [dbo].[Modelos_Cata] ADD  DEFAULT (getdate()) FOR [Registro_Fecha]
GO
ALTER TABLE [dbo].[Productos_Trans] ADD  CONSTRAINT [DF_Productos_Trans_Fecha_Ingreso]  DEFAULT (getdate()) FOR [Fecha_Ingreso]
GO
ALTER TABLE [dbo].[Productos_Trans] ADD  CONSTRAINT [DF__Producto___Regis__49C3F6B7]  DEFAULT ((1)) FOR [Registro_Estado]
GO
ALTER TABLE [dbo].[Productos_Trans] ADD  CONSTRAINT [DF__Producto___Regis__4AB81AF0]  DEFAULT (suser_sname()) FOR [Registro_Usuario]
GO
ALTER TABLE [dbo].[Productos_Trans] ADD  CONSTRAINT [DF__Producto___Regis__4BAC3F29]  DEFAULT (getdate()) FOR [Registro_Fecha]
GO
ALTER TABLE [dbo].[Tipo_Comprobantes_Trans] ADD  CONSTRAINT [DF__Tipo_Comp__Regis__76619304]  DEFAULT ((1)) FOR [Registro_Estado]
GO
ALTER TABLE [dbo].[Tipo_Comprobantes_Trans] ADD  CONSTRAINT [DF__Tipo_Comp__Regis__7755B73D]  DEFAULT (suser_sname()) FOR [Registro_Usuario]
GO
ALTER TABLE [dbo].[Tipo_Comprobantes_Trans] ADD  CONSTRAINT [DF__Tipo_Comp__Regis__7849DB76]  DEFAULT (getdate()) FOR [Registro_Fecha]
GO
ALTER TABLE [dbo].[Tipo_Transaccion_Cata] ADD  DEFAULT ((1)) FOR [Registro_Estado]
GO
ALTER TABLE [dbo].[Tipo_Transaccion_Cata] ADD  DEFAULT (suser_sname()) FOR [Registro_Usuario]
GO
ALTER TABLE [dbo].[Tipo_Transaccion_Cata] ADD  DEFAULT (getdate()) FOR [Registro_Fecha]
GO
ALTER TABLE [dbo].[Tipo_Vehiculo_Cata] ADD  DEFAULT ((1)) FOR [Registro_Estado]
GO
ALTER TABLE [dbo].[Tipo_Vehiculo_Cata] ADD  DEFAULT (suser_sname()) FOR [Registro_Usuario]
GO
ALTER TABLE [dbo].[Tipo_Vehiculo_Cata] ADD  DEFAULT (getdate()) FOR [Registro_Fecha]
GO
ALTER TABLE [dbo].[Empleados_Trans]  WITH CHECK ADD  CONSTRAINT [FK__Empleados__Empre__30C33EC3] FOREIGN KEY([Empresa_ID])
REFERENCES [dbo].[Empresas_Trans] ([Empresa_id])
GO
ALTER TABLE [dbo].[Empleados_Trans] CHECK CONSTRAINT [FK__Empleados__Empre__30C33EC3]
GO
ALTER TABLE [dbo].[Facturas_Trans]  WITH CHECK ADD FOREIGN KEY([Cliente_ID])
REFERENCES [dbo].[Clientes_Trans] ([Cliente_id])
GO
ALTER TABLE [dbo].[Facturas_Trans]  WITH CHECK ADD FOREIGN KEY([Cliente_ID])
REFERENCES [dbo].[Clientes_Trans] ([Cliente_id])
GO
ALTER TABLE [dbo].[Facturas_Trans]  WITH CHECK ADD FOREIGN KEY([Cliente_ID])
REFERENCES [dbo].[Clientes_Trans] ([Cliente_id])
GO
ALTER TABLE [dbo].[Facturas_Trans]  WITH CHECK ADD  CONSTRAINT [FK__Facturas___Marca__66603565] FOREIGN KEY([Marca_ID])
REFERENCES [dbo].[Marcas_Cata] ([Marca_id])
GO
ALTER TABLE [dbo].[Facturas_Trans] CHECK CONSTRAINT [FK__Facturas___Marca__66603565]
GO
ALTER TABLE [dbo].[Facturas_Trans]  WITH CHECK ADD FOREIGN KEY([Modelo_ID])
REFERENCES [dbo].[Modelos_Cata] ([Modelo_id])
GO
ALTER TABLE [dbo].[Facturas_Trans]  WITH CHECK ADD FOREIGN KEY([Modelo_ID])
REFERENCES [dbo].[Modelos_Cata] ([Modelo_id])
GO
ALTER TABLE [dbo].[Facturas_Trans]  WITH CHECK ADD FOREIGN KEY([Modelo_ID])
REFERENCES [dbo].[Modelos_Cata] ([Modelo_id])
GO
ALTER TABLE [dbo].[Facturas_Trans]  WITH CHECK ADD FOREIGN KEY([TipoTransaccion_ID])
REFERENCES [dbo].[Tipo_Transaccion_Cata] ([Transaccion_id])
GO
ALTER TABLE [dbo].[Facturas_Trans]  WITH CHECK ADD FOREIGN KEY([TipoTransaccion_ID])
REFERENCES [dbo].[Tipo_Transaccion_Cata] ([Transaccion_id])
GO
ALTER TABLE [dbo].[Facturas_Trans]  WITH CHECK ADD FOREIGN KEY([TipoTransaccion_ID])
REFERENCES [dbo].[Tipo_Transaccion_Cata] ([Transaccion_id])
GO
ALTER TABLE [dbo].[Facturas_Trans]  WITH CHECK ADD FOREIGN KEY([TipoVehiculo_ID])
REFERENCES [dbo].[Tipo_Vehiculo_Cata] ([TipoVehiculo_id])
GO
ALTER TABLE [dbo].[Facturas_Trans]  WITH CHECK ADD FOREIGN KEY([TipoVehiculo_ID])
REFERENCES [dbo].[Tipo_Vehiculo_Cata] ([TipoVehiculo_id])
GO
ALTER TABLE [dbo].[Facturas_Trans]  WITH CHECK ADD FOREIGN KEY([TipoVehiculo_ID])
REFERENCES [dbo].[Tipo_Vehiculo_Cata] ([TipoVehiculo_id])
GO
ALTER TABLE [dbo].[Modelos_Cata]  WITH CHECK ADD  CONSTRAINT [FK__Modelos_C__Regis__5629CD9C] FOREIGN KEY([Marca_ID])
REFERENCES [dbo].[Marcas_Cata] ([Marca_id])
GO
ALTER TABLE [dbo].[Modelos_Cata] CHECK CONSTRAINT [FK__Modelos_C__Regis__5629CD9C]
GO
ALTER TABLE [dbo].[Productos_Trans]  WITH CHECK ADD  CONSTRAINT [FK_Productos_Trans_Categorias_Trans] FOREIGN KEY([Categoria_ID])
REFERENCES [dbo].[Categorias_Trans] ([Categoria_id])
GO
ALTER TABLE [dbo].[Productos_Trans] CHECK CONSTRAINT [FK_Productos_Trans_Categorias_Trans]
GO
ALTER TABLE [dbo].[Productos_Trans]  WITH CHECK ADD  CONSTRAINT [FK_Productos_Trans_Color_Cata] FOREIGN KEY([Color_ID])
REFERENCES [dbo].[Color_Cata] ([Color_id])
GO
ALTER TABLE [dbo].[Productos_Trans] CHECK CONSTRAINT [FK_Productos_Trans_Color_Cata]
GO
ALTER TABLE [dbo].[Productos_Trans]  WITH CHECK ADD  CONSTRAINT [FK_Productos_Trans_Productos_Trans] FOREIGN KEY([Producto_id])
REFERENCES [dbo].[Productos_Trans] ([Producto_id])
GO
ALTER TABLE [dbo].[Productos_Trans] CHECK CONSTRAINT [FK_Productos_Trans_Productos_Trans]
GO
ALTER TABLE [dbo].[Tipo_Comprobantes_Trans]  WITH CHECK ADD  CONSTRAINT [FK_Tipo_Comprobantes_Trans_Comprobantes_Cata] FOREIGN KEY([Comprobante_ID])
REFERENCES [dbo].[Comprobantes_Cata] ([Comprobante_id])
GO
ALTER TABLE [dbo].[Tipo_Comprobantes_Trans] CHECK CONSTRAINT [FK_Tipo_Comprobantes_Trans_Comprobantes_Cata]
GO
ALTER TABLE [dbo].[Tipo_Comprobantes_Trans]  WITH CHECK ADD  CONSTRAINT [FK_Tipo_Comprobantes_Trans_Empresas_Trans] FOREIGN KEY([Empresa_ID])
REFERENCES [dbo].[Empresas_Trans] ([Empresa_id])
GO
ALTER TABLE [dbo].[Tipo_Comprobantes_Trans] CHECK CONSTRAINT [FK_Tipo_Comprobantes_Trans_Empresas_Trans]
GO
/****** Object:  StoredProcedure [dbo].[Proc_Cliente_Inserta]    Script Date: 5/31/2021 4:49:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



Create procedure [dbo].[Proc_Cliente_Inserta]
(
@Cliente_Nombre varchar(50),
@Cliente_Apellido varchar(50),
@Cliente_Email varchar(50),
@Cliente_Telefono varchar(13),
@Cliente_Celular varchar(13),
@Cliente_RNC varchar(20),
@Cliente_Direccion varchar(100)
)
As
Begin 

INSERT INTO Clientes_Trans
(
Cliente_Nombre,
Cliente_Apellido,
Cliente_Email,
Cliente_Telefono,
Cliente_Celular,
Cliente_RNC,
Cliente_Direccion
)
Values
(
@Cliente_Nombre,
@Cliente_Apellido,
@Cliente_Email,
@Cliente_Telefono,
@Cliente_Celular,
@Cliente_RNC,
@Cliente_Direccion
)

End 
GO
/****** Object:  StoredProcedure [dbo].[Proc_Clientes_Lista_Consulta]    Script Date: 5/31/2021 4:49:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Proc_Clientes_Lista 1,10,'', 0, 'juan'
-- Proc_Clientes_Lista 0,10, '', false ,''
CREATE procedure [dbo].[Proc_Clientes_Lista_Consulta]
(
@PageIndex int, 
@PageSize int,
@orderby varchar(50)  ,
@orderbyeDirection bit = null,
@Cliente_Nombre varchar(50) = null
)
As 

Begin 

	Declare @PageIni int;
	Declare @PageEnd int;
	Declare @Linea int;

	Set @PageIni = 0;
	Set @PageEnd = 0;

	Set @PageIndex = Case when @PageIndex = 0 
							  Then 1
							  Else @PageIndex End; -- Si es 0 cambia a 1


		Set @PageEnd = ( @PageIndex * @PageSize ); -- Mulriplicamos el iindice por el size y obtenemos la pagina final 
		Set @PageIni = (@PageEnd - @PageSize )+1; -- Este Proceso Captura la pagina inicial 

		if (@orderby = '')
		begin
		Set @orderby = 'Registro_Fecha'
		End;

		Create table #Datos
		(
		Cliente_id int,
		Cliente_Nombre varchar(50),
		Cliente_Apellido varchar(50),
		Cliente_Email varchar(100),
		Cliente_RNC varchar(10),
		Cliente_Direccion varchar(100),
		Cliente_Telefono varchar(50),
		Cliente_Celular varchar(50),
		Linea int identity(1,1)
		)
		insert Into #Datos 
		(
		Cliente_id,
		Cliente_Nombre,
		Cliente_Apellido,
		Cliente_Email,
		Cliente_RNC,
		Cliente_Direccion,
		Cliente_Telefono,
		Cliente_Celular
		)
		Select Distinct
			Cliente_id,
			Cliente_Nombre,
			Cliente_Apellido,
			Cliente_Email,
			Cliente_RNC,
			Cliente_Direccion,
			Cliente_Telefono,
			Cliente_Celular
		From Clientes_Trans C with(Nolock)
		Where  (Cliente_Nombre  like '%'+ REPLACE(@Cliente_Nombre,'', '%') + '%' ) Or (Cliente_Apellido  like '%'+ REPLACE(@Cliente_Nombre,'', '%') + '%' ) Or (@Cliente_Nombre = '')
		And Registro_Estado = 1 


		Declare @Registro int 
		Select @Registro = max(Linea)
		From #Datos

		Select Distinct
			Cliente_id,
			Cliente_Nombre,
			Cliente_Apellido,
			Cliente_Email,
			Cliente_RNC,
			Cliente_Direccion,
			Cliente_Telefono,
			Cliente_Celular,
			Linea,
			Ultima_Linea = @PageSize,
			Cantidad_Registros = @Registro
		From #Datos 
		where Linea between @PageIni and @PageEnd

		End 
GO
/****** Object:  StoredProcedure [dbo].[Proc_Color_Cata_Consulta]    Script Date: 5/31/2021 4:49:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create procedure [dbo].[Proc_Color_Cata_Consulta]
As
Begin 

Select
Color_id,
Color_Nombre
From  Color_Cata with (Nolock)
End 
GO
/****** Object:  StoredProcedure [dbo].[Proc_Comprobantes_Cata_Lista]    Script Date: 5/31/2021 4:49:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE Procedure [dbo].[Proc_Comprobantes_Cata_Lista]
As 

Begin 

Select 
		Comprobante_id ,
		Comprobante_Nombre,
		Comprobante_Descripcion
		From Comprobantes_Cata
		Where Registro_Estado = 1


End 




GO
/****** Object:  StoredProcedure [dbo].[Proc_Comprobantes_Secuencia_Consulta]    Script Date: 5/31/2021 4:49:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- Proc_Comprobantes_Secuencia_Consulta 1, 1
CREATE Procedure [dbo].[Proc_Comprobantes_Secuencia_Consulta]
(
@Comprobante_id int,
@Empresa_id int 
)
As 

Begin 

Select 
Comprobantes_Secuencia = CONCAT(RTRIM(Tipo_Comprobante_Serie), Tipo_Comprobante_Numero, Tipo_Comprobante_Secuencia)

	From Tipo_Comprobantes_Trans
			Where Comprobante_id = @Comprobante_id
						And Empresa_id = @Empresa_id
						And Registro_Estado = 1 


End 
GO
/****** Object:  StoredProcedure [dbo].[Proc_Empleados_Lista]    Script Date: 5/31/2021 4:49:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Proc_Empleados_Lista 1
CREATE Procedure [dbo].[Proc_Empleados_Lista]
(
@Empresa_id int 
)
As 
Begin

Select 

  Empleado_id,
	Empleado_Nombre = CONCAT(Empleado_Nombre+ ' ', Empleado_Apellido)

		From Empleados_Trans
		
		Where Empresa_ID = @Empresa_id
		And Registro_Estado = 1


End 
GO
/****** Object:  StoredProcedure [dbo].[Proc_Marcas_Lista]    Script Date: 5/31/2021 4:49:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- [dbo].[Proc_Marcas_Lista]
CREATE procedure [dbo].[Proc_Marcas_Lista]
As

Begin 

SELECT 
Marca_id,
	Marca_Nombre
		FROM Marcas_Cata
				WHERE  Registro_Estado = 1


End 
GO
/****** Object:  StoredProcedure [dbo].[Proc_Modelos_Lista]    Script Date: 5/31/2021 4:49:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- [dbo].[Proc_Modelos_Lista]
CREATE Procedure [dbo].[Proc_Modelos_Lista]
(
@Marca_ID int
)
As
Begin 

Select 

  Modelo_id,
  Modelo_Nombre

	From Modelos_Cata 
	Where Marca_ID = @Marca_ID 
	And Registro_Estado = 1


	End 
GO
/****** Object:  StoredProcedure [dbo].[Proc_Tipo_Transaccion_Lista]    Script Date: 5/31/2021 4:49:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





-- Proc_Tipo_Transaccion_Lista
Create procedure [dbo].[Proc_Tipo_Transaccion_Lista]
As
Begin


Select 
	Transaccion_id,
	Transaccion_Nombre
		From Tipo_Transaccion_Cata 
					Where Registro_Estado = 1

End 
GO
/****** Object:  StoredProcedure [dbo].[Proc_Tipo_Vehiculo_Lista]    Script Date: 5/31/2021 4:49:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





-- Proc_Tipo_Vehiculo_Lista
Create Procedure [dbo].[Proc_Tipo_Vehiculo_Lista]
As
Begin 

Select 

  TipoVehiculo_id,
  TipoVehiculo_Nombre

	From Tipo_Vehiculo_Cata
	Where Registro_Estado = 1


	End 
GO
