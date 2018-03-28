using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Menu : System.Web.UI.Page
{

   public String password = "";
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
    protected void ShowSurveyCountbtn_Click(object sender, EventArgs e)
    {
        Page.Response.Redirect("showtotalcount.aspx?pass=" + password);

    }

    protected void FillSurveyFormbtn_Click(object sender, EventArgs e)
    {

        Page.Response.Redirect("survey.aspx?pass=" + password);
    }

    protected void ShowOptionPercantageBtn_Click(object sender, EventArgs e)
    {
        Page.Response.Redirect("showoptionpercentage.aspx?pass=" + password);

    }

    protected void ShowSurveyResultBtn_Click(object sender, EventArgs e)
    {
     //   Response.AddHeader("REFRESH", "0.05;URL=showsurveyresult.aspx");
        Page.Response.Redirect("showsurveyresult.aspx?pass=" + password);

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Page.Response.Redirect("UpdateSurvey.aspx?pass=" + password);
    }
}