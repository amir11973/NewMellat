using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Activation;
using System.Text;

namespace MellatApi
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "SqlOData" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select SqlOData.svc or SqlOData.svc.cs at the Solution Explorer and start debugging.
   
    [AspNetCompatibilityRequirements(RequirementsMode = AspNetCompatibilityRequirementsMode.Required)]
    public class SqlOData : ISqlOData
    {
        public string GetData(string tableName, string selectExp, string filterExp, string sortExp, string groupExp)
        {
            //Debugger.Break();
            //SPContext c = SPContext.Current;
            string command = "";
            try
            {
                
                SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["NewMellat"].ConnectionString);
           
                string filter  = string.IsNullOrEmpty(filterExp) ? "" : "Where " + filterExp.Replace(" eq ", " = ").Replace(" ge ", " >= ").Replace(" le ", " <= ").Replace(" ne ", " <> ").Replace(" gt ", " > ").Replace(" lt ", " < ");
                //filter.Contains("subs")
                command = string.Format("select {0} from {1} {2} {3} {4}",
                                        string.IsNullOrEmpty(selectExp) ? "*" : selectExp,
                                        tableName,
                                        filter,
                                        string.IsNullOrEmpty(groupExp) ? "" : " group by " + groupExp,
                                        string.IsNullOrEmpty(sortExp) ? "" : " order by " + sortExp
                                        );
                SqlDataAdapter adpt = new SqlDataAdapter(command, connection);
                DataSet ds = new DataSet();
                adpt.Fill(ds);
                return string.Format("{{\"d\":{{\"results\":{0}}}}}", DataTableToJSON(ds.Tables[0]));
               
               
            }
            catch (Exception ex)
            {

                return command +"\n"+ex.ToString();
            }




        }

        public string GetData2(string userName, string tableName, string selectExp, string filterExp, string sortExp, string groupExp)
        {
            //Debugger.Break();
            //SPContext c = SPContext.Current;
            string command = "";
            try
            {

                SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["NewMellat"].ConnectionString);

                string filter = string.IsNullOrEmpty(filterExp) ? "" : " and " + filterExp.Replace(" eq ", " = ").Replace(" ge ", " >= ").Replace(" le ", " <= ").Replace(" ne ", " <> ").Replace(" gt ", " > ").Replace(" lt ", " < ");
                //filter.Contains("subs")
                command = string.Format(@"select {0} 
                                          from {1} as t join tbProjects as p on p.prId=t.prId 
                                          where ((p.prVahed IN (SELECT prProject  FROM tbAdminProjects WHERE (prType = 3)  AND (prCode = '{5}')  ))           OR(p.TechnicalSuvisor IN (SELECT prProject  FROM tbAdminProjects  WHERE (prType = 3) AND (prCode = '{5}') ))) 
                                                AND (p.prPeymankar IN (SELECT prProject FROM tbAdminProjects AS tbAdminProjects WHERE (prType = 1)  AND (prCode = '{5}') ))  {2} {3} {4}",
                                        string.IsNullOrEmpty(selectExp) ? "t.*" : selectExp,
                                        tableName,
                                        filter,
                                        string.IsNullOrEmpty(groupExp) ? "" : " group by " + groupExp,
                                        string.IsNullOrEmpty(sortExp) ? "" : " order by " + sortExp,
                                        userName
                                        );
                SqlDataAdapter adpt = new SqlDataAdapter(command, connection);
                DataSet ds = new DataSet();
                adpt.Fill(ds);
                return string.Format("{{\"d\":{{\"results\":{0}}}}}", DataTableToJSON(ds.Tables[0]));


            }
            catch (Exception ex)
            {

                return command + "\n" + ex.ToString();
            }




        }
      
        public string DataTableToJSON(DataTable table)
        {
            string JSONString = string.Empty;
            JSONString = JsonConvert.SerializeObject(table);
            return JSONString;
        }
    }
}
