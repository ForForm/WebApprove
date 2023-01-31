using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Threading.Tasks;

namespace BcsApp.Models
{

    #region Ozdilek

    public class GetOzDateCalculationInfo
    {

        public string sirket { get; set; }

        public string sicilNo { get; set; }

        public int neden { get; set; }

        public DateTime? basTarih { get; set; }

        public decimal? gun { get; set; }

        public string user { get; set; }
    }

    public class GetOzDateCalculationResponse
    {
        public string sebep { get; set; }

        public string sonuc { get; set; }

        public string srKodu { get; set; }

        public string sicilNo { get; set; }

        public string neden { get; set; }

        public DateTime basTarih { get; set; }

        public decimal gun { get; set; }

        public DateTime bitTarih { get; set; }

        public DateTime isBasiTarih { get; set; }

        public decimal ays_lmt { get; set; }

        public decimal yil_lmt { get; set; }

        public decimal ttl_lmt { get; set; }

    }

    #endregion

    #region Bcs

    [DataContract]
    public class UsersModel
    {
        [DataMember(Name = "ID")]
        public int ID { get; set; }

        [DataMember(Name = "Name")]
        public string Name { get; set; }

        [DataMember(Name = "UserName")]
        public string UserName { get; set; }

        [DataMember(Name = "Password")]
        public string Password { get; set; }

        [DataMember(Name = "DepartmanID")]
        public string DepartmanID { get; set; }
    }

    public class ReturnMesssage
    {
        public string responseCode { get; set; }

        public string responseDscr { get; set; }

    }

    public class MailSubmitApprove
    {

        public string data { get; set; }
    }

    public class UploadFileInfo
    {
        public string Username { get; set; }

        public string Type { get; set; }

        public string Description { get; set; }

        public string Date { get; set; }

        public string FileName { get; set; }

        public string FilePath { get; set; }

        public IFormFile file { get; set; }

    }


    public class PostApproveInfo
    {
        public int type { get; set; }

        public string srkodu { get; set; }

        public string prsicil { get; set; }

        public string name { get; set; }

        public DateTime? bastarih { get; set; }

        public int? inoutput { get; set; }

        public string ioreasonItem { get; set; }

        public DateTime? iostartdate { get; set; }

        public string iostarttime { get; set; }

        public string iodesc { get; set; }

        public string bassaat { get; set; }

        public DateTime? bittarih { get; set; }

        public string bitsaat { get; set; }

        public string sure { get; set; }

        public bool? gelis { get; set; }

        public bool? gidis { get; set; }

        public string gelisservis { get; set; }

        public string gidisservis { get; set; }

        public bool? yemekyer { get; set; }

        public decimal? gun { get; set; }

        public string neden { get; set; }

        public string posta { get; set; }

        public bool? onay1 { get; set; }

        public string onay1kl { get; set; }

        public DateTime? isbasitarih { get; set; }

        public string sebep { get; set; }

        public string sebep2 { get; set; }

        public string aciklama { get; set; }

        public bool? post { get; set; }

        public int? ret { get; set; }

        public bool? amir { get; set; }

        public string amirKodu { get; set; }

        public string amirkodu { get; set; }

        public int kisisayi { get; set; }
    }

    public class GetShiftInfoRequest
    {
        public string srkodu { get; set; }

        public string username { get; set; }

        public DateTime shiftDate1 { get; set; }

        public DateTime shiftDate2 { get; set; }


    }

    public class GetShiftInfoReponse
    {
        public string srkodu { get; set; }

        public string depart { get; set; }

        public string username { get; set; }

        public DateTime tarih { get; set; }

        public int diff { get; set; }

        public int maxclim { get; set; }

        public string color { get; set; }

        public string dscr { get; set; }

        public string vrkodu { get; set; }

        public int onay1 { get; set; }

        public string onay1kl { get; set; }

        public int onay2 { get; set; }

        public string onay2kl { get; set; }


        public int onay3 { get; set; }

        public string onay3kl { get; set; }


