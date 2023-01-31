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
  ElementRef
} from "@angular/core";
import { PooluserService } from "src/app/services/pooluser.service";
import { FormControl } from "@angular/forms";
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { STEPPER_GLOBAL_OPTIONS } from '@angular/cdk/stepper';
import { MatExpansionModule } from '@angular/material/expansion';
import { DomSanitizer } from '@angular/platform-browser';
import { MatDialog, MatDialogRef } from "@angular/material/dialog";
import { MatSort } from '@angular/material/sort';
import { MatPaginator } from '@angular/material/paginator';
import { MatTableDataSource } from '@angular/material/table';
import { MatStepper } from "@angular/material/stepper";
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
import { formatDate } from "@angular/common";
import * as _moment from 'moment';
import { deepCopy } from '@angular-devkit/core/src/utils/object';
// import { DateNFOption } from 'xlsx/types';
// import { ConsoleReporter } from 'jasmine';
// tslint:disable-next-line:no-duplicate-imports
// import {default as _rollupMoment} from 'moment';

const moment = _moment;

export interface MouseEvent {
  rowId: number;
  colId: number;
  cellsType: string;
}

export interface Language {
  label: string;
  labelName: string;
}

export interface LanguageMap {
  [key: string]: Language;
}



export interface UserElement {
  id: number;
  username: string;
  name: string;
  bastarih: Date;
  bittarih: Date;
  vrd1: string; vrd2: string; vrd3: string; vrd4: string; vrd5: string; vrd6: string; vrd7: string; vrd8: string; vrd9: string; vrd10: string;
  vrd11: string; vrd12: string; vrd13: string; vrd14: string; vrd15: string; vrd16: string; vrd17: string; vrd18: string; vrd19: string; vrd20: string;
  vrd21: string; vrd22: string; vrd23: string; vrd24: string; vrd25: string; vrd26: string; vrd27: string; vrd28: string; vrd29: string; vrd30: string;
  totalShift: string
  // totalshift: Time;
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
  selector: 'app-shift',
  templateUrl: './shift.component.html',
  styleUrls: ['./shift.component.css'],
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
export class ShiftComponent implements OnInit {

  public maskTime = [/[0-9]/, /\d/, ':', /\d/, /\d/];
  shifts: any = [];
  totalRows = 0;
  totalCols = 0;
  mainScreenVisible = true;
  firstFormGroup: FormGroup;
  secondFormGroup: FormGroup;
  thirdFormGroup: FormGroup;
  isOptional = false;
  user: string;
  totalAmount: number[];
  userType: string;
  nextBtn = true;
  formTemplate = '';
  workflow: string[] = ['Onaylı', 'Ret', 'Bekleyen Kayıtlar'];
  // flowName=['Günlük İzin','Saatlik İzin','Mesai','Rapor']
  personelInfo: any = [];
  language: any = [];
  languageMap: LanguageMap = {};
  shiftDates: any = [];
  //  selectedCellsState: boolean[][]= new Array(3).fill([new Array(6).fill(false)]);
  selectedCellsState: boolean[][]
  colors: string[][];
  totals: number[][];
  totalsCalc: number[][];
  prmShiftControl = false;
  prmShiftHour = 0;
  prmShiftPartHour = 0;
  prmShiftPartHourTasks = '';
  prmShiftAuth = false;
  prmShiftAuthWeek = 0;

  usrlanguages: any = [];
  // selectedCellsState: boolean[][] = [
  //   [false, false, false, false, false, false, false],
  //   [false, false, false, false, false, false, false],
  //   [false, false, false, false, false, false, false],
  //   [false, false, false, false, false, false, false],
  //   [false, false, false, false, false, false, false],
  //   [false, false, false, false, false, false, false],
  //   [false, false, false, false, false, false, false],
  //   [false, false, false, false, false, false, false],
  //   [false, false, false, false, false, false, false],
  //   [false, false, false, false, false, false, false]
  // ];

  startDate: any;
  endDate: any;
  approve = false;
  flowIndex = 0;
  reasons: any = [];
  postas: any = [];
  fmservices: any = [];
  giriscikis: any = [{ kodu: 0, adi: 'Giriş' }, { kodu: 1, adi: 'Çıkış' }];
  firstCtrl = new FormControl();
  chkApprove = new FormControl();
  approver: '';
  prmgecmisPostUser = false;
  prmreportUrl = '';
  prmfmYemek = false;
  prmfmUseForm = false;
  prmsiUseForm = false;
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

  choosenWeek = 0;

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

