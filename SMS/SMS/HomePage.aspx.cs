using System;
using System.Collections.Generic;
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
            if(TxtadminID.Text=="admin" && Txtadminpswd.Text == "admin")
            {
                Session["Adminname"]="Welcome "+TxtadminID.Text;
                Response.Redirect("Admin.aspx");
            }
            else
            {
                Labelmsg.Text = "failed login details";

            }
        }
    }
}