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
  selector: 'app-demandtrack',
  templateUrl: './demandtrack.component.html',
  styleUrls: ['./demandtrack.component.css'],
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
export class DemandtrackComponent implements OnInit {

  form: FormGroup;
  prmfmYemek = false;
  prmfmServis = false;

  user: string;
  userType: string;
  usrData = [];
  usrDataSource; usrDisplayedColumns; usrSelection;
  @ViewChild("usrPaginator", { static: true }) usrPaginator: MatPaginator;
  @ViewChild("usrSorter", { static: true }) usrSort: MatSort;
  pageIndex: number = 0;
  outofoffice = [];
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
    private poolUserService: PooluserService,
    public dialog: MatDialog,
    private snackBar: MatSnackBar,
    private adapter: DateAdapter<any>
  ) { }



  public exportPdf() {


    let pdf = []
    pdf.push([{ text: 'SicilNo', bold: true }, { text: 'Adı', bold: true }
      , { text: 'Türü', bold: true }, { text: 'Neden', bold: true },  { text: 'Açıklama', bold: true },{ text: 'BaşTarih', bold: true }, { text: 'BitTarih', bold: true },
    { text: 'Süre', bold: true }, { text: 'Amir1', bold: true }, { text: 'Amir2', bold: true }, { text: 'Amir3', bold: true }, { text: 'Amir4', bold: true },
    { text: 'Amir5', bold: true }, { text: 'Durum', bold: true }, { text: 'İşlemZaman', bold: true }]);
    this.usrDataSource.data.forEach(element => {

      var start = moment(element['basTarih']);      
      pdf.push([
        element['prSicil'], element['adi'], element['izinTuru'], element['neden'],element['acik'], formatDate(element['basTarih'], "dd-MM-yyyy", "en-US"),
        formatDate(element['bitTarih'], "dd-MM-yyyy", "en-US"), element['sure'], element['onay1kl'], element['onay2kl'], element['onay3kl'], element['onay4kl'],
        element['onay5kl'], element['durum'], formatDate(element['islemZaman'], "dd-MM-yyyy", "en-US")
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
            widths: ['*', 'auto', 'auto', 'auto', 'auto', 'auto', 'auto', 'auto', 'auto', 'auto', 'auto', 'auto', 'auto', 'auto', 'auto'],
            body: pdf

          }
        }
      ],

      defaultStyle: {
        fontSize: 7
      }
    };

    const documentDefinition = { content: 'TalepListe' };
    pdfmake.createPdf(dd).download();
  }

  turkishCulture() {
    this.adapter.setLocale("tr");
  }

  closeDialog() {

  }

  applyFilter(filterValue: string) {
    this.usrDataSource.filter = filterValue.trim().toLocaleUpperCase();
  }


  getAuth(user, type) {
    this.poolUserService.getPoolAuth(user, type).subscribe(
      res => {
        if (res["gunluk"]) this.outofoffice.push({ id: 1, value: "Günlük İzin" })
        if (res["saat"]) this.outofoffice.push({ id: 2, value: "Saatlik İzin" })
        if (res["mesai"]) this.outofoffice.push({ id: 3, value: "Fazla Mesai" })        
        if (res["guncelleme"]) this.outofoffice.push({ id: 4, value: "Personel Güncelleme" })
        // if (res["vardiya"]) this.outofoffice.push({id: 4, value: "Vardiya"})
        // if (res["hareket"]) this.outofoffice.push({id: 5, value: "Hareketler"})
        // if (res["posta"]) this.outofoffice.push({id: 6, value: "Hafta Tatili"})
      },
      err => {
        console.log(err);
      }
    );

  }

  resetReport() {

    if (this.form.valid) {
      this.usrData = []
      this.usrDisplayedColumns = ["id", "prSicil", "adi", "izinTuru", "neden", "acik", "basTarih", "basSaat", "bitTarih", "bitSaat", "sure", "yemekYer", "servis", "onay1", "onay1kl", "onay2", "onay2kl",
        "onay3", "onay3kl", "onay4", "onay4kl", "onay5", "onay5kl", "durum", "islemZaman"
      ];

      this.usrDataSource = new MatTableDataSource<UserElement>(this.usrData);
      this.usrDataSource.paginator = this.usrPaginator;
      this.usrDataSource.sort = this.usrSort;
      this.usrSelection = new SelectionModel<UserElement>(true, []);
    }
  }

  executeReport() {
    if (this.form.valid) {

      let config = new MatSnackBarConfig();
      config.panelClass = ['message-position'];
      this.snackBar.open("İşlem yapılıyor. Lütfen Bekleyiniz...", "", config);

      this.pageIndex = 12;
      this.usrData = [];
      this.usrDisplayedColumns = [];
      const obj = { reportType: 'demandtrack', user: this.user, userType: this.userType, flow: this.form.value.flow, startDate: formatDate(this.form.value.startdate, "yyyy-MM-ddT00:00:00", "en-US"), endDate: formatDate(this.form.value.enddate, "yyyy-MM-ddT00:00:00", "en-US") };
      this.poolUserService.getReport(obj).subscribe(
        res => {
          Object.keys(res).forEach(key => {
            this.usrData[key] = res[key];
          });

          this.usrDisplayedColumns = ["id", "prSicil", "adi", "izinTuru", "neden", "acik", "basTarih", "basSaat", "bitTarih", "bitSaat", "sure", "yemekYer", "servis", "onay1", "onay1kl", "onay2", "onay2kl",
            "onay3", "onay3kl", "onay4", "onay4kl", "onay5", "onay5kl", "durum", "islemZaman"
          ];

          this.usrDataSource = new MatTableDataSource<UserElement>(this.usrData);
          this.usrDataSource.paginator = this.usrPaginator;
          this.usrDataSource.sort = this.usrSort;
          this.usrSelection = new SelectionModel<UserElement>(true, []);
          this.snackBar.dismiss();
        });


    }
  }


  getParameters() {
    this.poolUserService.getParameters()
      .subscribe((res) => {
        Object.keys(res).forEach((key) => {
          this.prmfmYemek = res[key].fmYemek;
          this.prmfmServis = res[key].fmServis;
        });
      }, err => {
        console.log(err);
      });

  };


  ngOnInit() {


    this.authService.getUserName.subscribe(
      goodResult => (this.user = goodResult)
    );
    this.authService.getUserType.subscribe(
      goodResult => (this.userType = goodResult)
    );


    this.getAuth(this.user, this.userType);
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
    this.resetReport();

  }



}
