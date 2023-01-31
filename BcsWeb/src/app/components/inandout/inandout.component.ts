import { Observable, BehaviorSubject } from 'rxjs';
import {
  Component,
  OnInit,
  ViewChild,
  ChangeDetectorRef,
  Inject,
  EventEmitter,
  Output,
  Input
} from "@angular/core";


import { PooluserService } from "src/app/services/pooluser.service";
import { FormControl } from "@angular/forms";
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { STEPPER_GLOBAL_OPTIONS } from '@angular/cdk/stepper';
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
import pdfmake from 'pdfmake/build/pdfmake';
import pdfFonts from 'pdfmake/build/vfs_fonts';
pdfmake.vfs = pdfFonts.pdfMake.vfs;
import * as _moment from "moment";

const moment = _moment;


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

@Component({
  selector: 'app-inandout',
  templateUrl: './inandout.component.html',
  styleUrls: ['./inandout.component.css'],
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
export class InandoutComponent implements OnInit {

  form: FormGroup;
  user: string;
  userType: string;
  usrData = [];
  usrDataSource; usrDisplayedColumns; usrSelection;
  @ViewChild("usrPaginator", { static: true }) usrPaginator: MatPaginator;
  @ViewChild("usrSorter", { static: true }) usrSort: MatSort;
  pageIndex: number = 0;
  outofoffice = [
    { id: 0, value: "Günlük İzin", color: "gray", auth: false, matBadge: 0 },
    { id: 1, value: "Saatlik İzin", color: "success", auth: false, matBadge: 0 },
    { id: 2, value: "Fazla Mesai", color: "warn", auth: false, matBadge: 0 },
  ];
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


  public exportPdf() {


    let pdf = []
    pdf.push([{ text: 'SicilNo', bold: true }, { text: 'Adı', bold: true }, { text: 'Soyadı', bold: true }
      , { text: 'Departman', bold: true }, { text: 'Görev', bold: true }, { text: 'Masraf Merkezi', bold: true },
    { text: 'GirişTarih', bold: true }, { text: 'GirişSaat', bold: true },
    { text: 'ÇıkışTarih', bold: true }, { text: 'ÇıkışSaat', bold: true },
    ]);
    this.usrDataSource.data.forEach(element => {

      pdf.push([
        element['sicil'], element['adi'], element['soyadi'], element['departman'], element['gorev'], element['masrafMerkez'],
        element['girisTarih']!==''? formatDate(element['girisTarih'], "dd-MM-yyyy", "en-US"):'', 
        element['girisSaat']!==''? formatDate(element['girisSaat'], "HH:mm", "en-US"):'',
        element['cikisTarih']!==''? formatDate(element['cikisTarih'], "dd-MM-yyyy", "en-US"):'', 
        element['cikisSaat']!==''? formatDate(element['cikisSaat'], "HH:mm", "en-US"):''

      ]);
    });

    var dd = {
      content: [
        {
          // layout: 'lightHorizontalLines', // optional
          table: {
            // headers are automatically repeated if the table spans over multiple pages
            // you can declare how many rows should be treated as headers
            // widths: [ '*', 'auto', 100, '*' ],
            headerRows: 1,
            widths: ['*', 'auto', 'auto', 'auto', 'auto', 'auto', 'auto', 'auto', 'auto', 'auto'],
            body: pdf

          }
        }
      ],

      defaultStyle: {
        fontSize: 7
      }
    };

    const documentDefinition = { content: 'HareketListe' };
    pdfmake.createPdf(dd).download();
  }

  applyFilter(filterValue: string) {
    this.usrDataSource.filter = filterValue.trim().toLocaleUpperCase();
  }

  resetReport() {
    if (this.form.valid) {
      this.usrData = []
      this.usrDisplayedColumns = ["sicil",
        "adi",
        "soyadi",
        "departman",
        "gorev",
        "masrafMerkez",
        "girisTarih",
        "girisSaat",
        "cikisTarih",
        "cikisSaat"
      ];

      this.usrDataSource = new MatTableDataSource<UserElement>(this.usrData);
      this.usrDataSource.paginator = this.usrPaginator;
      this.usrDataSource.sort = this.usrSort;
      this.usrSelection = new SelectionModel<UserElement>(true, []);
    }
  }

  executeReport() {

    let config = new MatSnackBarConfig();
    config.panelClass = ['message-position'];
    this.snackBar.open("İşlem yapılıyor. Lütfen Bekleyiniz...", "", config);
    this.pageIndex = 12;
    this.usrData = [];
    this.usrDisplayedColumns = [];
    const obj = { reportType: 'inandout', user: this.user, userType: this.userType, flow: this.form.value.flow, startDate: formatDate(this.form.value.startdate, "yyyy-MM-ddT00:00:00", "en-US"), endDate: formatDate(this.form.value.enddate, "yyyy-MM-ddT00:00:00", "en-US") };

    this.poolUserService.getReport(obj).subscribe(
      res => {
        Object.keys(res).forEach(key => {
          this.usrData[key] = res[key];
          this.usrData[key].girisTarih = this.usrData[key].girisTarih.replace('0001-01-01T00:00:00', '');
          this.usrData[key].girisSaat = this.usrData[key].girisSaat.replace('0001-01-01T00:00:00', '');
          this.usrData[key].cikisTarih = this.usrData[key].cikisTarih.replace('0001-01-01T00:00:00', '');
          this.usrData[key].cikisSaat = this.usrData[key].cikisSaat.replace('0001-01-01T00:00:00', '');
        });

        console.log(this.usrData);
        this.usrDisplayedColumns = [
          "sicil",
          "adi",
          "soyadi",
          "departman",
          "gorev",
          "masrafMerkez",
          "girisTarih",
          "girisSaat",
          "cikisTarih",
          "cikisSaat"
        ];
        this.usrDataSource = new MatTableDataSource<UserElement>(this.usrData);
        this.usrDataSource.paginator = this.usrPaginator;
        this.usrDataSource.sort = this.usrSort;
        this.usrSelection = new SelectionModel<UserElement>(true, []);
        this.snackBar.dismiss();
      });


  }

  ngOnInit() {
    this.turkishCulture();
    this.form = this._formBuilder.group({
      flow: [],
      startdate: [],
      enddate: [],
    });

    this.authService.getUserName.subscribe(
      goodResult => (this.user = goodResult)
    );
    this.authService.getUserType.subscribe(
      goodResult => (this.userType = goodResult)
    );

    this.resetReport();
  }
}
