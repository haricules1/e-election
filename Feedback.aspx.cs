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
    public partial class Feedback : System.Web.UI.Page
    {
        SqlCommand cmd;
        SqlConnection conn;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            conn = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=election;Integrated Security=True;Pooling=False");
            conn.Open();
            cmd = new SqlCommand("insert into feedback values('"+ TextBox1.Text + "',"+ TextBox2.Text + ",'" + TextBox3.Text + "','"+ TextBox4.Text + "')", conn);
            cmd.ExecuteNonQuery();
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            Label1.Text = "Thanks for your feedback..";
            Label1.Visible = true;
            conn.Close();
        }
    }
}