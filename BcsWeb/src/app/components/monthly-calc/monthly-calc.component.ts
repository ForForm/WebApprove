import { Observable, BehaviorSubject } from "rxjs";
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
import {MatStepper} from "@angular/material/stepper";
import {MatDialog,MatDialogRef} from  "@angular/material/dialog";
import {MatPaginator} from '@angular/material/paginator';
import {MatSnackBar, MatSnackBarConfig} from '@angular/material/snack-bar';
import {MatTableDataSource} from '@angular/material/table';
import {MatSort} from '@angular/material/sort';


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
import { ExcelService } from '../../services/excel.service';



// import { ExcelService } from "src/app/services/excel.service";

// import * as XLSX from 'xlsx';

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
  selector: 'app-monthly-calc',
  templateUrl: './monthly-calc.component.html',
  styleUrls: ['./monthly-calc.component.css'],
  providers: [

    { provide: STEPPER_GLOBAL_OPTIONS, useValue: { showError: true } },
    {
      provide: DateAdapter,
      useClass: MomentDateAdapter,
      deps: [MAT_DATE_LOCALE]
    },
    { provide: MAT_DATE_FORMATS, useValue: MY_FORMATS }
  ]
})


export class MonthlyCalcComponent implements OnInit {

  form: FormGroup;
  prmfmYemek = false;
  prmfmServis = false;
  myStyles = {
    'background-color': 'lime',
    'font-size': '20px',
    'font-weight': 'bold'
  }

  colors: string[][];
  // selectedCellsState: string[][]= new Array(1000).fill([new Array(31).fill('')]);
  user: string;
  userType: string;
  usrData = [];
  usrDataSource; usrDisplayedColumns; usrSelection;
  @ViewChild("usrPaginator", { static: true }) usrPaginator: MatPaginator;
  @ViewChild("usrSorter", { static: false }) usrSort: MatSort;
  // @ViewChild('TABLE',{ read: ElementRef }) table: ElementRef
  pageIndex: number = 0;

  
  constructor(
    private _formBuilder: FormBuilder,
    private authService: AuthService,
    private poolUserService: PooluserService,
    public dialog: MatDialog,
    private snackBar: MatSnackBar,
    private adapter: DateAdapter<any>,
    private excelService: ExcelService,
    
  ) { }

  ngOnInit() {

    this.turkishCulture();
    this.form = this._formBuilder.group({
      startdate: [Validators.required],
      enddate: [Validators.required],
    });

    this.authService.getUserName.subscribe(
      goodResult => (this.user = goodResult)
    );
    this.authService.getUserType.subscribe(
      goodResult => (this.userType = goodResult)
    );
    this.getParameters();
    this.resetReport();


  }

  generateExcel() {
    this.excelService.generateExcel(this.user,this.usrData);
  }

  generatePDF() {
    
    

  }



  turkishCulture() {
    this.adapter.setLocale("tr");
  }

  applyFilter(filterValue: string) {
    this.usrDataSource.filter = filterValue.trim().toLocaleUpperCase();
  }

  resetReport() {
    if (this.form.valid) {
      this.usrData = []
      this.usrDisplayedColumns = ["gorevi","depart", "sicil", "name", "gun1", "gun2", "gun3", "gun4", "gun5", "gun6", "gun7", "gun8", "gun9", "gun10",
        "gun11", "gun12", "gun13", "gun14", "gun15", "gun16", "gun17", "gun18", "gun19", "gun20",
        "gun21", "gun22", "gun23", "gun24", "gun25", "gun26", "gun27", "gun28", "gun29", "gun30",
        "gun31", "fiilCalisma", "standartSaat", "eksikCalisma", "imza"
      ];

      this.usrDataSource = new MatTableDataSource<UserElement>(this.usrData);
      this.usrDataSource.paginator = this.usrPaginator;
      this.usrDataSource.sort = this.usrSort;
      this.usrSelection = new SelectionModel<UserElement>(true, []);
    }
  }


  indexOfInArray(item: string, array: string[]): number {
    let index: number = -1;
    for (let i = 0; i < array.length; i++) {
      if (array[i] === item) { index = i; }
    }
    return index;
  }

