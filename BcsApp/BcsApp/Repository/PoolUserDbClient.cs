using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;
using BcsApp.Models;
using BcsApp.Translator;
using Newtonsoft.Json;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Options;
using System.IO;

namespace BcsApp.Repository
{
    public class PoolUserDbClient
    {

        #region Bcs

        //private readonly IOptions<MySettingsModel> config;

        //public PoolUserDbClient(IOptions<MySettingsModel> config)
        //{
        //    this.config = config;
        //}

        //public IConfiguration Configuration { get; }

        public PoolUserLoginModel Login(PoolUserLoginModel model, string connString)
        {
            //var outParam = new SqlParameter("@ReturnCode", SqlDbType.NVarChar, 20)
            //{
            //    Direction = ParameterDirection.Output
            //};

            SqlParameter[] param ={
                new SqlParameter("@UserName",model.userName),
                new SqlParameter("@Password",model.password),
                new SqlParameter("@Domain",model.domain)
            };

            return SqlHelper.ExecuteProcedureReturnData<PoolUserLoginModel>(connString, "BCS_LOGIN_NEW", r => r.TranslatePoolUserLogin(), param);

            //SqlHelper.ExecuteProcedureReturnString(connString, "tbl_PoolUser_LOGIN", param);
            //return (string)outParam.Value;

        }

        public PoolAuthSelectModel GetAuth(string connString, SqlParameter[] param)
        {
            return SqlHelper.ExecuteProcedureReturnData<PoolAuthSelectModel>(connString, "BCS_APPROVE_AUTH_NEW", r => r.TranslateAuthSelect(), param);
        }

        public PoolDocAuthSelectModel GetDocAuth(string connString, SqlParameter[] param)
        {
            return SqlHelper.ExecuteProcedureReturnData<PoolDocAuthSelectModel>(connString, "BCS_DOC_AUTH", r => r.TranslateDocAuthSelect(), param);
        }


        public List<PoolDocEmpSelectModel> GetDocEmp(string connString, SqlParameter[] param)
        {
            return SqlHelper.ExecuteProcedureReturnData<List<PoolDocEmpSelectModel>>(connString, "BCS_DOCUMENT_SELECT_USER", r => r.TranslateDocEmpSelect(), param);
        }

        public List<PoolDocSelectModel> GetDocSelect(string connString, SqlParameter[] param)
        {
            return SqlHelper.ExecuteProcedureReturnData<List<PoolDocSelectModel>>(connString, "BCS_DOCUMENT_SELECT", r => r.TranslateDocSelect(), param);
        }

        public List<PoolDocTypesModel> GetDocTypes(string connString, SqlParameter[] param)
        {
            return SqlHelper.ExecuteProcedureReturnData<List<PoolDocTypesModel>>(connString, "BCS_DOCUMENT_TYPES", r => r.TranslateDocTypes(), param);
        }


        public string DeleteDoc(int id, string connString)
        {
            var outParam = new SqlParameter("@ReturnCode", SqlDbType.NVarChar, 20)
            {
                Direction = ParameterDirection.Output
            };

            SqlParameter[] param ={
                new SqlParameter("@IDNO",id),
                outParam
            };

            SqlHelper.ExecuteProcedureReturnString(connString, "BCS_DOCUMENT_DELETE", param);
            return (string)outParam.Value;
        }

        public PoolSecureLoginSelectModel GetSecureLogin(string connString, SqlParameter[] param)
        {
            return SqlHelper.ExecuteProcedureReturnData<PoolSecureLoginSelectModel>(connString, "BCS_SECURELOGIN_SELECT", r => r.TranslateSecureLoginSelect(), param);
        }


        public List<PoolApproveSelectModel> GetApproves(string connString, SqlParameter[] param)
        {
            return SqlHelper.ExecuteProcedureReturnData<List<PoolApproveSelectModel>>(connString, "BCS_APPROVE_GET_NEW", r => r.TranslateApproveSelect(), param);
        }

        public PoolFormsSelectModel GetForms(string connString, SqlParameter[] param)
        {

            return SqlHelper.ExecuteProcedureReturnData<PoolFormsSelectModel>(connString, "BCS_GET_TEMPLATE", r => r.TranslateFormsSelect(), param);
        }

        public List<PoolApproveSelectModel> GetApprovesTotal(string connString, SqlParameter[] param)
        {
            return SqlHelper.ExecuteProcedureReturnData<List<PoolApproveSelectModel>>(connString, "BCS_APPROVE_GET_NEW", r => r.TranslateApproveTotalSelect(), param);
        }

        public List<PoolGetFmservicesModel> GetFmservices(string connString, SqlParameter[] param)
        {
            return SqlHelper.ExecuteProcedureReturnData<List<PoolGetFmservicesModel>>(connString, "BCS_MESAI_SERVICE_SELECT", r => r.TranslateFmservicesSelect(), param);
        }

        public List<PoolReasonSelectModel> GetReasons(string connString, SqlParameter[] param)
        {

            return SqlHelper.ExecuteProcedureReturnData<List<PoolReasonSelectModel>>(connString, "BCS_REASON_SELECT", r => r.TranslateReasonSelect(), param);
        }

        public List<PoolShiftsSelectModel> GetShifts(string connString, SqlParameter[] param)
        {

            return SqlHelper.ExecuteProcedureReturnData<List<PoolShiftsSelectModel>>(connString, "BCS_SHIFTS_SELECT", r => r.TranslateShiftsSelect(), param);
        }

        public List<PoolPostaSelectModel> GetPostas(string connString, SqlParameter[] param)
        {

            return SqlHelper.ExecuteProcedureReturnData<List<PoolPostaSelectModel>>(connString, "BCS_POSTA_SELECT", r => r.TranslatePostaSelect(), param);
        }

        public List<PoolUserSelectModel> GetUser(string connString, SqlParameter[] param)
        {
            return SqlHelper.ExecuteProcedureReturnData<List<PoolUserSelectModel>>(connString, "BCS_PERSONEL_GET_NEW", r => r.TranslatePoolUserSelect(), param);
        }

        public List<PoolChiefSelectModel> GetChief(string connString, SqlParameter[] param)
        {
            return SqlHelper.ExecuteProcedureReturnData<List<PoolChiefSelectModel>>(connString, "BCS_PERSONEL_AMIR_GET", r => r.TranslatePoolChiefSelect(), param);
        }


        public List<PoolUserSelectModel> GetUserVardiya(string connString, SqlParameter[] param)
        {
            return SqlHelper.ExecuteProcedureReturnData<List<PoolUserSelectModel>>(connString, "BCS_PERSONEL_GET_VRD_NEW", r => r.TranslatePoolUserSelect(), param);
        }

        public List<GetUserLimitSelectModel> GetUserLimit(string connString, SqlParameter[] param)
        {
            return SqlHelper.ExecuteProcedureReturnData<List<GetUserLimitSelectModel>>(connString, "BCS_PERSONEL_GET_LIMITS", r => r.TranslatePoolUserLimitSelect(), param);
        }

        public List<GetUserDashReportsModel> GetUserDashReports(string connString, SqlParameter[] param)
        {
            return SqlHelper.ExecuteProcedureReturnData<List<GetUserDashReportsModel>>(connString, "BCS_DASHREPORT_GET", r => r.TranslateGetUserDashReports(), param);
        }


        public object ExecuteDashReports(string connString,string spName , SqlParameter[] param)
        {
            return SqlHelper.ExecuteProcedureReturnData<object>(connString, spName, r => r.TranslateExecuteDashReports(), param);
        }

        public List<PoolDelegationSelectModel> GetDelegations(string connString, SqlParameter[] param)
        {
            return SqlHelper.ExecuteProcedureReturnData<List<PoolDelegationSelectModel>>(connString, "BCS_VEKALET_SELECT", r => r.TranslatePoolDelegationSelect(), param);
        }

        public string PostDelegation(PoolDelegationSelectModel model, string connString)
        {
            var outParam = new SqlParameter("@ReturnCode", SqlDbType.NVarChar, 20)
            {
                Direction = ParameterDirection.Output
            };



            SqlParameter[] param ={
                new SqlParameter("@User",model.user),
                new SqlParameter("@BasTarih",model.bastarih),
                new SqlParameter("@BitTarih",model.bittarih),
                new SqlParameter("@Vekil",model.vekil),
                outParam
            };

            SqlHelper.ExecuteProcedureReturnString(connString, "BCS_VEKALET_INSERT", param);
            return (string)outParam.Value;
        }

        public string DeleteDelegation(int id, string connString)
        {
            var outParam = new SqlParameter("@ReturnCode", SqlDbType.NVarChar, 20)
            {
                Direction = ParameterDirection.Output
            };

            SqlParameter[] param ={
                new SqlParameter("@Id",id),
                outParam
            };

            SqlHelper.ExecuteProcedureReturnString(connString, "BCS_VEKALET_DELETE", param);
            return (string)outParam.Value;
        }
        //public string SaveUser(PoolUserSelectModel model,string connString)
        //{
        //    var outParam = new SqlParameter("@ReturnCode", SqlDbType.NVarChar, 20)
        //    {
        //        Direction = ParameterDirection.Output
        //    };

        //    SqlParameter[] param ={
        //        new SqlParameter("@CompanyID",model.CompanyID),
        //        new SqlParameter("@UserName",model.Username),
        //        new SqlParameter("@Password",model.Password),
        //        new SqlParameter("@Status",model.Status),
        //        new SqlParameter("@TranDate",DateTime.Now),
        //        outParam
        //    };

        //    SqlHelper.ExecuteProcedureReturnString(connString, "tbl_PoolUser_INSERT", param);
        //    return (string)outParam.Value;

        //}

        public string DeleteUser(int ID, string connString)
        {
            var outParam = new SqlParameter("@ReturnCode", SqlDbType.NVarChar, 20)
            {
                Direction = ParameterDirection.Output
            };

            SqlParameter[] param ={
                new SqlParameter("@ID",ID),
                outParam
            };

            SqlHelper.ExecuteProcedureReturnString(connString, "tbl_PoolUser_DELETE", param);
            return (string)outParam.Value;

        }

        public string HashCreate(string value, string salt)
        {
            var valueBytes = Microsoft.AspNetCore.Cryptography.KeyDerivation.KeyDerivation.Pbkdf2(
                                     password: value,
                                     salt: System.Text.Encoding.UTF8.GetBytes(salt),
                                     prf: Microsoft.AspNetCore.Cryptography.KeyDerivation.KeyDerivationPrf.HMACSHA512,
                                     iterationCount: 10000,
                                     numBytesRequested: 256 / 8);

            return System.Convert.ToBase64String(valueBytes) + "æ" + salt;
        }

        public string HashCreate()
        {
            byte[] randomBytes = new byte[128 / 8];
            using (var generator = System.Security.Cryptography.RandomNumberGenerator.Create())
            {
                generator.GetBytes(randomBytes);
                return System.Convert.ToBase64String(randomBytes);
            }
        }

