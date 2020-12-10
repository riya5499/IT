using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace extra_3
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DropDownList1.Items.Add("");
                DropDownList1.Items.Add("Solid");
                DropDownList1.Items.Add("Dotted");

                if (Session["theme"] != null)
                {
                    DropDownList1.Items.FindByText(Session["theme"].ToString()).Selected = true;
                }

                Label1.Font.Name = "Arial";
                Label1.Font.Size = FontUnit.Point(20);
                Label1.ForeColor = Color.Blue;
                Label1.Font.Bold = true;
            }
        }

        protected void Page_PreInit(object sender, EventArgs e)
        {
            if (Session["theme"] != null)
            {
                Page.Theme = Session["theme"].ToString();
            }
        }

        protected void themeAction(object sender, EventArgs e)
        {
            Session["theme"] = DropDownList1.SelectedValue;
            Server.Transfer(Request.FilePath);
        }

        protected void InternalAction(object sender, EventArgs e)
        {
            Response.Redirect("WebForm1.aspx");
        }

        protected void ExternalAction(object sender, EventArgs e)
        {
            Response.Redirect("WebForm2.aspx");
        }
    }
}