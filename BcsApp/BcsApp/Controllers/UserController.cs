using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Options;
using BcsApp.Models;
using BcsApp.Repository;
using BcsApp.Utility;

namespace BcsApp.Controllers
{

    [Route("api/getUser")]
    [ApiController]
    public class UserController : Controller
    {
        private readonly IOptions<MySettingsModel> appSettings;

        public UserController(IOptions<MySettingsModel> app)
        {
            appSettings = app;
        }


        [HttpGet("{user}/{pass}")]
        public IActionResult GetUsers(string user,string pass)
        {
            SqlParameter[] param = { new SqlParameter("@UserName", user), new SqlParameter("@Password", pass) };
            var data = DbClientFactory<UserDbClient>.Instance.GetUser(appSettings.Value.ApproveDB,param);
            return Ok(data);
        }

        [HttpGet("{id}")]
        public ActionResult<string> GetUserById(int id)
        {
            SqlParameter[] param ={new SqlParameter("@ID",id)};
            //var data = DbClientFactory<UserDbClient>.Instance.GetAllUsers(appSettings.Value.ApproveDB, param);
            //return Ok(data);
            return null;

        }


        [HttpPost]
        public IActionResult SaveUser([FromBody]ShiftInsertModel model)
        {
            var msg = new Message<UsersModel>();
            var data= DbClientFactory<UserDbClient>.Instance.SaveUser(model, appSettings.Value.ApproveDB);
            if (data=="C200")
            {
                msg.IsSuccess = true;
                //if (model.ID == 0)
                //    msg.ReturnMessage = "User saved succesfully";
                //else
                //    msg.ReturnMessage = "User updated succesfully";
            }

            return Ok(msg);
        }


    

       

        [HttpPut("{id}")]
        public void Put(int id, [FromBody] string value)
        {
        }

        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
