
import { NgModule, AfterViewInit, Inject, Component, Input, OnDestroy, OnInit, ViewChild, Optional, ChangeDetectorRef } from '@angular/core';
import { FormBuilder, FormGroup } from '@angular/forms';
import { MAT_DIALOG_DATA, MatDialogRef } from '@angular/material/dialog';

import { MatSnackBar } from '@angular/material/snack-bar';
import { MatSnackBarConfig } from '@angular/material/snack-bar';
// import { Definition,DefinitionHourDetail } from '../definitions/interfaces/definition.model'
import { formatDate, Time } from '@angular/common';
import { MatTableDataSource } from '@angular/material/table';
import { AuthService } from "../../services/auth.service";
import { PooluserService } from "src/app/services/pooluser.service";
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
import { Validators, FormControl } from '@angular/forms';



@Component({
  selector: 'list',
  templateUrl: './list.component.html',
  styleUrls: ['./list.component.scss'],

  providers: [

    {
      provide: MAT_DATE_FORMATS,
      useValue: {
        parse: {
          dateInput: ['l', 'LL'],
        },
        display: {
          dateInput: 'L',
          monthYearLabel: 'M YYYY',
          dateA11yLabel: 'LL',
          monthYearA11yLabel: 'MMMM YYYY',
        },
      },
    },
    { provide: DateAdapter, useClass: MomentDateAdapter },
    { provide: MAT_MOMENT_DATE_ADAPTER_OPTIONS, useValue: { useUtc: true } }
  ]
})


export class ListComponent implements OnInit {

  static id = 100;

  @Input() columns = ['idno', 'sicilno','kodu' ,'adi', 'departadi'];
  form: FormGroup;
  mode: 'create' | 'update' = 'create';
  dataSource: MatTableDataSource<any> | null;

  visible = false;
  label = '';

  // sub=false;

  constructor(@Inject(MAT_DIALOG_DATA) public defaults: any,
    private dialogRef: MatDialogRef<ListComponent>,
    private fb: FormBuilder,
    private cd: ChangeDetectorRef,
    private authService: AuthService,
    private poolUserService: PooluserService,
    private adapter: DateAdapter<any>,
    private snackbar: MatSnackBar) {
  }


  applyFilter(filterValue: string) {
    filterValue = filterValue.trim(); // Remove whitespace
    filterValue = filterValue.toLowerCase(); // MatTableDataSource defaults to lowercase matches
    this.dataSource.filter = filterValue;
  }



  refresh() {
    this.cd.detectChanges();

  }


  select(row) {

    if (this.defaults['Type']=='amir')
    this.dialogRef.close({ ID: row.idno, Code: row.sicilno, Name: row.adi });
    else
    this.dialogRef.close({ ID: row.idno, Code: row.kodu, Name: row.adi });

  }


  turkishCulture() {
    this.adapter.setLocale("tr");
  }


  ngOnInit() {

    this.turkishCulture();
    if (this.defaults["Type"] === undefined)
      this.getEmployees();
    else {
      const data = this.defaults["Data"];
      if (this.defaults.Type === "amir")
        this.getChiefs(data["Code"]);
      else {

        
        let type=this.defaults["Type"].split("-")[0];
        this.getPerUpdateTypes(type);
      }
    }
    this.form = this.fb.group({});




  }

  getPerUpdateTypes(type) {

    this.poolUserService.getPerUpdateTypes(type)
      .subscribe((res: any[]) => {

        this.dataSource = new MatTableDataSource();
        this.dataSource.data = res;
        this.refresh();

      },
        err => {
          console.log(err);

        }
      );

  }

  getChiefs(amir) {

    this.poolUserService.getChiefs(amir)
      .subscribe((res: any[]) => {

        this.dataSource = new MatTableDataSource();
        this.dataSource.data = res;
        this.refresh();

      },
        err => {
          console.log(err);

        }
      );

  }


  getEmployees() {

    this.poolUserService.getDocumentEmployee(null)
      .subscribe((res: any[]) => {

        console.log(res);
        this.dataSource = new MatTableDataSource();
        this.dataSource.data = res;
        this.refresh();

      },
        err => {
          console.log(err);

        }
      );

  }

  waitProgress(message, timer) {
    this.snackbar.dismiss();
    let config = new MatSnackBarConfig();
    if (timer !== undefined) {
      config.duration = timer;
    }
    config.panelClass = ['message-position'];
    this.snackbar.open(message, "", config);

  }

  save() {
    if (this.mode === 'create') {
      this.createDefinition();
    } else if (this.mode === 'update') {
      this.updateDefinition();
    }
  }

  createDefinition() {
    const definition = this.form.value;

    if (this.defaults.modul === 'code' && (definition.code === '' || definition.name === '')) {
      this.waitProgress("Kod ve açıklama alanı zorunludur...", 1000);
      return;
    }


    if (!definition.imageSrc) {
      definition.imageSrc = 'assets/img/avatars/1.jpg';
    }

    this.dialogRef.close(definition);
  }

  updateDefinition() {
    const definition = this.form.value;
    if (this.defaults.sub && this.defaults.modul === 'code' && (definition.subcode === '' || definition.subname === '')) {
      this.waitProgress("Alt Kod ve açıklama alanı zorunludur...", 1000);
      return;
    }
    definition.id = this.defaults.def.id;
    console.log(definition);
    this.dialogRef.close(definition);
  }

  isCreateMode() {
    return this.mode === 'create';
  }

  isUpdateMode() {
    return this.mode === 'update';
  }
}
