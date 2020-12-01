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
            if(Application["mobile"]!=null)
            {
                mobileNameLabel.Text = Application["mobile"].ToString();
                if (Application["mobile"].ToString() == "iPhone 11")
                {
                    mobileImg.ImageUrl = "~/iPhone11.jpg";
                    screen.Text = "Screen: 6.06inch";
                    memory.Text = "Memory: 64/128/256 GB";
                    camera.Text = "Camera: Dual 12MP";
                    battery.Text = "Battery: 3110Mah";
                }
                else if (Application["mobile"].ToString() == "iPhone 12 mini")
                {
                    mobileImg.ImageUrl = "~/iPhone12.jpg";
                    screen.Text = "Screen: 5.40inch";
                    memory.Text = "Memory: 64/128/256 GB";
                    camera.Text = "Camera: Dual 12MP";
                    battery.Text = "Battery: 2227Mah";
                }
            }
        }

        protected void BackAction (object sender, EventArgs e)
        {
            Response.Redirect("default.aspx");
        }
    }
}