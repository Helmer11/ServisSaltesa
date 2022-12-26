import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup } from '@angular/forms';
import { Comprobante } from '../models/Comprobante';
import { ComprobanteService } from './Comprobante.service';

@Component({
  selector: 'app-lista-comprobantes',
  templateUrl: './lista-comprobantes.component.html',
  styleUrls: ['./lista-comprobantes.component.scss']
})
export class ListaComprobantesComponent implements OnInit {


  formComprob: FormGroup;
  loading: boolean = false;
  listaComprobante: Comprobante[] =[];


constructor( private _formB: FormBuilder,private _servis: ComprobanteService) { }

ngOnInit() {
  this.getform();
  this.getListadoComprobante();

}

getform(){
  this.formComprob = this._formB.group({})
}

getListadoComprobante(){
    this.loading = true
    setTimeout(() => {
      this._servis.getComprobanteEmpresa(2).subscribe((res: Comprobante[]) =>{
        this.listaComprobante = res as Comprobante[];
      });
      this.loading = false;
    }, 2000);

}




}