        public List<GetLabelModel> GetLngInfo(string connString, int lng)
        {
            var outParam = new SqlParameter("@ReturnCode", SqlDbType.NVarChar, 20)
            {
                Direction = ParameterDirection.Output
            };

            SqlParameter[] param ={
                   new SqlParameter("@Lng",lng),
                outParam
            };

            return SqlHelper.ExecuteProcedureReturnData<List<GetLabelModel>>(connString, "BCS_LABEL_SELECT", r => r.GetLabelInfo(), param);

        }

        public List<GetLngModel> GetLng(string connString, string user, string userType, string lng)
        {
            var outParam = new SqlParameter("@ReturnCode", SqlDbType.NVarChar, 20)
            {
                Direction = ParameterDirection.Output
            };

            SqlParameter[] param ={
                   new SqlParameter("@UserName",user=="null"?null:user),
                   new SqlParameter("@UserType",userType=="null"?null:user),
                   new SqlParameter("@Lng",lng=="null"?null:user),
                outParam
            };
            return SqlHelper.ExecuteProcedureReturnData<List<GetLngModel>>(connString, "BCS_LANGUAGE_SELECT", r => r.GetLngInfo(), param);

        }

        public List<GetLngModel> PostLng(string connString, string user, string userType, string lng)
        {
            var outParam = new SqlParameter("@ReturnCode", SqlDbType.NVarChar, 20)
            {
                Direction = ParameterDirection.Output
            };

            SqlParameter[] param ={
                   new SqlParameter("@UserName",user=="null"?null:user),
                   new SqlParameter("@UserType",userType=="null"?null:userType),
                   new SqlParameter("@Lng",lng=="null"?null:lng),
                outParam
            };
            return SqlHelper.ExecuteProcedureReturnData<List<GetLngModel>>(connString, "BCS_LANGUAGE_UPDATE", r => r.GetLngInfo(), param);

        }

        public List<PostParameterInfo> GetParameterInfo(string connString)
        {
            var outParam = new SqlParameter("@ReturnCode", SqlDbType.NVarChar, 20)
            {
                Direction = ParameterDirection.Output
            };

            SqlParameter[] param ={
                outParam
            };

            return SqlHelper.ExecuteProcedureReturnData<List<PostParameterInfo>>(connString, "BCS_PARAMETER_SELECT", r => r.GetParameterInfo(), param);

        }

        public List<PostParameterInfo> GetLanguages(string connString)
        {
            var outParam = new SqlParameter("@ReturnCode", SqlDbType.NVarChar, 20)
            {
                Direction = ParameterDirection.Output
            };

            SqlParameter[] param ={
                outParam
            };

            return SqlHelper.ExecuteProcedureReturnData<List<PostParameterInfo>>(connString, "BCS_LABEL_SELECT", r => r.GetParameterInfo(), param);

        }


        public object GetIzinReport(PoolReportModel model, string connString)
        {

            if (model.reportType == "monthlyPuantaj")
            {
                SqlParameter[] param ={
                new SqlParameter("@SRKODU",model.srkodu),
                new SqlParameter("@ILKTARIH",model.startDate),
                new SqlParameter("@SONTARIH",model.endDate),
                new SqlParameter("@KULLANICI",model.user),
                new SqlParameter("@KRITER",model.criter),
                new SqlParameter("@FIILI_CLKODU", model.clkodu),
                new SqlParameter("@STANDART_SURE", model.sure)};
                return SqlHelper.ExecuteProcedureReturnData<List<GetPuantajReportInfo>>(connString, "ONY_RPR_AYPUANTAJ", r => r.GetPuantajReportInfo(), param);

            }
            else if (model.reportType == "monthlyPuantajDetail")
            {

                SqlParameter[] param ={
                new SqlParameter("@SRKODU",model.srkodu),
                new SqlParameter("@KULLANICI",model.user) };

                return SqlHelper.ExecuteProcedureReturnData<List<GetPuantajReportInfoDtl>>(connString, "ONY_RPR_AYPUANTAJ_DTL", r => r.GetPuantajReportInfoDtl(), param);

            }
            else
            {
                var outParam = new SqlParameter("@ReturnCode", SqlDbType.NVarChar, 20)
                {
                    Direction = ParameterDirection.Output
                };
                SqlParameter[] param ={
                new SqlParameter("@ReportType",model.reportType),
                new SqlParameter("@UserName",model.user),
                new SqlParameter("@UserType",model.userType),
                new SqlParameter("@Flow",model.flow),
                new SqlParameter("@StartDate",model.startDate),
                new SqlParameter("@EndDate",model.endDate),
                outParam};

                if (model.reportType == "demandtrack")
                    return SqlHelper.ExecuteProcedureReturnData<List<GetIzinReportInfo>>(connString, "BCS_IZIN_REPORT", r => r.GetIzinReportInfo(), param);
                else
                    return SqlHelper.ExecuteProcedureReturnData<List<GetIOReportInfo>>(connString, "BCS_IZIN_REPORT", r => r.GetIOReportInfo(), param);
            }
        }

        public string RePassword(PoolRePasswordModel model, string connString)
        {
            var outParam = new SqlParameter("@ReturnCode", SqlDbType.NVarChar, 20)
            {
                Direction = ParameterDirection.Output
            };

            SqlParameter[] param ={
                new SqlParameter("@UserName",model.user),
                new SqlParameter("@NewPassword",model.newPassword),
                outParam
            };


            SqlHelper.ExecuteProcedureReturnString(connString, "BCS_REPASSWORD", param);
            return (string)outParam.Value;
        }


        public string PostFileApproveInfo(UploadFileInfo model, string connString)
        {
            var outParam = new SqlParameter("@ReturnCode", SqlDbType.NVarChar, 20)
            {
                Direction = ParameterDirection.Output
            };

            SqlParameter[] param = { new SqlParameter("@PRSICIL", model.Username),
                new SqlParameter("@TIPI", model.Type),
                new SqlParameter("@TARIH", model.Date),
                new SqlParameter("@ACIKLAMA", model.Description),
                new SqlParameter("@DOSYA", model.FileName),
                new SqlParameter("@DOSYA_YOLU", model.FilePath),
                outParam
            };

            SqlHelper.ExecuteProcedureReturnString(connString, "BCS_DOCUMENT_INSERT", param);
            return (string)outParam.Value;
        }


        public SendPasswordResponse SendPassword(SendPasswordRequest model, string connString)
        {

            SendPasswordResponse response = new SendPasswordResponse();
            try
            {
                var outParam = new SqlParameter("@ReturnCode", SqlDbType.NVarChar, 20)
                {
                    Direction = ParameterDirection.Output
                };

                SqlParameter[] param ={
                new SqlParameter("@UserName",model.userName),
                outParam
            };

                response = SqlHelper.ExecuteProcedureReturnData<SendPasswordResponse>(connString, "dbo.BCS_GET_PASSWORD", r => r.GetSendPassword(), param);
                SendRememberMail(response, connString);
                response.responseCode = (string)outParam.Value;
                response.responseDscr = ((string)outParam.Value == "200") ? "Şifreniz mail hesabınıza iletildi." : "Hata: SQL";
                return response;
            }
            catch (Exception ex)
            {
                response.responseCode = "561";
                response.responseDscr = "Hata:" + ex.Message;
                return response;
            }


        }

