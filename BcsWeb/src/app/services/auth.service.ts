import { Injectable } from '@angular/core';
import { Router } from '@angular/router';
import { BehaviorSubject } from 'rxjs';
import { PooluserService } from 'src/app/services/pooluser.service';

export interface User {
  userName: string;
  firmName: string;
  userInfo: string;
  password: string;
  domain: string;
  domainUserName: string;
  domainPassword: string;
  remember: boolean;
  userType: string;
}

@Injectable()
export class AuthService {

  public loggedIn: BehaviorSubject<boolean> = new BehaviorSubject<boolean>(false);
  public userName: BehaviorSubject<any> = new BehaviorSubject<any>('');
  public userType: BehaviorSubject<any> = new BehaviorSubject<any>('');
  public firmName: BehaviorSubject<any> = new BehaviorSubject<any>('');
  public userInfo: BehaviorSubject<any> = new BehaviorSubject<any>('');
  usrData = [];

  get isLoggedIn() {
    // this.loggedIn.next(true);
    return this.loggedIn.asObservable();
  }

  get getUserName() {
    this.userName.next(JSON.parse(sessionStorage.getItem('userName')));
    return this.userName.asObservable();
  }

  get getFirmName() {
    this.firmName.next(JSON.parse(sessionStorage.getItem('firmName')));
    return this.firmName.asObservable();
  }

  get getUserInfo() {
    this.userInfo.next(JSON.parse(sessionStorage.getItem('userInfo')));
    return this.userInfo.asObservable();
  }

  // set setUserType(type) {
  //   sessionStorage.setItem('userType', JSON.stringify(type));
  //   this.userType.next(type);
  //   // return this.userType.asObservable();
  // }

  get getUserType() {
    this.userType.next(JSON.parse(sessionStorage.getItem('userType')));
    return this.userType.asObservable();
  }

  constructor(
    private router: Router,
    private poolUserService: PooluserService,
  ) { }




  login(user: any) {

    
    if (user.remember) {

      if (user.domain != null) {
        localStorage.setItem('domainUserName', JSON.stringify(user.domainUserName));
        localStorage.setItem('domainPassword', JSON.stringify(user.domainPassword));
      }
      localStorage.setItem('userName', JSON.stringify(user.userName));
      localStorage.setItem('password', JSON.stringify(user.password));
      localStorage.setItem('remember', JSON.stringify(true));
    } else {

      localStorage.removeItem('domainUserName');
      localStorage.removeItem('domainPassword');
      localStorage.removeItem('userName');
      localStorage.removeItem('password');
      localStorage.removeItem('remember');
    }


    if ((user.userName !== '' && user.password !== '')) {

      sessionStorage.setItem('userName', JSON.stringify(user.userName));
      sessionStorage.setItem('firmName', JSON.stringify(user.firmName));
      sessionStorage.setItem('userInfo', JSON.stringify(user.userInfo));
      this.loggedIn.next(true);
      this.userType.next(user.userType);
      this.userName.next(JSON.parse(sessionStorage.getItem('userName')));
      this.firmName.next(JSON.parse(sessionStorage.getItem('firmName')));
      this.userInfo.next(JSON.parse(sessionStorage.getItem('userInfo')));
      // console.log(user);
      this.router.navigate(['/main']);


    }
  }

  logout() {
    sessionStorage.removeItem('userName');
    sessionStorage.removeItem('firmName');
    sessionStorage.removeItem('userInfo');
    // sessionStorage.removeItem('userType');
    this.loggedIn.next(false);
    this.userName.next('');
    this.router.navigate(['/login']);
    // this.router.navigateByUrl('/login');
    // window.location.reload();
  }


  resendPassword() {
    // sessionStorage.removeItem('userName');
    // sessionStorage.removeItem('firmName');
    // sessionStorage.removeItem('userInfo');
    // // sessionStorage.removeItem('userType');
    // this.loggedIn.next(false);
    // this.userName.next('');
    this.router.navigate(['/repassword']);
    // this.router.navigateByUrl('/login');
    // window.location.reload();
  }

  delegation() {
    // sessionStorage.removeItem('userName');
    // sessionStorage.removeItem('firmName');
    // sessionStorage.removeItem('userInfo');
    // // sessionStorage.removeItem('userType');
    // this.loggedIn.next(false);
    // this.userName.next('');
    this.router.navigate(['/delegation']);
    // this.router.navigateByUrl('/login');
    // window.location.reload();
  }
}
