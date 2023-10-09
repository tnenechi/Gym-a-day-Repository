using Gym_a_Day_Solution.ServiceReference1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gym_a_Day_Solution
{
    public partial class Login : System.Web.UI.Page
    {

        I_Gym_a_Day_BackendClient client = new I_Gym_a_Day_BackendClient();


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_Login_Click(object sender, EventArgs e)
        {
            int idOfUser = client.Login(email.Value, pswd.Value);

            //if the userType is not null
            if (idOfUser != 0)
            {
                Session["UserID"] = idOfUser;
                Session["UserType"] = client.GetUserType(idOfUser);
                Session["UserName"] = client.GetUserFirstname(idOfUser);

                if(Request.QueryString["cout"] != null)
                {
                    Response.Redirect("Checkout.aspx?cp=1");
                }
                else
                {
                    Response.Redirect("Home.aspx");
                }

                
            }
            else
            {
                ltMessage.Text = string.Format("Email or password incorrect");
            }
        }
    }
}