using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace question_4
{
    public partial class Captcha : System.Web.UI.Page
    {
        public static int count;
        public static string captchaText;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                captchaText = getCaptcha();
                captcha.Text = "Captcha: " + captchaText;
                count = 3;
                answerLabel.Text = "You have 3 attempts remaining";
            }
        }

        public string getCaptcha()
        {
            string characters = "012345679ACEFGHKLMNPRSWXZabcdefghijkhlmnopqrstuvwxyz";
            System.Text.StringBuilder captcha = new System.Text.StringBuilder();
            Random r = new Random();
            int i;
            for(i=0;i<6;i++)
            {
                captcha.Append(characters[r.Next(characters.Length)]);
            }
            return captcha.ToString();
        }

        public void Check(object sender, EventArgs e)
        {
            count--;
            if(count == 0)
            {
                if (enter.Text == captchaText)
                {
                    answerLabel.Text = "Success!";
                }
                else
                {
                    enter.Enabled = false;
                    answerLabel.Text = "Oops! You have utilised all your 3 attempts";
                }
            }
            else
            {
                if (enter.Text == captchaText)
                {
                    answerLabel.Text = "Success!";
                }
                else
                {
                    answerLabel.Text = "You have " + count + " attempts remaining";
                }
            }  
        }
    }
}