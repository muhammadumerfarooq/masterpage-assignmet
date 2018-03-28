using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
public partial class showoptionpercentage : System.Web.UI.Page
{
   


        String passwrord = "";
    protected void Page_Load(object sender, EventArgs e)
    {

        UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;

        if (Page.Request.QueryString["pass"] != null)
        {
            passwrord = Page.Request.QueryString["pass"];
        }
        if (passwrord.Equals(""))
        {
            ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert( 'You Are Not Login. Moving To Login Page');</script>");

            Response.AddHeader("REFRESH", "0.25;URL=Home.aspx");

        }
    }

    protected void ShowResultBtn_Click(object sender, EventArgs e)
    {
        int Q1parta = 0;
        int Q1partb = 0;
        int Q1partc = 0;
        int Q1partd = 0;

        int Q2parta = 0;
        int Q2partb = 0;
        int Q2partc = 0;
        int Q2partd = 0;

        int Q3parta = 0;
        int Q3partb = 0;
        int Q3partc = 0;
        int Q3partd = 0;

        int Q4parta = 0;
        int Q4partb = 0;
        int Q4partc = 0;
        int Q4partd = 0;

        int Q5parta = 0;
        int Q5partb = 0;
        int Q5partc = 0;
        int Q5partd = 0;

        int Q6parta = 0;
        int Q6partb = 0;
        int Q6partc = 0;
        int Q6partd = 0;

        int Q7parta = 0;
        int Q7partb = 0;
        int Q7partc = 0;
        int Q7partd = 0;

        int Q8parta = 0;
        int Q8partb = 0;
        int Q8partc = 0;
        int Q8partd = 0;

        int Q9parta = 0;
        int Q9partb = 0;
        int Q9partc = 0;
        int Q9partd = 0;

        int Q10parta = 0;
        int Q10partb = 0;
        int Q10partc = 0;
        int Q10partd = 0;

        int Q11parta = 0;
        int Q11partb = 0;
        int Q11partc = 0;
        int Q11partd = 0;

        using (OleDbConnection conn = new OleDbConnection(@"Provider = Microsoft.Jet.OLEDB.4.0; " +
            @"Data Source=C:\Users\Umer\Documents\Visual Studio 2015\Projects\masterpage\UserInfo.mdb;Persist Security Info=False"))
        using (OleDbCommand cmd = new OleDbCommand(" SELECT * from survey", conn))
        {

            try
            {
                conn.Open();
                OleDbDataReader Reader = cmd.ExecuteReader();
                //if (Reader.HasRows)

                while (Reader.Read())
                {

                    String Q1 = (Reader["drink"].ToString());
                    String Q2 = (Reader["fastfood"].ToString());
                    String Q3 = (Reader["icecream"].ToString());
                    String Q4 = (Reader["sports"].ToString());
                    String Q5 = (Reader["movie"].ToString());
                    String Q6 = (Reader["animated"].ToString());
                    String Q7 = (Reader["comics"].ToString());
                    String Q8 = (Reader["street"].ToString());
                    String Q9 = (Reader["sportsman"].ToString());
                    String Q10 = (Reader["tv"].ToString());
                    String Q11 = (Reader["mentor"].ToString());
                    if (int.Parse(Q1) == 0)
                    {
                        Q1parta++;

                    }
                    if (int.Parse(Q1) == 1)
                    {
                        Q1partb++;
                    }
                    if (int.Parse(Q1) == 2)
                    {
                        Q1partc++;
                    }
                    if (int.Parse(Q1) == 3)
                    {
                        Q1partd++;
                    }


                    if (int.Parse(Q2) == 0)
                    {
                        Q2parta++;
                    }
                    if (int.Parse(Q2) == 1)
                    {
                        Q2partb++;
                    }
                    if (int.Parse(Q2) == 2)
                    {
                        Q2partc++;
                    }
                    if (int.Parse(Q2) == 3)
                    {
                        Q2partd++;
                    }


                    if (int.Parse(Q3) == 0)
                    {
                        Q3parta++;
                    }
                    if (int.Parse(Q3) == 1)
                    {
                        Q3partb++;
                    }
                    if (int.Parse(Q3) == 2)
                    {
                        Q3partc++;
                    }
                    if (int.Parse(Q3) == 3)
                    {
                        Q3partd++;
                    }



                    if (int.Parse(Q4) == 0)
                    {
                        Q4parta++;
                    }
                    if (int.Parse(Q4) == 1)
                    {
                        Q3partb++;
                    }
                    if (int.Parse(Q4) == 2)
                    {
                        Q4partc++;
                    }
                    if (int.Parse(Q4) == 3)
                    {
                        Q4partd++;
                    }



                    if (int.Parse(Q5) == 0)
                    {
                        Q5parta++;
                    }
                    if (int.Parse(Q5) == 1)
                    {
                        Q5partb++;
                    }
                    if (int.Parse(Q5) == 2)
                    {
                        Q5partc++;
                    }
                    if (int.Parse(Q5) == 3)
                    {
                        Q5partd++;
                    }


                    if (int.Parse(Q6) == 0)
                    {
                        Q6parta++;
                    }
                    if (int.Parse(Q6) == 1)
                    {
                        Q6partb++;
                    }
                    if (int.Parse(Q6) == 2)
                    {
                        Q6partc++;
                    }
                    if (int.Parse(Q6) == 3)
                    {
                        Q6partd++;
                    }


                    if (int.Parse(Q7) == 0)
                    {
                        Q3parta++;
                    }
                    if (int.Parse(Q7) == 1)
                    {
                        Q7partb++;
                    }
                    if (int.Parse(Q7) == 2)
                    {
                        Q7partc++;
                    }
                    if (int.Parse(Q7) == 3)
                    {
                        Q7partd++;
                    }


                    if (int.Parse(Q8) == 0)
                    {
                        Q8parta++;
                    }
                    if (int.Parse(Q8) == 1)
                    {
                        Q8partb++;
                    }
                    if (int.Parse(Q8) == 2)
                    {
                        Q8partc++;
                    }
                    if (int.Parse(Q8) == 3)
                    {
                        Q8partd++;
                    }


                    if (int.Parse(Q9) == 0)
                    {
                        Q9parta++;
                    }
                    if (int.Parse(Q9) == 1)
                    {
                        Q9partb++;
                    }
                    if (int.Parse(Q9) == 2)
                    {
                        Q9partc++;
                    }
                    if (int.Parse(Q9) == 3)
                    {
                        Q9partd++;
                    }


                    if (int.Parse(Q10) == 0)
                    {
                        Q10parta++;
                    }
                    if (int.Parse(Q10) == 1)
                    {
                        Q10partb++;
                    }
                    if (int.Parse(Q10) == 2)
                    {
                        Q10partc++;
                    }
                    if (int.Parse(Q10) == 3)
                    {
                        Q10partd++;
                    }


                    if (int.Parse(Q11) == 0)
                    {
                        Q11parta++;
                    }
                    if (int.Parse(Q11) == 1)
                    {
                        Q11partb++;
                    }
                    if (int.Parse(Q11) == 2)
                    {
                        Q11partc++;
                    }
                    if (int.Parse(Q11) == 3)
                    {
                        Q11partd++;
                    }

                }

                Q1box1.Text = ((Q1parta * (100)) / (Q1parta+Q1partb+ Q1partc+ Q1partd)).ToString()+"%";
                Q1box2.Text = ((Q1partb * (100)) / (Q1parta + Q1partb + Q1partc + Q1partd)).ToString() + "%";
                Q1box3.Text = ((Q1partc * (100)) / (Q1parta + Q1partb + Q1partc + Q1partd)).ToString() + "%";
                Q1box4.Text = ((Q1partd * (100)) / (Q1parta + Q1partb + Q1partc + Q1partd)).ToString() + "%";

                Q2box1.Text = ((Q2parta * (100)) / (Q2parta + Q2partb + Q2partc + Q2partd)).ToString() + "%";
                Q2box2.Text = ((Q2partb * (100)) / (Q2parta + Q2partb + Q2partc + Q2partd)).ToString() + "%";
                Q2box3.Text = ((Q2partc * (100)) / (Q2parta + Q2partb + Q2partc + Q2partd)).ToString() + "%";
                Q2box4.Text = ((Q2partd * (100)) / (Q2parta + Q2partb + Q2partc + Q2partd)).ToString() + "%";

                Q3box1.Text = ((Q3parta * (100)) / (Q3parta + Q3partb + Q3partc + Q3partd)).ToString() + "%";
                Q3box2.Text = ((Q3partb * (100)) / (Q3parta + Q3partb + Q3partc + Q3partd)).ToString() + "%";
                Q3box3.Text = ((Q3partc* (100)) / (Q3parta + Q3partb + Q3partc + Q3partd)).ToString() + "%";
                Q3box4.Text = ((Q3partd * (100)) / (Q3parta + Q3partb + Q3partc + Q3partd)).ToString() + "%";

                Q4box1.Text = ((Q4parta * (100)) / (Q4parta + Q4partb + Q4partc + Q4partd)).ToString() + "%";
                Q4box2.Text = ((Q4partb * (100)) / (Q4parta + Q4partb + Q4partc + Q4partd)).ToString() + "%";
                Q4box3.Text = ((Q4partc * (100)) / (Q4parta + Q4partb + Q4partc + Q4partd)).ToString() + "%";
                Q4box4.Text = ((Q4partd * (100)) / (Q4parta + Q4partb + Q4partc + Q4partd)).ToString() + "%";

                Q5box1.Text = ((Q5parta * (100)) / (Q5parta + Q5partb + Q5partc + Q5partd)).ToString() + "%";
                Q5box2.Text = ((Q5partb * (100)) / (Q5parta + Q5partb + Q5partc + Q5partd)).ToString() + "%";
                Q5box3.Text = ((Q5partc * (100)) / (Q5parta + Q5partb + Q5partc + Q5partd)).ToString() + "%";
                Q5box4.Text = ((Q5partd * (100)) / (Q5parta + Q5partb + Q5partc + Q5partd)).ToString() + "%";

                Q6box1.Text = ((Q6parta * (100)) / (Q6parta + Q6partb + Q6partc + Q6partd)).ToString() + "%";
                Q6box2.Text = ((Q6partb * (100)) / (Q6parta + Q6partb + Q6partc + Q6partd)).ToString() + "%";
                Q6box3.Text = ((Q6partc * (100)) / (Q6parta + Q6partb + Q6partc + Q6partd)).ToString() + "%";
                Q6box4.Text = ((Q6partd * (100)) / (Q6parta + Q6partb + Q6partc + Q6partd)).ToString() + "%";

                Q7box1.Text = ((Q7parta * (100)) / (Q7parta + Q7partb + Q7partc + Q7partd)).ToString() + "%";
                Q7box2.Text = ((Q7partb * (100)) / (Q7parta + Q7partb + Q7partc + Q7partd)).ToString() + "%";
                Q7box3.Text = ((Q7partc * (100)) / (Q7parta + Q7partb + Q7partc + Q7partd)).ToString() + "%";
                Q7box4.Text = ((Q7partd * (100)) / (Q7parta + Q7partb + Q7partc + Q7partd)).ToString() + "%";

                Q8box1.Text = ((Q8parta * (100)) / (Q8parta + Q8partb + Q8partc + Q8partd)).ToString() + "%";
                Q8box2.Text = ((Q8partb * (100)) / (Q8parta + Q8partb + Q8partc + Q8partd)).ToString() + "%";
                Q8box3.Text = ((Q8partc * (100)) / (Q8parta + Q8partb + Q8partc + Q8partd)).ToString() + "%";
                Q8box4.Text = ((Q8partd * (100)) / (Q8parta + Q8partb + Q8partc + Q8partd)).ToString() + "%";

                Q9box1.Text = ((Q9parta * (100)) / (Q9parta + Q9partb + Q9partc + Q9partd)).ToString() + "%";
                Q9box2.Text = ((Q9partb * (100)) / (Q9parta + Q9partb + Q9partc + Q9partd)).ToString() + "%";
                Q9box3.Text = ((Q9partc * (100)) / (Q9parta + Q9partb + Q9partc + Q9partd)).ToString() + "%";
                Q9box4.Text = ((Q9partd * (100)) / (Q9parta + Q9partb + Q9partc + Q9partd)).ToString() + "%";

                Q10box1.Text = ((Q10parta * (100)) / (Q10parta + Q10partb + Q10partc + Q10partd)).ToString() + "%";
                Q10box2.Text = ((Q10partb * (100)) / (Q10parta + Q10partb + Q10partc + Q10partd)).ToString() + "%";
                Q10box3.Text = ((Q10partc * (100)) / (Q10parta + Q10partb + Q10partc + Q10partd)).ToString() + "%";
                Q10box4.Text = ((Q10partd * (100)) / (Q10parta + Q10partb + Q10partc + Q10partd)).ToString() + "%";

                Q11box1.Text = ((Q11parta * (100)) / (Q11parta + Q11partb + Q11partc + Q11partd)).ToString() + "%";
                Q11box2.Text = ((Q11partb * (100)) / (Q11parta + Q11partb + Q11partc + Q11partd)).ToString() + "%";
                Q11box3.Text = ((Q11partc * (100)) / (Q11parta + Q11partb + Q11partc + Q11partd)).ToString() + "%";
                Q11box4.Text = ((Q11partd * (100)) / (Q11parta + Q11partb + Q11partc + Q11partd)).ToString() + "%";

            }
            catch (Exception)
            {
                //    TotalParticipantsbox.Text = ex.ToString();
            //    TextBox1.Text = ex.ToString();
            }

            

            conn.Close();
        }
    }

}