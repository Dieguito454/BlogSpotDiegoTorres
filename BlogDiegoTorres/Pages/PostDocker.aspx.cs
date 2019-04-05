using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlogDiegoTorres.Pages
{
    public partial class PostDocker : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnPost_Click(object sender, EventArgs e)
        {
            Response.Redirect("PostDockerInstallation.aspx");
        }

        protected void btnPost2_Click(object sender, EventArgs e)
        {
            Response.Redirect("PostAzureFunction2.aspx");
        }
    }
}