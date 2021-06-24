using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_News_Magzine
{
    public partial class AdminSignIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (adminUsername.Text == "akshay" && adminPassword.Text == "akshay") {
                Response.Redirect("AdminHome.aspx");            
            }
            message.Text= "Username or Password Wrong...!";
        }
    }
}