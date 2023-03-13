import { Component } from '@angular/core';
import { Hotel } from '../hotel';
import { HotelFetchService } from '../hotel-fetch.service';

@Component({
  selector: 'app-hotels',
  templateUrl: './hotels.component.html',
  styleUrls: ['./hotels.component.css']
})
export class HotelsComponent {
  hotel: any = [];
  carddetails: any = [];
  search: any;

  displayMaximizable: boolean = false;


  constructor(private hotelService: HotelFetchService){}

  ngOnInit(): void{
    this.getAllHotels();    
  }

  getAllHotels(){
    this.hotelService.getllHotel().subscribe(data=>{
      this.hotel = data;
    })
  }

  cardClick(i: any){
    const c = parseInt(i);
    for(var j=0;i<this.hotel.length;j++){
      if(this.hotel[j].id == c){
        this.carddetails = Array(this.hotel[j]);
      }
      this.displayMaximizable = true;
    }


  }


}
