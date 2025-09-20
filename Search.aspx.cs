using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace CameraShoppingOnline
{
    public partial class Search : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbms"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindProducts();
            }
        }

        private void BindProducts()
        {
            try
            {
                con.Open();
                string Camera = Request.QueryString["q"]; // e.g. Search.aspx?q=Camera
                string query = "SELECT ItemID, ItemName, Price, Image FROM addItems";

                if (!string.IsNullOrEmpty(Camera))
                {
                    query += " WHERE ItemName LIKE @Camera";
                }

                SqlCommand cmd = new SqlCommand(query, con);

                if (!string.IsNullOrEmpty( Camera))
                {
                    cmd.Parameters.AddWithValue("@Camera", "%" + Camera + "%");
                }

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count > 0)
                {
                    DataList1.DataSource = dt;
                    DataList1.DataBind();
                    lblmsg.Text = "";
                }
                else
                {
                    DataList1.DataSource = null;
                    DataList1.DataBind();
                    lblmsg.Text = "No products found.";
                }
            }
            finally
            {
                con.Close();
            }
        }

        protected void DataList1_ItemCommand(object source, System.Web.UI.WebControls.DataListCommandEventArgs e)
        {
            if (e.CommandName == "Select" || e.CommandSource is System.Web.UI.WebControls.Button)
            {
                string ItemID = e.CommandArgument.ToString();
                // Redirect to product details or add to cart
                Response.Redirect("Search.aspx?ItemID=" + ItemID);
            }
        }
    }
}
