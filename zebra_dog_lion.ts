//Breaking Barriers #1
//Breaking Barriers is a mobile and web app designed to connect users with various resources to help them break down barriers, both personal and organizational.

// Typescript imports
import { Injectable, NgModule } from "@angular/core";
import { RouterModule, Routes } from "@angular/router";
import { FormsModule, ReactiveFormsModule } from "@angular/forms";
import { HttpClientModule } from "@angular/common/http";

// Components
import { HomePageComponent } from "./pages/home-page/home-page.component";
import { ResourcePageComponent } from "./pages/resource-page/resource-page.component";
import { NavBarComponent } from "./components/nav-bar/nav-bar.component";
import { ResourceListComponent } from "./components/resource-list/resource-list.component";
import { ResourceFormComponent } from "./components/resource-form/resource-form.component";

// Services
import { ResourceService } from "./services/resource.service";

// Routes
const routes: Routes = [
  { path: "", component: HomePageComponent },
  { path: "resource", component: ResourcePageComponent },
];

@NgModule({
  imports: [
    RouterModule.forRoot(routes),
    HttpClientModule,
    FormsModule,
    ReactiveFormsModule,
  ],
  declarations: [
    HomePageComponent,
    ResourcePageComponent,
    NavBarComponent,
    ResourceListComponent,
    ResourceFormComponent,
  ],
  providers: [ResourceService],
  exports: [RouterModule],
})
export class AppRoutingModule {}

//Breaking Barriers #2
//The app will allow users to search through a database of resources to find help with topics such as mental health, career development, education, and more.

// Typescript imports
import { NgModule } from "@angular/core";
import { FormsModule, ReactiveFormsModule } from "@angular/forms";
import { HttpClientModule } from "@angular/common/http";

// Components
import { ResourceListComponent } from "./components/resource-list/resource-list.component";
import { ResourceFormComponent } from "./components/resource-form/resource-form.component";

// Services
import { ResourceService } from "./services/resource.service";

@NgModule({
  imports: [FormsModule, ReactiveFormsModule, HttpClientModule],
  declarations: [
    ResourceListComponent,
    ResourceFormComponent,
  ],
  providers: [ResourceService],
  exports: [],
})
export class ResourcesModule {}

//Breaking Barriers #3
//The app will feature a simple and user-friendly navigation to make it easy for users to find the help they need.

// Typescript imports
import { Injectable, NgModule } from "@angular/core";
import { RouterModule, Routes } from "@angular/router";

// Components
import { HomePageComponent } from "./pages/home-page/home-page.component";
import { NavBarComponent } from "./components/nav-bar/nav-bar.component";

// Routes
const routes: Routes = [{ path: "", component: HomePageComponent }];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  declarations: [HomePageComponent, NavBarComponent],
  exports: [RouterModule],
})
export class AppRoutingModule {}

//Breaking Barriers #4
//Users will be able to create accounts and save resources on their personalized dashboard.

// Typescript imports
import { Injectable, NgModule } from "@angular/core";
import { RouterModule, Routes } from "@angular/router";
import { FormsModule, ReactiveFormsModule } from "@angular/forms";
import { HttpClientModule } from "@angular/common/http";

// Components
import { HomePageComponent } from "./pages/home-page/home-page.component";
import { ResourcePageComponent } from "./pages/resource-page/resource-page.component";
import { NavBarComponent } from "./components/nav-bar/nav-bar.component";
import { DashboardComponent } from "./pages/dashboard/dashboard.component";

// Services
import { ResourceService } from "./services/resource.service";

// Routes
const routes: Routes = [
  { path: "", component: HomePageComponent },
  { path: "resource", component: ResourcePageComponent },
  { path: "dashboard", component: DashboardComponent },
];

@NgModule({
  imports: [
    RouterModule.forRoot(routes),
    HttpClientModule,
    FormsModule,
    ReactiveFormsModule,
  ],
  declarations: [
    HomePageComponent,
    ResourcePageComponent,
    DashboardComponent,
    NavBarComponent
  ],
  providers: [ResourceService],
  exports: [RouterModule],
})
export class AppRoutingModule {}

//Breaking Barriers #5
//The app will feature a messaging system so users can connect with one another and share stories.

// Typescript imports
import { NgModule } from "@angular/core";
import { FormsModule, ReactiveFormsModule } from "@angular/forms";
import { HttpClientModule } from "@angular/common/http";

// Components
import { MessageListComponent } from "./components/message-list/message-list.component";
import { MessageFormComponent } from "./components/message-form/message-form.component";

// Services
import { MessageService } from "./services/message.service";

@NgModule({
  imports: [FormsModule, ReactiveFormsModule, HttpClientModule],
  declarations: [
    MessageListComponent,
    MessageFormComponent
  ],
  providers: [MessageService],
  exports: [],
})
export class MessagesModule {}