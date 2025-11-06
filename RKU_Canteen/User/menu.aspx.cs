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
    public partial class menu : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["constar"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        PagedDataSource pg;
        int row, p;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ViewState["Id"] = 0;
                Filllist();
            }
            if (Session["admin"] != null && Session["admin"].ToString() != "")
            {
                getcon();
                da = new SqlDataAdapter("SELECT * FROM Admin_Register WHERE email = '" + Session["admin"].ToString() + "'", con);
                ds = new DataSet();
                da.Fill(ds);
                int id = Convert.ToInt16(ds.Tables[0].Rows[0][0]);
                string s = ds.Tables[0].Rows[0][1].ToString();
                Label3.Text = "Welcome :" + s;
            }
            else
            {
                //Response.Redirect("Admin_Login.aspx");
            }

            //if (Session["admin"].ToString() != "")
            //{
            //    getcon();
            //    da = new SqlDataAdapter("SELECT * FROM Admin_Register WHERE email = '" + Session["admin"].ToString() + "'", con);
            //    ds = new DataSet();
            //    da.Fill(ds);
            //    int id = Convert.ToInt16(ds.Tables[0].Rows[0][0]);
            //    string s = ds.Tables[0].Rows[0][1].ToString();
            //    Label3.Text = "Welcome :" + s;
            //}
            //else
            //{
            //    Response.Redirect("Admin_Login.aspx");
            //}
        }

        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        protected void LinkButton2_Click1(object sender, EventArgs e)//next
        {
            int currentPage = Convert.ToInt32(ViewState["Id"]);
            currentPage++;
            ViewState["Id"] = currentPage;
            Filllist();
        }

        protected void LinkButton1_Click1(object sender, EventArgs e)//previous
        {
            int currentPage = Convert.ToInt32(ViewState["Id"]);
            currentPage--;
            ViewState["Id"] = currentPage;
            Filllist();
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "cmd_view")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                Response.Redirect("viewFood.aspx?id=" + id);
            }
            else if (e.CommandName == "cmd_add")
            {
                getcon();
                da = new SqlDataAdapter("Select * from User_Register where Email ='" + Session["admin"] + "'", con);
                ds = new DataSet();
                da.Fill(ds);

                int userid = Convert.ToInt32(Session["Id"]);
                int foodid = Convert.ToInt32(e.CommandArgument);

                da = new SqlDataAdapter("Select * from admin_add_item where Id = '" + foodid + "'", con);
                ds = new DataSet();
                da.Fill(ds);

                string food_name = ds.Tables[0].Rows[0][2].ToString();
                string food_price = ds.Tables[0].Rows[0][3].ToString();
                string img = ds.Tables[0].Rows[0][4].ToString();

                int quantity = 1;
                cmd = new SqlCommand("Insert into cart_tbl(User_Cart_Id,Food_Cart_Id,Food_Image,Food_Name,Food_price,Food_Quantity) values ('" + userid + "','" + foodid + "', '" + img + "','" + food_name + "','" + food_price + "','" + quantity + "')", con);
                cmd.ExecuteNonQuery();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("View_cart.aspx");
        }

        void Filllist()
            {
                getcon();
                da = new SqlDataAdapter("select * from admin_add_item", con);
                ds = new DataSet();
                da.Fill(ds);
                row = ds.Tables[0].Rows.Count;
                pg = new PagedDataSource();

                pg.AllowPaging = true;
                pg.PageSize = 5;
                pg.CurrentPageIndex = Convert.ToInt32(ViewState["Id"]);

                pg.DataSource = ds.Tables[0].DefaultView;

                // Enable/disable navigation button
                LinkButton1.Enabled = !pg.IsFirstPage;
                LinkButton2.Enabled = !pg.IsLastPage;
                DataList1.DataSource = pg;
                DataList1.DataBind();
            }

        }
    }


       