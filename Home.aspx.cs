using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void LoginIn_Click(object sender, EventArgs e)
    {

        Response.AddHeader("REFRESH", "0.25;URL=Login.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.AddHeader("REFRESH", "0.25;URL=UserInfo.aspx");

    }
    
    protected void Signupadmin_Click(object sender, EventArgs e)
    {
        Response.AddHeader("REFRESH", "0.25;URL=adminsignup.aspx");

    }

    protected void Logininadmin_Click(object sender, EventArgs e)
    {
        Response.AddHeader("REFRESH", "0.25;URL=adminlogin.aspx");

    }
}