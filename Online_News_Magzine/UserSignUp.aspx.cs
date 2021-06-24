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
    public partial class UserSignUp : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\91702\source\repos\Online_News_Magzine\Online_News_Magzine\App_Data\NewsDB.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserSignIn.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into ReaderSignUp values('" + firstName.Text + "','" + lastName.Text + "','" + readerEmail.Text + "','" +readerContact.Text + "','" + readerPassword.Text + "')";

            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                Response.Write("<script> alert('Signed Successfully...'); </script>");
            }
            else
            {
                message.Text = "something went wrong...!";
            }

            firstName.Text = "";
            lastName.Text = "";
            readerEmail.Text = "";
            readerContact.Text = "";
            readerPassword.Text = "";
            readerConfirmPassword.Text= "";
        }
    }
}