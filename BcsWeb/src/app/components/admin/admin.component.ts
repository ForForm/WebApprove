import { STEPPER_GLOBAL_OPTIONS } from '@angular/cdk/stepper';
import { Component, OnInit, ViewChild, ChangeDetectorRef, ViewEncapsulation } from '@angular/core';
import { PooluserService } from 'src/app/services/pooluser.service';
import { FormControl, FormBuilder, FormGroup, Validators } from '@angular/forms';
// import { MatSort, MatPaginator, MatTableDataSource, MatSnackBar } from '@angular/material';
import {MatPaginator} from '@angular/material/paginator';
import {MatSnackBar, MatSnackBarConfig} from '@angular/material/snack-bar';
import {MatTableDataSource} from '@angular/material/table';
import {MatSort} from '@angular/material/sort';

import { SelectionModel } from '@angular/cdk/collections';
import { MatRadioModule } from '@angular/material/radio';
import {
  MAT_MOMENT_DATE_FORMATS,
  MomentDateAdapter
} from "@angular/material-moment-adapter";
import {
  DateAdapter,
  MAT_DATE_FORMATS,
  MAT_DATE_LOCALE
} from "@angular/material/core";
import { formatDate } from "@angular/common";
import * as _moment from 'moment';
// import { ConsoleReporter } from 'jasmine';
// tslint:disable-next-line:no-duplicate-imports
// import {default as _rollupMoment} from 'moment';

const moment = _moment;

export interface UserElement {
  id: number;
  companyID: number;
  username: string;
  password: string;
  status: number;
  tranDate: string;
}

export interface LsnElement {
  id: number;
  companyCode: string;
  companyName: string;
  macAddresses: string;
  barkodesNum: string;
  userCount: number;
  status: number;
  tranDate: string;
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
  selector: 'app-admin',
  templateUrl: './admin.component.html',
  styleUrls: ['./admin.component.css'],

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

  // encapsulation: ViewEncapsulation.None
})


export class AdminComponent implements OnInit {
  public maskTime = [/[0-9]/, /\d/, ':', /\d/, /\d/];
  firstFormGroup: FormGroup;
  selectedTab = new FormControl(0);
  workflowItem: string;
  overtimeItem: string;
  selectedTabIndex: number;
  username; password; repassword;
  companyCode; companyName; macAddress; barkodesNum; userCount;
  languages: any = [];
  usrSelectedRowNumber: number;
  lsnSelectedRowNumber: number;

  macAddresses: string[];
  usrData = []; lsnData = []; prmData = [];
  usrDisplayedColumns: string[]; lsnDisplayedColumns: string[];
  usrDataSource = new MatTableDataSource<UserElement>(this.usrData);
  lsnDataSource = new MatTableDataSource<LsnElement>(this.lsnData);
  usrSelection = new SelectionModel<UserElement>(true, []);
  lsnSelection = new SelectionModel<LsnElement>(true, []);
  @ViewChild('usrPaginator', { static: false }) usrPaginator: MatPaginator;
  @ViewChild('lsnPaginator', { static: true }) lsnPaginator: MatPaginator;
  @ViewChild('usrSorter', { static: false }) usrSort: MatSort;
  @ViewChild('lsnSorter', { static: true }) lsnSort: MatSort;
  favoriteSeason: string;
  workflow: string[] = ['Silsile', 'Toplu'];
  overtime: string[] = ['Süre', 'Başlama-Bitiş'];
  constructor(
    private _formBuilder: FormBuilder,
    private poolUserService: PooluserService,
    private snackBar: MatSnackBar,
    private cdr: ChangeDetectorRef,
    private adapter: DateAdapter<any>
  ) { }

  turkishCulture() {
    this.adapter.setLocale("tr");
  }
  getLanguages(lng) {
    this.poolUserService.getLanguage(null,null,null).subscribe(
      res => {

        console.log(res);
        this.languages = res;
      },
      err => {
        console.log(err);
      }
    );
  }

