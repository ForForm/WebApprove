import { Observable, BehaviorSubject } from 'rxjs';
import {
  Component,
  OnInit,
  ViewChild,
  ChangeDetectorRef,
  Inject,
  EventEmitter,
  Output,
  Input,
  Renderer2
} from "@angular/core";


import { PooluserService } from "src/app/services/pooluser.service";
import { FormControl } from "@angular/forms";
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { STEPPER_GLOBAL_OPTIONS } from '@angular/cdk/stepper';
import { OutofofficeComponent, DialogApprove, RejectApprove, FormLayout } from '../outofoffice/outofoffice.component';
import { MatExpansionModule } from '@angular/material/expansion';
import { MatDialog, MatDialogRef } from "@angular/material/dialog";
import { MatSort } from '@angular/material/sort';
import { MatPaginator } from '@angular/material/paginator';
import { MatTableDataSource } from '@angular/material/table';
import { MatSnackBar, MatSnackBarConfig } from '@angular/material/snack-bar';
import { SelectionModel } from "@angular/cdk/collections";
import {
  MAT_MOMENT_DATE_FORMATS,
  MomentDateAdapter
} from "@angular/material-moment-adapter";
import {
  DateAdapter,
  MAT_DATE_FORMATS,
  MAT_DATE_LOCALE
} from "@angular/material/core";
import { AuthService } from "../../services/auth.service";
import { formatDate } from '@angular/common';

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
    dateInput: "LL"
  },
  display: {
    dateInput: "LL",
    monthYearLabel: "MMM YYYY",
    dateA11yLabel: "LL",
    monthYearA11yLabel: "MMMM YYYY"
  }
};


export interface Language {
  label: string;
  labelName: string;
}

export interface LanguageMap {
  [key: string]: Language;
}

@Component({
  selector: 'app-main',
  templateUrl: './main.component.html',
  styleUrls: ['./main.component.css'],
  providers: [
    // {provide: DateAdapter, useClass: OutofofficeComponent},
    { provide: STEPPER_GLOBAL_OPTIONS, useValue: { showError: true } },
    {
      provide: DateAdapter,
      useClass: MomentDateAdapter,
      deps: [MAT_DATE_LOCALE]
    },
    { provide: MAT_DATE_FORMATS, useValue: MY_FORMATS }
  ]
})
export class MainComponent implements OnInit {

  form: FormGroup;
  prmlimitDash = false;
  prmreportDash = false;

  tables = [];
  user: string;
  userType: string;
  usrData = [];
  usrDataSource1; usrSelection1;
  usrDisplayedColumns1: any[];
  columns: any[];
  @ViewChild("usrPaginator", { static: true }) usrPaginator: MatPaginator;
  @ViewChild("usrSorter", { static: true }) usrSort: MatSort;
  pageIndex: number = 0;
  outofoffice = [];
  usrlanguages: any = [];
  language: any = [];
  languageMap: LanguageMap = {};
  employee: any;
  dateofBirth: any;
  dateofWork: Date;
  dayOfYearly: any;
  dayOfYearlyUsage: any;
  dayOfReasonUsage: any;
  dayOfReasonLeft: any;
  chief: any;
  usageLimit: any;
  remainLimit: any;
  remainYearly: any;

  constructor(
    private _formBuilder: FormBuilder,
    private authService: AuthService,
    private poolUserService: PooluserService,
    public dialog: MatDialog,
    private snackBar: MatSnackBar,
    private adapter: DateAdapter<any>
  ) { }

  turkishCulture() {
    this.adapter.setLocale("tr");
  }

  closeDialog() {

  }

  applyFilter(filterValue: string) {
    this.usrDataSource1.filter = filterValue.trim().toLocaleUpperCase();
  }


  getParameters() {
    this.poolUserService.getParameters()
      .subscribe((res) => {
        Object.keys(res).forEach((key) => {
          this.prmlimitDash = res[key].limitDash;
          this.prmreportDash = res[key].reportDash;

        });

        this.getUserLanguage();
        if (this.prmlimitDash)
          this.getUserLimit(this.user);
        else
          this.getDashReports(this.user);

      }, err => {
        console.log(err);
      });

  };

