using System;
using System.Data.SqlClient;
using System.Configuration;

namespace CameraShoppingOnline
{
    public partial class Itemview : System.Web.UI.Page
    {
        // Connection string from web.config
        string connStr = ConfigurationManager.ConnectionStrings["dbms"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["itemId"] != null)
                {
                    int PId;
                    if (int.TryParse(Request.QueryString["itemId"], out PId))
                    {
                        LoadItemDetails(PId); // Pass the actual itemId as int
                    }
                    else
                    {
                        lblmsg.Text = "Invalid item ID.";
                    }
                }
                else
                {
                    lblmsg.Text = "No item selected.";
                }
            }
        }

        private void LoadItemDetails(int itemId)
        {
            using (SqlConnection con = new SqlConnection(connStr))
            {
                // Corrected SQL query: added WHERE
                string query = "SELECT ItemName, Price, Description, Quantity, Image, Image1,Image2 FROM addItems WHERE ItemID = @itemId";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@itemId", itemId);

                try
                {
                    con.Open();
                    SqlDataReader reader = cmd.ExecuteReader();

                    if (reader.Read())
                    {
                        lblname.Text = reader["ItemName"].ToString();
                        lblname0.Text = reader["ItemName"].ToString();
                        lblprice.Text = Convert.ToDecimal(reader["Price"]).ToString("C");
                        lbldetail.Text = reader["Description"].ToString();
                        lblqnt.Text = reader["Quantity"].ToString();

                        // Make sure these image fields exist and have correct values in your database
                        Image1.ImageUrl = reader["Image"].ToString();
                        Image2.ImageUrl = reader["Image"].ToString();
                        Image3.ImageUrl = reader["Image1"].ToString();
                        Image4.ImageUrl = reader["Image2"].ToString();
                    }
                    else
                    {
                        lblmsg.Text = "Item not found.";
                    }

                    reader.Close();
                }
                catch (Exception ex)
                {
                    lblmsg.Text = "Error: " + ex.Message;
                }
            }
        }
                
                
                 protected void Button1_Click(object sender, EventArgs e)
                 {
                    // Store selected product details in session
                    Session["itemId"] = Request.QueryString["itemId"].ToString();
            

                    // Redirect to cart or order page
                    Response.Redirect("Login.aspx");
                 }

    }
}