        public int onay4 { get; set; }

        public string onay4kl { get; set; }


        public int onay5 { get; set; }

        public string onay5kl { get; set; }

        public int post { get; set; }

        public int ret { get; set; }

        public string retAcik { get; set; }


    }

    public class PostShiftInfo
    {
        public string srkodu { get; set; }

        public string username { get; set; }

        public string name { get; set; }

        public string approver { get; set; }

        public string depart { get; set; }

        public DateTime bastarih { get; set; }

        public DateTime bittarih { get; set; }

        public string type1 { get; set; }
        public string type2 { get; set; }
        public string type3 { get; set; }
        public string type4 { get; set; }
        public string type5 { get; set; }
        public string type6 { get; set; }
        public string type7 { get; set; }
        public string type8 { get; set; }
        public string type9 { get; set; }
        public string type10 { get; set; }
        public string type11 { get; set; }
        public string type12 { get; set; }
        public string type13 { get; set; }
        public string type14 { get; set; }
        public string type15 { get; set; }
        public string type16 { get; set; }
        public string type17 { get; set; }
        public string type18 { get; set; }
        public string type19 { get; set; }
        public string type20 { get; set; }
        public string type21 { get; set; }
        public string type22 { get; set; }
        public string type23 { get; set; }
        public string type24 { get; set; }
        public string type25 { get; set; }
        public string type26 { get; set; }
        public string type27 { get; set; }
        public string type28 { get; set; }
        public string type29 { get; set; }
        public string type30 { get; set; }

        public string vrd1 { get; set; }
        public string vrd2 { get; set; }
        public string vrd3 { get; set; }
        public string vrd4 { get; set; }
        public string vrd5 { get; set; }
        public string vrd6 { get; set; }
        public string vrd7 { get; set; }
        public string vrd8 { get; set; }
        public string vrd9 { get; set; }
        public string vrd10 { get; set; }
        public string vrd11 { get; set; }
        public string vrd12 { get; set; }
        public string vrd13 { get; set; }
        public string vrd14 { get; set; }
        public string vrd15 { get; set; }
        public string vrd16 { get; set; }
        public string vrd17 { get; set; }
        public string vrd18 { get; set; }
        public string vrd19 { get; set; }
        public string vrd20 { get; set; }
        public string vrd21 { get; set; }
        public string vrd22 { get; set; }
        public string vrd23 { get; set; }
        public string vrd24 { get; set; }
        public string vrd25 { get; set; }
        public string vrd26 { get; set; }
        public string vrd27 { get; set; }
        public string vrd28 { get; set; }
        public string vrd29 { get; set; }
        public string vrd30 { get; set; }

    }

    public class SubmitApproveInfo
    {
        public int id { get; set; }

        public int type { get; set; }

        public bool? approve { get; set; }

        public bool? reject { get; set; }

        public string prsicil { get; set; }

        public string amir { get; set; }

        public string name { get; set; }

        public DateTime bastarih { get; set; }

        public DateTime bittarih { get; set; }

        public string neden { get; set; }

        public string sebep { get; set; }

        public string sebep2 { get; set; }

        public string aciklama { get; set; }

        public string retacik { get; set; }

    }

    public class SubmitApproveInfoMobile
    {
        public int id { get; set; }

        public int type { get; set; }

        public bool? approve { get; set; }

        public bool? reject { get; set; }

        public string amir { get; set; }
        
    }


    public class MachineInfo
    {
        public List<string> macAddresses { get; set; }
    }

    public class GetFormsInfo
    {
        public string user { get; set; }

        public int type { get; set; }

        public int reason { get; set; }

        public DateTime? begindate { get; set; }

        public DateTime? begintime { get; set; }

        public DateTime? enddate { get; set; }

        public DateTime? endtime { get; set; }

        public DateTime? startdate { get; set; }

        public decimal days { get; set; }

        public DateTime? time { get; set; }

        public string desc { get; set; }

        public string approver { get; set; }

    }

    public class GetControlLisansResponse
    {
        public bool valid { get; set; }

