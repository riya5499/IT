using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace extra_2
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        public Bill bill;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack && Application["bill"] != null)
            {
                bill = (Bill)Application["bill"];
                item.Text = bill.Type;
                manufacturer.Text = bill.Manufacturer;
                price.Text = bill.Price.ToString();
                quantity.Text = bill.Quantity.ToString();
                total.Text = (bill.Price * bill.Quantity).ToString();
            }
        }
    }
}