  tableMouseDown: MouseEvent;
  tableMouseUp: MouseEvent;
  FIRST_EDITABLE_ROW: number = 0;
  LAST_EDITABLE_ROW: number = 3; // = 9
  FIRST_EDITABLE_COL: number = 1;                       // first column pos is not editable --> so start from index 1
  LAST_EDITABLE_COL: number = 0; // = 3
  newCellValue: string = '';

  @ViewChild("usrPaginator", { static: false }) usrPaginator: MatPaginator;
  @ViewChild("usrSorter", { static: true }) usrSort: MatSort;
  @ViewChild("aprPaginator", { static: false }) aprPaginator: MatPaginator;
  @ViewChild("aprSorter", { static: false }) aprSort: MatSort;
  @ViewChild("amrPaginator", { static: false }) amrPaginator: MatPaginator;
  @ViewChild("amrSorter", { static: false }) amrSort: MatSort;
  @ViewChild('stepper', { static: true }) stepper: MatStepper;

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

  indexOfInArray(item: string, array: string[]): number {
    let index: number = -1;
    for (let i = 0; i < array.length; i++) {
      if (array[i] === item) { index = i; }
    }
    return index;
  }

  // async asyncSetShiftInfo(): Promise<any> {
  //   this.tableMouseUp.colId+=5;
  //   this.tableMouseDown.colId+=5;
  //   return null;
  // }

  previousWeek() {
    this.startDate.subtract(7, 'days');
    this.endDate.subtract(7, 'days');
    this.firstFormGroup.patchValue({ shiftDate1: formatDate(this.startDate.toString(), "yyyy-MM-ddT00:00:00", "en-US"), shiftDate2: formatDate(this.endDate.toString(), "yyyy-MM-ddT00:00:00", "en-US") });
    this.createColumn(true);
    this.choosenWeek--;
    this.shiftAuthControl();
  }

  nextWeek() {
    this.startDate.add(7, 'days');
    this.endDate.add(7, 'days');
    this.firstFormGroup.patchValue({ shiftDate1: formatDate(this.startDate.toString(), "yyyy-MM-ddT00:00:00", "en-US"), shiftDate2: formatDate(this.endDate.toString(), "yyyy-MM-ddT00:00:00", "en-US") });
    this.createColumn(true);
    this.choosenWeek++;
    this.shiftAuthControl();
  }

  shiftAuthControl() {

    if (this.prmShiftAuth) {
      if (this.prmShiftAuthWeek > this.choosenWeek)
        this.nextBtn = false; else this.nextBtn = true;
    } else this.nextBtn = true;

  }

  ngOnInit() {
    // this.usrPaginator._intl.itemsPerPageLabel = 'My translation for items per page.';
    // debugger;

    this.firstFormGroup = this._formBuilder.group({
      firstCtrl: [],
      shiftDate1: [],
      shiftDate2: [],
      shiftItem: [],
      onayTuru: []
    });

    // let startDate = moment(new Date());

    // for (let index = 0; index < 8; index++) {
    //   if (startDate.format('dddd')==='Monday') break;
    //   startDate= startDate.subtract(1, 'days');       
    // }
    this.startDate = moment(new Date());
    for (let index = 0; index < 8; index++) {
      if (this.startDate.format('dddd') === 'Monday' || this.startDate.format('dddd') === 'Pazartesi') break;
      this.startDate = this.startDate.subtract(1, 'days');
    }

    this.endDate = moment(this.startDate);
    this.endDate.add(6, 'days');
    this.firstFormGroup.patchValue({ shiftDate1: formatDate(this.startDate.toString(), "yyyy-MM-ddT00:00:00", "en-US"), shiftDate2: formatDate(this.endDate.toString(), "yyyy-MM-ddT00:00:00", "en-US") });

    // console.log(startDate.format('dddd'));
    // let endDate = startDate;
    // endDate.add(7, 'days');
    // this.firstFormGroup.patchValue({ shiftDate1: formatDate(startDate.toString(), "yyyy-MM-ddT00:00:00", "en-US"), shiftDate2: formatDate(endDate.toString(), "yyyy-MM-ddT00:00:00", "en-US") });
    this.authService.getUserName.subscribe(
      goodResult => (this.user = goodResult)
    );
    this.authService.getUserType.subscribe(
      goodResult => (this.userType = goodResult)
    );

    this.turkishCulture();
    // this.getLanguage('Tr');
    this.getParameters();
    this.approve = true;

    this.getShiftsInfo();
    this.createColumn(true);
   
    // this.openFlow(4, true);
  }