  ngOnInit() {
    this.turkishCulture();
    this.TabClick(0);
    this.firstFormGroup = this._formBuilder.group({
      txtFirmName: [],
      txtLanguage: [],
      dtTransfer: [],
      chkgiUseForm: [],
      chkfmUseForm: [],
      chksiUseForm: [],
      chkgiFormOnay: [],
      chkfmFormOnay: [],
      chksiFormOnay: [],
      onayTuru: [],
      chkLimitDash: [],
      chkReportDash: [],
      fmTip: [],
      chkprsBazli: [],
      chkret: [],
      chksendMail: [],
      chksendMailForm: [],
      txtsendMailForm: [],
      chkgecmisPostUser:[],
      chkmailOnay: [],
      txtDomain: [],
      txtSMTP: [],
      txtPort: [],
      txtSMTPUser: [],
      txtSMTPPass: [],
      chkSSL: [],
      txtMail: [],
      txtMailFrom: [],
      txtMailSubject: [],
      txtfmTemplate: [],
      txtfmUserMailBody: [],
      txtReportUrl: [],
      chkReportUrlSecure: [],
      chkfmServis: [],
      chkfmYemek: [],
      chkfmDesc: [],
      chkfmNeden: [],
      chkfmGecmisIslem: [],
      fmGecmisIslemSure: [],
      chkgiYemek: [],
      chkgiDesc: [],
      chkgiNeden: [],
      chkgiGecmisIslem: [],
      giGecmisIslemSure: [],
      chkgiYillikIzin: [],
      chksiYemek: [],
      chksiDesc: [],
      chksiNeden: [],
      chksiGecmisIslem: [],
      chksiSaat: [],
      siGecmisIslemSure: [],
      chkhktUseForm: [],
      chkhktFormOnay: [],
      chkhktNeden: [],
      chkhktDesc: [],
      chkhktGecmisIslem: [],
      hktGecmisIslemSure: [],
      chkpstDesc: [],
      chkpstGecmisIslem: [],
      pstGecmisIslemSure: [],

      username: [],
      password: [],
      repassword: [],
      txtLink1Name: [],
      txtLink1Url: [],
      txtLink2Name: [],
      txtLink2Url: [],
      txtLink3Name: [],
      txtLink3Url: [],
      txtLink4Name: [],
      txtLink4Url: [],
      txtLink5Name: [],
      txtLink5Url: [],

      chkIsDocument: [],
      chkShiftControl: [],
      shiftHour:[],
      shiftPartHour: [],
      txtShiftPartHourTasks: [],

      chkShiftAuth: [],
      shiftAuthWeek:[]
      

    });

    this.getMacAdress();
    this.getLanguages(null);

  }

  TabClick(index: number) {
    this.selectedTabIndex = index;
    if (index === 0) {
      this.getLisansInfo();
    } else if (index === 1) {
      this.getUser();
      this.getParameters();
    }
    //    else if (index === 2) {
    //    this.getParameters();
    // }

  }

  // tslint:disable-next-line:use-life-cycle-interface
  ngAfterViewChecked() {
    this.cdr.detectChanges();
  }

  applyFilter(filterValue: string) {
    this.usrDataSource.filter = filterValue.trim().toLowerCase();
  }




  getUser() {
    this.poolUserService.getPoolUsers(null, null)
      .subscribe((res) => {
        this.usrData = [];
        Object.keys(res).forEach((key) => {
          this.usrData[key] = res[key];
        });

        this.usrDataSource = new MatTableDataSource<UserElement>(this.usrData);
        this.usrDisplayedColumns = ['select', 'id', 'companyID', 'username', 'password', 'status', 'tranDate'];
        this.usrSelection = new SelectionModel<UserElement>(true, []);
        this.usrDataSource.paginator = this.usrPaginator;
        this.usrDataSource.sort = this.usrSort;

        this.username = '';
        this.password = '';
        this.repassword = '';
        this.usrSelectedRowNumber = undefined;

      }, err => {
        console.log(err);
      });
  }

