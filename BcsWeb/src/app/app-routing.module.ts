import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { HomeComponent } from './components/home/home.component';
import { LoginComponent } from './components/login/login.component';
import { AuthGuard } from './components/auth/auth.guard';
import { AdminComponent } from './components/admin/admin.component';
import { MainComponent } from './components/main/main.component';
import { OutofofficeComponent } from './components/outofoffice/outofoffice.component';
import { RepasswordComponent } from './components/repassword/repassword.component';
import { DelegationComponent } from './components/delegation/delegation.component';
import { NotFoundComponent } from './components/not-found/not-found.component';
import { DemandtrackComponent } from './components/demandtrack/demandtrack.component';
import { DocumentComponent } from './components/document/document.component';
import { InandoutComponent } from './components/inandout/inandout.component';
import { MailApproveComponent } from './components/mail-approve/mail-approve.component';
import { ShiftComponent } from './components/shift/shift.component';
import { MonthlyCalcComponent } from './components/monthly-calc/monthly-calc.component';


const routes: Routes = [{ path: '', component: MainComponent , canActivate: [AuthGuard] },
{ path: 'main', component: MainComponent , canActivate: [AuthGuard]},
{ path: 'home', component: HomeComponent , canActivate: [AuthGuard]},
{ path: 'login', component: LoginComponent },
{ path: 'login/securelogin', component: LoginComponent },
{ path: 'admin', component: AdminComponent ,canActivate: [AuthGuard] },
{ path: 'outofoffice', component: OutofofficeComponent  , canActivate: [AuthGuard]},
{ path: 'repassword', component: RepasswordComponent },
{ path: 'shift', component: ShiftComponent },
{ path: 'monthly-calc', component: MonthlyCalcComponent },

{ path: 'delegation', component: DelegationComponent, canActivate: [AuthGuard] },
{ path: 'demandtrack', component: DemandtrackComponent,canActivate: [AuthGuard] },
{ path: 'document', component: DocumentComponent,canActivate: [AuthGuard] },
{ path: 'inandout', component: InandoutComponent,canActivate: [AuthGuard] },
{ path: 'mail-approve', component: MailApproveComponent },
{ path: '**', component: NotFoundComponent }];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule  {

  ngOnInit() {
  
  
  
  }
 }
