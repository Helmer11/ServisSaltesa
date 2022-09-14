import { Component } from "@angular/core";
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { ActivatedRoute } from "@angular/router";
import { ToastrService } from "ngx-toastr";
import { Categoria_Cata } from "../models/Categoria_Cata";
import { Proveedor_Trans } from "../models/Proveedor_Trans";
import { ProveedoresService } from "./Proveedores.service";



@Component({
  selector: 'app-Proveedor-detalle',
  templateUrl: './Proveedores-detalle.component.html',
  styleUrls: ['./Provedores.component.scss']
})

 export class ProveedorDetalleComponent{

    ProvDetalleForm: FormGroup;
    detalleID: number;
    Categoria: Categoria_Cata;
    categoriaID: Number;

    constructor(private _formB: FormBuilder,
                private _ServiDetalle: ProveedoresService,
                private _routerActive: ActivatedRoute,
                private _toast: ToastrService){
              this.detalleID = Number(this._routerActive.snapshot.params.id);
    }

  ngOnInit() {
    this.getForm();
    this.Catalogo();
    this.ProveedorDetalle();

  }

    public getForm(){
      this.ProvDetalleForm = this._formB.group({
        Proveedor_Nombre: ['',Validators.required],
        Proveedor_RNC: ['', Validators.required],
        Proveedor_Email: ['',Validators.required],
        Proveedor_Telefono:['', Validators.required],
        Proveedor_Celular: ['', Validators.required],
        Proveedor_Direccion:['', Validators.required],
        Categoria_id: [0 ,Validators.required]
      });
    }

    public Catalogo(){
      this._ServiDetalle.getCategoria().subscribe(res => this.Categoria = res as Categoria_Cata);
    }



    public ProveedorDetalle(){
      this._ServiDetalle.proveedor_Detalle(this.detalleID).subscribe((proveDetalle: Proveedor_Trans)=>{

        this.ProvDetalleForm.patchValue({
          Proveedor_Nombre: proveDetalle.Proveedor_Nombre,
          Proveedor_RNC: proveDetalle.Proveedor_RNC,
          Proveedor_Email: proveDetalle.Proveedor_Email,
          Proveedor_Telefono: proveDetalle.Proveedor_Telefono,
          Proveedor_Celular: proveDetalle.Proveedor_Celular,
          Proveedor_Direccion: proveDetalle.Proveedor_Direccion,
          Categoria_id: proveDetalle.Categoria_id
        })


      })
    }


    public Retornar(){
      window.history.back();
    }






 }
