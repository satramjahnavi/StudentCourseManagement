using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace SMS
{
    public partial class StudentDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Buttonsearch_Click(object sender, EventArgs e)
        {
            try
            {
                string strcon = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
                SqlConnection con = new SqlConnection(strcon);
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "sp_SearchStudent";
                cmd.Parameters.Add("@sfname",SqlDbType.NVarChar).Value=Txtsfname.Text;
                cmd.Connection=con;
                SqlDataReader dr = cmd.ExecuteReader();

                while (dr.Read())
                {
                    Txtslname.Text = dr[0].ToString();
                    Txtsemail.Text = dr[1].ToString();
                    Txtscourse.Text = dr[2].ToString();
                    Txtfeedue.Text = dr[3].ToString();
                }
                dr.Close();
                cmd.ExecuteNonQuery();
     
                con.Close();
             }
            catch(Exception ex)
            {
               Labelmsg.Text = ex.Message;
            }
        }

        
    }
}