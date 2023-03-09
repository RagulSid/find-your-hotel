import { Pipe, PipeTransform } from '@angular/core';

@Pipe({
  name: 'search'
})
export class SearchPipe implements PipeTransform {

  transform(item: any, args?: any): any {
    if(!args){
      return item;
    }
    
    return item.filter((hotels: { hotelName: any; location: any; description: any;})=>
       hotels.hotelName.indexOf(args) > -1 
    || hotels.location.indexOf(args) > -1 
    || hotels.description.indexOf(args) > -1);
  }

}
