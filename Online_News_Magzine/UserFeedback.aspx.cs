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
    public partial class UserFeedback : System.Web.UI.Page
    {
        int NewsIdentity; 
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\91702\source\repos\Online_News_Magzine\Online_News_Magzine\App_Data\NewsDB.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

                Page lastPage = (Page)Context.Handler;
                
                 message.Text = (((UserHome)lastPage).NewsId).ToString();
          
                 selectData();
            }

        private void selectData() {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();
           
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from AddNews where Id = '" + Convert.ToInt32(message.ToString()) + "' ";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        

    }
}