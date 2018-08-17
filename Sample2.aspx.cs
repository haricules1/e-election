using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class Sample2 : System.Web.UI.Page
    {
        SqlConnection conn;
        SqlCommand cmd;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Session["nm"].ToString();
            String n = Session["no"].ToString();
            string qry = "select * from products where id=" + n + " and name='" + Label1.Text + "' ";
            cmd = new SqlCommand(qry, conn);
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {

                Image2.ImageUrl = "D:\\C# proj\\DemoSite\\photogallery\\" + dr.GetString(2);
                //Label2.Text = "OK";
                // Image1.ImageUrl = "~/images/" + dr.GetString(2);
            }
            else
                Image2.ImageUrl = "~\\images\\Tulips.jpg";
            dr.Close();
        }
    }
}