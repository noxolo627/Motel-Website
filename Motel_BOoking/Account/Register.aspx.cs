using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using Motel_BOoking.Models;

namespace Motel_BOoking.Account
{
    public partial class Register : Page
    {
        protected void CreateUser_Click(object sender, EventArgs e)
        {
            if (!txtEmail2.Text.Equals(txEmail.Text))
            {
                Response.Write("<script>alert('Email do not match');</script>");
                return;
            }

            if(txtPhone.Text.Length != 10)
            {
                Response.Write("<script>alert('A phone number must have 10 digits');</script>");
                return;
            }

            if (!txtPassword.Text.Equals(txtPassword2.Text))
            {
                Response.Write("<script>alert('Passwords do not match');</script>");
                return;
            }

            groupDatasetTableAdapters.CustomerTableAdapter cust = new groupDatasetTableAdapters.CustomerTableAdapter();
            cust.Insert(txtFName.Text, txtLName.Text, DropDownList1.SelectedValue, txtPhone.Text, txtEmail2.Text, txtAddress.Text, txtPassword.Text);
            Response.Redirect("../Account/Login.aspx");
        }
    }
}