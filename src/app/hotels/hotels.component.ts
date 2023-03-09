import { Component } from '@angular/core';
import { Hotel } from '../hotel';
import { HotelFetchService } from '../hotel-fetch.service';

@Component({
  selector: 'app-hotels',
  templateUrl: './hotels.component.html',
  styleUrls: ['./hotels.component.css']
})
export class HotelsComponent {
  hotel?: Hotel[];
  search: any;

  constructor(private hotelService: HotelFetchService){}

  ngOnInit(): void{
    this.getAllHotels();    
  }

  getAllHotels(){
    this.hotelService.getllHotel().subscribe(data=>{
      this.hotel = data;
    })
  }


}
