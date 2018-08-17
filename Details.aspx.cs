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
    public partial class Details : System.Web.UI.Page
    {
        string org;
        string en;
        SqlConnection conn;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            org = Session["org"].ToString();
            en=Session["en"].ToString();
            conn = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=election;Integrated Security=True;Pooling=False");
            conn.Open();
            cmd = new SqlCommand("select * from elections where organization='"+org+"' and ename='"+en+"'",conn);
            using (SqlDataReader dr = cmd.ExecuteReader())
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Label1.Visible = true;
                        Label2.Visible = true;
                        Label3.Visible = true;
                        Label4.Visible = true;
                        Label5.Visible = true;
                        Label1.Text = dr.GetString(1);
                        Label2.Text = dr.GetValue(3).ToString();
                        Label3.Text = dr.GetValue(4).ToString();
                        Label4.Text = dr.GetValue(5).ToString();
                        Label5.Text = dr.GetValue(6).ToString();
                    }
                }
        }
    }
}