import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { Cliente } from '../models/Cliente';
import { ClienteService } from './Cliente.service';

@Component({
  selector: 'app-lista-Clientes',
  templateUrl: './lista-Clientes.component.html',
  styleUrls: ['./lista-Clientes.component.scss']
})
export class ListaClientesComponent implements OnInit {

    listaForm: FormGroup;
    Client: Cliente;
    ClienteLista: Cliente[] = [];
    cantidad_Registro:number;
    Linea: number;
    Ultima_Linea: number;
    indice = 1;
    loading: boolean =  false;

  constructor(private _formB: FormBuilder,
              public _ServicioCliente: ClienteService,
               ) { }

  ngOnInit() {
    this.Formulario();
    this._ServicioCliente.FiltroCliente.PageIndex = this.indice -1;
    this._ServicioCliente.FiltroCliente.PageSize = 10;
    this.ListaCliente();
  }

    public Formulario(){
      this.listaForm = this._formB.group({
        Cliente_Nombre: '',
        PageSize: 10,
        PageIndex: 0,
        orderByDirection0: 0,
      })
    }

public BuscarCliente(Busaqueda: number){

    if(this.Linea === 0 || Busaqueda === 0){
      this.indice = 1;
    }
    this._ServicioCliente.FiltroCliente.Cliente_Nombre = this.listaForm.value["Cliente_Nombre"];
    this._ServicioCliente.FiltroCliente.PageSize = this.listaForm.value["PageSize"];
    this._ServicioCliente.FiltroCliente.PageIndex = this.indice;
    this.ListaCliente();
}

  public ListaCliente(){
    this.loading = true;
    setTimeout(() => {
      this._ServicioCliente.CargarListaCliente(this._ServicioCliente.FiltroCliente)
      .subscribe((Client: Cliente[])=>{
        this.ClienteLista  = Client;
        if(this.ClienteLista.length > 0){
            this.cantidad_Registro = this.ClienteLista[0].Cantidad_Registros;
            this.Linea = this.ClienteLista[0].Linea;
            this.Ultima_Linea = this.ClienteLista[0].Ultima_Linea;
        }
      });
      this.loading = false;
    }, 3000);

  }

  public ResetForm(){

    this.listaForm.patchValue({
      Cliente_Nombre: ''
    });
    this._ServicioCliente.ResetearForm();

    this.ListaCliente();
  }






}
