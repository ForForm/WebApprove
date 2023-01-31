import { Observable, BehaviorSubject } from 'rxjs';
import {
  CUSTOM_ELEMENTS_SCHEMA,
  Component,
  OnInit,
  ViewChild,
  ChangeDetectorRef,
  Inject,
  EventEmitter,
  Output,
  Input,
  NgModule
} from "@angular/core";

import { FileUploadComponent } from "../document/file-upload.component";
import { PooluserService } from "src/app/services/pooluser.service";
import { FormControl } from "@angular/forms";
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { STEPPER_GLOBAL_OPTIONS } from '@angular/cdk/stepper';
import { MatExpansionModule } from '@angular/material/expansion';
import {ConfirmationDialog} from '../confirmation/confirmation-dialog.component';
import {MatDialog,MatDialogRef} from  "@angular/material/dialog";
import {MatSort} from '@angular/material/sort';
import {MatPaginator} from '@angular/material/paginator';
import {MatTableDataSource} from '@angular/material/table';
import {MatSnackBar, MatSnackBarConfig} from '@angular/material/snack-bar';
import { SelectionModel } from "@angular/cdk/collections";
import {
  MAT_MOMENT_DATE_FORMATS,
  MomentDateAdapter,
  MAT_MOMENT_DATE_ADAPTER_OPTIONS
} from "@angular/material-moment-adapter";
import {
  DateAdapter,
  MAT_DATE_FORMATS,
  MAT_DATE_LOCALE
} from "@angular/material/core";
import { AuthService } from "../../services/auth.service";
// import { UploadService } from "../../services/upload.service";
import { formatDate } from '@angular/common';
import { ListComponent } from '../document/list.component';
import { ViewComponent } from "./view.component";
import {MatDatepicker} from '@angular/material/datepicker';

import * as _moment from 'moment';
 import {  Moment} from 'moment';
const moment =  _moment;

export interface UserElement {
  id: number;
  username: string;
  name: string;
  donem: number;
  depart: string;
  useServiceArrival: boolean,
  serviceArrival: string,
  useServiceGoing: boolean,
  serviceGoing: string
}

export const MY_FORMATS = {
  parse: {
    dateInput: 'MM/YYYY',
  },
  display: {
    dateInput: 'MM/YYYY',
    monthYearLabel: 'MMM YYYY',
    dateA11yLabel: 'LL',
    monthYearA11yLabel: 'MMMM YYYY',
  },
};

@NgModule({
  declarations: [],
  imports: [FileUploadComponent],
  exports: [],
  schemas: [CUSTOM_ELEMENTS_SCHEMA],
  providers: []
})

@Component({

  selector: 'app-demandtrack',
  templateUrl: './document.component.html',
  styleUrls: ['./document.component.css'],
  providers: [
    // {provide: DateAdapter, useClass: OutofofficeComponent},
    { provide: STEPPER_GLOBAL_OPTIONS, useValue: { showError: true } },
    {
      provide: DateAdapter,
      useClass: MomentDateAdapter,
      deps: [MAT_DATE_LOCALE, MAT_MOMENT_DATE_ADAPTER_OPTIONS],
    },

    { provide: MAT_DATE_FORMATS, useValue: MY_FORMATS }
  ]
})





export class DocumentComponent implements OnInit {
 
  form: FormGroup;
  prmfmYemek = false;
  prmfmServis = false;

  user: string;
  userType: string;
  usrData = [];
  dataSource: MatTableDataSource<any> | null;
  @ViewChild("usrPaginator", { static: true }) usrPaginator: MatPaginator;
  @ViewChild("usrSorter", { static: true }) usrSort: MatSort;
 
  newDate = new FormControl(moment());
  @Input() columns = ['idno', 'prsicil', 'adi', 'tipi', 'tarih', 'aciklama', 'dosya', 'aksiyon'];
  pageIndex: number = 0;
  documentTypes = [];
  selectedRowIndex=0;
  docUserAuth=false;
  // icMoreHoriz = icMoreHoriz;
  // outofoffice = [
  //   { id: 1, value: "Günlük İzin", color: "gray", auth: false, matBadge: 0 },
  //   { id: 2, value: "Saatlik İzin", color: "success", auth: false, matBadge: 0 },
  //   { id: 3, value: "Fazla Mesai", color: "warn", auth: false, matBadge: 0 }, 
  //   { id: 4, value: "Vardiya", color: "orange", auth: false, matBadge: 0 },
  //   { id: 5, value: "Hareketler", color: "turquaz", auth: false, matBadge: 0 }
  // ];
  constructor(
    private _formBuilder: FormBuilder,
    private authService: AuthService,
    // private uploadService: UploadService,
    private poolUserService: PooluserService,
    public dialog: MatDialog,
    private snackBar: MatSnackBar,
    private adapter: DateAdapter<any>
  ) { }

  arrayBuffer: any;
  file: File;

  turkishCulture() {
    this.adapter.setLocale("tr");
  }
  


