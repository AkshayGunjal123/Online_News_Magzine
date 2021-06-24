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
    public partial class HomePage : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\91702\source\repos\Online_News_Magzine\Online_News_Magzine\App_Data\NewsDB.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

           
            con.Open();

            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from AddNews";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            con.Close();

        }

        protected void ReadNews_Click(object sender, EventArgs e)
        {
            int NewsId = Convert.ToInt32((sender as LinkButton).CommandArgument);
            Response.Redirect("UserSignIn.aspx");
        }
    }
}