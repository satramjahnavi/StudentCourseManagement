using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SMS
{
    public partial class SMS : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Adminname"] != null)
            {
                Labeluserlogin.Text = Session["Adminname"].ToString();
            }
            else
            {
                Response.Redirect("HomePage.aspx");
            }
        }

        protected void Lnkcourse_Click(object sender, EventArgs e)
        {
            Response.Redirect("Course.aspx");
        }

        protected void Lnkmentor_Click(object sender, EventArgs e)
        {
            Response.Redirect("Mentor.aspx");
        }

        protected void Lnkstudent_Click(object sender, EventArgs e)
        {
            Response.Redirect("Students.aspx");
        }

        protected void Lnklogout_Click(object sender, EventArgs e)
        {
            HttpContext.Current.Session.Abandon();
            Response.Redirect("HomePage.aspx");
        }

        protected void Lnkabout_Click(object sender, EventArgs e)
        {
            Response.Redirect("About.aspx");
        }
    }
}