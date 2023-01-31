import { Component, OnInit, Input, Output, EventEmitter } from '@angular/core';
import { HttpEventType, HttpResponse } from '@angular/common/http';
import { Observable } from 'rxjs';
import { FileUploadService } from "../../services/file-upload.service";
import { FormBuilder, FormGroup, Validators } from '@angular/forms';

@Component({
  selector: 'app-file-upload',
  templateUrl: './file-upload.component.html'


})


export class FileUploadComponent implements OnInit {
  formDoc: FormGroup;
  selectedFiles?: FileList;
  currentFile?: File;
  progress = 0;
  message = '';

  fileInfos?: Observable<any>;

  constructor(
    private _formBuilder: FormBuilder,
    private uploadService: FileUploadService) { }
  @Input() form: any;
  @Input() user: any;
  @Output() getDocumentSelect = new EventEmitter<{}>();
  ngOnInit(): void {
    // this.fileInfos = this.uploadService.getFiles();
  }

  selectFile(event: any): void {
 
    this.selectedFiles = event.target.files;
  }

  upload(): void {

    this.progress = 0;

    if (this.selectedFiles) {
      const file: File | null = this.selectedFiles.item(0);

      if (file) {
        this.currentFile = file;
        this.uploadService.upload(this.currentFile, this.form.value).subscribe(
          (event: any) => {
            if (event.type === HttpEventType.UploadProgress) {
              this.progress = Math.round(100 * event.loaded / event.total);
            } else if (event instanceof HttpResponse) {
              // this.message = event.body.message;
              this.getDocumentSelect.emit(this.user);
              //  this.fileInfos = this.uploadService.getFiles();
            }
          },
          (err: any) => {
            console.log(err);
            this.progress = 0;

            if (err.error && err.error.message) {
              this.message = err.error.message;
            } else {
              this.message = 'Dosya yüklenemedi!';
            }

            this.currentFile = undefined;
          });

      }

      this.selectedFiles = undefined;
    }
  }
}