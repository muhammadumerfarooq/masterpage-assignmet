using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.OleDb;
public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
    }

    protected void LoginBtn_Click(object sender, EventArgs e)
    {


        Boolean b = InsertInfo(Namebox.Text,PasswordBox.Text );
        if (b == false)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert( 'Your Info Not Added UserName Already Exists.');</script>");
        }
        else
        {
            Page.Response.Redirect("survey.aspx?pass=" + PasswordBox.Text);

        }
    }
    
    protected Boolean InsertInfo(String name, String pass)
    {
        Boolean c = checkuserinfo(name, pass);
        if (c==true)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert( 'Welcome / Fill Survey Form.');</script>");

            Page.Response.Redirect("survey.aspx?pass=" + PasswordBox.Text);
          //  Response.AddHeader("REFRESH", "0.25;URL=UserInfo.aspx");
            return true;
        }
        else
        {
            ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert( 'Your Account is Not Created / Create An Account.');</script>");
            Response.AddHeader("REFRESH", "0.25;URL=UserInfo.aspx");

            return false;

        }
    }

    protected Boolean checkuserinfo(String name, String pass)
    {

        using (OleDbConnection conn = new OleDbConnection(@"Provider = Microsoft.Jet.OLEDB.4.0; " +
            @"Data Source=C:\Users\Umer\Documents\Visual Studio 2015\Projects\masterpage\UserInfo.mdb;Persist Security Info=False"))
        using (OleDbCommand cmd = new OleDbCommand(" SELECT * from UserInfo", conn))
        {

            try
            {
                conn.Open();
                OleDbDataReader Reader = cmd.ExecuteReader();
                //if (Reader.HasRows)

                while (Reader.Read())
                {
                    String n = (Reader["username"].ToString());
                    String p = (Reader["password"].ToString());
                    //  Console.WriteLine(name + " " + pass);
                    if (p.Equals(pass) && n.Equals(name))
                        return true;
                }
            }
            catch (Exception ex)
            {
                Namebox.Text = ex.ToString();
            }
            /*  foreach (string n in name)
              {
                  Console.WriteLine(n);
              }
              conn.Close();
              name.Clear();
      */
            conn.Close();
        }
        return false;
    }

}