  openSnackBar(message: string, seconds: number) {
    this.snackBar.open(message, "", {
      duration: seconds * 1000,
      verticalPosition: "top",
      panelClass: 'snackbar'
    });
  }


  postUser() {

    const obj = { username: this.username, password: this.password };

    if ((this.username !== undefined && this.username !== '') &&
      (this.password !== undefined && this.username !== '') &&
      (this.repassword !== undefined && this.username !== '')) {

      if (this.password !== this.repassword) {
        this.openSnackBar('şifreyi kontrol ediniz.', 3);
        return;
      }

      this.poolUserService.postPoolUser(obj)
        .subscribe((res) => {
          this.openSnackBar(res['ReturnMessage'], 3);
          this.getUser();
        }
          , err => {
            console.log(err);
            this.openSnackBar(err.message, 3);

          });
    } else { this.openSnackBar('Kullanıcı bilgisi giriniz...', 3); }
  }


  deleteUser() {
    if (this.usrSelectedRowNumber !== undefined) {
      if (confirm('Kullanıcıyı silmek istediğinize emin misiniz?')) {
        this.poolUserService.deletePoolUser(this.usrSelectedRowNumber)
          .subscribe((res) => {
            this.openSnackBar(res['ReturnMessage'], 3);
            this.username = '';
            this.password = '';
            this.repassword = '';
            this.getUser();
          }, (err) => {
            console.log(err);
          });
      }
    } else { this.openSnackBar('Seçim yapınız...', 3); }
  }




  masterToggle(row) {
    if (this.selectedTabIndex === 0) {
      this.lsnSelection.clear();
      this.lsnSelection.toggle(row);
      this.lsnSelectedRowNumber = row.id;
      this.companyCode = row.companyCode;
      this.companyName = row.companyName;
      this.macAddress = row.macAddress;
      this.barkodesNum = row.barkodesNum;
      this.userCount = row.userCount;
    } else if (this.selectedTabIndex === 1) {
      this.usrSelection.clear();
      this.usrSelection.toggle(row);
      this.usrSelectedRowNumber = row.id;
      this.username = row.username;
      this.password = row.password;
      this.repassword = row.password;
    }
  }


  getLisansInfo() {
    this.poolUserService.getPoolCompanyLisans()
      .subscribe((res) => {
        this.lsnData = [];
        Object.keys(res).forEach((key) => {
          this.lsnData[key] = res[key];
        });
        this.lsnDisplayedColumns = ['select', 'id', 'companyCode', 'companyName', 'barkodesNum', 'userCount', 'tranDate', 'status'];
        this.lsnDataSource = new MatTableDataSource<LsnElement>(this.lsnData);
        this.lsnSelection = new SelectionModel<LsnElement>(true, []);
        this.lsnDataSource.paginator = this.lsnPaginator;
        this.lsnDataSource.sort = this.lsnSort;
      }, err => {
        console.log(err);
      });
  }


  getMacAdress() {
    this.poolUserService.getPoolMacAdress()
      .subscribe((res) => {
        this.macAddresses = res["macAddresses"];
      }, err => {
        console.log(err);
      });
  }


