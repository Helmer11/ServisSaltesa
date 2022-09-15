
//modulos
import {  NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import {  NgSelectModule } from '@ng-select/ng-select';
import { RouterModule } from '@angular/router';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { HttpClientModule } from '@angular/common/http';
import {NgxPaginationModule} from 'ngx-pagination';
import { NgxMaskModule } from 'ngx-mask'


//componentes
import { ClientesComponent } from './Clientes.component';
import { ListaClientesComponent } from './lista-Clientes.component';
import { ClienteDetalleComponent } from './Cliente-detalle.component';

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    ReactiveFormsModule,
    NgSelectModule,
    NgxPaginationModule,
    NgxMaskModule.forRoot(),
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
  ],
  exports:[],
  declarations: [
    ClientesComponent,
    ListaClientesComponent,
    ClienteDetalleComponent,
  ]
})
export class ClienteModule { }
