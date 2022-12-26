import { Component, OnInit } from '@angular/core';
import { FormGroup, FormBuilder } from '@angular/forms';
import { Comprobante } from '../../models/Comprobante';

@Component({
  selector: 'app-DetalleComprobantes',
  templateUrl: './Detalle-Comprobantes.component.html',
  styleUrls: ['./Detalle-Comprobantes.component.scss']
})
export class DetalleComprobantesComponent implements OnInit {

    formComprob: FormGroup;
    loading: boolean = false;
    listaComprobante: Comprobante[] =[];


  constructor( private _formB: FormBuilder) { }

  ngOnInit() {
    this.getform();

  }


  getform(){
    this.formComprob = this._formB.group({})
  }

}