        public string logo { get; set; }

    }


    public class GetPersonnelUpdateTypesResponse
    {
        public string kodu { get; set; }

        public string adi { get; set; }

    }


    public class PostMachineInfo
    {

        public string ID { get; set; }

        public string companyCode { get; set; }

        public string companyName { get; set; }

        public List<string> macAddress { get; set; }

        public string userCount { get; set; }

        public string barkodesNum { get; set; }

        public string validNum { get; set; }

        public string SecureNum { get; set; }

        public string status { get; set; }

        public DateTime tranDate { get; set; }

        public string barkodesSecureNum { get; set; }




    }

    public class MachineLicenseInfo
    {

        public string ID { get; set; }

        public string companyCode { get; set; }

        public string companyName { get; set; }

        public string macAddress { get; set; }

        public string userCount { get; set; }

        public string barkodesNum { get; set; }

        public string validNum { get; set; }

        public string SecureNum { get; set; }

        public string status { get; set; }

        public DateTime tranDate { get; set; }

        public string barkodesSecureNum { get; set; }

        public Byte[] logo { get; set; }

    }

    public class GetIOReportInfo
    {
        public string sicil { get; set; }

        public string adi { get; set; }

        public string soyadi { get; set; }

        public string departman { get; set; }

        public string gorev { get; set; }

        public string masrafMerkez { get; set; }

        public DateTime? girisTarih { get; set; }

        public DateTime? girisSaat { get; set; }

        public DateTime? cikisTarih { get; set; }

        public DateTime? cikisSaat { get; set; }
    }

    public class GetPuantajReportInfoDtl
    {
        public string ay { get; set; }

        public string sube { get; set; }

        public string adi { get; set; }

        public string raporKodu { get; set; }

    }

    public class GetPuantajReportInfo
    {
        public string gorevi { get; set; }

        public string sicil { get; set; }

        public string depart { get; set; }

        public string name { get; set; }

        public string gun1 { get; set; }

        public string gun2 { get; set; }

        public string gun3 { get; set; }

        public string gun4 { get; set; }

        public string gun5 { get; set; }

        public string gun6 { get; set; }

        public string gun7 { get; set; }

        public string gun8 { get; set; }

        public string gun9 { get; set; }

        public string gun10 { get; set; }

        public string gun11 { get; set; }

        public string gun12 { get; set; }

        public string gun13 { get; set; }

        public string gun14 { get; set; }

        public string gun15 { get; set; }

        public string gun16 { get; set; }

        public string gun17 { get; set; }

        public string gun18 { get; set; }

        public string gun19 { get; set; }

        public string gun20 { get; set; }

        public string gun21 { get; set; }

        public string gun22 { get; set; }

        public string gun23 { get; set; }

        public string gun24 { get; set; }

        public string gun25 { get; set; }

        public string gun26 { get; set; }

        public string gun27 { get; set; }

        public string gun28 { get; set; }

        public string gun29 { get; set; }

        public string gun30 { get; set; }

        public string gun31 { get; set; }

        public string fiilCalisma { get; set; }

        public string standartSaat { get; set; }

        public string eksikCalisma { get; set; }

        public string imza { get; set; }

    }

    public class GetIzinReportInfo
    {
        public string IzinTuru { get; set; }

        public string neden { get; set; }

        public string acik { get; set; }


        public string id { get; set; }

        public string prSicil { get; set; }

        public string adi { get; set; }

        public string soyadi { get; set; }

        public DateTime basTarih { get; set; }

        public DateTime? basSaat { get; set; }

        public DateTime bitTarih { get; set; }

        public DateTime? bitSaat { get; set; }

        public string sure { get; set; }

        public bool? yemekYer { get; set; }

        public bool? servis { get; set; }

        public string onay1 { get; set; }

        public string onay1kl { get; set; }

        public string onay2 { get; set; }

        public string onay2kl { get; set; }

        public string onay3 { get; set; }

        public string onay3kl { get; set; }

        public string onay4 { get; set; }

