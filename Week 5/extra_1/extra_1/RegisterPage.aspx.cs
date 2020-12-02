using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace extra_1
{
    public partial class RegisterPage : System.Web.UI.Page
    {
        public User user;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SubmitAction(object sender, EventArgs e)
        {
            if(username.Text == "")
            {
                errorLabel.Text = "Please enter username";
            }
            else if(password.Text == "123")
            {
                user = new User();
                user.Name = username.Text;
                user.Password = password.Text;
                user.EMail = email.Text;
                user.Contact = contact.Text;
                Session["user"] = user;
                Response.Redirect("SuccessPage.aspx");
            }
        }
    }
}