using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RKU_Canteen.Admin
{
    public partial class Food : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["constar"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        PagedDataSource pg = new PagedDataSource();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ViewState["pid"] = 0;
                ViewState["section"] = "FoodCategory";
                LoadFoodCategories();
            }

            //if (Session["user"] != null && Session["user"].ToString() != "")
            //{
            //    getcon();
            //    da = new SqlDataAdapter("SELECT * FROM std_table WHERE email='" + Session["user"].ToString() + "'", con);
            //    ds = new DataSet();
            //    da.Fill(ds);
            //    lblWelcome.Text = "Welcome: " + ds.Tables[0].Rows[0]["name"].ToString();
            //    con.Close();
            //}
            //else
            //{
            //    Response.Redirect("login.aspx");
            //}
        }

        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        void LoadFoodCategories()
        {
            getcon();
            da = new SqlDataAdapter("SELECT * FROM FoodCategory", con);
            ds = new DataSet();
            da.Fill(ds);
            con.Close();

            pg.DataSource = ds.Tables[0].DefaultView;
            pg.AllowPaging = true;
            pg.PageSize = 3;
            pg.CurrentPageIndex = Convert.ToInt32(ViewState["pid"]);

            dlFoodCategory.DataSource = pg;
            dlFoodCategory.DataBind();

            dlFoodCategory.Visible = true;
            dlFoodSubCategory.Visible = false;
            btnBackCategories.Visible = false;

            lnkPrev.Visible = true;
            lnkNext.Visible = true;
            lnkPrev.Enabled = !pg.IsFirstPage;
            lnkNext.Enabled = !pg.IsLastPage;

            ViewState["section"] = "FoodCategory";
        }

        void LoadFoodSubCategory(string foodId)
        {
            getcon();
            da = new SqlDataAdapter("SELECT * FROM FoodSubCategory WHERE FoodId='" + foodId + "'", con);
            ds = new DataSet();
            da.Fill(ds);
            con.Close();

            pg.DataSource = ds.Tables[0].DefaultView;
            pg.AllowPaging = true;
            pg.PageSize = 2;
            pg.CurrentPageIndex = Convert.ToInt32(ViewState["pid"]);

            dlFoodSubCategory.DataSource = pg;
            dlFoodSubCategory.DataBind();

            dlFoodCategory.Visible = false;
            dlFoodSubCategory.Visible = true;
            btnBackCategories.Visible = true;

            lnkPrev.Visible = true;
            lnkNext.Visible = true;
            lnkPrev.Enabled = !pg.IsFirstPage;
            lnkNext.Enabled = !pg.IsLastPage;

            ViewState["FoodId"] = foodId;
            ViewState["section"] = "FoodSubCategory";
        }




        protected void dlFoodSubCategory_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "cmd_view")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                Response.Redirect("viewFood.aspx?id=" + id);


            }
            //else if (e.CommandName == "AddToCart")
            //{
            //    getcon();
            //    int subFoodId = Convert.ToInt32(e.CommandArgument);

            //    // Get user id
            //    da = new SqlDataAdapter("SELECT * FROM std_table WHERE email='" + Session["user"].ToString() + "'", con);
            //    ds = new DataSet();
            //    da.Fill(ds);
            //    int userid = Convert.ToInt32(ds.Tables[0].Rows[0]["Id"]);

            //    // Get subfood details
            //    da = new SqlDataAdapter("SELECT * FROM FoodSubCategory WHERE SubFoodId='" + subFoodId + "'", con);
            //    ds = new DataSet();
            //    da.Fill(ds);

            //    string name = ds.Tables[0].Rows[0]["SubFoodName"].ToString();
            //    string price = ds.Tables[0].Rows[0]["price"].ToString();
            //    string img = ds.Tables[0].Rows[0]["SubFoodImage"].ToString();

            //    cmd = new SqlCommand("INSERT INTO cart_tbl(User_Cart_Id, Prod_Cart_Id, Prod_Image, Prod_Name, Prod_price, Prod_Quantity) " +
            //                         "VALUES ('" + userid + "','" + subFoodId + "','" + img + "','" + name + "','" + price + "',1)", con);
            //    cmd.ExecuteNonQuery();
            //    con.Close();

            //    Response.Redirect("cart_view.aspx");
            //}
        }

        protected void btnBackCategories_Click(object sender, EventArgs e)
        {

            ViewState["pid"] = 0;
            LoadFoodCategories();
        }

        protected void lnkPrev_Click(object sender, EventArgs e)
        {
            int current = Convert.ToInt32(ViewState["pid"]);
            current--;
            ViewState["pid"] = current;

            if (ViewState["section"].ToString() == "FoodCategory")
                LoadFoodCategories();
            else if (ViewState["section"].ToString() == "FoodSubCategory")
                LoadFoodSubCategory(ViewState["FoodId"].ToString());
        }

        protected void lnkNext_Click(object sender, EventArgs e)
        {
            int current = Convert.ToInt32(ViewState["pid"]);
            current++;
            ViewState["pid"] = current;

            if (ViewState["section"].ToString() == "FoodCategory")
                LoadFoodCategories();
            else if (ViewState["section"].ToString() == "FoodSubCategory")
                LoadFoodSubCategory(ViewState["FoodId"].ToString());
        }

        protected void dlFoodCategory_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "ViewSubFood")
            {
                ViewState["pid"] = 0;
                string foodId = e.CommandArgument.ToString();
                LoadFoodSubCategory(foodId);
            }
        }

        //protected void btnViewCart_Click(object sender, EventArgs e)
        //{
        //    Response.Redirect("cart_view.aspx");
        //}


        }
    }
