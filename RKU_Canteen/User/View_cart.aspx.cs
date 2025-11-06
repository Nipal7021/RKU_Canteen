using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RKU_Canteen.User
{
    public partial class View_cart : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["constar"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                fill_grid();
            }
        }

        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }
        void fill_grid()
        {
            getcon();
            da = new SqlDataAdapter("Select * from User_Register where email ='" + Session["admin"] + "'", con);
            ds = new DataSet();
            da.Fill(ds);

            int uid = Convert.ToInt16(Session["Id"]);

            da = new SqlDataAdapter("Select * from cart_tbl where User_Cart_Id = '" + uid + "'", con);
            ds = new DataSet();
            da.Fill(ds);
            gvCart.DataSource = ds;
            gvCart.DataBind();
        }

    }
}
