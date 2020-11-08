using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace question_1
{
    public partial class Page2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            modelLabel.Text = "Model: " + HttpUtility.UrlDecode(Request.QueryString["Model"]);
            manufacturerLabel.Text = "Manufacturer: " + HttpUtility.UrlDecode(Request.QueryString["Manufacturer"]);
        }
    }
}