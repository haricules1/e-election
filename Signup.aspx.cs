using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class Signup : System.Web.UI.Page
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
            if (TextBox5.Text == TextBox6.Text)
            {
                cmd = new SqlCommand("insert into signup values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "')", conn);
                cmd.ExecuteNonQuery();
                cmd = new SqlCommand("insert into ologin values('" + TextBox2.Text + "','" + TextBox5.Text + "')", conn);
                cmd.ExecuteNonQuery();
                Response.Redirect("Organize.aspx");
            }
            else
            {
                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Text = "Password doesn't match !!";
            }
            
        }
    }
}