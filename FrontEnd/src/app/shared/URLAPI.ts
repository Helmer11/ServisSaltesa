
import { environment} from '../../environments/environment';

export let BASEURL = environment.Api;

export let APIURL = {

  Catalogo: {
    Marcas: BASEURL + 'Marcas_Lista',
    Modelos: BASEURL + 'Modelo_Lista?marcaID=',

    Comprobantes: BASEURL + 'Comprobantes_Lista',
    Categoria: BASEURL + 'Lista_Categoria'
  },
  Empleado: {
    consulta: BASEURL + 'Empleado_Lista?',
  }
,
  Comprobantes:{
      ComprobanteSecuencia: BASEURL + 'Comprobantes_Secuencia?'
  },

  Cliente: {
      Consulta: BASEURL + 'Cliente_Lista?',
      Agregar: BASEURL + 'AgregarCliente',
      detalle: BASEURL + 'detalleCliente?',
      detalleVehiculo: BASEURL + 'VehiculoCliente?Cliente_id=',
      Editar : BASEURL + 'EditaCliente',
      Eliminar: BASEURL + 'InactivaCliente'
    },
    Proveedores: {
      Consulta: BASEURL + 'Proveedores_Lista?',
      Agregar: BASEURL + 'Proveedor_Agregar',
      detalle: BASEURL + 'Proveedor_Detalle?proveedorID=',
      Editar: BASEURL + 'Proveedor_Edita',
      Eliminar: BASEURL + 'Proveedor_Inactivar'
    },
    Facturas: {
      consulta: BASEURL + "factura_Lista?",
      detalle: BASEURL + "detalle_factura?"
    }



};