  createColumn(onload) {

    this.shiftDates = [];

    let diff = this.endDate.diff(this.startDate, 'days');
    let myDate = moment(this.startDate);
    for (var i = 0, len = diff + 1; i < len; i++) {
      this.shiftDates.push(formatDate(myDate.toString(), "dd-MM-yyyy", "en-US"));
      myDate.add(1, 'days');
    }

    this.getUsers(this.user, onload);

  }

  getUsers(userName, onload) {


    let config = new MatSnackBarConfig();
    config.panelClass = ['message-position'];
    this.snackBar.open("İşlem yapılıyor. Lütfen Bekleyiniz...", "", config);

    this.totalAmount = new Array(1000);
    for (var j = 0, len = 1000; j < len; j++) { this.totalAmount[j] = 0 }
    // console.log('getuser worked....');
    this.pageIndex = 12;
    this.usrData = [];
    this.usrDisplayedColumns = [];
    this.poolUserService.getPoolUsers(userName, 'V').subscribe(
      res => {
        Object.keys(res).forEach(key => {

          this.usrData[key] = res[key];
          this.approver = res[key].approver;
          this.usrData[key].srkodu = 1;
          this.usrData[key].bastarih = this.firstFormGroup.value.shiftDate1;
          this.usrData[key].bittarih = this.firstFormGroup.value.shiftDate2;
          this.usrData[key].type = "mouse";
          let start = moment(this.firstFormGroup.value.shiftDate1);
          let end = moment(this.firstFormGroup.value.shiftDate2);
          let diff = end.diff(start, 'days');
          this.selectedCellsState = []; this.colors = []; this.totals = []; this.totalsCalc = [];
          this.totalRows = 0; Object.keys(res).forEach(key => { this.totalRows++; });
          this.totalCols = diff + 1;
          for (var i = 0; i < this.totalRows; i++) {
            this.totalAmount[i] = 0;
            this.selectedCellsState[i] = []; this.colors[i] = []; this.totals[i] = []; this.totalsCalc[i] = [];
            for (var j = 0; j < this.totalCols; j++) {
              this.selectedCellsState[i][j] = false;
              this.colors[i][j] = 'ffffff';
              this.totals[i][j] = 0;
              this.totalsCalc[i][j] = 0;
            }
          }
        },
          err => {
            console.log(err);
          }

        );


        const locale = 'en-US';
        let obj: any = { date1: formatDate(this.firstFormGroup.value.shiftDate1, "yyyy-MM-dd", locale), date2: formatDate(this.firstFormGroup.value.shiftDate2, "yyyy-MM-dd", locale), username: this.user };
        this.poolUserService
          .getPoolShiftApprove(obj)
          .subscribe(
            res1 => {
              console.log(this.firstFormGroup.value.shiftDate1);
              console.log(this.firstFormGroup.value.shiftDate2);
              console.log(res1);
              Object.keys(this.usrData).forEach(key => {
                Object.keys(res1).forEach(key1 => {
                  if (res1[key1].username === this.usrData[key].username) {


                    this.usrData[key].maxclim = res1[key1].maxclim;
                    let i = res1[key1].diff;
                    this.tableMouseUp = { rowId: Number(key), colId: (i + 6), cellsType: "mouse" };
                    this.tableMouseDown = { rowId: Number(key), colId: (i + 6), cellsType: "mouse" };

                    if (i === 0) { this.colors[key][0] = res1[key1].color; this.usrData[key].type1 = "db"; this.updateSelectedCellsValues(res1[key1].dscr, onload); }
                    if (i === 1) { this.colors[key][1] = res1[key1].color; this.usrData[key].type2 = "db"; this.updateSelectedCellsValues(res1[key1].dscr, onload); }
                    if (i === 2) { this.colors[key][2] = res1[key1].color; this.usrData[key].type3 = "db"; this.updateSelectedCellsValues(res1[key1].dscr, onload); }
                    if (i === 3) { this.colors[key][3] = res1[key1].color; this.usrData[key].type4 = "db"; this.updateSelectedCellsValues(res1[key1].dscr, onload); }
                    if (i === 4) { this.colors[key][4] = res1[key1].color; this.usrData[key].type5 = "db"; this.updateSelectedCellsValues(res1[key1].dscr, onload); }
                    if (i === 5) { this.colors[key][5] = res1[key1].color; this.usrData[key].type6 = "db"; this.updateSelectedCellsValues(res1[key1].dscr, onload); }
                    if (i === 6) { this.colors[key][6] = res1[key1].color; this.usrData[key].type7 = "db"; this.updateSelectedCellsValues(res1[key1].dscr, onload); }
                    if (i === 7) { this.colors[key][7] = res1[key1].color; this.usrData[key].type8 = "db"; this.updateSelectedCellsValues(res1[key1].dscr, onload); }
                    if (i === 8) { this.colors[key][8] = res1[key1].color; this.usrData[key].type9 = "db"; this.updateSelectedCellsValues(res1[key1].dscr, onload); }
                    if (i === 9) { this.colors[key][9] = res1[key1].color; this.usrData[key].type10 = "db"; this.updateSelectedCellsValues(res1[key1].dscr, onload); }
                    if (i === 10) { this.colors[key][10] = res1[key1].color; this.usrData[key].type11 = "db"; this.updateSelectedCellsValues(res1[key1].dscr, onload); }
                    if (i === 11) { this.colors[key][11] = res1[key1].color; this.usrData[key].type12 = "db"; this.updateSelectedCellsValues(res1[key1].dscr, onload); }
                    if (i === 12) { this.colors[key][12] = res1[key1].color; this.usrData[key].type13 = "db"; this.updateSelectedCellsValues(res1[key1].dscr, onload); }
                    if (i === 13) { this.colors[key][13] = res1[key1].color; this.usrData[key].type14 = "db"; this.updateSelectedCellsValues(res1[key1].dscr, onload); }
                    if (i === 14) { this.colors[key][14] = res1[key1].color; this.usrData[key].type15 = "db"; this.updateSelectedCellsValues(res1[key1].dscr, onload); }
                    if (i === 15) { this.colors[key][15] = res1[key1].color; this.usrData[key].type16 = "db"; this.updateSelectedCellsValues(res1[key1].dscr, onload); }
                    if (i === 16) { this.colors[key][16] = res1[key1].color; this.usrData[key].type17 = "db"; this.updateSelectedCellsValues(res1[key1].dscr, onload); }
                    if (i === 17) { this.colors[key][17] = res1[key1].color; this.usrData[key].type18 = "db"; this.updateSelectedCellsValues(res1[key1].dscr, onload); }
                    if (i === 18) { this.colors[key][18] = res1[key1].color; this.usrData[key].type19 = "db"; this.updateSelectedCellsValues(res1[key1].dscr, onload); }
                    if (i === 19) { this.colors[key][19] = res1[key1].color; this.usrData[key].type20 = "db"; this.updateSelectedCellsValues(res1[key1].dscr, onload); }
                    if (i === 20) { this.colors[key][20] = res1[key1].color; this.usrData[key].type21 = "db"; this.updateSelectedCellsValues(res1[key1].dscr, onload); }
                    if (i === 21) { this.colors[key][21] = res1[key1].color; this.usrData[key].type22 = "db"; this.updateSelectedCellsValues(res1[key1].dscr, onload); }
                    if (i === 22) { this.colors[key][22] = res1[key1].color; this.usrData[key].type23 = "db"; this.updateSelectedCellsValues(res1[key1].dscr, onload); }
                    if (i === 23) { this.colors[key][23] = res1[key1].color; this.usrData[key].type24 = "db"; this.updateSelectedCellsValues(res1[key1].dscr, onload); }
                    if (i === 24) { this.colors[key][24] = res1[key1].color; this.usrData[key].type25 = "db"; this.updateSelectedCellsValues(res1[key1].dscr, onload); }
                    if (i === 25) { this.colors[key][25] = res1[key1].color; this.usrData[key].type26 = "db"; this.updateSelectedCellsValues(res1[key1].dscr, onload); }
                    if (i === 26) { this.colors[key][26] = res1[key1].color; this.usrData[key].type27 = "db"; this.updateSelectedCellsValues(res1[key1].dscr, onload); }
                    if (i === 27) { this.colors[key][27] = res1[key1].color; this.usrData[key].type28 = "db"; this.updateSelectedCellsValues(res1[key1].dscr, onload); }
                    if (i === 28) { this.colors[key][28] = res1[key1].color; this.usrData[key].type29 = "db"; this.updateSelectedCellsValues(res1[key1].dscr, onload); }
                    if (i === 29) { this.colors[key][29] = res1[key1].color; this.usrData[key].type30 = "db"; this.updateSelectedCellsValues(res1[key1].dscr, onload); }
                    if (res1[key1].vrkodu !== '0') {
                      this.totals[key][i] += res1[key1].maxclim;
                    }
                  } else
                    this.usrData[key].type = "mouse";
                })

              });

              for (let index = 0; index < this.totals.length; index++) {
                for (let index1 = 0; index1 < this.totals[index].length; index1++)
                  this.totalAmount[index] += this.totals[index][index1];
              }

              Object.keys(this.usrData).forEach(key => {
                if ((this.totalAmount[key] / 60).toString().split('.').length === 2)
                  this.usrData[key].totalShift = (this.totalAmount[key] / 60).toString().split('.')[0] + ':' + Math.round(Number((this.totalAmount[key] / 60).toString().split('.')[1]) * 6).toString().substring(0, 2);
                else {
                  if (isNaN(this.totalAmount[key])) this.usrData[key].totalShift = ('0.0').toString().split('.')[0] + ':' + '00';
                  else
                    this.usrData[key].totalShift = (this.totalAmount[key] / 60).toString().split('.')[0] + ':' + '00';
                }
              });


            },
            err => {
              console.log(err);
              this.openSnackBar(err.message, 3);
            }
          );




        this.usrDisplayedColumns = [
          "id",
          "depart",
          "username",
          "name",
          "bastarih",
          "bittarih",
          "vrd1",
          "vrd2",
          "vrd3",
          "vrd4",
          "vrd5",
          "vrd6",
          "vrd7",
          "vrd8",
          "vrd9",
          "vrd10",
          "vrd11",
          "vrd12",
          "vrd13",
          "vrd14",
          "vrd15",
          "vrd16",
          "vrd17",
          "vrd18",
          "vrd19",
          "vrd20",
          "vrd21",
          "vrd22",
          "vrd23",
          "vrd24",
          "vrd25",
          "vrd26",
          "vrd27",
          "vrd28",
          "vrd29",
          "vrd30",
          "totalShift"

        ];

        this.usrDataSource = new MatTableDataSource<UserElement>(this.usrData);
        this.usrDataSource.paginator = this.usrPaginator;
        this.usrDataSource.sort = this.usrSort;
        this.usrSelection = new SelectionModel<UserElement>(true, []);
        this.snackBar.dismiss();

      });

  }

