import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Proveedor_Trans } from '../models/Proveedor_Trans';
import { APIURL } from '../shared/UrlApi';

@Injectable({
  providedIn: 'root'
})
export class ProveedoresService {

constructor(private _htpp: HttpClient) { }


FiltroProveedor: Proveedor_Trans = {

  PageIndex: 0,
  PageSize: 10,
  Proveedor_Nombre: '',
  Linea: 0,
  Ultima_Linea: 10,
  Cantidad_Registros: 0,
};



public ResetearForm(){
  this.FiltroProveedor = {

    PageIndex: 0,
    PageSize: 10,
    Proveedor_Nombre: '',
    Linea: 0,
    Ultima_Linea: 10,
    Cantidad_Registros: 0,
  };
}

public ListaProveedores(pr: Proveedor_Trans){

  let param = "PageIndex="+ pr.PageIndex +
  "&PageSize=" + pr.PageSize +
  "&orderByDirection0=false"+
  "&Proveedor_Nombre=" + pr.Proveedor_Nombre
  return this._htpp.get(APIURL.Proveedores.Consulta + param);
}

public guardarProveedor(prov: Proveedor_Trans){
  const headerOptions = new HttpHeaders({'Content-Type':'application/json'});
  return this._htpp.post(APIURL.Proveedores.Agregar, prov , { headers: headerOptions })
}

public getCategoria(){
  return this._htpp.get(APIURL.Catalogo.Categoria);
}

public proveedor_Detalle(proveID: Number){
  return this._htpp.get(APIURL.Proveedores.detalle + proveID)
}




}
