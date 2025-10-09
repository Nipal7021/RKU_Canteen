using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RKU_Canteen.Admin
{
    public partial class Admin_add_item : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["constar"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        string fnm;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FillCobo();
                filllist();
            }
        }

        void GetCon()
        {
            con = new SqlConnection(s);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
        }

        void filllist()
        {
            da = new SqlDataAdapter("select * from admin_add_item", con);
            ds = new DataSet();
            da.Fill(ds);

        }


        void FillCobo()
        {
            GetCon();
            da = new SqlDataAdapter("SELECT * FROM admin_add_cat", con);
            ds = new DataSet();
            da.Fill(ds);
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                drpcat.Items.Add(ds.Tables[0].Rows[i][1].ToString());
            }
        }

        void ImgUpload()
        {
            if (flimg.HasFile)
            {
                fnm = "~/food_image/" + flimg.FileName;
                flimg.SaveAs(Server.MapPath(fnm));
            }
        }
        void clear()
        {
            txtpronm.Text = string.Empty;
            txtprodcode.Text = string.Empty;
        }
        protected void btnsave_Click(object sender, EventArgs e)
        {
            GetCon();
            ImgUpload();
            cmd = new SqlCommand("INSERT INTO Admin_add_item(Add_cat_id,Food_Name,Food_Price,Food_Image) VALUES ('" + ViewState["Id"] + "','" + txtpronm.Text + "','" + txtprodcode.Text + "','" + fnm + "')", con);
            cmd.ExecuteNonQuery();
            clear();
            Response.Redirect(Request.RawUrl);
        }

        protected void drpcat_SelectedIndexChanged(object sender, EventArgs e)
        {
            GetCon();
            da = new SqlDataAdapter("select Id from admin_add_cat where Name='" + drpcat.Text + "' ", con);
            ds = new DataSet();
            da.Fill(ds);
            ViewState["Id"] = ds.Tables[0].Rows[0][0].ToString();
        }
    }
}