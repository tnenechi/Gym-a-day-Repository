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
           



        }


        


        //Call the appropriate sortBy Method depending on the selectedItem
        protected void SortDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            string selectedSort = SortDropDownList.SelectedItem.Value;
            

            if (selectedSort.Equals("PrAsc"))
            {
                Repeater1.DataSource = Client.GetProducts().ToList().OrderBy(x => x.Prod_Price);
                Repeater1.DataBind();
            }
            else if (selectedSort.Equals("PrDsc"))
            {
                Repeater1.DataSource = Client.GetProducts().ToList().OrderByDescending(x => x.Prod_Price);
                Repeater1.DataBind();
            }
            else if (selectedSort.Equals("NameAsc"))
            {
                Repeater1.DataSource = Client.GetProducts().ToList().OrderBy(x => x.Prod_Name);
                Repeater1.DataBind();
            }
            else if (selectedSort.Equals("NameDsc"))
            {
                Repeater1.DataSource = Client.GetProducts().ToList().OrderByDescending(x => x.Prod_Price);
                Repeater1.DataBind();
            }


            

        }
    }
}