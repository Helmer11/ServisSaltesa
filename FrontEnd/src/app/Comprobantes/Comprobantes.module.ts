import { RouterModule } from '@angular/router';
import { CommonModule } from "@angular/common";
import { NgModule } from "@angular/core";
import { FormsModule, ReactiveFormsModule } from "@angular/forms";
import { NgSelectModule } from "@ng-select/ng-select";
import { NgxPaginationModule } from "ngx-pagination";
import { ListaComprobantesComponent } from './lista-comprobantes.component';
import { DetalleComprobantesComponent } from './ListaComprobante/Detalle-Comprobantes.component';



@NgModule({

    imports:[
        CommonModule,
        FormsModule,
        ReactiveFormsModule,
        NgSelectModule,
        NgxPaginationModule,
        RouterModule.forChild([
            {
                path:'',
                component: ListaComprobantesComponent
            },
            {
            path: 'detalle/:id',
            component: DetalleComprobantesComponent

            }
        ])
    ],
    declarations: [
      ListaComprobantesComponent,
    DetalleComprobantesComponent
    ],
    exports:[

    ],

})

export class ComprobantesModule { }
