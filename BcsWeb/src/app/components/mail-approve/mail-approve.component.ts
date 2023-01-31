import { Component, OnInit } from '@angular/core';
import { PooluserService } from "src/app/services/pooluser.service";
import {Router, ActivatedRoute, Params} from '@angular/router';
import { AuthService } from '../../services/auth.service';

@Component({
  selector: 'app-mail-approve',
  templateUrl: './mail-approve.component.html',
  styleUrls: ['./mail-approve.component.css']
})
export class MailApproveComponent implements OnInit {

  response: string;
  constructor(
    private router: Router,
    private poolUserService: PooluserService,
    private activatedRoute: ActivatedRoute,
    private authService: AuthService,

  ) { 

  
  }

  ngOnInit() {
 
    this.activatedRoute.queryParams.subscribe(params => {      
      
      let dat = params['data'];
      let data: any = {'data':dat};
      console.log(data);  
      let response: any;
      this.poolUserService.postPoolDailyMailApprove(data).subscribe(
      res => {
        console.log(res);
        response=res;
        this.response = response.ReturnMessage;

      },
      err => {
        console.log(err);
      }
    );
  });
  }

  
  login() {

    this.router.navigate(['/login']);
    }


    onLogout() {
      sessionStorage.removeItem('userName');
      this.authService.logout();
    }

}
