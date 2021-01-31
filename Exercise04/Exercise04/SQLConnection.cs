using System;
using System.Configuration;
using System.Data.SqlClient;

namespace Exercise04
{
    public class SQLConnection
    {
        public static SqlConnection SQLConnect()
        {
            SqlConnection connection = null;
            try
            {
                string connectionString = @"Server=BAIRD-TUFLAPTOP\BUENAVENTURA_SER; Database=AccountDatabase; User Id=sa; Password=Suva; Application Name=Account";
                connection = new SqlConnection(connectionString);
            }
            catch (Exception ex)
            {

            }
            return connection;
        }
        public static void CloseSQLConnect(SqlConnection SQLconn)
        {
            if (SQLconn != null)
            {
                SQLconn.Close();
            }
        }
    }
}