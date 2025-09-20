using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CameraShoppingOnline.User;

namespace CameraShoppingOnline
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            string email = txtusername.Text.Trim();
            string password = txtpassword.Text.Trim();

            // Store itemid in session only if it exists in the query string
            if (!string.IsNullOrEmpty(Request.QueryString["itemid"]))
            {
                Session["ItemId"] = Request.QueryString["itemid"];
            }

            string connectionString = ConfigurationManager.ConnectionStrings["dbms"].ConnectionString;

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = "SELECT UserId FROM Registration WHERE EmailId = @Email AND Password = @Password";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@Email", email);
                cmd.Parameters.AddWithValue("@Password", password); 

                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.Read()) 
                {
                    Session["UserEmail"] = email;
                    Session["UserId"] = reader["UserId"].ToString(); 

                    if (Session["ItemId"] != null)
                    {
                        Response.Redirect("~/User/view.aspx?itemid=" + Session["ItemId"]);
                    }
                    else
                    {
                        Response.Redirect("~/User/Home.aspx");
                    }
                }
                else
                {
                    lblmsg.Text = "Invalid username or password.";
                }

                reader.Close();
            }
        }

    }
}