  chosenYearHandler(normalizedYear: Moment) {
    // dateNew = 
    const ctrlValue = this.newDate.value;
    ctrlValue.year(normalizedYear.year());
    // this.date.setValue(ctrlValue);
    this.form.patchValue({Date:ctrlValue})
  }

  chosenMonthHandler(normalizedMonth: Moment, datepicker: MatDatepicker<Moment>) {
    const ctrlValue = this.form.value.Date;
    ctrlValue.month(normalizedMonth.month());
    // this.date.setValue(ctrlValue);
    console.log(ctrlValue);
    // this.form.value.Date=ctrlValue;
    this.form.patchValue({Date:ctrlValue})
    // this.form.value.Date=ctrlValue;
    datepicker.close();
  }

 

  ngOnInit() {


    this.authService.getUserName.subscribe(
      goodResult => (this.user = goodResult)
    );
    this.authService.getUserType.subscribe(
      goodResult => (this.userType = goodResult)
    );


    // this.getAuth(this.user, this.userType);
    this.turkishCulture();
    this.form = this._formBuilder.group({
      Username: [null, Validators.required],
      Name: [null],
      Type: [null, Validators.required],
      Date: [null, Validators.required],
      Description: ['']
    });

    this.authService.getUserName.subscribe(
      goodResult => (this.user = goodResult)
    );
    this.authService.getUserType.subscribe(
      goodResult => (this.userType = goodResult)
    );

    this.getDocumentTypes(this.user); 
    this.getDocumentAuth(this.user);
    this.getDocumentSelect(this.user); 
    // this.form.patchValue ({Date:this.newDate.value});


  }
  getDocumentTypes(user) {
   
    this.poolUserService.getDocumentTypes(user).subscribe((res: any[]) => {   
 
        this.documentTypes=res;
    });
  
  }
  getDocumentAuth(user) {
   
    this.poolUserService.getDocumentAuth(user).subscribe(res => {    
      this.docUserAuth=res["yetki"];    

      console.log(this.docUserAuth);
    });
  
  }

  showFile(element) {
    // window.open("http://localhost:4200/assets/files/" + element.dosya, 'toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=no, resizable=yes, copyhistory=no, width=w, height=h, top=top, left=left');   

    const dialogRef = this.dialog.open(ViewComponent, {
      panelClass: 'custom-dialog-container',
      data: {
        message:element.dosya ,
        buttonText: {
          ok: 'Tamam',
          cancel: 'İptal'
        }
      }, width: '900px',
      height: '900px'
    });
    dialogRef.afterClosed().subscribe((confirmed: boolean) => {
    });
  }

  delete(element) {

    const dialogRef = this.dialog.open(ConfirmationDialog, {
      panelClass: 'myapp-no-padding-dialog',
      data: {
        message: 'Kayıdı silmek istediğinize emin misiniz?',
        buttonText: {
          ok: 'Tamam',
          cancel: 'İptal'
        }
      } 
    });
    dialogRef.afterClosed().subscribe((confirmed: boolean) => {
      if (confirmed) {
        this.poolUserService.deleteDocument(element.idno)
          .subscribe((res: any[]) => {

            this.getDocumentSelect(this.user);
          },
            err => {
              console.log(err);

            }
          );

      }
    });
  }

  openDefinition() {
    this.dialog.open(ListComponent, {
      data: { Data: { ID: null, Code: null, Name: null } },
      disableClose: false,
      width: '600px',
      height: '750px'
    }).afterClosed().subscribe(result => {

      console.log(result);
      this.form.patchValue({ Username: result.Code, Name: result.Name });
    });

  }


  closeDialog() {

  }

  applyFilter(filterValue: string) {
    this.dataSource.filter = filterValue.trim().toLocaleUpperCase();
  }


  // getAuth(user, type) {
  //   this.poolUserService.getPoolAuth(user, type).subscribe(
  //     res => {
  //       if (res["gunluk"]) this.outofoffice.push({ id: 1, code: '01', value: "SSK" })
  //       if (res["saat"]) this.outofoffice.push({ id: 2, code: '02', value: "İş Giriş" })
  //       if (res["mesai"]) this.outofoffice.push({ id: 3, code: '03', value: "Rapor" })
  //       // if (res["vardiya"]) this.outofoffice.push({id: 4, value: "Vardiya"})
  //       // if (res["hareket"]) this.outofoffice.push({id: 5, value: "Hareketler"})
  //       // if (res["posta"]) this.outofoffice.push({id: 6, value: "Hafta Tatili"})
  //     },
  //     err => {
  //       console.log(err);
  //     }
  //   );

  // }



  getDocumentSelect(user) {

    this.poolUserService.getDocumentSelect(user==undefined?null:user)
      .subscribe((res: any[]) => {

        console.log(res);
        this.dataSource = new MatTableDataSource();
        this.dataSource.data = res;
        this.dataSource.paginator = this.usrPaginator;
        this.dataSource.sort = this.usrSort;

        // this.form.reset();
        this.form.patchValue({Type:null,Description:null});
      },
        err => {
          console.log(err);

        }
      );

  }



}
