using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace extra_1
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void radioButton1_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBox1.Checked)
                label3.Text = "HP";
            else
            {
                label3.Text = "";
                radioButton1.Checked = false;
            }
        }

        private void radioButton2_CheckedChanged(object sender, EventArgs e)
        {
            if(checkBox1.Checked)
                label3.Text = "Seagate";
            else
            {
                label3.Text = "";
                radioButton2.Checked = false;
            }
        }

        private void radioButton3_CheckedChanged(object sender, EventArgs e)
        {
            if(checkBox2.Checked)
                label4.Text = "Apple";
            else
            {
                label4.Text = "";
                radioButton3.Checked = false;
            }
        }

        private void radioButton4_CheckedChanged(object sender, EventArgs e)
        {
            if(checkBox2.Checked)
                label4.Text = "One Plus";
            else
            {
                label4.Text = "";
                radioButton4.Checked = false;
            }
        }

        private void checkBox1_CheckedChanged(object sender, EventArgs e)
        {
            if (!checkBox1.Checked)
            {
                label3.Text = "";
                radioButton1.Checked = radioButton2.Checked = false;
            }
        }

        private void checkBox2_CheckedChanged(object sender, EventArgs e)
        {
            if (!checkBox2.Checked)
            {
                label4.Text = "";
                radioButton3.Checked = radioButton4.Checked = false;
            }
        }
    }
}