  updateSelectedCellsValues(text: string, onload) {


    let textt: string = text;

    if (text === '') textt = ''
    else textt = text.split('#')[1];

    if (textt == null) { return; }

    if (this.tableMouseDown && this.tableMouseUp) {

      const dataCopy: UserElement[] = this.usrDataSource.data.slice();
      let startCol: number;
      let endCol: number;
      let startRow: number;
      let endRow: number;

      if (this.tableMouseDown.colId <= this.tableMouseUp.colId) {
        startCol = this.tableMouseDown.colId;
        endCol = this.tableMouseUp.colId;
      } else {
        endCol = this.tableMouseDown.colId;
        startCol = this.tableMouseUp.colId;
      }

      if (this.tableMouseDown.rowId <= this.tableMouseUp.rowId) {
        startRow = this.tableMouseDown.rowId;
        endRow = this.tableMouseUp.rowId;
      } else {
        endRow = this.tableMouseDown.rowId;
        startRow = this.tableMouseUp.rowId;
      }

      for (var j = 0, len = dataCopy.length; j < len; j++) {
        this.totalAmount[j] = 0;
      }

      if (startCol === endCol) {

        for (let i = startRow; i <= endRow; i++) {
          if (textt === '') {
            dataCopy[i][this.usrDisplayedColumns[startCol]] = '';
          }
          else
            dataCopy[i][this.usrDisplayedColumns[startCol]] = textt;

        }
      } else {

        for (let i = startRow; i <= endRow; i++) {
          for (let j = startCol; j <= endCol; j++) {
            if (textt === '') {
              dataCopy[i][this.usrDisplayedColumns[startCol]] = '';
            }
            else
              dataCopy[i][this.usrDisplayedColumns[j]] = textt;

          }
        }
      }




      if (textt === '')
        return;




      this.usrDataSource = new MatTableDataSource<UserElement>(dataCopy);

    }
  }


