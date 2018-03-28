using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EditQuestion : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        

       // UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
        RadioButtonList rblOperation = (RadioButtonList)Page.PreviousPage.FindControl("DrinkRB");
        if (rblOperation != null )
        {
            TextBox1.Text = rblOperation.SelectedValue;

            TextBox1.Text = "umer";
        } else
        {

        }
    }
        
    }

