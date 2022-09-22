using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SMS
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Loginadmin_Click(object sender, EventArgs e)
        {
            string strcon = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            SqlCommand cmd = new SqlCommand("select COUNT(*)FROM AdminTable WHERE username = '" + TxtadminID.Text + "' and password = '" + Txtadminpswd.Text + "'", con);
            con.Open();
            int temp = Convert.ToInt32(cmd.ExecuteScalar());

            con.Close();
            if (temp>0)
            {
                Session["Adminname"] = "Welcome " + TxtadminID.Text;
                Response.Redirect("Admin.aspx");
            }
            else
            {
                Labelmsg.Text = "failed login details";

            }
        }
    }
}