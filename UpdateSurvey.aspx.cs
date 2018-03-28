using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
public partial class UpdateSurvey : System.Web.UI.Page
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


    protected void Q1Show_Click(object sender, EventArgs e)
    {
        using (OleDbConnection conn = new OleDbConnection(@"Provider = Microsoft.Jet.OLEDB.4.0; " +
            @"Data Source=C:\Users\Umer\Documents\Visual Studio 2015\Projects\masterpage\UserInfo.mdb;Persist Security Info=False"))
        using (OleDbCommand cmd = new OleDbCommand(" SELECT * from AdminSurvey", conn))
        {

            try
            {
                conn.Open();
                OleDbDataReader Reader = cmd.ExecuteReader();
                //if (Reader.HasRows)

                while (Reader.Read())
                {

                    String q1 = (Reader["Q1"].ToString());
                    String q1_a = (Reader["Q1_a"].ToString());
                    String q1_b = (Reader["Q1_b"].ToString());
                    String q1_c = (Reader["Q1_c"].ToString());
                    String q1_d = (Reader["Q1_d"].ToString());

                    Q1.Text = q1;
                    Q1_a.Text = q1_a;
                    Q1_b.Text = q1_b;

                    Q1_c.Text = q1_c;
                    Q1_d.Text = q1_d;
                }
                conn.Close();
            }
            catch(Exception)
            {

                conn.Close();
            }
            }
    }
    protected Boolean checkuserinfo()
    {

        using (OleDbConnection conn = new OleDbConnection(@"Provider = Microsoft.Jet.OLEDB.4.0; " +
            @"Data Source=C:\Users\Umer\Documents\Visual Studio 2015\Projects\masterpage\UserInfo.mdb;Persist Security Info=False"))
        using (OleDbCommand cmd = new OleDbCommand(" SELECT * from AdminSurvey", conn))
        {

            conn.Open();
            OleDbDataReader Reader = cmd.ExecuteReader();

            while (Reader.Read())
            {
                String p = (Reader["ID"].ToString());

                
                if (p != "")
                {
                    conn.Close();
                    Reader.Close();
                    return false;
                }

                else
                {
                    Reader.Close();
                    conn.Close();
                    return true;
                }
            }
            conn.Close();
        }
        return true;
    }


    protected void Q1Insert_Click(object sender, EventArgs e)
    { Boolean b = checkuserinfo();
        
            OleDbDataAdapter da = new OleDbDataAdapter();
            OleDbConnection conn = new OleDbConnection("Provider = Microsoft.Jet.OLEDB.4.0; " +
               "Data Source=C:\\Users\\Umer\\Documents\\Visual Studio 2015\\Projects\\masterpage\\UserInfo.mdb");

            conn.Open();
            string query = "UPDATE [AdminSurvey] SET [Q1] = ? WHERE ID = ?";
            var updatecommand = new OleDbCommand(query, conn);
            updatecommand.Parameters.AddWithValue("Q1", Q1.Text);

            updatecommand.Parameters.AddWithValue("ID", passwrord);

            da.UpdateCommand = updatecommand;
            da.UpdateCommand.ExecuteNonQuery();

            query = "UPDATE [AdminSurvey] SET [Q1_a] = ? WHERE ID = ?";
            updatecommand = new OleDbCommand(query, conn);
            updatecommand.Parameters.AddWithValue("Q1_a", Q1_a.Text);

            updatecommand.Parameters.AddWithValue("ID", passwrord);

            da.UpdateCommand = updatecommand;
            da.UpdateCommand.ExecuteNonQuery();
            query = "UPDATE [AdminSurvey] SET [Q1_b] = ? WHERE ID = ?";
            updatecommand = new OleDbCommand(query, conn);
            updatecommand.Parameters.AddWithValue("Q1_b", Q1_b.Text);

            updatecommand.Parameters.AddWithValue("ID", passwrord);

            da.UpdateCommand = updatecommand;
            da.UpdateCommand.ExecuteNonQuery();
            query = "UPDATE [AdminSurvey] SET [Q1_c] = ? WHERE ID = ?";
            updatecommand = new OleDbCommand(query, conn);
            updatecommand.Parameters.AddWithValue("Q1_c", Q1_c.Text);

            updatecommand.Parameters.AddWithValue("ID", passwrord);

            da.UpdateCommand = updatecommand;
            da.UpdateCommand.ExecuteNonQuery();
            query = "UPDATE [AdminSurvey] SET [Q1_d] = ? WHERE ID = ?";
            updatecommand = new OleDbCommand(query, conn);
            updatecommand.Parameters.AddWithValue("Q1_d", Q1_d.Text);

            updatecommand.Parameters.AddWithValue("ID", passwrord);

            da.UpdateCommand = updatecommand;
            da.UpdateCommand.ExecuteNonQuery();
            ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert( 'Data Added');</script>");

            conn.Close();
        //}
    }

    protected void Q2Insert_Click(object sender, EventArgs e)
    {
        Boolean b = checkuserinfo();

        OleDbDataAdapter da = new OleDbDataAdapter();
        OleDbConnection conn = new OleDbConnection("Provider = Microsoft.Jet.OLEDB.4.0; " +
           "Data Source=C:\\Users\\Umer\\Documents\\Visual Studio 2015\\Projects\\masterpage\\UserInfo.mdb");

        conn.Open();
        string query = "UPDATE [AdminSurvey] SET [Q2] = ? WHERE ID = ?";
        var updatecommand = new OleDbCommand(query, conn);
        updatecommand.Parameters.AddWithValue("Q2", Q2.Text);

        updatecommand.Parameters.AddWithValue("ID", passwrord);

        da.UpdateCommand = updatecommand;
        da.UpdateCommand.ExecuteNonQuery();

        query = "UPDATE [AdminSurvey] SET [Q2_a] = ? WHERE ID = ?";
        updatecommand = new OleDbCommand(query, conn);
        updatecommand.Parameters.AddWithValue("Q2_a", Q2_a.Text);

        updatecommand.Parameters.AddWithValue("ID", passwrord);

        da.UpdateCommand = updatecommand;
        da.UpdateCommand.ExecuteNonQuery();
        query = "UPDATE [AdminSurvey] SET [Q2_b] = ? WHERE ID = ?";
        updatecommand = new OleDbCommand(query, conn);
        updatecommand.Parameters.AddWithValue("Q2_b", Q2_b.Text);

        updatecommand.Parameters.AddWithValue("ID", passwrord);

        da.UpdateCommand = updatecommand;
        da.UpdateCommand.ExecuteNonQuery();
        query = "UPDATE [AdminSurvey] SET [Q2_c] = ? WHERE ID = ?";
        updatecommand = new OleDbCommand(query, conn);
        updatecommand.Parameters.AddWithValue("Q2_c", Q2_c.Text);

        updatecommand.Parameters.AddWithValue("ID", passwrord);

        da.UpdateCommand = updatecommand;
        da.UpdateCommand.ExecuteNonQuery();
        query = "UPDATE [AdminSurvey] SET [Q2_d] = ? WHERE ID = ?";
        updatecommand = new OleDbCommand(query, conn);
        updatecommand.Parameters.AddWithValue("Q2_d", Q2_d.Text);

        updatecommand.Parameters.AddWithValue("ID", passwrord);

        da.UpdateCommand = updatecommand;
        da.UpdateCommand.ExecuteNonQuery();
        ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert( 'Data Added');</script>");

        conn.Close();
     
    }

    public Boolean inserttable()
    {
        String connectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;" +
       @"Data Source=C:\Users\Umer\Documents\Visual Studio 2015\Projects\masterpage\UserInfo.mdb;Persist Security Info=False";

        OleDbConnection dbConn = new OleDbConnection(connectionString);

        dbConn.Open();
        using (dbConn)
        {
            OleDbCommand cmd = new OleDbCommand(
                  "INSERT INTO AdminSurvey ([ID]) VALUES (@user, @pass,@age,@gend,@occ,@inc)", dbConn);


            cmd.Parameters.AddWithValue("@ID", passwrord);
            /*cmd.Parameters.AddWithValue("@pass", PasswordBox.Text);
            cmd.Parameters.AddWithValue("@age", AgeBox.Text);
            cmd.Parameters.AddWithValue("@gend", GenderList.SelectedIndex.ToString());
            cmd.Parameters.AddWithValue("@occ", Occbox.Text);
            cmd.Parameters.AddWithValue("@inc", IncomeBox.Text);
            */



            try
            {
                cmd.ExecuteNonQuery();

                Console.WriteLine("Info inserted successfully.");
                dbConn.Close();
                return true;
                //check.Text = "value isnerted";
            }
            catch (OleDbException exception)
            {
                Console.WriteLine("SQL Error occured: " + exception);
                // check.Text = exception.ToString();
                dbConn.Close();
                return false;
            }
        }

    }
}
