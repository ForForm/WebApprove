import { Injectable, Inject } from '@angular/core';
import { HttpClient } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})

export class PooluserService {

  deneme: any;
  constructor(
    @Inject('apiUrl') private apiUrl,
    private http: HttpClient
  ) { }


  getLanguage(user, userType, lng) {
    console.log(this.apiUrl + 'api/pool/parameter/language');
    return this.http.get(this.apiUrl + 'api/pool/parameter/language/' + user + '/' + userType + '/' + lng);
  }



  getPoolControlLisans() {
    console.log(this.apiUrl + 'api/pool/lisans/control');
    return this.http.get(this.apiUrl + 'api/pool/lisans/control');
  }

  poolSendPassword(obj) {
    console.log(this.apiUrl + 'api/pool/sendpassword');
    // console.log(obj);
    return this.http.post(this.apiUrl + 'api/pool/sendpassword', obj);

  }

  poolLogin(obj) {
    console.log(this.apiUrl + 'api/pool/login');
    return this.http.post(this.apiUrl + 'api/pool/login', obj);
  }

  getSecureLogin(user) {
    console.log(this.apiUrl + 'api/pool/login/secure/' + user);
    return this.http.get(this.apiUrl + 'api/pool/login/secure/' + user);
  }

  poolRepassword(obj) {
    console.log(this.apiUrl + 'api/pool/repassword');
    //return this.http.post(this.apiUrl + 'api/pool/login', obj);
    return this.http.post(this.apiUrl + 'api/pool/repassword  ', obj);
  }


  getPoolUsers(userName: string, type: string) {
    return this.http.get(this.apiUrl + 'api/pool/user/' + userName + '/' + type);
  }


  getPoolUserLimit(userName: string, type: string) {
    return this.http.get(this.apiUrl + 'api/pool/user/limit/' + userName + '/' + type);
  }

  
  getDashReports(userName) {
    return this.http.get(this.apiUrl + 'api/pool/user/dashreports/' + userName);
  }

  executeDashReport( spname, company, userName) {
    return this.http.get(this.apiUrl + 'api/pool/user/dashreports/execute/' + spname+'/'+ company+'/'+ userName);
  }


  
  getDelegations(user, vekil) {
    if (vekil === null)
      return this.http.get(this.apiUrl + 'api/pool/delegations/' + user);
    else
      return this.http.get(this.apiUrl + 'api/pool/delegations/' + user + '/' + vekil);
  }


  postDelegation(obj) {
    return this.http.post(this.apiUrl + 'api/pool/delegations', obj);
  }

  deleteDelegation(id) {

    console.log(this.apiUrl + 'api/pool/delegations/' + id);
    return this.http.delete(this.apiUrl + 'api/pool/delegations/' + id);
  }

  getPoolAuth(user: string, type: string) {
    console.log(this.apiUrl + 'api/pool/auth');
    return this.http.get(this.apiUrl + 'api/pool/auth/' + user + '/' + type);
  }

  
  getDocumentAuth(user) {
    console.log(this.apiUrl + 'api/pool/auth/doc/' + user);
    return this.http.get(this.apiUrl + 'api/pool/auth/doc/' + user);
  }

  
  getDocumentTypes(user) {
    console.log(this.apiUrl + 'api/pool/auth/doc/types/' + user);
    return this.http.get(this.apiUrl + 'api/pool/auth/doc/types/' + user);
  }

  getChiefs(amir) {
    console.log(this.apiUrl + 'api/pool/chief/' + amir);
    return this.http.get(this.apiUrl + 'api/pool/chief/' + amir);
  }

  getPerUpdateTypes(type) {
    console.log(this.apiUrl + 'api/pool/update/' + type);
    return this.http.get(this.apiUrl + 'api/pool/update/' + type);
  }

  
  getDocumentEmployee(user) {
    console.log(this.apiUrl + 'api/pool/auth/doc/employee/' + user);
    return this.http.get(this.apiUrl + 'api/pool/auth/doc/employee/' + user);
  }

