import { Injectable } from '@angular/core';
import { Workbook } from 'exceljs';
import * as fs from 'file-saver';
import * as Excel from "exceljs/dist/exceljs.min.js";
import { PooluserService } from "src/app/services/pooluser.service";

@Injectable({
  providedIn: 'root'
})
export class ExcelService {

  constructor(
    private poolUserService: PooluserService
  ) { }


  generateExcel(usr, data) {

    // for (var i: number = 0; i < data.length; i++) {
    //   this.colors[i] = '';
    // } 
    let say=1;
    const obj = { srkodu: '1', reportType: 'monthlyPuantajDetail', user: usr };
    this.poolUserService.getReport(obj).subscribe(
      res => {

        let datas: string[][] = new Array(data.length);
        Object.keys(data).forEach(key => {
          datas[key] = (
            new Array(data[key].gorevi,data[key].depart, data[key].sicil, data[key].name,
              data[key].gun1,
              data[key].gun2,
              data[key].gun3,
              data[key].gun4,
              data[key].gun5,
              data[key].gun6,
              data[key].gun7,
              data[key].gun8,
              data[key].gun9,
              data[key].gun10,
              data[key].gun11,
              data[key].gun12,
              data[key].gun13,
              data[key].gun14,
              data[key].gun15,
              data[key].gun16,
              data[key].gun17,
              data[key].gun18,
              data[key].gun19,
              data[key].gun20,
              data[key].gun21,
              data[key].gun22,
              data[key].gun23,
              data[key].gun24,
              data[key].gun25,
              data[key].gun26,
              data[key].gun27,
              data[key].gun28,
              data[key].gun29,
              data[key].gun30,
              data[key].gun31, data[key].fiilCalisma, data[key].standartSaat, data[key].eksikCalisma, data[key].imza
            ));
        });


        let workbook = new Workbook();
        let worksheet = workbook.addWorksheet("AylikRapor");
        //worksheet.unprotect();
        let titleRow = worksheet.addRow(["MEVCUT LİSTESİ", "", "", "", "AY:", "", "", "", res[0].ay, "", "", "", "ŞUBE KODU", "", "", "", res[0].sube]);
        // titleRow.font = { size: 14, bold: true }
        const header = ["GOREVI", "DEPARTMAN","SICILNO", "ADISOYADI", "GUN1", "GUN2", "GUN3", "GUN4", "GUN5", "GUN6", "GUN7", "GUN8", "GUN9", "GUN10", "GUN11", "GUN12", "GUN13", "GUN14", "GUN15", "GUN16", "GUN17", "GUN18", "GUN19", "GUN20", "GUN21", "GUN22", "GUN23", "GUN24", "GUN25", "GUN26", "GUN27", "GUN28", "GUN29", "GUN30", "GUN31", "FIILI_CALISMA", "STANDART_SAAT", "EKSIK_CALISMA", "IMZA"]
        let headerRow = worksheet.addRow(header);
        headerRow.eachCell((cell, number) => {
          cell.fill = {
            type: 'pattern',
            pattern: 'solid',
            fgColor: { argb: 'CDCCCC' },
            bgColor: { argb: '000000' }
          }
          cell.border = { top: { style: 'thin' }, left: { style: 'thin' }, bottom: { style: 'thin' }, right: { style: 'thin' } }
        })

        datas.forEach(d => {

          let row = worksheet.addRow(d);
          say++;
          for (let i = 1; i < 38; i++) {
            let qty = row.getCell(i);
            let color = 'FF99FF99';
            if (qty.value.toString().charAt(0) === '(')
              color = 'FF0000'
            else if (qty.value === 'B')
              color = 'FFFF00'
            else if (qty.value === 'X')
              color = '800080'
            if (color !== 'FF99FF99') {
              qty.fill = {
                type: 'pattern',
                pattern: 'solid',
                fgColor: { argb: color }
              }
            }
          }

        }
        );

        // var dobCol =worksheet.getColumn(0);
        // dobCol.width =120;

        Object.keys(res).forEach(key1 => {
          
           let row:any;
          if (key1 === '0')
           row=worksheet.addRow([res[key1].adi,"","", res[key1].raporKodu, "", "", "", "TARIH"]);
          else if (key1 === '2')
          row=worksheet.addRow([res[key1].adi,"","", res[key1].raporKodu, "", "", "", "MM ADI-SOYADI-İMZA"]);
          else if (key1 === '4')
          row=worksheet.addRow([res[key1].adi,"","", res[key1].raporKodu, "", "", "", "SM ADI-SOYADI-İMZA"]);
          else
          row=worksheet.addRow([res[key1].adi,"","", res[key1].raporKodu]);
          // worksheet.mergeCells('A15:B15');
          // let ccell = row.getCell(1);
          // ccell.fill = {
          //   type: 'pattern',
          //   pattern: 'solid',
          //   width: '1200',
          //   fgColor: { argb: 'FF99FF99' }
          // }
        });

        for (var i = 0, len = 18 ; i <= len; i++) {
          say++;
          worksheet.mergeCells('A'+say+':C'+say+'');
        
        }
        // worksheet.addRow(["Yıllık İzin", "Y", "", "", "", "TARIH"]);
        // worksheet.addRow(["Ücretli İzin", "U"]);
        // worksheet.addRow(["Ücretsiz İzin", "S", "", "", "", "MM ADI-SOYADI-İMZA"]);
        // worksheet.addRow(["Rapor", "R"]);
        // worksheet.addRow(["Evlilik Izni", "E", "", "", "", "SM ADI-SOYADI-İMZA"]);
        // worksheet.addRow(["Doğum Izni", "D"]);
        // worksheet.addRow(["Ölüm Izni", "O"]);
        // worksheet.addRow(["Mazaret Izni", "M"]);
        // worksheet.addRow(["Eğitim", "G"]);

        worksheet.addRow([]);
        worksheet.addRow(["1-Her ay başında çalışanların fiks saatleri mevcut listesine yazılmalıdır."]);
        worksheet.addRow(["2-Her çalışan çalışma saatlerini kontrol edip; doğru ise imzalamalıdır."]);
        worksheet.mergeCells('A1:D1');
        // worksheet.addRow([]);
        // const footer = 'Mevcut listesi';
        // let footerRow = worksheet.addRow([footer]);
        // titleRow.font = { size: 14, bold: true }
        // "application/json;charset=utf-8"
        // application/vnd.openxmlformats-officedocument.spreadsheetml.sheet
        // const blob = new Blob([data], {type: 'EXCEL_TYPE'});

        // workbook.xlsx.writeBuffer().then((datas) => {
        //   let blob = new Blob([datas as BlobPart], { type: 'application/vnd.ms-excel;charset=utf-8' });
        //   // const blob = new Blob([data], {type: 'application/vnd.ms-excel;charset=utf-8'});
        //   fs.saveAs(blob, 'AylikPuantaj.xls');
        // })

        // workbook.xlsx.writeBuffer().then((datas) => {
        //   // let blob = new Blob([datas as BlobPart], { type: 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet' });
        //   const blob = new Blob([datas as BlobPart], {type: 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet'});
        //   fs.saveAs(blob, 'AylikPuantaj.xls');
        // })

        workbook.xlsx.writeBuffer()
          .then(datas => fs.saveAs(new Blob([datas as BlobPart]), 'aylikPuantaj.xls'))
          .catch(err => console.log('Error writing excel export', err));
        // workbook.xlsx.writeFile('AylikPuantaj.xlsx').catch((e) => console.log(e));
        // workbook.xlsx.writeBuffer().then((datas) => {
        //   // const blob = new Blob([datas as BlobPart], {type: 'EXCEL_TYPE'});
        //   // fs.saveAs(blob, 'AylikPuantaj.xlsx');
        //   var data = new Blob([datas as BlobPart], {type: 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet'});
        //   fs.saveAs(data, 'AylikPuantaj.xlsx');

        // });

      });
  }


}
