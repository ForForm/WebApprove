import { Observable, BehaviorSubject } from "rxjs";
import {
  Component,
  HostListener,
  OnInit,
  ViewChild,
  ChangeDetectorRef,
  Inject,
  EventEmitter,
  Output,
  Input,
  ViewEncapsulation,
  ElementRef,
  Renderer2
} from "@angular/core";
import { PooluserService } from "src/app/services/pooluser.service";
import { ListComponent } from '../document/list.component';
import { FormControl } from "@angular/forms";
import { ActivatedRoute, Router } from '@angular/router';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { STEPPER_GLOBAL_OPTIONS } from '@angular/cdk/stepper';
import { MatExpansionModule } from '@angular/material/expansion';
import { DomSanitizer } from '@angular/platform-browser';
import { MatStepper } from '@angular/material/stepper';
import { MatDialog, MatDialogRef } from "@angular/material/dialog";
import { MatPaginator } from '@angular/material/paginator';
import { MatSnackBar, MatSnackBarConfig } from '@angular/material/snack-bar';
import { MatTableDataSource } from '@angular/material/table';
import { MatSort } from '@angular/material/sort';
import { MatCheckbox } from '@angular/material/checkbox';
import { MAT_DIALOG_DATA } from '@angular/material/dialog';
import { DataSource, SelectionModel } from "@angular/cdk/collections";

import {
  MAT_MOMENT_DATE_FORMATS,
  MomentDateAdapter
} from "@angular/material-moment-adapter";
import {
  DateAdapter,
  MAT_DATE_FORMATS,
  MAT_DATE_LOCALE
} from '@angular/material/core';
import { AuthService } from "../../services/auth.service";

import { formatDate } from "@angular/common";
import * as _moment from "moment";
import { jsPDF } from "jspdf";

import pdfmake from 'pdfmake/build/pdfmake';
import pdfFonts from 'pdfmake/build/vfs_fonts';
// import { ConsoleReporter } from 'jasmine';
// tslint:disable-next-line:no-duplicate-imports
// import {default as _rollupMoment} from 'moment';
// import * as jsPDF from 'jspdf';
// import { jsPDF } from "jspdf";
pdfmake.vfs = pdfFonts.pdfMake.vfs;

const moment = _moment;

export interface Language {
  label: string;
  labelName: string;
}

export interface LanguageMap {
  [key: string]: Language;
}

export interface DailyApproverElement {
  srkodu: string;
  prsicil: string;
  name: string;
  yillikKalan: number,
  yillikFazlaMesai: number,
  neden: string;
  bastarih: Date;
  bassaat: string;
  bitsaat: string;
  sure: string;
  yemekyer: boolean,
  gelis: boolean,
  gidis: boolean,
  gelisservis: boolean,
  gidisservis: boolean,
  gun: string;
  bittarih: Date;
  isbasi: Date;
  id: number;
  sebep: string;
  sebep2: string;
  aciklama: string;
  onay1: boolean;
  onay1kl: string;
  post: boolean;
  ret: boolean;
  amir: boolean;
  amirKodu: string;
}


export interface UserElement {
  id: number;
  username: string;
  name: string;
  donem: number;
  depart: string;
  yemekyer: boolean;
  useServiceArrival: boolean,
  serviceArrival: string,
  useServiceGoing: boolean,
  serviceGoing: string
  // iostarttime:string,
  // inoutput:string
}




export interface DialogData {
  insert: boolean;
  approve: boolean;
  color: string;
  desc: string;
  auth: string;
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
  selector: "app-outofoffice",
  templateUrl: "./outofoffice.component.html",
  styleUrls: ["./outofoffice.component.css"],

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



export class OutofofficeComponent implements OnInit {
  // isLinear = false;
  public maskTime = [/[0-9]/, /\d/, ':', /\d/, /\d/];

  mainScreenVisible = true;
  firstFormGroup: FormGroup;
  secondFormGroup: FormGroup;
  thirdFormGroup: FormGroup;
  isOptional = false;
  user: string;
  userType: string;
  nextBtn = true;
  nextBtnAlert = true;
  formTemplate = '';
  workflow: string[];
  // flowName=['Günlük İzin','Saatlik İzin','Mesai','Rapor']
  personelInfo: any = [];
  selectedReason: string;
  dialogRefTemp: any;
  language: any = [];
  languageMap: LanguageMap = {};
  shiftDates: any = [];
  hiddenOnPrint = false;
  usrlanguages: any = [];
  responseList: any;
  responseTotalList: any;
  printRules: any;
  dayDateChange = '';
  outofofficeCount = 0;
  outofoffice = [
    { id: 0, value: "İzin Seçim", color: "basic", auth: false, matBadge: 0 },
    { id: 1, value: "Günlük İzin", color: "gray", auth: false, matBadge: 0 },
    { id: 2, value: "Saatlik İzin", color: "success", auth: false, matBadge: 0 },
    { id: 3, value: "Fazla Mesai", color: "red", auth: false, matBadge: 0 },
    { id: 4, value: "Vardiya", color: "metin", auth: false, matBadge: 0 },
    { id: 5, value: "Hareket Giriş", color: "turquaz", auth: false, matBadge: 0 },
    { id: 6, value: "Posta Giriş", color: "black", auth: false, matBadge: 0 },
    { id: 7, value: "Raporlar", color: "black", auth: false, matBadge: 0 },
    { id: 8, value: "Rotasyon Giriş", color: "rota", auth: false, matBadge: 0 },
    { id: 9, value: "Güncelleme", color: "guncelleme", auth: false, matBadge: 0 }
  ];
  approve = false;
  flowIndex = 0;
  reasons: any = [];
  postas: any = [];
  fmservices: any = [];
  giriscikis: any = [{ kodu: 0, adi: 'GİRİŞ' }, { kodu: 1, adi: 'ÇIKIŞ' }];
  firstCtrl = new FormControl();
  chkApprove = new FormControl();
  approver: '';
  prmgecmisPostUser = false;
  prmamir1 = false;
  prmlanguage = '';
  prmfirmName = '';
  prmreportUrl = '';
  prmreportUrlSecure = false;
  prmfmYemek = false;
  prmfmUseForm = false;
  prmsiUseForm = false;
  prmprsBazli = false;
  prmsiSaat = false;
  prmgiUseForm = false;
  prmfmFormOnay = false;
  prmsiFormOnay = false;
  prmgiFormOnay = false;
  formOnay = false;
  prmonayTuru = 0;
  prmfmTip = 0;
  prmfmServis = false;
  prmgiDesc = false;
  prmgiYillikIzin = false;
  prmsiDesc = false;
  prmfmDesc = false;
  prmgiGecmisIslem = 0;
  prmsiGecmisIslem = 0;
  prmfmGecmisIslem = 0;
  prmgiNeden = false;
  prmsiNeden = false;
  prmfmNeden = false;
  prmhktUseForm = false;
  prmhktFormOnay = false;
  prmhktNeden = false;
  prmhktDesc = false;
  prmhktGecmisIslem = false;
  prmhktGecmisIslemSure = 0;
  prmpstDesc = false;
  prmpstGecmisIslem = false;
  prmpstGecmisIslemSure = 0;

  amirApproved = false;
  prmAuth = false;
  prmApproveType = 0;
  prmRet = false;



  pageIndex: number = 0;
  amrState = [
    { id: 1, checked: false, active: false },
    { id: 2, checked: false, active: false },
    { id: 3, checked: false, active: false }
  ];

  usrData = [];
  usrDataSource; usrDisplayedColumns; usrSelection;
  aprDataSource; aprDisplayedColumns;
  amrDataSource; amrDisplayedColumns; amrSelection;



  @ViewChild("usrPaginator", { static: false }) usrPaginator: MatPaginator;
  @ViewChild("usrSorter", { static: false }) usrSort: MatSort;
  @ViewChild("aprPaginator", { static: false }) aprPaginator: MatPaginator;
  @ViewChild("aprSorter", { static: false }) aprSort: MatSort;
  @ViewChild("amrPaginator", { static: false }) amrPaginator: MatPaginator;
  @ViewChild("amrSorter", { static: false }) amrSort: MatSort;
  @ViewChild('stepper', { static: false }) stepper: MatStepper;
  @ViewChild('pdfTable', { static: false }) pdfTable: ElementRef;


  constructor(
    private sanitizer: DomSanitizer,
    private _formBuilder: FormBuilder,
    private authService: AuthService,
    private poolUserService: PooluserService,
    public dialog: MatDialog,
    private snackBar: MatSnackBar,
    private adapter: DateAdapter<any>
  ) { }

  lastAction: string;





  ngOnInit() {
    // this.usrPaginator._intl.itemsPerPageLabel = 'My translation for items per page.';
    this.authService.getUserName.subscribe(
      goodResult => (this.user = goodResult)
    );
    this.authService.getUserType.subscribe(
      goodResult => (this.userType = goodResult)
    );

    this.getAuth(this.user, this.userType);
    this.getParameters();

    this.turkishCulture();
    this.getFMService(null);

    // [hiddenColumns]="[0,3,7,9,11,12]"

  }

  openDefinition() {

    this.dialog.open(ListComponent, {
      data: { Type: (this.flowIndex === 9 ? this.selectedReason : 'amir'), Data: { ID: null, Code: this.user, Name: null } },
      disableClose: false,
      width: '600px',
      height: '750px'
    }).afterClosed().subscribe(result => {

      // console.log(result);
      this.secondFormGroup.patchValue({ amirkodu: result.Code, amiradi: result.Name });
    });

  }

  public exportPdf() {


    let pdf = []
    pdf.push([{ text: 'SicilNo', bold: true }, { text: 'PersonelAdı', bold: true }]);
    this.usrDataSource.data.forEach(element => {
      pdf.push([element['username'], element['name']]);
    });


    var dd = {
      content: [
        {
          layout: 'lightHorizontalLines', // optional
          table: {
            // headers are automatically repeated if the table spans over multiple pages
            // you can declare how many rows should be treated as headers
            // widths: [ '*', 'auto', 100, '*' ],
            headerRows: 1,
            widths: [200, '*'],
            body: pdf

          }
        }
      ],

      defaultStyle: {
        fontSize: 7
      }
    };

    const documentDefinition = { content: 'PersonelListe' };
    pdfmake.createPdf(dd).download();
  }

  exportPdfApproves() {
    let pdf = []
    pdf.push([{ text: 'Onay  Ret', bold: true }, { text: 'Departman', bold: true }, { text: 'SicilNo', bold: true }, { text: 'PersonelAdı', bold: true }
      , { text: 'Başlangıç', bold: true }, { text: 'Süre', bold: true }, { text: 'Neden', bold: true }, { text: 'Sebep', bold: true }
      , { text: 'Sebep2', bold: true }, { text: 'aciklama', bold: true }, { text: 'retacik', bold: true }
    ]);

    this.amrDataSource.data.forEach(element => {
      pdf.push([(element['approve'] ? 'Onay' : (element['reject'] > 0 ? 'Ret' : '')), element['departman'], element['prsicil'], element['name'], element['bastarih'], element['gun'], element['neden'],
      element['sebep'], element['sebep2'], element['aciklama'], element['retacik']]);
    });


    var dd = {
      content: [
        {
          layout: 'lightHorizontalLines', // optional
          table: {
            // headers are automatically repeated if the table spans over multiple pages
            // you can declare how many rows should be treated as headers
            // widths: [ '*', 'auto', 100, '*' ],
            headerRows: 1,
            widths: ['*', 'auto', 'auto', 'auto', 'auto', 'auto', 'auto', 'auto', 'auto', 'auto', 'auto'],
            body: pdf

          }
        }
      ],

      defaultStyle: {
        fontSize: 7
      }
    };

    const documentDefinition = { content: 'OnayListe' };
    pdfmake.createPdf(dd).download();

  }