  getDocumentSelect(user) {
    console.log(this.apiUrl + 'api/pool/auth/doc/select/' + user);
    return this.http.get(this.apiUrl + 'api/pool/auth/doc/select/' + user);
  }


  deleteDocument(idno) {
    console.log(this.apiUrl + 'api/pool/auth/doc/delete/' + idno);
    return this.http.delete(this.apiUrl + 'api/pool/auth/doc/delete/' + idno);
  }


  getPoolApproves(user: string, prmonayTuru: string, type: string, filterType: string) {
    console.log(this.apiUrl + 'api/pool/approves/' + user + '/' + prmonayTuru + '/' + type + '/' + filterType);
    return this.http.get(this.apiUrl + 'api/pool/approves/' + user + '/' + prmonayTuru + '/' + type + '/' + filterType);
  }

  postPoolDailyApprove(obj) {
    console.log(this.apiUrl + 'api/pool/approves/daily');
    console.log(obj);
    return this.http.post(this.apiUrl + 'api/pool/approves/daily', obj);
  }

  postPoolDailyMailApprove(obj) {
    console.log(this.apiUrl + 'api/pool/approves/mail');
    return this.http.post(this.apiUrl + 'api/pool/approves/mail', obj);
  }

  postPoolTimelyApprove(obj) {
    console.log(this.apiUrl + 'api/pool/approves/timely');
    return this.http.post(this.apiUrl + 'api/pool/approves/timely', obj);
  }

  postPoolFMApprove(obj) {

    console.log(this.apiUrl + 'api/pool/approves/fm');
    return this.http.post(this.apiUrl + 'api/pool/approves/fm', obj);
  }

  postPoolIOApprove(obj) {

    console.log(this.apiUrl + 'api/pool/approves/io');
    return this.http.post(this.apiUrl + 'api/pool/approves/io', obj);
  }

  postPoolPostaApprove(obj) {

    console.log(this.apiUrl + 'api/pool/approves/posta');
    return this.http.post(this.apiUrl + 'api/pool/approves/posta', obj);
  }

  postPoolRotaApprove(obj) {

    console.log(this.apiUrl + 'api/pool/approves/rota');
    return this.http.post(this.apiUrl + 'api/pool/approves/rota', obj);
  }

  postPoolPersonnelUpdateApprove(obj) {

    console.log(this.apiUrl + 'api/pool/update');
    return this.http.post(this.apiUrl + 'api/pool/update', obj);
  }


  postControlDemandInfo(obj) {

    console.log(this.apiUrl + 'api/pool/approves/control');
    return this.http.post(this.apiUrl + 'api/pool/approves/control', obj);
  }

  amrApprove(flowIndex, obj) {
    console.log(obj);
    console.log(this.apiUrl + 'api/pool/approves/amrsubmit/' + flowIndex);
    return this.http.post(this.apiUrl + 'api/pool/approves/amrsubmit/' + flowIndex, obj);
  }



  getPoolShiftApprove(obj) {

    console.log(this.apiUrl + 'api/pool/approves/shift/' + obj.date1 + '/' + obj.date2 + '/' + obj.username);
    return this.http.get(this.apiUrl + 'api/pool/approves/shift/' + obj.date1 + '/' + obj.date2 + '/' + obj.username);
  }

  postPoolShiftApprove(obj) {

    // Object.keys(obj).forEach((key) => {
    //   obj[key].vrd1=obj[key].vrd1!=undefined?obj[key].vrd1.split("-")[0]:null;
    //   obj[key].vrd2=obj[key].vrd2!=undefined?obj[key].vrd2.split("-")[0]:null;
    //   obj[key].vrd3=obj[key].vrd3!=undefined?obj[key].vrd3.split("-")[0]:null;
    //   obj[key].vrd4=obj[key].vrd4!=undefined?obj[key].vrd4.split("-")[0]:null;
    // });

    console.log(this.apiUrl + 'api/pool/approves/shift');
    return this.http.post(this.apiUrl + 'api/pool/approves/shift', obj);
  }


