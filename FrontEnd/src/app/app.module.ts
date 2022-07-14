import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';


import {AppRoutingModule } from '../app/app.routing'
import { LayoutComponent } from './shared/layout/layout.component';
import { FacturacionComponent } from './Facturacion/Facturacion.component';

import { HttpClientModule } from '@angular/common/http';
import { NgSelectModule } from '@ng-select/ng-select';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { ToastrModule } from 'ngx-toastr';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { CommonModule } from '@angular/common';
import { NgxMaskModule, IConfig } from 'ngx-mask'
import {NgxPaginationModule} from 'ngx-pagination';
import { ControlMessages } from './shared/control-mesages.component';


// Modulo

//Componente
import { AppComponent } from './app.component';
import { ClienteModule } from './Clientes/Cliente.module';
import { ProveedorModule } from './Provedores/Proveedores.module';
import { SharedModule } from './shared/shared.module';
import { RouterModule } from '@angular/router';



@NgModule({
  declarations: [
    AppComponent,
    FacturacionComponent,
    LayoutComponent,
    ControlMessages

   ],
  imports: [
    BrowserModule,
    CommonModule,
    AppRoutingModule,
    HttpClientModule,
    NgxPaginationModule,
    NgSelectModule,
    FormsModule,
    ReactiveFormsModule,
    BrowserAnimationsModule,
    ClienteModule,
    ProveedorModule,
    SharedModule,
    ToastrModule.forRoot({preventDuplicates: true,  positionClass: 'toast-top-right'}),
    //NgxMaskModule.forRoot(),

  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