  setShiftInfo(e) {

    console.log(this.totals);
    let textt: string = e.value;

    if (e === '') textt = ''
    else textt = e.value.split('#')[1];

    if (textt == null) { return; }

    this.tableMouseUp.colId += 6;
    this.tableMouseDown.colId += 6;
    if (this.tableMouseDown && this.tableMouseUp) {


      const dataCopy: UserElement[] = this.usrDataSource.data.slice();
      this.totalsCalc = deepCopy(this.totals);

      for (var i = 0, len = dataCopy.length; i < len; i++) { this.totalAmount[i] = 0; }

      let startCol: number;
      let endCol: number;
      let startRow: number;
      let endRow: number;

      if (this.tableMouseDown.colId <= this.tableMouseUp.colId) {
        startCol = this.tableMouseDown.colId;
        endCol = this.tableMouseUp.colId;
      } else {
        endCol = this.tableMouseDown.colId;
        startCol = this.tableMouseUp.colId;
      }


      if (this.tableMouseDown.rowId <= this.tableMouseUp.rowId) {
        startRow = this.tableMouseDown.rowId;
        endRow = this.tableMouseUp.rowId;
      } else {
        endRow = this.tableMouseDown.rowId;
        startRow = this.tableMouseUp.rowId;
      }


      for (let i = startRow; i <= endRow; i++) {
        for (let j = startCol; j <= endCol; j++) {
          this.totalsCalc[i][j - 6] = Number(e.value.split('#')[2]);
        }
      }


      for (let index = 0; index < this.totalsCalc.length; index++) {
        for (let index1 = 0; index1 < this.totalsCalc[index].length; index1++)
          this.totalAmount[index] += this.totalsCalc[index][index1];
      }

      // prmShiftControl = false;
      // prmShiftHour = 0;
      // prmShiftPartHour = 0;
      // prmShiftPartHourTasks ='';

      let messageReturn = false;
      let gorevMsg = '';

      if (this.prmShiftControl) {
        for (var j = 0, len = dataCopy.length; j < len; j++) {
          if (this.totalAmount[j] > ((dataCopy[j]['gorev'] === this.prmShiftPartHourTasks ? this.prmShiftPartHour : this.prmShiftHour) * 60)) {
            if (!onload && (j >= startRow && j <= endRow)) {
              messageReturn = true;
              gorevMsg = dataCopy[j]['gorev']
            }
          }
        }
      }

      if (messageReturn) {
        alert("Aynı hafta içinde " + (gorevMsg == this.prmShiftPartHourTasks ? this.prmShiftPartHour : this.prmShiftHour) + " saat aşımı vardır.");
        this.usrDataSource = new MatTableDataSource<UserElement>(dataCopy);
        // this.totalsCalc = [];
        this.totalsCalc = [];
        for (var i = 0; i < this.totalRows; i++) {
          this.totalsCalc[i] = [];
          for (var j = 0; j < this.totalCols; j++) {
            this.totalsCalc[i][j] = 0;
          }
        }


        for (var i = 0; i < this.totalRows; i++) {
          for (var j = 0; j < this.totalCols; j++) {
            if (this.colors[i][j] !== "ff0000") {
              this.selectedCellsState[i][j] = false;
              this.colors[i][j] = 'ffffff';
            }
          }
        }
        this.firstFormGroup.patchValue({ shiftItem: '' });

      }
      else {
        if (startCol === endCol) {

          for (let i = startRow; i <= endRow; i++) {
            if (textt === '')
              dataCopy[i][this.usrDisplayedColumns[startCol]] = '';
            else
              dataCopy[i][this.usrDisplayedColumns[startCol]] = textt;
          }
        } else {
          for (let i = startRow; i <= endRow; i++) {
            for (let j = startCol; j <= endCol; j++) {
              if (textt === '')
                dataCopy[i][this.usrDisplayedColumns[startCol]] = '';
              else
                dataCopy[i][this.usrDisplayedColumns[j]] = textt;

            }
          }
        }


        this.totals = this.totalsCalc.slice();
        Object.keys(this.usrData).forEach(key => {
          if ((this.totalAmount[key] / 60).toString().split('.').length === 2)
            this.usrData[key].totalShift = (this.totalAmount[key] / 60).toString().split('.')[0] + ':' + Math.round(Number((this.totalAmount[key] / 60).toString().split('.')[1]) * 6).toString().substring(0, 2);
          else
            this.usrData[key].totalShift = (this.totalAmount[key] / 60).toString().split('.')[0] + ':' + '00';
        });


        this.usrDataSource = new MatTableDataSource<UserElement>(dataCopy);

        // this.tableMouseDown.colId=-1;
        // this.tableMouseUp.colId=-1;
        // this.tableMouseDown.rowId=-1;
        // this.tableMouseUp.rowId=-1;
        // this.updateSelectedCellsState(-1, -1, -1, -1);
      }
    }


    this.firstFormGroup.patchValue({ shiftItem: '' });

  }


