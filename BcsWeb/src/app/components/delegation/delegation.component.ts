import { SelectionModel } from "@angular/cdk/collections";
import {ConfirmationDialog} from '../confirmation/confirmation-dialog.component';
import {
  Component,
  OnInit,
  ViewChild,
  ChangeDetectorRef,
  Inject,
  EventEmitter,
  Output,
  Input,
  ViewEncapsulation,
  ElementRef
} from "@angular/core";
 
// import {
//   MatDialog,
//   MatSort,
//   MatPaginator,
//   MatTableDataSource,
//   MatSnackBar
// } from "@angular/material";

import {MatDialog,MatDialogRef} from  "@angular/material/dialog";
import {MatSort} from '@angular/material/sort';
import {MatPaginator} from '@angular/material/paginator';
import {MatTableDataSource} from '@angular/material/table';
import {MatSnackBar, MatSnackBarConfig} from '@angular/material/snack-bar';
import { formatDate } from '@angular/common';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { PooluserService } from 'src/app/services/pooluser.service';
import { AuthService } from '../../services/auth.service';
import { Router } from '@angular/router';
import {
  MAT_MOMENT_DATE_FORMATS,
  MomentDateAdapter
} from "@angular/material-moment-adapter";
import {
  DateAdapter,
  MAT_DATE_FORMATS,
  MAT_DATE_LOCALE
} from "@angular/material/core";
 
export interface DialogData {
  animal: string;
  name: string;
}

export const MY_FORMATS = {
  parse: {
    dateInput: "LL"
  },
  display: {
    dateInput: "LL",
    monthYearLabel: "MMM YYYY",
    dateA11yLabel: "LL",
    monthYearA11yLabel: "MMMM YYYY"
  }
};

export interface DelegeElement {
  user: string;
  username: string;
  bastarih: Date;
  bittarih: Date;
  vekil: string,
  vekiladi: string,
  id:number
  
}


@Component({
  selector: 'app-delegation',
  templateUrl: './delegation.component.html',
  styleUrls: ['./delegation.component.css'],
  providers: [
    // {provide: DateAdapter, useClass: OutofofficeComponent},
    {
      provide: DateAdapter,
      useClass: MomentDateAdapter,
      deps: [MAT_DATE_LOCALE]
    },
    { provide: MAT_DATE_FORMATS, useValue: MY_FORMATS }
  ]
})

export class DelegationComponent implements OnInit {
  form: FormGroup;
  private formSubmitAttempt: boolean;  
  users: any = [];
  delegations:[];
  dlgDataSource;dlgDisplayedColumns; dlgSelection;
  @ViewChild("dlgPaginator", { static: false }) dlgPaginator: MatPaginator;
  @ViewChild("dlgSorter", { static: true }) dlgSort: MatSort;

  constructor(
    public dialog: MatDialog,
    private router: Router,
    private _formBuilder: FormBuilder,
    private poolUserService: PooluserService,
    private snackBar: MatSnackBar,
    private authService: AuthService,
    private adapter: DateAdapter<any>

  ) { }

  ngOnInit() {

    this.form = this._formBuilder.group({
      username: ['', Validators.required],
      startdate: ['', Validators.required],
      enddate:['', Validators.required],
    });

     this.getUsers();
     this.turkishCulture();
    // console.log(this.users);
    this.getDelegations(JSON.parse(sessionStorage.getItem('userName')),null);
    


  }
  openSnackBar(message: string, seconds: number) {
    this.snackBar.open(message, "", {
      duration: seconds * 1000,
      verticalPosition: "top"
    });
  }

  // isFieldInvalid(field: string) {
  //   return (
  //     (!this.form.get(field).valid && this.form.get(field).touched) ||
  //     (this.form.get(field).untouched && this.formSubmitAttempt)
  //   );
  // }

  getUsers() {
    this.poolUserService.getPoolUsers(null, null).subscribe(
      res => {
        this.users = res;  
      });
      
  }
  getDelegations(user,vekil) {
    //  this.pageIndex = 10;
    this.delegations = [];
    this.dlgDisplayedColumns = [];
    this.poolUserService.getDelegations(user,vekil).subscribe(
      res => {
        Object.keys(res).forEach(key => {
          this.delegations[key] = res[key];
        });
      
        this.dlgDisplayedColumns = [
          "user",
          "username",
          "bastarih",
          "bittarih",
          "vekil",
          "vekiladi",
          "id"];
        this.dlgDataSource = new MatTableDataSource<DelegeElement>(this.delegations);
        this.dlgDataSource.paginator = this.dlgPaginator;
        this.dlgDataSource.sort = this.dlgSort;
        this.dlgSelection = new SelectionModel<DelegeElement>(true, []);
          
      
      
      });

      console.log(this.delegations);

      

  }


  turkishCulture() {
    this.adapter.setLocale("tr");
  }

  delete(id) {
    const dialogRef = this.dialog.open(ConfirmationDialog,{
      data:{
        message: 'Kayıdı silmek istediğinize emin misiniz?',
        buttonText: {
          ok: 'Tamam',
          cancel: 'İptal'
        }
      }
    });
    // const snack = this.snackBar.open('Snack bar open before dialog');

    dialogRef.afterClosed().subscribe((confirmed: boolean) => {
      if (confirmed) {

        this.poolUserService.deleteDelegation(id)
        .subscribe((res) => {
          if (res['returnCode'] !== '200') { this.getDelegations(JSON.parse(sessionStorage.getItem('userName')),null); } else {this.getDelegations(JSON.parse(sessionStorage.getItem('userName')),null); }
        }
          , err => {
            console.log(err);
            this.openSnackBar(err.message, 2);
    
          });

        // snack.dismiss();
        // const a = document.createElement('a');
        // a.click();
        // a.remove();
        // snack.dismiss();
        // this.snackBar.open('Closing snack bar in a few seconds', 'Fechar', {
        //   duration: 2000,
        // });
        }
      });
    

      
  }
 
  
    onSubmit() {

    
    let obj: any = {user: JSON.parse(sessionStorage.getItem('userName')), bastarih: formatDate(this.form.value.startdate, 'yyyy-MM-dd', 'en-US'), bittarih:formatDate(this.form.value.enddate, 'yyyy-MM-dd', 'en-US'), vekil: this.form.value.username};

      console.log(obj);
      this.poolUserService.postDelegation(obj)
        .subscribe((res) => {
          console.log(res);
          if (res != '200') { this.openSnackBar('Tarih aralığındaki vekil kaydı güncellendi.', 2); this.getDelegations(JSON.parse(sessionStorage.getItem('userName')),null);} else { this.openSnackBar('İşlem Kaydedildi.', 2);this.getDelegations(JSON.parse(sessionStorage.getItem('userName')),null); }
        }
          , err => {
            console.log(err);
            this.openSnackBar(err.message, 2);

          });

          
    }
  
}

 





