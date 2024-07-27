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
    public partial class signup : System.Web.UI.Page
    {
        private readonly SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Melanie\source\repos\Eventify\App_Data\Signup.mdf;Integrated Security=True");

        protected void Button1_Click(object sender, EventArgs e)
        {
            string fullName = TextBox1.Text;
            string password = TextBox2.Text;
            string confirmPassword = TextBox3.Text;
            string email = TextBox4.Text;
            string phoneNumber = TextBox5.Text;

            // Validate inputs
            if (string.IsNullOrEmpty(fullName) || string.IsNullOrEmpty(password) || string.IsNullOrEmpty(confirmPassword) || string.IsNullOrEmpty(email) || string.IsNullOrEmpty(phoneNumber))
            {
                lblMessage.Text = "All fields are required!";
                lblMessage.ForeColor = System.Drawing.Color.Red;
                return;
            }

            if (password != confirmPassword)
            {
                lblMessage.Text = "Passwords do not match!";
                lblMessage.ForeColor = System.Drawing.Color.Red;
                return;
            }

            if (!email.Contains("@"))
            {
                lblMessage.Text = "Invalid email address!";
                lblMessage.ForeColor = System.Drawing.Color.Red;
                return;
            }

            if (phoneNumber.Length != 10 || !long.TryParse(phoneNumber, out _))
            {
                lblMessage.Text = "Invalid phone number!";
                lblMessage.ForeColor = System.Drawing.Color.Red;
                return;
            }

            try
            {
                // Open database connection
                con.Open();

                // SQL command to insert data into Users table
                string query = "INSERT INTO [dbo].[Users] (FullName, Password, Email, PhoneNumber) VALUES (@FullName, @Password, @Email, @PhoneNumber)";

                // Create SqlCommand object
                SqlCommand cmd = new SqlCommand(query, con);

                // Add parameters to the command
                cmd.Parameters.AddWithValue("@FullName", fullName);
                cmd.Parameters.AddWithValue("@Password", password);
                cmd.Parameters.AddWithValue("@Email", email);
                cmd.Parameters.AddWithValue("@PhoneNumber", phoneNumber);

                // Execute the command
                cmd.ExecuteNonQuery();

                // Displays message to user
                lblMessage.Text = "Registration successful!";
                lblMessage.ForeColor = System.Drawing.Color.Green;
            }
            catch (Exception ex)
            {
                // Handle exception (e.g., display error message)
                lblMessage.Text = "An error occurred: " + ex.Message;
                lblMessage.ForeColor = System.Drawing.Color.Red;
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

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Reset the form
                ClearForm();
            }
        }

        private void ClearForm()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            lblMessage.Text = "";
        }
    }
}
