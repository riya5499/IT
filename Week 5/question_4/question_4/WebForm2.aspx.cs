using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace question_4
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack && Application["SuccessfulLoginCount"] != null)
            {
                lbl1.Text = "Number of successful logins: " + (int)Application["SuccessfulLoginCount"];
            }
        }
    }
}