  indexOfInArray(item: string, array: string[]): number {
    let index: number = -1;
    for (let i = 0; i < array.length; i++) {
      if (array[i] === item) { index = i; }
    }
    return index;
  }

  getApproveType(item) {
    let filterType = (item == this.languageMap['lblInbox'].labelName ? 0 : (item == this.languageMap['lblApproved'].labelName ? 1 : (item == this.languageMap['lblRejected'].labelName ? 2 : 0)));
    console.log(filterType);
    this.prmApproveType = filterType;
    this.amrGetApproveInfo(this.user, this.prmonayTuru, this.flowIndex, filterType);
  }


  openReport() {

    console.log(this.prmreportUrlSecure);
    if (this.prmreportUrlSecure)
      this.openReportUrlSecure();
    else
      this.openReportUrl();
  }

  openReportUrl() {

    let config = new MatSnackBarConfig();
    config.panelClass = ['message-position'];
    this.snackBar.open("İşlem yapılıyor. Lütfen Bekleyiniz...", "", config);
    // this.prmreportUrl="192.168.205.21:2001";
    let obj: any = { UserName: this.user, Password: '1' };
    this.poolUserService.openReportUrl('http://' + this.prmreportUrl + '/Login', obj).subscribe(
      res => {
        // this.prmreportUrl="www.google.com";
        window.open('http://' + this.prmreportUrl + '/Home/Index/' + res);
        this.snackBar.dismiss();
      },
      err => {
        this.snackBar.dismiss();
        let config = new MatSnackBarConfig();
        config.panelClass = ['message-position'];
        config.duration = 3000;
        this.snackBar.open(err.sebep, "", config);

      }
    );
  }


  openReportUrlSecure() {

    let config = new MatSnackBarConfig();
    config.panelClass = ['message-position'];
    this.snackBar.open("İşlem yapılıyor. Lütfen Bekleyiniz...", "", config);
    // this.prmreportUrl="192.168.205.21:2001";
    let obj: any = { UserName: this.user, Password: '1' };
    // 'http://' +  kiğili secure sorun yarattı kaldırdık...
    this.poolUserService.openReportUrl('https://' + this.prmreportUrl + '/Login', obj).subscribe(
      res => {
        // this.prmreportUrl="www.google.com";
        // '//' + ---?????
        window.open('https://' + this.prmreportUrl + '/Home/Index/' + res);
        this.snackBar.dismiss();
      },
      err => {
        this.snackBar.dismiss();
        let config = new MatSnackBarConfig();
        config.panelClass = ['message-position'];
        config.duration = 3000;
        this.snackBar.open(err.sebep, "", config);

      }
    );
  }



  onApproveHeaderChange(event, state) {

    this.amirApproved = false;
    for (var i = 0, len = this.amrState.length; i < len; i++) {
      if (this.amrState[i].id === state) {

        if (state === 2) {
          if (event.checked) {
            const dialogRef = this.dialog.open(RejectApprove, {
              width: "350px",
              height: "auto",
              data: {
                insert: false,
                approve: false,
                auth: this.userType,
                color: this.outofoffice[1].color,
                desc: ''
              },
              panelClass: "my-dialog-container-class"
            });

            dialogRef.afterClosed().subscribe(result => {
              if (result.approve) {
                for (var j = 0, len1 = this.amrDataSource.data.length; j < len1; j++) {
                  this.amrDataSource.data[j].retacik = result.desc;
                }
                this.amirApproved = true;
              }
            });
          } else {
            for (var j = 0, len1 = this.amrDataSource.data.length; j < len1; j++) {
              this.amrDataSource.data[j].retacik = '';
            }

          }
        }

        this.amrState[i].checked = event.checked;
        this.amrState[i].active = true;

        for (var j = 0, len1 = this.amrDataSource.data.length; j < len1; j++) {
          this.amrDataSource.data[j].approve = false;
          this.amrDataSource.data[j].reject = false;
          this.amrDataSource.data[j].wait = false;
        }

        for (var j = 0, len1 = this.amrDataSource.data.length; j < len1; j++) {

          if (this.amrState[i].id === 1) {
            this.amrDataSource.data[j].approve = event.checked;
            if (event.checked) this.amirApproved = true;
          }
          if (this.amrState[i].id === 2) {
            this.amrDataSource.data[j].reject = event.checked;
            if (event.checked) this.amirApproved = true;
          }
          if (this.amrState[i].id === 3) {
            this.amrDataSource.data[j].wait = event.checked;
            if (event.checked) this.amirApproved = true;
          }
        }
      }
      else {
        this.amrState[i].checked = false;
        this.amrState[i].active = false;

      }
    }



  }

  onApproveDetailChange(row, state, e) {
    this.amirApproved = false;

    if (state === 1) {
      row.approve = true;
      row.reject = false;
      row.wait = false;
      if (e.checked) { this.amirApproved = true; }
    }
    if (state === 2) {
      row.reject = true;
      row.approve = false;
      row.wait = false;
      if (e.checked) {
        const dialogRef = this.dialog.open(RejectApprove, {
          width: "350px",
          height: "auto",
          data: {
            // insert: false, approve: false, color: this.outofoffice[item].color, auth: (this.userType === ' ' ? true : false),
            insert: false,
            approve: false,
            auth: this.userType,
            color: this.outofoffice[1].color,
            desc: ''
          }
        });

        dialogRef.afterClosed().subscribe(result => {
          if (result.approve) {
            for (var i = 0, len = this.amrDataSource.data.length; i < len; i++) {
              if (this.amrDataSource.data[i] == row)
                this.amrDataSource.data[i].retacik = result.desc;
            }
            this.amirApproved = true;

          }
        });
      } else {
        for (var i = 0, len = this.amrDataSource.data.length; i < len; i++) {
          if (this.amrDataSource.data[i] == row)
            this.amrDataSource.data[i].retacik = '';
        }

      }
    }
    if (state === 3) { row.wait = true; row.reject = false; row.approve = false; }
  }

  getReason(user, flowIndex) {
    this.poolUserService.getReasons(user, flowIndex).subscribe(
      res => {
        this.reasons = res;
      },
      err => {
        console.log(err);
      }
    );
  }



  getPosta() {
    this.poolUserService.getPosta().subscribe(
      res => {
        this.postas = res;
      },
      err => {
        console.log(err);
      }
    );


  }

  SetPersonelServices(id, event) {
    if (id === "chkarrival")
      if (event.checked)
        this.secondFormGroup.patchValue({ arrivalservice: this.fmservices.filter((item) => item.username === this.user)[0].kodu });
      else
        this.secondFormGroup.patchValue({ arrivalservice: '' });

    if (id === "chkgoing")
      if (event.checked)
        this.secondFormGroup.patchValue({ goingservice: this.fmservices.filter((item) => item.username === this.user)[0].kodu });
      else
        this.secondFormGroup.patchValue({ goingservice: '' });
  }


  getFMServiceItems(chk) {
    // this.secondFormGroup.patchValue({ arrivalservice: deneme });
    return this.fmservices;//.filter((item) => item.username === username);//.filter((item) => item.type === type);
  }

  getFMService(user) {
    this.poolUserService.getFMServices(user).subscribe(
      res => {
        this.fmservices = res;

      },
      err => {
        console.log(err);
      }
    );
  }


  turkishCulture() {
    this.adapter.setLocale("tr");
  }


  applyApproveFilter(filterValue: string) {
    this.amrDataSource.filter = filterValue.trim().toLocaleUpperCase();
  }


  applyFilter(filterValue: string) {
    this.usrDataSource.filter = filterValue.trim().toLocaleUpperCase();
  }

  //   async delay(ms: number) {
  //     await new Promise(resolve => setTimeout(()=>resolve(), ms)).then(()=>

  //     (this.amrGetApproveInfo(this.user,this.prmonayTuru, null))
  //     );
  // }

  // async delay(ms: number) {
  //   await new Promise(resolve => setTimeout(resolve, ms)).then(() =>
  //     this.print());
  // }

  getLanguage(lng) {
    let data;
    this.poolUserService.getLanguageInfo(lng)
      .subscribe((res) => {
        Object.keys(res).forEach((key) => {
          let data = { label: res[key].label, labelName: res[key].labelName }
          this.language.push(data);
        });

        // let languageMap: LanguageMap = {};
        this.language.forEach((s: Language) => {
          this.languageMap[s.label] = s;
        });

        this.outofoffice[1].value = this.languageMap['lblDaily'].labelName;
        this.outofoffice[2].value = this.languageMap['lblHourly'].labelName;
        this.outofoffice[3].value = this.languageMap['lblFM'].labelName;
        this.outofoffice[4].value = this.languageMap['lblShift'].labelName;
        this.outofoffice[5].value = this.languageMap['lblIO'].labelName;
        this.outofoffice[6].value = this.languageMap['lblPosta'].labelName;
        this.outofoffice[7].value = this.languageMap['lblReports'].labelName;
        this.outofoffice[8].value = this.languageMap['lblRotation'].labelName;
        this.workflow = new Array();
        this.workflow.push(this.languageMap['lblApproved'].labelName);
        this.workflow.push(this.languageMap['lblRejected'].labelName);
        this.workflow.push(this.languageMap['lblInbox'].labelName);
        // console.log(this.workflow);


        // console.log(this.language);
      }, err => {
        console.log(err);
      });

  };

  getParameters() {
    this.poolUserService.getParameters()
      .subscribe((res) => {
        Object.keys(res).forEach((key) => {
          this.prmreportUrl = res[key].reportUrl;
          this.prmreportUrlSecure = res[key].reportUrlSecure;
          this.prmgecmisPostUser = res[key].gecmisPostUser;
          this.prmlanguage = res[key].language;
          this.prmprsBazli = res[key].prsBazli;
          this.prmfirmName = res[key].firmName;
          this.prmfmYemek = res[key].fmYemek;
          this.prmfmUseForm = res[key].fmUseForm;
          this.prmsiUseForm = res[key].siUseForm;
          this.prmsiSaat = res[key].siSaat;
          this.prmgiUseForm = res[key].giUseForm;
          this.prmfmFormOnay = res[key].fmFormOnay;
          this.prmsiFormOnay = res[key].siFormOnay;
          this.prmgiFormOnay = res[key].giFormOnay;
          this.prmonayTuru = res[key].onayTuru;
          this.prmgiDesc = res[key].giAcik;
          this.prmgiYillikIzin = res[key].giYillikIzin;
          this.prmsiDesc = res[key].siAcik;
          this.prmfmDesc = res[key].fmAcik;
          this.prmgiNeden = res[key].giNeden;
          this.prmsiNeden = res[key].siNeden;
          this.prmfmNeden = res[key].fmNeden;
          this.prmfmTip = res[key].fmTip;
          this.prmfmServis = res[key].fmServis;
          this.prmhktUseForm = res[key].hktUseForm;
          this.prmhktFormOnay = res[key].hktFormOnay;
          this.prmhktNeden = res[key].hktNeden;
          this.prmhktDesc = res[key].hktAcik;
          this.prmhktGecmisIslem = res[key].hktGecmisIslem;
          this.prmhktGecmisIslemSure = res[key].hktGecmisIslemSure;

          this.prmpstDesc = res[key].pstAcik;
          this.prmpstGecmisIslem = res[key].pstGecmisIslem;
          this.prmpstGecmisIslemSure = res[key].pstGecmisIslemSure;

          this.prmRet = res[key].ret;
          this.prmgiGecmisIslem = res[key].giGecmisIslemSure;
          this.prmsiGecmisIslem = res[key].siGecmisIslemSure;
          this.prmfmGecmisIslem = res[key].fmGecmisIslemSure;
        });

        // console.log(this.prmreportUrl);

        if (this.userType === "A") {
          this.amrGetApproveInfo(this.user, this.prmonayTuru, null, 0);
        }


        // this.getLanguage(this.prmlanguage);

        this.getUserLanguage();
      }, err => {
        console.log(err);
      });

  };