        public string onay4kl { get; set; }

        public string onay5 { get; set; }

        public string onay5kl { get; set; }

        public string durum { get; set; }

        public DateTime? islemZaman { get; set; }




    }

    public class GetLngModel
    {

        public int Id { get; set; }

        public string Dil { get; set; }

        public string Kodu { get; set; }

        public string Text { get; set; }

    }

    public class GetLabelModel
    {

        public string Label { get; set; }

        public string LabelName { get; set; }

    }

    public class PostParameterInfo
    {

        public int ID { get; set; }

        public string firmName { get; set; }

        public bool limitDash { get; set; }

        public bool reportDash { get; set; }

        public bool prsBazli { get; set; }


        public bool ret { get; set; }

        public bool sendMail { get; set; }

        public bool sendMailForm { get; set; }

        public string sendMailFormTxt { get; set; }

        public bool gecmisPostUser { get; set; }

        public bool mailOnay { get; set; }

        public bool fmFormOnay { get; set; }

        public bool siFormOnay { get; set; }

        public bool giFormOnay { get; set; }

        public bool fmUseForm { get; set; }

        public bool siUseForm { get; set; }

        public bool giUseForm { get; set; }

        public int onayTuru { get; set; }

        public string domain { get; set; }

        public string smtp { get; set; }

        public string port { get; set; }

        public string smtpUser { get; set; }

        public string smtpPass { get; set; }

        public bool ssl { get; set; }

        public string mail { get; set; }

        public string mailFrom { get; set; }

        public string mailSubject { get; set; }

        public string reportUrl { get; set; }

        public bool? reportUrlSecure { get; set; }

        public string language { get; set; }

        public DateTime transferDate { get; set; }

        public int fmTip { get; set; }

        public bool fmServis { get; set; }

        public bool fmYemek { get; set; }

        public bool fmAcik { get; set; }

        public bool fmNeden { get; set; }

        public bool fmGecmisIslem { get; set; }

        public int fmGecmisIslemSure { get; set; }

        public string fmTemplate { get; set; }

        public string fmUserMailBody { get; set; }

        public bool giTip { get; set; }

        public bool giYemek { get; set; }

        public bool giAcik { get; set; }

        public bool giNeden { get; set; }

        public bool giGecmisIslem { get; set; }

        public int giGecmisIslemSure { get; set; }

        public bool giYillikIzin { get; set; }

        public bool siTip { get; set; }

        public bool siYemek { get; set; }

        public bool siAcik { get; set; }

        public bool siNeden { get; set; }

        public bool siGecmisIslem { get; set; }

        public int siGecmisIslemSure { get; set; }

        public bool siSaat { get; set; }

        public bool hktUseForm { get; set; }

        public bool hktFormOnay { get; set; }

        public bool hktNeden { get; set; }

        public bool hktAcik { get; set; }

        public bool hktGecmisIslem { get; set; }

        public int hktGecmisIslemSure { get; set; }

        public bool pstAcik { get; set; }

        public bool pstGecmisIslem { get; set; }

        public int pstGecmisIslemSure { get; set; }


        public string link1Name { get; set; }

        public string link1Url { get; set; }

        public string link2Name { get; set; }

        public string link2Url { get; set; }

        public string link3Name { get; set; }

        public string link3Url { get; set; }

        public string link4Name { get; set; }

        public string link4Url { get; set; }

        public string link5Name { get; set; }

        public string link5Url { get; set; }

        public bool isDocument { get; set; }

        public bool shiftControl { get; set; }

        public int shiftHour { get; set; }

        public int shiftPartHour { get; set; }

        public string shiftPartHourTasks { get; set; }

        public bool shiftAuth { get; set; }
            
        public int shiftAuthWeek { get; set; }

    }

    public class GetDateCalculationInfo
    {

        public int type { get; set; }

        public string sirket { get; set; }

        public string sicilNo { get; set; }

        public int neden { get; set; }

        public DateTime? basTarih { get; set; }