        public List<GetDateCalculationResponse> GetDateCalculation(GetDateCalculationInfo model, string connString)
        {

            if (model.type == 1)
            {

                SqlParameter[] param ={
                            new SqlParameter("@SIRKET", model.sirket),
                            new SqlParameter("@SICILNO", model.sicilNo),
                            new SqlParameter("@NEDEN", model.neden),
                            new SqlParameter("@BASTARIH", model.basTarih),
                            new SqlParameter("@GUN", (model.gun==null?null:model.gun)),
                            new SqlParameter("@BITTARIH", model.bitTarih),
                            new SqlParameter("@ISBASI", model.isBasiTarih),
                            new SqlParameter("@SEBEP", model.sebep),
                            new SqlParameter("@ACIKLAMA", model.aciklama),
                            new SqlParameter("@IDNO", model.idNo),
                            new SqlParameter("@USER", model.user) };

                //if (model.gun == null)
                //    param.ToList().Remove(new SqlParameter("@GUN", model.gun));
                List<PostParameterInfo> paramResponse = GetParameterInfo(connString);
                if (paramResponse[0].limitDash)
                {

                    List<GetDateCalculationResponse> response = SqlHelper.ExecuteProcedureReturnData<List<GetDateCalculationResponse>>(connString, "dbo.WR_GIZ_OTE", r => r.GetDateCalculation(), param);
                    //response[0].isBasiTarih
                    if (response[0].sonuc == "TAMAM")
                    {
                        SqlParameter[] param2 ={
                            new SqlParameter("@SIRKET", model.sirket),
                            new SqlParameter("@TYPE", model.type),
                            new SqlParameter("@SICILNO", model.sicilNo),
                            new SqlParameter("@NEDEN", model.neden),
                            new SqlParameter("@BASTARIH", model.basTarih),
                            new SqlParameter("@GUN", response[0].gun),
                            new SqlParameter("@BITTARIH", model.bitTarih),
                            new SqlParameter("@ISBASI", model.isBasiTarih),
                            new SqlParameter("@SEBEP", model.sebep),
                            new SqlParameter("@ACIKLAMA", model.aciklama),
                            new SqlParameter("@IDNO", model.idNo),
                            new SqlParameter("@USER", model.user) };
                        List<GetDateCalculationResponse> response2 = SqlHelper.ExecuteProcedureReturnData<List<GetDateCalculationResponse>>(connString, "dbo.BCS_LIMIT_CONTROL", r => r.GetDateCalculation(), param2);
                        return response2;
                    }
                    else
                        return response;
                }
                else
                {
                    List<GetDateCalculationResponse> response = SqlHelper.ExecuteProcedureReturnData<List<GetDateCalculationResponse>>(connString, "dbo.WR_GIZ_OTE", r => r.GetDateCalculation(), param);
                    return response;
                }
            }
            else if (model.type == 2 || model.type == 3 || model.type == 5 || model.type == 6)
            {
             

                string flowName = model.type == 2 ? "Saatlik" : (model.type == 3 ? "Mesai" : (model.type == 5 ? "Hareket" : (model.type == 6 ? "Hafta Tatili" : string.Empty)));
                var outParam = new SqlParameter("@ReturnCode", SqlDbType.NVarChar, 20)
                {
                    Direction = ParameterDirection.Output
                };



                if (model.type == 2)
                {
                    DateTime? IsBasiTarih = model.isBasiTarih == null ? new DateTime(1900, 1, 1) : model.isBasiTarih;
                    SqlParameter[] param2 ={
                            new SqlParameter("@SIRKET", model.sirket),
                            new SqlParameter("@SICILNO", model.sicilNo),
                            new SqlParameter("@NEDEN", model.neden),
                            new SqlParameter("@BASTARIH", model.basTarih),
                            new SqlParameter("@GUN", model.gun),
                            new SqlParameter("@BITTARIH",  model.bitTarih),
                            new SqlParameter("@ISBASI",IsBasiTarih==null?new DateTime(1900,1,1):IsBasiTarih),
                            new SqlParameter("@SEBEP", model.sebep),
                            new SqlParameter("@ACIKLAMA", model.aciklama),
                            new SqlParameter("@IDNO", model.idNo),
                            new SqlParameter("@USER", model.user) };
                    List<GetDateCalculationResponse> response2 = SqlHelper.ExecuteProcedureReturnData<List<GetDateCalculationResponse>>(connString, "dbo.WR_GIZ_OTE", r => r.GetDateCalculation(), param2);

                    if (response2[0].sonuc == "TAMAM")
                    {


                        SqlParameter[] param3 ={
                            new SqlParameter("@SIRKET", model.sirket),
                            new SqlParameter("@TYPE", model.type),
                            new SqlParameter("@SICILNO", model.sicilNo),
                            new SqlParameter("@NEDEN", model.neden),
                            new SqlParameter("@BASTARIH", model.basTarih),
                            new SqlParameter("@GUN",  model.gun),
                            new SqlParameter("@BITTARIH", model.bitTarih),
                            new SqlParameter("@ISBASI", model.isBasiTarih),
                            new SqlParameter("@SEBEP", model.sebep),
                            new SqlParameter("@ACIKLAMA", model.aciklama),
                            new SqlParameter("@IDNO", model.idNo),
                            new SqlParameter("@USER", model.user),
                            new SqlParameter("@BASSAAT", model.basSaat) ,
                            new SqlParameter("@BITSAAT", model.bitSaat) };

                        List<GetDateCalculationResponse> response = SqlHelper.ExecuteProcedureReturnData<List<GetDateCalculationResponse>>(connString, "dbo.BCS_LIMIT_CONTROL", r => r.GetDateCalculation(), param3);
                        if (response[0].sonuc != "TAMAM")
                            return response;
                    }
                    else return response2;


                }



                SqlParameter[] param ={
                new SqlParameter("@TYPE",model.type),
                new SqlParameter("@SRKODU",model.sirket),
                new SqlParameter("@PRSICIL",model.sicilNo),
                new SqlParameter("@NEDEN",model.neden),
                new SqlParameter("@STARTDATE",model.basTarih),
                new SqlParameter("@ENDDATE",model.bitTarih),
                new SqlParameter("@DAY",model.gun),
                new SqlParameter("@STARTTIME",model.basSaat),
                new SqlParameter("@ENDTIME",model.bitSaat),
                new SqlParameter("@TIME",model.sure),
                new SqlParameter("@IOSTARTDATE",model.iobasTarih),
                new SqlParameter("@IOTIME",model.iobasSure),
                new SqlParameter("@INOUTPUT",model.inoutput),
                new SqlParameter("@POSTA",model.posta),
                outParam
                };

                SqlHelper.ExecuteProcedureReturnString(connString, "dbo.BCS_CONTROL_DEMAND", param);
                string result = (string)outParam.Value;
                List<GetDateCalculationResponse> list = new List<GetDateCalculationResponse>();
                GetDateCalculationResponse item = new GetDateCalculationResponse();
                item.sonuc = (result == "200" ? "TAMAM" :  "HATA");
                item.sebep = (result == "200" ? "TAMAM" : (result == "500" ? "SİSTEM HATA" : "GIRILEN TARIHTE KAYITLI " + flowName.ToUpper() + " IZIN VAR"));
                list.Add(item);
                return list;
            }
            else return null;



        }

        public string PostParameterInfo(PostParameterInfo model, string connString)
        {
            var outParam = new SqlParameter("@ReturnCode", SqlDbType.NVarChar, 20)
            {
                Direction = ParameterDirection.Output
            };

            SqlParameter[] param ={
                new SqlParameter("@firmName",model.firmName),
                new SqlParameter("@onayTuru",model.onayTuru),
                new SqlParameter("@prsBazli",model.prsBazli),
                new SqlParameter("@limitDash",model.limitDash),
                new SqlParameter("@reportDash",model.reportDash),
                new SqlParameter("@ret",model.ret),
                new SqlParameter("@sendMail",model.sendMail),
                new SqlParameter("@sendMailForm",model.sendMailForm),
                new SqlParameter("@sendMailFormTxt",model.sendMailFormTxt),
                new SqlParameter("@gecmisPostUser",model.gecmisPostUser),
                new SqlParameter("@mailOnay",model.mailOnay),
                new SqlParameter("@domain",model.domain),
                new SqlParameter("@smtp",model.smtp),
                new SqlParameter("@port",model.port),
                new SqlParameter("@smtpUser",model.smtpUser),
                new SqlParameter("@smtpPass",model.smtpPass),
                new SqlParameter("@ssl",model.ssl),
                new SqlParameter("@mail",model.mail),
                new SqlParameter("@mailFrom",model.mailFrom),
                new SqlParameter("@mailSubject",model.mailSubject),
                new SqlParameter("@reportUrl",model.reportUrl),
                new SqlParameter("@reportUrlSecure",model.reportUrlSecure),
                new SqlParameter("@language",model.language),
                new SqlParameter("@transferDate",model.transferDate),
                new SqlParameter("@fmTip",model.fmTip),
                new SqlParameter("@fmServis",model.fmServis),
                new SqlParameter("@fmYemek",model.fmYemek),
                new SqlParameter("@fmAcik",model.fmAcik),
                new SqlParameter("@fmNeden",model.fmNeden),
                new SqlParameter("@fmGecmisIslem",model.fmGecmisIslem),
                new SqlParameter("@fmGecmisIslemSure",model.fmGecmisIslemSure),
                new SqlParameter("@fmTemplate",model.fmTemplate),
                new SqlParameter("@fmUserMailBody",model.fmUserMailBody),
                new SqlParameter("@fmFormOnay",model.fmFormOnay),
                new SqlParameter("@fmUseForm",model.fmUseForm),
                new SqlParameter("@giYemek",model.giYemek),
                new SqlParameter("@giAcik",model.giAcik),
                new SqlParameter("@giNeden",model.giNeden),
                new SqlParameter("@giGecmisIslem",model.giGecmisIslem),
                new SqlParameter("@giGecmisIslemSure",model.giGecmisIslemSure),
                new SqlParameter("@giFormOnay",model.giFormOnay),
                new SqlParameter("@giYillikIzin",model.giYillikIzin),
                new SqlParameter("@giUseForm",model.giUseForm),
                new SqlParameter("@siYemek",model.siYemek),
                new SqlParameter("@siAcik",model.siAcik),
                new SqlParameter("@siNeden",model.siNeden),
                new SqlParameter("@siGecmisIslem",model.siGecmisIslem),
                new SqlParameter("@siGecmisIslemSure",model.siGecmisIslemSure),
                new SqlParameter("@siFormOnay",model.siFormOnay),
                new SqlParameter("@siUseForm",model.siUseForm),
                new SqlParameter("@siSaat",model.siSaat),

                new SqlParameter("@hktUseForm",model.hktUseForm),
                new SqlParameter("@hktFormOnay",model.hktFormOnay),
                new SqlParameter("@hktNeden",model.hktNeden),
                new SqlParameter("@hktAcik",model.hktAcik),
                new SqlParameter("@hktGecmisIslem",model.hktGecmisIslem),
                new SqlParameter("@hktGecmisIslemSure",model.hktGecmisIslemSure),

                new SqlParameter("@pstAcik",model.pstAcik),
                new SqlParameter("@pstGecmisIslem",model.pstGecmisIslem),
                new SqlParameter("@PstGecmisIslemSure",model.pstGecmisIslemSure),


                new SqlParameter("@link1Name",model.link1Name),
                new SqlParameter("@link1Url",model.link1Url),
                new SqlParameter("@link2Name",model.link2Name),
                new SqlParameter("@link2Url",model.link2Url),
                new SqlParameter("@link3Name",model.link3Name),
                new SqlParameter("@link3Url",model.link3Url),
                new SqlParameter("@link4Name",model.link4Name),
                new SqlParameter("@link4Url",model.link4Url),
                new SqlParameter("@link5Name",model.link5Name),
                new SqlParameter("@link5Url",model.link5Url),

                new SqlParameter("@IsDocument",model.isDocument),
                new SqlParameter("@ShiftControl",model.shiftControl),
                new SqlParameter("@ShiftHour",model.shiftHour),
                new SqlParameter("@ShiftPartHour",model.shiftPartHour),
                new SqlParameter("@ShiftPartHourTasks",model.shiftPartHourTasks),
                new SqlParameter("@ShiftAuth",model.shiftAuth),
                new SqlParameter("@ShiftAuthWeek",model.shiftAuthWeek),

                outParam
            };


            SqlHelper.ExecuteProcedureReturnString(connString, "BCS_PARAMETER_INSERT", param);
            return (string)outParam.Value;

        }


        public string SubmitApproveInfoMobile(int type, List<SubmitApproveInfoMobile> model, string connString)
        {

            string result = string.Empty;
            PostParameterInfo[] postParameterInfo = GetParameterInfo(connString).ToArray();
            List<MailDetails> mailDetails = new List<MailDetails>();
            for (int i = 0; i < model.ToArray().Length; i++)
            {
                var outParam = new SqlParameter("@ReturnCode", SqlDbType.NVarChar, 20)
                {
                    Direction = ParameterDirection.Output
                };

                SqlParameter[] param = {
                new SqlParameter("@IDNO",model[i].id),
                new SqlParameter("@ONAY",model[i].approve),
                new SqlParameter("@RET",model[i].reject),
                new SqlParameter("@ONAYKL",model[i].amir),
                new SqlParameter("@RET_ACIK", string.Empty),
                new SqlParameter("@TYPE", type),
                outParam
                };

                //if (postParameterInfo[0].sendMail)
                mailDetails.AddRange(SqlHelper.ExecuteProcedureReturnData(connString, "BCS_IZIN_UPDATE_MOBILE", r => r.TranslateApproveMailModel(), param));
                result = outParam.Value.ToString();
                if (result == "201" && postParameterInfo[0].sendMailForm)
                {
                    List<String> mails = postParameterInfo[0].sendMailFormTxt.Split(";").ToList();
                    List<SqlParameter> param1 = new List<SqlParameter>();
                    param1.Add(new SqlParameter("@IDNO", model[i].id));
                    param1.Add(new SqlParameter("@UserName", model[i].amir));
                    param1.Add(new SqlParameter("@Rule", 0));
                    param1.Add(new SqlParameter("@Type", type));
                    param1.Add(new SqlParameter("@FilterType", 1));
                    List<PoolApproveSelectModel> list = GetApproves(connString, param1.ToArray());
                    if (list.Count > 0)
                    {
                        PostApproveInfo info = new PostApproveInfo();
                        info.type = type;
                        info.aciklama = list[0].Description;
                        info.amirKodu = model[i].amir;
                        info.bastarih = (type == 2 || type == 3) ? list[0].Date : list[0].StartDate;
                        info.bassaat = (type == 2 || type == 3) ? Convert.ToString(list[0].StartDate) : "00:00";
                        info.bittarih = (type == 2 || type == 3) ? list[0].Date : list[0].EndDate;
                        info.bitsaat = (type == 2 || type == 3) ? Convert.ToString(list[0].EndDate) : "00:00";
                        info.isbasitarih = (type == 2 || type == 3) ? list[0].Date : list[0].WorkDate;
                        info.gun = (type == 2 || type == 3) ? 0 : Convert.ToInt32(list[0].Time);
                        info.neden = list[0].ExplationCode;
                        info.prsicil = list[0].UserName;
                        info.name = list[0].Name;
                        SendFormMail(connString, info, mails,false);


                    }
                }
            }

            if (postParameterInfo[0].sendMail)
                if (mailDetails != null)
                {
                    try
                    {
                        SendMail(mailDetails, connString, type,false);
                    }
                    catch
                    {
                        result = "500";
                    }
                }


            return result;
        }


