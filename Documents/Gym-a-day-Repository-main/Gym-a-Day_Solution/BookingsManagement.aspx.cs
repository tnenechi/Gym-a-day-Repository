using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Gym_a_Day_Solution.ServiceReference1;

namespace Gym_a_Day_Solution
{
    public partial class BookingsManagement : System.Web.UI.Page
    {
        I_Gym_a_Day_BackendClient client = new I_Gym_a_Day_BackendClient();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ViewBookingBtn_Click(object sender, EventArgs e)
        {
            var theProduct = client.GetBooking(email.Value);

            if (theProduct != null)
            {
                name.Value = theProduct.U_Name;
                surname.Value = theProduct.U_Surname;
                email.Value = theProduct.Email;
                Phone.Value = theProduct.Phone;
                branch.SelectedValue = theProduct.Branch;
                date.Value = theProduct.Date;
                time.Value = theProduct.Time;
                session.SelectedValue = theProduct.Session;

            }
            else
            {
                Msg.Text = string.Format("No booking with the provided Email exists!!");
            }
        }




        protected void EditBookingBtn_Click(object sender, EventArgs e)
        {
            bool isEdited = client.EditBooking(name.Value, surname.Value, email.Value, Phone.Value, branch.SelectedValue, date.Value, time.Value, session.SelectedValue);

            if (isEdited)
            {

                name.Value = "";
                surname.Value = "";
                email.Value = "";
                Phone.Value = "";
                branch.SelectedValue = "";
                date.Value = "";
                time.Value = "";
                session.SelectedValue = "";

                Msg.Text = string.Format("Booking edited successfully");

            }
            else
            {
                Msg.Text = string.Format("An error occured while trying to edit the product");
            }


        }



        protected void DeleteBookingBtn_Click(object sender, EventArgs e)
        {

            bool isDeleted = client.DeleteBooking(email.Value);

            if (isDeleted)
            {
                Msg.Text = string.Format("Booking deleted successfully");
            }
            else
            {
                Msg.Text = string.Format("Booking could not be deleted");
            }


        }
    }
}