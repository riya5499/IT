using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace question_1
{
    public partial class Election : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ValidateContact(object sender, ServerValidateEventArgs e)
        {
            string contactText = txtcontact.Text;
            if(contactText.Length != 10 || !contactText.All(char.IsDigit))
            {
                e.IsValid = false;
            }
            else
            {
                e.IsValid = true;
            }
        }
        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                successLabel.Text = "Successfully submitted! Thank You";
            }
            else 
            {
                successLabel.Text = "";
            }
        }
    }

        
}