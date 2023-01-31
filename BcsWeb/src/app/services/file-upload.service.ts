import { Injectable, Inject } from '@angular/core';
import { HttpClient, HttpRequest, HttpEvent } from '@angular/common/http';
import { Observable } from 'rxjs';
import * as _moment from "moment";


const moment = _moment;

@Injectable({
  providedIn: 'root'
})
export class FileUploadService {

  constructor(
    @Inject('apiUrl') private apiUrl,
    private http: HttpClient) { }


  upload(file: File, obj) {
    const formData = new FormData();
    formData.append('file', file);
    formData.append('Username', obj.Username);
    formData.append('Type', obj.Type);
    formData.append('Description', obj.Description);
    formData.append('Date', moment(obj.Date).format('YYYY-MM-DD'));

    const req = new HttpRequest('POST', `${this.apiUrl}/api/pool/auth/doc/file`, formData, {
      reportProgress: true,
      responseType: 'json'
    });

    return this.http.request(req);
    // return this.http.post(this.apiUrl + '/api/pool/auth/doc/file', formData);
  }

  // upload(file: File, obj): Observable<HttpEvent<any>> {
  //   const formData: FormData = new FormData();
  //   formData.append('file', file);


  //   const req = new HttpRequest('POST', `${this.apiUrl}/api/pool/auth/doc/file`, formData, {
  //     reportProgress: true,
  //     responseType: 'json'
  //   });

  //   return this.http.request(req);
  // }

  getFiles(): Observable<any> {
    return this.http.get(`${this.apiUrl}/api/pool/auth/doc/`);
  }
}