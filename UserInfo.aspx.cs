using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//using System.Collections.Generic;
using System.Data.OleDb;
using ADOX;
using ADODB;

public partial class UserInfo : System.Web.UI.Page
{
    public static User u = new global::User();
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;

    }

  
    protected void Submitbtn_Click(object sender, EventArgs e)
    {

      //  CreateAccessDatabase().ToString();

        u.Age =int.Parse( AgeBox.Text);
        u.Occupation = Occbox.Text;
        u.Income = int.Parse(IncomeBox.Text);
        u.UserName = Namebox.Text;
        //Namebox.Text = u.UserName + " hi ";

    
        u.UserGender = GenderList.SelectedValue;
        u.password = PasswordBox.Text;
    Boolean b=   InsertInfo(u.UserName,u.Occupation,u.Income,u.UserGender,u.Age,u.password);
        if (b == false)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert( 'Your Info Not Added UserName Already Exists.');</script>");

        }
        else
        {
            Page.Response.Redirect("survey.aspx?pass=" + PasswordBox.Text);

        }
    }
    public  Boolean CreateAccessDatabase()
    {


        bool result = false;

        ADOX.Catalog cat = new ADOX.Catalog();
        ADOX.Table table = new ADOX.Table();

        //Create the table and it's fields. 
        table.Name = "UserInfo";
        table.Columns.Append("username", ADOX.DataTypeEnum.adVarWChar, 40);
        table.Columns.Append("password", ADOX.DataTypeEnum.adVarWChar, 40);
        table.Columns.Append("age", ADOX.DataTypeEnum.adInteger, 2);
        table.Columns.Append("gender", ADOX.DataTypeEnum.adVarWChar, 6);
        table.Columns.Append("occupation", ADOX.DataTypeEnum.adVarWChar, 40);
        table.Columns.Append("income", ADOX.DataTypeEnum.adDouble, 10);
        table.Keys.Append("Primary Key", ADOX.KeyTypeEnum.adKeyPrimary, "password", "", "");


        try
        {
            cat.Create("Provider=Microsoft.Jet.OLEDB.4.0;" + @"Data Source=C:\Users\Umer\Documents\Visual Studio 2015\Projects\masterpage\" + "UserInfo.mdb" + "; Jet OLEDB:Engine Type=5");
            //cat.Columns.Append("col1", DataTypeEnum.adInteger, 4);

            cat.Tables.Append(table);

            //Now Close the database
            ADODB.Connection con = cat.ActiveConnection as ADODB.Connection;
            if (con != null)
                con.Close();

            result = true;
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex);
          //  Namebox.Text = ex.ToString();
            
            result = false;
        }
        cat = null;
        return result;
    }
    
    protected Boolean InsertInfo(String name,String occupation,Double income,String gender,int age ,String pasword)
    {
        Boolean c = checkuserinfo(name,pasword);

        if (c == true)
        {

            string connectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;" +
            @"Data Source=C:\Users\Umer\Documents\Visual Studio 2015\Projects\masterpage\UserInfo.mdb;Persist Security Info=False";

            OleDbConnection dbConn = new OleDbConnection(connectionString);

            dbConn.Open();
            using (dbConn)
            {
                OleDbCommand cmd = new OleDbCommand(
                      "INSERT INTO UserInfo ([username], [password],[age],[gender],[occupation],[income]) VALUES (@user, @pass,@age,@gend,@occ,@inc)", dbConn);

                
                cmd.Parameters.AddWithValue("@user", name);
                cmd.Parameters.AddWithValue("@pass", pasword);
                cmd.Parameters.AddWithValue("@age", age);
                cmd.Parameters.AddWithValue("@gend", gender);
                cmd.Parameters.AddWithValue("@occ", gender);
                cmd.Parameters.AddWithValue("@inc", income);

                try
                {
                    cmd.ExecuteNonQuery();
                    
                    Console.WriteLine("Info inserted successfully.");
                }
                catch (OleDbException exception)
                {
                    Console.WriteLine("SQL Error occured: " + exception);

                }
            }
            return true;
        }
        else
        {
            return false;

        }
        }

    protected Boolean checkuserinfo(String name,String pass)
    {


        using (OleDbConnection conn = new OleDbConnection(@"Provider = Microsoft.Jet.OLEDB.4.0; " +
            @"Data Source=C:\Users\Umer\Documents\Visual Studio 2015\Projects\masterpage\UserInfo.mdb;Persist Security Info=False"))
        using (OleDbCommand cmd = new OleDbCommand(" SELECT * from UserInfo where username = "+name, conn))
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
                  //  Console.WriteLine(name + " " + pass);
                  if (p.Equals(pass))
                    return false;
                }
            }
            catch (Exception ex)
            {
                Namebox.Text = ex.ToString();
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
  
}