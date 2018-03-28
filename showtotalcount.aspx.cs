using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
public partial class showtotalcount : System.Web.UI.Page
{
    String passwrord = "";
    protected void Page_Load(object sender, EventArgs e)
    {
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

    protected void ShowResultbtn_Click(object sender, EventArgs e)
    {
        int totalparticipants = 0;
        int femaleparticipants = 0;
        int maleparticipants = 0;
        int agecount1 = 0;
        int agecount2 = 0;
        int agecount3 = 0;
        int agecount4 = 0;
        int income1 = 0;
        int income2 = 0;
        int income3 = 0;
        int income4 = 0;

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
                    String name = (Reader["username"].ToString());
                    String pass = (Reader["password"].ToString());
                    String gend = (Reader["gender"].ToString());
                    String age = (Reader["age"].ToString());
                    String income= (Reader["income"].ToString());
                    if (int.Parse(age) >= 18 && int.Parse(age) < 30)
                        agecount1++;

                    if (int.Parse(age) >= 30 && int.Parse(age) < 40)
                        agecount2++;

                    if (int.Parse(age) >= 40 && int.Parse(age) < 50)
                        agecount3++;

                    if (int.Parse(age) > 50 )
                        agecount4++;

                    if (gend.Equals("Male"))
                        maleparticipants++;
                    if (gend.Equals("Female"))
                        femaleparticipants++;

                    if (int.Parse(income) <= 2000)
                        income1++;
                    if (int.Parse(income) >= 2000 && int.Parse(income)<3000)
                        income2++;
                    if (int.Parse(income) >= 3000 && int.Parse(income) < 4000)
                        income3++;
                    if (int.Parse(income) >= 4000 && int.Parse(income) < 100000)
                        income4++;

                    totalparticipants++;
                }
            }
            catch (Exception ex)
            {
                TotalParticipantsbox.Text = ex.ToString();
            }

            TotalParticipantsbox.Text = totalparticipants.ToString();
            MaleParticipantsbox.Text = maleparticipants.ToString();
            FemaleParticipantsbox.Text = femaleparticipants.ToString();
            agebox1.Text = agecount1.ToString();
            agebox2.Text = agecount2.ToString();
            agebox3.Text = agecount3.ToString();
            agebox4.Text = agecount4.ToString();
            incomebox1.Text = income1.ToString();
            incomebox2.Text = income2.ToString();
            incomebox3.Text = income3.ToString();
            incomebox4.Text = income4.ToString();

            conn.Close();
        }
    }


}