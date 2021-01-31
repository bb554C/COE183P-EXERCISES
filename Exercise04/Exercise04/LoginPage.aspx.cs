using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Exercise04
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonLogIn_Click(object sender, EventArgs e)
        {
            if(AccountClass.CheckValidUser(TextBoxUserName.Text,Encryption.ComputeSha256Hash(TextBoxPassword.Text)))
            {
                Response.Redirect("LoginSuccess.aspx");
            }
            else
            {
                if(AccountClass.CountUsername(TextBoxUserName.Text) == 1)
                {
                    ImageUserName.ImageUrl = "~/Images/checkmark.png";
                }
                else
                {
                    ImageUserName.ImageUrl = "~/Images/cancel--v1.png";
                }
                ImagePassword.ImageUrl = "~/Images/cancel--v1.png";
            }
        }
    }
}