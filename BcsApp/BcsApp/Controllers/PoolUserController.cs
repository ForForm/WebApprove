using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Management;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Options;
using BcsApp.Models;
using BcsApp.Repository;
using BcsApp.Utility;
using System.Web;
using System.Text;
using System.Security.Cryptography;
using Microsoft.AspNetCore.Authentication;
using System.DirectoryServices.AccountManagement;
using System.Runtime.Serialization.Formatters.Binary;
using System.IO;
using Microsoft.AspNetCore.Http;

namespace BcsApp.Controllers
{


    #region Bcs
    [EnableCors("CorsPolicy")]
    [Route("api/pool/login")]
    [ApiController]
    public class PoolLoginController : Controller
    {

        private readonly IOptions<MySettingsModel> appSettings;
        public IConfiguration Configuration { get; }

        public PoolLoginController(IOptions<MySettingsModel> app)
        {
            appSettings = app;
        }

        [EnableCors("CorsPolicy")]
        [HttpPost]
        public IActionResult Login([FromBody]PoolUserLoginModel model)
        {

            //bool isValid = false;

            //if (model.domain != null)
            //{

            //    try
            //    {
            //        using (PrincipalContext pc = new PrincipalContext(ContextType.Domain,  model.domain))
            //        {
            //            //"kigili\\"
            //            isValid = pc.ValidateCredentials( model.userName, model.password);
            //        }

            //    }
            //    catch (Exception ex)
            //    {
            //        PoolUserLoginModel item = new PoolUserLoginModel();
            //        item.returnCode = "504";
            //        item.returnDscr = model.domain + " sunucu hata: " + ex.Message;
            //        return Ok(item);
            //    }

            //    if (isValid)
            //    {
            //        var data = DbClientFactory<PoolUserDbClient>.Instance.Login(model, appSettings.Value.ApproveDB);
            //        return Ok(data);
            //    }
            //    else
            //    {
            //        PoolUserLoginModel item = new PoolUserLoginModel();
            //        item.returnCode = "504";
            //        item.returnDscr = "Domain Kullanıcı Geçersiz";
            //        return Ok(item);
            //    }
            //}
            //else
            //{
            var data = DbClientFactory<PoolUserDbClient>.Instance.Login(model, appSettings.Value.ApproveDB);
            return Ok(data);

            //}
        }


        [EnableCors("CorsPolicy")]
        [HttpGet("secure/{username}")]
        public IActionResult GetSecureLoginInfo(string username)
        {
            SqlParameter[] param = { new SqlParameter("@UserName", username) };
            var data = DbClientFactory<PoolUserDbClient>.Instance.GetSecureLogin(appSettings.Value.ApproveDB, param);
            return Ok(data);
        }
    }


    [EnableCors("CorsPolicy")]
    [Route("api/pool/auth")]
    [ApiController]
    public class PoolAuthController : Controller
    {
        private readonly IOptions<MySettingsModel> appSettings;

        public PoolAuthController(IOptions<MySettingsModel> app)
        {
            appSettings = app;
        }

        [EnableCors("CorsPolicy")]
        [HttpGet("{user}/{type}")]
        public IActionResult GetAuth(string user, string type)
        {
            SqlParameter[] param = { new SqlParameter("@UserName", user), new SqlParameter("@Type", type) };
            var data = DbClientFactory<PoolUserDbClient>.Instance.GetAuth(appSettings.Value.ApproveDB, param);
            return Ok(data);
        }


        [EnableCors("CorsPolicy")]
        [HttpGet("doc/{user}")]
        public IActionResult GetDocAuth(string user)
        {
            SqlParameter[] param = { new SqlParameter("@UserName", user) };
            var data = DbClientFactory<PoolUserDbClient>.Instance.GetDocAuth(appSettings.Value.ApproveDB, param);
            return Ok(data);
        }

        [EnableCors("CorsPolicy")]
        [HttpGet("doc/employee/{user}")]
        public IActionResult GetDocEmp(string user)
        {
            SqlParameter[] param = { new SqlParameter("@UserName", user == "null" ? null : user) };
            var data = DbClientFactory<PoolUserDbClient>.Instance.GetDocEmp(appSettings.Value.ApproveDB, param);
            return Ok(data);
        }

        [EnableCors("CorsPolicy")]
        [HttpGet("doc/select/{user}")]
        public IActionResult GetDocSelect(string user)
        {
            SqlParameter[] param = { new SqlParameter("@UserName", user == "null" ? null : user) };
            var data = DbClientFactory<PoolUserDbClient>.Instance.GetDocSelect(appSettings.Value.ApproveDB, param);
            return Ok(data);
        }

        [EnableCors("CorsPolicy")]
        [HttpGet("doc/types/{user}")]
        public IActionResult GetDocTypes(string user)
        {
            SqlParameter[] param = { new SqlParameter("@UserName", user == "null" ? null : user) };
            var data = DbClientFactory<PoolUserDbClient>.Instance.GetDocTypes(appSettings.Value.ApproveDB, param);
            return Ok(data);
        }