  ascGetDateCalculation(obj): Promise<any> {
    return this.poolUserService.getDateCalculation(obj).toPromise().then(data => {
      return data;
    });

  }

  ascGetDateCalculation2(obj) {
    return this.poolUserService.getDateCalculation(obj).toPromise().then((res: any[]) => {
      this.responseList = res;
    });

  }


  getDateCalculation(obj) {
    let config = new MatSnackBarConfig();
    config.panelClass = ['message-position'];
    this.snackBar.open("İşlem yapılıyor. Lütfen Bekleyiniz...", "", config);
    this.nextBtn = false;

    // var keepGoing = true;
    // for (let i = 0; i < this.usrSelection.selected.length; i++) {
    //   if (keepGoing) {
    //     obj.sicilNo = this.usrSelection.selected[i].username;
    this.ascGetDateCalculation(obj).then(data => {
      console.log(obj);
      if (data[0].sonuc != 'TAMAM') {
        this.snackBar.dismiss();
        this.openSnackBar(data[0].sebep, 3);
        this.nextBtn = false;
        // keepGoing=false;
      } else {
        this.snackBar.dismiss();
        this.nextBtn = true;

      }
      this.secondFormGroup.patchValue({ days: data[0].gun, startdate: data[0].basTarih, enddate: data[0].bitTarih, isbasitarih: data[0].isBasiTarih });

      // this.nextBtn = true;
    },
      err => {
        console.log(err);
        this.snackBar.dismiss();
        let config = new MatSnackBarConfig();
        config.panelClass = ['message-position'];
        config.duration = 3000;
        this.snackBar.open(err, "", config);
        // keepGoing=false;
        // this.openSnackBar(err.message, 3);
      }
    );
    //   }
    // }

    return this.nextBtn;

  };

  async getDateCalculationList(obj) {
    let config = new MatSnackBarConfig();
    config.panelClass = ['message-position'];
    this.snackBar.open("İşlem yapılıyor. Lütfen Bekleyiniz...", "", config);
    this.nextBtn = false;

    var keepGoing = true;
    for (var key in this.personelInfo) {
      if (keepGoing) {
        obj.sicilNo = this.personelInfo[key].username;
        await this.ascGetDateCalculation2(obj);
        // debugger;
        if (this.responseList[0].sonuc != 'TAMAM') {
          console.log(this.responseList);
          this.snackBar.dismiss();
          this.openSnackBar('(' + this.responseList[0].sicilNo + ') SICIL ' + this.responseList[0].sebep, 3);
          this.nextBtn = false;
          keepGoing = false;
        } else {
          this.snackBar.dismiss();
          this.nextBtn = true;
        }

        this.secondFormGroup.patchValue({ days: this.responseList[0].gun, startdate: this.responseList[0].basTarih, enddate: this.responseList[0].bitTarih, isbasitarih: this.responseList[0].isBasiTarih });

        // this.nextBtn = true;
        // },
        //   err => {
        //     console.log(err);
        //     this.snackBar.dismiss();
        //     let config = new MatSnackBarConfig();
        //     config.panelClass = ['message-position'];
        //     config.duration = 3000;
        //     this.snackBar.open(err, "", config);
        //     this.nextBtn = false;
        //     keepGoing=false;
        //     // this.openSnackBar(err.message, 3);
        //   }
        // );
      }
    }

    return this.nextBtn;

  };

  getTimeCalculation(obj) {
    this.ascGetDateCalculation(obj).then(data => {
      if (data[0].sonuc != 'TAMAM') {

        // console.log(data);
        // console.log(data[0].sonuc);
        this.nextBtn = false;
        this.openSnackBar(data[0].sebep, 3);


      }

      // console.log(data[0].sonuc);
      //else { this.nextBtn = true; }
    });


  };

  getUserLanguage() {

    this.poolUserService.getLanguage(this.user, null, null).subscribe(res => {
      this.usrlanguages = res;
      this.getLanguage(this.usrlanguages[0].id);
    });

  }






