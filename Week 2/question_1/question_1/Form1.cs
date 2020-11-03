﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace question_1
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            double salary;
            double.TryParse(textBox1.Text, out salary);
            string level = comboBox1.SelectedItem.ToString();
            if(level == "1")
            {
                label3.Text = "Bonus to be paid = " + (0.1 * salary);
            }
            else if(level == "2-4")
            {
                label3.Text = "Bonus to be paid = " + (0.09 * salary);
            }
            else if(level == "5-7")
            {
                label3.Text = "Bonus to be paid = " + (0.07 * salary);
            }
            else if(level == "8-10")
            {
                label3.Text = "Bonus to be paid = " + (0.05 * salary);
            }
            else
            {
                label3.Text = " ";
            }
        }
    }
}