        [EnableCors("CorsPolicy")]
        [HttpDelete("doc/delete/{id}")]
        public IActionResult DeleteDoc(int id)
        {
            var data = DbClientFactory<PoolUserDbClient>.Instance.DeleteDoc(id, appSettings.Value.ApproveDB);
            return Ok(data);
        }

        byte[] ObjectToByteArray(object obj)
        {
            if (obj == null)
                return null;
            BinaryFormatter bf = new BinaryFormatter();
            using (MemoryStream ms = new MemoryStream())
            {
                bf.Serialize(ms, obj);
                return ms.ToArray();
            }
        }


        [EnableCors("CorsPolicy")]
        [HttpPost("doc/file")]
        public async Task<IActionResult> UploadFile([FromForm] UploadFileInfo uploadFileInfo)
        {
            OkObjectResult result = null;

            uploadFileInfo.Date = uploadFileInfo.Date.Substring(0, 7);
            var config = new ConfigurationBuilder().SetBasePath(Directory.GetCurrentDirectory()).AddJsonFile("appsettings.json").Build();
            string assetsPath = config["AssetsPath"];
            var filePath = Path.Combine(assetsPath, uploadFileInfo.file.FileName);
            System.IO.File.Delete(assetsPath + @"\" + uploadFileInfo.Username + "_" + uploadFileInfo.Type + "_" + uploadFileInfo.Date + "." + uploadFileInfo.file.FileName.Split(".")[1]);

            using (var fileStream = new FileStream(filePath, FileMode.Create))
            {
                await uploadFileInfo.file.CopyToAsync(fileStream);
            }
            string newFilePath = filePath.Replace(uploadFileInfo.file.FileName.Split(".")[0], (uploadFileInfo.Username + "_" + uploadFileInfo.Type + "_" + uploadFileInfo.Date));


            System.IO.File.Move(filePath, newFilePath);
            DateTime operationTime = DateTime.Now;

            uploadFileInfo.FilePath = newFilePath;
            uploadFileInfo.FileName = uploadFileInfo.Username + "_" + uploadFileInfo.Type + "_" + uploadFileInfo.Date + "." + uploadFileInfo.file.FileName.Split(".")[1];
            var msg = new Message<PostApproveInfo>();
            var data = DbClientFactory<PoolUserDbClient>.Instance.PostFileApproveInfo(uploadFileInfo, appSettings.Value.ApproveDB);
            if (data == "200")
            {
                msg.IsSuccess = true;
                msg.ReturnMessage = "Talep kaydedildi.";
            }

            return Ok(result);

        }


    }





    [Route("api/pool/approves")]
    [ApiController]
    public class PoolApproveController : Controller
    {
        private readonly IOptions<MySettingsModel> appSettings;

        public PoolApproveController(IOptions<MySettingsModel> app)
        {
            appSettings = app;
        }


        [EnableCors("CorsPolicy")]
        [HttpGet("{user}/{rule}/{type}/{filterType}")]
        public IActionResult GetApproves(string user, int rule, string type, int filterType)
        {
            List<SqlParameter> param = new List<SqlParameter>();
            if (user != "null") param.Add(new SqlParameter("@UserName", user));
            if (rule != 0) param.Add(new SqlParameter("@Rule", rule));
            if (type != "null") param.Add(new SqlParameter("@Type", type));
            param.Add(new SqlParameter("@FilterType", filterType));

            if (type != "null")
            {
                var data = DbClientFactory<PoolUserDbClient>.Instance.GetApproves(appSettings.Value.ApproveDB, param.ToArray());
                return Ok(data);
            }
            else
            {
                var data = DbClientFactory<PoolUserDbClient>.Instance.GetApprovesTotal(appSettings.Value.ApproveDB, param.ToArray());
                return Ok(data);
            }
        }


        [EnableCors("CorsPolicy")]
        [HttpPost("daily")]
        public IActionResult PostDailyApproveInfo([FromBody]List<PostApproveInfo> model)
        {
            var msg = new Message<PostApproveInfo>();
            var data = DbClientFactory<PoolUserDbClient>.Instance.PostDailyApproveInfo(model, appSettings.Value.ApproveDB);
            if (data == "200")
            {
                msg.IsSuccess = true;
                msg.ReturnMessage = "Talep kaydedildi.";
            }
            else if (data == "450")
            {
                msg.IsSuccess = false;
                msg.ReturnMessage = "GİRİLEN TARIHTE ONAY BEKLEYEN İZİN VARDIR";

            }
            return Ok(msg);
        }


        [EnableCors("CorsPolicy")]
        [HttpPost("timely")]
        public IActionResult PostTimelyApproveInfo([FromBody]List<PostApproveInfo> model)
        {
            var msg = new Message<PostApproveInfo>();
            var data = DbClientFactory<PoolUserDbClient>.Instance.PostTimelyApproveInfo(model, appSettings.Value.ApproveDB);
            if (data == "200")
            {
                msg.IsSuccess = true;
                msg.ReturnMessage = "Talep kaydedildi.";
            }
            else if (data == "450")
            {
                msg.IsSuccess = false;
                msg.ReturnMessage = "GİRİLEN TARIHTE ONAY BEKLEYEN İZİN VARDIR";

            }

            return Ok(msg);
        }

