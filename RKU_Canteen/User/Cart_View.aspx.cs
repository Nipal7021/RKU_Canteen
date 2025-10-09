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
    public partial class Cart_View : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["constar"].ConnectionString;
        SqlCommand cmd;
        SqlConnection con;
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

            int uid = Convert.ToInt16(ds.Tables[0].Rows[0][0]);

            da = new SqlDataAdapter("Select * from cart_tbl where User_Cart_Id = '" + uid + "'", con);
            ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();

        }

    }
}

//protected void gvCart_SelectedIndexChanged(object sender, EventArgs e)
//        {

//        }
//    }
//}