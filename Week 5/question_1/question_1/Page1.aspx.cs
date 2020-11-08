using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace question_1
{
    public partial class Page1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                manufacturerList.Items.Add("");
                manufacturerList.Items.Add("AUDI");
                manufacturerList.Items.Add("BMW");
                manufacturerList.Items.Add("Mercedes");
            }
        }

        public void ControlChanged(object sender, EventArgs e)
        {
            if(manufacturerList.SelectedItem.Text != null)
            {
                string url = "Page2.aspx?";
                url += "Model=" + Server.UrlEncode(model.Text) + "&";
                url += "Manufacturer=" + Server.UrlEncode(manufacturerList.SelectedItem.Text);
                Response.Redirect(url);
            }
        }
    }
}