        public string SubmitApproveInfo(int type, List<SubmitApproveInfo> model, string connString)
        {

            string result = string.Empty;
            PostParameterInfo[] postParameterInfo = GetParameterInfo(connString).ToArray();
            List<MailDetails> mailDetails = new List<MailDetails>();
            for (int i = 0; i < model.ToArray().Length; i++)
            {
                var outParam = new SqlParameter("@ReturnCode", SqlDbType.NVarChar, 20)
                {
                    Direction = ParameterDirection.Output
                };

                SqlParameter[] param = {
                new SqlParameter("@IDNO",model[i].id),
                new SqlParameter("@ONAY",model[i].approve),
                new SqlParameter("@RET",model[i].reject),
                new SqlParameter("@ONAYKL",model[i].amir),
                new SqlParameter("@RET_ACIK", model[i].retacik),
                new SqlParameter("@TYPE", type),
                outParam
                };

                //if (postParameterInfo[0].sendMail)
                mailDetails.AddRange(SqlHelper.ExecuteProcedureReturnData(connString, "BCS_IZIN_UPDATE", r => r.TranslateApproveMailModel(), param));
                result = outParam.Value.ToString();
                if (result == "201" && postParameterInfo[0].sendMailForm)
                {
                    List<String> mails = postParameterInfo[0].sendMailFormTxt.Split(";").ToList();
                    List<SqlParameter> param1 = new List<SqlParameter>();                   
                    param1.Add(new SqlParameter("@IDNO", model[i].id));
                    param1.Add(new SqlParameter("@UserName", model[i].amir));
                    param1.Add(new SqlParameter("@Rule", 0));
                    param1.Add(new SqlParameter("@Type", type));
                    param1.Add(new SqlParameter("@FilterType", 1));
                    List<PoolApproveSelectModel> list = GetApproves(connString,param1.ToArray());
                    if (list.Count>0)
                    {
                        PostApproveInfo info = new PostApproveInfo();
                        info.type = type;
                        info.aciklama = list[0].Description;
                        info.amirKodu= model[i].amir;
                        info.bastarih = (type==2 || type==3) ? list[0].Date : list[0].StartDate;
                        info.bassaat = (type == 2 || type == 3) ? Convert.ToString(list[0].StartDate) : "00:00";
                        info.bittarih = (type == 2 || type == 3) ? list[0].Date : list[0].EndDate;
                        info.bitsaat = (type == 2 || type == 3) ? Convert.ToString(list[0].EndDate) : "00:00";
                        info.isbasitarih = (type == 2 || type == 3) ? list[0].Date : list[0].WorkDate;
                        info.gun = (type == 2 || type == 3) ?  0: Convert.ToInt32(list[0].Time);
                        info.neden = list[0].ExplationCode;
                        info.prsicil = list[0].UserName;
                        info.name = list[0].Name;
                        SendFormMail(connString, info, mails,false);


                    }
                }
            }
        
            if (postParameterInfo[0].sendMail)
                if (mailDetails != null)
                {
                    try
                    {
                        SendMail(mailDetails, connString, type,false);
                    }
                    catch
                    {
                        result = "500";
                    }
                }


            return result;
        }

        public string PostDailyApproveInfo(List<PostApproveInfo> model, string connString)
        {
            string result = string.Empty;

            PostParameterInfo[] postParameterInfo = GetParameterInfo(connString).ToArray();
            List<MailDetails> mailDetails = new List<MailDetails>();
            for (int i = 0; i < model.ToArray().Length; i++)
            {

                var outParam = new SqlParameter("@ReturnCode", SqlDbType.NVarChar, 20)
                {
                    Direction = ParameterDirection.Output
                };

                SqlParameter[] param ={
                new SqlParameter("@TYPE",model[i].type),
                new SqlParameter("@SRKODU",model[i].srkodu),
                new SqlParameter("@PRSICIL",model[i].prsicil),
                new SqlParameter("@NEDEN",model[i].neden.Split('-')[0]),
                new SqlParameter("@BASTARIH",model[i].bastarih),
                new SqlParameter("@GUN",model[i].gun),
                new SqlParameter("@BITTARIH",model[i].bittarih),
                new SqlParameter("@ISBASI",model[i].isbasitarih),
                new SqlParameter("@SEBEP",model[i].sebep),
                new SqlParameter("@SEBEP2",model[i].sebep2),
                new SqlParameter("@ACIKLAMA",model[i].aciklama),
                new SqlParameter("@ONAY1",model[i].onay1),
                new SqlParameter("@ONAY1KL",model[i].onay1kl),
                new SqlParameter("@POST",model[i].post),
                new SqlParameter("@RET",model[i].ret),
                new SqlParameter("@AMIR",model[0].amir),
                new SqlParameter("@AMIR_KODU",model[0].amirKodu),
                outParam
            };


                mailDetails.AddRange(SqlHelper.ExecuteProcedureReturnData(connString, "BCS_GUNIZIN_INSERT", r => r.TranslateApproveMailModel(), param));
                result = outParam.Value.ToString();
                if (result=="201" && postParameterInfo[0].sendMailForm)
                {
                    List<String> mails = postParameterInfo[0].sendMailFormTxt.Split(";").ToList();
                    SendFormMail(connString, model[i], mails,true);
                }
            }

            if (postParameterInfo[0].sendMail)
                if (mailDetails != null)
                {
                    try
                    {
                        SendMail(mailDetails, connString, model.ToArray()[0].type,true);
                    }
                    catch
                    {
                        result = "500";
                    }
                }

            if (result == "201") result = "200";
            return result;

        }

        public string PostTimelyApproveInfo(List<PostApproveInfo> model, string connString)
        {
            string result = string.Empty;

            PostParameterInfo[] postParameterInfo = GetParameterInfo(connString).ToArray();
            List<MailDetails> mailDetails = new List<MailDetails>();
            for (int i = 0; i < model.ToArray().Length; i++)
            {

                var outParam = new SqlParameter("@ReturnCode", SqlDbType.NVarChar, 20)
                {
                    Direction = ParameterDirection.Output
                };

                SqlParameter[] param ={
                new SqlParameter("@SRKODU",model[i].srkodu),
                new SqlParameter("@PRSICIL",model[i].prsicil),
                new SqlParameter("@NEDEN",model[i].neden.Split('-')[0]),
                new SqlParameter("@TARIH",model[i].bastarih),
                new SqlParameter("@BASSAAT",model[i].bassaat),
                new SqlParameter("@SAAT",model[i].sure),
                new SqlParameter("@BITSAAT",model[i].bitsaat),
                new SqlParameter("@SEBEP",model[i].sebep),
                new SqlParameter("@SEBEP2",model[i].sebep2),
                new SqlParameter("@ACIKLAMA",model[i].aciklama),
                new SqlParameter("@ONAY1",model[i].onay1),
                new SqlParameter("@ONAY1KL",model[i].onay1kl),
                new SqlParameter("@POST",model[i].post),
                new SqlParameter("@RET",model[i].ret),
                new SqlParameter("@AMIR",model[0].amir),
                new SqlParameter("@AMIR_KODU",model[0].amirKodu),
                outParam
            };
                //if (postParameterInfo[0].sendMail)
                mailDetails.AddRange(SqlHelper.ExecuteProcedureReturnData(connString, "BCS_SAATIZIN_INSERT", r => r.TranslateApproveMailModel(), param));
                result = outParam.Value.ToString();
                if (result == "201" && postParameterInfo[0].sendMailForm)
                {
                    model[i].bittarih = model[i].bastarih;
                    model[i].isbasitarih= model[i].bastarih;
                    List<String> mails = postParameterInfo[0].sendMailFormTxt.Split(";").ToList();
                    SendFormMail(connString, model[i], mails,true);
                }

                if (result == "450")
                    return result;

            }

            if (postParameterInfo[0].sendMail)
                if (mailDetails != null)
                {
                    try
                    {
                        SendMail(mailDetails, connString, model.ToArray()[0].type,true);
                    }
                    catch
                    {

                        result = "500";
                    }
                }

            if (result == "201") result = "200";
            return result;

        }

