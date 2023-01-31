import { BreakpointObserver, Breakpoints } from '@angular/cdk/layout';
import { AuthService } from '../services/auth.service';
import { Observable } from 'rxjs';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { map } from 'rxjs/operators';
import { __values } from 'tslib'; 
import {MediaMatcher} from '@angular/cdk/layout';
import {ChangeDetectorRef, ViewChild, Component,ElementRef, OnDestroy} from '@angular/core';
import { PooluserService } from "src/app/services/pooluser.service";
import { Router } from '@angular/router';
// import { MatSidenav } from '@angular/material';
import {MatSidenav} from '@angular/material/sidenav';

export interface MatItem {
  routerLinkActive: string;
  routerLink?: string;
  children?: MatItem[];
}


export interface Language {
  label: string;
  labelName: string;
}

export interface LanguageMap {
  [key: string]: Language;
}

 
@Component({
  selector: 'app-main-nav',
  templateUrl: './main-nav.component.html',
  styleUrls: ['./main-nav.component.css']
})
export class MainNavComponent {
  events = [];
  firstFormGroup: FormGroup;
  isLoggedIn$: Observable<boolean>;
  getUserName$: Observable<any>;
  getFirmName$: Observable<any>;
  getUserInfo$: Observable<any>;
  mobileQuery: MediaQueryList;
  prmlink1Name = '';
  prmfirmName = '';
  prmlink1Url =  '';
  prmlink2Name =  '';
  prmlink2Url =  '';
  prmlink3Name =  '';
  prmlink3Url =  '';
  prmlink4Name =  '';
  prmlink4Url =  '';
  prmlink5Name =  '';
  prmlink5Url =  '';
  prmlanguage='';
  language: any  = [];
  usrlanguages: any = [];
  languageMap: LanguageMap = {};
  mnOpened=false;
  docUserAuth=false;
  // opened=true;
  
  private _mobileQueryListener: () => void;

  @ViewChild("drawer", { static: false }) drawer: MatSidenav;

   constructor(
    private router: Router,
       private _formBuilder: FormBuilder,
    private authService: AuthService,
    private poolUserService: PooluserService,
    changeDetectorRef: ChangeDetectorRef, media: MediaMatcher
    ) {
      this.mobileQuery = media.matchMedia('(max-width: 600px)');
      this._mobileQueryListener = () => changeDetectorRef.detectChanges();
      this.mobileQuery.addListener(this._mobileQueryListener);
     }

  message: string;

  receiveMessage($event) {
    this.message =  $event;
  }
   ngOnInit() {
    this.getParameters();
    this.mnOpened=JSON.parse(localStorage.getItem('mnOpened'));
    // this.getLanguage();
    // this.getUserLanguage();
    // this.drawer.toggle();
  }


  refresh(): void {
    window.location.reload();
}


  getLanguage(lng) {
    let data;
    this.poolUserService.getLanguageInfo(lng)
      .subscribe((res) => {
        Object.keys(res).forEach((key) => {
          let data = {label:res[key].label,labelName:res[key].labelName }
          this.language.push(data);
        });

        this.language.forEach((s: Language) => {
          this.languageMap[s.label] = s;
        });

        // this.opened=true;
      
      }, err => {
        console.log(err);
      });

  };

  goToLink(url: string){
       window.open('//'+url, "_blank");
}



getUserLanguage(user) {
   
  this.poolUserService.getLanguage(user, null, null).subscribe(res => {
    this.usrlanguages = res;
    this.getLanguage(this.usrlanguages[0].id);
  });

}

getDocumentAuth(user) {
   
  this.poolUserService.getDocumentAuth(user).subscribe(res => {    
    this.docUserAuth=res["yetki"];    
  });

}



  getParameters() {
    
    this.poolUserService.getParameters()
      .subscribe((res) => {
        console.log(res);
        Object.keys(res).forEach((key) => {
          this.prmlanguage=res[key].language;
          this.prmlink1Name = res[key].link1Name;
          this.prmlink1Url = res[key].link1Url;
          this.prmlink2Name = res[key].link2Name;
          this.prmlink2Url = res[key].link2Url;
          this.prmlink3Name = res[key].link3Name;
          this.prmlink3Url = res[key].link3Url;
          this.prmlink4Name = res[key].link4Name;
          this.prmlink4Url = res[key].link4Url;
          this.prmlink5Name = res[key].link5Name;
          this.prmlink5Url = res[key].linkUrl;
          this.prmfirmName = res[key].firmName;
          
        });

        
        // this.getLanguage(this.prmlanguage);
        this.isLoggedIn$ = this.authService.isLoggedIn;
        this.getUserName$ = this.authService.getUserName;
        this.getFirmName$ = this.authService.getFirmName;
        this.getUserInfo$ = this.authService.getUserInfo;
    
        this.getUserLanguage(JSON.parse(sessionStorage.getItem('userName')));
        this.getDocumentAuth(JSON.parse(sessionStorage.getItem('userName')));
    

      }, err => {
        console.log(err);
      });

  };
  
  ngOnDestroy(): void {
    this.mobileQuery.removeListener(this._mobileQueryListener);
  }

 
  onLogout() {
    sessionStorage.removeItem('userName');
    this.authService.logout();
    // localStorage.setItem('mnOpened', JSON.stringify('false'));
  }

  resendPassword()
  {
    this.authService.resendPassword();
 
  }


  delegation()
  {
    this.authService.delegation();
 
  }
  // isHandset$: Observable<boolean> = this.breakpointObserver.observe(Breakpoints.Handset)
  //   .pipe(
  //     map(result => result.matches)
  //   );

  // constructor(private breakpointObserver: BreakpointObserver) {}



}