  async addTab(): Promise<any> {


    let myDate = moment(new Date());
    if (this.userType === 'A' && (this.flowIndex === 5 && this.nextBtnAlert)) {
      let config = new MatSnackBarConfig();
      config.panelClass = ['message-position'];
      config.duration = 3000;
      this.snackBar.open("Saat bilgisi giriniz", "", config);
      this.nextBtn = false;
      this.stepper.previous();

      return;
    }

    // console.log(this.stepper.selectedIndex);
    // if (this.userType === 'A' && (this.flowIndex === 3 || this.flowIndex === 2) && this.stepper.selectedIndex === 1) {
    //   this.secondFormGroup.patchValue({ starttime: '00:00', endtime: '00:00' })
    // }

    this.formOnay = false;
    this.aprDataSource = [];
    let approveData: any = [];
    if (this.flowIndex === 1) {
      if (this.prmgiUseForm || this.prmgiFormOnay)
        this.aprDisplayedColumns = ["prsicil", "name", "bastarih", "gun", "bittarih", "isbasitarih", "neden", "sebep", "dokum"];
      else
        this.aprDisplayedColumns = ["prsicil", "name", "bastarih", "gun", "bittarih", "isbasitarih", "neden", "sebep"];
    }
    else if (this.flowIndex === 2)
      if (this.prmsiUseForm || this.prmsiFormOnay)
        this.aprDisplayedColumns = [
          "prsicil",
          "name",
          "bastarih",
          "bassaat",
          "bitsaat",
          "sure",
          "neden",
          "sebep",
          "dokum"
        ];
      else
        this.aprDisplayedColumns = [
          "prsicil",
          "name",
          "bastarih",
          "bassaat",
          "bitsaat",
          "sure",
          "neden",
          "sebep"
        ];
    else if (this.flowIndex === 3)
      if (this.prmfmUseForm || this.prmfmFormOnay)
        this.aprDisplayedColumns = [
          "prsicil",
          "name",
          "bastarih",
          "bassaat",
          "bitsaat",
          "sure",
          "yemekyer",
          "gelis",
          "gelisservis",
          "gidis",
          "gidisservis",
          "neden",
          "sebep",
          "dokum"
        ];
      else
        this.aprDisplayedColumns = [
          "prsicil",
          "name",
          "bastarih",
          "bassaat",
          "bitsaat",
          "sure",
          "yemekyer",
          "gelis",
          "gelisservis",
          "gidis",
          "gidisservis",
          "neden",
          "sebep"
        ];
    else if (this.flowIndex === 5)
      if (this.prmhktUseForm)
        this.aprDisplayedColumns = [
          "prsicil",
          "name",
          "iostartdate",
          "iostarttime",
          "inoutput",
          "ioreasonItem",
          "iodesc",
          "dokum"
        ];
      else
        this.aprDisplayedColumns = [
          "prsicil",
          "name",
          "iostartdate",
          "iostarttime",
          "inoutput",
          "ioreasonItem",
          "iodesc"
        ];
    else if (this.flowIndex === 6)
      this.aprDisplayedColumns = [
        "prsicil",
        "name",
        "bastarih",
        "posta",
        "sebep"
      ];
    else if (this.flowIndex === 8)
      this.aprDisplayedColumns = [
        "prsicil",
        "name",
        "amirkodu",
        "amiradi",
        "bastarih",
        "bittarih",
        "sebep"
      ];
    else if (this.flowIndex === 9)
      this.aprDisplayedColumns = [
        "prsicil",
        "name",
        "neden",
        "amirkodu",
        "amiradi",
        "bastarih",
        "sebep"
      ];
    // approveData = [];
    // console.log(this.userType);
    let data: any = {};
    if (this.userType === "P") {

      if (this.flowIndex === 5) {
        this.addTimeIO();
      }

      let obj: any = {};
      obj = {
        type: this.flowIndex, sirket: 1, sicilNo: this.user, neden: this.secondFormGroup.value.reasonItem.split('-')[0],
        basTarih: formatDate(this.secondFormGroup.value.startdate, "yyyy-MM-ddT00:00:00", "en-US"),
        // gun: this.secondFormGroup.value.days, //this.secondFormGroup.value.days,
        gun: ((this.dayDateChange === "picker") ? null : (this.secondFormGroup.value.days)), //this.secondFormGroup.value.days,
        // bitTarih: formatDate(this.secondFormGroup.value.enddate, "yyyy-MM-dd", "en-US"), //formatDate(this.secondFormGroup.value.enddate, "yyyy-MM-ddT00:00:00", "en-US"),
        bitTarih: ((this.dayDateChange === "date") ? null : (formatDate(this.secondFormGroup.value.enddate, "yyyy-MM-dd", "en-US"))),
        isBasiTarih: "1900-01-01T00:00:00.000Z", sebep: "", aciklama: "", idNo: 0, user: this.user
      }

      // console.log(obj);
      await this.poolUserService.getDateCalculation(obj).toPromise().then(data1 => {
        approveData = [];
        // console.log(data1);
        data = {
          srkodu: 1,
          prsicil: this.user,
          name: this.usrDataSource.data[0].name,
          bastarih: formatDate(this.secondFormGroup.value.startdate, "yyyy-MM-dd", "en-US"),
          bassaat: this.secondFormGroup.value.starttime,
          bitsaat: this.secondFormGroup.value.endtime,
          sure: this.secondFormGroup.value.times,
          yemekyer: this.secondFormGroup.value.useYemek,
          gelis: this.secondFormGroup.value.useServiceArrival,
          gidis: this.secondFormGroup.value.useServiceGoing,
          gelisservis: this.secondFormGroup.value.arrivalservice,
          gidisservis: this.secondFormGroup.value.goingservice,
          gun: this.secondFormGroup.value.days, //  ((this.dayDateChange=== "picker") ? null : (this.secondFormGroup.value.days)), //this.secondFormGroup.value.days,
          inoutput: this.secondFormGroup.value.inoutput,
          ioreasonItem: this.secondFormGroup.value.reasonItem,
          iodesc: this.secondFormGroup.value.reason,
          iostartdate: formatDate(this.secondFormGroup.value.iostartdate, "yyyy-MM-dd", "en-US"),
          iostarttime: this.secondFormGroup.value.iostarttime,
          bittarih: formatDate(this.secondFormGroup.value.enddate, "yyyy-MM-dd", "en-US"), // ((this.dayDateChange=== "date") ? null : (formatDate(this.secondFormGroup.value.enddate, "yyyy-MM-dd", "en-US"))),
          neden: this.secondFormGroup.value.reasonItem,
          posta: this.secondFormGroup.value.postaItem,
          // isbasi: formatDate(this.enddate.value, 'yyyy-MM-ddTHH:mm:ss.SSSZ', 'en-US') ,
          isbasitarih: formatDate(data1[0].isBasiTarih, "yyyy-MM-dd", "en-US"),
          sebep: this.secondFormGroup.value.reason,
          sebep2: this.secondFormGroup.value.reason2,
          aciklama: this.secondFormGroup.value.reason,
          post: false,
          ret: 0
        };
        approveData.push(data);
      })
    }
    else {


      if ((this.flowIndex === 1 || this.flowIndex === 2 || this.flowIndex === 3) && this.stepper.selectedIndex === 2) {
        let config = new MatSnackBarConfig();
        config.panelClass = ['message-position'];
        this.snackBar.open("İşlem yapılıyor. Lütfen Bekleyiniz...", "", config);
        this.nextBtn = false;

      }

      for (var i = 0, len = this.personelInfo.length; i < len; i++) {


        this.secondFormGroup.patchValue({ yillikKalan: this.personelInfo[i].yillikKalan });

        let personelItem = this.personelInfo[i];
        let obj: any = {};
        obj = {
          type: this.flowIndex, sirket: 1, sicilNo: personelItem.username, neden: (this.flowIndex === 5 ? (personelItem.ioreasonItem !== null ? personelItem.ioreasonItem.split('-')[0] : 0) : (this.flowIndex === 6 ? 0 : (this.secondFormGroup.value.reasonItem !== null ? this.secondFormGroup.value.reasonItem.split('-')[0] : 0))),
          basTarih: formatDate(this.secondFormGroup.value.startdate, "yyyy-MM-ddT00:00:00", "en-US"),
          gun: ((this.dayDateChange === "picker") ? null : (this.secondFormGroup.value.days)), //this.secondFormGroup.value.days,
          bitTarih: ((this.dayDateChange === "date") ? null : (formatDate(this.secondFormGroup.value.enddate, "yyyy-MM-dd", "en-US"))), //formatDate(this.secondFormGroup.value.enddate, "yyyy-MM-ddT00:00:00", "en-US"),
          isBasiTarih: "1900-01-01T00:00:00.000Z", sebep: "", aciklama: "", idNo: 0, user: this.user
        }


        if (this.flowIndex !== 6 && this.flowIndex !== 8 && this.flowIndex !== 9) {

          // console.log(this.personelInfo);
          // if (this.stepper.selectedIndex === 2)
          //   this.getDateCalculationList(obj);
          await this.poolUserService.getDateCalculation(obj).toPromise().then(data1 => {
            let data = {
              type: this.flowIndex,
              srkodu: 1,
              prsicil: this.personelInfo[i].username,
              name: this.personelInfo[i].name,
              bastarih: formatDate(this.secondFormGroup.value.startdate, "yyyy-MM-dd", "en-US"),
              bassaat: this.secondFormGroup.value.starttime,
              bitsaat: this.secondFormGroup.value.endtime,
              sure: this.secondFormGroup.value.times,
              gelis: this.personelInfo[i].useServiceArrival,
              gidis: this.personelInfo[i].useServiceGoing,
              gelisservis: this.personelInfo[i].serviceArrival,
              gidisservis: this.personelInfo[i].serviceGoing,
              yemekyer: this.personelInfo[i].useYemek, //this.secondFormGroup.value.useyemek,
              gun: (this.flowIndex === 5) ? 0 : data1[0].gun, //this.deneme[i].gun,
              // bittarih: formatDate(this.secondFormGroup.value.enddate, "yyyy-MM-dd", "en-US"),
              bittarih: formatDate(data1[0].bitTarih, "yyyy-MM-dd", "en-US"),
              neden: this.secondFormGroup.value.reasonItem,
              posta: this.secondFormGroup.value.postaItem,
              inoutput: this.personelInfo[i].inoutput,
              ioreasonItem: this.personelInfo[i].ioreasonItem,
              iodesc: this.personelInfo[i].iodesc,
              iostartdate: this.personelInfo[i].iostartdate,
              iostarttime: this.personelInfo[i].iostarttime,
              // onay1:1, onay1kl:this.user,
              // isbasi: formatDate(this.enddate.value, 'yyyy-MM-ddTHH:mm:ss.SSSZ', 'en-US') ,
              // isbasi: formatDate(this.secondFormGroup.value.enddate, "yyyy-MM-dd", "en-US"),
              isbasitarih: formatDate(data1[0].isBasiTarih, "yyyy-MM-dd", "en-US"),
              sebep: this.secondFormGroup.value.reason,
              sebep2: this.secondFormGroup.value.reason2,
              aciklama: this.secondFormGroup.value.reason,
              post: false,
              ret: 0
            };
            approveData.push(data);
          })
        }
        else {

          let data = {
            type: 1,
            srkodu: 1,
            prsicil: this.personelInfo[i].username,
            name: this.personelInfo[i].name,
            bastarih: this.flowIndex === 9 ? formatDate(myDate.toString(), "yyyy-MM-dd", "en-US") : formatDate(this.secondFormGroup.value.startdate, "yyyy-MM-dd", "en-US"),
            amirkodu: this.secondFormGroup.value.amirkodu,
            amiradi: this.secondFormGroup.value.amiradi,
            bassaat: this.flowIndex === 9 ? '00:00' : this.secondFormGroup.value.starttime,
            bitsaat: this.flowIndex === 9 ? '00:00' : this.secondFormGroup.value.endtime,
            sure: this.flowIndex === 9 ? '00:00' : this.secondFormGroup.value.times,
            gelis: this.personelInfo[i].useServiceArrival,
            gidis: this.personelInfo[i].useServiceGoing,
            gelisservis: this.personelInfo[i].serviceArrival,
            gidisservis: this.personelInfo[i].serviceGoing,
            yemekyer: this.personelInfo[i].useYemek, //this.secondFormGroup.value.useyemek,
            gun: 0, //this.deneme[i].gun,
            bittarih: this.flowIndex === 9 ? "1900-01-01T00:00:00.000Z" : formatDate(this.secondFormGroup.value.enddate, "yyyy-MM-dd", "en-US"),
            neden: this.secondFormGroup.value.reasonItem,
            posta: this.secondFormGroup.value.postaItem,
            inoutput: this.personelInfo[i].inoutput,
            ioreasonItem: this.personelInfo[i].ioreasonItem,
            iodesc: this.personelInfo[i].iodesc,
            iostartdate: this.flowIndex === 9 ? "1900-01-01T00:00:00.000Z" : this.personelInfo[i].iostartdate,
            iostarttime: this.flowIndex === 9 ? '00:00' : this.personelInfo[i].iostarttime,
            // onay1:1, onay1kl:this.user,
            // isbasi: formatDate(this.enddate.value, 'yyyy-MM-ddTHH:mm:ss.SSSZ', 'en-US') ,
            isbasitarih: this.flowIndex === 9 ? "1900-01-01T00:00:00.000Z" : formatDate(this.secondFormGroup.value.isbasitarih, "yyyy-MM-dd", "en-US"),
            sebep: this.secondFormGroup.value.reason,
            sebep2: this.secondFormGroup.value.reason2,
            aciklama: this.secondFormGroup.value.reason,
            post: false,
            ret: 0
          };
          approveData.push(data);
        }
      }

      // console.log('2');
      if ((this.flowIndex === 1 || this.flowIndex === 2 || this.flowIndex === 3) && this.stepper.selectedIndex === 2) {
        this.snackBar.dismiss();
        this.nextBtn = true;
      }

    }

    // console.log(approveData);
    this.aprDataSource = new MatTableDataSource<DailyApproverElement>(approveData);
    this.aprDataSource.paginator = this.aprPaginator;
    this.aprDataSource.sort = this.aprSort;


  }

  // printDelay() {
  //   this.delay(300);
  // }

  // print(): void {

  //   let printContents, popupWin;
  //   printContents = document.getElementById('print-section').innerHTML;
  //   popupWin = window.open('', '_blank', 'top=0,left=0,height=100%,width=auto');
  //   popupWin.document.open();
  //   popupWin.document.write(`
  //     <html>
  //       <head>
  //         <title>${this.outofoffice[this.flowIndex].value} Formu</title>
  //         <style>
  //         //........Customized style.......
  //         </style>
  //       </head>
  //   <body onload="window.print();window.close()">${printContents}</body>
  //     </html>`
  //   );
  //   popupWin.document.close();

  //   this.hiddenOnPrint=false;
  // }

  getTimeInterval(startTime, endTime) {
    var start = moment(startTime, "HH:mm");
    var end = moment(endTime, "HH:mm");
    var minutes = end.diff(start, 'minutes');
    var interval = moment().hour(0).minute(minutes);
    return interval.format("HH:mm");
  }


  addTimeIO() {

    let obj: any = {};

    if (this.userType === 'P') {
      if (this.secondFormGroup.value.iostarttime === '00:00')
        return false;

      obj = {
        type: this.flowIndex,
        sirket: 1,
        sicilNo: this.user, //((this.userType === 'A') ? this.personelInfo[0].username : this.user),
        neden: this.secondFormGroup.value.reasonItem.split("-")[0], // 15,
        basTarih: formatDate(this.secondFormGroup.value.startdate, "yyyy-MM-ddT00:00:00", "en-US"),
        bitTarih: formatDate(this.secondFormGroup.value.enddate, "yyyy-MM-ddT00:00:00", "en-US"),
        gun: 0,
        basSaat: this.secondFormGroup.value.starttime,
        bitSaat: this.secondFormGroup.value.endtime,
        sure: this.secondFormGroup.value.iostarttime,
        iobasTarih: formatDate(this.secondFormGroup.value.iostartdate, "yyyy-MM-ddT00:00:00", "en-US"),
        iobasSure: this.secondFormGroup.value.iostarttime,
        inoutput: this.secondFormGroup.value.inoutput,
        sebep: "",//this.secondFormGroup.value.reason2,
        aciklama: "",//this.secondFormGroup.value.reason,
        idNo: 0,
        user: this.user
      }
    } else {
      obj = {
        type: this.flowIndex,
        sirket: 1,
        sicilNo: ((this.userType === 'A') ? this.personelInfo[0].username : this.user),
        neden: this.secondFormGroup.value.reasonItem.split("-")[0], // 15,
        basTarih: formatDate(this.secondFormGroup.value.startdate, "yyyy-MM-ddT00:00:00", "en-US"),
        bitTarih: formatDate(this.secondFormGroup.value.enddate, "yyyy-MM-ddT00:00:00", "en-US"),
        gun: 0,
        basSaat: this.secondFormGroup.value.starttime,
        bitSaat: this.secondFormGroup.value.endtime,
        sure: this.secondFormGroup.value.iostarttime,
        iobasTarih: formatDate(this.secondFormGroup.value.iostartdate, "yyyy-MM-ddT00:00:00", "en-US"),
        iobasSure: this.secondFormGroup.value.iostarttime,
        inoutput: this.secondFormGroup.value.inoutput,
        sebep: "",//this.secondFormGroup.value.reason2,
        aciklama: "",//this.secondFormGroup.value.reason,
        idNo: 0,
        user: this.user
      }


    }



    this.getTimeCalculation(obj);

  }


