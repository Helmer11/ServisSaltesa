namespace ServisSaltesa.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    using ServisSaltesa.Models.Data;

    public partial class ServisSaltesaEntities : DbMigration
    {
        public override void Up()
        {

            CreateTable(
                "dbo.Categorias_Trans",
                c => new
                    {
                        Categoria_id = c.Int(nullable: false, identity: true),
                        Categoria_Nombre = c.String(),
                        Categoria_Descripcion = c.String(),
                        Registro_Estado = c.Boolean(nullable: false),
                        Registro_Usuario = c.String(),
                        Registro_Fecha = c.DateTime(nullable: false),
                    })
                .PrimaryKey(t => t.Categoria_id);
            
            CreateTable(
                "dbo.Productos_Trans",
                c => new
                    {
                        Producto_id = c.Int(nullable: false, identity: true),
                        Producto_Codigo = c.String(),
                        Producto_Nombre = c.String(),
                        Producto_Descripcion = c.String(),
                        Producto_Costo = c.Decimal(nullable: false, precision: 18, scale: 2),
                        Producto_Precio = c.Decimal(nullable: false, precision: 18, scale: 2),
                        Producto_Cantidad = c.Int(nullable: false),
                        Color_ID = c.Int(nullable: false),
                        Categoria_ID = c.Int(nullable: false),
                        Fecha_Ingreso = c.DateTime(nullable: false),
                        Fecha_Caducidad = c.DateTime(nullable: false),
                        Proveedor_Codigo_ID = c.Int(nullable: false),
                        Registro_Estado = c.Boolean(nullable: false),
                        Registro_Usuario = c.String(),
                        Registro_Fecha = c.DateTime(nullable: false),
                    })
                .PrimaryKey(t => t.Producto_id)
                .ForeignKey("dbo.Categorias_Trans", t => t.Categoria_ID, cascadeDelete: true)
                .ForeignKey("dbo.Color_Cata", t => t.Color_ID, cascadeDelete: true)
                .Index(t => t.Color_ID)
                .Index(t => t.Categoria_ID);
            
            CreateTable(
                "dbo.Color_Cata",
                c => new
                    {
                        Color_id = c.Int(nullable: false, identity: true),
                        Color_Nombre = c.String(),
                        Registro_Estado = c.Boolean(nullable: false),
                        Registro_Usuario = c.String(),
                        Registro_Fecha = c.DateTime(nullable: false),
                    })
                .PrimaryKey(t => t.Color_id);
            
            CreateTable(
                "dbo.Clientes_Trans",
                c => new
                    {
                        Cliente_id = c.Int(nullable: false, identity: true),
                        Cliente_Nombre = c.String(),
                        Cliente_Apellido = c.String(),
                        Cliente_Direccion = c.String(),
                        Cliente_Email = c.String(),
                        Cliente_Telefono = c.String(),
                        Cliente_Celular = c.String(),
                        Cliente_RNC = c.String(),
                        Registro_Estado = c.Boolean(nullable: false),
                        Registro_Usuario = c.String(),
                        Registro_Fecha = c.DateTime(),
                    })
                .PrimaryKey(t => t.Cliente_id);
            
            CreateTable(
                "dbo.Facturas_Trans",
                c => new
                    {
                        factura_id = c.Int(nullable: false, identity: true),
                        Cliente_ID = c.Int(nullable: false),
                        Marca_ID = c.Int(nullable: false),
                        Modelo_ID = c.Int(nullable: false),
                        TipoVehiculo_ID = c.Byte(nullable: false),
                        Factura_Comprobante = c.String(),
                        TipoTransaccion_ID = c.Byte(nullable: false),
                        Factura_NCF = c.String(),
                        Factura_NIF = c.String(),
                        Factura_ITBIS = c.Decimal(nullable: false, precision: 18, scale: 2),
                        Factura_Neto = c.Decimal(nullable: false, precision: 18, scale: 2),
                        Factura_Subtotal = c.Decimal(nullable: false, precision: 18, scale: 2),
                        Factura_Total = c.Decimal(nullable: false, precision: 18, scale: 2),
                        Registro_Estado = c.Boolean(nullable: false),
                        Registro_Usuario = c.String(),
                        Registro_Fecha = c.DateTime(),
                        Tipo_Transaccion_Cata_Transaccion_id = c.Byte(),
                    })
                .PrimaryKey(t => t.factura_id)
                .ForeignKey("dbo.Clientes_Trans", t => t.Cliente_ID, cascadeDelete: true)
                .ForeignKey("dbo.Marcas_Cata", t => t.Marca_ID, cascadeDelete: true)
                .ForeignKey("dbo.Modelos_Cata", t => t.Modelo_ID, cascadeDelete: true)
                .ForeignKey("dbo.Tipo_Transaccion_Cata", t => t.Tipo_Transaccion_Cata_Transaccion_id)
                .ForeignKey("dbo.Tipo_Vehiculo_Cata", t => t.TipoVehiculo_ID, cascadeDelete: true)
                .Index(t => t.Cliente_ID)
                .Index(t => t.Marca_ID)
                .Index(t => t.Modelo_ID)
                .Index(t => t.TipoVehiculo_ID)
                .Index(t => t.Tipo_Transaccion_Cata_Transaccion_id);
            
            CreateTable(
                "dbo.Marcas_Cata",
                c => new
                    {
                        Marca_id = c.Int(nullable: false, identity: true),
                        Marca_Nombre = c.String(),
                        Marca_Descripcion = c.String(),
                        Registro_Estado = c.Boolean(nullable: false),
                        Registro_Usuario = c.String(),
                        Registro_Fecha = c.DateTime(nullable: false),
                    })
                .PrimaryKey(t => t.Marca_id);
            
            CreateTable(
                "dbo.Modelos_Cata",
                c => new
                    {
                        Modelo_id = c.Int(nullable: false, identity: true),
                        Modelo_Nombre = c.String(),
                        Modelo_Color = c.String(),
                        Marca_ID = c.Int(nullable: false),
                        Modelo_Descripcion = c.String(),
                        Registro_Estado = c.Boolean(nullable: false),
                        Registro_Usuario = c.String(),
                        Registro_Fecha = c.DateTime(),
                    })
                .PrimaryKey(t => t.Modelo_id)
                .ForeignKey("dbo.Marcas_Cata", t => t.Marca_ID, cascadeDelete: true)
                .Index(t => t.Marca_ID);
            
            CreateTable(
                "dbo.Tipo_Transaccion_Cata",
                c => new
                    {
                        Transaccion_id = c.Byte(nullable: false),
                        Transaccion_Nombre = c.String(),
                        Transaccion_Descripcion = c.String(),
                        Registro_Estado = c.Boolean(nullable: false),
                        Registro_Usuario = c.String(),
                        Registro_Fecha = c.DateTime(),
                    })
                .PrimaryKey(t => t.Transaccion_id);
            
            CreateTable(
                "dbo.Tipo_Vehiculo_Cata",
                c => new
                    {
                        TipoVehiculo_id = c.Byte(nullable: false),
                        TipoVehiculo_Nombre = c.String(),
                        TipoVehiculo_Descripcion = c.String(),
                        Registro_Estado = c.Boolean(nullable: false),
                        Registro_Usuario = c.String(),
                        Registro_Fecha = c.DateTime(),
                    })
                .PrimaryKey(t => t.TipoVehiculo_id);
            
            CreateTable(
                "dbo.Comprobantes_Cata",
                c => new
                    {
                        Comprobante_id = c.Byte(nullable: false),
                        Comprobante_Nombre = c.String(),
                        Comprobante_Descripcion = c.String(),
                        Registro_Estado = c.Boolean(nullable: false),
                        Regidtro_Usuario = c.String(),
                        Registro_Fecha = c.DateTime(nullable: false),
                    })
                .PrimaryKey(t => t.Comprobante_id);
            
            CreateTable(
                "dbo.Tipo_Comprobantes_Trans",
                c => new
                    {
                        Tipo_Comprobante_id = c.Int(nullable: false, identity: true),
                        Comprobante_ID = c.Byte(nullable: false),
                        Tipo_Comprobante_Serie = c.String(),
                        Tipo_Comprobante_Numero = c.String(),
                        Tipo_Comprobante_Secuencia = c.String(),
                        Empresa_ID = c.Int(nullable: false),
                        Comprobantes_Secuencia = c.String(),
                        Registro_Estado = c.Boolean(nullable: false),
                        Registro_Usuario = c.String(),
                        Registro_Fecha = c.DateTime(nullable: false),
                    })
                .PrimaryKey(t => t.Tipo_Comprobante_id)
                .ForeignKey("dbo.Comprobantes_Cata", t => t.Comprobante_ID, cascadeDelete: true)
                .ForeignKey("dbo.Empresas_Trans", t => t.Empresa_ID, cascadeDelete: true)
                .Index(t => t.Comprobante_ID)
                .Index(t => t.Empresa_ID);
            
            CreateTable(
                "dbo.Empresas_Trans",
                c => new
                    {
                        Empresa_id = c.Int(nullable: false, identity: true),
                        Empresa_User = c.String(),
                        Empresa_Password = c.String(),
                        Empresa_Nombre = c.String(),
                        Empresa_Email = c.String(),
                        Empresa_Direccion = c.String(),
                        Empresa_Telefono = c.String(),
                        Empresa_Logo = c.String(),
                        Registro_Estado = c.Boolean(nullable: false),
                        Registro_Usuario = c.String(),
                        Registro_Fecha = c.DateTime(nullable: false),
                    })
                .PrimaryKey(t => t.Empresa_id);
            
            CreateTable(
                "dbo.Empleados_Trans",
                c => new
                    {
                        Empleado_id = c.Int(nullable: false, identity: true),
                        Empleado_Nombre = c.String(),
                        Empleado_Apellido = c.String(),
                        Empleado_Direccion = c.String(),
                        Empleado_Telefono = c.String(),
                        Empleado_Celular = c.String(),
                        Empresa_ID = c.Int(nullable: false),
                        Empleado_Edad = c.Byte(),
                        Registro_Estado = c.Boolean(nullable: false),
                        Registro_Usuario = c.String(),
                        Registro_Fecha = c.DateTime(nullable: false),
                    })
                .PrimaryKey(t => t.Empleado_id)
                .ForeignKey("dbo.Empresas_Trans", t => t.Empresa_ID, cascadeDelete: true)
                .Index(t => t.Empresa_ID);
            
            CreateTable(
                "dbo.Facturas_Detalles_Trans",
                c => new
                    {
                        Detalle_id = c.Int(nullable: false, identity: true),
                        Factura_ID = c.Int(nullable: false),
                        Detalle_Cantidad = c.Int(nullable: false),
                        Detalle_Descripcion = c.String(),
                        Importe = c.Decimal(nullable: false, precision: 18, scale: 2),
                        Registro_Estado = c.Boolean(nullable: false),
                        Registro_Usuario = c.String(),
                        Registro_Fecha = c.DateTime(),
                    })
                .PrimaryKey(t => t.Detalle_id);
            
            CreateTable(
                "dbo.Inventarios_Trans",
                c => new
                    {
                        Inventario_id = c.Int(nullable: false, identity: true),
                        Producto_ID = c.Int(nullable: false),
                        Categoria_ID = c.Int(nullable: false),
                        Proveedor_ID = c.Int(nullable: false),
                        Inventario_Entrada = c.Int(nullable: false),
                        Inventario_Stock = c.Int(nullable: false),
                        Inventario_Salida = c.Int(nullable: false),
                        Registro_Estado = c.Boolean(nullable: false),
                        Registro_Usuario = c.String(),
                        Registro_Fecha = c.DateTime(nullable: false),
                    })
                .PrimaryKey(t => t.Inventario_id);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.Tipo_Comprobantes_Trans", "Empresa_ID", "dbo.Empresas_Trans");
            DropForeignKey("dbo.Empleados_Trans", "Empresa_ID", "dbo.Empresas_Trans");
            DropForeignKey("dbo.Tipo_Comprobantes_Trans", "Comprobante_ID", "dbo.Comprobantes_Cata");
            DropForeignKey("dbo.Facturas_Trans", "TipoVehiculo_ID", "dbo.Tipo_Vehiculo_Cata");
            DropForeignKey("dbo.Facturas_Trans", "Tipo_Transaccion_Cata_Transaccion_id", "dbo.Tipo_Transaccion_Cata");
            DropForeignKey("dbo.Modelos_Cata", "Marca_ID", "dbo.Marcas_Cata");
            DropForeignKey("dbo.Facturas_Trans", "Modelo_ID", "dbo.Modelos_Cata");
            DropForeignKey("dbo.Facturas_Trans", "Marca_ID", "dbo.Marcas_Cata");
            DropForeignKey("dbo.Facturas_Trans", "Cliente_ID", "dbo.Clientes_Trans");
            DropForeignKey("dbo.Productos_Trans", "Color_ID", "dbo.Color_Cata");
            DropForeignKey("dbo.Productos_Trans", "Categoria_ID", "dbo.Categorias_Trans");
            DropIndex("dbo.Empleados_Trans", new[] { "Empresa_ID" });
            DropIndex("dbo.Tipo_Comprobantes_Trans", new[] { "Empresa_ID" });
            DropIndex("dbo.Tipo_Comprobantes_Trans", new[] { "Comprobante_ID" });
            DropIndex("dbo.Modelos_Cata", new[] { "Marca_ID" });
            DropIndex("dbo.Facturas_Trans", new[] { "Tipo_Transaccion_Cata_Transaccion_id" });
            DropIndex("dbo.Facturas_Trans", new[] { "TipoVehiculo_ID" });
            DropIndex("dbo.Facturas_Trans", new[] { "Modelo_ID" });
            DropIndex("dbo.Facturas_Trans", new[] { "Marca_ID" });
            DropIndex("dbo.Facturas_Trans", new[] { "Cliente_ID" });
            DropIndex("dbo.Productos_Trans", new[] { "Categoria_ID" });
            DropIndex("dbo.Productos_Trans", new[] { "Color_ID" });
            DropTable("dbo.Inventarios_Trans");
            DropTable("dbo.Facturas_Detalles_Trans");
            DropTable("dbo.Empleados_Trans");
            DropTable("dbo.Empresas_Trans");
            DropTable("dbo.Tipo_Comprobantes_Trans");
            DropTable("dbo.Comprobantes_Cata");
            DropTable("dbo.Tipo_Vehiculo_Cata");
            DropTable("dbo.Tipo_Transaccion_Cata");
            DropTable("dbo.Modelos_Cata");
            DropTable("dbo.Marcas_Cata");
            DropTable("dbo.Facturas_Trans");
            DropTable("dbo.Clientes_Trans");
            DropTable("dbo.Color_Cata");
            DropTable("dbo.Productos_Trans");
            DropTable("dbo.Categorias_Trans");
        }
    }
}
