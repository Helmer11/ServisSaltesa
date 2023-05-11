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
public EditaCliente(){
  let dataCliente = {
    Cliente_id: this.detalleID,
    Cliente_Nombre: this.FormDetalle.controls.Cliente_Nombre.value,
    Cliente_Apellido: this.FormDetalle.controls.Cliente_Apellido.value,
    Cliente_Email: this.FormDetalle.controls.Cliente_Email.value,
    Cliente_Direccion: this.FormDetalle.controls.Cliente_Direccion.value,
    Cliente_RNC: this.FormDetalle.controls.Cliente_RNC.value,
    Marca_id: this.FormDetalle.controls.Marca_id.value,
    Modelo_id: this.FormDetalle.controls.Modelo_id.value,
    Cliente_Telefono: this.FormDetalle.controls.Cliente_Telefono.value,
    Cliente_Celular: this.FormDetalle.controls.Cliente_Celular.value,
    Registro_Usuario: 'hsalas'
  }

  this._detalleServis.EditaCliente(dataCliente).subscribe(res => {
    this._toast.success("Se ha actualizado los datos del cliente","Exito");
  }, err =>{
    this._toast.error("No se pudo actualizar los datos", "Error");
  })
}

public Retornar(){
  window.history.back();
}

 }
