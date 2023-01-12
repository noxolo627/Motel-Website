using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Motel_BOoking.Admin
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            this.div_view.Visible = false;
            this.btnSearch.Visible = false;
            this.div_search.Visible = true;
        }

        protected void LogIn(object sender, EventArgs e)
        {
            if (txtEmail.Text.Equals(""))
            {
                Response.Write("<script>alert('THIS STAFF MEMBER DOES NOT EXIST');</script>");
                return;
            }
            groupDatasetTableAdapters.StaffTableAdapter staff = new groupDatasetTableAdapters.StaffTableAdapter();
            int count = int.Parse(staff.checkEmail(txtEmail.Text).ToString());
            if(count < 1)
            {
                Response.Write("<script>alert('THIS STAFF MEMBER DOES NOT EXIST');</script>");
                return;
            }
            else
            {
                this.div_search.Visible = false;
                this.div_result.Visible = true;
                Response.Write("<script>alert('visible');</script>");
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            this.div_result.Visible = false;
            this.div_search.Visible = false;
            this.div_view.Visible = true;
            this.btnSearch.Visible = true;
        }
    }
}