using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CameraShoppingOnline
{
    public partial class HomePage : System.Web.UI.Page
    {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbms"].ConnectionString);


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadItems();
            }
        }

        private void LoadItems()
        {
            try
            {
                //SqlCommand cmd = new SqlCommand("SELECT iid, iname, price, image FROM addItems", con);

                SqlCommand cmd = new SqlCommand("SELECT ItemID, ItemName, Price, Image FROM addItems", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                DataList1.DataSource = dt;
                DataList1.DataBind();
            }
            catch (Exception ex)
            {
                lblmsg.Text = "Error: " + ex.Message;
            }
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "buy")
            {
                string itemId = e.CommandArgument.ToString();
                // Add to cart or redirect logic here
                Response.Redirect("Itemview.aspx?itemid=" + itemId);
            }
        }
    }
}