        public string PostFMApproveInfo(List<PostApproveInfo> model, string connString)
        {


            string result = string.Empty;
            PostParameterInfo[] postParameterInfo = GetParameterInfo(connString).ToArray();
            List<MailDetails> mailDetails = new List<MailDetails>();

            for (int i = 0; i < model.ToArray().Length; i++)
            {


                string neden = string.Empty;
                if (model[i].neden != null)
                    neden = model[i].neden;

                var outParam = new SqlParameter("@ReturnCode", SqlDbType.NVarChar, 20)
                {
                    Direction = ParameterDirection.Output
                };

                SqlParameter[] param ={
                        new SqlParameter("@SRKODU",model[i].srkodu),
                        new SqlParameter("@PRSICIL",model[i].prsicil),
                        new SqlParameter("@TARIH",model[i].bastarih),
                        new SqlParameter("@SURE",model[i].sure),
                        new SqlParameter("@ACIKLAMA",model[i].aciklama),
                        new SqlParameter("@ACIKLAMA2",model[i].sebep2),
                        new SqlParameter("@NEDEN", neden.Split('-')[0]),
                        new SqlParameter("@GELIS_SERVIS_KULLANIM",model[i].gelis),
                        new SqlParameter("@GELIS_SERVISI",model[i].gelisservis),
                        new SqlParameter("@GELIS_SAATI",model[i].bassaat),
                        new SqlParameter("@DONUS_SERVIS_KULLANIM",model[i].gidis),
                        new SqlParameter("@DONUS_SERVISI",model[i].gidisservis),
                        new SqlParameter("@DONUS_SAATI",model[i].bitsaat),
                        new SqlParameter("@ONAY1",model[i].onay1),
                        new SqlParameter("@ONAY1KL",model[i].onay1kl),
                        new SqlParameter("@POST",model[i].post),
                        new SqlParameter("@RET",model[i].ret),
                        new SqlParameter("@BASZAMAN",model[i].bassaat),
                        new SqlParameter("@BITZAMAN",model[i].bitsaat),
                        new SqlParameter("@YEMEK",model[i].yemekyer),
                        new SqlParameter("@AMIR",model[0].amir),
                        new SqlParameter("@AMIR_KODU",model[0].amirKodu),
                         outParam
                    };

                //if (postParameterInfo[0].sendMail)
                mailDetails.AddRange(SqlHelper.ExecuteProcedureReturnData(connString, "BCS_MESAI_INSERT", r => r.TranslateApproveMailModel(), param));
                result = outParam.Value.ToString();
                if (result == "201" && postParameterInfo[0].sendMailForm)
                {
                    model[i].bittarih = model[i].bastarih;
                    model[i].isbasitarih = model[i].bastarih;
                    List<String> mails = postParameterInfo[0].sendMailFormTxt.Split(";").ToList();
                    SendFormMail(connString, model[i], mails,true);
                }

                if (result == "450")
                    return result;
            }

            if (postParameterInfo[0].sendMail)
                if (mailDetails != null)
                {
                    try
                    {
                        SendMail(mailDetails, connString, model.ToArray()[0].type,false);
                    }
                    catch
                    {
                        result = "500";
                    }
                }

            if (result == "201") result = "200";
            return result;

        }

        public string PostIOApproveInfo(List<PostApproveInfo> model, string connString)
        {


            string result = string.Empty;
            PostParameterInfo[] postParameterInfo = GetParameterInfo(connString).ToArray();
            List<MailDetails> mailDetails = new List<MailDetails>();

            for (int i = 0; i < model.ToArray().Length; i++)
            {


                string neden = string.Empty;
                if (model[i].ioreasonItem != null)
                    neden = model[i].ioreasonItem.Split('-')[0];

                var outParam = new SqlParameter("@ReturnCode", SqlDbType.NVarChar, 20)
                {
                    Direction = ParameterDirection.Output
                };

                SqlParameter[] param ={
                        new SqlParameter("@TYPE",model[i].type),
                        new SqlParameter("@SRKODU",model[i].srkodu),
                        new SqlParameter("@PRSICIL",model[i].prsicil),
                        new SqlParameter("@IOSTARTDATE",model[i].iostartdate),
                        new SqlParameter("@IOSTARTTIME",model[i].iostarttime),
                        new SqlParameter("@INOUTPUT",model[i].inoutput),
                        new SqlParameter("@NEDEN", neden),
                        new SqlParameter("@SEBEP", model[i].sebep),
                        new SqlParameter("@SEBEP2", model[i].sebep2),
                        new SqlParameter("@ACIKLAMA",model[i].iodesc),
                        new SqlParameter("@ONAY1",model[i].onay1),
                        new SqlParameter("@ONAY1KL",model[i].onay1kl),
                        new SqlParameter("@POST",model[i].post),
                        new SqlParameter("@RET",model[i].ret),
                        new SqlParameter("@AMIR",model[0].amir),
                        new SqlParameter("@AMIR_KODU",model[0].amirKodu),
                         outParam
                    };

                //if (postParameterInfo[0].sendMail)
                mailDetails.AddRange(SqlHelper.ExecuteProcedureReturnData(connString, "BCS_HAREKET_INSERT", r => r.TranslateApproveMailModel(), param));
                result = outParam.Value.ToString();


                if (result == "450")
                    return result;
            }

            if (postParameterInfo[0].sendMail)
                if (mailDetails != null)
                {
                    try
                    {
                        SendMail(mailDetails, connString, model.ToArray()[0].type,false);
                    }
                    catch
                    {
                        result = "500";
                    }
                }

            return result;

        }

        public string PostPostaApproveInfo(List<PostApproveInfo> model, string connString)
        {


            string result = string.Empty;
            PostParameterInfo[] postParameterInfo = GetParameterInfo(connString).ToArray();
            List<MailDetails> mailDetails = new List<MailDetails>();

            for (int i = 0; i < model.ToArray().Length; i++)
            {


                var outParam = new SqlParameter("@ReturnCode", SqlDbType.NVarChar, 20)
                {
                    Direction = ParameterDirection.Output
                };

                SqlParameter[] param ={
                        new SqlParameter("@TYPE",model[i].type),
                        new SqlParameter("@SRKODU",model[i].srkodu),
                        new SqlParameter("@PRSICIL",model[i].prsicil),
                        new SqlParameter("@STARTDATE",model[i].bastarih),
                        new SqlParameter("@POSTA",model[i].posta.Split('-')[0]),
                        new SqlParameter("@ACIKLAMA",model[i].aciklama),
                        new SqlParameter("@ONAY1",model[i].onay1),
                        new SqlParameter("@ONAY1KL",model[i].onay1kl),
                        new SqlParameter("@POST",model[i].post),
                        new SqlParameter("@RET",model[i].ret),
                        new SqlParameter("@AMIR",model[0].amir),
                        new SqlParameter("@AMIR_KODU",model[0].amirKodu),
                         outParam
                    };

                //if (postParameterInfo[0].sendMail)
                mailDetails.AddRange(SqlHelper.ExecuteProcedureReturnData(connString, "BCS_POSTA_INSERT", r => r.TranslateApproveMailModel(), param));
                result = outParam.Value.ToString();


                if (result == "450")
                    return result;
            }

            if (postParameterInfo[0].sendMail)
                if (mailDetails != null)
                {
                    try
                    {
                        SendMail(mailDetails, connString, model.ToArray()[0].type,false);
                    }
                    catch
                    {
                        result = "500";
                    }
                }

            return result;

        }

        public string PostPersonnelUpdateApproveInfo(List<PostApproveInfo> model, string connString)
        {


            string result = string.Empty;
            PostParameterInfo[] postParameterInfo = GetParameterInfo(connString).ToArray();
            List<MailDetails> mailDetails = new List<MailDetails>();

            for (int i = 0; i < model.ToArray().Length; i++)
            {


                string neden = string.Empty;
                if (model[i].neden != null)
                    neden = model[i].neden;

                var outParam = new SqlParameter("@ReturnCode", SqlDbType.NVarChar, 20)
                {
                    Direction = ParameterDirection.Output
                };

                SqlParameter[] param ={
                        new SqlParameter("@SRKODU",model[i].srkodu),
                        new SqlParameter("@PRSICIL",model[i].prsicil),
                        new SqlParameter("@NEDEN", string.Empty),
                        new SqlParameter("@BASTARIH",model[i].bastarih),
                        new SqlParameter("@TIP",model[i].neden.Split('-')[0]),
                        new SqlParameter("@KODU",model[i].amirkodu.Trim()),                        
                        new SqlParameter("@ACIKLAMA",model[i].sebep),
                        new SqlParameter("@ACIKLAMA2",model[i].sebep2),
                        new SqlParameter("@ONAY1",model[i].onay1),
                        new SqlParameter("@ONAY1KL",model[i].onay1kl),
                        new SqlParameter("@POST",model[i].post),
                        new SqlParameter("@RET",model[i].ret),
                        new SqlParameter("@AMIR",model[0].amir),
                        new SqlParameter("@AMIR_KODU",model[0].amirKodu),
                         outParam
                    };

                //if (postParameterInfo[0].sendMail)
                mailDetails.AddRange(SqlHelper.ExecuteProcedureReturnData(connString, "BCS_PERGUNCELLEME_INSERT", r => r.TranslateApproveMailModel(), param));
                result = outParam.Value.ToString();
                if (result == "201" && postParameterInfo[0].sendMailForm)
                {
                    model[i].bittarih = model[i].bastarih;
                    model[i].isbasitarih = model[i].bastarih;
                    List<String> mails = postParameterInfo[0].sendMailFormTxt.Split(";").ToList();
                    SendFormMail(connString, model[i], mails,true);
                }

                if (result == "450")
                    return result;
            }

            if (postParameterInfo[0].sendMail)
                if (mailDetails != null)
                {
                    try
                    {
                        SendMail(mailDetails, connString, model.ToArray()[0].type,false);
                    }
                    catch
                    {
                        result = "500";
                    }
                }

            if (result == "201") result = "200";
            return result;

        }


        public string PostRotaApproveInfo(List<PostApproveInfo> model, string connString)
        { 
            string strResult = string.Empty;
            for (int i = 0; i < model.ToArray().Length; i++)
            {
                var outParam = new SqlParameter("@ReturnCode", SqlDbType.NVarChar, 20)
                {
                    Direction = ParameterDirection.Output
                };

                SqlParameter[] param ={
                        new SqlParameter("@SIRKET",model[i].srkodu),                        
                        new SqlParameter("@PRSICIL",model[i].prsicil),
                        new SqlParameter("@AMIRORJ",model[0].amirKodu),
                        new SqlParameter("@AMIRROTA",model[i].amirkodu),
                        new SqlParameter("@BASTARIH",model[i].bastarih),
                        new SqlParameter("@BITTARIH",model[i].bittarih),
                        new SqlParameter("@ACIKLAMA",model[i].aciklama),
                         outParam
                    };

                SqlHelper.ExecuteProcedureReturnString(connString, "BCS_ROTASYON_INSERT", param);
                strResult = outParam.Value.ToString();
                 
            }


            return strResult;

        }

        public List<GetShiftInfoReponse> GetShiftApproveInfo(GetShiftInfoRequest model, string connString)
        {
            List<GetShiftInfoReponse> items = new List<GetShiftInfoReponse>();
            var outParam = new SqlParameter("@ReturnCode", SqlDbType.NVarChar, 20)
            {
                Direction = ParameterDirection.Output
            };

            SqlParameter[] param ={
                        new SqlParameter("@Srkodu",model.srkodu),
                        new SqlParameter("@UserName",model.username),
                        new SqlParameter("@Date1",model.shiftDate1),
                        new SqlParameter("@Date2",model.shiftDate2),
                        outParam
            };

            return SqlHelper.ExecuteProcedureReturnData<List<GetShiftInfoReponse>>(connString, "dbo.BCS_VARDIYA_SELECT", r => r.GetShiftApproveInfoModel(), param);
        }

