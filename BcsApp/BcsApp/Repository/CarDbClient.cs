using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;
using BcsApp.Models;
using BcsApp.Translator;

namespace BcsApp.Repository
{
    public class CarDbClient
    {
        public MapDetails GetCarList(string connString, SqlParameter[] param)
        {
            return SqlHelper.ExecuteProcedureReturnData<MapDetails>(connString, "tbl_CarLocations_SELECT_API", r => r.TranslateCarSelectModel(),param);
        }

    }
}
