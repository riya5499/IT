using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace q1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        DataSet ds = new DataSet();
        static string connectionString;
        public WebForm1()
        {
            connectionString = WebConfigurationManager.ConnectionStrings["HouseKeeping"].ConnectionString;
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                staffId.Items.Add("");
                SqlConnection con = new SqlConnection(connectionString);
                try
                {
                    con.Open();
                    SqlCommand command = new SqlCommand("SELECT StaffID FROM Staff", con);
                    SqlDataAdapter adapter = new SqlDataAdapter(command);
                    adapter.Fill(ds, "Staff");
                    foreach (DataRow row in ds.Tables["Staff"].Rows)
                    {
                        staffId.Items.Add(row["StaffID"].ToString());

                    }
                }
                catch(Exception ex)
                { }
                finally
                {
                    con.Close();
                }
                
                city.Items.Add("Delhi");
                city.Items.Add("Mumbai");
                city.Items.Add("Bangalore");
            }
        }

        protected void DisplayEmployeeInfo(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connectionString);
            try
            {
                con.Open();
                SqlCommand command = new SqlCommand("SELECT * FROM Staff WHERE StaffID=" + staffId.SelectedItem.Text, con);
                //command.Parameters.AddWithValue("@id", staffId.SelectedItem.Text);
                SqlDataAdapter adapter = new SqlDataAdapter(command);
                adapter.Fill(ds, "Staff");
                foreach (DataRow row in ds.Tables["Staff"].Rows)
                {
                    info.Text += "StaffID : " + row["StaffID"] + "<br/>" +
                                 "FirstName : " + row["FirstName"] + " <br/>" +
                                 "LastName" + row["LastName"] + " <br/>" +
                                 "DNo : " + row["DNo"] + " <br/>" +
                                 "Street : " + row["Street"] + " <br/>" +
                                 "City : " + row["City"] + " <br/>" +
                                 "State : " + row["State"] + " <br/>" +
                                 "ZipCode : " + row["ZipCode"] + " <br/>";
                }
            }
            catch(Exception ex)
            { }
            finally
            {
                con.Close();
            }
            
        }

        protected void UpdateAction(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connectionString);
            try
            {
                con.Open();
                SqlCommand command = new SqlCommand("UPDATE Staff SET City = @city WHERE StaffID = @id", con);
                command.Parameters.AddWithValue("@city", city.SelectedItem.Text);
                int id;
                Int32.TryParse(staffId.SelectedItem.Text, out id);
                command.Parameters.AddWithValue("@id", id);
                command.ExecuteNonQuery();
            }
            catch(Exception ex)
            { }
            finally
            {
                con.Close();
            }
            DisplayEmployeeInfo(sender, e);
        }
    }
}