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
    public partial class Questions : System.Web.UI.Page
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
        public string get()
        {
            string data = "";
            cmd = new SqlCommand("select * from questions where organization='"+org+"' and ename='"+en+"'", conn);
            using (SqlDataReader dr = cmd.ExecuteReader())
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        string title;
                        title = dr.GetString(3);
                        data += "<tr><td>" + title + "</td></tr>";
                    }
                }
            return data;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string f1 = "", f2 = "", f3 = "", f4 = "";
            cmd = new SqlCommand("select count(*) from questions where organization='" + org + "' and ename='"+en+"'", conn);
            object n = cmd.ExecuteScalar();
            int count;
            count = (int)n;
            count++;
            if (FileUpload1.HasFile)
            {
                FileUpload1.SaveAs("C:\\Users\\Bharath\\Desktop\\project\\WebApplication1\\WebApplication1\\images\\" + FileUpload1.FileName);
                f1 = "~/images/" + FileUpload1.FileName;
            }
            if (FileUpload2.HasFile)
            {
                FileUpload2.SaveAs("C:\\Users\\Bharath\\Desktop\\project\\WebApplication1\\WebApplication1\\images\\" + FileUpload1.FileName);
                f2 = "~/images/" + FileUpload2.FileName;
            }
            if (FileUpload3.HasFile)
            {
                FileUpload3.SaveAs("C:\\Users\\Bharath\\Desktop\\project\\WebApplication1\\WebApplication1\\images\\" + FileUpload1.FileName);
                f3 = "~/images/" + FileUpload3.FileName;
            }
            if (FileUpload4.HasFile)
            {
                FileUpload4.SaveAs("C:\\Users\\Bharath\\Desktop\\project\\WebApplication1\\WebApplication1\\images\\" + FileUpload1.FileName);
                f4 = "~/images/" + FileUpload4.FileName;
            }
            cmd = new SqlCommand("insert into questions values('"+org+"','"+en+"',"+count+",'" + TextBox1.Text + "')", conn);
            cmd.ExecuteNonQuery();
            cmd = new SqlCommand("insert into options values('" + org + "','" + en + "'," + count + ",'" + TextBox2.Text + "'," + 0 + ",'" + TextBox1.Text + "','" + TextBox6.Text + "','" + f1 + "')", conn);
            cmd.ExecuteNonQuery();
            cmd = new SqlCommand("insert into options values('" + org + "','" + en + "'," + count + ",'" + TextBox3.Text + "'," + 0 + ",'" + TextBox1.Text + "','" + TextBox7.Text + "','" + f2 + "')", conn);
            cmd.ExecuteNonQuery();
            cmd = new SqlCommand("insert into options values('" + org + "','" + en + "'," + count + ",'" + TextBox4.Text + "'," + 0 + ",'" + TextBox1.Text + "','" + TextBox8.Text + "','" + f3 + "')", conn);
            cmd.ExecuteNonQuery();
            cmd = new SqlCommand("insert into options values('" + org + "','" + en + "'," + count + ",'" + TextBox5.Text + "'," + 0 + ",'" + TextBox1.Text + "','" + TextBox9.Text + "','" + f4 + "')", conn);
            cmd.ExecuteNonQuery();
            Response.Redirect("Questions.aspx");
            conn.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            string args = btn.CommandArgument;
            Session["qid"] = args;
            Response.Redirect("Options.aspx");
        }

    }
}