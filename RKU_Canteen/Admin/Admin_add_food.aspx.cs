using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RKU_Canteen
{
    public partial class Food_add : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["constar"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        string fnm;
        protected void Page_Load(object sender, EventArgs e)
        
            {
                GetCon();
            }

            void GetCon()
            {
                con = new SqlConnection(s);
                con.Open();
            }

        
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(TextBox1.Text.Trim()))
            {
                GetCon();
                string query = "INSERT INTO admin_add_cat(Name) VALUES ('" + TextBox1.Text.Trim() + "')";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();

                // Optional: Clear the textbox after saving
                TextBox1.Text = "";
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Company added successfully');", true);
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Please enter a company name');", true);
            }
        }
    }
}