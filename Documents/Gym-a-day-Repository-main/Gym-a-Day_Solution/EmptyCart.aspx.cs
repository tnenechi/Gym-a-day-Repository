using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gym_a_Day_Solution
{
    public partial class EmptyCart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BackToShop_Click(object sender, EventArgs e)
        {
            Response.Redirect("Catalog.aspx");
        }
    }
}