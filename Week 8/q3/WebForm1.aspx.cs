using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace q2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SelectAction(object sender, EventArgs e)
        {
            string url = "WebForm2.aspx?";
            url += "Place=" + packageList.SelectedValue;
            Response.Redirect(url);
        }
    }
}