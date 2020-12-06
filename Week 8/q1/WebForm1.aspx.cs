using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace q1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                List<string> fruits = new List<string>();
                fruits.Add("Strawberry");
                fruits.Add("Blueberry");
                fruits.Add("Mango");
                fruits.Add("Kiwi");
                fruitList.DataSource = fruits;

                List<string> icecream = new List<string>();
                icecream.Add("Chocolate");
                icecream.Add("Cookie n Cream");
                icecream.Add("ButterScotch");
                icecream.Add("Vanilla");
                icecreamList.DataSource = icecream;

                this.DataBind();
            }
        }

        protected void SelectAction(object sender, EventArgs e)
        {
            int price = 0;
            foreach(ListItem li in fruitList.Items)
            {
                if(li.Selected)
                {
                    switch(li.Value)
                    {
                        case "Strawberry": price += 50;break;
                        case "Blueberry": price += 60; break;
                        case "Mango": price += 60; break;
                        case "Kiwi": price += 65; break;
                    }
                }
            }
            switch(icecreamList.SelectedValue)
            {
                case "Chocolate": price += 50; break;
                case "Cookie n Cream": price += 60; break;
                case "ButterScotch": price += 50; break;
                case "Vanilla": price += 45; break;
            }

            lbl.Text = "Milkshake : ";
            foreach(ListItem li in fruitList.Items)
            {
                if(li.Selected)
                {
                    lbl.Text += li.Value + " + ";
                }
            }
            lbl.Text += "(icecream)" + icecreamList.SelectedValue + "<br />" + "Price : " + price;
    }
}