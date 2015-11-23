using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for UserManager
/// </summary>
public class UserManager
{
    public UserManager()
    {

    }

    public bool isUserLoggedIn()
    {
        return HttpContext.Current.Session["username"] != null;
        //return Session["username"] != null;
    }

    public String getUsername()
    {
        if (isUserLoggedIn())
        {
            return HttpContext.Current.Session["username"].ToString();
            //return Session["username"].ToString();
        }
        else
        {
            return null;
        }
    }

    public void logInUser(String username)
    {
        HttpContext.Current.Session["username"] = username;
        //Session["username"] = username;
    }

    public void logOutUser()
    {
        HttpContext.Current.Session["username"] = null;
        //Session["username"] = null;
    }
}