        public string PostShiftApproveInfo(List<PostShiftInfo> model, string connString)
        {
            //foreach (var item in model)
            //{
            //    if (item.type1 == "db") item.vrd1 = null;if (item.type2 == "db") item.vrd2 = null;if (item.type3 == "db") item.vrd3 = null;if (item.type4 == "db") item.vrd4 = null;if (item.type5 == "db") item.vrd5 = null;
            //    if (item.type6 == "db") item.vrd6 = null;if (item.type7 == "db") item.vrd7 = null;if (item.type8 == "db") item.vrd8 = null;if (item.type9 == "db") item.vrd9 = null;if (item.type10 == "db") item.vrd10 = null;
            //    if (item.type11 == "db") item.vrd11 = null; if (item.type12 == "db") item.vrd12 = null; if (item.type13 == "db") item.vrd13 = null; if (item.type14 == "db") item.vrd14 = null; if (item.type15 == "db") item.vrd15 = null;
            //    if (item.type16 == "db") item.vrd16 = null; if (item.type17 == "db") item.vrd17 = null; if (item.type18 == "db") item.vrd18 = null; if (item.type19 == "db") item.vrd19 = null; if (item.type20 == "db") item.vrd20 = null;
            //    if (item.type21 == "db") item.vrd21 = null; if (item.type22 == "db") item.vrd22 = null; if (item.type23 == "db") item.vrd23 = null; if (item.type24 == "db") item.vrd24 = null; if (item.type25 == "db") item.vrd25 = null;
            //    if (item.type26 == "db") item.vrd26 = null; if (item.type27 == "db") item.vrd27 = null; if (item.type28 == "db") item.vrd28 = null; if (item.type29 == "db") item.vrd29 = null; if (item.type30 == "db") item.vrd30 = null;

            //} 

            string result = string.Empty;
            PostParameterInfo[] postParameterInfo = GetParameterInfo(connString).ToArray();
            List<MailDetails> mailDetails = new List<MailDetails>();
            string strResult = string.Empty;


            //strResult = "500";
            //return strResult;



            for (int i = 0; i < model.ToArray().Length; i++)
            {


                var outParam = new SqlParameter("@ReturnCode", SqlDbType.NVarChar, 20)
                {
                    Direction = ParameterDirection.Output
                };
                SqlParameter[] param ={
                        new SqlParameter("@SRKODU",model[i].srkodu),
                        new SqlParameter("@APPROVER",model[i].approver),
                        new SqlParameter("@PRSICIL",model[i].username),
                        new SqlParameter("@BASTARIH",model[i].bastarih),
                        new SqlParameter("@BITTARIH",model[i].bittarih),
                        new SqlParameter("@VRD1",model[i].vrd1),
                        new SqlParameter("@VRD2",model[i].vrd2),
                        new SqlParameter("@VRD3",model[i].vrd3),
                        new SqlParameter("@VRD4",model[i].vrd4),
                        new SqlParameter("@VRD5",model[i].vrd5),
                        new SqlParameter("@VRD6",model[i].vrd6),
                        new SqlParameter("@VRD7",model[i].vrd7),
                        new SqlParameter("@VRD8",model[i].vrd8),
                        new SqlParameter("@VRD9",model[i].vrd9),
                        new SqlParameter("@VRD10",model[i].vrd10),
                        new SqlParameter("@VRD11",model[i].vrd11),
                        new SqlParameter("@VRD12",model[i].vrd12),
                        new SqlParameter("@VRD13",model[i].vrd13),
                        new SqlParameter("@VRD14",model[i].vrd14),
                        new SqlParameter("@VRD15",model[i].vrd15),
                        new SqlParameter("@VRD16",model[i].vrd16),
                        new SqlParameter("@VRD17",model[i].vrd17),
                        new SqlParameter("@VRD18",model[i].vrd18),
                        new SqlParameter("@VRD19",model[i].vrd19),
                        new SqlParameter("@VRD20",model[i].vrd20),
                        new SqlParameter("@VRD21",model[i].vrd21),
                        new SqlParameter("@VRD22",model[i].vrd22),
                        new SqlParameter("@VRD23",model[i].vrd23),
                        new SqlParameter("@VRD24",model[i].vrd24),
                        new SqlParameter("@VRD25",model[i].vrd25),
                        new SqlParameter("@VRD26",model[i].vrd26),
                        new SqlParameter("@VRD27",model[i].vrd27),
                        new SqlParameter("@VRD28",model[i].vrd28),
                        new SqlParameter("@VRD29",model[i].vrd29),
                        new SqlParameter("@VRD30",model[i].vrd30),
                        outParam
                    };

                SqlHelper.ExecuteProcedureReturnString(connString, "BCS_VARDIYA_INSERT", param);
                strResult = outParam.Value.ToString();
            }

            return strResult;

        }

        public string ControlDemandInfo(List<PostApproveInfo> model, string connString)
        {
            string result = string.Empty;
            for (int i = 0; i < model.ToArray().Length; i++)
            {


                string neden = string.Empty;
                if (model[i].neden != null)
                    neden = model[i].neden;

                var outParam = new SqlParameter("@ReturnCode", SqlDbType.NVarChar, 20)
                {
                    Direction = ParameterDirection.Output
                };

                SqlParameter[] param ={
                        new SqlParameter("@TYPE",model[i].type),
                        new SqlParameter("@SRKODU",model[i].srkodu),
                        new SqlParameter("@PRSICIL",model[i].prsicil),
                        new SqlParameter("@STARTDATE",model[i].bastarih),
                        new SqlParameter("@ENDDATE",model[i].bittarih),
                        new SqlParameter("@STARTTIME",model[i].bassaat),
                        new SqlParameter("@ENDTIME",model[i].bitsaat),
                        new SqlParameter("@TIME",model[i].sure),
                        new SqlParameter("@IOSTARTDATE",model[i].iostartdate),
                        new SqlParameter("@IOTIME",model[i].iostarttime),
                        new SqlParameter("@INOUTPUT",model[i].inoutput),
                        new SqlParameter("@NEDEN", neden),
                        new SqlParameter("@SEBEP", model[i].sebep),
                        new SqlParameter("@SEBEP2", model[i].sebep2),
                        new SqlParameter("@ACIKLAMA",model[i].aciklama),
                        new SqlParameter("@ONAY1",model[i].onay1),
                        new SqlParameter("@ONAY1KL",model[i].onay1kl),
                        new SqlParameter("@POST",model[i].post),
                        new SqlParameter("@RET",model[i].ret),
                        new SqlParameter("@AMIR",model[0].amir),
                        new SqlParameter("@AMIR_KODU",model[0].amirKodu),
                         outParam
                    };

                //if (postParameterInfo[0].sendMail)
                SqlHelper.ExecuteProcedureReturnString(connString, "BCS_CONTROL_DEMAND", param);
                result = outParam.Value.ToString();


                if (result == "450")
                    return result;
            }


            return result;

        }

        public static string Encrypt(string toEncrypt, bool useHashing)
        {
            byte[] keyArray;
            byte[] toEncryptArray = UTF8Encoding.UTF8.GetBytes(toEncrypt);
            string key = "AAECAwQFBgcICQoLDA0ODw==";
            if (useHashing)
            {
                MD5CryptoServiceProvider hashmd5 = new MD5CryptoServiceProvider();
                keyArray = hashmd5.ComputeHash(UTF8Encoding.UTF8.GetBytes(key));
                hashmd5.Clear();
            }
            else
                keyArray = UTF8Encoding.UTF8.GetBytes(key);

            TripleDESCryptoServiceProvider tdes = new TripleDESCryptoServiceProvider();
            tdes.Key = keyArray;
            tdes.Mode = CipherMode.ECB;

            tdes.Padding = PaddingMode.PKCS7;

            ICryptoTransform cTransform = tdes.CreateEncryptor();
            byte[] resultArray =
              cTransform.TransformFinalBlock(toEncryptArray, 0,
              toEncryptArray.Length);
            tdes.Clear();
            return Convert.ToBase64String(resultArray, 0, resultArray.Length);
        }

        private void SendRememberMail(SendPasswordResponse item, string connString)
        {
            PostParameterInfo[] postParameterInfo = GetParameterInfo(connString).ToArray();
            MailMessage mail = new MailMessage();
            SmtpClient SmtpServer = new SmtpClient(postParameterInfo[0].smtp);
            mail.From = new MailAddress(postParameterInfo[0].mail, postParameterInfo[0].mailFrom);
            mail.To.Add(item.mail);
            mail.Subject = "Şifre Hatırlatma";
            mail.Body = "Sayın Yetkili,<br/>Kullanıcı bilgileriniz aşağıdadır.<br/> <br/> Kullanıcı Adınız:<b>" + item.user + "</b><br/>Kullanıcı şifreniz:<b>" + item.password + "</b><br/><br/>Bilgilerinize,";
            mail.IsBodyHtml = true;
            SmtpServer.Port = Convert.ToInt32(postParameterInfo[0].port);
            SmtpServer.Credentials = new System.Net.NetworkCredential(postParameterInfo[0].smtpUser, postParameterInfo[0].smtpPass);
            SmtpServer.EnableSsl = postParameterInfo[0].ssl;
            SmtpServer.Send(mail);
        }

        //private void SendMailSmtp(string connString, MailMessage mail, string strPerSicil, string strAmirSicil, bool insert, string strBody)
        //{
        //    mail.Body = strBody;
        //    SendMailSmtp(connString,mail,strPerSicil,strAmirSicil,insert);
        //}

        private void SendMailSmtp(string connString, MailMessage mail, string strPerSicil, string strAmirSicil, bool insert)
        {

            var outParam = new SqlParameter("@ReturnCode", SqlDbType.NVarChar, 20)
            {
                Direction = ParameterDirection.Output
            };




            try
            {
             

                PostParameterInfo[] postParameterInfo = GetParameterInfo(connString).ToArray();
                SmtpClient SmtpServer = new SmtpClient(postParameterInfo[0].smtp);
                SmtpServer.Host = postParameterInfo[0].smtp;
                SmtpServer.Port = Convert.ToInt32(postParameterInfo[0].port);
                SmtpServer.Credentials = new System.Net.NetworkCredential(postParameterInfo[0].smtpUser, postParameterInfo[0].smtpPass);
                SmtpServer.EnableSsl = postParameterInfo[0].ssl;
                SmtpServer.Send(mail);
                List<MailAddress> mailList = new List<MailAddress>();
                mailList.AddRange(mail.To);

                if (insert)
                {
                    SqlParameter[] param ={
                        new SqlParameter("@AmirKodu",strAmirSicil) };

                    List<PoolChiefSelectModel> mailCC = SqlHelper.ExecuteProcedureReturnData<List<PoolChiefSelectModel>>(connString, "BCS_PERSONEL_AMIR_GET", r => r.TranslatePoolChiefSelect(), param);
                    if (mailCC.Count > 0)
                    {
                        mail.To.Clear();
                        mail.Body = mail.Body.Replace("<th>Onay", "<th style='display: none;'>Onay");
                        mail.Body = mail.Body.Replace("<th>Ret", "<th style='display: none;'>Ret");
                        mail.Body = mail.Body.Replace("<th><a", "<th style='display: none;'><a");
                        mail.Body = mail.Body.Replace("Lütfen", "<table><tr><td style='display: none;'>Lütfen");
                        mail.Body = mail.Body.Replace("talebi değerlendiriniz.", "talebi değerlendiriniz.</td></tr></table>");
                        mail.To.Add(mailCC[0].MAIL_CC);
                        mailList.AddRange(mail.To);
                        SmtpServer.Send(mail);
                    }
                        //mail.CC.Add(mailCC[0].MAIL_CC);

                }

                SqlParameter[] param2 ={
                        new SqlParameter("@PerSicilNo",strPerSicil),
                        new SqlParameter("@AmirSicilNo",strAmirSicil),
                        new SqlParameter("@MailTo",mailList[0].Address),
                        new SqlParameter("@MailCC",mailList.Count==2 ? mailList[1].Address:null),
                        new SqlParameter("@MailBody",mail.Body),
                        new SqlParameter("@Dscr","Basarili"),
                        new SqlParameter("@Status",1),
                         outParam
                    };
                SqlHelper.ExecuteProcedureReturnData(connString, "BCS_MAIL_INSERT", r => r.TranslateApproveMailModel(), param2);

                


            }
            catch (Exception ex)
            {
                SqlParameter[] param ={
                        new SqlParameter("@PerSicilNo",strPerSicil),
                        new SqlParameter("@AmirSicilNo",strAmirSicil),
                        new SqlParameter("@MailTo",mail.To[0].Address),
                        new SqlParameter("@MailCC",mail.CC.Count==0? null:mail.CC[0].Address),
                        new SqlParameter("@MailBody",mail.Body),
                        new SqlParameter("@Dscr",ex.Message),
                        new SqlParameter("@Status",2),
                         outParam
                    };
                SqlHelper.ExecuteProcedureReturnData(connString, "BCS_MAIL_INSERT", r => r.TranslateApproveMailModel(), param);

            }


        }

