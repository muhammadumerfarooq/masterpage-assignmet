using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.IO;
public partial class adminsignup : System.Web.UI.Page
{
    string newpassword = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;

    }


    public Boolean CreateAccessDatabase()
    {
        bool result = false;

        ADOX.Catalog cat = new ADOX.Catalog();
        ADOX.Table table = new ADOX.Table();

        //Create the table and it's fields. 
        table.Name = "AdminInfo";
        table.Columns.Append("username", ADOX.DataTypeEnum.adVarWChar, 40);
        table.Columns.Append("password", ADOX.DataTypeEnum.adVarWChar, 40);
        table.Columns.Append("age", ADOX.DataTypeEnum.adInteger, 2);
        table.Columns.Append("gender", ADOX.DataTypeEnum.adVarWChar, 6);
        table.Columns.Append("occupation", ADOX.DataTypeEnum.adVarWChar, 40);
        table.Columns.Append("income", ADOX.DataTypeEnum.adDouble, 10);
        table.Keys.Append("Primary Key", ADOX.KeyTypeEnum.adKeyPrimary, "password", "", "");


        try
        {

            ADODB.Connection con = cat.ActiveConnection as ADODB.Connection;


            ADODB.Connection Cn = new ADODB.Connection();
            Cn.Open(@"Provider=Microsoft.Jet.OLEDB.4.0;" + @"Data Source=C:\Users\Umer\Documents\Visual Studio 2015\Projects\masterpage\UserInfo.mdb;Persist Security Info=False");
            cat.ActiveConnection = Cn;

            cat.Tables.Append(table);


            if (con != null)
                con.Close();

            result = true;
        }    
        catch (Exception ex)
        {
            //  Console.WriteLine(ex);
            // check.Text = ex.ToString();
            Namebox.Text = ex.ToString();
            result = false;
            return result;
        }

        return true;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string FileName = @"C:\Users\Umer\Documents\Visual Studio 2015\Projects\masterpage\UserInfo.mdb";
        if (File.Exists(FileName))
        {

        }
        else
        {
      //     CreateAccessDatabase().ToString();
            
        }
        
        Boolean c = checkuserinfo();

            if (c==false)
        {
            Boolean chk=updatetable();
            if (chk==true)
            {

                ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert( 'Data Updated');</script>");

            }
            else
            {

                ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert( 'Data Not Updated');</script>");

            }
        }
            else
        {
            Boolean chk = inserttable();
            if (chk == true)
            {

                ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert( 'Data Added');</script>");

            }
            else
            {

                ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert( 'Data Not Added');</script>");

            }
        }
    }

    public Boolean updatetable()
    {
             OleDbDataAdapter da = new OleDbDataAdapter();
            OleDbConnection conn = new OleDbConnection("Provider = Microsoft.Jet.OLEDB.4.0; " +
               "Data Source=C:\\Users\\Umer\\Documents\\Visual Studio 2015\\Projects\\masterpage\\UserInfo.mdb");

            conn.Open();
            // Drinks update //
            string query = "UPDATE [AdminInfo] SET [username] = ? WHERE password = ?";
            var updatecommand = new OleDbCommand(query, conn);
            updatecommand.Parameters.AddWithValue("drink", Namebox.Text);

            updatecommand.Parameters.AddWithValue("password", PasswordBox.Text);

            da.UpdateCommand = updatecommand;
            da.UpdateCommand.ExecuteNonQuery();
            /////////////// 

            //  FastFood Update 
            query = "UPDATE [AdminInfo] SET [age] = ? WHERE password = ?";
            updatecommand = new OleDbCommand(query, conn);
            updatecommand.Parameters.AddWithValue("age", AgeBox.Text);

        updatecommand.Parameters.AddWithValue("password", PasswordBox.Text);

        da.UpdateCommand = updatecommand;
            da.UpdateCommand.ExecuteNonQuery();

        query = "UPDATE [AdminInfo] SET [gender] = ? WHERE password = ?";
        updatecommand = new OleDbCommand(query, conn);
        updatecommand.Parameters.AddWithValue("gender",GenderList.SelectedIndex);

        updatecommand.Parameters.AddWithValue("password", PasswordBox.Text);

        da.UpdateCommand = updatecommand;
        da.UpdateCommand.ExecuteNonQuery();

        query = "UPDATE [AdminInfo] SET [occupation] = ? WHERE password = ?";
        updatecommand = new OleDbCommand(query, conn);
        updatecommand.Parameters.AddWithValue("occupation", Occbox.Text);

        updatecommand.Parameters.AddWithValue("password", PasswordBox.Text);

        da.UpdateCommand = updatecommand;
        da.UpdateCommand.ExecuteNonQuery();



        query = "UPDATE [AdminInfo] SET [income] = ? WHERE password = ?";
        updatecommand = new OleDbCommand(query, conn);
        updatecommand.Parameters.AddWithValue("income", IncomeBox.Text);

        updatecommand.Parameters.AddWithValue("password", PasswordBox.Text);

        da.UpdateCommand = updatecommand;
        da.UpdateCommand.ExecuteNonQuery();
        conn.Close();
        return true;
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
                  "INSERT INTO AdminInfo ([username], [password],[age],[gender],[occupation],[income]) VALUES (@user, @pass,@age,@gend,@occ,@inc)", dbConn);


            cmd.Parameters.AddWithValue("@user", Namebox.Text);
            cmd.Parameters.AddWithValue("@pass", PasswordBox.Text);
            cmd.Parameters.AddWithValue("@age", AgeBox.Text);
            cmd.Parameters.AddWithValue("@gend", GenderList.SelectedIndex.ToString());
            cmd.Parameters.AddWithValue("@occ", Occbox.Text);
            cmd.Parameters.AddWithValue("@inc", IncomeBox.Text);




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
    
         

    protected Boolean checkuserinfo()
    {

        using (OleDbConnection conn = new OleDbConnection(@"Provider = Microsoft.Jet.OLEDB.4.0; " +
            @"Data Source=C:\Users\Umer\Documents\Visual Studio 2015\Projects\masterpage\UserInfo.mdb;Persist Security Info=False"))
        using (OleDbCommand cmd = new OleDbCommand(" SELECT * from AdminInfo", conn))
        {
           
                conn.Open();
                OleDbDataReader Reader = cmd.ExecuteReader();

                while (Reader.Read())
                {
                    String p = (Reader["password"].ToString());
                        
                        newpassword = p;
                if (newpassword != "") { 
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


}
