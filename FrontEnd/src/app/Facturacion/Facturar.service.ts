import { Injectable } from '@angular/core';
import { HttpClient} from '@angular/common/http';
import { APIURL } from '../shared/UrlApi';
import { Facturas_Trans } from '../models/Factura_Trans';
import { Observable } from 'rxjs';


@Injectable({
  providedIn: 'root'
})
export class FacturacionService {

constructor(private _http: HttpClient ) { }


FiltroFactura: Facturas_Trans = {
  PageIndex: 0,
  PageSize: 10,
  Cliente_Nombre:'',
  Fecha_Desde: '',
  Fecha_Hasta:'' ,
   Orderby:'',
};


// tslint:disable-next-line: typedef
CargarMarca() {
  return this._http.get(APIURL.Catalogo.Marcas);
}

CargarEmpleado() {
    let param = "empresaID=" +  1;
  return this._http.get(APIURL.Empleado.consulta + param );
}

// tslint:disable-next-line: typedef
CargarModelo( id: number){
  return this._http.get(APIURL.Catalogo.Modelos + id);
}

CargarTipoComprobante(){
  return this._http.get(APIURL.Catalogo.Comprobantes);
}

CargarSecuencia(idComprobante: number, IDEmpresa: number){

let param = 'comprobante_ID='+ idComprobante + '&empresa_ID=' + IDEmpresa

  return this._http.get(APIURL.Comprobantes.SecuenciaComprobante + param);
}

CargarListaFactura(): Observable<Facturas_Trans[]>{
  let param = "PageIndex="+ this.FiltroFactura.PageIndex +
              "&PageSize=" + this.FiltroFactura.PageSize +
              "&Cliente_Nombre=" + this.FiltroFactura.Cliente_Nombre +
              "&Fecha_Desde=" + this.FiltroFactura.Fecha_Desde +
              "&Fecha_Hasta=" + this.FiltroFactura.Fecha_Hasta +
              "&orderBy=" + this.FiltroFactura.Orderby
  return this._http.get<Facturas_Trans[]>(APIURL.Facturas.consulta + param);
}


}
