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
        int counter, successfulCounter;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack && Application["SuccessfulLoginCount"] == null)
            {
                Session["ErrCounter"] = 3;
                Application["SuccessfulLoginCount"] = 0;
            }
        }

        protected void Login(object sender, EventArgs e)
        {
            if (tbOne.Text.Equals("abc") && tbTwo.Text.Equals("abc"))
            {
                successfulCounter = (int)Application["SuccessfulLoginCount"];
                successfulCounter++;
                Application["SuccessfulLoginCount"] = successfulCounter;
                Response.Redirect("WebForm2.aspx");

            }
            counter = (int)Session["ErrCounter"];
            counter--;
            Session["ErrCounter"] = counter;
            if (counter == 0)
            {
                labelFour.Text = "You have exhausted all the tries";
                tbOne.Enabled = tbTwo.Enabled = false;
            }
            else
            {
                labelFour.Text = "Invalid Credentials! " + (counter) + " tries left.";
            }
        }
    }
}
