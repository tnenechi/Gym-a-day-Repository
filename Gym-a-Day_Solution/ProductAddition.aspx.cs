using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Gym_a_Day_Solution;
using Gym_a_Day_Solution.ServiceReference1;

namespace Gym_a_Day_Solution
{
    public partial class ProductAddition : System.Web.UI.Page
    {
        I_Gym_a_Day_BackendClient client = new I_Gym_a_Day_BackendClient();

        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet ds;
        }


        protected void Submit_Click(object sender, EventArgs e)
        {
            int hasBeenAdded = client.AddProduct(productImgPath.Value, productName.Value, productPrice.Value, productDescription.Value);

            if(hasBeenAdded == 1)
            {
                //Success
                Response.Redirect("Home.aspx");
            }
            else if(hasBeenAdded == -1)
            {
                //Error
                Response.Redirect("Login.aspx");
            }
        }
    }
}