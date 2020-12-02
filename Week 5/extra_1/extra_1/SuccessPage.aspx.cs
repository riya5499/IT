using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace extra_1
{
    public partial class SuccessPage : System.Web.UI.Page
    {
        public User user;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack && Session["user"] != null)
            {
                user = (User)Session["user"];
                welcome.Text = "Welcome " + user.Name;
                email.Text = user.EMail;
                contactNo.Text = user.Contact;
            }
        }
    }
}