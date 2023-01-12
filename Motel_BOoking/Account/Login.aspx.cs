using System;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using Motel_BOoking.Models;

namespace Motel_BOoking.Account
{
    public partial class Login : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void LogIn(object sender, EventArgs e)
        {
            if (txtEmail.Text.Trim().Equals(""))
            {
                Response.Write("<script>alert('Enter your email to continue');</script>");
                return;
            }
            else if (txtPassword.Text.Trim().Equals(""))
            {
                Response.Write("<script>alert('Enter your password to continue');</script>");
                return;
            }

            string user = txtEmail.Text.Trim();
            string pass = txtPassword.Text.Trim();
            int id;
            if (clientLogin(user, pass))
            {
                groupDatasetTableAdapters.CustomerTableAdapter client = new groupDatasetTableAdapters.CustomerTableAdapter();
                id = (int)client.getID(user);
                Session["id"] = id;
                Response.Redirect("../Customer/Profile.aspx");
            }
            else if (adminLogin(user, pass))
            {
                groupDatasetTableAdapters.StaffTableAdapter admin = new groupDatasetTableAdapters.StaffTableAdapter();
                id = (int)admin.getID(user);
                Session["id"] = id;
                Response.Redirect("../Admin/Profile.aspx");
            }
            else
            {
                Response.Write("<script>alert('Incorrect Login Details');</script>");
            }
        }

        private Boolean clientLogin(string email, string password)
        {
            groupDatasetTableAdapters.CustomerTableAdapter client = new groupDatasetTableAdapters.CustomerTableAdapter();
            int count = (int)client.login(email, password);
            if (count > 0)
                return true;
            return false;
        }

        private Boolean adminLogin(string email, string password)
        {
            groupDatasetTableAdapters.StaffTableAdapter admin = new groupDatasetTableAdapters.StaffTableAdapter();
            int count = (int)admin.login(email, password);
            if (count > 0)
                return true;
            return false;
        }
    }
}