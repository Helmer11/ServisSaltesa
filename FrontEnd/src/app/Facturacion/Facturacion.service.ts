import { Injectable } from '@angular/core';
import { HttpClient} from '@angular/common/http';
import { APIURL } from '../shared/UrlApi';




@Injectable({
  providedIn: 'root'
})
export class FacturacionService {

constructor(private _http: HttpClient ) { }



// tslint:disable-next-line: typedef
CargarMarca() {
  return this._http.get(APIURL.Catalogo.Marcas);
}

CargarEmpleado() {
  return this._http.get(APIURL.Catalogo.Empleado);
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

  return this._http.get(APIURL.Comprobantes.ComprobanteSecuencia + param);
}

}
