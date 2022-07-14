import { Component, NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { ClientesComponent } from './Clientes.component';
import { ListaClientesComponent } from './lista-Clientes.component';
import { BrowserModule } from '@angular/platform-browser';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import {  NgSelectModule } from '@ng-select/ng-select';
import { RouterModule } from '@angular/router';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { HttpClientModule } from '@angular/common/http';
import { ClienteDetalleComponent } from './Cliente-detalle.component';
import {NgxPaginationModule} from 'ngx-pagination';
import { NgxMaskModule } from 'ngx-mask'


@NgModule({
  imports: [
    CommonModule,
    HttpClientModule,
    FormsModule,
    NgxPaginationModule,
    ReactiveFormsModule,
    NgSelectModule,
    RouterModule.forChild([
      {
        path: '',
        component: ListaClientesComponent
      },
      {
        path: 'detalle/:id',
        component: ClienteDetalleComponent
      },
      {
        path: 'AgregarCliente',
        component: ClientesComponent
      },
    ]),
    NgxMaskModule.forRoot(),
  ],
  exports:[],

  declarations: [
    ClientesComponent,
    ListaClientesComponent,
    ClienteDetalleComponent
  ]
})
export class ClienteModule { }
