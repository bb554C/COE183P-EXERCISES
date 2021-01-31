using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Exercise04
{
    public class AccountClass
    {
        public static bool AddNewAccount
            (string FirstName,
            string LastName,
            string UserName,
            string EmailAddress,
            string Password)
        {
            SqlConnection SQLconn = SQLConnection.SQLConnect();
            try
            {
                using (SqlCommand command = new SqlCommand("dbo.AddNewAccount", SQLconn))
                {
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.Add("@FirstName", SqlDbType.NVarChar,500).Value = FirstName;
                    command.Parameters.Add("@LastNAme", SqlDbType.NVarChar, 500).Value = LastName;
                    command.Parameters.Add("@UserNAme", SqlDbType.VarChar, 500).Value = UserName;
                    command.Parameters.Add("@EmailAddress", SqlDbType.VarChar, 500).Value = EmailAddress;
                    command.Parameters.Add("@Password", SqlDbType.VarChar, 500).Value = Password;
                    SQLconn.Open();
                    command.ExecuteNonQuery();
                }
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
            SQLConnection.CloseSQLConnect(SQLconn);
        }
        public static int CountUsername(string UserName)
        {
            int count = 0;
            SqlConnection SQLconn = SQLConnection.SQLConnect();
            try
            {
                using (SqlCommand command = new SqlCommand("dbo.AccountExist", SQLconn))
                {
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.Add("@UserNAme", SqlDbType.VarChar, 500).Value = UserName;
                    SQLconn.Open();
                    SqlDataReader reader = command.ExecuteReader();
                    while (reader.Read())
                    {
                        count = reader.GetInt32(0);
                    }
                    reader.Close();
                }
            }
            catch (Exception ex)
            {

            }
            SQLConnection.CloseSQLConnect(SQLconn);
            return count;
        }

        public static bool CheckValidUser(string UserName,string Password)
        {
            int count = 0;
            SqlConnection SQLconn = SQLConnection.SQLConnect();
            try
            {
                using (SqlCommand command = new SqlCommand("dbo.CheckAccountValid", SQLconn))
                {
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.Add("@UserNAme", SqlDbType.VarChar, 500).Value = UserName;
                    command.Parameters.Add("@PasswordTemp", SqlDbType.VarChar, 500).Value = Password;
                    SQLconn.Open();
                    SqlDataReader reader = command.ExecuteReader();
                    while (reader.Read())
                    {
                        count = reader.GetInt32(0);
                    }
                    reader.Close();
                }
            }
            catch (Exception ex)
            {

            }
            SQLConnection.CloseSQLConnect(SQLconn);
            if(count == 1)
            {
                return true;
            }
            return false;
        }
    }
}