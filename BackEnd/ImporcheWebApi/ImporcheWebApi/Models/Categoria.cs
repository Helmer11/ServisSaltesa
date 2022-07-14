using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ServisSaltesa.Models.Data;
using System.Data.Entity.Core;
using ServisSaltesa.Interfaces;

namespace ServisSaltesa.Models.Data
{
    public class Categoria : ICategoria
    {

        public IEnumerable Categoria_Lista()
        {
           
                try
                {
                using (var db = new ServisSaltesaEntity())
                {
                    var cate = db.Categorias.Select(z => new { z.Categoria_id, z.Categoria_Nombre });


                    return cate.ToList();
                }

                }catch(EntityException ee)
                {
                            throw ee.InnerException.InnerException;
                
                } catch(Exception ex)
                    {
                        throw ex;
                    }
            }
        }



    }