  addTime(source) {


    let start = moment(this.secondFormGroup.value.startdate);
    let end = moment(this.secondFormGroup.value.enddate);

    let myDate = moment(new Date());
    let sure = (this.flowIndex === 1 ? this.prmgiGecmisIslem : (this.flowIndex === 2 ? this.prmsiGecmisIslem : (this.flowIndex === 3 ? this.prmfmGecmisIslem : (this.flowIndex === 6 ? this.prmpstGecmisIslemSure : 0))));
    if (myDate.diff(start, 'days') > sure) {
      this.openSnackBar(sure + " gün geriye giriş yapılamaz.", 3);
      this.secondFormGroup.patchValue({ days: null });
      this.nextBtn = false;
      return;
    } else this.nextBtn = true;


    if (source === "diff" && this.prmfmTip === 1) {

      if (this.prmsiSaat) {
        let sure = this.secondFormGroup.value.times.replace(':', '');
        if (Number(sure) < 30) {
          this.openSnackBar("30dk küçük izin girilemez.", 1)
          this.nextBtn = false;
          return;
        }
        else
          this.nextBtn = true;
      }
      let diff = moment(this.secondFormGroup.value.times, 'HH:mm').diff(moment('00:00', 'HH:mm'), 'minutes');
      this.secondFormGroup.patchValue({ endtime: moment(this.secondFormGroup.value.starttime, "HH:mm").add(diff, 'minutes').format("HH:mm") });
    }
    else if (source === "diff" && this.prmfmTip === 0) {
      if (this.prmsiSaat) {
        let sure = this.secondFormGroup.value.times.replace(':', '');
        if (Number(sure) < 30) {
          this.openSnackBar("30dk küçük izin girilemez.", 1)
          this.nextBtn = false;
          return;
        }
        else
          this.nextBtn = true;
        this.secondFormGroup.patchValue({ times: moment(this.secondFormGroup.value.times, "HH:mm").format("HH:mm") });
      }
    }
    else if (source === "time") {
      let start = moment(this.secondFormGroup.value.starttime, 'HH:mm');
      let end = moment(this.secondFormGroup.value.endtime, 'HH:mm');
      let sure = this.getTimeInterval(start, end).replace(':', '');

      if (this.prmsiSaat) {
        if (Number(sure) < 30) {
          this.openSnackBar("30dk küçük izin girilemez.", 1)
          this.nextBtn = false;
          return;
        } else
          this.nextBtn = true;

      }



      this.secondFormGroup.patchValue({ times: this.getTimeInterval(start, end) });


    }

    // console.log(this.personelInfo);
    if (this.userType === 'A')
      for (var i = 0, len = this.personelInfo.length; i < len; i++) {
        let obj: any = {};
        obj = {
          type: this.flowIndex,
          sirket: 1,
          sicilNo: this.personelInfo[i].username,
          neden: this.secondFormGroup.value.reasonItem.split("-")[0], // 15,
          basTarih: formatDate(this.secondFormGroup.value.startdate, "yyyy-MM-ddT00:00:00", "en-US"),
          bitTarih: formatDate(this.secondFormGroup.value.enddate, "yyyy-MM-ddT00:00:00", "en-US"),
          gun: 0,
          basSaat: this.secondFormGroup.value.starttime,
          bitSaat: this.secondFormGroup.value.endtime,
          sure: ((source === "picker") ? 0 : (this.secondFormGroup.value.times)),
          iobasTarih: formatDate(this.secondFormGroup.value.iostartdate, "yyyy-MM-ddT00:00:00", "en-US"),
          iobasSure: this.secondFormGroup.value.iostarttime,
          inoutput: this.secondFormGroup.value.inoutput,
          sebep: "",//this.secondFormGroup.value.reason2,
          aciklama: "",//this.secondFormGroup.value.reason,
          idNo: 0,
          user: this.user
        }

        this.getTimeCalculation(obj);
      }
    else {

      let obj: any = {};
      obj = {
        type: this.flowIndex,
        sirket: 1,
        sicilNo: this.user,
        neden: this.secondFormGroup.value.reasonItem.split("-")[0], // 15,
        basTarih: formatDate(this.secondFormGroup.value.startdate, "yyyy-MM-ddT00:00:00", "en-US"),
        bitTarih: formatDate(this.secondFormGroup.value.enddate, "yyyy-MM-ddT00:00:00", "en-US"),
        gun: 0,
        basSaat: this.secondFormGroup.value.starttime,
        bitSaat: this.secondFormGroup.value.endtime,
        sure: ((source === "picker") ? 0 : (this.secondFormGroup.value.times)),
        iobasTarih: formatDate(this.secondFormGroup.value.iostartdate, "yyyy-MM-ddT00:00:00", "en-US"),
        iobasSure: this.secondFormGroup.value.iostarttime,
        inoutput: this.secondFormGroup.value.inoutput,
        sebep: "",//this.secondFormGroup.value.reason2,
        aciklama: "",//this.secondFormGroup.value.reason,
        idNo: 0,
        user: this.user
      }

      this.getTimeCalculation(obj);
    }
  }


  reasonItemChange(e) {

    if (this.flowIndex === 5) { this.secondFormGroup.patchValue({ iostarttime: null }); }
    if (this.flowIndex === 1) { this.secondFormGroup.patchValue({ enddate: null, days: null }); }
    if (this.flowIndex === 9) { this.secondFormGroup.patchValue({ amirkodu: null, amiradi: null }); }
    this.selectedReason = e.value;

  }


  postaItemChange() {
    if (this.flowIndex === 6) this.secondFormGroup.patchValue({ startdate: null });
  }

  createColumn() {
    this.shiftDates = [];
    let start = moment(this.thirdFormGroup.value.shiftDate1);
    let end = moment(this.thirdFormGroup.value.shiftDate2);
    let diff = end.diff(start, 'days');
    for (var i = 0, len = diff; i <= len; i++) {
      let myDate = start;
      this.shiftDates.push(formatDate(myDate.toString(), "dd-MM-yyyy", "en-US"));
      myDate.add(1, 'days');
    }

  }


  addDay(source) {

    // debugger;


    if (this.flowIndex === 2 || this.flowIndex === 3) {
      this.secondFormGroup.patchValue({ enddate: this.secondFormGroup.value.startdate, starttime: null, endtime: null });
      this.nextBtn = false;
      return;
    }

    this.dayDateChange = source;
    if (this.flowIndex !== 8 && this.secondFormGroup.value.reasonItem === null && this.secondFormGroup.value.postaItem === null) {
      this.openSnackBar(this.flowIndex === 6 ? 'Hafta Tatili girilmelidir.' : 'Neden girilmelidir.', 3);
      this.secondFormGroup.patchValue({ startdate: null, enddate: null });
      this.nextBtn = false;
      return;
    }

    let start = moment(this.secondFormGroup.value.startdate);
    let end = moment(this.secondFormGroup.value.enddate);

    if (end.diff(start, 'days') < 0) {
      this.openSnackBar("Bitiş Tarihi Baş. Tarihten küçük olamaz.", 3);
      this.secondFormGroup.patchValue({ enddate: null });
      this.nextBtn = false;
      return;
    }


    let myDate = moment(new Date());
    let sure = (this.flowIndex === 1 ? this.prmgiGecmisIslem : (this.flowIndex === 2 ? this.prmsiGecmisIslem : (this.flowIndex === 3 ? this.prmfmGecmisIslem : (this.flowIndex === 6 ? this.prmpstGecmisIslemSure : 0))));
    if (myDate.diff(start, 'days') > sure) {
      this.openSnackBar(sure + " gün geriye giriş yapılamaz.", 3);
      this.secondFormGroup.patchValue({ days: null });
      this.nextBtn = false;
      return;
    } else this.nextBtn = true;


    if (this.flowIndex !== 6 && this.flowIndex !== 8) {


      if (this.flowIndex == 1 || this.flowIndex == 2 || this.flowIndex == 3) {
        if (source == "picker" && this.secondFormGroup.value.enddate == null)
          this.secondFormGroup.patchValue({ enddate: this.secondFormGroup.value.startdate, starttime: '00:00', endtime: '00:00' });
        if (this.flowIndex == 3)
          return;
      }

      if (this.secondFormGroup.value.startdate === null) return;
      if (this.secondFormGroup.value.enddate === null && this.secondFormGroup.value.days === 0) return;
    }


    if (this.flowIndex !== 8) {
      let obj: any = {};
      obj = {
        type: (this.flowIndex === 2 ? 1 : this.flowIndex),
        sirket: 1,
        sicilNo: ((this.userType === 'A') ? this.personelInfo[0].username : this.user),
        neden: this.flowIndex === 6 ? 0 : this.secondFormGroup.value.reasonItem.split("-")[0], // 15,
        posta: this.flowIndex === 6 ? this.secondFormGroup.value.postaItem.split("-")[0] : 0, // 15,
        basTarih: formatDate(this.secondFormGroup.value.startdate, "yyyy-MM-ddT00:00:00", "en-US"),
        gun: ((source === "picker") ? null : (this.secondFormGroup.value.days)),
        bitTarih: ((this.dayDateChange === "date") ? null : (formatDate(this.secondFormGroup.value.enddate, "yyyy-MM-dd", "en-US"))),// formatDate(this.secondFormGroup.value.enddate, "yyyy-MM-ddT00:00:00", "en-US"),
        isBasiTarih: "1900-01-01T00:00:00.000Z",  //formatDate(this.secondFormGroup.value.enddate, "yyyy-MM-ddThh:mm:ss", "en-US"), //"1900-01-01T18:25:43.511Z",
        sebep: "",//this.secondFormGroup.value.reason2,
        aciklama: "",//this.secondFormGroup.value.reason,
        idNo: 0,
        user: this.user
      }

      if (this.flowIndex === 6)
        this.getTimeCalculation(obj);
      else if (this.flowIndex === 1) {

        if (this.userType === 'A')
          this.getDateCalculationList(obj);
        else
          this.getDateCalculation(obj)
      }

    }
    // else
    //   console.log(this.personelInfo[0].userName);
    // let difference=end.diff(start, 'days');
    // this.secondFormGroup.patchValue({days:difference+1});
    // }
  }

  getAuth(user, type) {
    this.poolUserService.getPoolAuth(user, type).subscribe(
      res => {
        this.outofoffice[1].auth = res["gunluk"];
        this.outofoffice[2].auth = res["saat"];
        this.outofoffice[3].auth = res["mesai"];
        this.outofoffice[4].auth = res["vardiya"];
        this.outofoffice[5].auth = res["hareket"];
        this.outofoffice[6].auth = res["posta"];

        this.outofoffice[8].auth = res["rotasyon"];
        this.outofoffice[9].auth = res["guncelleme"];
        this.prmamir1 = res["amir1"];

        for (var i = 0, len = this.outofoffice.length; i < len; i++) {
          if (this.outofoffice[i].auth === true) {
            this.outofofficeCount++;
          }
        }

        // else if (this.outofoffice[2].auth)
        // this.printRules="[0,1,2,3]";


      },
      err => {
        console.log(err);
      }

    );



  }

  isAllSelected() {
    const numSelected = this.usrSelection.selected.length;
    const numRows = this.usrDataSource.data.length;
    return numSelected === numRows;

  }

  isAmrAllSelected() {
    const numSelected = this.amrSelection.selected.length;
    const numRows = this.amrDataSource.data.length;
    return numSelected === numRows;
  }

  remove(id: string): void {
    this.personelInfo = this.personelInfo.filter(
      item => item.id !== id
    );
  }

