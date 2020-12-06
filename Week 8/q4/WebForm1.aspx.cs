using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace q4
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                List<string> category = new List<string>();
                category.Add("");
                category.Add("Comedy");
                category.Add("Romance");
                category.Add("Animated");
                categoryList.DataSource = category;
                this.DataBind();
            }
        }
    }
}