        [EnableCors("CorsPolicy")]
        [HttpPost("fm")]
        public IActionResult PostFMApproveInfo([FromBody]List<PostApproveInfo> model)
        {
            var msg = new Message<PostApproveInfo>();
            var data = DbClientFactory<PoolUserDbClient>.Instance.PostFMApproveInfo(model, appSettings.Value.ApproveDB);
            if (data == "200")
            {
                msg.IsSuccess = true;
                msg.ReturnMessage = "Talep kaydedildi.";
            }
            else if (data == "450")
            {

                msg.IsSuccess = false;
                msg.ReturnMessage = "GİRİLEN TARIHTE ONAY BEKLEYEN İZİN VARDIR";

            }

            return Ok(msg);


        }


        [EnableCors("CorsPolicy")]
        [HttpPost("io")]
        public IActionResult PostIOApproveInfo([FromBody]List<PostApproveInfo> model)
        {

            var msg = new Message<PostApproveInfo>();
            if (model[0].iostarttime == null) return Ok(msg);

            var data = DbClientFactory<PoolUserDbClient>.Instance.PostIOApproveInfo(model, appSettings.Value.ApproveDB);
            if (data == "200")
            {
                msg.IsSuccess = true;
                msg.ReturnMessage = "Talep kaydedildi.";
            }
            else if (data == "450")
            {

                msg.IsSuccess = false;
                msg.ReturnMessage = "GİRİLEN TARIHTE MEVCUT HAREKET VARDIR.";

            }
            return Ok(msg);
        }


        [EnableCors("CorsPolicy")]
        [HttpGet("shift/{date1}/{date2}/{username}")]
        public IActionResult GetShiftApproveInfo(DateTime date1, DateTime date2, string username)
        {
            GetShiftInfoRequest model = new GetShiftInfoRequest();
            model.srkodu = "1";
            model.shiftDate1 = date1;
            model.shiftDate2 = date2;
            model.username = username;

            var msg = new Message<PostShiftInfo>();
            var data = DbClientFactory<PoolUserDbClient>.Instance.GetShiftApproveInfo(model, appSettings.Value.ApproveDB);
            return Ok(data);
        }

        [EnableCors("CorsPolicy")]
        [HttpPost("shift")]
        public IActionResult PostShiftApproveInfo([FromBody]List<PostShiftInfo> model)
        {
            var msg = new Message<PostShiftInfo>();
            var data = DbClientFactory<PoolUserDbClient>.Instance.PostShiftApproveInfo(model, appSettings.Value.ApproveDB);
            if (data == "200")
            {
                msg.IsSuccess = true;
                msg.ReturnMessage = "Talep kaydedildi.";
            }
            else if (data == "450")
            {

                msg.IsSuccess = false;
                msg.ReturnMessage = "GİRİLEN TARIHTE ONAY BEKLEYEN İZİN VARDIR";

            }
            else if (data == "500")
            {

                msg.IsSuccess = false;
                msg.ReturnMessage = "Aynı hafta içinde 45 saat aşımı vardır.";

            }
            return Ok(msg);
        }


        [EnableCors("CorsPolicy")]
        [HttpPost("posta")]
        public IActionResult PostPostaApproveInfo([FromBody]List<PostApproveInfo> model)
        {
            var msg = new Message<PostApproveInfo>();
            var data = DbClientFactory<PoolUserDbClient>.Instance.PostPostaApproveInfo(model, appSettings.Value.ApproveDB);
            if (data == "200")
            {
                msg.IsSuccess = true;
                msg.ReturnMessage = "Talep kaydedildi.";
            }
            else if (data == "450")
            {

                msg.IsSuccess = false;
                msg.ReturnMessage = "GİRİLEN TARIHTE ONAY BEKLEYEN İZİN VARDIR";

            }
            return Ok(msg);
        }

        [EnableCors("CorsPolicy")]
        [HttpPost("rota")]
        public IActionResult PostRotaApproveInfo([FromBody]List<PostApproveInfo> model)
        {
            var msg = new Message<PostApproveInfo>();
            var data = DbClientFactory<PoolUserDbClient>.Instance.PostRotaApproveInfo(model, appSettings.Value.ApproveDB);
            if (data == "200")
            {
                msg.IsSuccess = true;
                msg.ReturnMessage = "Talep kaydedildi.";
            }
            else if (data == "450")
            {

                msg.IsSuccess = false;
                msg.ReturnMessage = "GİRİLEN TARIHTE ONAY BEKLEYEN İZİN VARDIR";

            }
            return Ok(msg);
        }