  executeReport() {
    if (this.form.valid) {

      let config = new MatSnackBarConfig();
      config.panelClass = ['message-position'];
      this.snackBar.open("İşlem yapılıyor. Lütfen Bekleyiniz...","", config);

      
      this.pageIndex = 12;
      this.usrData = [];
      this.usrDisplayedColumns = [];
      const obj = { srkodu: '1', reportType: 'monthlyPuantaj', user: this.user, userType: this.userType, flow: this.form.value.flow, startDate: formatDate(this.form.value.startdate, "yyyy-MM-ddT00:00:00", "en-US"), endDate: formatDate(this.form.value.enddate, "yyyy-MM-ddT00:00:00", "en-US"), criter: '', clkodu: '9', sure: '0' };
      this.poolUserService.getReport(obj).subscribe(
        res => {
          let response: any = [];
          response = res;


          this.colors = [];
          for (var i: number = 0; i < response.length; i++) {
            this.colors[i] = [];
            for (var j: number = 0; j < 31; j++) {
              this.colors[i][j] = '';
            }
          }
 
          Object.keys(res).forEach(key => {
            this.usrData[key] = res[key];
            if (this.usrData[key].gun1.charAt(0) === "(") this.colors[key][1] = "red"; else if (this.usrData[key].gun1 === "X") this.colors[key][1] = "purple"; else if (this.usrData[key].gun1 === "B") this.colors[key][1] = "yellow"; else this.colors[key][1] = "white";
            if (this.usrData[key].gun2.charAt(0) === "(") this.colors[key][2] = "red"; else if (this.usrData[key].gun2 === "X") this.colors[key][2] = "purple"; else if (this.usrData[key].gun2 === "B") this.colors[key][2] = "yellow"; else this.colors[key][2] = "white";
            if (this.usrData[key].gun3.charAt(0) === "(") this.colors[key][3] = "red"; else if (this.usrData[key].gun3 === "X") this.colors[key][3] = "purple"; else if (this.usrData[key].gun3 === "B") this.colors[key][3] = "yellow"; else this.colors[key][3] = "white";
            if (this.usrData[key].gun4.charAt(0) === "(") this.colors[key][4] = "red"; else if (this.usrData[key].gun4 === "X") this.colors[key][4] = "purple"; else if (this.usrData[key].gun4 === "B") this.colors[key][4] = "yellow"; else this.colors[key][4] = "white";
            if (this.usrData[key].gun5.charAt(0) === "(") this.colors[key][5] = "red"; else if (this.usrData[key].gun5 === "X") this.colors[key][5] = "purple"; else if (this.usrData[key].gun5 === "B") this.colors[key][5] = "yellow"; else this.colors[key][5] = "white";
            if (this.usrData[key].gun6.charAt(0) === "(") this.colors[key][6] = "red"; else if (this.usrData[key].gun6 === "X") this.colors[key][6] = "purple"; else if (this.usrData[key].gun6 === "B") this.colors[key][6] = "yellow"; else this.colors[key][6] = "white";
            if (this.usrData[key].gun7.charAt(0) === "(") this.colors[key][7] = "red"; else if (this.usrData[key].gun7 === "X") this.colors[key][7] = "purple"; else if (this.usrData[key].gun7 === "B") this.colors[key][7] = "yellow"; else this.colors[key][7] = "white";
            if (this.usrData[key].gun8.charAt(0) === "(") this.colors[key][8] = "red"; else if (this.usrData[key].gun8 === "X") this.colors[key][8] = "purple"; else if (this.usrData[key].gun8 === "B") this.colors[key][8] = "yellow"; else this.colors[key][8] = "white";
            if (this.usrData[key].gun9.charAt(0) === "(") this.colors[key][9] = "red"; else if (this.usrData[key].gun9 === "X") this.colors[key][9] = "purple"; else if (this.usrData[key].gun9 === "B") this.colors[key][9] = "yellow"; else this.colors[key][9] = "white";
            if (this.usrData[key].gun10.charAt(0) === "(") this.colors[key][10] = "red"; else if (this.usrData[key].gun10 === "X") this.colors[key][10] = "purple"; else if (this.usrData[key].gun10 === "B") this.colors[key][10] = "yellow"; else this.colors[key][10] = "white";

            if (this.usrData[key].gun11.charAt(0) === "(") this.colors[key][11] = "red"; else if (this.usrData[key].gun11 === "X") this.colors[key][11] = "purple"; else if (this.usrData[key].gun11 === "B") this.colors[key][11] = "yellow"; else this.colors[key][11] = "white";
            if (this.usrData[key].gun12.charAt(0) === "(") this.colors[key][12] = "red"; else if (this.usrData[key].gun12 === "X") this.colors[key][12] = "purple"; else if (this.usrData[key].gun12 === "B") this.colors[key][12] = "yellow"; else this.colors[key][12] = "white";
            if (this.usrData[key].gun13.charAt(0) === "(") this.colors[key][13] = "red"; else if (this.usrData[key].gun13 === "X") this.colors[key][13] = "purple"; else if (this.usrData[key].gun13 === "B") this.colors[key][13] = "yellow"; else this.colors[key][13] = "white";
            if (this.usrData[key].gun14.charAt(0) === "(") this.colors[key][14] = "red"; else if (this.usrData[key].gun14 === "X") this.colors[key][14] = "purple"; else if (this.usrData[key].gun14 === "B") this.colors[key][14] = "yellow"; else this.colors[key][14] = "white";
            if (this.usrData[key].gun15.charAt(0) === "(") this.colors[key][15] = "red"; else if (this.usrData[key].gun15 === "X") this.colors[key][15] = "purple"; else if (this.usrData[key].gun15 === "B") this.colors[key][15] = "yellow"; else this.colors[key][15] = "white";
            if (this.usrData[key].gun16.charAt(0) === "(") this.colors[key][16] = "red"; else if (this.usrData[key].gun16 === "X") this.colors[key][16] = "purple"; else if (this.usrData[key].gun16 === "B") this.colors[key][16] = "yellow"; else this.colors[key][16] = "white";
            if (this.usrData[key].gun17.charAt(0) === "(") this.colors[key][17] = "red"; else if (this.usrData[key].gun17 === "X") this.colors[key][17] = "purple"; else if (this.usrData[key].gun17 === "B") this.colors[key][17] = "yellow"; else this.colors[key][17] = "white";
            if (this.usrData[key].gun18.charAt(0) === "(") this.colors[key][18] = "red"; else if (this.usrData[key].gun18 === "X") this.colors[key][18] = "purple"; else if (this.usrData[key].gun18 === "B") this.colors[key][18] = "yellow"; else this.colors[key][18] = "white";
            if (this.usrData[key].gun19.charAt(0) === "(") this.colors[key][19] = "red"; else if (this.usrData[key].gun19 === "X") this.colors[key][19] = "purple"; else if (this.usrData[key].gun19 === "B") this.colors[key][19] = "yellow"; else this.colors[key][19] = "white";
            if (this.usrData[key].gun20.charAt(0) === "(") this.colors[key][20] = "red"; else if (this.usrData[key].gun20 === "X") this.colors[key][20] = "purple"; else if (this.usrData[key].gun20 === "B") this.colors[key][20] = "yellow"; else this.colors[key][20] = "white";

            if (this.usrData[key].gun21.charAt(0) === "(") this.colors[key][21] = "red"; else if (this.usrData[key].gun21 === "X") this.colors[key][21] = "purple"; else if (this.usrData[key].gun21 === "B") this.colors[key][21] = "yellow"; else this.colors[key][21] = "white";
            if (this.usrData[key].gun22.charAt(0) === "(") this.colors[key][22] = "red"; else if (this.usrData[key].gun22 === "X") this.colors[key][22] = "purple"; else if (this.usrData[key].gun22 === "B") this.colors[key][22] = "yellow"; else this.colors[key][22] = "white";
            if (this.usrData[key].gun23.charAt(0) === "(") this.colors[key][23] = "red"; else if (this.usrData[key].gun23 === "X") this.colors[key][23] = "purple"; else if (this.usrData[key].gun23 === "B") this.colors[key][23] = "yellow"; else this.colors[key][23] = "white";
            if (this.usrData[key].gun24.charAt(0) === "(") this.colors[key][24] = "red"; else if (this.usrData[key].gun24 === "X") this.colors[key][24] = "purple"; else if (this.usrData[key].gun24 === "B") this.colors[key][24] = "yellow"; else this.colors[key][24] = "white";
            if (this.usrData[key].gun25.charAt(0) === "(") this.colors[key][25] = "red"; else if (this.usrData[key].gun25 === "X") this.colors[key][25] = "purple"; else if (this.usrData[key].gun25 === "B") this.colors[key][25] = "yellow"; else this.colors[key][25] = "white";
            if (this.usrData[key].gun26.charAt(0) === "(") this.colors[key][26] = "red"; else if (this.usrData[key].gun26 === "X") this.colors[key][26] = "purple"; else if (this.usrData[key].gun26 === "B") this.colors[key][26] = "yellow"; else this.colors[key][26] = "white";
            if (this.usrData[key].gun27.charAt(0) === "(") this.colors[key][27] = "red"; else if (this.usrData[key].gun27 === "X") this.colors[key][27] = "purple"; else if (this.usrData[key].gun27 === "B") this.colors[key][27] = "yellow"; else this.colors[key][27] = "white";
            if (this.usrData[key].gun28.charAt(0) === "(") this.colors[key][28] = "red"; else if (this.usrData[key].gun28 === "X") this.colors[key][28] = "purple"; else if (this.usrData[key].gun28 === "B") this.colors[key][28] = "yellow"; else this.colors[key][28] = "white";
            if (this.usrData[key].gun29.charAt(0) === "(") this.colors[key][29] = "red"; else if (this.usrData[key].gun29 === "X") this.colors[key][29] = "purple"; else if (this.usrData[key].gun29 === "B") this.colors[key][29] = "yellow"; else this.colors[key][29] = "white";
            if (this.usrData[key].gun30.charAt(0) === "(") this.colors[key][30] = "red"; else if (this.usrData[key].gun30 === "X") this.colors[key][30] = "purple"; else if (this.usrData[key].gun30 === "B") this.colors[key][30] = "yellow"; else this.colors[key][30] = "white";

            if (this.usrData[key].gun31.charAt(0) === "(") this.colors[key][31] = "red"; else if (this.usrData[key].gun31 === "X") this.colors[key][31] = "purple"; else if (this.usrData[key].gun31 === "B") this.colors[key][31] = "yellow"; else this.colors[key][31] = "white";


          }
          , err => {
            this.snackBar.dismiss();  
            let config = new MatSnackBarConfig();
            config.panelClass = ['message-position'];
            this.snackBar.open(err,"", config);
      
          });



          this.usrDisplayedColumns = ["gorevi","depart", "sicil", "name", "gun1", "gun2", "gun3", "gun4", "gun5", "gun6", "gun7", "gun8", "gun9", "gun10",
            "gun11", "gun12", "gun13", "gun14", "gun15", "gun16", "gun17", "gun18", "gun19", "gun20",
            "gun21", "gun22", "gun23", "gun24", "gun25", "gun26", "gun27", "gun28", "gun29", "gun30",
            "gun31", "fiilCalisma", "standartSaat", "eksikCalisma", "imza"
          ];

          this.usrDataSource = new MatTableDataSource<UserElement>(this.usrData);
          this.usrDataSource.paginator = this.usrPaginator;
          this.usrDataSource.sort = this.usrSort;
          this.usrSelection = new SelectionModel<UserElement>(true, []);
          this.snackBar.dismiss();  
        });

        
    }
  }
  setMyStyles(color) {

    console.log(color);
    // let styles = {
    //   'background-color': color ? 'red' : 'transparent',
    //   'font-weight': this.isImportant ? 'bold' : 'normal'
    // };
    // return styles;
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

//   exportAsXLSX():void {
//     this.excelService.exportAsExcelFile(this.usrData, 'sample');
//  }
 

  //   generateExcel() {
  //   this.excelService.generateExcel();
  // }




}
