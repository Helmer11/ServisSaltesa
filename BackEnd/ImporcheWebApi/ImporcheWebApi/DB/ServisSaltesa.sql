USE [ServisSaltesa]
GO
/****** Object:  Table [dbo].[Categorias_Trans]    Script Date: 7/20/2021 10:11:10 AM ******/
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
/****** Object:  Table [dbo].[Cliente_Vehiculo_Trans]    Script Date: 7/20/2021 10:11:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente_Vehiculo_Trans](
	[Cliente_Vehiculo_id] [int] IDENTITY(1,1) NOT NULL,
	[Cliente_id] [int] NOT NULL,
	[Marca_id] [int] NOT NULL,
	[Modelo_id] [int] NOT NULL,
	[Registro_Estado] [bit] NOT NULL,
	[Registro_Usuiario] [varchar](50) NOT NULL,
	[Registro_Fecha] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Cliente_Vehiculo_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clientes_Trans]    Script Date: 7/20/2021 10:11:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes_Trans](
	[Cliente_id] [int] IDENTITY(1,1) NOT NULL,
	[Cliente_Nombre] [varchar](50) NOT NULL,
	[Cliente_Apellido] [varchar](50) NOT NULL,
	[Cliente_Direccion] [varchar](100) NOT NULL,
	[Cliente_Email] [varchar](50) NOT NULL,
	[Cliente_Telefono] [varchar](11) NOT NULL,
	[Cliente_Celular] [varchar](11) NOT NULL,
	[Cliente_RNC] [varchar](12) NOT NULL,
	[Registro_Estado] [bit] NOT NULL,
	[Registro_Usuario] [varchar](100) NOT NULL,
	[Registro_Fecha] [datetime] NOT NULL,
 CONSTRAINT [PK__Clientes__EB6B387C82D9E826] PRIMARY KEY CLUSTERED 
(
	[Cliente_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Color_Cata]    Script Date: 7/20/2021 10:11:10 AM ******/
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
/****** Object:  Table [dbo].[Comprobantes_Cata]    Script Date: 7/20/2021 10:11:10 AM ******/
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
/****** Object:  Table [dbo].[Empleados_Trans]    Script Date: 7/20/2021 10:11:10 AM ******/
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
/****** Object:  Table [dbo].[Empresas_Trans]    Script Date: 7/20/2021 10:11:10 AM ******/
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
/****** Object:  Table [dbo].[Facturas_Detalles_Trans]    Script Date: 7/20/2021 10:11:10 AM ******/
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
/****** Object:  Table [dbo].[Facturas_Trans]    Script Date: 7/20/2021 10:11:10 AM ******/
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
/****** Object:  Table [dbo].[Inventarios_Trans]    Script Date: 7/20/2021 10:11:10 AM ******/
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
/****** Object:  Table [dbo].[Marcas_Cata]    Script Date: 7/20/2021 10:11:10 AM ******/
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
/****** Object:  Table [dbo].[Modelos_Cata]    Script Date: 7/20/2021 10:11:10 AM ******/
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
/****** Object:  Table [dbo].[Productos_Trans]    Script Date: 7/20/2021 10:11:10 AM ******/
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
/****** Object:  Table [dbo].[Proveedores_Trans]    Script Date: 7/20/2021 10:11:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proveedores_Trans](
	[Proveedor_id] [int] IDENTITY(1,1) NOT NULL,
	[Proveedor_Nombre] [varchar](50) NOT NULL,
	[Proveedor_Direccion] [varchar](100) NOT NULL,
	[Proveedor_Email] [varchar](50) NOT NULL,
	[Proveedor_Telefono] [varchar](11) NOT NULL,
	[Proveedor_Celular] [varchar](11) NOT NULL,
	[Proveedor_RNC] [varchar](12) NOT NULL,
	[Categoria_id] [int] NULL,
	[Registro_Estado] [bit] NOT NULL,
	[Registro_Usuario] [varchar](100) NOT NULL,
	[Registro_Fecha] [datetime] NOT NULL,
 CONSTRAINT [PK__Proveedor__EB6B387C82D9E826] PRIMARY KEY CLUSTERED 
(
	[Proveedor_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo_Comprobantes_Trans]    Script Date: 7/20/2021 10:11:10 AM ******/
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
/****** Object:  Table [dbo].[Tipo_Transaccion_Cata]    Script Date: 7/20/2021 10:11:10 AM ******/
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
/****** Object:  Table [dbo].[Tipo_Vehiculo_Cata]    Script Date: 7/20/2021 10:11:10 AM ******/
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
ALTER TABLE [dbo].[Categorias_Trans] ADD  DEFAULT ((1)) FOR [Registro_Estado]
GO
ALTER TABLE [dbo].[Categorias_Trans] ADD  DEFAULT (suser_sname()) FOR [Registro_Usuario]
GO
ALTER TABLE [dbo].[Categorias_Trans] ADD  DEFAULT (getdate()) FOR [Registro_Fecha]
GO
ALTER TABLE [dbo].[Cliente_Vehiculo_Trans] ADD  DEFAULT ((1)) FOR [Registro_Estado]
GO
ALTER TABLE [dbo].[Cliente_Vehiculo_Trans] ADD  DEFAULT (suser_sname()) FOR [Registro_Usuiario]
GO
ALTER TABLE [dbo].[Cliente_Vehiculo_Trans] ADD  DEFAULT (getdate()) FOR [Registro_Fecha]
GO
ALTER TABLE [dbo].[Clientes_Trans] ADD  CONSTRAINT [DF__Clientes___Regis__5535A963]  DEFAULT ((1)) FOR [Registro_Estado]
GO
ALTER TABLE [dbo].[Clientes_Trans] ADD  CONSTRAINT [DF__Clientes___Regis__5629CD9C]  DEFAULT (suser_sname()) FOR [Registro_Usuario]
GO
ALTER TABLE [dbo].[Clientes_Trans] ADD  CONSTRAINT [DF__Clientes___Regis__571DF1D5]  DEFAULT (getdate()) FOR [Registro_Fecha]
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
ALTER TABLE [dbo].[Proveedores_Trans] ADD  CONSTRAINT [DF_Proveedor_Trans_Registro_Estado]  DEFAULT ((1)) FOR [Registro_Estado]
GO
ALTER TABLE [dbo].[Proveedores_Trans] ADD  CONSTRAINT [DF_Proveedor_Trans_Registro_Usuario]  DEFAULT (suser_sname()) FOR [Registro_Usuario]
GO
ALTER TABLE [dbo].[Proveedores_Trans] ADD  CONSTRAINT [DF_Proveedor_Trans_Registro_Fecha]  DEFAULT (getdate()) FOR [Registro_Fecha]
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
ALTER TABLE [dbo].[Cliente_Vehiculo_Trans]  WITH CHECK ADD FOREIGN KEY([Marca_id])
REFERENCES [dbo].[Marcas_Cata] ([Marca_id])
GO
ALTER TABLE [dbo].[Cliente_Vehiculo_Trans]  WITH CHECK ADD FOREIGN KEY([Modelo_id])
REFERENCES [dbo].[Modelos_Cata] ([Modelo_id])
GO
ALTER TABLE [dbo].[Cliente_Vehiculo_Trans]  WITH CHECK ADD  CONSTRAINT [FK__Cliente_V__Regis__2BFE89A6] FOREIGN KEY([Cliente_id])
REFERENCES [dbo].[Clientes_Trans] ([Cliente_id])
GO
ALTER TABLE [dbo].[Cliente_Vehiculo_Trans] CHECK CONSTRAINT [FK__Cliente_V__Regis__2BFE89A6]
GO
ALTER TABLE [dbo].[Empleados_Trans]  WITH CHECK ADD  CONSTRAINT [FK__Empleados__Empre__30C33EC3] FOREIGN KEY([Empresa_ID])
REFERENCES [dbo].[Empresas_Trans] ([Empresa_id])
GO
ALTER TABLE [dbo].[Empleados_Trans] CHECK CONSTRAINT [FK__Empleados__Empre__30C33EC3]
GO
ALTER TABLE [dbo].[Facturas_Trans]  WITH CHECK ADD  CONSTRAINT [FK__Facturas___Clien__00200768] FOREIGN KEY([Cliente_ID])
REFERENCES [dbo].[Clientes_Trans] ([Cliente_id])
GO
ALTER TABLE [dbo].[Facturas_Trans] CHECK CONSTRAINT [FK__Facturas___Clien__00200768]
GO
ALTER TABLE [dbo].[Facturas_Trans]  WITH CHECK ADD  CONSTRAINT [FK__Facturas___Clien__01142BA1] FOREIGN KEY([Cliente_ID])
REFERENCES [dbo].[Clientes_Trans] ([Cliente_id])
GO
ALTER TABLE [dbo].[Facturas_Trans] CHECK CONSTRAINT [FK__Facturas___Clien__01142BA1]
GO
ALTER TABLE [dbo].[Facturas_Trans]  WITH CHECK ADD  CONSTRAINT [FK__Facturas___Clien__7F2BE32F] FOREIGN KEY([Cliente_ID])
REFERENCES [dbo].[Clientes_Trans] ([Cliente_id])
GO
ALTER TABLE [dbo].[Facturas_Trans] CHECK CONSTRAINT [FK__Facturas___Clien__7F2BE32F]
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
ALTER TABLE [dbo].[Proveedores_Trans]  WITH CHECK ADD  CONSTRAINT [FK_Proveedores_Trans_Categorias_Trans] FOREIGN KEY([Categoria_id])
REFERENCES [dbo].[Categorias_Trans] ([Categoria_id])
GO
ALTER TABLE [dbo].[Proveedores_Trans] CHECK CONSTRAINT [FK_Proveedores_Trans_Categorias_Trans]
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
/****** Object:  StoredProcedure [dbo].[Proc_Cliente_detalle_Consulta]    Script Date: 7/20/2021 10:11:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Proc_Cliente_detalle_Consulta 14
CREATE Procedure [dbo].[Proc_Cliente_detalle_Consulta]
(
@Cliente_id int
)
As 

begin


Select Distinct
		c.Cliente_id,
		c.Cliente_Nombre,
		c.Cliente_Apellido,
		c.Cliente_Direccion,
		c.Cliente_Telefono,
		c.Cliente_Celular,
		c.Cliente_RNC,
		c.Cliente_Email,
		m.Marca_id,
		m.Marca_Nombre,
		md.Modelo_id,
		md.Modelo_Nombre
		From Clientes_Trans c with(Nolock)
		Inner join Cliente_Vehiculo_Trans cv with(Nolock)
		On c.Cliente_id = cv.Cliente_id 
		Inner join Marcas_Cata m with(Nolock)
		On cv.Marca_id = m.Marca_id
		Inner join Modelos_Cata md with(Nolock)
		On cv.Modelo_id = md.Modelo_id
		Where c.Cliente_id = @Cliente_id
		And c.Registro_Estado = 1
		And cv.Registro_Estado = 1



End 

GO
/****** Object:  StoredProcedure [dbo].[Proc_Cliente_Inserta]    Script Date: 7/20/2021 10:11:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE procedure [dbo].[Proc_Cliente_Inserta]
(
@Cliente_Nombre varchar(50),
@Cliente_Apellido varchar(50),
@Cliente_Email varchar(50),
@Marca_id int ,
@Modelo_id int,
@Cliente_Telefono varchar(13),
@Cliente_Celular varchar(13),
@Cliente_RNC varchar(20),
@Cliente_Direccion varchar(100)
)
As
Begin 

declare @idCliente int


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


Set @idCliente = @@IDENTITY;


INSERT INTO Cliente_Vehiculo_Trans
(
Cliente_id,
Marca_id,
Modelo_id
)
Values
(
@idCliente,
@Marca_id,
@Modelo_id
)


End 
GO
/****** Object:  StoredProcedure [dbo].[Proc_Clientes_Lista_Consulta]    Script Date: 7/20/2021 10:11:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- Proc_Clientes_Lista_Consulta 1,10,'', 0, 'juan'
-- Proc_Clientes_Lista_Consulta 0,10, null, false ,''
CREATE procedure [dbo].[Proc_Clientes_Lista_Consulta]
(
@PageIndex int, 
@PageSize int,
@orderby varchar(50) = null  ,
@orderbyeDirection bit = null,
@Cliente_Nombre varchar(50) = ''
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
		Cliente_Email varchar(50),
		Cliente_RNC varchar(12),
		Cliente_Direccion varchar(100),
		Cliente_Telefono varchar(11),
		Cliente_Celular varchar(11),
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
		Where  (Cliente_Nombre  like '%'+ REPLACE(@Cliente_Nombre,' ', '%') + '%' ) Or (Cliente_Apellido  like '%'+ REPLACE(@Cliente_Nombre,' ', '%') + '%' ) Or (@Cliente_Nombre = '')
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


		drop table #Datos
		End 
GO
/****** Object:  StoredProcedure [dbo].[Proc_Color_Cata_Consulta]    Script Date: 7/20/2021 10:11:10 AM ******/
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
/****** Object:  StoredProcedure [dbo].[Proc_Comprobantes_Cata_Lista]    Script Date: 7/20/2021 10:11:10 AM ******/
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
/****** Object:  StoredProcedure [dbo].[Proc_Comprobantes_Secuencia_Consulta]    Script Date: 7/20/2021 10:11:10 AM ******/
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
Tipo_Comprobante_Serie,
Tipo_Comprobante_Numero,
Tipo_Comprobante_Secuencia,
Comprobantes_Secuencia = CONCAT(RTRIM(Tipo_Comprobante_Serie), Tipo_Comprobante_Numero, Tipo_Comprobante_Secuencia)

	From Tipo_Comprobantes_Trans
			Where Comprobante_id = @Comprobante_id
						And Empresa_id = @Empresa_id
						And Registro_Estado = 1 


