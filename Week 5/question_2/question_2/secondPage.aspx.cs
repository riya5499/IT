using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace question_2
{
    public partial class secondPage : System.Web.UI.Page
    {
        HttpCookie countCookie;
        protected void Page_Load(object sender, EventArgs e)
        {
            countCookie = Request.Cookies["Count"];
            if(countCookie == null)
            {
                countCookie = new HttpCookie("Count");
            }
            Student s = (Student)Session["student"];
            if(s != null)
            {
                label1.Text = "NAME : " + s.Name + "     ROLL NO : " + s.RollNo + "     SUBJECT : " + s.Subject;
            }
        }

        public void CountFunct(object sender, EventArgs e)
        {
            int count;
            Int32.TryParse(countCookie["count"], out count);
            countCookie["count"] = (count + 1).ToString();
            Response.Cookies.Add(countCookie);
            label2.Text = "Counter = " + countCookie["count"];
        }
    }
}