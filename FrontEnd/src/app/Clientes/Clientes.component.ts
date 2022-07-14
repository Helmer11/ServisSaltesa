import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { ToastrService } from 'ngx-toastr';
import { Cliente } from '../models/Cliente';
import { Marcas_Cata } from '../models/Marcas';
import { Modelos_Cata } from '../models/Modelos_Cata';
import { ClienteService } from './Cliente.service';

@Component({
  selector: 'app-Clientes',
  templateUrl: './Clientes.component.html',
  styleUrls: ['./Clientes.component.scss']
})
export class ClientesComponent implements OnInit {

  FormCliente: FormGroup
  MarcaCliente : Marcas_Cata;
  ModeloCliente: Modelos_Cata;
  Client: Cliente[];
  HabilitarModelo = true;


  constructor(private _servisCliente: ClienteService,
              private _FormB: FormBuilder,
              private _toast: ToastrService  ) { }

  ngOnInit() {
    this.Catalogos();
    this.Formulario();
  }

  public Formulario(){
    this.FormCliente = this._FormB.group({
        Cliente_Nombre: ['', Validators.required],
        Cliente_Apellido: ['', Validators.required],
        Cliente_Email: ['', Validators.required],
        Cliente_Telefono: ['', Validators.required],
        Cliente_Celular: ['', Validators.required],
        Cliente_RNC: ['',Validators.required],
        Cliente_Direccion: ['', Validators.required],
        Marca_id: [0, Validators.required],
        Modelo_id:[0,Validators.required]
    })
  }

  public Catalogos(){
    this._servisCliente.CargarMarca().subscribe(res => this.MarcaCliente = res as Marcas_Cata);
    //this._servisCliente.CargarEmpleado().subscribe(res => this.Empleado = res as Empleado_Trans);
  }


  public  CargarModelo(marca_id: number){
    this.HabilitarModelo = false;
      this._servisCliente.CargarModelo(marca_id).subscribe(res => this.ModeloCliente = res as Modelos_Cata);
    }

public GuardarCliente(){

  let dataCliente = {
    Cliente_Nombre: this.FormCliente.controls.Cliente_Nombre.value,
    Cliente_Apellido: this.FormCliente.controls.Cliente_Apellido.value,
    Cliente_Email: this.FormCliente.controls.Cliente_Email.value,
    Cliente_Direccion: this.FormCliente.controls.Cliente_Direccion.value,
    Cliente_RNC: this.FormCliente.controls.Cliente_RNC.value,
    Marca_id: this.FormCliente.controls.Marca_id.value,
    Modelo_id: this.FormCliente.controls.Modelo_id.value,
    Cliente_Telefono: this.FormCliente.controls.Cliente_Telefono.value,
    Cliente_Celular: this.FormCliente.controls.Cliente_Celular.value,
    Registro_Usuario: 'hsalas'
  }

  this._servisCliente.GuardarCliente(dataCliente).subscribe((res: any)=>{
    this._toast.success("Se ha guardado el cliente","Exito");
  }, error => {
    this._toast.error("Hubo un error al guardar el cliente, Contactese con el Admin", "Error")
  });
    this.FormCliente.reset();

    setTimeout(() => {
      history.back();
    }, 2000);

}

public CancelarForm(){
  history.back();
}




}