        public static Stream GenerateStreamFromString(string s)
        {
            var stream = new MemoryStream();
            var writer = new StreamWriter(stream);
            writer.Write(s);
            writer.Flush();
            stream.Position = 0;
            return stream;
        }

        private void SendFormMail(string connString, PostApproveInfo model, List<String> mails, bool insert)
        {
            try
            {
                PostParameterInfo[] postParameterInfo = GetParameterInfo(connString).ToArray();
                MailMessage mail = new MailMessage();
                mail.From = new MailAddress(postParameterInfo[0].mail, postParameterInfo[0].mailFrom);
                mail.Subject = model.prsicil+ String.Format(" Nolu Personel Onaylı {0} İzin Formu", (model.type == 1 ? "Günlük" : (model.type == 2 ? "Saatlik" : ((model.type == 3 ? "Mesai" : ((model.type == 5 ? "Hareket" : ((model.type == 6 ? "Posta" : "Günlük")))))))));
                SqlParameter[] param1 = {
                new SqlParameter("@user", model.prsicil),
                new SqlParameter("@type", model.type),
                new SqlParameter("@reason",model.type== 3 ? 0: Convert.ToInt32(model.neden.Split('-')[0])),
                new SqlParameter("@begindate", model.bastarih),
                new SqlParameter("@begintime", model.bassaat==null?"00:00":model.bassaat),
                new SqlParameter("@enddate",  model.bittarih),
                new SqlParameter("@endtime", model.bitsaat==null?"00:00":model.bitsaat),
                new SqlParameter("@startdate", model.isbasitarih),
                new SqlParameter("@days", model.gun),
                new SqlParameter("@desc", model.aciklama),
                new SqlParameter("@approver", model.amirKodu) };
                PoolFormsSelectModel forms= this.GetForms(connString,param1);
                Stream st= GenerateStreamFromString(forms.template);
                System.Net.Mail.Attachment attachment= new System.Net.Mail.Attachment(st, model.prsicil+"_Izin.html");
                mail.Attachments.Add(attachment);
                string strMailBody =String.Format( "Sayin yetkili, <br> {0} nolu personele ait onaylanmış {1} izin form ektedir.<br> Bilginize," , model.prsicil, (model.type==1?"Günlük":(model.type == 2 ? "Saatlik":((model.type == 3 ? "Mesai" :((model.type == 5 ? "Hareket" :((model.type == 6 ? "Posta" :"Günlük")))))))).ToLower());
                foreach (var item in mails)
                    mail.To.Add(item);
                mail.IsBodyHtml = true;
                mail.Body = strMailBody;
                SendMailSmtp(connString, mail, model.prsicil, model.amirKodu, insert);
            }
            catch (Exception ex)
            {
            }
        }

