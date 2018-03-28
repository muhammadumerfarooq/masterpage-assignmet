using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class objecthandler
{
    User u = new User();
    public objecthandler()
    {
        
    }

    public void UserReturn(User user)
    {
        u = user;
      
    }

    public User returnUserObject()
    {
        return u;
    }
}