        public DateTime? bitTarih { get; set; }

        public float? gun { get; set; }

        public string basSaat { get; set; }

        public string bitSaat { get; set; }

        public string sure { get; set; }

        public DateTime? isBasiTarih { get; set; }

        public DateTime? iobasTarih { get; set; }

        public string iobasSure { get; set; }

        public string inoutput { get; set; }

        public string posta { get; set; }

        public string sebep { get; set; }

        public string aciklama { get; set; }

        public int idNo { get; set; }

        public string user { get; set; }
    }

    public class GetDateCalculationResponse
    {
        public string sebep { get; set; }

        public string sonuc { get; set; }

        public string srKodu { get; set; }

        public string sicilNo { get; set; }

        public string neden { get; set; }

        public DateTime basTarih { get; set; }

        public decimal gun { get; set; }

        public DateTime bitTarih { get; set; }

        public DateTime isBasiTarih { get; set; }

        public decimal ays_lmt { get; set; }

        public decimal yil_lmt { get; set; }

        public decimal ttl_lmt { get; set; }

    }

    public class PoolDelegationSelectModel
    {
        public int id { get; set; }
        public string user { get; set; }
        public string username { get; set; }
        public DateTime bastarih { get; set; }
        public DateTime bittarih { get; set; }
        public string vekil { get; set; }
        public string vekiladi { get; set; }
        public string userPassword { get; set; }

    }


    public class GetUserLimitSelectModel
    {
        public int ID { get; set; }

        public string username { get; set; }

        public string name { get; set; }

        public string depart { get; set; }

        public DateTime? isgirt { get; set; }

        public string amir { get; set; }

        public string usageLimit { get; set; }

        public string remainLimit { get; set; }

        public string remainYearly { get; set; }


    }

    public class GetUserDashReportsModel
    {
        public int ID { get; set; }

        public string ReportName { get; set; }

        public int Column { get; set; }

        public string SPName { get; set; }

        public string Params { get; set; }

    }
 


    public class PoolChiefSelectModel
    {
        public int IDNO { get; set; }

        public string SICILNO { get; set; }

        public string ADI { get; set; }

        public string DEPARTADI { get; set; }

        public string MAIL_CC{ get; set; }
    }

    public class PoolUserSelectModel
    {
        public int ID { get; set; }

        public string username { get; set; }

        public string name { get; set; }

        public string depart { get; set; }

        public string gorev { get; set; }

        public string posta { get; set; }

        public decimal yillikFazlaMesai { get; set; }

        public bool useServiceArrival { get; set; }

        public string serviceArrival { get; set; }

        public bool useServiceGoing { get; set; }

        public string serviceGoing { get; set; }

        public string approve { get; set; }

        public string approver { get; set; }

        public decimal YillikKalan { get; set; }

        public string Iodesc { get; set; }


    }

    public class PoolAuthSelectModel
    {
        public bool Gunluk { get; set; }
        public bool Mesai { get; set; }
        public bool Saat { get; set; }
        public bool Vardiya { get; set; }
        public bool Hareket { get; set; }
        public bool Posta { get; set; }
        public bool Rotasyon { get; set; }
        public bool Guncelleme { get; set; }
        public bool Amir1 { get; set; }
    }


    public class PoolDocAuthSelectModel
    {
        public bool Yetki { get; set; }
    }


    public class PoolDocEmpSelectModel
    {
        public int IDNO { get; set; }
        public String SICILNO { get; set; }
        public String ADI { get; set; }
        public String DEPARTADI { get; set; }
    }

    public class PoolDocSelectModel
    {
        public int IDNO { get; set; }
        public String PRSICIL { get; set; }
        public String ADI { get; set; }
        public String TIPI { get; set; }
        public String TARIH { get; set; }
        public String ACIKLAMA { get; set; }
        public String DOSYA { get; set; }
        public String DOSYAYOLU { get; set; }
    }


    public class PoolDocTypesModel
    {
        public int ID { get; set; }
        public String CODE { get; set; }
        public String NAME { get; set; }
    }