  postPoolUser(obj) {
    console.log(this.apiUrl + 'api/pool/user');
    return this.http.post(this.apiUrl + 'api/pool/user', obj);
  }

  deletePoolUser(Id) {
    console.log(this.apiUrl + 'api/pool/user');
    return this.http.delete(this.apiUrl + 'api/pool/user/' + Id);
  }

  getPoolMacAdress() {
    console.log(this.apiUrl + 'api/pool/machine');
    return this.http.get(this.apiUrl + 'api/pool/machine');
  }

  getPoolCompanyLisans() {

    console.log(this.apiUrl + 'api/pool/lisans');
    return this.http.get(this.apiUrl + 'api/pool/lisans');
  }



  postPoolMacAdress(obj) {

    console.log(this.apiUrl + 'api/pool/machine');
    return this.http.post(this.apiUrl + 'api/pool/machine', obj);
  }

  postParameters(obj) {
    console.log(this.apiUrl + 'api/pool/parameter');
    return this.http.post(this.apiUrl + 'api/pool/parameter', obj);
  }

  getParameters() {
    console.log(this.apiUrl + 'api/pool/parameter');
    return this.http.get(this.apiUrl + 'api/pool/parameter');
  }

  getLanguageInfo(lng) {
    console.log(this.apiUrl + 'api/pool/parameter/language/label');
    return this.http.get(this.apiUrl + 'api/pool/parameter/language/label/' + lng);
  }



  postLanguage(user, userType, lng) {
    console.log(this.apiUrl + 'api/pool/parameter/language');
    return this.http.post(this.apiUrl + 'api/pool/parameter/language/' + user + '/' + userType + '/' + lng,null);
  }

  getShifts(srkodu) {
    console.log(this.apiUrl + 'api/pool/shifts/' + srkodu);
    return this.http.get(this.apiUrl + 'api/pool/shifts/' + srkodu);
  }

  getReport(obj) {
    console.log(this.apiUrl + 'api/pool/reports');
    return this.http.post(this.apiUrl + 'api/pool/reports', obj);
  }


  openReportUrl(url, obj) {
    return this.http.post(url, obj);
  }

  // loginReportUrl( url ) {
  //   console.log(url);
  //   return this.http.get(url);
  // }

  getTemplate(obj) {
    // console.log(obj);
    return this.http.post(this.apiUrl + 'api/pool/forms', obj);
  }

  getDateCalculation(obj) {
    // console.log(obj);
    return this.http.post(this.apiUrl + 'api/pool/parameter/DateCalculation', obj);
    // let data= -this.http.post(this.apiUrl + 'api/pool/parameter/DateCalculation',obj);
    // let p= Promise.resolve(data);
    // return p;
    // .(res => res.json()).toPromise();
  };

  // getDateCalculation2(obj) {
  //   console.log(this.apiUrl + 'api/pool/parameter/DateCalculation');
  //   return this.http.post(this.apiUrl + 'api/pool/parameter/DateCalculation',obj).toPromise().then(res=>res[0].gun);

  // };

  getReasons(user, type) {
    console.log(this.apiUrl + 'api/pool/reasons/' + user + '/' + type);
    return this.http.get(this.apiUrl + 'api/pool/reasons/' + user + '/' + type);
  }


  getPosta() {
    console.log(this.apiUrl + 'api/pool/postas');
    return this.http.get(this.apiUrl + 'api/pool/postas');
  }


  getFMServices(user) {
    if (user === null)
      return this.http.get(this.apiUrl + 'api/pool/fmservices');
    else
      return this.http.get(this.apiUrl + 'api/pool/fmservices/' + user);
  }
}
