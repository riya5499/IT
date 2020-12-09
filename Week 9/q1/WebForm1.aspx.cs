﻿using System;
using System.Collections.Generic;
using System.Drawing;
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

        }

        protected void HighlightRowAction(object sender, GridViewRowEventArgs e)
        {
            if(e.Row.RowType == DataControlRowType.DataRow)
            {
                int age = (int)DataBinder.Eval(e.Row.DataItem, "Age");
                if(age > 35)
                {
                    e.Row.BackColor = Color.Aqua;
                }
            }
        }
    }
}