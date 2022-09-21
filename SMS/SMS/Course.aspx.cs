using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace SMS
{
    public partial class Course : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Add_Click(object sender, EventArgs e)
        {
            string strcon = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
            SqlConnection con=new SqlConnection(strcon);
            SqlCommand cmd = new SqlCommand("Insert into CourseTable(cname,cduration,cfee)values(@cname,@cduration,@cfee)",con);
            con.Open();
            cmd.Parameters.AddWithValue("@cname",Cname.Text );
            cmd.Parameters.AddWithValue("@cduration",Cduration.Text );
            cmd.Parameters.AddWithValue("@cfee",Cfees.Text );
            cmd.ExecuteNonQuery();
            Labelcourse.Text = "Course " + Cname.Text + " added successfully";
            Cname.Text = "";
            Cduration.Text = "";
            Cfees.Text = "";
            con.Close();
        }
    }
}