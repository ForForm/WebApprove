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
    public class UserDbClient
    {
        public List<UsersSelectModel> GetUser(string connString, SqlParameter[] param)
        {
            return SqlHelper.ExecuteProcedureReturnData<List<UsersSelectModel>>(connString, "KULLANICI_SELECT", r => r.TranslateUserSelectModel(),param);
        }

        public string SaveUser(ShiftInsertModel model,string connString)
        {
            var outParam = new SqlParameter("@ReturnCode", SqlDbType.NVarChar, 20)
            {
                Direction = ParameterDirection.Output
            };

            SqlParameter[] param ={
                //new SqlParameter("@Id",model.DepartmanID),
                new SqlParameter("@DepartmanID",model.departmanID),
                new SqlParameter("@PersonelID",model.personelID),
                new SqlParameter("@BeginDate",model.beginDate),
                new SqlParameter("@BeginTime",model.beginTime),
                new SqlParameter("@EndDate",model.endDate),
                new SqlParameter("@EndTime",model.endTime),
                outParam
            };

            SqlHelper.ExecuteProcedureReturnString(connString, "tbl_Shift_INSERT", param);
            return (string)outParam.Value;

        }

    }
}
