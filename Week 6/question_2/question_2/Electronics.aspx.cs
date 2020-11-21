using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace question_2
{
    public partial class Electronics : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                categoriesList.Items.Add("");
                categoriesList.Items.Add("Mobile");
                categoriesList.Items.Add("Laptop");
                categoriesList.Items.Add("Printer");
            }
        }

        protected void handleChangeCategories(object sender, EventArgs e)
        {
            vendorList.Items.Clear();
            message.Text = "";
            if(categoriesList.SelectedItem.Text == "Mobile")
            {
                vendorList.Items.Add("");
                vendorList.Items.Add("Apple");
                vendorList.Items.Add("OnePlus");
                vendorList.Items.Add("Samsung");
            }
            else if(categoriesList.SelectedItem.Text == "Laptop")
            {
                vendorList.Items.Add("");
                vendorList.Items.Add("Apple");
                vendorList.Items.Add("HP");
                vendorList.Items.Add("Dell");
            }
            else if(categoriesList.SelectedItem.Text == "Printers")
            {
                vendorList.Items.Add("");
                vendorList.Items.Add("HP");
                vendorList.Items.Add("Epson");
                vendorList.Items.Add("Toshiba");
            }
            else
            {
                vendorList.Items.Add("");
            }
        }

        protected void handleChangeVendors(object sender, EventArgs e)
        {
            if(categoriesList.SelectedIndex != 0 && vendorList.SelectedIndex != 0)
            {
                message.Text = "Your selected category is " + categoriesList.SelectedValue + " and vendor is " + vendorList.SelectedValue;
            }
        }
    }
}