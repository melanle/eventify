using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;

namespace Eventify
{
    public partial class login : System.Web.UI.Page
    {
        private readonly SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Melanie\source\repos\Eventify\App_Data\Signup.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string email = txtLoginEmail.Text;
            string password = txtLoginPassword.Text;

            try
            {
                // Open database connection
                con.Open();

                // SQL command to select data from Users table
                string query = "SELECT * FROM Users WHERE Email = @Email AND Password = @Password";

                // Create SqlCommand object
                SqlCommand cmd = new SqlCommand(query, con);

                // Add parameters to the command
                cmd.Parameters.AddWithValue("@Email", email);
                cmd.Parameters.AddWithValue("@Password", password);

                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.HasRows)
                {
                    // User found, login successful.
                    while (reader.Read())
                    {
                        // Store the UserID in a session variable
                        Session["UserID"] = reader["UserID"].ToString();
                    }

                    Response.Redirect("calendar.aspx");
                }
                else
                {
                    // User not found, login failed.
                    lblInvalidUser.Text = "Invalid user or password.";
                    lblInvalidUser.ForeColor = Color.Red;
                    lblInvalidUser.Visible = true;
                }
            }
            catch (Exception ex)
            {
                // An exception will be thrown if the connection fails.
                lblInvalidUser.Text = "Failed to connect to the database: " + ex.Message;
                lblInvalidUser.ForeColor = Color.Red;
                lblInvalidUser.Visible = true;
            }
            finally
            {
                // Close database connection
                if (con.State == System.Data.ConnectionState.Open)
                {
                    con.Close();
                }
            }
        }

    }
}
