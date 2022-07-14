/* tslint:disable:no-unused-variable */
import { async, ComponentFixture, TestBed } from '@angular/core/testing';
import { By } from '@angular/platform-browser';
import { DebugElement } from '@angular/core';

import { ListaProvedoresComponent } from './Lista-Provedores.component';

describe('ListaProvedoresComponent', () => {
  let component: ListaProvedoresComponent;
  let fixture: ComponentFixture<ListaProvedoresComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ListaProvedoresComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ListaProvedoresComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
