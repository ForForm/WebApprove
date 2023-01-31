import { TestBed } from '@angular/core/testing';

import { PooluserService } from './pooluser.service';

describe('PooluserService', () => {
  beforeEach(() => TestBed.configureTestingModule({}));

  it('should be created', () => {
    const service: PooluserService = TestBed.get(PooluserService);
    expect(service).toBeTruthy();
  });
});
