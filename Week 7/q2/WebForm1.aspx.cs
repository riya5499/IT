using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace q2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        public string connectionString = WebConfigurationManager.ConnectionStrings["Test"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                Dictionary<int, string> dictionary= new Dictionary<int, string>();
                dictionary.Add(0, "");
                dictionary.Add(1, "Comedy");
                dictionary.Add(2, "Romance");
                dictionary.Add(3, "Animated");
                genre.Items.Add("");
                genre.DataSource = dictionary;
                genre.DataTextField = "Value";
                this.DataBind();
            }
        }

        protected void GenreChanged(object sender, EventArgs e)
        {
            Info.Text = "";
            SqlConnection con = new SqlConnection(connectionString);
            SqlCommand command = new SqlCommand("SELECT id, name FROM Legends WHERE category = @cat", con);
            command.Parameters.AddWithValue("cat", genre.SelectedItem.Text);
            SqlDataReader reader;
            try
            {
                con.Open();
                reader = command.ExecuteReader();
                Dictionary<string, string> dict = new Dictionary<string, string>();
                while (reader.Read())
                {
                    dict.Add(reader["Id"].ToString(), reader["name"].ToString());
                }
                legendList.DataSource = dict;
                legendList.DataTextField = "Value";
                legendList.DataValueField = "Key";
                this.DataBind();
            }
            catch (Exception err)
            {
                
            }
            finally
            {
                con.Close();
            }
        }

        protected void DisplayLegend(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(connectionString);
            SqlCommand command = new SqlCommand("Select age from Legends where Id=@id", conn);
            command.Parameters.AddWithValue("id", legendList.SelectedItem.Value);
            SqlDataReader reader;
            try
            {
                conn.Open();
                reader = command.ExecuteReader();
                reader.Read();
                Info.Text = "Name:" + legendList.SelectedItem.Text + "<br />" + "Age:" + reader["age"].ToString();
            }
            catch (Exception err)
            {
                
            }
            finally
            {
                conn.Close();
            }
        }
    }
}