using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace question_1
{
    public partial class Magzine : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                lstImg.Items.Add("mg1.JPG");
                lstImg.Items.Add("mg2.JPG");

                lstBackground.Items.Add("White");
                lstBackground.Items.Add("Red");
                lstBackground.Items.Add("Green");
                lstBackground.Items.Add("Blue");
                lstBackground.Items.Add("Yellow");

                lstFontStyle.Items.Add("Times New Roman");
                lstFontStyle.Items.Add("Arial");
                lstFontStyle.Items.Add("Verdana");
                lstFontStyle.Items.Add("Tahoma");

                lstFontSize.Items.Add("20");
                lstFontSize.Items.Add("24");
                lstFontSize.Items.Add("28");
                lstFontSize.Items.Add("32");

                lstFontColor.Items.Add("White");
                lstFontColor.Items.Add("Red");
                lstFontColor.Items.Add("Green");
                lstFontColor.Items.Add("Blue");
                lstFontColor.Items.Add("Yellow");
            }
        }

        protected void updateMagzine (object sender, EventArgs e)
        {
            magzineMessage.Text = message.Text;
            magzineMessage.Font.Name = lstFontStyle.SelectedItem.Text;
            try
            {
                if(Int32.Parse(lstFontSize.SelectedItem.Text) > 0)
                {
                    magzineMessage.Font.Size = FontUnit.Point(Int32.Parse(lstFontSize.SelectedItem.Text));
                }
            }
            catch
            {

            }
            magzineMessage.ForeColor = Color.FromName(lstFontColor.SelectedItem.Text);
            image.ImageUrl = lstImg.SelectedItem.Text;
            image.Visible = true;
            magzine.BackColor = Color.FromName(lstBackground.SelectedItem.Text);
        }
    }
}