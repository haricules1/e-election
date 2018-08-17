using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class PrivateLogin : System.Web.UI.Page
    {
        SqlConnection conn;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            conn = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=election;Integrated Security=True;Pooling=False");
            conn.Open();
            cmd = new SqlCommand("select count(*) from vlogin where organization='" + TextBox1.Text + "' and username='"+TextBox2.Text+"' and password='" + TextBox3.Text + "'", conn);
            object n;
            n = cmd.ExecuteScalar();
            int res;
            res = (int)n;
            if (res > 0)
            {
                Session["org"] = TextBox1.Text;
                Session["un"] = TextBox2.Text;
                Response.Redirect("Voting.aspx");

            }
            else
            {
                Label3.Text = "Invalid Organisation name, username or password";
                Label3.Visible = true;
                Label3.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}