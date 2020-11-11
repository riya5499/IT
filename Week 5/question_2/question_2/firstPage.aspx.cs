using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace question_2
{
    public partial class firstPage : System.Web.UI.Page
    {
        public static Student student;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                subject.Items.Add("");
                subject.Items.Add("EOM");
                subject.Items.Add("DCC");
                subject.Items.Add("IT");
                subject.Items.Add("PE-4");
                subject.Items.Add("PE-5");
                subject.Items.Add("PE-6");
                student = new Student();
            }
        }

        public void submitFunct(object sender, EventArgs e)
        {
            student.Name = name.Text;
            student.RollNo = Int32.Parse(rollNo.Text);
            student.Subject = subject.Text;
            Session["student"] = student;
            Response.Redirect("secondPage.aspx");
        }
    }
}