        [EnableCors("CorsPolicy")]
        [HttpPost("control")]
        public IActionResult ControlDemandInfo([FromBody]List<PostApproveInfo> model)
        {
            var msg = new Message<PostApproveInfo>();
            var data = DbClientFactory<PoolUserDbClient>.Instance.ControlDemandInfo(model, appSettings.Value.ApproveDB);
            if (data == "200")
            {
                msg.IsSuccess = true;
                msg.ReturnMessage = "Talep kaydedildi.";
            }
            else if (data == "450")
            {

                msg.IsSuccess = true;
                msg.ReturnMessage = "GİRİLEN TARIHTE ONAY BEKLEYEN İZİN VARDIR";

            }
            return Ok(msg);
        }



        public static string Decrypt(string cipherString, bool useHashing)
        {
            byte[] keyArray;
            //cipherString = cipherString.Replace(@"""", string.Empty);
            //cipherString = cipherString.Replace('-', '+');
            //cipherString = cipherString.Replace('_', '/');
            byte[] toEncryptArray = Convert.FromBase64String(cipherString);
            string key = "AAECAwQFBgcICQoLDA0ODw==";

            if (useHashing)
            {
                MD5CryptoServiceProvider hashmd5 = new MD5CryptoServiceProvider();
                keyArray = hashmd5.ComputeHash(UTF8Encoding.UTF8.GetBytes(key));
                hashmd5.Clear();
            }
            else
            {
                keyArray = UTF8Encoding.UTF8.GetBytes(key);
            }

            TripleDESCryptoServiceProvider tdes = new TripleDESCryptoServiceProvider();
            tdes.Key = keyArray;
            tdes.Mode = CipherMode.ECB;
            tdes.Padding = PaddingMode.PKCS7;
            ICryptoTransform cTransform = tdes.CreateDecryptor();
            byte[] resultArray = cTransform.TransformFinalBlock(
                                 toEncryptArray, 0, toEncryptArray.Length);
            tdes.Clear();
            return UTF8Encoding.UTF8.GetString(resultArray);
        }
        [EnableCors("CorsPolicy")]
        [HttpPost("mail")]
        public IActionResult MailSubmitApproveInfo([FromBody]MailSubmitApprove approve)
        {
            var msg = new Message<SubmitApproveInfo>();
            try
            {
                //approve.data = approve.data.Replace(@"""", string.Empty);
                //approve.data = approve.data.Replace('-', '+');
                //approve.data = approve.data.Replace('_', '/');
                approve.data = approve.data.Replace(' ', '+');

                string[] data = Decrypt(approve.data, false).Split(';');
                List<SubmitApproveInfo> model = new List<SubmitApproveInfo>();
                SubmitApproveInfo item = new SubmitApproveInfo();
                item.type = Convert.ToInt32(data[0]);
                item.id = Convert.ToInt32(data[1]);
                item.amir = data[2];    
                item.approve = (Convert.ToInt32(data[3]) == 1) ? true : false;
                item.reject = (Convert.ToInt32(data[4]) == 1) ? true : false;
                model.Add(item);
                var result = DbClientFactory<PoolUserDbClient>.Instance.SubmitApproveInfo(item.type, model, appSettings.Value.ApproveDB);
                if (result == "200")
                {
                    msg.IsSuccess = true;
                    msg.ReturnMessage = item.id.ToString() + ((item.approve == true) ? " nolu talep onaylanmıştır." : " nolu talep reddedilmiştir.");
                }
                return Ok(msg);
            }
            catch (Exception ex)
            {
                msg.ReturnMessage = ex.Message;
                return Ok(msg);
            }



        }



        [EnableCors("CorsPolicy")]
        [HttpPost("amrsubmit/{type}")]
        public IActionResult SubmitApproveInfo([FromBody]List<SubmitApproveInfo> model, int type)
        {

            var msg = new Message<SubmitApproveInfo>();
            try
            {

                var data = DbClientFactory<PoolUserDbClient>.Instance.SubmitApproveInfo(type, model, appSettings.Value.ApproveDB);
                if (data == "200")
                {
                    msg.IsSuccess = true;
                    msg.ReturnMessage = "Talep kaydedildi.";
                }

                return Ok(msg);

            }
            catch (Exception ex)
            {
                msg.ReturnMessage = ex.Message;
                return Ok(msg);
            }

        }

        [EnableCors("CorsPolicy")]
        [HttpPost("amrsubmitMobile/{type}")]
        public IActionResult SubmitApproveInfoMobile([FromBody]List<SubmitApproveInfoMobile> model, int type)
        {

            var msg = new Message<SubmitApproveInfo>();
            try
            {

                var data = DbClientFactory<PoolUserDbClient>.Instance.SubmitApproveInfoMobile(type, model, appSettings.Value.ApproveDB);
                if (data == "200")
                {
                    msg.IsSuccess = true;
                    msg.ReturnMessage = "Talep kaydedildi.";
                }

                return Ok(msg);

            }
            catch (Exception ex)
            {
                msg.ReturnMessage = ex.Message;
                return Ok(msg);
            }

        }

    }

