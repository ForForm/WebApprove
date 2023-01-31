import { NgxMaskModule } from 'ngx-mask';
import { MatTooltipModule } from '@angular/material/tooltip';
import { BrowserModule } from '@angular/platform-browser';
import { NgModule,LOCALE_ID } from '@angular/core';
import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { MatSelectModule } from '@angular/material/select';
import { HashLocationStrategy, LocationStrategy } from '@angular/common';
// tslint:disable-next-line:max-line-length
// import { MatStepperModule, MatAutocompleteModule, MatDividerModule, MatRadioModule, MatBottomSheetModule, MatBadgeModule, MatDatepickerModule, MatGridListModule, MatSnackBarModule, MatCheckboxModule, MatTabsModule, MatProgressSpinnerModule, MatMenuModule, MatDialogModule, MatButtonModule, MatToolbarModule, MatSidenavModule, MatIconModule, MatListModule, MatTableModule, MatPaginatorModule, MatSortModule, MatNativeDateModule } from '@angular/material';

import {MatNativeDateModule} from '@angular/material/core';

import {MatListModule} from '@angular/material/list';
import {MatIconModule} from '@angular/material/icon';
import {MatSidenavModule} from '@angular/material/sidenav';
import {MatToolbarModule} from '@angular/material/toolbar';
import {MatMenuModule} from '@angular/material/menu';
import {MatButtonModule} from '@angular/material/button';
import {MatProgressSpinnerModule} from '@angular/material/progress-spinner';
import {MatBadgeModule} from '@angular/material/badge';
import {MatBottomSheetModule} from '@angular/material/bottom-sheet';
import {MatRadioModule} from '@angular/material/radio';
import {MatDividerModule} from '@angular/material/divider';
import {MatAutocompleteModule} from '@angular/material/autocomplete';
import {MatStepperModule} from "@angular/material/stepper";
import {MatDialogModule} from  "@angular/material/dialog";
import {MatPaginatorModule} from '@angular/material/paginator';
import {MatSnackBarModule} from '@angular/material/snack-bar';
import {MatTableModule} from '@angular/material/table';
import {MatSortModule} from '@angular/material/sort';
import {MatDatepickerModule} from '@angular/material/datepicker';
import {MatGridListModule} from '@angular/material/grid-list';
import {MatCheckboxModule} from '@angular/material/checkbox';
import {MatTabsModule} from '@angular/material/tabs';

import { MatExpansionModule } from '@angular/material/expansion';
import { MainNavComponent } from './main-nav/main-nav.component';
import { LayoutModule } from '@angular/cdk/layout';
import { HomeComponent } from './components/home/home.component';
import { NotFoundComponent } from './components/not-found/not-found.component';
import { MatInputModule } from '@angular/material/input';
import { MatCardModule } from '@angular/material/card';
import { DragDropModule } from '@angular/cdk/drag-drop';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { HttpClientModule } from '@angular/common/http';
import { LoginComponent } from './components/login/login.component';
import { WaitComponent } from './components/wait/wait.component';
// import { SnowfModule } from 'ngx-snowf';
import { AdminComponent } from './components/admin/admin.component';
import { MainComponent } from './components/main/main.component';
import { OutofofficeComponent, DialogApprove, RejectApprove, FormLayout } from './components/outofoffice/outofoffice.component';
import { AuthGuard } from './components/auth/auth.guard';
import { AuthService } from './services/auth.service';
import { RepasswordComponent } from './components/repassword/repassword.component';
import { LicenseComponent } from './license/license.component';
import { DemandtrackComponent } from './components/demandtrack/demandtrack.component';
import { InandoutComponent } from './components/inandout/inandout.component';
import { MailApproveComponent } from './components/mail-approve/mail-approve.component';
import { SafePipe } from './components/outofoffice/sanitize-html.pipe';
import { SafeResourceScript } from './components/outofoffice/sanitize-script.pipe';
import { NgxPrintModule } from 'ngx-print';
import { DelegationComponent } from './components/delegation/delegation.component';
import { ConfirmationDialog } from './components/confirmation/confirmation-dialog.component';
import { MatTableExporterModule } from 'mat-table-exporter';
import { TextMaskModule } from '../../node_modules/angular2-text-mask';
import { ShiftComponent } from './components/shift/shift.component';
import { DocumentComponent } from './components/document/document.component';
import { MonthlyCalcComponent } from './components/monthly-calc/monthly-calc.component';
import {NgxMaterialTimepickerModule} from 'ngx-material-timepicker';
import { FileUploadComponent } from "./components/document/file-upload.component";
import { ListComponent } from "./components/document/list.component";
import { ViewComponent } from "./components/document/view.component";
import { PooluserService } from './services/pooluser.service';
import {MediaMatcher} from '@angular/cdk/layout'; 
import { platformBrowserDynamic } from '@angular/platform-browser-dynamic';


