import { HttpClient } from '@angular/common/http';
import { Component } from '@angular/core';
import { flush } from '@angular/core/testing';
import { MessageService } from 'primeng/api';
import { Hotel } from '../hotel';
import { HotelFetchService } from '../services/hotel-fetch.service';
import { LocationService } from '../services/location.service';


@Component({
  selector: 'app-hotels',
  templateUrl: './hotels.component.html',
  styleUrls: ['./hotels.component.css'],
  providers: [MessageService]

})
export class HotelsComponent {
  hotel: any = [];
  carddetails: any = [];
  search: any;
  review: any
  reviewId: any;
  location:any;
  idhotel: any = [];
  hotelrating= 0;


  

  displayMaximizable: boolean = false;


  constructor(private messageService: MessageService,private hotelService: HotelFetchService, public _location: LocationService,private http:HttpClient){}

  ngOnInit(){
    this.getAllHotels();
    this._location.getLocation().subscribe((response: any)=>{
      console.log(response);
      this.location = response;
    })
  }

  showSuccess() {
    this.messageService.add({severity:'success', summary: 'Success', detail: 'Review Posted sucessfully'});
  }

  getAllHotels(){
    this.hotelService.getllHotel().subscribe(data=>{
      this.hotel = data;
    })
  }

  key: string ='rating';
  reverse:boolean = false;
  sort(key:string){
    key = key;
    this.reverse =!this.reverse;
  }

  key: string ='rating';
  reverse:boolean = false;
  sort(key:string){
    key = key;
    this.reverse =!this.reverse;
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

    this.showSuccess();
    setTimeout(()=>{                           // <<<---using ()=> syntax
      this.displayMaximizable = false;
  }, 1000);
  }

  sortData(){
    this.hotel.sort((a:any, b:any) => a - b);
    this.getAllHotels()
  }

}