    public class PoolSecureLoginSelectModel
    {
        public string userType { get; set; }
        public string userName { get; set; }
        public string userInfo { get; set; }
        public string password { get; set; }
        public string firmName { get; set; }
    }


    //public class ParamsModel
    //{
    //    public string ForeEndUrl { get; set; }        

    //}

    public class PoolFormsSelectModel
    {
        public string template { get; set; }
    }

    public class PoolApproveSelectModel
    {
        public string Inoutput { get; set; }
        public int id { get; set; }
        public string IzinTip { get; set; }
        public string UserName { get; set; }
        public string Name { get; set; }
        public string ExplationCode { get; set; }
        public DateTime Date { get; set; }
        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }
        public DateTime WorkDate { get; set; }
        public string Time { get; set; }
        public string Reason { get; set; }
        public string Reason2 { get; set; }
        public string Description { get; set; }
        public int Count { get; set; }
        public decimal YillikKalan { get; set; }
        public string YillikFazlaMesai { get; set; }
        public string RetAcik { get; set; }
        public bool Auth { get; set; }
        public string Posta { get; set; }
        public string Departman { get; set; }
        

    }

    public class PoolGetFmservicesModel
    {
        public string Username { get; set; }
        public string Kodu { get; set; }
        public string Turu { get; set; }

    }

    public class PoolReasonSelectModel
    {
        //public string sirketKodu { get; set; }
        public string key { get; set; }
        public string value { get; set; }
    }

    public class PoolShiftsSelectModel
    {
        public string srkodu { get; set; }
        public string kodu { get; set; }
        public string adi { get; set; }
        public string turu { get; set; }
        public string grup { get; set; }
        public DateTime bassaat { get; set; }
        public DateTime bitsaat { get; set; }
        public int maxclim { get; set; }
    }

    public class PoolPostaSelectModel
    {

        public string sirket { get; set; }
        public string kodu { get; set; }
        public string adi { get; set; }
        public DateTime basTarih { get; set; }
        public string turu { get; set; }
    }

    public class ParameterInfo
    {
        public string parameterCode { get; set; }

        public string parameterValue { get; set; }


    }

    public class PoolReportModel
    {
        public string reportType { get; set; }

        public string srkodu { get; set; }

        public string user { get; set; }

        public string userType { get; set; }

        public string criter { get; set; }

        public string clkodu { get; set; }

        public float sure { get; set; }

        public string flow { get; set; }

        public DateTime startDate { get; set; }

        public DateTime endDate { get; set; }
    }

    public class PoolRePasswordModel
    {
        public string user { get; set; }

        public string newPassword { get; set; }
    }

    public class SendPasswordResponse : ReturnMesssage
    {
        public string user { get; set; }

        public string mail { get; set; }

        public string password { get; set; }
    }

    public class SendPasswordRequest
    {
        public string userName { get; set; }
    }

    public class PoolUserLoginModel
    {
        public string returnCode { get; set; }

        public string returnDscr { get; set; }

        public string userName { get; set; }

        public string password { get; set; }

        public string domain { get; set; }

        public string userType { get; set; }

        public string firmName { get; set; }

        public string userInfo { get; set; }

    }

    public class UsersSelectModel
    {

        [DataMember(Name = "ID")]
        public int id { get; set; }

        [DataMember(Name = "UserName")]
        public string userName { get; set; }

        [DataMember(Name = "Password")]
        public string password { get; set; }

    }

    public class ShiftInsertModel
    {

        [DataMember(Name = "ID")]
        public int departmanID { get; set; }

        [DataMember(Name = "ID")]
        public int personelID { get; set; }

        [DataMember(Name = "Password")]
        public DateTime beginDate { get; set; }

        [DataMember(Name = "UserName")]
        public DateTime beginTime { get; set; }

        [DataMember(Name = "Password")]
        public DateTime endDate { get; set; }

        [DataMember(Name = "UserName")]
        public DateTime endTime { get; set; }


    }


    #endregion
}
