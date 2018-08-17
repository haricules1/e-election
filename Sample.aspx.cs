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
    public partial class Sample : System.Web.UI.Page
    {
        SqlConnection conn;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=elect;Integrated Security=True;Pooling=False");
            conn.Open();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                if (FileUpload1.HasFile)
                {
                    string fileExt, fname, qry;
                    fileExt = System.IO.Path.GetExtension(FileUpload1.FileName);
                    if (fileExt == ".jpg")
                    {
                        try
                        {
                            FileUpload1.SaveAs("F:\\WebApplication1\\WebApplication1\\pics\\" + FileUpload1.FileName);
                            fname = FileUpload1.FileName;
                            qry = "insert into product values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + fname + "')";
                            cmd = new SqlCommand(qry, conn);
                            cmd.ExecuteNonQuery();
                            Label1.Text = "saved...";
                        }
                        catch (Exception ex)
                        {
                            Label2.Visible = true;
                            Label2.Text = "Error" + ex.Message.ToString();
                        }
                    }
                    else
                    {
                        Label2.Visible = true;
                        Label2.Text = "only .jpg files allowed";
                    }
                }
                else
                {
                    Label2.Visible = true;
                    Label2.Text = "You have not specified a file";
                }
            }
            catch (Exception e1)
            {
                Label2.Visible = true;
                Label2.Text =e1.Message;
            }
        }
    }
}