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
    public partial class UserHome : System.Web.UI.Page
    {
        public int NewsId;
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\91702\source\repos\Online_News_Magzine\Online_News_Magzine\App_Data\NewsDB.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["readerEmail"] == null)
            {
                Response.Redirect("UserSignIn.aspx");
            }

            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
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
        }

        protected void ReadNews_Click(object sender, EventArgs e)
        {
             NewsId = Convert.ToInt32((sender as LinkButton).CommandArgument);

            //message.Text = "Clicked Id is "+NewsId; 
            Response.Redirect("~/News.aspx?NewsId=" +NewsId.ToString());
        }

       

    }
}