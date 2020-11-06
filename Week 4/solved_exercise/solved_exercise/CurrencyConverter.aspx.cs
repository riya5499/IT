using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace solved_exercise
{
    public partial class CurrencyConverter : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                fromCurrencyDropDown.Items.Add(new ListItem("INR", "74.14"));
                fromCurrencyDropDown.Items.Add(new ListItem("EURO", "0.84"));
                fromCurrencyDropDown.Items.Add(new ListItem("YEN", "103.48"));

            }
        }

        protected void SubmitClickedEvent (object sender, EventArgs e)
        {
            string convertedValue = ConvertCurrency();
            labelAns.Text = convertedValue;
        }

        public string ConvertCurrency ()
        {
            double old_value = 0;
            double new_value = 0;
            double.TryParse(inputCurrency.Text, out old_value);
            ListItem temp = fromCurrencyDropDown.Items[fromCurrencyDropDown.SelectedIndex];
            new_value = old_value * double.Parse(temp.Value);
            string s = old_value.ToString() + " USD = " + new_value.ToString() + " " + temp.Text;
            return s;
        }
    }
}