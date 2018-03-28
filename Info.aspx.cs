using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Info : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            TextBox1.Text = "hi";
        }
        else
            TextBox1.Text = "hello";


    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        TextBox1.Text = TextBox1.Text;
    }
}