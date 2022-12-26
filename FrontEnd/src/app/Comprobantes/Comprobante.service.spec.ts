/* tslint:disable:no-unused-variable */

import { TestBed, async, inject } from '@angular/core/testing';
import { ComprobanteService } from './Comprobante.service';

describe('Service: Comprobante', () => {
  beforeEach(() => {
    TestBed.configureTestingModule({
      providers: [ComprobanteService]
    });
  });

  it('should ...', inject([ComprobanteService], (service: ComprobanteService) => {
    expect(service).toBeTruthy();
  }));
});