  getShiftsInfo() {
    this.poolUserService.getShifts(1)
      .subscribe((res) => {
        this.shifts = res;
      }, err => {
        console.log(err);
      });


  }



  onMouseDown(rowId: number, colId: number, cellsType: string) {


    if (this.prmShiftAuth) {
      if (this.prmShiftAuthWeek > this.choosenWeek)
        return;
    }

    if (cellsType === "db" && this.colors[rowId][colId - 1] === 'ff0000') {
      this.openSnackBar('Günizin değiştirilemez. Hücre seçimini tekrarlayınız.', 3);
      return;
    }

    for (var i = 0; i < this.totalRows; i++) {
      for (var j = 0; j < this.totalCols; j++) {
        if (this.colors[i][j] !== "ff0000") {
          this.selectedCellsState[i][j] = false;
          this.colors[i][j] = 'ffffff';
        }
      }
    }

    // this.openSnackBar(cellsType+this.colors[rowId][colId], 3);


    // if (cellsType === "db" && this.colors[rowId][colId] === 'ff0000') {
    //   this.openSnackBar('Günizin değiştirilemez. Hücre seçimini tekrarlayınız.', 3);
    //   return;
    // }

    this.tableMouseDown = { rowId: rowId, colId: colId - 1, cellsType: cellsType };

  }

