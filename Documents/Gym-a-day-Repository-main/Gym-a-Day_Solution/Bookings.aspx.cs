using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Gym_a_Day_Solution.ServiceReference1;

namespace Gym_a_Day_Solution
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        I_Gym_a_Day_BackendClient client = new I_Gym_a_Day_BackendClient();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit2_Click(object sender, EventArgs e)
        {
            Response.Redirect("BookManagement.aspx");

        }
        protected void Submit_Click(object sender, EventArgs e)
        {
            

            int isBooked = client.Booking(name.Value, surname.Value, email.Value, Phone.Value, branch.SelectedValue, date.Value, time.Value, session.SelectedValue);


            switch (isBooked)
            {
                case -1:
                    //then an exception occured
                    //notify the user
                    ltMessage.Text = string.Format("An exception occured. Please retry");

                    break;
                case 0:
                    //then email already exists
                    //Notify the user

                    ltMessage.Text = string.Format("{0} already exists. Please try to login", email.Value);

                    break;

                case 1:
                    //then regitration was successful
                    Msg.Text = string.Format("Booking created");
                    break;

            }



        }
    }
}