  getLanguage(lng) {
    let data;
    this.poolUserService.getLanguageInfo(lng)
      .subscribe((res) => {
        Object.keys(res).forEach((key) => {
          let data = { label: res[key].label, labelName: res[key].labelName }
          this.language.push(data);
        });

        this.language.forEach((s: Language) => {
          this.languageMap[s.label] = s;
        });

      }, err => {
        console.log(err);
      });

  };

  getUserLanguage() {

    this.poolUserService.getLanguage(this.user, null, null).subscribe(res => {
      this.usrlanguages = res;
      this.getLanguage(this.usrlanguages[0].id);
    });

  }

  ngOnInit() {


    this.authService.getUserName.subscribe(
      goodResult => (this.user = goodResult)
    );
    this.authService.getUserType.subscribe(
      goodResult => (this.userType = goodResult)
    );
    this.turkishCulture();
    this.form = this._formBuilder.group({
      flow: ['', Validators.required],
      startdate: [],
      enddate: [],
    });

    this.authService.getUserName.subscribe(
      goodResult => (this.user = goodResult)
    );
    this.authService.getUserType.subscribe(
      goodResult => (this.userType = goodResult)
    );
    this.getParameters();
    this.form.patchValue({ flow: 'Günlük İzin' });


  }

  TabClick(index: number) {

    if (index === 0) {
      if (this.prmlimitDash)
        this.getUserLimit(this.user);
      else
        this.getDashReports(this.user);
    }

  }


  usrMasterToggleList(row) {

    this.dateofWork = row.isgirt;
    this.chief = row.amir;
    this.usageLimit = row.usageLimit;
    this.remainLimit = row.remainLimit;
    this.remainYearly = row.remainYearly;
    this.chief = row.amir;
    this.employee = row.username + ' ' + row.name;

  }

  getUserLimit(userName) {
    this.usrData = [];
    this.usrDisplayedColumns1 = [
      "id",
      "username",
      "name"];
    this.poolUserService.getPoolUserLimit(userName, this.userType).subscribe(
      res => {
        Object.keys(res).forEach(key => {
          this.usrData[key] = res[key];
        })

        this.usrDataSource1 = new MatTableDataSource();
        this.usrDataSource1.data = this.usrData;
        this.usrDataSource1.paginator = this.usrPaginator;
        this.usrDataSource1.sort = this.usrSort;
        this.usrSelection1 = new SelectionModel<any>(true, []);
      });
  }

  getDashReports(userName) {
    // this.usrData = [];
    // this.usrDisplayedColumns1 = [
    //   "SICILNO",
    //   "ADI",
    //   "DEPART" ];
    this.poolUserService.getDashReports(userName).subscribe(
      res => {
        let say = 0;
        this.tables = [];
        Object.keys(res).forEach(key => {
          this.ExecuteDashReport(res[key]["column"], say, res[key]["spName"], null, null);
          say++;
        })
        // this.usrDataSource1 = new MatTableDataSource();
        // this.usrDataSource1.data = this.usrData;
        // this.usrDataSource1.paginator = this.usrPaginator;
        // this.usrDataSource1.sort = this.usrSort;
        // this.usrSelection1 = new SelectionModel<any>(true, []);
      });
  }


  ExecuteDashReport(column, say, spname, company, userName) {

    this.poolUserService.executeDashReport(spname, company, userName).subscribe(
      (res: any[]) => {
        if (res.length > 0) {
          this.columns = [];
          Object.keys(res[0]).forEach(element => {
            this.columns.push({ label: element.toString(), property: element.toString() });
          });
          let usrDisplayedColumns1 = this.columns.map(column => column.property);
          // this.usrDataSource1.data = res;
          let usrDataSource1 = new MatTableDataSource();
          usrDataSource1.data = res;
          this.tables.push({ id: say, column: column, columns: this.columns, usrDisplayedColumns: usrDisplayedColumns1, usrDataSource: usrDataSource1 })

        }
      });
  }
}
