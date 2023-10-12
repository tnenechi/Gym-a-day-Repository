using Gym_a_Day_Solution.ServiceReference1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gym_a_Day_Solution
{
    public partial class Invoice : System.Web.UI.Page
    {
        I_Gym_a_Day_BackendClient Client = new I_Gym_a_Day_BackendClient();
        protected void Page_Load(object sender, EventArgs e)
        {
            int userId = Convert.ToInt32(Session["UserID"]);

            Repeater1.DataSource = Client.GetInvoices(userId);
            Repeater1.DataBind();
        }





        public string getProductImg(object prodID)
        {
            int id = Convert.ToInt32(prodID);
            var theProduct = Client.GetAProduct(id);
            return theProduct.Prod_Img_Path;
        }


        public string getProductName(object prodID)
        {
            int id = Convert.ToInt32(prodID);
            var theProduct = Client.GetAProduct(id);
            return theProduct.Prod_Name;
        }


        public string getProductPrice(object prodID)
        {
            int id = Convert.ToInt32(prodID);
            var theProduct = Client.GetAProduct(id);
            return (theProduct.Prod_Price).ToString();
        }


    }



}