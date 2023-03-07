import { TestBed } from '@angular/core/testing';

import { HotelFetchService } from './hotel-fetch.service';

describe('HotelFetchService', () => {
  let service: HotelFetchService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(HotelFetchService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
