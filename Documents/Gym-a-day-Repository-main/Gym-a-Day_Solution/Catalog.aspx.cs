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

        List<Product> toReturn = new List<Product>();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {//If the page is loading for the first time, getall products
                Repeater1.DataSource = Client.GetProducts().ToList();
                Repeater1.DataBind();
            }
            else
            {
                Repeater1.DataSource = toReturn;
                Repeater1.DataBind();
            }



        }


        //call groupByCategory("Supplemets")
        protected void Supplements_CheckedChanged(object sender, EventArgs e)
        {

            toReturn = Client.GetProductsByCategory("Supplements").ToList();
            Server.TransferRequest(Request.Url.AbsolutePath, false);
        }

        //call groupByCategory("Clothing")
        protected void Clothing_CheckedChanged(object sender, EventArgs e)
        {
            toReturn = Client.GetProductsByCategory("Clothing").ToList();
            Server.TransferRequest(Request.Url.AbsolutePath, false);
        }

        //call groupByCategory("Gadgets")
        protected void Gadgets_CheckedChanged(object sender, EventArgs e)
        {
            toReturn = Client.GetProductsByCategory("Gadgets").ToList();
            Server.TransferRequest(Request.Url.AbsolutePath, false);
        }


        //Call the appropriate sortBy Method depending on the selectedItem
        protected void SortDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            string selectedSort = SortDropDownList.SelectedValue;
            

            if (selectedSort.Equals("PrAsc"))
            {
                toReturn = Client.GetProductByPriceAsc().ToList();
            }
            else if (selectedSort.Equals("PrDsc"))
            {
                toReturn = Client.GetProductByPriceDsc().ToList();
            }
            else if (selectedSort.Equals("NameAsc"))
            {
                toReturn = Client.GetProductByNameAsc().ToList();
            }
            else if (selectedSort.Equals("NameDsc"))
            {
                toReturn = Client.GetProductByNameDsc().ToList();
            }


            Server.TransferRequest(Request.Url.AbsolutePath, false);

        }
    }
}