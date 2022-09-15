import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Resolver } from 'dns';
import { Observable } from 'rxjs';
import { Cliente } from '../models/Cliente';
import { Cliente_Vehiculo } from '../models/Cliente_Vehiculo';
import { APIURL } from '../shared/UrlApi';

@Injectable({
  providedIn: 'root'
})
export class ClienteService {

constructor( private _http: HttpClient) { }


FiltroCliente: Cliente = {
  PageIndex: 0,
  PageSize: 10,
  Cliente_Nombre: '',
  Linea: 0,
  Ultima_Linea: 0,
  Cantidad_Registros: 0,
};


public CargarMarca(){
  return this._http.get(APIURL.Catalogo.Marcas);
}

public CargarModelo( id: number){
  return this._http.get(APIURL.Catalogo.Modelos + id);
}

public  getVehiculoCliente(Cliente_id: number){
  return this._http.get<Cliente_Vehiculo[]>(APIURL.Cliente.detalleVehiculo + Cliente_id);
}


public CargarListaCliente(Cli: Cliente){

  let param = "PageIndex="+ Cli.PageIndex +
  "&PageSize=" + Cli.PageSize +
  "&orderByDirection0=false"+
  "&Cliente_Nombre=" + Cli.Cliente_Nombre
  return this._http.get(APIURL.Cliente.Consulta + param);
}

public GuardarCliente(client: Cliente){
  const headerOptions = new HttpHeaders({'Content-Type':'application/json'});
  return this._http.post(APIURL.Cliente.Agregar,client, {headers: headerOptions});
}


public DetalleCliente(clienteID: number){
return this._http.get(APIURL.Cliente.detalle + "cliente_id="+ clienteID);
}

public EditaCliente(client: Cliente){
  const headerOptions = new HttpHeaders({'Content-Type':'application/json'});
  return this._http.post(APIURL.Cliente.Editar , client, {headers: headerOptions})
}


public ResetearForm(){

  this.FiltroCliente =  {
    Cliente_Nombre: '',
    PageSize: 10,
    PageIndex: 0,
    orderByDirection0: 0,
  }

}



}
