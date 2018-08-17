using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class Organize : System.Web.UI.Page
    {
        SqlConnection conn;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=election;Integrated Security=True;Pooling=False");
            conn.Open();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "admin" && TextBox2.Text == "123")
                Response.Redirect("AdminPage.aspx");
            else
            {
                cmd = new SqlCommand("select count(*) from ologin where organization='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'", conn);
                object n;
                n = cmd.ExecuteScalar();
                int res;
                res = (int)n;
                if (res > 0)
                {
                    Session["org"] = TextBox1.Text;
                    Response.Redirect("Elections.aspx");

                }
                else
                {
                    Label3.Text = "Invalid Organisation name or password";
                    Label3.Visible = true;
                    Label3.ForeColor = System.Drawing.Color.Red;
                }
            }
        }
    }
}