import { HttpClient, HttpClientModule } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { Hotel } from './hotel';

@Injectable({
  providedIn: 'root'
})
export class HotelFetchService {

  URL = "http://localhost:8080/places/hotels";
  constructor(private httpClient: HttpClient) {}

  getllHotel(): Observable<Hotel[]>{
    return this.httpClient.get<Hotel[]>(`${this.URL}`);
  }

  postReview(hotel?: Hotel): Observable<Object>{
   return this.httpClient.post<Object>(`${this.URL}`, hotel);
  }
}
