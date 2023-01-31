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

    [Route("api/todo")]
    [ApiController]
    public class TodoController : Controller
    {
        private readonly IOptions<MySettingsModel> appSettings;

        public TodoController(IOptions<MySettingsModel> app)
        {
            appSettings = app;
        }


        [HttpGet("")]
        public IActionResult GetUsers(string user, string pass)
        {
            SqlParameter[] param = null;
            //SqlParameter[] param = { new SqlParameter("@UserName", user), new SqlParameter("@Password", pass) };
            var data = DbClientFactory<TodoDbClient>.Instance.GetTodo(appSettings.Value.ApproveDB, param);
            return Ok(data);
        }

        [HttpPost]
        public IActionResult SaveUser([FromBody]TodoModel model)
        {
            var msg = new Message<TodoModel>();
            var data = DbClientFactory<TodoDbClient>.Instance.SaveTodo(model, appSettings.Value.ApproveDB);
            if (data == "C200")
            {
                msg.IsSuccess = true;                
            }

            return Ok(msg);
        }
    }
}
