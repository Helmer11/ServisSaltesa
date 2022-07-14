import { Routes, RouterModule } from '@angular/router';
import { ClientesComponent } from './Clientes/Clientes.component';
import { ListaClientesComponent } from './Clientes/lista-Clientes.component';
import { ListaProvedoresComponent } from './Provedores/Lista-Provedores.component';
import { ProvedoresComponent } from './Provedores/Provedores.component';
import { FacturacionComponent } from './Facturacion/Facturacion.component';
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
          path: 'Facturacion',
          component: FacturacionComponent
        },
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
