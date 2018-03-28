using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.OleDb;
public partial class Survey : System.Web.UI.Page
{

  
    UserSurvey u = new UserSurvey();
   
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;

    
        if (Page.Request.QueryString["pass"]!=null)
        {
            u.password_UserSurvey = Page.Request.QueryString["pass"];
         //   TextBox1.Text = u.password_UserSurvey.ToString();
        }
        if (u.password_UserSurvey.Equals(""))
        {

            ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert( 'You Are Not Login. Moving To Menu Page');</script>");

            Response.AddHeader("REFRESH", "0.25;URL=UserInfo.aspx");
           // Page.Response.Redirect("UserInfo.aspx");

        }
        
    }



    protected void DrinkRB_SelectedIndexChanged(object sender, EventArgs e)
    {
        u.Drinks_UserSurvey = DrinkRB.SelectedIndex.ToString();
      //  TextBox2.Text = u.Drinks_UserSurvey;

     //     TextBox2.Text = u.Drinks_UserSurvey;
    }
    protected void FastFoodRB_SelectedIndexChanged(object sender, EventArgs e)
    {
        u.FastFood_UserSurvey = FastFoodRB.SelectedIndex.ToString();

    }
    protected void IcecreamRB_SelectedIndexChanged(object sender, EventArgs e)
    {
        u.Icecream_UserSurvey = IcecreamRB.SelectedIndex.ToString();


    }
    protected void SportsRB_SelectedIndexChanged(object sender, EventArgs e)
    {

        u.Sports_UserSurvey = SportsManRB.SelectedIndex.ToString();
    }
    protected void MovieRB_SelectedIndexChanged(object sender, EventArgs e)
    {

        u.Movie_UserSurvey = MovieRB.SelectedIndex.ToString();
    }

    protected void AnimatedMovieRB_SelectedIndexChanged(object sender, EventArgs e)
    {
        u.AnimatedMovie_UserSurvey = AnimatedMovieRB.SelectedIndex.ToString();

    }

    protected void ComicsRB_SelectedIndexChanged(object sender, EventArgs e)
    {
        u.Comics_UserSurvey = ComicsRB.SelectedIndex.ToString();

    }

    protected void StreetFoodRB_SelectedIndexChanged(object sender, EventArgs e)
    {

        u.StreetFood_UserSurvey = StreetFoodRB.SelectedIndex.ToString();
    }
    protected void SportsManRB_SelectedIndexChanged(object sender, EventArgs e)
    {
        u.SportsMan_UserSurvey = SportsManRB.SelectedIndex.ToString();

    }
    protected void TvSerialRB_SelectedIndexChanged(object sender, EventArgs e)
    {

        u.TvSerial_UserSurvey = TvSerialRB.SelectedIndex.ToString();
    }
    protected void MentorRB_SelectedIndexChanged(object sender, EventArgs e)
    {
        u.Mentor_UserSurvey = MentorRB.SelectedIndex.ToString();

    }

    protected void SumitFormbtn_Click(object sender, EventArgs e)
    {

            string FileName = @"C:\Users\Umer\Documents\Visual Studio 2015\Projects\masterpage\survey.mdb";
        if (File.Exists(FileName))
        {
          
        }
        else
        {
//            CreateTable();
        }

     //   check.Text = u.Drinks_UserSurvey;
        Boolean insertioncheck=false;
        insertioncheck = InsertValues();
        if (insertioncheck==true)
            ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Your Survey Saved');</script>");
        else
        {    ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Your are Logout! Login Again');</script>");
            Response.AddHeader("REFRESH", "0.25;URL=UserInfo.aspx");
        }

    }
    public Boolean InsertValues()
    {
        Boolean c = checkuserinfo(u.password_UserSurvey);
        if (c == false)
        {
            //check.Text = " hello ";
        c=    updatetable(u.password_UserSurvey);            //  
            return c;
        }
        else
        {
            //check.Text = " hellg ";

            if (!(u.password_UserSurvey.Equals("") && u.Drinks_UserSurvey.Equals("") && u.FastFood_UserSurvey.Equals("")
                    &&
                u.Icecream_UserSurvey.Equals("") &&
                u.Sports_UserSurvey.Equals("") &&
                u.Movie_UserSurvey.Equals("") &&
                u.AnimatedMovie_UserSurvey.Equals("") &&
                u.Comics_UserSurvey.Equals("") &&
                u.StreetFood_UserSurvey.Equals("") &&
                u.SportsMan_UserSurvey.Equals("") &&
                u.TvSerial_UserSurvey.Equals("") &&
                u.Mentor_UserSurvey.Equals("")))

            {

              //  check.Text = u.password_UserSurvey;
                String connectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;" +
     @"Data Source=C:\Users\Umer\Documents\Visual Studio 2015\Projects\masterpage\UserInfo.mdb;Persist Security Info=False";

                OleDbConnection dbConn = new OleDbConnection(connectionString);

                dbConn.Open();
                using (dbConn)
                {
                    OleDbCommand cmd = new OleDbCommand(
                          "INSERT INTO survey ([password], [drink],[fastfood],[icecream],[sports],[movie],[animated],[comics],[street],[sportsman],[tv],[mentor]) VALUES (@pass,@drink,@fast,@ice,@sports,@movie,@animated,@com,@street,@man,@tv,@mentor)", dbConn);


                    cmd.Parameters.AddWithValue("@pass", u.password_UserSurvey);
                    cmd.Parameters.AddWithValue("@drink", u.Drinks_UserSurvey);
                    cmd.Parameters.AddWithValue("@fast", u.FastFood_UserSurvey);
                    cmd.Parameters.AddWithValue("@ice", u.Icecream_UserSurvey);
                    cmd.Parameters.AddWithValue("@sports", u.Sports_UserSurvey);
                    cmd.Parameters.AddWithValue("@movie", u.Movie_UserSurvey);
                    cmd.Parameters.AddWithValue("@animated", u.AnimatedMovie_UserSurvey);
                    cmd.Parameters.AddWithValue("@com", u.Comics_UserSurvey);
                    cmd.Parameters.AddWithValue("@street", u.StreetFood_UserSurvey);
                    cmd.Parameters.AddWithValue("@man", u.SportsMan_UserSurvey);
                    cmd.Parameters.AddWithValue("@tv", u.TvSerial_UserSurvey);
                    cmd.Parameters.AddWithValue("@mentor", u.Mentor_UserSurvey);





                    try
                    {
                        cmd.ExecuteNonQuery();

                        Console.WriteLine("Info inserted successfully.");
                        //check.Text = "value isnerted";
                    }
                    catch (OleDbException exception)
                    {
                        Console.WriteLine("SQL Error occured: " + exception);
                        // check.Text = exception.ToString();
                    }
                }
                return true;
            }
            else
                return false;
        }
       // return true;
    }

    public Boolean updatetable(String pass)
    {

        if (!(DrinkRB.SelectedIndex.ToString().Equals("") && FastFoodRB.SelectedIndex.ToString().Equals("")
                &&
            IcecreamRB.ToString().Equals("") &&
            SportsManRB.ToString().Equals("") &&
            MovieRB.ToString().Equals("") &&
            AnimatedMovieRB.ToString().Equals("") &&
            ComicsRB.ToString().Equals("") &&
            StreetFoodRB.ToString().Equals("") &&
            SportsManRB.ToString().Equals("") &&
            TvSerialRB.ToString().Equals("") &&
            MentorRB.ToString().Equals("")))
        {
      //      if (u.Drinks_UserSurvey.Equals(""))
        //        TextBox2.Text = "null";

            OleDbDataAdapter da = new OleDbDataAdapter();
            OleDbConnection conn = new OleDbConnection("Provider = Microsoft.Jet.OLEDB.4.0; " +
               "Data Source=C:\\Users\\Umer\\Documents\\Visual Studio 2015\\Projects\\masterpage\\UserInfo.mdb");

            conn.Open();
            // Drinks update //
            string query = "UPDATE [survey] SET [drink] = ? WHERE password = ?";
            var updatecommand = new OleDbCommand(query, conn);
            updatecommand.Parameters.AddWithValue("drink", DrinkRB.SelectedIndex.ToString());

            updatecommand.Parameters.AddWithValue("password", pass);

            da.UpdateCommand = updatecommand;
            da.UpdateCommand.ExecuteNonQuery();
            /////////////// 
          //  TextBox2.Text = "hi";
          //  TextBox2.Text = u.Drinks_UserSurvey;

            //  FastFood Update 
            query = "UPDATE [survey] SET [fastfood] = ? WHERE password = ?";
            updatecommand = new OleDbCommand(query, conn);
            updatecommand.Parameters.AddWithValue("fastfood", FastFoodRB.SelectedIndex.ToString());

            updatecommand.Parameters.AddWithValue("password", pass);

            da.UpdateCommand = updatecommand;
            da.UpdateCommand.ExecuteNonQuery();
            ////

            ////// icecream  update 
            query = "UPDATE [survey] SET [icecream] = ? WHERE password = ?";
            updatecommand = new OleDbCommand(query, conn);
            updatecommand.Parameters.AddWithValue("icecream", IcecreamRB.SelectedIndex.ToString());

            updatecommand.Parameters.AddWithValue("password", pass);

            da.UpdateCommand = updatecommand;
            da.UpdateCommand.ExecuteNonQuery();
            ///// 

            // sports
            query = "UPDATE [survey] SET [sports] = ? WHERE password = ?";
            updatecommand = new OleDbCommand(query, conn);
            updatecommand.Parameters.AddWithValue("sports", SportsManRB.SelectedIndex.ToString());

            updatecommand.Parameters.AddWithValue("password", pass);

            da.UpdateCommand = updatecommand;
            da.UpdateCommand.ExecuteNonQuery();
            //////

            // movie
            query = "UPDATE [survey] SET [movie] = ? WHERE password = ?";
            updatecommand = new OleDbCommand(query, conn);
            updatecommand.Parameters.AddWithValue("movie", MovieRB.SelectedIndex.ToString());

            updatecommand.Parameters.AddWithValue("password", pass);

            da.UpdateCommand = updatecommand;
            da.UpdateCommand.ExecuteNonQuery();
            //////


            // animatedmovie
            query = "UPDATE [survey] SET [animated] = ? WHERE password = ?";
            updatecommand = new OleDbCommand(query, conn);
            updatecommand.Parameters.AddWithValue("animated", AnimatedMovieRB.SelectedIndex.ToString());

            updatecommand.Parameters.AddWithValue("password", pass);

            da.UpdateCommand = updatecommand;
            da.UpdateCommand.ExecuteNonQuery();
            //////

            // comics
            query = "UPDATE [survey] SET [comics] = ? WHERE password = ?";
            updatecommand = new OleDbCommand(query, conn);
            updatecommand.Parameters.AddWithValue("comics", ComicsRB.SelectedIndex.ToString());

            updatecommand.Parameters.AddWithValue("password", pass);

            da.UpdateCommand = updatecommand;
            da.UpdateCommand.ExecuteNonQuery();
            //////

            // streetfood
            query = "UPDATE [survey] SET [street] = ? WHERE password = ?";
            updatecommand = new OleDbCommand(query, conn);
            updatecommand.Parameters.AddWithValue("street", StreetFoodRB.SelectedIndex.ToString());

            updatecommand.Parameters.AddWithValue("password", pass);

            da.UpdateCommand = updatecommand;
            da.UpdateCommand.ExecuteNonQuery();
            //////

            // sportsman
            query = "UPDATE [survey] SET [sportsman] = ? WHERE password = ?";
            updatecommand = new OleDbCommand(query, conn);
            updatecommand.Parameters.AddWithValue("sportsman", SportsManRB.SelectedIndex.ToString());

            updatecommand.Parameters.AddWithValue("password", pass);

            da.UpdateCommand = updatecommand;
            da.UpdateCommand.ExecuteNonQuery();
            //////

            // tv
            query = "UPDATE [survey] SET [tv] = ? WHERE password = ?";
            updatecommand = new OleDbCommand(query, conn);
            updatecommand.Parameters.AddWithValue("tv", TvSerialRB.SelectedIndex.ToString());

            updatecommand.Parameters.AddWithValue("password", pass);

            da.UpdateCommand = updatecommand;
            da.UpdateCommand.ExecuteNonQuery();
            //////


            // mentor
            query = "UPDATE [survey] SET [mentor] = ? WHERE password = ?";
            updatecommand = new OleDbCommand(query, conn);
            updatecommand.Parameters.AddWithValue("mentor", MentorRB.SelectedIndex.ToString());

            updatecommand.Parameters.AddWithValue("password", pass);

            da.UpdateCommand = updatecommand;
            da.UpdateCommand.ExecuteNonQuery();
            //////

            conn.Close();
           // check.Text = "saveddd";

            return true;

        }
        return false;
        }
    public Boolean checkuserinfo(String password)
    {
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
                   // String n = (Reader["username"].ToString());
                    String p = (Reader["password"].ToString());
                    //  Console.WriteLine(name + " " + pass);
                    if (p.Equals(password))
                        return false;
                }
            }
            catch (Exception )
            {
               // Namebox.Text = ex.ToString();
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
        return true;
    }