    [EnableCors("CorsPolicy")]
    [Route("api/pool/forms")]
    [ApiController]
    public class PoolFormsController : Controller
    {
        private readonly IOptions<MySettingsModel> appSettings;

        public PoolFormsController(IOptions<MySettingsModel> app)
        {
            appSettings = app;
        }

        //[HttpGet("{user}/{type}/{reason}")]
        [HttpPost]
        public IActionResult GetForms([FromBody]GetFormsInfo model)
        {
            try
            {
                SqlParameter[] param = {
                new SqlParameter("@user", model.user),
                new SqlParameter("@type", model.type),
                new SqlParameter("@reason", model.reason),
                new SqlParameter("@begindate", model.begindate),
                new SqlParameter("@begintime", model.begintime),
                new SqlParameter("@enddate", model.enddate),
                new SqlParameter("@endtime", model.endtime),
                new SqlParameter("@time", model.time),
                new SqlParameter("@startdate", model.startdate),
                new SqlParameter("@days", model.days),
                new SqlParameter("@desc", model.desc),
                new SqlParameter("@approver", model.approver)
            };
                var data = DbClientFactory<PoolUserDbClient>.Instance.GetForms(appSettings.Value.ApproveDB, param.ToArray());
                return Ok(data);

            }
            catch (Exception ex)
            {
                return Ok(ex.Message);
            }


        }


    }

    [EnableCors("CorsPolicy")]
    [Route("api/pool/fmservices")]
    [ApiController]
    public class PoolFmservicesController : Controller
    {
        private readonly IOptions<MySettingsModel> appSettings;

        public PoolFmservicesController(IOptions<MySettingsModel> app)
        {
            appSettings = app;
        }

        [HttpGet("")]
        public IActionResult GetFmservices(string user)
        {
            List<SqlParameter> param = new List<SqlParameter>();
            param.Add(new SqlParameter("@UserName", user));
            var data = DbClientFactory<PoolUserDbClient>.Instance.GetFmservices(appSettings.Value.ApproveDB, param.ToArray());
            return Ok(data);

        }


    }


    [EnableCors("CorsPolicy")]
    [Route("api/pool/reasons")]
    [ApiController]
    public class PoolReasonsController : Controller
    {
        private readonly IOptions<MySettingsModel> appSettings;

        public PoolReasonsController(IOptions<MySettingsModel> app)
        {
            appSettings = app;
        }


        [HttpGet("{user}/{type}")]
        public IActionResult GetReasons(string user, string type)
        {

            SqlParameter[] param = {
                new SqlParameter("@user", user),
                new SqlParameter("@type", type),
            };

            var data = DbClientFactory<PoolUserDbClient>.Instance.GetReasons(appSettings.Value.ApproveDB, param);
            return Ok(data);
        }

    }


    [EnableCors("CorsPolicy")]
    [Route("api/pool/shifts")]
    [ApiController]
    public class PoolShiftController : Controller
    {
        private readonly IOptions<MySettingsModel> appSettings;

        public PoolShiftController(IOptions<MySettingsModel> app)
        {
            appSettings = app;
        }


        [HttpGet("{srkodu}")]
        public IActionResult GetShifts(string srkodu)
        {

            SqlParameter[] param = {
                new SqlParameter("@Srkodu", srkodu),
            };

            var data = DbClientFactory<PoolUserDbClient>.Instance.GetShifts(appSettings.Value.ApproveDB, param);
            return Ok(data);
        }

    }

}

[EnableCors("CorsPolicy")]
[Route("api/pool/postas")]
[ApiController]
public class PoolPostasController : Controller
{
    private readonly IOptions<MySettingsModel> appSettings;

    public PoolPostasController(IOptions<MySettingsModel> app)
    {
        appSettings = app;
    }


    [HttpGet("")]
    public IActionResult GetPostas(string user, string type)
    {

        SqlParameter[] param = null;
        var data = DbClientFactory<PoolUserDbClient>.Instance.GetPostas(appSettings.Value.ApproveDB, param);
        return Ok(data);
    }

}


[EnableCors("CorsPolicy")]
[Route("api/pool/delegations")]
[ApiController]
public class PoolDelegationsController : Controller
{
    private readonly IOptions<MySettingsModel> appSettings;

    public PoolDelegationsController(IOptions<MySettingsModel> app)
    {
        appSettings = app;
    }


    [EnableCors("CorsPolicy")]
    [HttpGet("{user}")]
    public ActionResult<string> GetDelegations(string user)
    {
        SqlParameter[] param = { new SqlParameter("@UserName", user) };
        var data = DbClientFactory<PoolUserDbClient>.Instance.GetDelegations(appSettings.Value.ApproveDB, param.ToArray());
        return Ok(data);
    }


    [EnableCors("CorsPolicy")]
    [HttpGet("{user}/{vekil}")]
    public ActionResult<string> GetDelegations(string user, string vekil)
    {
        SqlParameter[] param = {
                new SqlParameter("@UserName", user),
                new SqlParameter("@Vekil", vekil)};
        var data = DbClientFactory<PoolUserDbClient>.Instance.GetDelegations(appSettings.Value.ApproveDB, param);
        return Ok(data);

    }


