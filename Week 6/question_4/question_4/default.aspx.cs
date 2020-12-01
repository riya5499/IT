using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace question_4
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                mobileList.Items.Add("");
                mobileList.Items.Add("iPhone 11");
                mobileList.Items.Add("iPhone 12 mini");
            }
        }

        protected void IndexChange(object sender, EventArgs e)
        {
            mobileNameLabel.Text = mobileList.SelectedValue;
        }

        protected void BtnClicked(object sender, EventArgs e)
        {
            if(mobileList.SelectedValue == "iPhone 11")
            {
                mobileImg.ImageUrl = "~/iPhone11.jpg";
            }
            else if(mobileList.SelectedValue == "iPhone 12 mini")
            {
                mobileImg.ImageUrl = "~/iPhone12.jpg";
            }
            Application["mobile"] = mobileList.SelectedValue;
            Response.Redirect("default2.aspx");
        }
    }
}