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
    public partial class UserSignIn : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\91702\source\repos\Online_News_Magzine\Online_News_Magzine\App_Data\NewsDB.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

            {
            if (con.State == ConnectionState.Open)
                con.Close();
            }
            con.Open();

        }
    
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from ReaderSignUp where Email ='" + readerUsername.Text + "' and Password = '" + readerPassword.Text + "'";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            foreach (DataRow dr in dt.Rows)
            {
                Session["readerEmail"] = dr["Email"].ToString();
                Response.Redirect("UserHome.aspx");
            }

            message.Text = "Invalid Username or Password..!";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserSignUp.aspx");
        }
    }
}