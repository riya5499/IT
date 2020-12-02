using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace extra_1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SubmitAction(object sender, EventArgs e)
        {
            lbl.Text = "STUDENT DETAILS";
            nameLbl.Text = "Name : " + name.Text;
            dobLbl.Text = "Date of Birth (DD/MM/YYYY) : " + dob.Text;
            contactLbl.Text = "Contact Number : " + contact.Text;
            emailLbl.Text = "Email : " + email.Text;
            lbl2.Text = "Academic Details";
            double m1, m2, m3,percentage;
            engLbl.Text = "English : " + engMarks.Text;
            double.TryParse(engMarks.Text, out m1);
            phyLbl.Text = "Physics : " + phyMarks.Text;
            double.TryParse(phyMarks.Text, out m2);
            chemLbl.Text = "Chemistry : " + chemMarks.Text;
            double.TryParse(chemMarks.Text, out m3);
            percentage = (m1 + m2 + m3) / 3;
            percentageLbl.Text = "Overall Percentage: " + percentage + "%";
        }
    }
}