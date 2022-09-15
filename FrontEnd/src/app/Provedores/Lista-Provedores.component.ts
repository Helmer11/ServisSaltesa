import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup } from '@angular/forms';
import { ToastrService } from 'ngx-toastr';
import { Proveedor_Trans } from '../models/Proveedor_Trans';
import { ProveedoresService } from './Proveedores.service';

@Component({
  selector: 'app-Lista-Provedores',
  templateUrl: './Lista-Provedores.component.html',
  styleUrls: ['./Lista-Provedores.component.scss']
})
export class ListaProvedoresComponent implements OnInit {

  ListaProveForm: FormGroup;
  ProveedoresLista: Proveedor_Trans[] = [];
  Linea: number;
  cantidad_Registro:number;
  Ultima_Linea: number;
  indice = 1;
  loading: boolean = false

  constructor(private _formB: FormBuilder,
              public _ProvedorServis: ProveedoresService,
              private _toast: ToastrService) { }

  ngOnInit() {
    this.getFormulario();
    this.CargarListaProveedor();

  }

  public getFormulario(){
    this.ListaProveForm = this._formB.group({
      Proveedor_Nombre: '',
      PageSize: 10,
      PageIndex: 0,
      orderByDirection0: 0,
    })
  }


  public BuscarProveedor( Busaqueda: number ){

    if( this.Linea ===0 || Busaqueda === 0 ){
      this.indice = 1;
    }
    this._ProvedorServis.FiltroProveedor.Proveedor_Nombre = this.ListaProveForm.value["Proveedor_Nombre"];
    this._ProvedorServis.FiltroProveedor.PageSize =  this.ListaProveForm.value["PageSize"];
    this._ProvedorServis.FiltroProveedor.PageIndex = this.indice
  }



  public CargarListaProveedor(){
    this.loading = true;
    setTimeout(() => {
      this._ProvedorServis.ListaProveedores(this._ProvedorServis.FiltroProveedor)
      .subscribe(( proveer: Proveedor_Trans[] ) =>{
          this.ProveedoresLista = proveer;
        if ( this.ProveedoresLista.length > 0) {
          this.cantidad_Registro =  this.ProveedoresLista[0].Cantidad_Registros;
          this.Linea =  this.ProveedoresLista[0].Linea;
          this.Ultima_Linea =  this.ProveedoresLista[0].Ultima_Linea;
      }
    });
  this.loading = false;
    }, 3000);

  }



  public ResetForm(){

    this.ListaProveForm.patchValue({
      Proveedor_Nombre: ''
    });
    this._ProvedorServis.ResetearForm();
      this.CargarListaProveedor();


  }



}
