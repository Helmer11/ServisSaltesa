import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { ToastrService } from 'ngx-toastr';
import { Categoria_Cata } from '../models/Categoria_Cata';
import { Proveedor_Trans } from '../models/Proveedor_Trans';
import { ProveedoresService } from './Proveedores.service';

@Component({
  selector: 'app-Provedores',
  templateUrl: './Provedores.component.html',
  styleUrls: ['./Provedores.component.scss']
})
export class ProvedoresComponent implements OnInit {


  FormProveedor: FormGroup;
  Proveedores: Proveedor_Trans[] = [];
  Categoria: Categoria_Cata;

  constructor( private _FormB: FormBuilder,
              private _ProveedorServis: ProveedoresService,
              private _toast: ToastrService) { }

  ngOnInit() {
    this.getFormulario();
    this.Catalogo();
  }

  public getFormulario(){
    this.FormProveedor = this._FormB.group({
      Proveedor_Nombre: ['', Validators.required],
      Proveedor_RNC: ['', Validators.required],
      Proveedor_Email: ['',Validators.required],
      Proveedor_Telefono: ['', Validators.required],
      Proveedor_Celular: ['', Validators.required],
      Proveedor_Direccion: ['',Validators.required],
      Categoria_id: [0, Validators.required]
    });

  }

public Catalogo(){
  this._ProveedorServis.getCategoria().subscribe(res => this.Categoria = res as Categoria_Cata);
}

  public AgregarProveedor(){
    let prove = {
      Proveedor_Nombre: this.FormProveedor.controls.Proveedor_Nombre.value ,
      Proveedor_RNC: this.FormProveedor.controls.Proveedor_RNC.value,
      Proveedor_Email: this.FormProveedor.controls.Proveedor_Email.value ,
      Proveedor_Telefono: this.FormProveedor.controls.Proveedor_Telefono.value ,
      Proveedor_Celular: this.FormProveedor.controls.Proveedor_Celular.value ,
      Proveedor_Direccion: this.FormProveedor.controls.Proveedor_Direccion.value,
      Categoria_id:  this.FormProveedor.controls.Categoria_id.value,
      Registro_Usuario: 'hsalas'
    }

    this._ProveedorServis.guardarProveedor(prove).subscribe(res=>{
        this._toast.success("El Proveedor ha sido guardado", "Exito");
        setTimeout(() => {
          history.back();
        }, 2000);
    }, error => {
        this._toast.error("Hubo un error al guardar el Proveedor", "Error");
    }
    );

  }

}
