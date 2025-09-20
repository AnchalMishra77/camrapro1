using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CameraShoppingOnline
{
    public partial class fPassword : System.Web.UI.Page
    {
        string connStr = ConfigurationManager.ConnectionStrings["dbms"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)

        {
            if (!IsPostBack)
            {
                lblpass.Text = "";
                lblmsg.Text = "";
            }
        }

        protected void btnlgetpass_Click(object sender, EventArgs e)
        {
            string email = txtmail.Text.Trim();
            string mobile = txtmobile.Text.Trim();

            if (string.IsNullOrEmpty(email) || string.IsNullOrEmpty(mobile))
            {
                lblmsg.Text = "Please fill all fields.";
                return;
            }

            using (SqlConnection con = new SqlConnection(connStr))
            {
                try
                {
                    con.Open();
                    string query = "SELECT Password FROM Registration WHERE EmailId = @Email AND Mobile = @Mobile";
                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue("@Email", email);
                        cmd.Parameters.AddWithValue("@Mobile", mobile);

                        object result = cmd.ExecuteScalar();
                        if (result != null)
                        {
                            lblpass.Text = "Your Password is: " + result.ToString();
                            lblmsg.Text = "";
                        }
                        else
                        {
                            lblmsg.Text = "No account found with these details.";
                            lblpass.Text = "";
                        }
                    }
                }
                catch (Exception ex)
                {
                    lblmsg.Text = "Error: " + ex.Message;
                }
            }
        }
    }
}