@NgModule({
  declarations: [
    SafeResourceScript,
    SafePipe,
    DialogApprove,
    RejectApprove,
    FormLayout,
    AppComponent,
    MainNavComponent,
    HomeComponent,
    NotFoundComponent,
    LoginComponent,
    WaitComponent,
    AdminComponent,
    MainComponent,
    OutofofficeComponent,
    RepasswordComponent,
    LicenseComponent,
    DemandtrackComponent,
    InandoutComponent,
    DocumentComponent,
    MailApproveComponent,
    DelegationComponent,
    FileUploadComponent,
    ListComponent,
    ConfirmationDialog,
    ShiftComponent,
    MonthlyCalcComponent,
    ViewComponent
  ],
  imports: [
    // SnowfModule,
    // FlexLayoutModule,
    TextMaskModule,
    NgxMaterialTimepickerModule,
    MatTooltipModule,
    FormsModule,
    NgxMaskModule.forRoot(),
    MatTableExporterModule,
    NgxPrintModule,
    MatSelectModule,
    MatExpansionModule,
    MatStepperModule,
    MatAutocompleteModule,
    MatDividerModule,
    MatRadioModule,
    MatBottomSheetModule,
    MatBadgeModule,
    MatDatepickerModule,
    MatNativeDateModule,
    MatGridListModule,
    MatSnackBarModule,
    MatProgressSpinnerModule,
    MatTabsModule,
    MatMenuModule,
    MatDialogModule,
    DragDropModule,
    MatCardModule,
    MatInputModule,
    MatCheckboxModule,
    MatButtonModule,
    BrowserModule,
    AppRoutingModule,
    BrowserAnimationsModule,
    LayoutModule,
    MatToolbarModule,
    MatSidenavModule,
    MatIconModule,
    MatListModule,
    MatTableModule,
    MatPaginatorModule,
    MatSortModule,
    FormsModule,
    ReactiveFormsModule,
    HttpClientModule, 
  ],
  entryComponents: [

    WaitComponent,
    MainComponent,
    DialogApprove,
    RejectApprove,
    FormLayout,
    ConfirmationDialog,
    ListComponent,
    ViewComponent
  ],

  providers: [
    MediaMatcher,
    PooluserService,
    AuthService, AuthGuard,
    MatDatepickerModule,
    // MatNativeDateModule,
    // localhost
    // 192.168.205.21:2019 ---file
    // 192.168.1.14:1999 ---test
    // 172.30.68.20:1997 --dedeman
    // 192.168.110.21:2016 ---toyota => http://pdks:2016
    // 10.34.1.29:2020 ---barkodes
    // 10.34.1.102 ---barkodes
    // 192.168.3.24:2020 --- sampa 
    // http://10.128.5.20:2020/   
    // 9.1.1.204:1996 ---Feyyaz 2.12.2020
    // https://pdks.sgairport.com:2020 airport
    // http://localhost/
    // http://9.1.1.204:2020/
    // https://shift.kigili.com.tr 
    // pdks.dincerlojistik.com:1996/
    // 192.168.1.247:2021/
    // 192.168.1.37:4567
    // http://10.10.251.55:2021/BcsApp/
    // http://uzaktancalisma.ipekyol.com.tr/BcsApp/        
    // http://localhost/BcsApp/
    // 10.84.8.28:2021
    // { provide: 'apiUrl', useValue: 'http://www.vigpdks.com/BcsApp/' },
    // { provide: 'apiUrl', useValue: 'http://uzaktancalisma.ipekyol.com.tr/BcsApp/' },
      // { provide: 'apiUrl', useValue: 'http://10.84.8.28:2021/BcsApp/' },
      { provide: 'apiUrl', useValue: 'http://localhost/BcsApp/' },
    // { provide: 'apiUrl', useValue: 'http://192.168.0.170/BcsApp/' },
    // { provide: 'apiUrl', useValue: 'http://uzaktancalisma.ipekyol.com.tr/BcsApp/' },
    // { provide: 'apiUrl', useValue: 'http://10.84.8.28:2021/BcsApp/' },
    // { provide: 'apiUrl', useValue: 'http://uzaktancalisma.ipekyol.com.tr/BcsApp/' },
    // { provide: 'apiUrl', useValue: 'http://10.61.1.76:1996/BcsApp/' },
    // { provide: 'apiUrl', useValue: 'http://pdks:2016/BcsApp/' },
       { provide: LocationStrategy, useClass: HashLocationStrategy }
    //  { provide: LOCALE_ID, useValue: 'tr-TR'}
  ],
    
  bootstrap: [AppComponent]
})
export class AppModule { }  

// platformBrowserDynamic().bootstrapModule(AppModule)
//   .catch(err => console.error(err));