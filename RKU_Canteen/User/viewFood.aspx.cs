using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RKU_Canteen
{
    public partial class viewFood : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["constar"].ConnectionString;
        SqlConnection con;
        SqlDataAdapter da;
        DataSet ds;

        protected void Page_Load(object sender, EventArgs e)
        {
            
                if (!IsPostBack)
                {
                    string id = Request.QueryString["id"];
                    if (!string.IsNullOrEmpty(id))
                    {
                        LoadFoodDetails(id);
                    }
                    else
                    {
                        Response.Redirect("menu.aspx");
                    }
                }
            }

            void getcon()
            {
                con = new SqlConnection(s);
                con.Open();
            }

            void LoadFoodDetails(string subFoodId)
            {
                getcon();
            da = new SqlDataAdapter("select * from admin_add_item where Id ='" + Request.QueryString["id"] + "'", con);
            ds = new DataSet();
                da.Fill(ds);
                con.Close();

                DataList1.DataSource = ds;
                DataList1.DataBind();
            }
        
            protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("viewFood.aspx");
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}