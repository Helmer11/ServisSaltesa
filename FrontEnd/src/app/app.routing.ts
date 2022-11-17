
import { Routes, RouterModule } from '@angular/router';
import { ListaClientesComponent } from './Clientes/lista-Clientes.component';

import { LayoutComponent } from './shared/layout/layout.component';
import { NgModule } from '@angular/core';

export const routes: Routes = [
  {
    path: "",
    component: LayoutComponent,
      children: [
        {
          path: 'Lista',
          component: ListaClientesComponent,
        },
        {
          path: 'listaClientes',
          loadChildren: '../app/Clientes/Cliente.module#ClienteModule',
        },
        {
          path: 'Cliente',
          loadChildren: '../app/Clientes/Cliente.module#ClienteModule',
          //component: ClientesComponent
        },
        {
          path: 'Provedores',
          loadChildren: '../app/Provedores/Proveedores.module#ProveedorModule',
          //component: ProvedoresComponent
        },
        {
          path: 'listaProvedores',
          loadChildren: "../app/Provedores/Proveedores.module#ProveedorModule",
          //component: ListaProvedoresComponent
        },
        {
          path: 'ListaFacturacion',
          loadChildren: "../app/Facturacion/Facturas.module#FacturasModule"
          //component: ListaFacturaComponent
        },
        // {
        //   path: 'Facturacion',
        //   loadChildren: "../app/Facturacion/Facturas.module#FacturasModule"
        //   //component: FacturarComponent
        // },
      ]
   },
   {
    path: '**',
    redirectTo: 'listaClientes',
    pathMatch: 'full'
  },
];
@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports:[RouterModule],
  declarations: []
})

export class AppRoutingModule {}