  onMouseUp(rowId: number, colId: number, cellsType: string) {


    if (this.prmShiftAuth) {
      if (this.prmShiftAuthWeek > this.choosenWeek)
        return;
    }


    if (cellsType === "db" && this.colors[rowId][colId - 1] === 'ff0000') {
      this.openSnackBar('Günizin değiştirilemez. Hücre seçimini tekrarlayınız..', 3);
      return;
    }

    this.tableMouseUp = { rowId: rowId, colId: colId - 1, cellsType: cellsType };
    if (this.tableMouseDown) {
      this.newCellValue = '';
      this.updateSelectedCellsState(this.tableMouseDown.colId, this.tableMouseUp.colId, this.tableMouseDown.rowId, this.tableMouseUp.rowId);
    }
  }

  /**
   * Update selectedCols && selectedRows arrays
   * @param mouseDownColId
   * @param mouseUpColId
   * @param mouseDownRowId
   * @param mouseUpRowId
   */
  private updateSelectedCellsState(mouseDownColId: number, mouseUpColId: number, mouseDownRowId: number, mouseUpRowId: number) {

    // const dataCopy: UserElement[] = this.usrDataSource.data.slice(); // copy and mutate
    // console.log(dataCopy);
    // this.openSnackBar(dataCopy[mouseDownColId][this.usrDisplayedColumns[mouseDownRowId]] , 3);
    this.LAST_EDITABLE_COL = this.usrDisplayedColumns.length - 1;
    this.LAST_EDITABLE_ROW = this.usrData.length;
    // init selected cells
    // for (let i = this.FIRST_EDITABLE_ROW; i <= this.LAST_EDITABLE_ROW; i++) {
    //   for (let j = this.FIRST_EDITABLE_COL; j <= this.LAST_EDITABLE_COL; j++) {
    //     this.selectedCellsState[i][j] = false;
    //     this.colors[i][j] ='ffffff';
    //   }
    // } 
    // for (let i = this.FIRST_EDITABLE_ROW; i <= this.LAST_EDITABLE_ROW; i++) {
    //   for (let j = this.FIRST_EDITABLE_COL; j <= this.LAST_EDITABLE_COL; j++) {
    //     this.selectedCellsState[i][j] = false;
    //     this.colors[i][j] = 'ffffff';
    //   }
    // }
    // update selected cells

    // if (mouseDownColId==-1 && mouseUpColId==-1 && mouseDownRowId==-1 && mouseUpRowId==-1) return;

    let startCol: number;
    let endCol: number;
    let startRow: number;
    let endRow: number;
    if (mouseDownColId <= mouseUpColId) {
      startCol = mouseDownColId;
      endCol = mouseUpColId;
    } else {
      endCol = mouseDownColId;
      startCol = mouseUpColId;
    }

    if (mouseDownRowId <= mouseUpRowId) {
      startRow = mouseDownRowId;
      endRow = mouseUpRowId;
    } else {
      endRow = mouseDownRowId;
      startRow = mouseUpRowId;
    }
    for (let i = startRow; i <= endRow; i++) {
      for (let j = startCol; j <= endCol; j++) {
        this.selectedCellsState[i][j] = true;
        this.colors[i][j] = "ff8000";
      }
    }
  }
  // /**
  //  * After the user enters a new value, all selected cells must be updated
  //  * document:keyup
  //  * @param event
  //  */
  // @HostListener('document:keyup', ['$event'])
  // onKeyUp(event: KeyboardEvent): void {

  //   // If no cell is selected then ignore keyUp event
  //   if (this.tableMouseDown && this.tableMouseUp) {

  //     let specialKeys: string[] = ['Enter', 'PrintScreen', 'Escape', 'cControl', 'NumLock', 'PageUp', 'PageDown', 'End',
  //       'Home', 'Delete', 'Insert', 'ContextMenu', 'Control', 'ControlAltGraph', 'Alt', 'Meta', 'Shift', 'CapsLock',
  //       'TabTab', 'ArrowRight', 'ArrowLeft', 'ArrowDown', 'ArrowUp', 'Pause', 'ScrollLock', 'Dead', '',
  //       'F1', 'F2', 'F3', 'F4', 'F5', 'F6', 'F7', 'F8', 'F9', 'F10', 'F11', 'F12'];

