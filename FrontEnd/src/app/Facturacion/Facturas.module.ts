import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { ListaFacturaComponent } from './ListaFactura/ListaFactura.component';

import {  ReactiveFormsModule } from '@angular/forms';
import { NgxPaginationModule } from 'ngx-pagination';
import { NgSelectModule } from '@ng-select/ng-select';
import { FacturarComponent } from './Facturar.component';
import { RouterModule } from '@angular/router';


@NgModule({
  imports: [
    CommonModule,
    ReactiveFormsModule,
    //FormsModule,
    NgSelectModule,
    NgxPaginationModule,
    RouterModule.forChild([
    {
      path: '',
      component: ListaFacturaComponent
    },
    {
      path:'agregarFactura',
      component: FacturarComponent
    }
  ])
  ],
  declarations: [
    ListaFacturaComponent,
    FacturarComponent
  ]
})
export class FacturasModule { }
