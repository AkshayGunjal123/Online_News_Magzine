using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Online_News_Magzine
{
    public partial class UserNewsCategory : System.Web.UI.Page
    {
        int NewsId;
        String query;
        int NewsCategoryIdentity;
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\91702\source\repos\Online_News_Magzine\Online_News_Magzine\App_Data\NewsDB.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            String NewsCategoryId = Request.QueryString["NewsCategoryId"];
            //message.Text = "Id is "+NewsIdentity;
            NewsCategoryIdentity = Convert.ToInt32(NewsCategoryId);
            selectData();


            
        }

        protected void selectData() {
            

            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();

            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            if (NewsCategoryIdentity == 1) {

                String catName = "Covid";
                query = "select * from AddNews where NewsCategory = '" + catName + "' ";
            }
            else if (NewsCategoryIdentity == 2) {

                String catName = "WorldNews";
                query = "select * from AddNews where NewsCategory = '" + catName + "' ";

            }
            else if (NewsCategoryIdentity == 3)
            {

                String catName = "Politics";
                query = "select * from AddNews where NewsCategory = '" + catName + "' ";

            }
            else if (NewsCategoryIdentity == 4)
            {

                String catName = "Bollywood";
                query = "select * from AddNews where NewsCategory = '" + catName + "' ";

            }
            else if (NewsCategoryIdentity == 5)
            {

                String catName = "Cricket";
                query = "select * from AddNews where NewsCategory = '" + catName + "' ";

            } 
            else if (NewsCategoryIdentity == 6)
            {

                String catName = "Technology";
                query = "select * from AddNews where NewsCategory = '" + catName + "' ";

            }



            cmd.CommandText = query;
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void ReadNews_Click(object sender, EventArgs e)
        {
            NewsId = Convert.ToInt32((sender as LinkButton).CommandArgument);

            //message.Text = "Clicked Id is "+NewsId; 
            Response.Redirect("~/News.aspx?NewsId=" + NewsId.ToString());
        }
    }
}