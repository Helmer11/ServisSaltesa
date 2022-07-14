using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace ServisSaltesa.Models.Data
{
    public class Cliente_Vehiculo_Trans 
    {
        [Key]
        [Column(Order = 1)]
        public int Cliente_Vehiculo_id { get; set; }
        public int Cliente_id { get; set; }
        public int Marca_id { get; set; }
        public int Modelo_id { get; set; }



    
    }

}