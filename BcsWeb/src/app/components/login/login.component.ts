import { ConfirmationDialog } from '../confirmation/confirmation-dialog.component';
import { Component, OnInit, ViewEncapsulation } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { MatDialog, MatDialogRef, MAT_DIALOG_DATA } from '@angular/material/dialog';
import { AuthService } from '../../services/auth.service';
import {MatSnackBar, MatSnackBarConfig} from '@angular/material/snack-bar';
import { PooluserService } from 'src/app/services/pooluser.service';
import { Router, ActivatedRoute } from '@angular/router';
import { DomSanitizer } from '@angular/platform-browser';
import { WaitComponent } from '../wait/wait.component';
import { Observable, pipe } from 'rxjs';
// import { Response } from '@angular/http';
// import { debug } from 'console';
// import { ConsoleReporter } from 'jasmine';

import * as _moment from 'moment';
// import { ConsoleReporter } from 'jasmine';
// tslint:disable-next-line:no-duplicate-imports
// import {default as _rollupMoment} from 'moment';
import {
  // MAT_MOMENT_DATE_FORMATS,
  MomentDateAdapter,
  MAT_MOMENT_DATE_ADAPTER_OPTIONS
} from "@angular/material-moment-adapter";
import {
  DateAdapter,
  MAT_DATE_FORMATS,
  MAT_DATE_LOCALE
} from "@angular/material/core";

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

const moment = _moment;
import { DatePipe } from '@angular/common';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.scss'],
  providers: [
    DatePipe,
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
    { provide: DateAdapter, useClass: MomentDateAdapter, deps: [MAT_DATE_LOCALE] },
    { provide: MAT_DATE_FORMATS, useValue: MY_FORMATS },
    { provide: MAT_MOMENT_DATE_ADAPTER_OPTIONS, useValue: { useUtc: true } }
  ]

})
export class LoginComponent implements OnInit {
  form: FormGroup;
  private formSubmitAttempt: boolean;
  license: boolean = false;
  vekil: boolean = false;
  vekilOnay: boolean = false;
  // language = '';
  users: any = [];
  delegations: any = [];
  groupDelegations: any = [];
  usrlanguages: any = [];
  usrlanguages1: any = [];
  userPassword: '';
  imageData: any;
  loginCount = 0;
  userCopy = '';
  prmDomain = '';
  newYear = true;
  response: any;
  user:string;
  constructor(
    public dialog: MatDialog,
    private sanitizer: DomSanitizer,
    private router: Router,
    private route: ActivatedRoute,
    private poolUserService: PooluserService,
    private fb: FormBuilder,
    private snackBar: MatSnackBar,
    private authService: AuthService
  ) { }



  ngOnInit() {

    let today = moment.utc(new Date());//moment(new Date());
    if ((today.utc().date() === 31 || today.utc().date() === 30 || today.utc().date() === 29 ) && (today.utc().month() + 1 == 12)) this.newYear = true;
    else if (today.utc().date() === 1 && (today.utc().month() + 1 == 1)) this.newYear = true;
    else this.newYear = false;


    let config = new MatSnackBarConfig();
    this.form = this.fb.group({
      userName: ['', Validators.required],
      password: ['', Validators.required],
      llanguage: [''],
      remember: [false],
      userType: [''],
      firmName: [''],
      userInfo: [''],
      chkVekilUser: [false]
    });

    let observable = new Observable(this.myObservable);
    this.showWaitScreen(observable);
    // this.getLisansInfo();
    this.getParameters();
 

    if (this.router.url.split('?')[1] !==undefined) {
      this.route.queryParams
        .subscribe((params) => {

          this.poolUserService.getSecureLogin(atob(params.username))
          .subscribe((res:any[]) => {
          // this.user = atob(params.username);
          sessionStorage.removeItem('userInfo');
          sessionStorage.removeItem('userName');
          sessionStorage.removeItem('firmName');
          sessionStorage.removeItem('userType');
          sessionStorage.setItem('userInfo', JSON.stringify(res["userInfo"]));
          sessionStorage.setItem('userName', JSON.stringify(res["userName"]));
          sessionStorage.setItem('firmName', JSON.stringify(res["firmName"]));
          sessionStorage.setItem('userType', JSON.stringify(res["userType"]));
          const obj = { userName: res["userName"] , firmName: res["firmName"], userType: res["userType"], userInfo: res["userInfo"], password: res["password"], remember: false };
          this.authService.login(obj);
 
               
          }, err => {
            console.log(err);
          });


          
        });

    }

  }

