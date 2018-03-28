using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class User
{
    public String UserName { get; set; }
    public String UserGender { get; set; }
    public String Occupation { get; set; }
    public Double Income { get; set; }
    public int Age { get; set; }

    public String password { get; set; }
    public User()
    {
        UserName = "";
        UserGender = "";
        Occupation = "";
        Income = 0.0;
        Age = 0;
        password = "";
    }
   
   
}