    [EnableCors("CorsPolicy")]
    [HttpPost]
    public ActionResult<string> PostDelegation(PoolDelegationSelectModel model)
    {
        var data = DbClientFactory<PoolUserDbClient>.Instance.PostDelegation(model, appSettings.Value.ApproveDB);
        return Ok(data);

    }

    [EnableCors("CorsPolicy")]
    [HttpDelete("{id}")]
    public ActionResult<string> DeleteDelegation(int id)
    {
        var data = DbClientFactory<PoolUserDbClient>.Instance.DeleteDelegation(id, appSettings.Value.ApproveDB);
        return Ok(data);

    }

}



[EnableCors("CorsPolicy")]
[Route("api/pool/chief")]
[ApiController]
public class PoolChiefController : Controller
{
    private readonly IOptions<MySettingsModel> appSettings;

    public PoolChiefController(IOptions<MySettingsModel> app)
    {
        appSettings = app;
    }

    [EnableCors("CorsPolicy")]
    [HttpGet("{amir}")]
    public IActionResult GetChiefs(string amir)
    {

        SqlParameter[] param = { new SqlParameter("@UserName", amir) };
        var data = DbClientFactory<PoolUserDbClient>.Instance.GetChief(appSettings.Value.ApproveDB, param);
        return Ok(data);
    }
     


}


[EnableCors("CorsPolicy")]
[Route("api/pool/user")]
[ApiController]
public class PoolUserController : Controller
{
    private readonly IOptions<MySettingsModel> appSettings;

    public PoolUserController(IOptions<MySettingsModel> app)
    {
        appSettings = app;
    }

    [EnableCors("CorsPolicy")]
    [HttpGet("")]
    public IActionResult GetUsers()
    {
        SqlParameter[] param = null;
        //{ new SqlParameter("@UserName", user), new SqlParameter("@Password", pass) };
        var data = DbClientFactory<PoolUserDbClient>.Instance.GetUser(appSettings.Value.ApproveDB, param);
        return Ok(data);
    }

    [EnableCors("CorsPolicy")]
    [HttpGet("limit/{user}/{type}")]
    public IActionResult GetUserLimit(string user, string type)
    {
        SqlParameter[] param = { new SqlParameter("@UserName", user), new SqlParameter("@Type", type) };
        var data = DbClientFactory<PoolUserDbClient>.Instance.GetUserLimit(appSettings.Value.ApproveDB, param);
        return Ok(data);
    }


    [EnableCors("CorsPolicy")]
    [HttpGet("dashreports/{user}")]
    public IActionResult GetUserDashReports(string user)
    {
        SqlParameter[] param = { new SqlParameter("@UserName", user)  };
        var data = DbClientFactory<PoolUserDbClient>.Instance.GetUserDashReports(appSettings.Value.ApproveDB, param);
        return Ok(data);
    }


    [EnableCors("CorsPolicy")]
    [HttpGet("dashreports/execute/{spname}/{company}/{user}")]
    public IActionResult ExecuteDashReports(string spname, string company, string user)
    {
        SqlParameter[] param = {  new SqlParameter("@Company", company== "null"?null:company),new SqlParameter("@UserName", user=="null" ? null : user) };
        var data = DbClientFactory<PoolUserDbClient>.Instance.ExecuteDashReports(appSettings.Value.ApproveDB, spname, param);
        return Ok(data);
    }

    [EnableCors("CorsPolicy")]
    [HttpGet("{user}/{type}")]
    public ActionResult<string> GetUserById(string user, string type)
    {
        SqlParameter[] param = { new SqlParameter("@UserName", user), new SqlParameter("@Type", type) };
        if (type == "V")
        {
            var data = DbClientFactory<PoolUserDbClient>.Instance.GetUserVardiya(appSettings.Value.ApproveDB, param);
            return Ok(data);
        }
        else
        {
            var data = DbClientFactory<PoolUserDbClient>.Instance.GetUser(appSettings.Value.ApproveDB, param);
            return Ok(data);
        }


    }


    //[HttpPost]
    //public IActionResult SaveUser([FromBody]PoolUserSelectModel model)
    //{
    //    var msg = new Message<UsersModel>();
    //    var data = DbClientFactory<PoolUserDbClient>.Instance.SaveUser(model, appSettings.Value.ApproveDB);
    //    if (data == "C200")
    //    {
    //        msg.IsSuccess = true;
    //        if (model.ID == 0)
    //            msg.ReturnMessage = "Kullanıcı kaydedildi.";
    //        else
    //            msg.ReturnMessage = "Kullanıcı güncellendi.";
    //    }
    //    else if (data == "C201")
    //        msg.ReturnMessage = "Kullanıcı zaten tanımlı.";

    //    return Ok(msg);
    //}

