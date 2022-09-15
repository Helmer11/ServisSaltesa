import { CommonModule } from "@angular/common";
import { HttpClientModule } from "@angular/common/http";
import { NgModule } from "@angular/core";
import { FormsModule, ReactiveFormsModule } from "@angular/forms";
import { RouterModule } from "@angular/router";
import { NgSelectModule } from "@ng-select/ng-select";
import { NgxPaginationModule } from "ngx-pagination";
import { ListaProvedoresComponent } from "./Lista-Provedores.component";
import { ProvedoresComponent } from "./Provedores.component";
import { NgxMaskModule } from 'ngx-mask';
import { ProveedorDetalleComponent } from "./Proveedores-detalle.component";
import { BrowserAnimationsModule } from "@angular/platform-browser/animations";
import { BrowserModule } from "@angular/platform-browser";


@NgModule({
  imports:[
    CommonModule,
    FormsModule,
    ReactiveFormsModule,
    NgSelectModule,
    NgxPaginationModule,
    NgxMaskModule.forRoot(),
    RouterModule.forChild([
      {
        path: '',
        component: ListaProvedoresComponent
      },
      {
        path: 'Provdetalle/:id',
        component: ProveedorDetalleComponent
      },
      {
        path: 'AgregarProveedor',
        component: ProvedoresComponent
      },
    ]),

  ],
  declarations:[
    ProvedoresComponent,
    ListaProvedoresComponent,
    ProveedorDetalleComponent,
  ],
  exports:[]
})

export class ProveedorModule {}
