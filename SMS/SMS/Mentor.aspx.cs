using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using System.Data;
namespace SMS
{
    public partial class Mentor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Addmentor_Click(object sender, EventArgs e)
        {
            string strcon = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            SqlCommand cmd = new SqlCommand("Insert into MentorTable(mname,memail,mphone,mcourse,mqualif,joindate)values(@mname,@memail,@mphone,@mcourse,@mqualif,@joindate)", con);
            con.Open();
            cmd.Parameters.AddWithValue("@mname", Txtmname.Text);
            cmd.Parameters.AddWithValue("@memail", Txtmemail.Text);
            cmd.Parameters.AddWithValue("@mphone", Txtmphone.Text);
            cmd.Parameters.AddWithValue("@mcourse", DDLmentor.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@mqualif", Txtmqualif.Text);
            cmd.Parameters.AddWithValue("@joindate", DateTime.Parse(Txtmdate.Text));
            cmd.ExecuteNonQuery();
            Labelmentor.Text = "Mentor" + Txtmname.Text + " added successfully";
            Txtmname.Text = "";
            Txtmemail.Text = "";
            Txtmphone.Text = "";
            Txtmqualif.Text = "";

            Txtmdate.Text = "";
            con.Close();
        }
    }
}