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
    public partial class Voting : System.Web.UI.Page
    {
        string org;
        string un;
        SqlConnection conn;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            un = Session["un"].ToString();
            org = Session["org"].ToString();
            conn = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=election;Integrated Security=True;Pooling=False");
            conn.Open();
        }
        public string getData()
        {
            string data = "";
            cmd = new SqlCommand("select * from vlogin where organization='" + org + "' and username='" + un + "'", conn);
            using (SqlDataReader dr = cmd.ExecuteReader())
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        string ename;
                        ename = dr.GetString(1);

                        data += "<tr><td><a id='enn' href='Vote.aspx' >" + ename + "</a></td></tr>";
                        Session["en"] = ename;
                    }

                }
            return data;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            string args = btn.CommandArgument;
            Session["en"] = args;
            Response.Redirect("Vote.aspx");
        }
    }
}