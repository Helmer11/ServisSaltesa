using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace ServisSaltesa.Models.Data
{
    public class ServisSaltesaEntity : DbContext
    {

        public ServisSaltesaEntity() : base("name=ServisSaltesaEntities")
        {
            Database.SetInitializer<ServisSaltesaEntity>(new CreateDatabaseIfNotExists<ServisSaltesaEntity>());
        }

        public DbSet<Clientes_Trans> Cliente { get; set; }
        public DbSet<Color_Cata> Colores { get; set; }
        public DbSet<Empleados_Trans> Empleados { get; set; }
        public DbSet<Categorias_Trans> Categorias { get; set; }
        public DbSet<Empresas_Trans> Empresas { get; set; }
        public DbSet<Facturas_Detalles_Trans> Facturas_Detalles { get; set; }
        public DbSet<Marcas_Cata> Marcas { get; set; }
        public DbSet<Modelos_Cata> Modelos { get; set; }
        public DbSet<Productos_Trans> Productos { get; set; }
        public DbSet<Comprobantes_Cata> Comprobantes { get; set; }
        public DbSet<Tipo_Comprobantes_Trans> Tipo_Comprobantes { get; set; }
        public DbSet<Tipo_Transaccion_Cata> Tipo_Transaccions { get; set; }
        public DbSet<Tipo_Vehiculo_Cata> Tipo_Vehiculos { get; set; }
        public DbSet<Inventarios_Trans> Inventarios { get; set; }
        public DbSet<Cliente_Vehiculo_Trans> Vehiculo { get; set; }
        public DbSet<Proveedores_Trans> Proveedor { get; set; }



    }
}