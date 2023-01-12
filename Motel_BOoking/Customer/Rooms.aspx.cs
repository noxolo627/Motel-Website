using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Motel_BOoking.Customer
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                calCheckIN.SelectedDate = DateTime.Today;
                calCheckOut.SelectedDate = DateTime.Today.AddDays(1);
            }
        }

        private bool isRoomAvailable()
        {
            int num = int.Parse(dropRoomNumber.SelectedValue);
            groupDatasetTableAdapters.BookingTableAdapter booking = new groupDatasetTableAdapters.BookingTableAdapter();
            groupDataset.BookingDataTable dt = booking.GetDataByRoomNum(num);

            if (dt == null)
                return true;
            else
            {
                foreach(groupDataset.BookingRow row in dt.Rows)
                {
                    if (row.room_num == num)
                    {
                        if (isDateBetween(row.check_in, row.check_out, calCheckIN.SelectedDate, calCheckOut.SelectedDate))
                            return false;
                    }
                }
            }
            return true;
        }

        private Boolean isDateBetween(DateTime bookedCheckIN, DateTime bookedCheckOut, DateTime checkin, DateTime checkout)
        {
            if (checkin > bookedCheckOut)
                return false;
            if (checkout < bookedCheckIN)
                return false;
            return true;
        }

        protected void btnBookRoom_Click(object sender, EventArgs e)
        {
            this.div_select_date.Visible = true;
        }

        protected void calCheckIN_SelectionChanged(object sender, EventArgs e)
        {
            if(calCheckIN.SelectedDate < DateTime.Today)
            {
                calCheckIN.SelectedDate = DateTime.Today;
                calCheckOut.SelectedDate = DateTime.Today.AddDays(1);
                Response.Write("<script>alert('Cannot select a date bofre today');</script>");
                return;
            }
            calCheckOut.SelectedDate = calCheckIN.SelectedDate.AddDays(1);
        }

        protected void calCheckOut_SelectionChanged(object sender, EventArgs e)
        {
            if(calCheckOut.SelectedDate < calCheckIN.SelectedDate)
            {
                calCheckOut.SelectedDate = calCheckIN.SelectedDate.AddDays(1);
                Response.Write("<script>alert('check out date cannot be before check in date');</script>");
                return;
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            this.div_select_date.Visible = false;
            calCheckIN.SelectedDate = DateTime.Today;
            calCheckOut.SelectedDate = DateTime.Today.AddDays(1);
        }

        protected void btnContinue_Click(object sender, EventArgs e)
        {
            if(calCheckOut.SelectedDate <= calCheckIN.SelectedDate)
            {
                Response.Write("<script>alert('Check out date cannot be before or during check in date');</script>");
                calCheckOut.SelectedDate = calCheckIN.SelectedDate.AddDays(1);
                return;
            }
            if (isRoomAvailable())
            {
                this.div_select_date.Visible = false;
                this.div_Payment_start.Visible = true;
                this.div_calender.Visible = true;
                this.div_Rooms.Visible = false;

                TimeSpan time = calCheckOut.SelectedDate - calCheckIN.SelectedDate;

                decimal total = decimal.Parse(DetailsView1.Rows[4].Cells[1].Text) * time.Days;
                txtTotal.Text = (double.Parse(total.ToString())).ToString();
            }
            else
            {
                Response.Write("<script>alert('This room is not available in the selected date range. Try changing the check in and out dates, or change the room number');</script>");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            this.div_Rooms.Visible = true;
            this.div_calender.Visible = false;
            this.div_Payment_start.Visible = false;
            this.div_select_date.Visible = false;
            Response.Write("<script>alert('This room is not available in the selected date range. Try changing the check in and out dates, or change the room number');</script>");
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            groupDatasetTableAdapters.BookingTableAdapter book = new groupDatasetTableAdapters.BookingTableAdapter();
            groupDatasetTableAdapters.PaymentTableAdapter pay = new groupDatasetTableAdapters.PaymentTableAdapter();
            int id = (int)Session["id"];
            int room = int.Parse(dropRoomNumber.SelectedValue);
            string type = "";
            TimeSpan time = (calCheckOut.SelectedDate - calCheckIN.SelectedDate);
            int days = time.Days;
            if (days == 1)
                type = "Day";
            if (days == 2)
                type = "Days";
            if (days == 3)
                type = "Weekend";
            if (days > 3 && days <= 7)
                type = "Week";
            if (days > 7 && days <= 14)
                type = "Fortnight";
            else
                type = "Extended";
            decimal total = decimal.Parse(txtTotal.Text);
            book.Insert(id, 8, room, type, total, DateTime.Now, calCheckIN.SelectedDate, calCheckOut.SelectedDate);
            pay.Insert(getBookingId(), room, id, "Online Card", DateTime.Now, total);
            Response.Redirect("MyBookings.aspx");
        }

        private int getBookingId()
        {
            groupDatasetTableAdapters.BookingTableAdapter book = new groupDatasetTableAdapters.BookingTableAdapter();
            int num = 0;
            foreach(groupDataset.BookingRow row in book.GetData())
            {
                num = row.booking_id;
            }
            return num;
        }
    }
}