  myObservable(observer) {
    setTimeout(() => {
      observer.next("");
      observer.complete();
    }, 1000);
  }


  showWaitScreen(observable: Observable<Object>) {
    let dialogRef: MatDialogRef<WaitComponent> = this.dialog.open(WaitComponent, {
      panelClass: 'transparent',
      disableClose: true
    });
    let subscription = observable.subscribe(
      (response: any) => {
        subscription.unsubscribe();
        console.log(response);
        dialogRef.close();
      },
      (error) => {
        subscription.unsubscribe();
        dialogRef.close();
      }
    );
  }


  getLisansInfo() {
    this.poolUserService.getPoolControlLisans()
      .subscribe((res) => {
        let response: any = [];
        response = res;
        this.license = <boolean>response.valid;
        // var uints = new Uint8Array(response.logo);
        // var base64 = btoa(String.fromCharCode(uints));        
        // console.log(base64); 
        // // this.imageData='data:image/jpeg;base64,'+objectURL;
        // let objectURL = 'data:image/png;base64,' + response.logo;
        //  this.imageData = this.sanitizer.bypassSecurityTrustUrl(objectURL);


        //  this.imageData = 'data:image/png;base64,' + response.logo; 
        // console.log(this.imageData);
        if (!this.license) {
          this.router.navigate(['/admin']);
        }


      }, err => {
        console.log(err);
      });
  }

  getUserPassword() {

    console.log(this.delegations.filter(item => item.user == this.form.value.userName)[0]);
    this.form.patchValue({ password: this.delegations.filter(item => item.user == this.form.value.userName)[0].userPassword });
    if (this.form.value.chkVekilUser && this.userCopy === '')
      this.login();
  }

  getDelegations(user, vekil) {

    // if (this.vekil)
    // {
    //   if (this.form.value.)

    // }

    let config = new MatSnackBarConfig();
    config.panelClass = ['message-position'];
    this.snackBar.open("İşlem yapılıyor. Lütfen Bekleyiniz...", "", config);

    this.delegations = [];
    this.poolUserService.getDelegations(user, vekil).subscribe(
      res => {
        Object.keys(res).forEach(key => {
          this.delegations[key] = res[key];
        });

        this.groupDelegations = this.delegations.map(item => item.user).filter((value, index, self) => self.indexOf(value) === index);
        if (this.delegations.length > 0) {


          this.vekil = true;
          if (this.form.value.chkVekilUser && this.userCopy === '') {
            this.login();
            this.snackBar.dismiss();
          }
          else {

            if (this.userCopy === '')
              this.form.value.userName = this.userCopy;

            this.loginCount++;
            if (this.loginCount > 1)
              this.login();
            this.snackBar.dismiss();

          }

        }
        else {
          this.login();
          this.snackBar.dismiss();
        }


      }
    );

    // console.log(this.delegations);



  }

  HesapOnayla(e) {
    if (e.checked && this.form.value.userName !== '')
      this.form.patchValue({ userName: this.form.value.userName });


    this.form.patchValue({ chkVekilUser: e.checked });
    console.log(this.form.value);
  }


  getLanguages() {
    this.poolUserService.getLanguage(null, null, null).subscribe(res => {
      this.usrlanguages = res;
    });
  }

  getUserLanguage() {

    this.poolUserService.getLanguage(this.form.value.userName, null, null).subscribe(res => {
      this.usrlanguages1 = res;
      // this.form.patchValue({ llanguage: this.usrlanguages1[0].id });
      this.form.patchValue({ llanguage: this.usrlanguages1[0].id });
    });

  }

  postUserLanguage() {

    this.poolUserService.postLanguage(this.form.value.userName, null, this.form.value.llanguage).subscribe(res => {
      // this.usrlanguages1 = res;
      // this.form.patchValue({ llanguage: this.usrlanguages1[0].id });
    });

  }

