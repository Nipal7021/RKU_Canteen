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
namespace RKU_Canteen.Admin
{
    public partial class Admin_Register : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["constar"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;

        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
            //if (Session["Email"] == null) // not logged in
            //{
            //    Response.Redirect("Admin_Login.aspx");
            //}

        }

        void getcon()
        {
            con = new SqlConnection(s);
            //con.Open();
        }

        void Clear()
        {
            txtnm.Text = "";
            txtlnm.Text = "";
            txteml.Text = "";
            txtnum.Text = "";
            txtpass.Text = "";
            txtcpass.Text = "";

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (submit.Text == "Create Account")
            {
                cmd = new SqlCommand("insert into Admin_Register(FirstName,LastName,Email,PhoneNumber,Password) values ('" + txtnm.Text + "' , '" + txtlnm.Text + "' ,  '" + txteml.Text + "', '" + txtnum.Text + "'  ,'" + txtpass.Text + "' )", con);
                con.Open();
                cmd.ExecuteNonQuery();
                Clear();
            }

            // After registration → go to login
            Response.Redirect("Admin_login.aspx");
        }
    }
}
