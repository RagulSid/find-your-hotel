import { HttpClient } from '@angular/common/http';
import { Component } from '@angular/core';
import { Hotel } from '../hotel';
import { HotelFetchService } from '../hotel-fetch.service';
import { LocationService } from '../services/location.service';

@Component({
  selector: 'app-hotels',
  templateUrl: './hotels.component.html',
  styleUrls: ['./hotels.component.css']
})
export class HotelsComponent {
  hotel: any = [];
  carddetails: any = [];
  search: any;
  review: any
  reviewId: any;
  location:any;
  idhotel: any = [];

  

  displayMaximizable: boolean = false;


  constructor(private hotelService: HotelFetchService, public _location: LocationService,private http:HttpClient){}

  ngOnInit(){
    this.getAllHotels();
    this._location.getLocation().subscribe((response: any)=>{
      console.log(response);
      this.location = response;
    })
  }

  getAllHotels(){
    this.hotelService.getllHotel().subscribe(data=>{
      this.hotel = data;
    })
    
  }

  cardClick(i: any){
    console.log(this.hotel[i].id);
    
    const c = parseInt(i);
    for(var j=0;i<this.hotel.length;j++){
      if(this.hotel[j].id === c){
        this.carddetails = Array(this.hotel[j]);
      }
      this.displayMaximizable = true;
    }
    this.reviewId = c;
    console.log(this.reviewId);
    
  }

  url= "http://localhost:8080/places/hotels/"
  postReview(i: any, review: any){
    console.log(i);
    console.log(review);

    this.idhotel = this.hotel[i];
    console.log(this.idhotel);
    
    this.idhotel.review = review;
      this.http.put(this.url+ i, this.idhotel).pipe().subscribe((res =>{}))
  }

  sortData(){
    this.hotel.sort((a:any, b:any) => a - b);
    this.getAllHotels()
  }

}
