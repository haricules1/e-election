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
    public partial class Electors : System.Web.UI.Page
    {
        string org;
        string en;
        SqlConnection conn;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            org = Session["org"].ToString();
            en = Session["en"].ToString();
            conn = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=Election;Integrated Security=True;Pooling=False");
            conn.Open();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            cmd = new SqlCommand("insert into vlogin values('" + org + "','" + en + "','" + TextBox1.Text + "','" + TextBox2.Text +"','"+TextBox3.Text+"',0)", conn);
            cmd.ExecuteNonQuery();
            conn.Close();
        }
    }
}