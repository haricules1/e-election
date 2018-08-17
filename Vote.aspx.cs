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
    public partial class Vote : System.Web.UI.Page
    {
        SqlConnection conn;
        SqlCommand cmd;
        RadioButtonList rbl;
        SqlDataReader dr;
        RadioButtonList rlb;
        string org;
        string en;
        protected void Page_Load(object sender, EventArgs e)
        {
            org = Session["org"].ToString();
            en = Session["en"].ToString();
            List<string> ls = new List<string>();
            conn = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=Election;Integrated Security=True;Pooling=False");
            conn.Open();
            cmd = new SqlCommand("select question from questions where organization='"+org+"' and ename='"+en+"'", conn);
            using (dr = cmd.ExecuteReader())
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        string title;
                        title = dr.GetString(0);
                        ls.Add(title);
                    }
                }
            dr.Close();
            foreach (string name in ls)
            {
                rlb = new RadioButtonList();
                rlb.ID = name;
                Label lbl = new Label();
                lbl.Text = name;
                PlaceHolder1.Controls.Add(lbl);
                Button btn = new Button();
                btn.Text = "...";
                btn.BorderStyle = System.Drawing;
                cmd = new SqlCommand("select options from options where questions='" + name + "'", conn);
                using (dr = cmd.ExecuteReader())
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            string opt;
                            opt = dr.GetString(0);
                            rlb.Items.Add(opt);
                            PlaceHolder1.Controls.Add(btn);
                        }
                        PlaceHolder1.Controls.Add(rlb);

                    }
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
        }
    }
}