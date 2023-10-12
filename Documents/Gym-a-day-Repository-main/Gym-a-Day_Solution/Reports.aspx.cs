using Gym_a_Day_Solution.ServiceReference1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gym_a_Day_Solution
{
    public partial class Reports : System.Web.UI.Page
    {
        I_Gym_a_Day_BackendClient client = new I_Gym_a_Day_BackendClient();
        protected void Page_Load(object sender, EventArgs e)
        {
            AllProds_Repeater.DataSource = client.GetProducts();
            AllProds_Repeater.DataBind();

            ProdQty_Repeater.DataSource = client.GetProducts();
            ProdQty_Repeater.DataBind();

            AllUser_Repeater.DataSource = client.GetUsers();
            AllUser_Repeater.DataBind();


            UnAvailableProd_Repeater.DataSource = client.GetUnavailableProducts();
            UnAvailableProd_Repeater.DataBind();

            Prod_Summary_Repeater.DataSource = getProductCategories();
            Prod_Summary_Repeater.DataBind();

            UsersType_Repeater.DataSource = getUsersType();
            UsersType_Repeater.DataBind();
        }



        public List<object> getProductCategories()
        {
            var products = client.GetProducts().GroupBy(p => p.Prod_Category);

            List<object> toReturn = new List<object>();
            foreach (var aProd in products)
            {
                toReturn.Add(
                    new
                    {
                        Category = aProd.Key,
                        Quantity = aProd.Count()
                    }
                       );
            }


            return toReturn;
        }



        public List<object> getUsersType()
        {
            var allUsers = client.GetUsers().GroupBy(u => u.Type);

            List<object> toReturn = new List<object>();
            foreach (var aUser in allUsers)
            {
                toReturn.Add(
                    new
                    {
                        Type = aUser.Key,
                        Number = aUser.Count()
                    }
                       );
            }


            return toReturn;
        }







        protected void SortDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            string selectedSort = SortDropDownList.SelectedItem.Value;

            if (selectedSort.Equals("ALL"))
            {
                
                allProdsTableContainer.Visible = true;
                InStockContainer.Visible = true;
                OutStockContainer.Visible = true;
                ProdCatContainer.Visible = true;
                AllUsersContainer.Visible = true;
                UsersTypeContainer.Visible = true;
            }
            else if (selectedSort.Equals("ProdsSold"))
            {
                allProdsTableContainer.Visible = true;
                InStockContainer.Visible = false;
                OutStockContainer.Visible = false;
                ProdCatContainer.Visible = false;
                AllUsersContainer.Visible = false;
                UsersTypeContainer.Visible = false;
            }
            else if (selectedSort.Equals("Instock"))
            {
                allProdsTableContainer.Visible = false;
                InStockContainer.Visible = true;
                OutStockContainer.Visible = false;
                ProdCatContainer.Visible = false;
                AllUsersContainer.Visible = false;
                UsersTypeContainer.Visible = false;
            }
            else if (selectedSort.Equals("OutOfStock"))
            {
                allProdsTableContainer.Visible = false;
                InStockContainer.Visible = false;
                OutStockContainer.Visible = true;
                ProdCatContainer.Visible = false;
                AllUsersContainer.Visible = false;
                UsersTypeContainer.Visible = false;
            }
            else if (selectedSort.Equals("ProdCat"))
            {
                allProdsTableContainer.Visible = false;
                InStockContainer.Visible = false;
                OutStockContainer.Visible = false;
                ProdCatContainer.Visible = true;
                AllUsersContainer.Visible = false;
                UsersTypeContainer.Visible = false;
            }
            else if (selectedSort.Equals("AllUsers"))
            {
                allProdsTableContainer.Visible = false;
                InStockContainer.Visible = false;
                OutStockContainer.Visible = false;
                ProdCatContainer.Visible = false;
                AllUsersContainer.Visible = true;
                UsersTypeContainer.Visible = false;
            }
            else if (selectedSort.Equals("UsersType"))
            {
                allProdsTableContainer.Visible = false;
                InStockContainer.Visible = false;
                OutStockContainer.Visible = false;
                ProdCatContainer.Visible = false;
                AllUsersContainer.Visible = false;
                UsersTypeContainer.Visible = true;
            }
        }
    }
}