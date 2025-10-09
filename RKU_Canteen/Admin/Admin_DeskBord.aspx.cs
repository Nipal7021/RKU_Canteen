using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RKU_Canteen.Admin
{
    public partial class Admin_DeskBord : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Email"] == null) // not logged in
            {
                Response.Redirect("Admin_Login.aspx");
            }

        }
    }
}