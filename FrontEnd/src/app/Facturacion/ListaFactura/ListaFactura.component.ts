import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { FacturacionService } from '../Facturar.service';
import { Facturas_Trans } from '../../models/Factura_Trans';

@Component({
  selector: 'app-ListaFactura',
  templateUrl: './ListaFactura.component.html',
  styleUrls: ['./ListaFactura.component.scss']
})
export class ListaFacturaComponent implements OnInit {

  listafactForm!: FormGroup
  facturaLista: Facturas_Trans[] =[];
  loading: boolean = false;
  cantidaRegistro: number;
  linea: number;
  ultimaLinea: number;


  constructor(private _formB: FormBuilder, private _fact: FacturacionService) { }

  ngOnInit() {
    this.getform();
  this.getListaFactura();

  }

  getform(){
    this.listafactForm = this._formB.group({
      Nombre_cliente: ['', Validators.required]
    })
  }



  getListaFactura() {
    this.loading = true;
    setTimeout(() => {
      this._fact.CargarListaFactura().subscribe(( res: Facturas_Trans[]) =>{
           this.facturaLista = res;

               if ( this.facturaLista.length > 0 ) {
                    this.cantidaRegistro = this.facturaLista[0].Cantidad_Registros;
                    this.linea = this.facturaLista[0].linea;
                    this.ultimaLinea = this.facturaLista[0].ultima_Linea;
               }
      });

      this.loading = false;
    }, 3000);
  }




}
