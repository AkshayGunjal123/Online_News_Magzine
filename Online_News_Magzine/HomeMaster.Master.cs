using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_News_Magzine
{
    public partial class HomeMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Covid
            Response.Redirect("~/HomeNewsCategory.aspx?NewsCategoryId=" + "1");
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //World
            Response.Redirect("~/HomeNewsCategory.aspx?NewsCategoryId=" + "2");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            //Politics
            Response.Redirect("~/HomeNewsCategory.aspx?NewsCategoryId=" + "3");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            //Bollywood
            Response.Redirect("~/HomeNewsCategory.aspx?NewsCategoryId=" + "4");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            //Cricket
            Response.Redirect("~/HomeNewsCategory.aspx?NewsCategoryId=" + "5");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            //Technology
            Response.Redirect("~/HomeNewsCategory.aspx?NewsCategoryId=" + "6");
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserSignIn.aspx");
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserSignUp.aspx");
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminSignIn.aspx");
        }
    }
}