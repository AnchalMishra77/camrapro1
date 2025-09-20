using System;
using System.Configuration;
using System.Data.SqlClient;

namespace CameraShoppingOnline
{
    public partial class feedback : System.Web.UI.Page
    {
        // Read connection string from web.config
        string connStr = ConfigurationManager.ConnectionStrings["dbms"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            // No need to do anything on page load unless required
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            // Validate controls first
            if (Page.IsValid)
            {
                try
                {
                    using (SqlConnection con = new SqlConnection(connStr))
                    {
                        string query = "INSERT INTO Feedback (uname, message) VALUES (@username, @message)";
                        using (SqlCommand cmd = new SqlCommand(query, con))
                        {
                            // Assign values from textboxes
                            cmd.Parameters.AddWithValue("@username", txtuser.Text.Trim());
                            cmd.Parameters.AddWithValue("@message", txtmsg.Text.Trim());

                            con.Open();
                            int rowsAffected = cmd.ExecuteNonQuery();

                            if (rowsAffected > 0)
                            {
                                lblmsg.ForeColor = System.Drawing.Color.Green;
                                lblmsg.Text = "Feedback submitted successfully!";
                                txtuser.Text = "";
                                txtmsg.Text = "";
                            }
                            else
                            {
                                lblmsg.ForeColor = System.Drawing.Color.Red;
                                lblmsg.Text = "Submission failed. Please try again.";
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    lblmsg.ForeColor = System.Drawing.Color.Red;
                    lblmsg.Text = "Error: " + ex.Message;
                }
            }
        }

       
    }
}
