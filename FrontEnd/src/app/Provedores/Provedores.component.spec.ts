/* tslint:disable:no-unused-variable */
import { async, ComponentFixture, TestBed } from '@angular/core/testing';
import { By } from '@angular/platform-browser';
import { DebugElement } from '@angular/core';

import { ProvedoresComponent } from './Provedores.component';

describe('ProvedoresComponent', () => {
  let component: ProvedoresComponent;
  let fixture: ComponentFixture<ProvedoresComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ProvedoresComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ProvedoresComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
