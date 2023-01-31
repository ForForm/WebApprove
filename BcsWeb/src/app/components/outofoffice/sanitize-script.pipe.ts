import { Pipe,PipeTransform  } from '@angular/core';
// import { DomSanitizer } from '@angular/platform-browser';
import { DomSanitizer, SafeHtml, SafeStyle, SafeScript, SafeUrl, SafeResourceUrl } from '@angular/platform-browser';


@Pipe({name: 'safeResourceScript'})
export class SafeResourceScript {
    constructor(private sanitizer:DomSanitizer){}

    transform(url) {
        return this.sanitizer.bypassSecurityTrustScript("setTimeout(function () { window.print() }, 3000);");
    }

    // public transform(value: any, type: string): SafeHtml | SafeStyle | SafeScript | SafeUrl | SafeResourceUrl {

    //     console.log("ahmettttttttttttttttttttt");
    //     switch (type) {
    //             case 'html': return this.sanitizer.bypassSecurityTrustHtml(value);
    //             case 'style': return this.sanitizer.bypassSecurityTrustStyle(value);
    //             case 'script': return this.sanitizer.bypassSecurityTrustScript(value);
    //             case 'url': return this.sanitizer.bypassSecurityTrustUrl(value);
    //             case 'resourceUrl': return this.sanitizer.bypassSecurityTrustResourceUrl(value);
    //             default: throw new Error(`Invalid safe type specified: ${type}`);
    //         }
    //   }
}