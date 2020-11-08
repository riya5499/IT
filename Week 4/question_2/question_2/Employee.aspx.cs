using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace question_2
{
    public partial class Employee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                empList.Items.Add("emp_1");
                empList.Items.Add("emp_2");
                empList.Items.Add("emp_3");
                empList.Items.Add("emp_4");
                empList.Items.Add("emp_5");
            }
        }

        public void ControlChanged(object sender, EventArgs e)
        {
            empImage.ImageUrl = empList.SelectedItem.Text + ".jpg";
            empImage.Visible = true;
        }

        public void CheckEligibility(object sender, EventArgs e)
        {
            string yearString = doj.Text.Substring(0, 4);
            int year;
            Int32.TryParse(yearString, out year);
            if(2020 - year > 5)
            {
                answerLabel.Text = empName.Text + ", yes, you are eligible for promotion";
            }
            else
            {
                answerLabel.Text = empName.Text + ", no, you are not eligible for promotion";
            }
        }
    }
}