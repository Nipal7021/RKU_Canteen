using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.DynamicData;

namespace RKU_Canteen.User
{
    public partial class User_Login : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["constar"].ConnectionString;

        SqlConnection con;
        SqlDataAdapter da;
        DataSet ds;
        SqlCommand cmd;
        int i;

        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
            if (Session["Email"] != null)
            {
                Response.Redirect("index.aspx");
            }
        }

        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            if (txteml.Text != null && txtpass.Text != null)
            {
                getcon();
                cmd = new SqlCommand("select * from User_Register where Email='" + txteml.Text + "' and Password='" + txtpass.Text + "'", con);
                da = new SqlDataAdapter(cmd);
                ds = new DataSet();
                da.Fill(ds);

                i = Convert.ToInt32(cmd.ExecuteScalar());

                if (i > 0)
                {
                    Session["Email"] = txteml.Text;
                    Session["UserLoggedIn"] = true;
                    Response.Redirect("index.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalid Email or Password')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Please enter Email and Password')</script>");
            }
        }
    }
}