  getParameters() {
    this.poolUserService.getParameters()
      .subscribe((res) => {
        Object.keys(res).forEach((key) => {
          this.prmDomain = res[key].domain;
        });

        this.getLanguages();
        if (localStorage.getItem('remember')) {
          if (this.prmDomain !== null)
            this.form.patchValue({
              userName: JSON.parse(localStorage.getItem('domainUserName')),
              password: JSON.parse(localStorage.getItem('domainPassword')),
              llanguage: '',
              remember: JSON.parse(localStorage.getItem('remember')),
              chkVekilUser: false
            });
          else
            this.form.patchValue({
              userName: JSON.parse(localStorage.getItem('userName')),
              password: JSON.parse(localStorage.getItem('password')),
              llanguage: '',
              remember: JSON.parse(localStorage.getItem('remember')),
              chkVekilUser: false
            });

          this.poolUserService.getLanguage(JSON.parse(localStorage.getItem('userName')), null, null).subscribe(res => {
            this.usrlanguages1 = res;
            this.form.patchValue({ llanguage: this.usrlanguages1[0].id });
          });

        } else

          // {
          //   this.form = this.fb.group({
          //     userName: ['', Validators.required],
          //     password: ['', Validators.required],
          //     llanguage: [''],
          //     remember: [false],
          //     userType: [''],
          //     firmName: [''],
          //     userInfo: [''],
          //     chkVekilUser: [false]
          //     // mnOpened: [false]
          //   });

          this.form.patchValue({ llanguage: 1 });

        // }

        // this.snackBar.dismiss();

      }, err => {
        // this.snackBar.dismiss();
        console.log(err);
      });

  };



  openSnackBar(message: string, seconds: number) {
    this.snackBar.open(message, "", {

      duration: seconds * 1000,
      verticalPosition: "top"
    });
  }

  isFieldInvalid(field) {
    return (
      (!this.form.get(field).valid && this.form.get(field).touched) ||
      (this.form.get(field).untouched && this.formSubmitAttempt)
    );
  }

  forgotPassword() {

    if (this.form.value.userName === '') {
      this.openSnackBar("Kullanıcı adını giriniz.", 2);
      return;
    }

    // debugger;
    // if (this.form.valid) {

    const obj = { userName: this.form.value.userName }
    this.poolUserService.poolSendPassword(obj).subscribe((res) => {
      console.log(res['responseDscr']);
      this.openSnackBar(res['responseDscr'], 3);
    }
      , err => {
        console.log(err);
        this.openSnackBar(err.message, 2);

      });

    // }
  }

  loginCall(obj) {
    return this.poolUserService.poolLogin(obj).toPromise().then(data => {
      this.response = <any>data;
    });


  }

  async login() {

    const obj = this.form.value;
    obj.domain = this.prmDomain;
    if (obj.domain !== null) {
      obj.domainUserName = this.form.value.userName;
      obj.domainPassword = this.form.value.password;
    }


    let aaa = await this.loginCall(obj);


    obj.userName = this.response.userName;
    if (obj.domain == null && this.response.returnCode === '200')
      obj.password = this.response.password;
    obj.domain = this.prmDomain;
    this.getUserLanguage();
    this.postUserLanguage();

    sessionStorage.setItem('userInfo', JSON.stringify(this.response.userInfo));
    this.form.value.userInfo = this.response.userInfo;
    sessionStorage.setItem('userType', JSON.stringify(this.response.userType));
    this.form.value.userType = this.response.userType;
    sessionStorage.setItem('firmName', JSON.stringify(this.response.firmName));
    this.form.value.firmName = this.response.firmName;
    // sessionStorage.setItem('mnOpened', 'true');
    // this.form.value.mnOpened = res['mnOpened'];

    if (this.response.returnCode === '555') { this.openSnackBar(this.response.returnDscr, 3); return; }

    if (this.response.password === '') {
      this.authService.login(obj);
      localStorage.setItem('userName', JSON.stringify(obj.userName));
      // this.router.navigate(['/outofoffice']);
      this.openSnackBar("Şifreniz resetlenmiştir. Lütfen şifrenizi tekrar tanımlayın.", 2);
      this.router.navigate(['/repassword']);
      return;
    }

    if (this.response.returnCode === '506') {
      // localStorage.removeItem('userName');
      localStorage.setItem('userName', JSON.stringify(obj.userName));
      this.openSnackBar(this.response.returnDscr, 3); this.router.navigate(['/repassword']);
    }
    if (this.response.returnCode === '504') { this.openSnackBar(this.response.returnDscr, 3); }
    else if (this.response.returnCode !== '200') { this.openSnackBar(this.response.returnDscr, 3); }
    else { this.authService.login(obj); }

  }


  onSubmit() {

    if (this.form.valid) {
      this.getDelegations(null, this.form.value.userName);
      if (this.userCopy == '') this.userCopy = this.form.value.userName;
    }
    // else
    //    this.login();

  }
}
