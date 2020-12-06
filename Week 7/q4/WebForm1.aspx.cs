using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace q4
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string connectionString = WebConfigurationManager.ConnectionStrings["Employee"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AddEmployeeAction(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connectionString);
            SqlCommand command = new SqlCommand("INSERT INTO WORKS VALUES (@n, @c, @s)", con);
            command.Parameters.AddWithValue("@n", empName.Text);
            command.Parameters.AddWithValue("@c", companyName.Text);
            command.Parameters.AddWithValue("@s", salary.Text);
            con.Open();
            command.ExecuteNonQuery();
            lbl1.Text = "Successfully inserted!!";
            empName.Text = companyName.Text = salary.Text = "";
            con.Close();
        }

        protected void FindEmployeeAction(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connectionString);
            SqlCommand command = new SqlCommand("Select w.empName, l.city from WORKS w, LIVES l where w.companyName = @c AND w.empName = l.empName", con);
            command.Parameters.AddWithValue("@c", findCompany.Text);
            con.Open();
            SqlDataReader reader = command.ExecuteReader();
            while(reader.Read())
            {
                lbl2.Text = "Name : " + reader["empName"] + "City : " + reader["city"] + "<br />";
            }
            con.Close();
        }
    }
}