
import { NgModule, AfterViewInit, Inject, Component, Input, OnDestroy, OnInit, ViewChild, Optional, ChangeDetectorRef, PipeTransform, Pipe } from '@angular/core';
import { FormBuilder, FormGroup } from '@angular/forms';
import { MAT_DIALOG_DATA, MatDialogRef } from '@angular/material/dialog';
import { Router, ActivatedRoute, Params } from '@angular/router';

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
// import { Validators, FormControl } from '@angular/forms';
// import { DomSanitizer, SafeHtml } from "@angular/platform-browser";
// import { SafePipe } from './../components/outofoffice/sanitize-html.pipe';
import { SafePipe } from '../../components/outofoffice/sanitize-html.pipe';
@Component({
  selector: 'view',
  templateUrl: './view.component.html',
  styleUrls: ['./view.component.scss'],

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


export class ViewComponent implements OnInit {

  static id = 100;
  url: string;
  @Input() columns = ['idno', 'sicilno', 'adi', 'departadi'];
  form: FormGroup;
  mode: 'create' | 'update' = 'create';
  dataSource: MatTableDataSource<any> | null;

  visible = false;
  label = '';

  scale: number = 1;
  // sub=false;

  constructor(@Inject(MAT_DIALOG_DATA) public defaults: any,
    private dialogRef: MatDialogRef<ViewComponent>,
    // private _sanitizer: DomSanitizer,
    private fb: FormBuilder,
    private cd: ChangeDetectorRef,
    private Router: Router,
    private authService: AuthService,
    private poolUserService: PooluserService,
    private adapter: DateAdapter<any>,
    private snackbar: MatSnackBar) {
  }

  ngOnInit() {

    
    this.url = window.location.href.split('#')[0] + "assets/files/" + this.defaults.message;

    console.log(this.url);
  }

  // transform(v: string): SafeHtml {
  //   return this._sanitizer.bypassSecurityTrustHtml(v);
  // }


}