  checkboxLabel(row?: UserElement): string {
    if (!row) {
      return `${this.isAllSelected() ? "select" : "deselect"} all`;
    }
    return `${this.usrSelection.isSelected(row) ? "deselect" : "select"
      } row ${row.id + 1}`;
  }

  tabNextControl() {

    if (this.userType === 'P')
      this.nextBtn = true;

    if ((this.stepper.selectedIndex === 0 || this.stepper.selectedIndex === 1) && this.flowIndex !== 5) {
      this.nextBtn = this.personelInfo.length === 0 ? false : true;
    }

    // if (this.flowIndex===5)
    //   this.nextBtn=false;

    // if (this.flowIndex === 5) this.addTab();

    // console.log(this.nextBtn);
  }

  updateGridObj(element, e, name) {


    if (name === "iostartdate")
      element.iostartdate = formatDate(e.value, "yyyy-MM-dd", "en-US");
    else if (name === "iostarttime")
      element.iostarttime = e.srcElement.value
    else if (name === "iodesc")
      element.iodesc = e.srcElement.value
    else if (name === "inoutput")
      element.inoutput = e.value
    else if (name === "ioreasonItem")
      element.ioreasonItem = e.value
    else if (name === "serviceArrival")
      element.serviceArrival = e.value
    else if (name === "serviceGoing")
      element.serviceGoing = e.value
    else {
      if (!e.checked) {
        if (name === "useYemek")
          element.useYemek = e.checked;
        if (name === "useServiceArrival") {
          element.useServiceArrival = e.checked;
          element.serviceArrival = '';
        } if (name === "useServiceGoing") {
          element.useServiceGoing = e.checked;
          element.serviceGoing = '';
        }
      }
      else {
        if (name === "useYemek")
          element.useYemek = e.checked;
        if (name === "useServiceArrival") {
          element.useServiceArrival = e.checked;
          element.serviceArrival = this.fmservices.filter((item) => item.username === element.username)[0].kodu;
        }
        if (name === "useServiceGoing") {
          element.useServiceGoing = e.checked;
          element.serviceGoing = this.fmservices.filter((item) => item.username === element.username)[0].kodu;
        }
      }
    }

    this.personelInfo.forEach(row => {
      if (row.id === element.id) {
        const obj = {
          id: row.id, username: row.username, name: row.name, depart: row.depart,
          useServiceArrival: element.useServiceArrival,
          useServiceGoing: element.useServiceGoing,
          serviceArrival: element.serviceArrival,
          serviceGoing: element.serviceGoing,
          useYemek: element.useYemek,
          inoutput: element.inoutput,
          ioreasonItem: element.ioreasonItem,
          iodesc: element.iodesc,
          iostartdate: element.iostartdate,
          iostarttime: element.iostarttime
        };

        if (this.flowIndex === 5) {

          let start = moment(obj.iostartdate);
          let myDate = moment(new Date());
          let gecmisSure = 40;
          if (Math.abs(myDate.diff(start, 'days')) > gecmisSure) {
            this.openSnackBar(gecmisSure + " günden fazla ileri veya geri hareket girişi yapılamaz.", 3);
            this.nextBtn = false;
            return;
          }

          if (name === "iostartdate") {
            let start = moment(obj.iostartdate);
            let myDate = moment(new Date());
            let sure = this.prmhktGecmisIslemSure;


            if (myDate.diff(start, 'days') > sure)
              this.openSnackBar(sure + " gün geriye dönük hareket girişi " + this.prmfirmName + " IK birimine gidecektir.", 3);


          }



          const obj1 = {
            type: this.flowIndex,
            sirket: 1,
            sicilNo: this.personelInfo[0].username,
            neden: element.ioreasonItem.split("-")[0], // 15,
            iobasTarih: formatDate(element.iostartdate, "yyyy-MM-ddT00:00:00", "en-US"),
            iobasSure: element.iostarttime,
            inoutput: element.inoutput,
          }

          // console.log("Ahmet");
          // console.log(this.approve);
          // if (!this.approve) {
          this.ascGetDateCalculation(obj1).then(data => {

            // this.snackBar.open("Lütfen Bekleyiniz...", "", {
            //   verticalPosition: "top"
            // });

            if (data[0].sonuc != 'TAMAM') {
              this.nextBtn = false;


              // element.iostarttime=undefined;
              // obj.iostarttime=undefined;

            } else {

              let prmhktNdnDesc = false;
              if (obj.ioreasonItem.split("-")[0] === "5") { prmhktNdnDesc = true }

              if (obj.iostarttime !== undefined && obj.iostarttime !== '')
                this.nextBtnAlert = false;
              else
                this.nextBtnAlert = true;
              // "Süre bilgisi giriniz."
              // && (obj.iostarttime !== undefined && obj.iostarttime !== '')
              if ((obj.inoutput !== undefined && obj.inoutput !== '') && (obj.iostartdate !== undefined && obj.iostartdate !== '') && (this.prmhktDesc || prmhktNdnDesc ? (obj.iodesc !== undefined && obj.iodesc !== '') : true)
                && (this.prmhktNeden ? (obj.ioreasonItem !== undefined && obj.ioreasonItem !== '') : true)) this.nextBtn = true
              else this.nextBtn = false;

            }
          });
          // }

        }

        this.remove(row.id);
        this.personelInfo.push(obj);


      }
    });


  }




  usrMasterToggle(row) {
    if (row === undefined) {
      if (this.isAllSelected()) {
        this.usrSelection = [];
        this.personelInfo = [];
      } else {

        this.personelInfo = [];
        this.usrDataSource.data.forEach(row => {
          this.usrSelection.select(row);
          row.serviceArrival = '';
          row.serviceGoing = '';
          row.useServiceGoing = '';
          row.useServiceArrival = '';
          row.useYemek = '';
          row.inoutput = '';
          row.ioreasonItem = '';
          row.postaItem = '';
          row.iodesc = '';
          row.iostartdate = '';
          row.iostarttime = '';
          const obj = {
            id: row.id, username: row.username, name: row.name, iostartdate: row.iostartdate, inoutput: row.inoutput, ioreasonItem: row.ioreasonItem, iodesc: row.iodesc, iostarttime: row.iostarttime, depart: row.depart, useYemek: row.useYemek, useServiceArrival: row.useServiceArrival, useServiceGoing: row.useServiceGoing
            , serviceArrival: row.serviceArrival, serviceGoing: row.serviceGoing, yillikKalan: row.yillikKalan
          };
          this.personelInfo.push(obj);
        });
      }
    }
    this.usrSelection.toggle(row);
    if (row !== undefined) {
      let obj = {
        id: row.id, username: row.username, name: row.name, iostartdate: row.iostartdate, inoutput: row.inoutput, ioreasonItem: row.ioreasonItem, iodesc: row.iodesc, iostarttime: row.iostarttime, depart: row.depart, useYemek: row.useYemek, useServiceArrival: row.useServiceArrival, useServiceGoing: row.useServiceGoing
        , serviceArrival: row.serviceArrival, serviceGoing: row.serviceGoing, yillikKalan: row.yillikKalan
      };

      if (this.personelInfo.length === 0) this.nextBtn = false;
      else if (this.flowIndex === 5) {
        if (this.usrSelection.isSelected(row)) { this.nextBtn = false };
      }

      if (!this.usrSelection.isSelected(row)) {
        row.serviceArrival = '';
        row.serviceGoing = '';
        row.useServiceGoing = '';
        row.useServiceArrival = '';
        row.useYemek = '';
        row.inoutput = '';
        row.ioreasonItem = '';
        row.iodesc = '';
        row.iostartdate = '';
        row.iostarttime = '';
        row.yillikKalan = '';
        this.remove(obj.id);

      } else {
        this.personelInfo.push(obj);
      }
    }

    // console.log(this.personelInfo);
    this.tabNextControl();

  }


  amrMasterToggle(row) {
    if (row === undefined) {
      if (this.isAmrAllSelected()) {
        this.amrSelection = [];
      } else {
        this.amrDataSource.data.forEach(row => {
          this.amrSelection.select(row);
        });
      }
    }
    this.amrSelection.toggle(row);

  }





  getUsers(userName) {
    // if (this.flowIndex === 3)
    //   this.pageIndex = 100;
    // else
    //   this.pageIndex = 100;
    this.usrDataSource = [];
    this.usrData = [];
    this.usrDisplayedColumns = [];
    this.poolUserService.getPoolUsers(userName, this.userType).subscribe(
      res => {

        // debugger;
        Object.keys(res).forEach(key => {
          this.usrData[key] = res[key];
          this.approver = res[key].approver;

          this.secondFormGroup.patchValue({
            starttime: null, useYemek: null, enddate: null,
            inoutput: null, ioreasonItem: null, iodesc: null, iostartdate: null, iostarttime: null,
            yillikKalan: res[key].yillikKalan,
            yillikFazlaMesai: res[key].yillikFazlaMesai,
            endtime: null,
            useServiceArrival: null,
            useServiceGoing: null,
            arrivalservice: null,
            goingservice: null,
            days: null,
            times: null,
            reasonItem: null,

            postaItem: null,
            reason: null,
            reason2: null
          });

        });

        if (this.flowIndex === 3) {
          this.usrDisplayedColumns = [
            "select",
            "id",
            "username",
            "name",
            "gorev",
            "yillikFazlaMesai",
            "depart",
            "useYemek",
            "useServiceArrival",
            "serviceArrival",
            "useServiceGoing",
            "serviceGoing"
          ];
        } else if (this.flowIndex === 6) {
          this.usrDisplayedColumns = [
            "select",
            "id",
            "username",
            "name",
            "iostartdate",
            "iostarttime",
            "inoutput",
            "ioreasonItem",
            "iodesc",
            "yillikKalan",
            "depart",
            "posta"
          ];
        } else {
          this.usrDisplayedColumns = [
            "select",
            "id",
            "username",
            "name",
            "iostartdate",
            "iostarttime",
            "inoutput",
            "ioreasonItem",
            "iodesc",
            "yillikKalan",
            "depart"];
        }
        this.usrDataSource = new MatTableDataSource<UserElement>(this.usrData);
        this.usrDataSource.paginator = this.usrPaginator;
        this.usrDataSource.sort = this.usrSort;
        this.usrSelection = new SelectionModel<UserElement>(true, []);


      },
      err => {
        console.log(err);
      }
    );
  }

  openSnackBar(message: string, seconds: number) {

    let config = new MatSnackBarConfig();
    // config.panelClass = ['message-position'];
    config.duration = seconds * 1000;
    config.verticalPosition = "top"
    this.snackBar.open(message, "", config);

  }


  // sendToDailyApprove() {
  //   // console.log(this.aprDataSource.data);
  //   this.poolUserService
  //     .postPoolDailyApprove(this.aprDataSource.data)
  //     .subscribe(
  //       res => {
  //         this.openSnackBar(res["ReturnMessage"], 3);
  //       },
  //       err => {
  //         console.log(err);
  //         this.openSnackBar(err.message, 3);
  //       }
  //     );


  // }




  // getFormTemplateTotal(flowIndex) 
  // {
  //   this.getFormTemplateTotal2(flowIndex);

  // }


  // : Promise<any>




