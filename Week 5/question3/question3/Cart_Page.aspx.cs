using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace question3
{
    public partial class Cart_Page : System.Web.UI.Page
    {
        HttpCookie cookie;
        public static List<string> cart_item = new List<string>();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                cookie = Request.Cookies["CustomerCookie"];
                if (cookie != null && cookie["comingFromCartPage"] == "no")
                {
                    helloLabel.Text = "Hello " + cookie["customerName"] + " !";
                    if(!cart_item.Contains(cookie["itemSelected"]))
                    {
                        cart_item.Add(cookie["itemSelected"]);
                    }
                    int counter;
                    Int32.TryParse(cookie["counter"], out counter);
                    for (int i = 0; i < counter; i++)
                    {
                        usercart.Items.Add(cookie["Item"+i]);
                    }
                }
            }
        }

        protected void ContinueShopping(object sender, EventArgs e)
        {
            cookie = Request.Cookies["CustomerCookie"];
            cookie["comingFromCartPage"] = "yes";
            cookie.Expires = DateTime.Now.AddMinutes(2.0);
            Response.Cookies.Add(cookie);
            Response.Redirect("Shopping_Page.aspx");
        }
    }
}