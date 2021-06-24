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
    public partial class PublishedNews : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\91702\source\repos\Online_News_Magzine\Online_News_Magzine\App_Data\NewsDB.mdf;Integrated Security=True");

        String cancelBooking;

        protected void Page_Load(object sender, EventArgs e)
        {

            cancelBooking = Request.QueryString["cancelBooking"];

            if (cancelBooking == "cancelBooking")
            {
                Response.Write("<script> alert('This News has been deleted...'); </script>");
            }


            con.Open();

            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from AddNews";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            DataList1.DataSource = dt;
            DataList1.DataBind();
            con.Close();

        }

        protected void Cancel_Click(object sender, EventArgs e)
        {
            String cancelBooking = "cancelBooking";

            int id = Convert.ToInt32((sender as LinkButton).CommandArgument);

            if (deleteData(id) > 0)
            {
                Response.Redirect("~/PublishedNews.aspx?cancelBooking=" + cancelBooking);
                cancelBooking = "";
            }
            else
            {
                Response.Write("<script> alert('Something Went Wrong...!'); </script>");
            }
        }

        private int deleteData(int id)
        {
            con.Open();

            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "delete from AddNews where Id = '" + id + "' ";
            int i = cmd.ExecuteNonQuery();

            con.Close();
            return i;

        }

    }
}