  getFormTemplate(obj) {

    // console.log(obj);
    this.poolUserService.getTemplate(obj)
      .subscribe((res) => {
        let response: any = [];
        response = res;
        const dialogRef = this.dialog.open(FormLayout, {
          height: '1442px',
          width: '1095px',
          data: {
            // html: '<div [innerHTML]="'+response.template+' | SafeHtml"></div>'
            html: response.template
          }
        });
        // console.log('<div [innerHTML]="'+response.template+'"></div>');
        this.formOnay = true;

      }, err => {
        console.log(err);
      });


    // this.poolUserService.getTemplate(obj)
    //   .subscribe((res) => {
    //     //  this.formTemplate=res.template;
    //   }, err => {
    //     console.log(err);
    //   });

  }


  clearTabs() {
    this.secondFormGroup.patchValue({
      starttime: null, useYemek: null, enddate: null,
      endtime: null,
      useServiceArrival: null,
      useServiceGoing: null,
      arrivalservice: null,
      goingservice: null,
      days: null,
      times: null,
      reasonItem: null,
      reason: null,
      reason2: null
    });

    this.thirdFormGroup.patchValue({ chkApprove: null, onayTuru: null });
  }

  sendToApprove() {

    let config = new MatSnackBarConfig();
    config.panelClass = ['message-position'];
    this.snackBar.open("İşlem yapılıyor. Lütfen Bekleyiniz...", "", config);

    this.aprDataSource.data[0].type = this.flowIndex;
    this.aprDataSource.data[0].amir = (this.userType === 'A' ? true : false);
    this.aprDataSource.data[0].amirKodu = this.user;


    if (this.flowIndex === 1) //Günlük izin
    {
      this.poolUserService
        .postPoolDailyApprove(this.aprDataSource.data)
        .subscribe(
          res => {
            let response: any = []; response = res;
            this.snackBar.dismiss();
            if (!response.IsSuccess) {
              let config = new MatSnackBarConfig();
              config.panelClass = ['message-position'];
              config.duration = 3000;
              this.snackBar.open(response.ReturnMessage, "", config);
            } else {
              this.stepper.next();
              this.clearTabs();
            }
          },
          err => {
            this.snackBar.dismiss();
            console.log(err);
            let config = new MatSnackBarConfig();
            config.panelClass = ['message-position'];
            config.duration = 3000;
            this.snackBar.open(err.message, "", config);
            // this.openSnackBar(err.message, 3);
          }
        );
    }
    else if (this.flowIndex === 2) // Saatlik İzin
    {

      this.poolUserService
        .postPoolTimelyApprove(this.aprDataSource.data)
        .subscribe(
          res => {

            console.log(res);
            let response: any = []; response = res;
            this.snackBar.dismiss();
            if (!response.IsSuccess) {
              let config = new MatSnackBarConfig();
              config.panelClass = ['message-position'];
              config.duration = 3000;
              this.snackBar.open(response.ReturnMessage, "", config);
            } else {
              this.stepper.next();
              this.clearTabs();
            }
          },
          err => {
            this.snackBar.dismiss();
            console.log(err);
            let config = new MatSnackBarConfig();
            config.panelClass = ['message-position'];
            config.duration = 3000;
            this.snackBar.open(err.message, "", config);
          }
        );

    }
    else if (this.flowIndex === 3) // Fazla Mesai
    {
      this.poolUserService
        .postPoolFMApprove(this.aprDataSource.data)
        .subscribe(
          res => {
            let response: any = []; response = res;
            this.snackBar.dismiss();
            if (!response.IsSuccess) {
              let config = new MatSnackBarConfig();
              config.panelClass = ['message-position'];
              config.duration = 3000;
              this.snackBar.open(response.ReturnMessage, "", config);
            } else {
              this.stepper.next();
              this.clearTabs();
            }
          },
          err => {
            this.snackBar.dismiss();
            console.log(err);
            let config = new MatSnackBarConfig();
            config.panelClass = ['message-position'];
            config.duration = 3000;
            this.snackBar.open(err.message, "", config);

          }
        );

    }

    else if (this.flowIndex === 5) // Hareket
    {

      this.poolUserService
        .postPoolIOApprove(this.aprDataSource.data)
        .subscribe(
          res => {
            let response: any = []; response = res;
            this.snackBar.dismiss();
            if (!response.IsSuccess) {
              let config = new MatSnackBarConfig();
              config.panelClass = ['message-position'];
              config.duration = 3000;
              this.snackBar.open(response.ReturnMessage, "", config);
            } else {
              this.stepper.next();
              this.clearTabs();
            }
          },
          err => {
            this.snackBar.dismiss();
            console.log(err);
            let config = new MatSnackBarConfig();
            config.panelClass = ['message-position'];
            config.duration = 3000;
            this.snackBar.open(err.message, "", config);

          }
        );

    }


    else if (this.flowIndex === 6) //Posta
    {

      this.poolUserService
        .postPoolPostaApprove(this.aprDataSource.data)
        .subscribe(
          res => {
            let response: any = []; response = res;
            this.snackBar.dismiss();
            if (!response.IsSuccess) {
              let config = new MatSnackBarConfig();
              config.panelClass = ['message-position'];
              config.duration = 3000;
              this.snackBar.open(response.ReturnMessage, "", config);
            } else {
              this.stepper.next();
              this.clearTabs();
            }
          },
          err => {
            this.snackBar.dismiss();
            console.log(err);
            let config = new MatSnackBarConfig();
            config.panelClass = ['message-position'];
            config.duration = 3000;
            this.snackBar.open(err.message, "", config);

          }
        );

    }
    else if (this.flowIndex === 8) //Rotasyon
    {

      console.log(this.aprDataSource.data);
      this.poolUserService
        .postPoolRotaApprove(this.aprDataSource.data)
        .subscribe(
          res => {
            let response: any = []; response = res;
            this.snackBar.dismiss();
            if (!response.IsSuccess) {
              let config = new MatSnackBarConfig();
              config.panelClass = ['message-position'];
              config.duration = 3000;
              this.snackBar.open(response.ReturnMessage, "", config);
            } else {
              this.stepper.next();
              this.clearTabs();
            }
          },
          err => {
            this.snackBar.dismiss();
            console.log(err);
            let config = new MatSnackBarConfig();
            config.panelClass = ['message-position'];
            config.duration = 3000;
            this.snackBar.open(err.message, "", config);

          }
        );

    }
    else if (this.flowIndex === 9) //Guncelleme
    {

      console.log(this.aprDataSource.data);
      this.poolUserService
        .postPoolPersonnelUpdateApprove(this.aprDataSource.data)
        .subscribe(
          res => {
            let response: any = []; response = res;
            this.snackBar.dismiss();
            if (!response.IsSuccess) {
              let config = new MatSnackBarConfig();
              config.panelClass = ['message-position'];
              config.duration = 3000;
              this.snackBar.open(response.ReturnMessage, "", config);
            } else {
              this.stepper.next();
              this.clearTabs();
            }
          },
          err => {
            this.snackBar.dismiss();
            console.log(err);
            let config = new MatSnackBarConfig();
            config.panelClass = ['message-position'];
            config.duration = 3000;
            this.snackBar.open(err.message, "", config);

          }
        );

    }

  }

  amrApprove() {

    let config = new MatSnackBarConfig();
    config.panelClass = ['message-position'];
    this.snackBar.open("İşlem yapılıyor. Lütfen Bekleyiniz...", "", config);
    const obj = this.amrDataSource.data.filter((item) => item.approve == true || item.reject == true);
    this.poolUserService
      .amrApprove(this.flowIndex, obj)
      .subscribe(
        res => {

          let response = res;

          // if (response.isSuccess===false)
          // {
          //   let config = new MatSnackBarConfig();
          //   config.panelClass = ['message-position'];
          //   config.duration=3000;
          //   this.snackBar.open(response.returnMessage, "", config);

          // }
          // this.openSnackBar(response["ReturnMessage"].toString(), 3);
          if (this.userType === "A") {
            this.amrGetApproveInfo(this.user, this.prmonayTuru, null, 0);
          }

          this.snackBar.dismiss();
          this.stepper.next();

        },
        err => {
          console.log(err);

          let config = new MatSnackBarConfig();
          config.panelClass = ['message-position'];
          config.duration = 3000;
          this.snackBar.open(err.message, "", config);

        }
      );

  }


  openDialog(flowIndex): void {

    if (flowIndex == 1)
      this.printRules = "[0,1,4,5,6,7,8]";
    else if (flowIndex == 2 || flowIndex == 4 || flowIndex == 5 || flowIndex == 7)
      this.printRules = "[0,1,4,5,6,7,8,9]";
    else if (flowIndex == 3)
      this.printRules = "[0,1,4,6,7,8,9,10]";
    else if (flowIndex == 6) // Posta
      this.printRules = "[0,1,4,5,6,7,8,9]";

    else
      this.printRules = "[]";


    this.firstFormGroup = this._formBuilder.group({
      firstCtrl: []
    });
    this.secondFormGroup = this._formBuilder.group({
      startdate: [],
      starttime: [],
      yillikKalan: [],
      yillikFazlaMesai: [],
      useYemek: [],
      enddate: [],
      endtime: [],
      isbasitarih: [],
      inoutput: [],
      iostartdate: [],
      iostarttime: [],
      useServiceArrival: [],
      useServiceGoing: [],
      arrivalservice: [],
      goingservice: [],
      days: [],
      times: [],
      reasonItem: [],
      amirkodu: [],
      amiradi: [],
      postaItem: [],
      reason: [],
      reason2: []
    });


    // if (this.outofoffice[4].value && this.userType === 'P') return;


    this.thirdFormGroup = this._formBuilder.group({
      chkApprove: ['', Validators.required],
      shiftDate1: [],
      shiftDate2: [],
      onayTuru: []
    });


    if (this.userType === 'A') this.nextBtn = false;
    else this.nextBtn = true;

    // this.poolUserService.getPoolUsers(userName, this.userType).subscribe(
    //   res => {
    //     Object.keys(res).forEach(key => {
    //       this.usrData[key] = res[key];
    //       this.approver = res[key].approver;
    //     });
    //   },
    //   err => {
    //     console.log(err);
    // }
    // );
    this.secondFormGroup.patchValue({
      starttime: null, useYemek: null, enddate: null,
      yillikKalan: null,
      endtime: null,
      useServiceArrival: null,
      useServiceGoing: null,
      arrivalservice: null,
      goingservice: null,
      days: null,
      times: null,
      reasonItem: null,
      reason: null,
      reason2: null
    });
    this.thirdFormGroup.patchValue({ chkApprove: null, onayTuru: 'Bekleyen Kayıtlar' });
    this.flowIndex = flowIndex;
    this.getReason(this.user, this.flowIndex);
    this.getPosta();

    if (flowIndex === 1) {
      this.secondFormGroup.patchValue({ days: 0 });
      // if (this.secondFormGroup.value.startdate != null && this.secondFormGroup.value.enddate != null)
      //   this.addDay("picker");

      // this.addDay("picker");
    }

    if (this.userType === "P" || (this.prmamir1 && !this.prmprsBazli)) {
      this.openFlow(flowIndex, false);
      return;
    }

    // if (flowIndex != 4) {
    const dialogRef = this.dialog.open(DialogApprove, {
      width: "380px",
      height: "auto",
      data: {
        // insert: false, approve: false, color: this.outofoffice[item].color, auth: (this.userType === 'A' ? true : false),
        insert: false,
        approve: false,
        auth: (this.userType == 'A' && (flowIndex !== 8 && flowIndex !== 9)) ? 'A' : 'P',
        color: this.outofoffice[flowIndex].color,
        entryLabel: this.languageMap['btnEntry'].labelName,
        approveLabel: this.languageMap['btnApprove'].labelName
      },
      panelClass: 'my-dialog-container-class'
    });



    dialogRef.afterClosed().subscribe(result => {
      if (result.insert) {
        this.approve = false;
        this.openFlow(flowIndex, false);
      } else {
        this.approve = true;
        this.openFlow(flowIndex, true);
        this.amrGetApproveInfo(this.user, this.prmonayTuru, flowIndex, 0);
      }
    });
    // }
  }

