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
    public partial class AddNews : System.Web.UI.Page
    {
        String path;
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\91702\source\repos\Online_News_Magzine\Online_News_Magzine\App_Data\NewsDB.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void newsDateButton_Click(object sender, EventArgs e)
        {
            Calendar1.Visible = true;
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            NewsDateText.Text = Calendar1.SelectedDate.ToLongDateString();
            Calendar1.Visible = false;
        }

        protected void addNews_Click(object sender, EventArgs e)
        {
            FileUpload1.SaveAs(Request.PhysicalApplicationPath + "/image/" + FileUpload1.FileName.ToString());
            path = "image/" + FileUpload1.FileName.ToString();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into AddNews values('" + NewsCategory.SelectedValue.ToString() + "','" + newsTitle.Text + "','" + NewsDateText.Text + "','" + newsDescription.Text + "','" + path.ToString() + "')";

            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                Response.Write("<script> alert('News Added Successfully...'); </script>");
            }
            else
            {
                message.Text = "something went wrong...!";
            }

            NewsDateText.Text = "";
            newsTitle.Text = "";
            newsDescription.Text = "";
        }
    }
}