End 



GO
/****** Object:  StoredProcedure [dbo].[Proc_Empleados_Lista]    Script Date: 7/20/2021 10:11:10 AM ******/
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
/****** Object:  StoredProcedure [dbo].[Proc_Marcas_Lista]    Script Date: 7/20/2021 10:11:10 AM ******/
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
/****** Object:  StoredProcedure [dbo].[Proc_Modelos_Lista]    Script Date: 7/20/2021 10:11:10 AM ******/
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
/****** Object:  StoredProcedure [dbo].[Proc_Proveedore_Trans_Inserta]    Script Date: 7/20/2021 10:11:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




Create Procedure [dbo].[Proc_Proveedore_Trans_Inserta]
(
@Proveedor_Nombre varchar(50),
@Proveedor_RNC varchar(12),
@Proveedor_Email varchar(50),
@Proveedor_Telefono varchar(11),
@Proveedor_Celular varchar(11),
@Proveedor_Direccion varchar(100),
@Registro_Usuario varchar(100)
)
As
Begin 




INSERT INTO [dbo].[Proveedores_Trans]
           ([Proveedor_Nombre]
           ,[Proveedor_Direccion]
           ,[Proveedor_Email]
           ,[Proveedor_Telefono]
           ,[Proveedor_Celular]
           ,[Proveedor_RNC]
           ,[Registro_Usuario]
           ,[Registro_Fecha])
     VALUES
	 (
		@Proveedor_Nombre ,
		@Proveedor_RNC ,
		@Proveedor_Email ,
		@Proveedor_Telefono ,
		@Proveedor_Celular ,
		@Proveedor_Direccion ,
		@Registro_Usuario,
		GETDATE()
     )




End 
GO
/****** Object:  StoredProcedure [dbo].[Proc_Proveedores_Lista_Consulta]    Script Date: 7/20/2021 10:11:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- 6
CREATE Procedure [dbo].[Proc_Proveedores_Lista_Consulta]
(
@PageIndex int, 
@PageSize int,
@orderby varchar(50) = null  ,
@orderbyeDirection bit = null,
@Proveedor_Nombre varchar(50) = ''
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
		Proveedor_id int,
		Proveedor_Nombre varchar(50),
		Proveedor_Email varchar(50),
		Proveedor_RNC varchar(12),
		Proveedor_Direccion varchar(100),
		Proveedor_Telefono varchar(11),
		Proveedor_Celular varchar(11),
		Linea int identity(1,1)
		)
		insert Into #Datos 
		(
		Proveedor_id,
		Proveedor_Nombre,
		Proveedor_Email,
		Proveedor_RNC,
		Proveedor_Direccion,
		Proveedor_Telefono,
		Proveedor_Celular
		)
		Select Distinct
		Proveedor_id,
		Proveedor_Nombre,
		Proveedor_Email,
		Proveedor_RNC,
		Proveedor_Direccion,
		Proveedor_Telefono,
		Proveedor_Celular
			From Proveedores_Trans p with(Nolock)
			 Where  (Proveedor_Nombre  like '%'+ REPLACE(Proveedor_Nombre,' ', '%') + '%' ) Or  (@Proveedor_Nombre = '')
			 And Registro_Estado = 1 


		Declare @Registro int 
		Select @Registro = max(Linea)
		From #Datos

		Select Distinct
		Proveedor_id,
		Proveedor_Nombre,
		Proveedor_Email,
		Proveedor_RNC,
		Proveedor_Direccion,
		Proveedor_Telefono,
		Proveedor_Celular,
			Linea,
			Ultima_Linea = @PageSize,
			Cantidad_Registros = @Registro
		From #Datos 
		where Linea between @PageIni and @PageEnd

		drop table #Datos
		End 
GO
/****** Object:  StoredProcedure [dbo].[Proc_Tipo_Transaccion_Lista]    Script Date: 7/20/2021 10:11:10 AM ******/
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
/****** Object:  StoredProcedure [dbo].[Proc_Tipo_Vehiculo_Lista]    Script Date: 7/20/2021 10:11:10 AM ******/
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
