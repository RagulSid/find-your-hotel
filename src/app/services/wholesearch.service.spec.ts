import { TestBed } from '@angular/core/testing';

import { WholesearchService } from './wholesearch.service';

describe('WholesearchService', () => {
  let service: WholesearchService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(WholesearchService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
