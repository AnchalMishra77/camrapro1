using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CameraShoppingOnline
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsearch_Click(object sender, EventArgs e)
        {
            string searchText = txtsearch.Text.Trim();
            if (!string.IsNullOrEmpty(searchText))
            {
                Response.Redirect("~/Search.aspx?q=" + searchText);
            }
            else
            {
                Response.Redirect("~/Search.aspx"); // show all products if nothing entered
            }

        }
    }
}