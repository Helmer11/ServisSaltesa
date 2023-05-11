import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { Empleado_Trans } from '../models/Empleado_Trans';
import { Marcas_Cata } from '../models/Marcas';
import { Modelos_Cata } from '../models/Modelos_Cata';
import { FacturacionService } from './Facturar.service';
import { ToastrService } from 'ngx-toastr';
import { Comprobantes_Cata } from '../models/Comprobantes_Cata';
import { Tipo_Comprobante } from '../models/Tipo_Comprobante';

@Component({
  selector: 'app-Facturar',
  templateUrl: './Facturar.component.html',
  styleUrls: ['./Facturar.component.scss']
})

export class FacturarComponent implements OnInit {


  MarcaCata: Marcas_Cata;
  ModeloCata: Modelos_Cata;
  Empleado: Empleado_Trans;
  ComprobantesFiscal: Comprobantes_Cata;
  HabilitarModelo = true;
  FormFactura: FormGroup;
  detalleFactura: any[] = [];
  ComprobanteCheck: boolean = false;
  //TipoComprobante:Tipo_Comprobante;
  ComprobanteSecuencia: string;



  // tslint:disable-next-line: variable-name
  constructor( private _servisFactura: FacturacionService,
               private _formB: FormBuilder,
               private _toast: ToastrService) { }

  // tslint:disable-next-line: typedef
  ngOnInit() {
    this.Catalogos();
    this.CreacionFormulario();
    }


   public  CreacionFormulario() {

    this.FormFactura = this._formB.group({

            Comprobante_id: [0,Validators.required],
            Comprobante_Secuencia: ['', Validators.required],
            cliente_Nombre: ['', Validators.required],
            cliente_Chasis:['', Validators.required],
            cliente_RNC: ['', ],
            Marca_id: [0, Validators.required],
            Modelo_id: [0, Validators.required],
            Empleado_id: [0, Validators.required],
            Cliente_Cantidad_Numero: [0, Validators.required],
            Cliente_Descripcion: ['', Validators.required],
            Cliente_Precio: [0, Validators.required]

      });
    }


  public Catalogos(){
    this._servisFactura.CargarMarca().subscribe(res => this.MarcaCata = res as Marcas_Cata);
    this._servisFactura.CargarEmpleado().subscribe(res => this.Empleado = res as Empleado_Trans);
    this._servisFactura.CargarTipoComprobante().subscribe(res => this.ComprobantesFiscal = res as Comprobantes_Cata)
  }


 public  CargarModelo(marca_id: number){
  this.HabilitarModelo = false;
    this._servisFactura.CargarModelo(marca_id).subscribe(res => this.ModeloCata = res as Modelos_Cata);
  }


 public  AgregarFactura(){

    if ( this.FormFactura.invalid ){
      this._toast.error('Debe llenar los datos Correspondiente', 'Error');
      return;
    }

    let _factura = {
          Cliente_Cantidad_Numero: this.FormFactura.controls.Cliente_Cantidad_Numero.value,
          Cliente_Descripcion: this.FormFactura.controls.Cliente_Descripcion.value,
          Cliente_Precio: this.FormFactura.controls.Cliente_Precio.value
        };

    this.detalleFactura.push(_factura);
    this.FormFactura.patchValue({
          Cliente_Cantidad_Numero: 0,
          Cliente_Descripcion: '',
          Cliente_Precio: 0
        });
  }
  public AgregarCiente(){

  }

 public  ComprobanteFiscal(event){

        this._servisFactura.CargarSecuencia(event.Comprobante_id, 2).subscribe((res: Tipo_Comprobante) => {

          this.FormFactura.patchValue({
            Comprobante_Secuencia: res[0].Comprobantes_Secuencia
          })

        });
  }

 public  LimpiarForm(){
    this.FormFactura.reset();
  }

 public RemoverItem(i: number) {
    document.getElementById('EliminacionItem').click();
      this.detalleFactura.splice(i);
  }



}
