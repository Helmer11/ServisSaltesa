import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { APIURL } from '../shared/UrlApi';

@Injectable({
  providedIn: 'root'
})
export class ComprobanteService {

constructor(private _http: HttpClient) { }

getListaComprobante() {
  return this._http.get( `${APIURL.Comprobantes.consulta}`);
}

getComprobanteEmpresa(EmpresaID: number) {
  return this._http.get( `${ APIURL.Comprobantes.SecuenciaComprobante + "empresa_ID=" + EmpresaID}`)
}






}