  //     if (event.key === 'Backspace') { // 'delete' key is pressed
  //       const end: number = this.newCellValue.length - 1;
  //       this.newCellValue = this.newCellValue.slice(0, end);

  //     } else if (this.indexOfInArray(event.key, specialKeys) === -1) {
  //       this.newCellValue += event.key;
  //     }
  //     this.updateSelectedCellsValues(this.newCellValue);
  //   }
  // }


  /**
   * After the user enters a new value, all selected cells must be updated
   * document:keyup
   * @param event
   */
  @HostListener('document:keyup', ['$event'])
  onKeyUp(event: KeyboardEvent): void {
    // If no cell is selected then ignore keyUp event



    if (this.tableMouseDown && this.tableMouseUp) {
      // let specialKeys: string[] = ['Enter', 'PrintScreen', 'Escape', 'cControl', 'NumLock', 'PageUp', 'PageDown', 'End',
      //   'Home', 'Delete', 'Insert', 'ContextMenu', 'Control', 'ControlAltGraph', 'Alt', 'Meta', 'Shift', 'CapsLock',
      //   'TabTab', 'ArrowRight', 'ArrowLeft', 'ArrowDown', 'ArrowUp', 'Pause', 'ScrollLock', 'Dead', '',
      //   'F1', 'F2', 'F3', 'F4', 'F5', 'F6', 'F7', 'F8', 'F9', 'F10', 'F11', 'F12'];




      if (this.newCellValue === '' && event.key === 'Backspace')
        return;

      if (event.key === 'Backspace') { // 'delete' key is pressed


        const end: number = this.newCellValue.length - 1;
        this.newCellValue = this.newCellValue.slice(0, end);
        this.tableMouseDown.colId += 5;
        this.tableMouseUp.colId += 5;
      }


      // else if (this.indexOfInArray(event.key, specialKeys) === -1) {
      //   this.newCellValue += event.key;
      // } 

      this.updateSelectedCellsValues(this.newCellValue, false);
    }
  }

  turkishCulture() {
    this.adapter.setLocale("tr");
  }

  applyFilter(filterValue: string) {
    this.usrDataSource.filter = filterValue.trim().toLocaleUpperCase();
  }
  //   async delay(ms: number) {
  //     await new Promise(resolve => setTimeout(()=>resolve(), ms)).then(()=>

  //     (this.amrGetApproveInfo(this.user,this.prmonayTuru, null))
  //     ); 
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

  getParameters() {
    this.poolUserService.getParameters()
      .subscribe((res) => {
        Object.keys(res).forEach((key) => {

          this.prmShiftControl = res[key].shiftControl;
          this.prmShiftHour = res[key].shiftHour;
          this.prmShiftPartHour = res[key].shiftPartHour;
          this.prmShiftPartHourTasks = res[key].shiftPartHourTasks;

          this.prmShiftAuth = res[key].shiftAuth;
          this.prmShiftAuthWeek = res[key].shiftAuthWeek;

        });

        this.getUserLanguage();
        this.shiftAuthControl();  
        
      }, err => {
        console.log(err);
      });

  };

  async addTab(): Promise<any> {

    let config = new MatSnackBarConfig();
    config.verticalPosition = "top";
    this.snackBar.open("İşlem yapılıyor. Lütfen Bekleyiniz...", "", config);

    const dataCopy: UserElement[] = this.usrDataSource.data.slice(); // copy and mutate

    this.poolUserService
      .postPoolShiftApprove(dataCopy)
      .subscribe(
        (res: any[]) => {

          console.log(res);
          this.openSnackBar(res["ReturnMessage"], 3);
        },
        err => {
          console.log(err);
          this.openSnackBar(err.message, 3);
        }
      );
  }

  tabNextControl() {
    if (this.userType === 'P')
      this.nextBtn = true;

    if ((this.stepper.selectedIndex === 0 || this.stepper.selectedIndex === 1) && this.flowIndex !== 5) {
      this.nextBtn = this.personelInfo.length === 0 ? false : true;
    }
  }

  openSnackBar(message: string, seconds: number) {
    this.snackBar.open(message, "", {
      duration: seconds * 1000,
      verticalPosition: "top"
    });
  }

  openFlow(flowIndex, approve) {

    this.mainScreenVisible = false;
    // this.getUsers(this.user);
    // this.selectedCellsState= new Array(this.usrData.length).fill([new Array(this.LAST_EDITABLE_COL).fill(false)]);



  }

}



