using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.OleDb;
using System.Data;
public partial class showsurveyresult : System.Web.UI.Page
{
    String password = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
        if (Page.Request.QueryString["pass"] != null)
        {
            password = Page.Request.QueryString["pass"];
        }
        if (password.Equals(""))
        {
            ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert( 'You Are Not Login. Moving To Login Page');</script>");

            Response.AddHeader("REFRESH", "0.25;URL=Home.aspx");

        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        using (OleDbConnection conn = new OleDbConnection(@"Provider = Microsoft.Jet.OLEDB.4.0; " +
    @"Data Source=C:\Users\Umer\Documents\Visual Studio 2015\Projects\masterpage\UserInfo.mdb;Persist Security Info=False"))

        using (OleDbCommand cmd = new OleDbCommand(" SELECT * from UserInfo", conn))
        {

            try
            {


                DataTable table = new DataTable();
                DataSet ds = new DataSet();
                conn.Open();
                OleDbDataAdapter Reader = new OleDbDataAdapter();
          try    {
                    Reader.SelectCommand = cmd;
                    Reader.Fill(ds);
                    Reader.Dispose();
                    cmd.Dispose();
                    conn.Close();
                    //Reader.Fill(table);
                    grid.DataSource = ds.Tables[0];
                    grid.DataBind();

                }
                catch (Exception )
                {
                  //  TextBox1.Text = ex.ToString();
                }
            

                
                //gridusers.RenderControl(hw);

                conn.Close();
            }
            catch (Exception )
            {

               // TextBox1.Text = ex.ToString();

            }
            }
        
            }
}