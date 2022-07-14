/* tslint:disable:no-unused-variable */

import { TestBed, async, inject } from '@angular/core/testing';
import { FacturacionService } from './Facturacion.service';

describe('Service: Facturacion', () => {
  beforeEach(() => {
    TestBed.configureTestingModule({
      providers: [FacturacionService]
    });
  });

  it('should ...', inject([FacturacionService], (service: FacturacionService) => {
    expect(service).toBeTruthy();
  }));
});
