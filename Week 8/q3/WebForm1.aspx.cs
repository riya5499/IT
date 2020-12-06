using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace q3
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                Dictionary<int, string> State = new Dictionary<int, string>();
                State.Add(0, " ");
                State.Add(1, "Maharashtra");
                State.Add(2, "Rajasthan");
                State.Add(3, "Madhya Pradesh");
                State.Add(4, "Gujarat");
                State.Add(5, "Punjab");
                stateList.DataSource = State;
                stateList.DataTextField = "Value";
                stateList.DataValueField = "Key";
                this.DataBind();
            }
        }

        protected void SelectAction(object sender, EventArgs e)
        {
            lbl.Text = "Selected State : " + stateList.SelectedItem.Text + "<br />" + "Selected City : " + cityList.SelectedValue;
        }
    }
}