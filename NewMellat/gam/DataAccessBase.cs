using System;
using System.Collections.Generic;
using System.Text;
using System.Data.SqlClient;

using System.Data;


namespace DataAccessLayer
{
    public class DataAccessBase
    {
        private string Cs = "Data Source=172.22.65.20;Initial Catalog=NewMellat;Persist Security Info=True;User ID=sa;Password=awer_1111";
        //public  string ConnectionString
        //{
        //    get { return Cs; }
        //    set { Cs = value; }
        //}
        private SqlConnection Cn = null;
        private SqlCommand Cmd = null;

        //public DataAccessBase()
        //{
        //    if (string.IsNullOrEmpty(Cs))
        //    {
        //        Cs ="";
        //    }
        //}
        //Insert,Update,Delete.
        public int NonQueryTxt(String CommandText)
        {
            Cn = new SqlConnection(Cs);
            Cmd = new SqlCommand();
            Cmd.CommandType = CommandType.Text;
            Cmd.CommandText = CommandText;
            Cmd.Connection = Cn;
            try
            {
                Cn.Open();
            }
            catch(Exception ex) 
            {
               // // MessageBox.Show(ex.Message);
            }
            return Cmd.ExecuteNonQuery();
            Cn.Close();
        }

        public int NonQueryTxt(String CommandText, params object[] ParameterValues)
        {
            Cn = new SqlConnection(Cs);
            Cmd = new SqlCommand();
            Cmd.CommandType = CommandType.Text;
            Cmd.CommandText = CommandText;
            Cmd.Connection = Cn;

            GetStoredProcidureParameters(CommandText, ref  Cmd);

            for (int i = 0; i < ParameterValues.Length; i++)
            {
                Cmd.Parameters[i].Value = ParameterValues[i];
            }
            
            try
            {
                Cn.Open();
            }
            catch (Exception ex)
            {
                // MessageBox.Show(ex.Message);
            }
            return Cmd.ExecuteNonQuery();
            Cn.Close();
        }

        public int NonQuerySp(String SPName)
        {
            Cn = new SqlConnection(Cs);
            Cmd = new SqlCommand();
            Cmd.CommandType = CommandType.StoredProcedure;
            Cmd.CommandText = SPName;
            Cmd.Connection = Cn;
          
            try
            {
                Cn.Open();
            }
            catch (Exception ex)
            {
                // MessageBox.Show(ex.Message);
            }

            return Cmd.ExecuteNonQuery();
            Cn.Close();
        }

        public int NonQuerySp(String SPName, params object[] ParameterValues)
        {
            Cn = new SqlConnection(Cs);
            Cmd = new SqlCommand();
            Cmd.CommandType = CommandType.StoredProcedure;
            Cmd.CommandText = SPName;
            Cmd.Connection = Cn;

            GetStoredProcidureParameters(SPName, ref  Cmd);

            for (int i = 0; i < ParameterValues.Length; i++)
            {
                Cmd.Parameters[i].Value = ParameterValues[i];
            }
            try
            {
                Cn.Open(); 
                return Cmd.ExecuteNonQuery();
                Cn.Close();
            }
            catch (Exception ex)
            {
                // MessageBox.Show(ex.Message);
            }

            return 0;
        }


        //Select (return a One Record)'''''You Have to Ctype the returns Value
        public object ScalarTxt(String CommandText)
        {
            Cn = new SqlConnection(Cs);
            Cmd = new SqlCommand();
            Cmd.CommandType = CommandType.Text;
            Cmd.CommandText = CommandText;
            Cmd.Connection = Cn;
            try
            {
                Cn.Open();
            }
            catch (Exception ex)
            {
                // MessageBox.Show(ex.Message);
            }
            return Cmd.ExecuteScalar();
            Cn.Close();
        }

        public object ScalarTxt(String CommandText, params object[] ParameterValues)
        {
            Cn = new SqlConnection(Cs);
            Cmd = new SqlCommand();
            Cmd.CommandType = CommandType.Text;
            Cmd.CommandText = CommandText;
            Cmd.Connection = Cn;

            GetStoredProcidureParameters(CommandText, ref  Cmd);

            for (int i = 0; i < ParameterValues.Length; i++)
            {
                Cmd.Parameters[i].Value = ParameterValues[i];
            }

            try
            {
                Cn.Open();
            }
            catch (Exception ex)
            {
                // MessageBox.Show(ex.Message);
            }
            return Cmd.ExecuteScalar();
            Cn.Close();
        }

        public object ScalarSp(String SPName)
        {
            Cn = new SqlConnection(Cs);
            Cmd = new SqlCommand();
            Cmd.CommandType = CommandType.StoredProcedure;
            Cmd.CommandText = SPName;
            Cmd.Connection = Cn;

            try
            {
                Cn.Open();
            }
            catch (Exception ex)
            {
                // MessageBox.Show(ex.Message);
            }

            return Cmd.ExecuteScalar();
            Cn.Close();
        }

