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
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            string fname = txtfname.Text.Trim();
            string lname = txtlname.Text.Trim();
            string address = txtaddress.Text.Trim();
            string city = txtcity.Text.Trim();
            string state = txtstate.Text.Trim();
            string pincode = txtpincode.Text.Trim();
            string gender = rdomale.Checked ? "Male" : (rdofemale.Checked ? "Female" : "");
            string mobile = txtmobile.Text.Trim();
            string email = txtmail.Text.Trim();
            string password = txtpassword.Text.Trim();
            if (gender == "")
            {
                lblmsg.Text = "Please select gender!";
                return;
            }

            try
            {
                // Get connection string from Web.config
                string connStr = ConfigurationManager.ConnectionStrings["dbms"].ConnectionString;

                using (SqlConnection con = new SqlConnection(connStr))
                {
                    con.Open();

                    string query = "INSERT INTO Registration " +
                                   "(FirstName, LastName, Address, City, State, Pincode, Gender, Mobile, EmailId, Password) " +
                                   "VALUES (@FirstName, @LastName, @Address, @City, @State, @Pincode, @Gender, @Mobile, @EmailId, @Password)";

                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.Parameters.AddWithValue("@FirstName",txtfname.Text);
                    cmd.Parameters.AddWithValue("@LastName", txtlname.Text);
                    cmd.Parameters.AddWithValue("@Address", txtaddress.Text);
                    cmd.Parameters.AddWithValue("@City", txtcity.Text);
                    cmd.Parameters.AddWithValue("@State", txtstate.Text);
                    cmd.Parameters.AddWithValue("@Pincode", txtpincode.Text);
                    cmd.Parameters.AddWithValue("@Gender", gender);
                    cmd.Parameters.AddWithValue("@Mobile", txtmobile.Text);
                    cmd.Parameters.AddWithValue("@EmailId", txtmail.Text);
                    cmd.Parameters.AddWithValue("@Password",txtpassword.Text );  // Optional: hash before saving in real apps

                    int result = cmd.ExecuteNonQuery();

                    if (result > 0)
                    {
                        lblmsg.ForeColor = System.Drawing.Color.Green;
                        lblmsg.Text = "Registration Successful!";
                        ClearFields();
                    }
                    else
                    {
                        lblmsg.ForeColor = System.Drawing.Color.Red;
                        lblmsg.Text = "Registration Failed!";
                    }
                }
            }
            catch (Exception ex)
            {
                lblmsg.ForeColor = System.Drawing.Color.Red;
                lblmsg.Text = "Error: " + ex.Message;
            }
        }

        private void ClearFields()
        {
            txtfname.Text = "";
            txtlname.Text = "";
            txtaddress.Text = "";
            txtcity.Text = "";
            txtstate.Text = "";
            txtpincode.Text = "";
            txtmobile.Text = "";
            txtmail.Text = "";
            txtpassword.Text = "";
            rdomale.Checked = false;
            rdofemale.Checked = false;
        }
    }
}