  getParameters() {
    this.poolUserService.getParameters()
      .subscribe((res) => {
        this.prmData = [];
        Object.keys(res).forEach((key) => {
          this.firstFormGroup.patchValue({
            txtFirmName: (res[key].firmName),
            
            onayTuru: (res[key].onayTuru === 0 ? "Silsile" : "Toplu"),
            chkLimitDash: res[key].limitDash,
            chkReportDash:res[key].reportDash,
            fmTip: (res[key].fmTip === 0 ? "Süre" : "Başlama-Bitiş"),
            chkprsBazli: res[key].prsBazli,
            chkret: res[key].ret,
            chksendMail: res[key].sendMail,
            chksendMailForm: res[key].sendMailForm,
            txtsendMailForm: res[key].sendMailFormTxt,
            chkgecmisPostUser:res[key].gecmisPostUser,
            chkmailOnay: res[key].mailOnay,
            txtDomain: res[key].domain,
            txtSMTP: res[key].smtp,
            txtPort: res[key].port,
            txtSMTPUser: res[key].smtpUser,
            txtSMTPPass: res[key].smtpPass,
            chkSSL: res[key].ssl,
            txtMail: res[key].mail,
            txtMailFrom: res[key].mailFrom,
            txtMailSubject: res[key].mailSubject,
            txtReportUrl: res[key].reportUrl,
            chkReportUrlSecure: res[key].reportUrlSecure,
            txtLanguage:res[key].language,
            dtTransfer:res[key].transferDate,

            chkfmYemek: res[key].fmYemek,
            chkfmDesc: res[key].fmAcik,
            chkfmNeden: res[key].fmNeden,
            chkfmGecmisIslem: res[key].fmGecmisIslem,
            fmGecmisIslemSure: res[key].fmGecmisIslemSure,
            txtfmTemplate: res[key].fmTemplate,
            txtfmUserMailBody: res[key].fmUserMailBody,
            chkfmServis: res[key].fmServis,
            chkfmFormOnay: res[key].fmFormOnay,
            chkfmUseForm: res[key].fmUseForm,



            chkgiYemek: res[key].giYemek,
            chkgiDesc: res[key].giAcik,
            chkgiNeden: res[key].giNeden,
            chkgiGecmisIslem: res[key].giGecmisIslem,
            giGecmisIslemSure: res[key].giGecmisIslemSure,
            chkgiYillikIzin: res[key].giYillikIzin,
            chkgiFormOnay: res[key].giFormOnay,
            chkgiUseForm: res[key].giUseForm,

            chksiYemek: res[key].siYemek,
            chksiDesc: res[key].siAcik,
            chksiNeden: res[key].siNeden,
            chksiGecmisIslem: res[key].siGecmisIslem,
            siGecmisIslemSure: res[key].siGecmisIslemSure,
            chksiFormOnay: res[key].siFormOnay,
            chksiUseForm: res[key].siUseForm,
            chksiSaat: res[key].siSaat,

            chkhktUseForm: res[key].hktUseForm,
            chkhktFormOnay: res[key].hktFormOnay,
            chkhktNeden: res[key].hktNeden,
            chkhktDesc: res[key].hktAcik,
            chkhktGecmisIslem: res[key].hktGecmisIslem,
            hktGecmisIslemSure: res[key].hktGecmisIslemSure,

            chkpstDesc: res[key].pstAcik,
            chkpstGecmisIslem: res[key].pstGecmisIslem,
            pstGecmisIslemSure: res[key].pstGecmisIslemSure,


            txtLink1Name: res[key].link1Name,
            txtLink1Url: res[key].link1Url,
            txtLink2Name: res[key].link2Name,
            txtLink2Url: res[key].link2Url,
            txtLink3Name: res[key].link3Name,
            txtLink3Url: res[key].link3Url,
            txtLink4Name: res[key].link4Name,
            txtLink4Url: res[key].link4Url,
            txtLink5Name: res[key].link5Name,
            txtLink5Url: res[key].link5Url,

            chkIsDocument: res[key].isDocument,
            chkShiftControl: res[key].shiftControl,
            shiftHour: res[key].shiftHour,
            shiftPartHour: res[key].shiftPartHour,
            txtShiftPartHourTasks: res[key].shiftPartHourTasks,

            chkShiftAuth: res[key].shiftAuth,
            shiftAuthWeek: res[key].shiftAuthWeek

          });

        });


      }, err => {
        console.log(err);
      });

  };

  chkDashl(e)
  {
    if (this.firstFormGroup.value.chkReportDash===true)
    this.firstFormGroup.patchValue({chkReportDash:false});
  }


