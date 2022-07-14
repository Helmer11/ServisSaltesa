import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { ActivatedRoute, Router } from '@angular/router';
import { ToastrService } from 'ngx-toastr';

import { element } from 'protractor';

import { Cliente_Vehiculo } from '../models/Cliente_Vehiculo';

import { Cliente } from '../models/Cliente';

import { Marcas_Cata } from '../models/Marcas';
import { Modelos_Cata } from '../models/Modelos_Cata';
import { ClienteService } from './Cliente.service';

@Component({
  selector: 'app-Cliente-detalle',
  templateUrl: './Cliente-detalle.component.html',
  styleUrls: ['./Cliente-detalle.component.scss']
})
export class ClienteDetalleComponent implements OnInit {

    FormDetalle: FormGroup;
    detalleID: number;
    detalleMarca: Marcas_Cata[];
    detalleModelo: Modelos_Cata[];
    VehiculoCliente: Cliente_Vehiculo[];
    //vehiculo: any[];
    marcaID: number;
    idmarca:number;
    idmodelo:number;
  
  constructor(private _formB: FormBuilder,
              private _router: ActivatedRoute,
              private _detalleServis: ClienteService,
              private _toast: ToastrService) {
               this.detalleID = Number(this._router.snapshot.params.id);

               }

  ngOnInit() {
    this.CargarDetalle();
    this.formularioDetalle();
    this.Catalogos();
  }

  public Catalogos(){
   this._detalleServis.CargarMarca().subscribe(res =>this.detalleMarca = res as Marcas_Cata[]);
  }

  public formularioDetalle(){
    this.FormDetalle = this._formB.group({
      Cliente_Nombre: ['', Validators.required],
      Cliente_Apellido: ['', Validators.required],
      Cliente_Email: ['', Validators.required],
      Cliente_Telefono: ['', Validators.required],
      Cliente_Celular: ['', Validators.required],
      Cliente_RNC: ['',Validators.required],
      Cliente_Direccion: ['', Validators.required],
      Marca_id: [0, Validators.required],
      Modelo_id:[0,Validators.required]
    });
  }

 public CargarDetalle(){
  this.getVehiculo_Cliente();
   this._detalleServis.DetalleCliente(this.detalleID).subscribe((detalle: Cliente) => {

    this.FormDetalle.patchValue({
      Cliente_Nombre: detalle.Cliente_Nombre,
      Cliente_Apellido: detalle.Cliente_Apellido,
      Cliente_Email: detalle.Cliente_Email,
      Cliente_RNC: detalle.Cliente_RNC,
      Cliente_Telefono: detalle.Cliente_Telefono,
      Cliente_Celular: detalle.Cliente_Celular,
      Cliente_Direccion: detalle.Cliente_Direccion,
      Marca_id: this.idmarca,
      Modelo_id: this.idmodelo,
    })
    
  }, error =>{
        this._toast.error("Hubo un error al cargar el detalle del Cliente", "Error");
  });
  
 }


public async getVehiculo_Cliente() {
  this._detalleServis.getVehiculoCliente(this.detalleID).subscribe(res => {
    this.VehiculoCliente = res;
    this.VehiculoCliente.forEach(element => {
      this.idmarca = element.Marca_id;
      this.idmodelo = element.Modelo_id;
    });
    this._detalleServis.CargarModelo(this.idmarca).subscribe(res => 
      this.detalleModelo = res as Modelos_Cata[]);
  })
     
}

public Retornar(){
  window.history.back();
}






 }