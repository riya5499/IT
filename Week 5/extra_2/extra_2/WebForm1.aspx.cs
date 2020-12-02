using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace extra_2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        public Bill bill;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                manufacturerList.Items.Add("");
                manufacturerList.Items.Add(new ListItem("HP", "20000"));
                manufacturerList.Items.Add(new ListItem("Nokia", "15000"));
                manufacturerList.Items.Add(new ListItem("Samsung", "25000"));
                manufacturerList.Items.Add(new ListItem("Motorola", "12000"));
                manufacturerList.Items.Add(new ListItem("Apple", "35000"));

                productType.Items.Add("Mobile");
                productType.Items.Add("Laptop");

            }
        }

        protected void ProduceBill(object sender ,EventArgs e)
        {
            int q, price;
            bill = new Bill();
            Int32.TryParse(quantity.Text, out q);
            Int32.TryParse(manufacturerList.SelectedValue, out price);
            bill.Quantity = q;
            bill.Price = price;
            bill.Manufacturer = manufacturerList.SelectedItem.ToString();
            bill.Type = productType.SelectedItem.ToString();
            Application["bill"] = bill;
            Response.Redirect("WebForm2.aspx");
        }
    }
}