  chkDashr(e)
  {
    if (this.firstFormGroup.value.chkLimitDash===true)
    this.firstFormGroup.patchValue({chkLimitDash:false});


  }


  updateParameters() {

    const obj = {
      firmName: (this.firstFormGroup.value.txtFirmName),
      onayTuru: (this.firstFormGroup.value.onayTuru == "Silsile" ? 0 : 1),
      prsBazli: (this.firstFormGroup.value.chkprsBazli == null ? false : this.firstFormGroup.value.chkprsBazli),
      limitDash: (this.firstFormGroup.value.chkLimitDash == null ? false : this.firstFormGroup.value.chkLimitDash),
      reportDash: (this.firstFormGroup.value.chkReportDash == null ? false : this.firstFormGroup.value.chkReportDash),
      ret: (this.firstFormGroup.value.chkret == null ? false : this.firstFormGroup.value.chkret),
      mailOnay: (this.firstFormGroup.value.chkmailOnay == null ? false : this.firstFormGroup.value.chkmailOnay),
      sendMail: (this.firstFormGroup.value.chksendMail == null ? false : this.firstFormGroup.value.chksendMail),
      sendMailForm: (this.firstFormGroup.value.chksendMailForm == null ? false : this.firstFormGroup.value.chksendMailForm),
      sendMailFormTxt: (this.firstFormGroup.value.txtsendMailForm == null ? false : this.firstFormGroup.value.txtsendMailForm),
      gecmisPostUser: (this.firstFormGroup.value.chkgecmisPostUser == null ? false : this.firstFormGroup.value.chkgecmisPostUser),
      domain: (this.firstFormGroup.value.txtDomain),
      smtp: (this.firstFormGroup.value.txtSMTP),
      port: (this.firstFormGroup.value.txtPort),
      smtpUser: (this.firstFormGroup.value.txtSMTPUser),
      smtpPass: (this.firstFormGroup.value.txtSMTPPass),
      ssl: (this.firstFormGroup.value.chkSSL == null ? false : this.firstFormGroup.value.chkSSL),
      fmServis: (this.firstFormGroup.value.chkfmServis == null ? false : this.firstFormGroup.value.chkfmServis),
      mail: (this.firstFormGroup.value.txtMail),
      mailFrom: (this.firstFormGroup.value.txtMailFrom),
      mailSubject: (this.firstFormGroup.value.txtMailSubject),
      reportUrl: (this.firstFormGroup.value.txtReportUrl),
      reportUrlSecure: (this.firstFormGroup.value.chkReportUrlSecure),
      language: (this.firstFormGroup.value.txtLanguage),
      transferDate: formatDate(this.firstFormGroup.value.dtTransfer, "yyyy-MM-dd", "en-US"),
      
      fmTip: (this.firstFormGroup.value.fmTip == "Süre" ? 0 : 1),
      fmYemek: (this.firstFormGroup.value.chkfmYemek == null ? false : this.firstFormGroup.value.chkfmYemek),
      fmAcik: (this.firstFormGroup.value.chkfmDesc == null ? false : this.firstFormGroup.value.chkfmDesc),
      fmNeden: (this.firstFormGroup.value.chkfmNeden == null ? false : this.firstFormGroup.value.chkfmNeden),
      fmGecmisIslem: (this.firstFormGroup.value.chkfmGecmisIslem == null ? false : this.firstFormGroup.value.chkfmGecmisIslem),
      fmGecmisIslemSure: (this.firstFormGroup.value.fmGecmisIslemSure == null ? 0 : this.firstFormGroup.value.fmGecmisIslemSure),
      fmTemplate: (this.firstFormGroup.value.txtfmTemplate == null ? false : this.firstFormGroup.value.txtfmTemplate),
      fmUserMailBody: (this.firstFormGroup.value.txtfmUserMailBody == null ? false : this.firstFormGroup.value.txtfmUserMailBody),
      fmFormOnay: (this.firstFormGroup.value.chkfmFormOnay == null ? 0 : this.firstFormGroup.value.chkfmFormOnay),
      fmUseForm: (this.firstFormGroup.value.chkfmUseForm == null ? 0 : this.firstFormGroup.value.chkfmUseForm),

      giYemek: (this.firstFormGroup.value.chkgiYemek == null ? false : this.firstFormGroup.value.chkgiYemek),
      giAcik: (this.firstFormGroup.value.chkgiDesc == null ? false : this.firstFormGroup.value.chkgiDesc),
      giNeden: (this.firstFormGroup.value.chkgiNeden == null ? false : this.firstFormGroup.value.chkgiNeden),
      giGecmisIslem: (this.firstFormGroup.value.chkgiGecmisIslem == null ? false : this.firstFormGroup.value.chkgiGecmisIslem),
      giGecmisIslemSure: (this.firstFormGroup.value.giGecmisIslemSure == null ? 0 : this.firstFormGroup.value.giGecmisIslemSure),
      giYillikIzin: (this.firstFormGroup.value.chkgiYillikIzin == null ? 0 : this.firstFormGroup.value.chkgiYillikIzin),
      giFormOnay: (this.firstFormGroup.value.chkgiFormOnay == null ? 0 : this.firstFormGroup.value.chkgiFormOnay),
      giUseForm: (this.firstFormGroup.value.chkgiUseForm == null ? 0 : this.firstFormGroup.value.chkgiUseForm),

      siYemek: (this.firstFormGroup.value.chksiYemek == null ? false : this.firstFormGroup.value.chksiYemek),
      siAcik: (this.firstFormGroup.value.chksiDesc == null ? false : this.firstFormGroup.value.chksiDesc),
      siNeden: (this.firstFormGroup.value.chksiNeden == null ? false : this.firstFormGroup.value.chksiNeden),
      siGecmisIslem: (this.firstFormGroup.value.chksiGecmisIslem == null ? false : this.firstFormGroup.value.chksiGecmisIslem),
      siGecmisIslemSure: (this.firstFormGroup.value.siGecmisIslemSure == null ? 0 : this.firstFormGroup.value.siGecmisIslemSure),
      siFormOnay: (this.firstFormGroup.value.chksiFormOnay == null ? 0 : this.firstFormGroup.value.chksiFormOnay),
      siUseForm: (this.firstFormGroup.value.chksiUseForm == null ? 0 : this.firstFormGroup.value.chksiUseForm),
      siSaat: (this.firstFormGroup.value.chksiSaat == null ? false : this.firstFormGroup.value.chksiSaat),

      hktUseForm: (this.firstFormGroup.value.chkhktUseForm == null ? false : this.firstFormGroup.value.chkhktUseForm),
      hktFormOnay: (this.firstFormGroup.value.chkhktFormOnay == null ? false : this.firstFormGroup.value.chkhktFormOnay),
      hktNeden: (this.firstFormGroup.value.chkhktNeden == null ? false : this.firstFormGroup.value.chkhktNeden),
      hktAcik: (this.firstFormGroup.value.chkhktDesc == null ? false : this.firstFormGroup.value.chkhktDesc),
      hktGecmisIslem: (this.firstFormGroup.value.chkhktGecmisIslem == null ? false : this.firstFormGroup.value.chkhktGecmisIslem),
      hktGecmisIslemSure:  (this.firstFormGroup.value.hktGecmisIslemSure == null ? 0 : this.firstFormGroup.value.hktGecmisIslemSure),

      pstAcik: (this.firstFormGroup.value.chkpstDesc == null ? false : this.firstFormGroup.value.chkpstDesc),
      pstGecmisIslem: (this.firstFormGroup.value.chkpstGecmisIslem == null ? false : this.firstFormGroup.value.chkpstGecmisIslem),
      pstGecmisIslemSure:  (this.firstFormGroup.value.pstGecmisIslemSure == null ? 0 : this.firstFormGroup.value.pstGecmisIslemSure),

      link1Name: (this.firstFormGroup.value.txtLink1Name == null ? false : this.firstFormGroup.value.txtLink1Name),
      link1Url: (this.firstFormGroup.value.txtLink1Url == null ? false : this.firstFormGroup.value.txtLink1Url),
      link2Name: (this.firstFormGroup.value.txtLink2Name == null ? false : this.firstFormGroup.value.txtLink2Name),
      link2Url: (this.firstFormGroup.value.txtLink2Url == null ? false : this.firstFormGroup.value.txtLink2Url),
      link3Name: (this.firstFormGroup.value.txtLink3Name == null ? false : this.firstFormGroup.value.txtLink3Name),
      link3Url: (this.firstFormGroup.value.txtLink3Url == null ? false : this.firstFormGroup.value.txtLink3Url),
      link4Name: (this.firstFormGroup.value.txtLink4Name == null ? false : this.firstFormGroup.value.txtLink4Name),
      link4Url: (this.firstFormGroup.value.txtLink4Url == null ? false : this.firstFormGroup.value.txtLink4Url),
      link5Name: (this.firstFormGroup.value.txtLink5Name == null ? false : this.firstFormGroup.value.txtLink5Name),
      link5Url: (this.firstFormGroup.value.txtLink5Url == null ? false : this.firstFormGroup.value.txtLink5Url),

      isDocument:(this.firstFormGroup.value.chkIsDocument == null ? false : this.firstFormGroup.value.chkIsDocument),
      shiftControl:(this.firstFormGroup.value.chkShiftControl == null ? false : this.firstFormGroup.value.chkShiftControl),
      shiftHour:  (this.firstFormGroup.value.shiftHour == null ? 0 : this.firstFormGroup.value.shiftHour),
      shiftPartHour:  (this.firstFormGroup.value.shiftPartHour == null ? 0 : this.firstFormGroup.value.shiftPartHour),
      shiftPartHourTasks:  (this.firstFormGroup.value.txtShiftPartHourTasks == null ? 0 : this.firstFormGroup.value.txtShiftPartHourTasks),

      shiftAuth:(this.firstFormGroup.value.chkShiftAuth == null ? false : this.firstFormGroup.value.chkShiftAuth),
      shiftAuthWeek: (this.firstFormGroup.value.shiftAuthWeek == null ? 0 : this.firstFormGroup.value.shiftAuthWeek)
      // chkIsDocument: res[key].isDocument,
      // chkShiftControl: res[key].shiftControl,
      // shiftHour: res[key].shiftHour,
      // shiftPartHour: res[key].shiftPartHour,
      // txtShiftPartHourTasks: res[key].shiftPartHourTasks,

    };

    console.log(obj);

    this.poolUserService.postParameters(obj)
      .subscribe((res) => {

        this.openSnackBar(res['ReturnMessage'], 3);
        this.getParameters();
      }
        , err => {
          console.log(err);
          this.openSnackBar(err.message, 3);

        });

  };

  createLisans() {
    const obj = {
      companyCode: this.companyCode,
      companyName: this.companyName,
      macAddress: this.macAddresses,
      barkodesNum: this.barkodesNum, userCount: this.userCount
    };

    if ((this.companyName !== undefined && this.companyName !== '') &&
      //  (this.macAddresses !== undefined && this.macAddresses.length !==0) &&
      (this.barkodesNum !== undefined && this.barkodesNum !== '')
      // && (this.userCount !== undefined && this.userCount !== '')

    ) {

      // if (this.password !== this.repassword) {
      //   this.openSnackBar('şifreyi kontrol ediniz.');
      //   return;
      // }

      this.poolUserService.postPoolMacAdress(obj)
        .subscribe((res) => {
          this.openSnackBar(res['ReturnMessage'], 3);
          this.getLisansInfo();
        }
          , err => {
            console.log(err);
            this.openSnackBar(err.message, 3);

          });
    } else { this.openSnackBar('Lisans Bilgilerini kontrol ediniz..', 3); }
  }




}
