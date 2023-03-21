import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { NavBarComponent } from './nav-bar/nav-bar.component';
import { LoginComponent } from './login/login.component';
import { SignupComponent } from './signup/signup.component';
import { HomeComponent } from './home/home.component';
import { HotelsComponent } from './hotels/hotels.component';

import { HttpClient, HttpClientModule } from '@angular/common/http'
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { SearchPipe } from './services/search.pipe';

import { DialogModule } from 'primeng/dialog';
import { ButtonModule } from 'primeng/button';

import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { ReviewsComponent } from './reviews/reviews.component';
import {ToastModule} from 'primeng/toast';
import {RippleModule} from 'primeng/ripple';
import { Ng2OrderModule } from 'ng2-order-pipe';
import { NgbModule } from '@ng-bootstrap/ng-bootstrap';
<<<<<<< HEAD


=======
>>>>>>> 4e221acb177468677efffbfb08fcd936c878259a




@NgModule({
  declarations: [
    AppComponent,
    NavBarComponent,
    LoginComponent,
    SignupComponent,
    HomeComponent,
    HotelsComponent,
    SearchPipe,
    ReviewsComponent,
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    HttpClientModule,
    FormsModule,
    DialogModule,
    ButtonModule,
    BrowserAnimationsModule,
    FormsModule,
    ToastModule,
    RippleModule,
    Ng2OrderModule,
<<<<<<< HEAD
    NgbModule,
    ReactiveFormsModule,
=======
    NgbModule
>>>>>>> 4e221acb177468677efffbfb08fcd936c878259a
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
