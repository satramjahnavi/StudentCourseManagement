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
    public partial class AdminRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void Loginadmin_Click(object sender, EventArgs e)
        {
            try
            {
                string strcon = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
                SqlConnection con = new SqlConnection(strcon);
                SqlCommand cmd = new SqlCommand("Insert into AdminTable(id,name,username,password) values (@id,@name,@username,@password)", con);
                con.Open();
                cmd.Parameters.AddWithValue("@id", Txtadminid.Text);
                cmd.Parameters.AddWithValue("@name", Txtadminname.Text);
                cmd.Parameters.AddWithValue("@username", Txtadminuname.Text);
                cmd.Parameters.AddWithValue("@password", Txtadminpswd.Text);
                cmd.ExecuteNonQuery();
                Labelmsg.Text = "Admin " + Txtadminname.Text + " registered successfully";
                Txtadminid.Text = "";
                Txtadminname.Text = "";
                Txtadminuname.Text = "";
                Txtadminpswd.Text = "";
                con.Close();
            }catch(Exception ex)
            {
                Labelmsg.Text = ex.Message;
            }
        }
    }
}