using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace q3
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string connectionString = WebConfigurationManager.ConnectionStrings["Product"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                SqlConnection con = new SqlConnection(connectionString);
                SqlCommand command = new SqlCommand("SELECT * FROM Items WHERE flavour = 'Vanilla'", con);
                try
                {
                    con.Open();
                    SqlDataReader reader;
                    reader = command.ExecuteReader();
                    while(reader.Read())
                    {
                        initial.Text = "Flavour : " + reader["flavour"].ToString() + "<br />" +
                                        "Price : " + reader["price"].ToString();
                    }
                }
                catch(Exception ex)
                { }
                con.Close();
            }
        }

        protected void ModifyAction(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connectionString);
            SqlCommand command = new SqlCommand("UPDATE Items SET price = @p WHERE flavour = 'Vanilla'",con);
            int p;
            Int32.TryParse(newPrice.Text, out p);
            command.Parameters.AddWithValue("@p", p);
            try
            {
                con.Open();
                command.ExecuteNonQuery();
            }
            catch(Exception ex)
            { }
            finally
            {
                con.Close();
            }

            con = new SqlConnection(connectionString);
            command = new SqlCommand("SELECT * FROM Items WHERE flavour = 'Vanilla'", con);
            try
            {
                con.Open();
                SqlDataReader reader;
                reader = command.ExecuteReader();
                while (reader.Read())
                {
                    final.Text = "After Modification <br />" + "Flavour : " + reader["flavour"].ToString() + "<br />" +
                                    "Price : " + reader["price"].ToString();
                }
            }
            catch (Exception ex)
            { }
            con.Close();
        }
    }
}