import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { PooluserService } from 'src/app/services/pooluser.service';
import { AuthService } from '../../services/auth.service';
// import { MatSnackBar, throwMatDialogContentAlreadyAttachedError } from '@angular/material';
import {MatSnackBar, MatSnackBarConfig} from '@angular/material/snack-bar';
import { Router } from '@angular/router';
import { PasswordStrengthValidator } from "./password-strength.validators"


@Component({
  selector: 'app-repassword',
  templateUrl: './repassword.component.html',
  styleUrls: ['./repassword.component.css']
})

export class RepasswordComponent implements OnInit {
  form: FormGroup;
  private formSubmitAttempt: boolean;
  public invalidPassword: boolean;
  public buttonDisabled: boolean=false;
  
  constructor(
    private router: Router,
    private fb: FormBuilder,
    private poolUserService: PooluserService,
    private snackBar: MatSnackBar,
    private authService: AuthService

  ) { }

  ngOnInit() {
    this.form = this.fb.group({
      password: ['',   [Validators.required,Validators.minLength(8), PasswordStrengthValidator]],
      repassword: ['', [Validators.required,Validators.minLength(8),PasswordStrengthValidator]],
    });

  }
  openSnackBar(message: string, seconds: number) {
    this.snackBar.open(message, "", {
      duration: seconds * 1000,
      verticalPosition: "top"
    });
  }

  isFieldInvalid(field: string) {
  
    return false;
    return (
      (!this.form.get(field).valid && this.form.get(field).touched) ||
      (this.form.get(field).untouched && this.formSubmitAttempt)
    );
  } 
  onSubmit() {

    // debugger;

    // console.log(this.form.value.password);
    if (this.form.valid) {
      if (this.form.value.password !== this.form.value.repassword) {
        this.openSnackBar('Şifreyi kontrol ediniz.', 2);
        return;
      }

      
      let obj:any;
      if (JSON.parse(localStorage.getItem('userName'))!==null)
      {
      obj = {user: JSON.parse(localStorage.getItem('userName')), newPassword:this.form.value.repassword};            
      localStorage.removeItem('userName');
      localStorage.removeItem('password');
      localStorage.removeItem('remember');
      } 
      else
      {
      obj = {user: JSON.parse(sessionStorage.getItem('userName')), newPassword:this.form.value.repassword};            
      sessionStorage.removeItem('userName');
      sessionStorage.removeItem('password');
      }

      
      this.poolUserService.poolRepassword(obj)
        .subscribe((res) => {
          if (res === 200) { 
          // this.form.reset();
          this.openSnackBar('Şifre başarıyla değiştirildi.', 2); 
          this.buttonDisabled=true;
          // this.form.patchValue({password:'',repassword:''});
          // this.router.navigate(['/login']);
          this.onLogout();
        } 
          else { this.openSnackBar('Hata oluştu.', 2); this.buttonDisabled=false; }
        }
          , err => {
            console.log(err);
            this.openSnackBar(err.message, 2);
            this.buttonDisabled=false;
          });

    }
  }

  onLogout() {
    debugger;
    sessionStorage.removeItem('userName');
    this.authService.logout();
  }



}




