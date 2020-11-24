using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace question_3
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                themeList.Items.Add("");
                themeList.Items.Add("Summer");
                themeList.Items.Add("Monsoon");

                if(Session["theme"] != null)
                {
                    themeList.Items.FindByText(Session["theme"].ToString()).Selected = true;
                }
            }
        }

        protected void Page_PreInit(object sender, EventArgs e)
        {
            if(Session["theme"] != null)
            {
                Page.Theme = Session["theme"].ToString();
            }
        }

        protected void ThemeChange(object sender, EventArgs e)
        {
            Session["theme"] = themeList.SelectedValue;
            Server.Transfer(Request.FilePath);
        }
    }
}