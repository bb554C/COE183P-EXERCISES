using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Exercise04
{
    public partial class CreateAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ButtonCreateAccount_Click(object sender, EventArgs e)
        {
            if(verify())
            {
                bool success = AccountClass.AddNewAccount(TextBoxFirstName.Text, TextBoxLastName.Text, TextBoxUserName.Text, TextBoxEmailAddress.Text, Encryption.ComputeSha256Hash(TextBoxPassword.Text));
                if (success)
                {
                    Response.Redirect("CreateSuccess.aspx");
                }
            }
        }
         
        private bool verify()
        {
            int error = 0;
            if (TextBoxConfirmPassword.Text == TextBoxPassword.Text)
            {
                ImagePassword.ImageUrl = "~/Images/checkmark.png";
                ImageConfirmPassword.ImageUrl = "~/Images/checkmark.png";
            }
            else
            {
                ImagePassword.ImageUrl = "~/Images/cancel--v1.png";
                ImageConfirmPassword.ImageUrl = "~/Images/cancel--v1.png";
                error++;
            }
            if (TextBoxFirstName.Text != "")
            {
                ImageFirstName.ImageUrl = "~/Images/checkmark.png";
            }
            else
            {
                ImageFirstName.ImageUrl = "~/Images/cancel--v1.png";
                error++;
            }
            if (TextBoxLastName.Text != "")
            {
                ImageLastName.ImageUrl = "~/Images/checkmark.png";
            }
            else
            {
                ImageLastName.ImageUrl = "~/Images/cancel--v1.png";
                error++;
            }
            if (TextBoxUserName.Text != "" && AccountClass.CountUsername(TextBoxUserName.Text) == 0)
            {
                ImageUserName.ImageUrl = "~/Images/checkmark.png";
            }
            else
            {
                ImageUserName.ImageUrl = "~/Images/cancel--v1.png";
                error++;
            }
            if (TextBoxEmailAddress.Text.Contains(".com") && TextBoxEmailAddress.Text != "")
            {
                ImageEmailAddress.ImageUrl = "~/Images/checkmark.png";
            }
            else
            {
                ImageEmailAddress.ImageUrl = "~/Images/cancel--v1.png";
                error++;
            }
            if(error == 0)
            {
                return true;
            }
            return false;
        }
    }
}