import { Injectable } from '@angular/core';
import { ActivatedRouteSnapshot, CanActivate, Router, RouterStateSnapshot } from '@angular/router';
import { Observable } from 'rxjs';
import { map, take } from 'rxjs/operators';

import { AuthService } from '../../services/auth.service';


export interface User {
  userName: string;
  password: string;
}

@Injectable()
export class AuthGuard implements CanActivate {
  constructor(private authService: AuthService, private router: Router) { }

  canActivate(next: ActivatedRouteSnapshot, state: RouterStateSnapshot): Observable<boolean> {

    if (sessionStorage.getItem('userName')) {
      this.authService.loggedIn.next(true);
      return this.authService.isLoggedIn.pipe(
        take(1), map((isLoggedIn: boolean) => true));
    }

    return this.authService.isLoggedIn.pipe(
      take(1),
      map((isLoggedIn: boolean) => {

        if (!isLoggedIn) {
          this.router.navigate(['/login']);
          return false;

        }
        // localStorage.setItem('userName', JSON.stringify(this.authService.userName));
        return true;
      })
    );
  }
}
