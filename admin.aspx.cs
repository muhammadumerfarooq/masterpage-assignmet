using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void login_Click(object sender, EventArgs e)
    {

        Response.AddHeader("REFRESH", "0.25;URL=adminlogin.aspx");
    }

    protected void signup_Click(object sender, EventArgs e)
    {

        Response.AddHeader("REFRESH", "0.25;URL=adminsignup.aspx");
    }


   
}