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
using Microsoft.AspNetCore.Cors;

namespace BcsApp.Controllers
{

    [Route("api/getCarInfo")]
    [ApiController]
    public class CarController : Controller
    {
        private readonly IOptions<MySettingsModel> appSettings;
        public IConfiguration Configuration { get; }


        public CarController(IOptions<MySettingsModel> app)
        {
            appSettings = app;
        }


        [EnableCors("CorsPolicy")]
        [HttpGet("{Id}")]
        public IActionResult GetCarInfo(int Id)
        {
            SqlParameter[] param={ new SqlParameter("@ID", Id) };
            var data = DbClientFactory<CarDbClient>.Instance.GetCarList(appSettings.Value.ApproveDB,param);
            return Ok(data);
        }

    }
}
