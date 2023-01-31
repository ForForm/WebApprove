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
    public class TodoDbClient
    {
        public List<TodoModel> GetTodo(string connString, SqlParameter[] param)
        {
            return SqlHelper.ExecuteProcedureReturnData<List<TodoModel>>(connString, "tbl_Todo_SELECT", r => r.TranslateTodoSelectModel(),param);
        }

        public string SaveTodo(TodoModel model,string connString)
        {
            var outParam = new SqlParameter("@ReturnCode", SqlDbType.NVarChar, 20)
            {
                Direction = ParameterDirection.Output
            };

            SqlParameter[] param ={
                new SqlParameter("@Key",model.Key),
                new SqlParameter("@Value",model.Value),
                outParam
            };

            SqlHelper.ExecuteProcedureReturnString(connString, "tbl_Todo_INSERT_TODO", param);
            return (string)outParam.Value;

        }

    }
}