protected Boolean CreateTable()
    {
        bool result = false;

        ADOX.Catalog cat = new ADOX.Catalog();
        ADOX.Table table = new ADOX.Table();
       
        //Create the table and it's fields. 
        table.Name = "Survey";
        table.Columns.Append("password", ADOX.DataTypeEnum.adVarWChar, 40);
        table.Columns.Append("drink", ADOX.DataTypeEnum.adVarWChar, 40);
        table.Columns.Append("fastfood", ADOX.DataTypeEnum.adVarWChar, 40);
        table.Columns.Append("icecream", ADOX.DataTypeEnum.adVarWChar, 40);
        table.Columns.Append("sports", ADOX.DataTypeEnum.adVarWChar, 40);
        table.Columns.Append("movie", ADOX.DataTypeEnum.adVarWChar, 40);
        table.Columns.Append("animated", ADOX.DataTypeEnum.adVarWChar, 40);
        table.Columns.Append("comics", ADOX.DataTypeEnum.adVarWChar, 40);
        table.Columns.Append("street", ADOX.DataTypeEnum.adVarWChar, 40);
        table.Columns.Append("sportsman", ADOX.DataTypeEnum.adVarWChar, 40);
        table.Columns.Append("tv", ADOX.DataTypeEnum.adVarWChar, 40);
        table.Columns.Append("mentor", ADOX.DataTypeEnum.adVarWChar, 40);
        table.Keys.Append("ForeignKey", ADOX.KeyTypeEnum.adKeyForeign, "password", "UserInfo", "password");
        table.Keys.Append("Primary Key", ADOX.KeyTypeEnum.adKeyPrimary, "password", "", "");
        //try
        //{
       // cat.Create("Provider=Microsoft.Jet.OLEDB.4.0;" + @"Data Source=C:\Users\Umer\Documents\Visual Studio 2015\Projects\masterpage\" + "UserInfo.mdb" + "; Jet OLEDB:Engine Type=5");

        /*  string connectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;" +
      @"Data Source=..\..\UserInfo.mdb;Persist Security Info=False";

          OleDbConnection dbConn = new OleDbConnection(connectionString);
          cat.let_ActiveConnection(dbConn);

          cat.Tables.Append(table);
         */

        ADODB.Connection con = cat.ActiveConnection as ADODB.Connection;


        ADODB.Connection Cn = new ADODB.Connection();
        Cn.Open(@"Provider=Microsoft.Jet.OLEDB.4.0;" + @"Data Source=C:\Users\Umer\Documents\Visual Studio 2015\Projects\masterpage\UserInfo.mdb;Persist Security Info=False");
        cat.ActiveConnection = Cn;

        cat.Tables.Append(table);


        if (con != null)
                con.Close();

            result = true;
        //}
        //catch (Exception ex)
        //{
          //  Console.WriteLine(ex);
          // check.Text = ex.ToString();

            result = false;
        //}
        cat = null;
        //check.Text = result.ToString();
        return result;

    }

    protected void Editbtn_Click(object sender, EventArgs e)
    {
        //Response.Redirect("EditQuestion.aspx");
        Server.Transfer("EditQuestion.aspx");
        //Response.Redirect("~/SecondPage.cshtml?value1=a&value2=b&value3=c");
    }
}

