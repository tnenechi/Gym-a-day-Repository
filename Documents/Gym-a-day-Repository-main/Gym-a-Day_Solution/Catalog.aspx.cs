using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Gym_a_Day_Solution.ServiceReference1;

namespace Gym_a_Day_Solution
{
    public partial class Catalog : System.Web.UI.Page
    {
        I_Gym_a_Day_BackendClient Client = new I_Gym_a_Day_BackendClient();

        protected List<Product> productsInCart;

        protected void Page_Load(object sender, EventArgs e)
        {
            Repeater1.DataSource = Client.GetProducts().ToList();
            Repeater1.DataBind();
        }


    }
}