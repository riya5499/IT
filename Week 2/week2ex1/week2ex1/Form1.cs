using System;
using System.Windows.Forms;

namespace week2ex1
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            double n;
            double.TryParse(textBox1.Text, out n);
            textBox2.Text = (n * 2).ToString();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            textBox1.Text = textBox2.Text = " ";
        }
    }
}
