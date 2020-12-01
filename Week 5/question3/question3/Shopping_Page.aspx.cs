using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace question3
{
    public partial class Shopping_Page : System.Web.UI.Page
    {
        HttpCookie cookie;
        int counter;
        protected void Page_Load(object sender, EventArgs e)
        {
            cookie = Request.Cookies["CustomerCookie"];
            if(cookie != null && cookie["comingFromCartPage"] == "no")
            {
                Response.Cookies.Add(cookie);
                Response.Redirect("Cart_Page.aspx");
            }
            else if (cookie != null && cookie["comingFromCartPage"] == "yes")
            {
                custName.Text = cookie["customerName"];
            }
            else if(cookie == null)
            {
                cookie = new HttpCookie("CustomerCookie");
                counter = 0;
                cookie["counter"] = counter.ToString();
            }

        }

        protected void AddToCartAction(object sender, EventArgs e)
        {
            cookie["customerName"] = custName.Text;
            cookie["comingFromCartPage"] = "no";
            string itemName = "Item" + cookie["counter"];
            cookie[itemName] = listOfProduct.SelectedValue;
            Int32.TryParse(cookie["counter"], out counter);
            cookie["counter"] = (++counter).ToString();
            cookie.Expires = DateTime.Now.AddMinutes(2.0);
            Response.Cookies.Add(cookie);
            Response.Redirect("Cart_Page.aspx");
        }

        protected void SelectedItem(object sender, EventArgs e)
        {
            usercart.Items.Add(listOfProduct.SelectedValue);
        }
    }
}