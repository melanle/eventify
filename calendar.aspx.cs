using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Eventify
{
    public partial class calendar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                calDate.SelectedDate = DateTime.Today;
            }
        }

        protected void btnAddEvent_Click(object sender, EventArgs e)
{
    // Check if all the required fields have been filled
    if (string.IsNullOrWhiteSpace(txtName.Text))
    {
        // Display a message indicating that the event name is required
        lblMessage.Text = "Please enter the event name.";
    }
    else
    {
        // Connection string to your SQL Server database
        string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Events.mdf;Integrated Security=True";

        try
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                // Get the UserID of the currently logged-in user from the session variable
                int loggedInUserID = Convert.ToInt32(Session["UserID"]);

                // SQL query to insert a new event for the logged-in user
                string query = "INSERT INTO Events (EventName, EventDate, EventTime, UserID) VALUES (@EventName, @EventDate, @EventTime, @UserID)";

                // Create a SqlCommand object
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    // Add the parameters to the SqlCommand object
                    command.Parameters.AddWithValue("@EventName", txtName.Text);
                    command.Parameters.AddWithValue("@EventDate", calDate.SelectedDate);  // Assuming you have a txtDate TextBox for the event date
                    command.Parameters.AddWithValue("@EventTime", txtTime.Text);  // Assuming you have a txtTime TextBox for the event time
                    command.Parameters.AddWithValue("@UserID", loggedInUserID);

                    // Open the database connection
                    connection.Open();

                    // Execute the SQL command
                    command.ExecuteNonQuery();

                    // Display a success message
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Event added');", true);
                }
            }
        }
        catch (Exception ex)
        {
            // Handle exceptions
            Console.WriteLine("Error: " + ex.Message);
        }
    }
}


        protected void Button1_Click(object sender, EventArgs e)
        {
            // Connection string to your SQL Server database
            string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Events.mdf;Integrated Security=True";

            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    // Get the UserID of the currently logged-in user from the session variable
                    int loggedInUserID = Convert.ToInt32(Session["UserID"]);
                    // SQL query to select all events of the logged-in user
                    string query = "SELECT EventName, EventDate, EventTime FROM Events WHERE UserID = @UserID";

                    // Create a SqlCommand object
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        // Add the parameter to the SqlCommand object
                        command.Parameters.AddWithValue("@UserID", loggedInUserID);

                        // Create a SqlDataAdapter to fill the DataSet
                        using (SqlDataAdapter adapter = new SqlDataAdapter(command))
                        {
                            // Create a DataSet to hold the data
                            DataSet dataSet = new DataSet();

                            // Open the database connection
                            connection.Open();

                            // Fill the DataSet with data from the database
                            adapter.Fill(dataSet);

                            // Bind the DataSet to a GridView control to display the events
                            GridView1.DataSource = dataSet;
                            GridView1.DataBind();
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                // Handle exceptions
                Console.WriteLine("Error: " + ex.Message);
            }
        }



    }
}