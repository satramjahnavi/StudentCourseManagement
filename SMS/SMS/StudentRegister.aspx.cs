using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Xml.Linq;
using System.Net;
using System.IO;
using System.Net.Mail;
namespace SMS
{
    public partial class Student : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void Addstudent_Click(object sender, EventArgs e)
        {
            string strcon = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("Insert into StudentTable(sfname,slname,pname,pphone,scourse,scoursefee,sfirstpayment,sfeedue,joindate,semail,sphone)values(@sfname, @slname, @pname, @pphone, @scourse, @scoursefee, @sfirstpayment, @sfeedue, @joindate,@semail,@sphone)", con);
            cmd.Parameters.AddWithValue("@sfname", Txtsfname.Text);
            cmd.Parameters.AddWithValue("@slname", Txtslname.Text);
            cmd.Parameters.AddWithValue("@pname", Txtpname.Text);
            cmd.Parameters.AddWithValue("@pphone", Txtpphone.Text);
            cmd.Parameters.AddWithValue("@scourse", DDLstudent.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@scoursefee",Txtcoursefee.Text);
            cmd.Parameters.AddWithValue("@sfirstpayment", Txtfirstpayment.Text);
            cmd.Parameters.AddWithValue("@sfeedue", Txtfeesdue.Text);
            cmd.Parameters.AddWithValue("@joindate", joindate.Text);
            cmd.Parameters.AddWithValue("@semail", Txtemail.Text);
            cmd.Parameters.AddWithValue("@sphone", Txtphone.Text);
            cmd.ExecuteNonQuery();
            Labelstudent.Text = "Student  " + Txtsfname.Text + "added successfully.. Fee reciept has been sent to EMail "+ Txtemail.Text;
            MailMessage mailMessage = new MailMessage(Txtadminmail.Text,Txtemail.Text);
            mailMessage.Subject = "Receipt details...";
            mailMessage.Body ="Dear"+Txtsfname.Text+" "+Txtslname.Text+ ".The Course you have joined is " + DDLstudent.SelectedItem.Text +"\nThe Course fees is " + Txtcoursefee.Text + " and your first installment is " + Txtfirstpayment.Text + "\n finally the pending fee is " + Txtfeesdue.Text+"\n[Note - Certificate will be issued after the payment of the pending fees]\n\n\nThank You.";
            mailMessage.IsBodyHtml= false;
            SmtpClient smtpClient = new SmtpClient();
            smtpClient.Host = "smtp.gmail.com";
            smtpClient.Port = 587;
            smtpClient.EnableSsl = true;


            NetworkCredential nc=new NetworkCredential(Txtadminmail.Text,Txtadminpassword.Text);
            smtpClient.UseDefaultCredentials = true;
            smtpClient.Credentials= nc;
            smtpClient.Send(mailMessage);
            con.Close();
        }
        protected void Txtfirstpayment_TextChanged(object sender, EventArgs e)
        {
            int bal = Convert.ToInt32(Txtcoursefee.Text) -Convert.ToInt32(Txtfirstpayment.Text);
            Txtfeesdue.Text = bal.ToString();
        }

        protected void DDLstudent_SelectedIndexChanged(object sender, EventArgs e)
        {
            string strcon = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            string sqlquery = "select * from [dbo].[CourseTable] where cname=@cname";
            SqlCommand cmd = new SqlCommand(sqlquery, con);
            cmd.Parameters.AddWithValue("@cname", DDLstudent.SelectedItem.Text);
            SqlDataReader sdr = cmd.ExecuteReader();
            sdr.Read();
            Txtcoursefee.Text = sdr["cfee"].ToString();
            con.Close();
        }

        protected void Viewstudents_Click(object sender, EventArgs e)
        {
            Response.Redirect("Students.aspx");
        }
    }
}