  amrGetApproveInfo(user, prmonayTuru, type, filterType) {
    this.amrDataSource = [];
    this.pageIndex = 100;
    this.poolUserService.getPoolApproves(user, prmonayTuru, type, filterType).subscribe(
      res => {
        this.usrData = [];
        Object.keys(res).forEach(key => {
          this.usrData[key] = res[key];
        });

        if (type == null) {
          let amrApproveData = [];
          let data: any = {};
          this.outofoffice[1].matBadge = 0;
          this.outofoffice[2].matBadge = 0;
          this.outofoffice[3].matBadge = 0;
          this.outofoffice[4].matBadge = 0;
          this.outofoffice[5].matBadge = 0;
          this.outofoffice[6].matBadge = 0;
          this.outofoffice[8].matBadge = 0;
          this.outofoffice[9].matBadge = 0;

          for (var i = 0, len = this.usrData.length; i < len; i++) {
            if (this.usrData[i].izinTip === "GUNLUK")
              this.outofoffice[1].matBadge = this.usrData[i].count;
            if (this.usrData[i].izinTip === "SAATLIK")
              this.outofoffice[2].matBadge = this.usrData[i].count;
            if (this.usrData[i].izinTip === "MESAI")
              this.outofoffice[3].matBadge = this.usrData[i].count;
            if (this.usrData[i].izinTip === "VARDIYA")
              this.outofoffice[4].matBadge = this.usrData[i].count;
            if (this.usrData[i].izinTip === "HAREKET")
              this.outofoffice[5].matBadge = this.usrData[i].count;
            if (this.usrData[i].izinTip === "POSTA")
              this.outofoffice[6].matBadge = this.usrData[i].count;
            if (this.usrData[i].izinTip === "GUNCELLEME")
              this.outofoffice[9].matBadge = this.usrData[i].count;
          }

        }
        else {

          console.log(this.usrData);
          let amrApproveData = [];
          let data: any = {};
          for (var i = 0, len = this.usrData.length; i < len; i++) {
            data = {
              id: this.usrData[i].id,
              approve: false,
              reject: false,
              inoutput: this.usrData[i].inoutput,
              // wait:false,
              srkodu: 1,
              prsicil: this.usrData[i].userName,
              name: this.usrData[i].name,
              yillikKalan: this.usrData[i].yillikKalan,
              yillikFazlaMesai: this.usrData[i].yillikFazlaMesai,
              bastarih: formatDate(
                this.usrData[i].startDate,
                "yyyy-MM-dd",
                "en-US"
              ),
              tarih: formatDate(
                this.usrData[i].date,
                "yyyy-MM-dd",
                "en-US"
              ),
              gun: this.usrData[i].time,
              amir: this.user,
              bittarih: formatDate(
                this.usrData[i].endDate,
                "yyyy-MM-dd",
                "en-US"
              ),
              isbasitarih: formatDate(
                this.usrData[i].workDate,
                "yyyy-MM-dd",
                "en-US"
              ),
              neden: this.usrData[i].explationCode,
              // isbasi: formatDate(this.enddate.value, 'yyyy-MM-ddTHH:mm:ss.SSSZ', 'en-US') ,
              // isbasi: formatDate(this.usrData[i].endDate, "yyyy-MM-dd", "en-US"),
              sebep: this.usrData[i].reason,
              sebep2: this.usrData[i].reason2,
              aciklama: this.usrData[i].description,
              retacik: this.usrData[i].retAcik,
              posta: this.usrData[i].posta,
              departman: this.usrData[i].departman
            };

            if (this.usrData.length > 0) {
              this.prmAuth = !this.usrData[0].auth;
            }

            amrApproveData.push(data);
          }

          this.amrDisplayedColumns = [
            "approve",
            "reject",
            // "wait",
            "id",
            "departman",
            "prsicil",
            "name",
            "yillikKalan",
            "yillikFazlaMesai",
            "posta",
            "bastarih",
            "tarih",
            "inoutput",
            "gun",
            "bittarih",
            "neden",
            "sebep",
            "sebep2",
            "aciklama",
            "retacik",
            "dokum"
          ];

          this.amrDataSource = new MatTableDataSource<DailyApproverElement>(amrApproveData);
          this.amrSelection = new SelectionModel<DailyApproverElement>(true, []);
          this.amrDataSource.paginator = this.amrPaginator;
          this.amrDataSource.sort = this.amrSort;
        }

      },
      err => {
        console.log(err);
      }
    );
  }

  closeDialog() {
    this.stepper.reset();
    this.snackBar.dismiss();
    if (this.userType === "A") {
      this.amrGetApproveInfo(this.user, this.prmonayTuru, null, 0);
    }
    this.personelInfo = [];
    this.personelInfo = [];
    this.usrSelection = [];
    // this.nextBtn = false;
    this.mainScreenVisible = true;
    // this.firstFormGroup.patchValue({ firstCtrl:null});
    // this.secondFormGroup.patchValue({
    //   starttime: null, useyemek: null, enddate: null,
    //   endtime: null,
    //   useServiceArrival: null,
    //   useServiceGoing: null,
    //   arrivalservice: null,
    //   goingservice: null,
    //   days: null,
    //   times: null,
    //   reasonItem: null,
    //   reason: null,
    //   reason2: null
    // });
    // this.thirdFormGroup.patchValue({ chkApprove: null, onayTuru: null });

  }

  openFlow(flowIndex, approve) {

    this.mainScreenVisible = false;
    this.getUsers(this.user);

  }


  getFormTemplateTotal(flowIndex) {

    let response: any = [];
    let obj: any;
    var keepGoing = false;
    this.responseTotalList = '';
    var say = 0;
    this.aprDataSource.data.forEach(async element => {
 

      if (flowIndex === 1)
        obj = {
          user: element.prsicil, type: this.flowIndex, reason: element.neden.split('-', 1)[0], begindate: element.bastarih,
          enddate: element.bittarih, startdate: element.isbasitarih, days: element.gun, desc: element.sebep, approver: this.approver, begintime: element.bassaat, endtime: element.bitsaat
        };
      else if (flowIndex === 2)
        obj = {
          user: element.prsicil, type: this.flowIndex, reason: element.neden.split('-', 1)[0], begindate: element.bastarih,
          enddate: element.bastarih, startdate: element.bastarih, days: 1, desc: element.sebep, approver: this.approver, begintime: element.bassaat, endtime: element.bitsaat
        };
      else if (flowIndex === 3)
        obj = {
          user: element.prsicil, type: this.flowIndex, reason: element.neden.split('-', 1)[0], begindate: element.bastarih,
          enddate: element.bastarih, startdate: element.bastarih, days: 1, desc: element.sebep, approver: this.approver, begintime: element.bassaat, endtime: element.bitsaat, time: element.sure
        };
      else
        obj = {
          user: element.prsicil, type: this.flowIndex, reason: '0', begindate: element.bastarih,
          enddate: element.bastarih, startdate: element.bastarih, days: 1, desc: element.sebep, approver: this.approver, begintime: element.bassaat, endtime: element.bitsaat
        };
 
      // this.responseTotalList += "<p  style='page-break-after: always;'>" + res.template + "</p>";
      this.poolUserService.getTemplate(obj)
        .subscribe((res: any) => {
          if (say>0)
          response += "<p  style='page-break-after: always;'>" + res.template + "</p>";
          else
          response += res.template;
          say++;
          if (say === this.aprDataSource.data.length) keepGoing = true;
          if (keepGoing) {
            const dialogRef = this.dialog.open(FormLayout, {
              height: '1440px',
              width: '1095px',
              data: {
                html: response
              }
            });
 
            }

          this.formOnay = true;
 

        }, err => {
          console.log(err);

        });


     

    });

     
  }

 

}



@Component({
  // tslint:disable-next-line:component-selector
  // selector: 'dialog-overview-example-dialog',
  templateUrl: "./formlayout-dialog.html",
  // styleUrls: ["./formlayout-dialog.css"]
  styleUrls: ["./outofoffice.component.css"]
})


export class FormLayout implements OnInit {
  // htmlSnippet: string = "<script type='text/javascript'> setTimeout(function () { window.print() }, 3000);</script>";
  // @ViewChild('element', { static: true }) public viewElement: ElementRef;

  public element: any;
  constructor(
    public renderer: Renderer2,
    private sanitizer: DomSanitizer,
    public dialogRef: MatDialogRef<FormLayout>,
    @Inject(MAT_DIALOG_DATA) public data: DialogData,

    // @Inject(Document) private _document: Document
  ) { }


  ngOnInit() {
    this.dialogRef.keydownEvents().subscribe(event => {
      if (event.key === "Escape") {
        this.closeDialog();
      }
    });

    this.dialogRef.backdropClick().subscribe(event => {
      this.closeDialog();
    });
  }


  ngAfterViewInit() {



    const printContent = document.getElementById("print-section");
    const WindowPrt = window.open('', '', 'left=0,top=0,width=900,height=900,toolbar=0,scrollbars=0,status=0');
    WindowPrt.document.write(printContent.innerHTML);
    WindowPrt.focus();
    WindowPrt.print();
    WindowPrt.document.close();
    WindowPrt.close();


  }



  closeDialog() {
    this.dialogRef.close(this.data);


  }



  public appendHTMLSnippetToDOM() {
    // console.log(this.viewElement);
    //  this.element = this.viewElement.nativeElement;
    //  const fragment = document.createRange().createContextualFragment(this.htmlSnippet);
    // this.element.appendChild(fragment);
  }

  // ApproveClick(t) {
  //   this.data.approve = true;
  //   this.data.desc = t.value;
  //   this.dialogRef.close(this.data);
  // }
}

@Component({
  // tslint:disable-next-line:component-selector
  // selector: 'dialog-overview-example-dialog',
  templateUrl: "./approve-dialog.html",
  styleUrls: ["./outofoffice.component.css"]
})

// tslint:disable-next-line:component-class-suffix
export class DialogApprove {
  // @Input() parentApi: ParentComponentApi
  constructor(
    public dialogRef: MatDialogRef<DialogApprove>,
    @Inject(MAT_DIALOG_DATA) public data: DialogData
  ) { }

  InsertClick() {
    this.data.insert = true;
    this.dialogRef.close(this.data);
  }

  ApproveClick() {
    this.data.approve = true;
    this.dialogRef.close(this.data);
  }
}


@Component({
  // tslint:disable-next-line:component-selector
  // selector: 'dialog-overview-example-dialog',
  templateUrl: "./reject-dialog.html",
  styleUrls: ["./outofoffice.component.css"]
})

// tslint:disable-next-line:component-class-suffix
export class RejectApprove {
  // @Input() parentApi: ParentComponentApi
  constructor(
    public dialogRef: MatDialogRef<RejectApprove>,
    @Inject(MAT_DIALOG_DATA) public data: DialogData
  ) { }



  ApproveClick(t) {
    this.data.approve = true;
    this.data.desc = t.value;
    this.dialogRef.close(this.data);
  }
}


