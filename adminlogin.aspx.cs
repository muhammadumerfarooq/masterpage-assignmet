using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using ADOX;
using ADODB;

public partial class adminlogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;

    }

    protected void LogInbtn_Click(object sender, EventArgs e)
    {
        Boolean c = checkuserinfo(Namebox.Text,PasswordBox.Text);
        if (c==true)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert( 'You Are Login. Moving To Menu Page');</script>");

            Response.AddHeader("REFRESH", "0.05;URL=Menu.aspx?pass=" + PasswordBox.Text);
            

        }
        else
        {
            ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert( 'You Are Not Login. Enter Again');</script>");

            
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
                    
                    if (p.Equals(pass) && n.Equals(name))
                        return false;
                }
            }
            catch (Exception ex)
            {
                Namebox.Text = ex.ToString();
            }
           
            conn.Close();
        }
        return true;
    }
}