    [EnableCors("CorsPolicy")]
    [HttpDelete("{id}")]
    public IActionResult Delete(int id)
    {
        var msg = new Message<UsersModel>();
        var data = DbClientFactory<PoolUserDbClient>.Instance.DeleteUser(id, appSettings.Value.ApproveDB);
        if (data == "C200")
        {
            msg.IsSuccess = true;
            msg.ReturnMessage = "Kullanıcı silindi.";
        }

        return Ok(msg);
    }

    [EnableCors("CorsPolicy")]
    [HttpPut("{id}")]
    public void Put(int id, [FromBody] string value)
    {
    }


}

[EnableCors("CorsPolicy")]
[Route("api/pool/machine")]
[ApiController]
public class PoolMachineController : Controller
{
    private readonly IOptions<MySettingsModel> appSettings;

    public PoolMachineController(IOptions<MySettingsModel> app)
    {
        appSettings = app;
    }


    public List<string> GetMACAddressInfo()
    {
        List<string> list = new List<string>();
        // where IPEnabled=true
        ManagementObjectSearcher searcher = new ManagementObjectSearcher("SELECT * FROM Win32_NetworkAdapterConfiguration");
        //IEnumerable<ManagementObject> objects = searcher.Get().Cast<ManagementObject>();
        //string mac = (from o in objects orderby o["IPConnectionMetric"] select o["MACAddress"].ToString()).FirstOrDefault();

        ManagementObjectCollection queryCollection = searcher.Get();
        foreach (ManagementObject mo in queryCollection)
        {
            try
            {
                list.Add(mo["MACAddress"].ToString());
            }
            catch { }
        }

        return list;
    }

    [EnableCors("CorsPolicy")]
    [HttpGet("")]
    public IActionResult GetMacAddress()
    {
        MachineInfo item = new MachineInfo();
        item.macAddresses = GetMACAddressInfo();
        return Ok(item);

    }

    [EnableCors("CorsPolicy")]
    [HttpPost]
    public IActionResult SaveMacAddress([FromBody]PostMachineInfo model)
    {
        var msg = new Message<UsersModel>();
        var data = DbClientFactory<PoolUserDbClient>.Instance.PostServerInfo(model, appSettings.Value.ApproveDB);
        ////if (data == "C200")
        //{
        msg.IsSuccess = true;
        //if (model.ID == 0)
        msg.ReturnMessage = "Kullanıcı kaydedildi.";
        //else
        //    msg.ReturnMessage = "Kullanıcı güncellendi.";
        //}
        //else if (data == "C201")
        //    msg.ReturnMessage = "Kullanıcı zaten tanımlı.";
        return Ok(msg);
    }



}


[EnableCors("CorsPolicy")]
[Route("api/pool/language/label")]
[ApiController]
public class PoolLanguageController : Controller
{
    private readonly IOptions<MySettingsModel> appSettings;

    [EnableCors("CorsPolicy")]
    [HttpGet("")]
    public IActionResult GetLanguage()
    {

        SqlParameter[] param = null;
        var data = DbClientFactory<PoolUserDbClient>.Instance.GetLanguages(appSettings.Value.ApproveDB);
        return Ok(data);

    }
}

[EnableCors("CorsPolicy")]
[Route("api/pool/parameter")]
[ApiController]
public class PoolParameterController : Controller
{
    private readonly IOptions<MySettingsModel> appSettings;

    public PoolParameterController(IOptions<MySettingsModel> app)
    {
        appSettings = app;
    }

    [EnableCors("CorsPolicy")]
    [HttpGet("")]
    public IActionResult GetParameters()
    {

        SqlParameter[] param = null;
        var data = DbClientFactory<PoolUserDbClient>.Instance.GetParameterInfo(appSettings.Value.ApproveDB);
        return Ok(data);

    }

    [EnableCors("CorsPolicy")]
    [HttpGet("language/label/{lng}")]
    public IActionResult GetLanguageInfo(int lng)
    {
        SqlParameter[] param = null;
        var data = DbClientFactory<PoolUserDbClient>.Instance.GetLngInfo(appSettings.Value.ApproveDB, lng);
        return Ok(data);

    }

    [EnableCors("CorsPolicy")]
    [HttpGet("language/{user}/{userType}/{lng}")]
    public IActionResult GetLanguage(string user, string userType, string lng)
    {

        SqlParameter[] param = null;
        var data = DbClientFactory<PoolUserDbClient>.Instance.GetLng(appSettings.Value.ApproveDB, user, userType, lng);
        return Ok(data);

    }


    [EnableCors("CorsPolicy")]
    [HttpPost("language/{user}/{userType}/{lng}")]
    public IActionResult PostLanguage(string user, string userType, string lng)
    {
        SqlParameter[] param = null;
        var data = DbClientFactory<PoolUserDbClient>.Instance.PostLng(appSettings.Value.ApproveDB, user, userType, lng);
        return Ok(data);

    }