        public object ScalarSp(String SPName, params object[] ParameterValues)
        {
            Cn = new SqlConnection(Cs);
            Cmd = new SqlCommand();
            Cmd.CommandType = CommandType.StoredProcedure;
            Cmd.CommandText = SPName;
            Cmd.Connection = Cn;

            GetStoredProcidureParameters(SPName, ref  Cmd);

            for (int i = 0; i < ParameterValues.Length; i++)
            {
                Cmd.Parameters[i].Value = ParameterValues[i];
            }
            try
            {
                Cn.Open();
            }
            catch (Exception ex)
            {
                // MessageBox.Show(ex.Message);
            }

            return Cmd.ExecuteScalar();
            Cn.Close();
        }


        // select 
        public DataTable ReaderText(String CommandText)
        {
            Cn = new SqlConnection(Cs);
            Cmd = new SqlCommand();
            Cmd.CommandType = CommandType.Text;
            Cmd.CommandText = CommandText;
            Cmd.Connection = Cn;
            try
            {
                Cn.Open();
            }
            catch (Exception ex)
            {
                // MessageBox.Show(ex.Message);
            }
            SqlDataReader dr= Cmd.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Load(dr);
            dr.Close();
            Cn.Close();
            return dt;
            
        }

        public DataTable ReaderText(String CommandText, params object[] ParameterValues)
        {
            Cn = new SqlConnection(Cs);
            Cmd = new SqlCommand();
            Cmd.CommandType = CommandType.Text;
            Cmd.CommandText = CommandText;
            Cmd.Connection = Cn;

            GetStoredProcidureParameters(CommandText, ref  Cmd);

            for (int i = 0; i < ParameterValues.Length; i++)
            {
                Cmd.Parameters[i].Value = ParameterValues[i];
            }
            
            try
            {
                Cn.Open();
            }
            catch (Exception ex)
            {
                // MessageBox.Show(ex.Message);
            }
            SqlDataReader dr = Cmd.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Load(dr);
            dr.Close();
            Cn.Close();
            return dt;

        }

        public DataTable ReaderSp(String SPName)
        {
            Cn = new SqlConnection(Cs);
            Cmd = new SqlCommand();
            Cmd.CommandType = CommandType.StoredProcedure;
            Cmd.CommandText = SPName;
            Cmd.Connection = Cn;
            try
            {
                Cn.Open();
            }
            catch (Exception ex)
            {
                // MessageBox.Show(ex.Message);
            }
            SqlDataReader dr = Cmd.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Load(dr);
            dr.Close();
            Cn.Close();
            return dt;

        }

        public DataTable ReaderSp(String SPName, params object[] ParameterValues)
        {
            Cn = new SqlConnection(Cs);
            Cmd = new SqlCommand();
            Cmd.CommandType = CommandType.StoredProcedure;
            Cmd.CommandText = SPName;
            Cmd.Connection = Cn;

            GetStoredProcidureParameters(SPName, ref  Cmd);

            for (int i = 0; i < ParameterValues.Length; i++)
            {
                Cmd.Parameters[i].Value = ParameterValues[i];
            }

            try
            {
                Cn.Open();
            }
            catch (Exception ex)
            {
                // MessageBox.Show(ex.Message);
            }
            SqlDataReader dr = Cmd.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Load(dr);
            dr.Close();
            Cn.Close();
            return dt;

        }


        private int GetStoredProcidureParameters(string storedProsedureName, ref SqlCommand comm)
        {
            DataTable dtParams = new DataTable();
            SqlCommand commParams = new SqlCommand();
            SqlDataAdapter daParams = new SqlDataAdapter();
            SqlParameter param = null;
            try
            {
                commParams.Connection = new SqlConnection(Cs);
                commParams.CommandText = @"    SELECT    SCHEMA_NAME(o.schema_id) AS schema_name, o.name AS object_name, o.type_desc, p.parameter_id, p.name AS parameter_name, TYPE_NAME(p.user_type_id) 
                                AS parameter_type, p.max_length, p.precision, p.scale, p.is_output
                                FROM    sys.objects AS o INNER JOIN
                                sys.parameters AS p ON o.object_id = p.object_id
                                WHERE (o.name LIKE '" + storedProsedureName + @"')
                                ORDER BY  schema_name, object_name, p.parameter_id";
                if (commParams.Connection.State == ConnectionState.Closed)
                    commParams.Connection.Open();
                daParams.SelectCommand = commParams;
                daParams.Fill(dtParams);

                foreach (DataRow row in dtParams.Rows)
                {
                    param = new SqlParameter();
                    param.ParameterName = row["parameter_name"].ToString();
                    param.Size = int.Parse(row["max_length"].ToString());
                    //param.TypeName = row["parameter_type"].ToString();
                    comm.Parameters.Add(param);
                }
                return comm.Parameters.Count;
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                //در اینجا برای جلوگیری از تکرار اتصال به دیتابیس کانکشن را نمیبندیم
                //زیرا این متد همیشه در متدهای دیگر که خود به دیتابیس اتصال دارند استفاده میشود
                //و این کار به عهده ی آن متدها میباشد
            }


        }
    }

}