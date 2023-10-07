using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gym_a_Day_Solution
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            //DEFAULT: show a customerNav and Login option
            logoutClient.Visible = false;
            logoutAdmin.Visible = false;

            customerNav.Visible = true;
            adminNav.Visible = false;



            //Check if there's a logged in user, then show the logout button
            if (Session["UserType"] != null)
            {
                string userName = (string)Session["UserName"];

                WelcomeMsg.Text = string.Format("Welcome " + userName);

                //check if the type of user is admin
                if (((string)Session["UserType"]).Equals("Admin"))
                {
                    customerNav.Visible = false;
                    adminNav.Visible = true;

                    loginAdmin.Visible = false;
                    logoutAdmin.Visible = true;
                }
                else
                {
                    loginClient.Visible = false;
                    logoutClient.Visible = true;
                }

            }
         
        }

        protected void Logout_click(object sender, EventArgs e)
        {
            Session["UserType"] = null;
            Response.Redirect("Home.aspx");
        }
    }
}