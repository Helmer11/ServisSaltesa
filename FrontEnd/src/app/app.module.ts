
import { NgModule } from '@angular/core';



import { LayoutComponent } from './shared/layout/layout.component';

// Modulo
import { HttpClientModule } from '@angular/common/http';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { NgSelectModule } from '@ng-select/ng-select';
import { ToastrModule } from 'ngx-toastr';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import {NgxPaginationModule} from 'ngx-pagination';
import {AppRoutingModule } from '../app/app.routing'



//Componente
import { AppComponent } from './app.component';
import { ClienteModule } from './Clientes/Cliente.module';
import { ProveedorModule } from './Provedores/Proveedores.module';
import { SharedModule } from './shared/shared.module';
import { FacturasModule } from './Facturacion/Facturas.module';
import { ComprobantesModule } from './Comprobantes/Comprobantes.module';




@NgModule({
  declarations: [
    AppComponent,
    LayoutComponent,
   //LoadingComponent
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
    //ComprobantesModule,
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
