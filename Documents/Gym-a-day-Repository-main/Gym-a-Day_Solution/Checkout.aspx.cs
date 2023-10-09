using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gym_a_Day_Solution
{
    public partial class Checkout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Request.QueryString["cp"] != null)
            {
                CheckoutMsg.Text = string.Format("Your order has been placed " + (string)Session["UserName"]);
            }
            else
            {
                Response.Redirect("Cart.aspx");
            }
        }
    }
}