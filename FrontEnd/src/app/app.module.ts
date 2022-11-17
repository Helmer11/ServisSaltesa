import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';


import {AppRoutingModule } from '../app/app.routing'
import { LayoutComponent } from './shared/layout/layout.component';


import { HttpClientModule } from '@angular/common/http';
import { NgSelectModule } from '@ng-select/ng-select';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { ToastrModule } from 'ngx-toastr';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { CommonModule } from '@angular/common';
import {NgxPaginationModule} from 'ngx-pagination';


// Modulo

//Componente
import { AppComponent } from './app.component';
import { ClienteModule } from './Clientes/Cliente.module';
import { ProveedorModule } from './Provedores/Proveedores.module';
import { SharedModule } from './shared/shared.module';
import { FacturasModule } from './Facturacion/Facturas.module';




@NgModule({
  declarations: [
    AppComponent,
    LayoutComponent,
    //LoadingComponent,

   ],
  imports: [
    //BrowserModule,
    //CommonModule,
    AppRoutingModule,
    HttpClientModule,
    NgxPaginationModule,
    NgSelectModule,
    FormsModule,
    ReactiveFormsModule,
    BrowserAnimationsModule,
    ClienteModule,
    ProveedorModule,
    FacturasModule,
    SharedModule,
    ToastrModule.forRoot({preventDuplicates: true,  positionClass: 'toast-top-right'}),
    //NgxMaskModule.forRoot(),

  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