    [EnableCors("CorsPolicy")]
    [HttpPost]
    public IActionResult PostParameters([FromBody]PostParameterInfo model)
    {
        var msg = new Message<UsersModel>();
        var data = DbClientFactory<PoolUserDbClient>.Instance.PostParameterInfo(model, appSettings.Value.ApproveDB);
        if (data == "200")
        {
            msg.IsSuccess = true;
            if (model.ID == 0)
                msg.ReturnMessage = "Parametre kaydedildi.";
        }
        return Ok(msg);
    }



    [EnableCors("CorsPolicy")]
    [HttpPost("DateCalculation")]
    public IActionResult GetDateCalculation([FromBody]GetDateCalculationInfo model)
    {

        SqlParameter[] param = null;
        var data = DbClientFactory<PoolUserDbClient>.Instance.GetDateCalculation(model, appSettings.Value.ApproveDB);
        return Ok(data);

    }


}


[EnableCors("CorsPolicy")]
[Route("api/pool/lisans")]
[ApiController]
public class PoolLisansController : Controller
{
    private readonly IOptions<MySettingsModel> appSettings;

    public PoolLisansController(IOptions<MySettingsModel> app)
    {
        appSettings = app;
    }

    [EnableCors("CorsPolicy")]
    [HttpGet("")]
    public IActionResult GetCompanyLisans()
    {
        SqlParameter[] param = null;
        var data = DbClientFactory<PoolUserDbClient>.Instance.GetCompanyLisans(appSettings.Value.ApproveDB, param);
        if (data == null)
            return NotFound(data);
        else
            return Ok(data);
    }

    [EnableCors("CorsPolicy")]
    [HttpGet("control")]
    public IActionResult GetControlLisans()
    {
        SqlParameter[] param = null;
        var data = DbClientFactory<PoolUserDbClient>.Instance.GetControlLisans(appSettings.Value.ApproveDB, param);
        return Ok(data);
    }



}


[Route("api/pool/reports")]
[ApiController]
public class PoolReportController : Controller
{
    private readonly IOptions<MySettingsModel> appSettings;

    public PoolReportController(IOptions<MySettingsModel> app)
    {
        appSettings = app;
    }

    [EnableCors("CorsPolicy")]
    [HttpPost]
    public IActionResult GetIzin([FromBody]PoolReportModel model)
    {

        SqlParameter[] param = null;
        var data = DbClientFactory<PoolUserDbClient>.Instance.GetIzinReport(model, appSettings.Value.ApproveDB);
        return Ok(data);

    }
}

[Route("api/pool/repassword")]
[ApiController]
public class PoolRepasswordController : Controller
{
    private readonly IOptions<MySettingsModel> appSettings;

    public PoolRepasswordController(IOptions<MySettingsModel> app)
    {
        appSettings = app;
    }


    [EnableCors("CorsPolicy")]
    [HttpPost]
    public IActionResult RePassword([FromBody]PoolRePasswordModel model)
    {
        SqlParameter[] param = null;
        var data = DbClientFactory<PoolUserDbClient>.Instance.RePassword(model, appSettings.Value.ApproveDB);
        return Ok(data);

    }
}

[Route("api/pool/sendpassword")]
[ApiController]
public class PoolsendPasswordController : Controller
{
    private readonly IOptions<MySettingsModel> appSettings;

    public PoolsendPasswordController(IOptions<MySettingsModel> app)
    {
        appSettings = app;
    }


    [EnableCors("CorsPolicy")]
    [HttpPost]
    public IActionResult SendPassword([FromBody]SendPasswordRequest model)
    {
        var data = DbClientFactory<PoolUserDbClient>.Instance.SendPassword(model, appSettings.Value.ApproveDB);
        return Ok(data);

    }
}




[Route("api/pool/update")]
[ApiController]
public class PoolUpdateController : Controller
{
    private readonly IOptions<MySettingsModel> appSettings;

    public PoolUpdateController(IOptions<MySettingsModel> app)
    {
        appSettings = app;
    }


    [EnableCors("CorsPolicy")]
    [HttpGet("{type}")]
    public IActionResult GetPersonnelUpdateTypes(string type)
    {
        SqlParameter[] param = { new SqlParameter("@Company", "1"), new SqlParameter("@Type", type) };
        var data = DbClientFactory<PoolUserDbClient>.Instance.GetPersonnelUpdateTypes(appSettings.Value.ApproveDB, param);
        return Ok(data);
    }

    [EnableCors("CorsPolicy")]
    [HttpPost]
    public IActionResult PostPersonnelUpdateTypes([FromBody]List<PostApproveInfo> model)
    {

        var msg = new Message<PostApproveInfo>();
        var data = DbClientFactory<PoolUserDbClient>.Instance.PostPersonnelUpdateApproveInfo(model, appSettings.Value.ApproveDB);
        if (data == "200")
        {
            msg.IsSuccess = true;
            msg.ReturnMessage = "Talep kaydedildi.";
        }
        else if (data == "450")
        {

            msg.IsSuccess = false;
            msg.ReturnMessage = "GİRİLEN TARIHTE ONAY BEKLEYEN İZİN VARDIR";

        }

        return Ok(msg);


    }
}

#endregion



