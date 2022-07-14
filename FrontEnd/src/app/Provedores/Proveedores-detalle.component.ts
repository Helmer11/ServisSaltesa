import { Component } from "@angular/core";
import { FormBuilder, FormGroup } from "@angular/forms";
import { ActivatedRoute } from "@angular/router";
import { ToastrService } from "ngx-toastr";
import { Categoria_Cata } from "../models/Categoria_Cata";
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

    constructor(private _formB: FormBuilder,
                private _ServiDetalle: ProveedoresService,
                private _routerActive: ActivatedRoute,
                private _toast: ToastrService){

              this.detalleID = Number(this._routerActive.snapshot.params.id);

                      Number(this._routerActive.snapshot.params.id);

    }



  ngOnInit() {

    this.Catalogo();
  }

    public getForm(){
      this.ProvDetalleForm = this._formB.group({

      });
    }


    public Catalogo(){
      this._ServiDetalle.getCategoria().subscribe(res => this.Categoria = res as Categoria_Cata);
    }







 }