        private void SendMail(List<MailDetails> items, string connString, int type, bool insert)
        {
            try
            {

                var config = new ConfigurationBuilder()
                    .SetBasePath(Directory.GetCurrentDirectory())
                    .AddJsonFile("appsettings.json").Build();
                string FrontEndUrl = config["FrontEndUrl"];
                PostParameterInfo[] postParameterInfo = GetParameterInfo(connString).ToArray();
                MailMessage mail = new MailMessage();
                mail.From = new MailAddress(postParameterInfo[0].mail, postParameterInfo[0].mailFrom);
                mail.Subject = postParameterInfo[0].mailSubject.Replace("@FLOW@", (type == 1 ? "Günlük İzin" : (type == 2 ? "Saatlik İzin" : (type == 3 ? "Fazla Mesai" : (type == 5 ? "Hareket Giriş" : "")))));
                string strMailBody = string.Empty;
                int j = 0;
                foreach (var item in items)
                {

                    string strPrsTable = string.Empty;
                    if (type == 2)
                    {
                        strPrsTable = "<table border='1' style='border: solid 1px black; width:600px;'>" +
                            "<th>Tarih</th><th>Başlama Saat</th><th>Bitiş Saat</th><th>Süre</th><th>Neden</th><th>Açıklama</th></tr>" +
                            "<tr><th>{0}</th><th>{1}</th><th>{2}</th><th>{3}</th><th>{4}</th><th>{5}</th></tr>" +
                            " </table> ";
                        strPrsTable = string.Format(strPrsTable, String.Format("{0:dd/MM/yyyy}", item.bastarih), String.Format("{0:HH:mm}", item.basSaat), String.Format("{0:HH:mm}", item.bitSaat), String.Format("{0:HH:mm}", item.saat), item.nedenAcik, item.aciklama);

                    } 
                    else
                    {
                        strPrsTable = "<table border='1' style='border: solid 1px black; width:600px;'>" +
                            "<th>Başlama Tarihi</th><th>Bitiş Tarihi</th><th>Gün</th><th>Neden</th><th>Açıklama</th></tr>" +
                            "<tr><th>{0}</th><th>{1}</th><th>{2}</th><th>{3}</th><th>{4}</th></tr>" +
                            " </table> ";

                        strPrsTable = string.Format(strPrsTable, String.Format("{0:dd/MM/yyyy}", item.bastarih), String.Format("{0:dd/MM/yyyy}", item.bittarih), item.gun.ToString(), item.nedenAcik, item.aciklama);
                    }

                    if (item.state)
                    {


                        //SqlParameter[] param ={
                        //new SqlParameter("@PerKodu",item.perSicil) };
                        //List<PoolChiefSelectModel> mailCC = SqlHelper.ExecuteProcedureReturnData<List<PoolChiefSelectModel>>(connString, "BCS_PERSONEL_AMIR_GET", r => r.TranslatePoolChiefSelect(), param);
                        //mail.CC.Add(mailCC[0].MAIL_CC);
                        if (item.perMail == null || item.perMail == string.Empty) continue;
                        mail.To.Add(item.perMail);
                        strMailBody = "<!DOCTYPE html><html><body>Sayın @ADISOYADI@,<br/><br/>@TARIH@ tarihli @FLOW@ talebiniz @AMIR@ onaylanmıştır.<br/><br/>Bilginize,<br/> <br/></body></html>".Replace("@ADISOYADI@", item.perName).Replace("@TARIH@", String.Format("{0:dd/MM/yyyy}", item.bastarih)).Replace("@FLOW@", (type == 1 ? "Günlük İzin" : (type == 2 ? "Saatlik İzin" : (type == 3 ? "Fazla Mesai" : (type == 5 ? "Hareket" : "Vardiya"))))).Replace("@AMIR@", item.amirName);
                        mail.Body = strMailBody;
                        mail.Body += strPrsTable;
                        mail.IsBodyHtml = true;
                        SendMailSmtp(connString, mail, item.perSicil, item.amirSicil,insert);
                        mail.To.Remove(new MailAddress(item.perMail));
                    }
                    else if (item.ret > 0)
                    {
                        if (item.perMail == null || item.perMail == string.Empty) continue;
                        mail.To.Add(item.perMail);
                        strMailBody = "<!DOCTYPE html><html><body>Sayın @ADISOYADI@,<br/><br/>@TARIH@ tarihli @FLOW@ talebiniz @AMIR@  @RET_ACIK@ reddedilmiştir.<br/><br/>Bilginize,</body></html>".Replace("@ADISOYADI@", item.perName).Replace("@TARIH@", String.Format("{0:dd/MM/yyyy}", item.bastarih)).Replace("@FLOW@", (type == 1 ? "Günlük İzin" : (type == 2 ? "Saatlik İzin" : (type == 3 ? "Fazla Mesai" : (type == 5 ? "Hareket" : "Vardiya"))))).Replace("@AMIR@", item.amirName).Replace("@RET_ACIK@", (item.retAcik != string.Empty ? item.retAcik + " açıklamasıyla" : string.Empty));

                        mail.Body = strMailBody;
                        mail.Body += strPrsTable;

                        mail.IsBodyHtml = true;
                        SendMailSmtp(connString, mail, item.perSicil, item.amirSicil, insert);
                        mail.To.Remove(new MailAddress(item.perMail));
                    }
                    else
                    {
                        if (item.amirMail == null || item.amirMail == string.Empty) continue;
                        mail.To.Add(item.amirMail);
                        strMailBody = postParameterInfo[0].fmUserMailBody.Replace("@ADISOYADI@", item.perName).Replace("@AMIR@", "yetkili").Replace("@FLOW@", (type == 1 ? "Günlük İzin" : (type == 2 ? "Saatlik İzin" : (type == 3 ? "Fazla Mesai" : (type == 5 ? "Hareket" : "Vardiya")))));
                        if (type == 1)
                        {
                            string strHtmlTable = "<table border='1' style='border: solid 1px black; width:600px;'>";

                            //if (j == 0)
                            //< th > Yıllık İzin Bakiyesi</ th >
                            if (postParameterInfo[0].mailOnay)

                                strHtmlTable += "<tr><th>Sicil No</th><th>Adı Soyadı</th><th>Neden</th><th>Başlama Tarihi</th><th>Bitiş Tarihi</th><th>Gün</th><th>Onay</th><th>Ret</th></tr>";
                            else
                                strHtmlTable += "<tr><th>Sicil No</th><th>Adı Soyadı</th><th>Neden</th><th>Başlama Tarihi</th><th>Bitiş Tarihi</th><th>Gün</th></tr>";
                            //< th > Yıllık İzin Bakiyesi</ th >
                            if (postParameterInfo[0].mailOnay)
                                strHtmlTable += string.Format("<tr><th>{0}</th><th>{1}</th><th>{2}</th><th>{3}</th><th>{4}</th><th>{5}</th><th><a  href={6}/mail-approve?data={7}>Onayla</a></th><th><a  href={6}/mail-approve?data={8}>Ret</a></th></tr>",
                                    item.perSicil, item.perName, item.nedenAcik, String.Format("{0:dd/MM/yyyy}", item.bastarih), String.Format("{0:dd/MM/yyyy}", item.bittarih), item.gun.ToString(), FrontEndUrl, 
                                      Encrypt(type.ToString() + ";" + item.idNo + ";" + item.amirSicil + ";1;0;", false), Encrypt(type.ToString() + ";" + item.idNo + ";" + item.amirSicil + ";0;1;", false));
                            else
                                strHtmlTable += string.Format("<tr><th>{0}</th><th>{1}</th><th>{2}</th><th>{3}</th><th>{4}</th><th>{5}</th></tr>",
                                    item.perSicil, item.perName, item.nedenAcik, String.Format("{0:dd/MM/yyyy}", item.bastarih), String.Format("{0:dd/MM/yyyy}", item.bittarih), item.gun.ToString());
                            //item.izinBakiye.ToString(), 
                            //< th >{ 6}</ th >
                            strHtmlTable += "</table>";
                            strMailBody = strMailBody.Replace("@TABLE@", strHtmlTable);
                            mail.Body = strMailBody;
                            mail.IsBodyHtml = true;
                            SendMailSmtp(connString, mail, item.perSicil, item.amirSicil, insert);

                            //j++;
                        }

                        if (type == 2)
                        {
                            string strHtmlTable = "<table border='1' style='border: solid 1px black; width:600px;'>";

                            //if (j == 0)
                            if (postParameterInfo[0].mailOnay)
                                strHtmlTable += "<tr><th>Sicil No</th><th>Adı Soyadı</th><th>Neden</th><th>Başlama Tarihi</th><th>Bas.Saat</th><th>Bit.Saat</th><th>Süre</th><th colspan=2></th></tr>";
                            else
                                strHtmlTable += "<tr><th>Sicil No</th><th>Adı Soyadı</th><th>Neden</th><th>Başlama Tarihi</th><th>Bas.Saat</th><th>Bit.Saat</th><th>Süre</th><th colspan=2></th></tr>";
                            if (postParameterInfo[0].mailOnay)
                                strHtmlTable += string.Format("<tr><th>{0}</th><th>{1}</th><th>{2}</th><th>{3}</th><th>{4}</th><th>{5}</th><th>{6}</th><th><a  href={7}/mail-approve?data={8}>Onayla</a></th><th><a  href={7}/mail-approve?data={9}>Ret</a></th></tr>",
                                item.perSicil, item.perName, item.nedenAcik, String.Format("{0:dd/MM/yyyy}", item.bastarih), String.Format("{0:HH:mm:ss}", item.basSaat), String.Format("{0:HH:mm:ss}", item.bitSaat), item.saat.ToString("H:mm"), FrontEndUrl, Encrypt(type.ToString() + ";" + item.idNo + ";" + item.amirSicil + ";1;0;", false), Encrypt(type.ToString() + ";" + item.idNo + ";" + item.amirSicil + ";0;1;", false));
                            else

                                strHtmlTable += string.Format("<tr><th>{0}</th><th>{1}</th><th>{2}</th><th>{3}</th><th>{4}</th><th>{5}</th><th>{6}</th></tr>",
                                item.perSicil, item.perName, item.nedenAcik, String.Format("{0:dd/MM/yyyy}", item.bastarih), String.Format("{0:HH:mm:ss}", item.basSaat), String.Format("{0:HH:mm:ss}", item.bitSaat), item.saat.ToString("H:mm"));

                            strHtmlTable += "</table>";
                            strMailBody = strMailBody.Replace("@TABLE@", strHtmlTable);
                            mail.Body = strMailBody;
                            mail.IsBodyHtml = true;
                            SendMailSmtp(connString, mail, item.perSicil, item.amirSicil, insert);

                            //j++;
                        }

                        if (type == 3)
                        {
                            string strHtmlTable = "<table border='1' style='border: solid 1px black; width:600px;'>";

                            //if (j == 0)
                            if (postParameterInfo[0].mailOnay)
                                strHtmlTable += "<tr><th>Sicil No</th><th>Adı Soyadı</th><th>Neden</th><th>Başlama Tarihi</th><th>Bas.Saat</th><th>Bit.Saat</th><th>Süre</th><th colspan=2></th></tr>";
                            else
                                strHtmlTable += "<tr><th>Sicil No</th><th>Adı Soyadı</th><th>Neden</th><th>Başlama Tarihi</th><th>Bas.Saat</th><th>Bit.Saat</th><th>Süre</th><th colspan=2></th></tr>";
                            if (postParameterInfo[0].mailOnay)
                                strHtmlTable += string.Format("<tr><th>{0}</th><th>{1}</th><th>{2}</th><th>{3}</th><th>{4}</th><th>{5}</th><th>{6}</th><th><a  href={7}/mail-approve?data={8}>Onayla</a></th><th><a href={7}/mail-approve?data={9}>Ret</a></th></tr>",
                                item.perSicil, item.perName, item.nedenAcik, String.Format("{0:dd/MM/yyyy}", item.bastarih), String.Format("{0:HH:mm:ss}", item.basSaat), String.Format("{0:HH:mm:ss}", item.bitSaat), item.saat.ToString("H:mm"), FrontEndUrl, Encrypt(type.ToString() + ";" + item.idNo + ";" + item.amirSicil + ";1;0;", false), Encrypt(type.ToString() + ";" + item.idNo + ";" + item.amirSicil + ";0;1;", false));
                            else

                                strHtmlTable += string.Format("<tr><th>{0}</th><th>{1}</th><th>{2}</th><th>{3}</th><th>{4}</th><th>{5}</th><th>{6}</th></tr>",
                                item.perSicil, item.perName, item.nedenAcik, String.Format("{0:dd/MM/yyyy}", item.bastarih), String.Format("{0:HH:mm:ss}", item.basSaat), String.Format("{0:HH:mm:ss}", item.bitSaat), item.saat.ToString("H:mm"));

                            strHtmlTable += "</table>";
                            strMailBody = strMailBody.Replace("@TABLE@", strHtmlTable);
                            mail.Body = strMailBody;
                            mail.IsBodyHtml = true;
                            SendMailSmtp(connString, mail, item.perSicil, item.amirSicil, insert);
                            //j++;
                        }

                        if (type == 4)
                        {
                            string strHtmlTable = "<table border='1' style='border: solid 1px black; width:600px;'>";
                            //if (j == 0)
                            strHtmlTable += "<tr><th>Sicil No</th><th>Adı Soyadı</th><th>Neden</th><th>Başlama Tarihi</th><th>Bitiş Tarihi</th><th>Gün</th><th>Yıllık İzin Bakiyesi</th></tr>";

                            strHtmlTable += "</table>";
                            strMailBody = strMailBody.Replace("@TABLE@", strHtmlTable);
                            mail.Body = strMailBody;
                            mail.IsBodyHtml = true;
                            SendMailSmtp(connString, mail, item.perSicil, item.amirSicil, insert);
                            //j++;
                        }


                    }
                }
                //string data = strHtmlTable; //JsonConvert.SerializeObject(items);

            }
            catch (Exception ex)
            {



            }

        }

        public string PostServerInfo(PostMachineInfo model, string connString)
        {

            model.barkodesSecureNum = "1945";
            string response = string.Empty;
            for (int i = 0; i < model.macAddress.ToArray().Length; i++)
            {

                var outParam = new SqlParameter("@ReturnCode", SqlDbType.NVarChar, 20)
                {
                    Direction = ParameterDirection.Output
                };

                if (model.userCount == null) model.userCount = "999";
                string key = model.macAddress.ToArray()[i] + ":" + model.userCount + ":" + model.barkodesNum + ":" + model.barkodesSecureNum;
                string salt = HashCreate();
                string encryptKey = HashCreate(key, salt);
                string getEncryptKey = encryptKey.Split('æ')[0];
                string getSalt = encryptKey.Split('æ')[1];
                //string result = ValidateHash(GetMACAddress(), getSalt, getEncryptKey).ToString();



                SqlParameter[] param ={
                new SqlParameter("@CompanyCode",model.companyCode),
                new SqlParameter("@CompanyName",model.companyName),
                new SqlParameter("@ServerAddress",model.macAddress.ToArray()[i]),
                new SqlParameter("@UserCount",model.userCount),
                new SqlParameter("@BarkodesNum",model.barkodesNum),
                new SqlParameter("@ValidNum",getSalt),
                new SqlParameter("@SecureNum",getEncryptKey),
                new SqlParameter("@Description","Key"),
                new SqlParameter("@TranDate",DateTime.Now)
            };


                SqlHelper.ExecuteProcedureReturnString(connString, "BCS_LICENSE_INSERT", param);
                //response= outParam.Value.ToString();

            }

            return response;

        }

        public List<PostMachineInfo> GetCompanyLisans(string connString, SqlParameter[] param)
        {
            return SqlHelper.ExecuteProcedureReturnData<List<PostMachineInfo>>(connString, "BCS_LICENSE_SELECT", r => r.TranslatePoolLisansSelect(), param);
        }

        bool ValidateHash(string value, string salt, string hash)
        => HashCreate(value, salt).Split('æ')[0] == hash;

        public GetControlLisansResponse GetControlLisans(string connString, SqlParameter[] param)
        {
            GetControlLisansResponse response = new GetControlLisansResponse();
            bool valid = false;
            List<MachineLicenseInfo> postMachineInfo = SqlHelper.ExecuteProcedureReturnData<List<MachineLicenseInfo>>(connString, "BCS_LICENSE_SELECT", r => r.TranslatePoolLisansControlSelect(), param);

            foreach (var item in postMachineInfo)
            {

                response.logo = Convert.ToBase64String(item.logo);
                if (ValidateHash(item.macAddress + ":" + item.userCount + ":" + item.barkodesNum + ":" + item.barkodesSecureNum, item.validNum, item.SecureNum))
                { response.valid = true; break; }

            }

            return response;
        }


        public List<GetPersonnelUpdateTypesResponse> GetPersonnelUpdateTypes(string connString, SqlParameter[] param)
        {
       
            List<GetPersonnelUpdateTypesResponse> response = SqlHelper.ExecuteProcedureReturnData<List<GetPersonnelUpdateTypesResponse>>(connString, "BCS_GET_PER_UPDATE_TYPES", r => r.TranslatePersonnelUpdateTypesSelect(), param);

            return response;
        }
        #endregion

    }
}
