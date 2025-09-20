using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using System.Web.UI.WebControls;
using System.Web.UI;

namespace CameraShoppingOnline
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
            // Register the jQuery script mapping
            ScriptManager.ScriptResourceMapping.AddDefinition(
                "jquery",
                new ScriptResourceDefinition
                {
                    Path = "~/Scripts/jquery-3.7.1.min.js", // Adjust this path to match your actual file
                    DebugPath = "~/Scripts/jquery-3.7.1.js", // Optional: path for the debug version
                    CdnPath = "https://code.jquery.com/jquery-3.7.1.min.js", // Optional CDN fallback
                    CdnDebugPath = "https://code.jquery.com/jquery-3.7.1.js",
                    LoadSuccessExpression = "window.jQuery"
                });
        }
    }
}





