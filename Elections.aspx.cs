using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace WebApplication1
{
    public partial class Elections : System.Web.UI.Page
    {
        SqlConnection conn;
        SqlCommand cmd;
        string org;
        protected void Page_Load(object sender, EventArgs e)
        {
            org = Session["org"].ToString();
            conn = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=election;Integrated Security=True;Pooling=False");
            conn.Open();

        }
        protected void Button1_Click(object sender, EventArgs e)
        {

            cmd = new SqlCommand("select count(*) from elections where organization='" + org + "'", conn);
            object n = cmd.ExecuteScalar();
            int count;
            count = (int)n;
            count++;
            cmd = new SqlCommand("insert into elections(eid,ename,organization) values(" + count + ",'" + TextBox1.Text + "','" + org + "')", conn);
            cmd.ExecuteNonQuery();
            Response.Redirect("Elections.aspx");
            conn.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("Organize.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Button btn=(Button)sender;
            string args = btn.CommandArgument;
            Session["en"] = args;
            Response.Redirect("Details.aspx");
        }


    }
}