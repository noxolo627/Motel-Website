using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Motel_BOoking.Customer
{
    public partial class Customer : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = (int)Session["id"];
            groupDatasetTableAdapters.CustomerTableAdapter cust = new groupDatasetTableAdapters.CustomerTableAdapter();
            string name = cust.getFullName(id);
            txtUserName.Text = name;
        }
    }
}