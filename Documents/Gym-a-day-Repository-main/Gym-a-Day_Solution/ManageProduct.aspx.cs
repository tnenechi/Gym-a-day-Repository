using Gym_a_Day_Solution.ServiceReference1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gym_a_Day_Solution
{
    public partial class ManageProduct : System.Web.UI.Page
    {
        I_Gym_a_Day_BackendClient client = new I_Gym_a_Day_BackendClient();
        int idOfProduct;

        protected void Page_Load(object sender, EventArgs e)
        {
            //If no logged in user, redirect to login page
            if(Session["UserType"] == null)
            {
                Response.Redirect("Login.aspx");
            }


            if (Request.QueryString["id"] == null)
            {
                Response.Redirect("Catalog.aspx");
            }
            else
            {
                idOfProduct = Convert.ToInt32(Request.QueryString["id"]);


                var theProduct = client.GetAProduct(idOfProduct);


                if (!IsPostBack)
                {
                    productName.Value = theProduct.Prod_Name;
                    productPrice.Value = theProduct.Prod_Price.ToString();
                    productDescription.Value = theProduct.Prod_Description;
                    productQty.Value = theProduct.Prod_Qty.ToString();
                    SelectCategoryDropDownList.SelectedValue = theProduct.Prod_Category;
                }
            }
        }




        

        protected void EditProductBtn_Click(object sender, EventArgs e)
        {
            int isEdited = client.EditProduct(idOfProduct, productName.Value, productPrice.Value, productDescription.Value, Convert.ToInt32(productQty.Value), SelectCategoryDropDownList.SelectedValue);

            if (isEdited == 1)
            {

                productName.Value = null;
                productPrice.Value = null;
                productDescription.Value = null;
                productQty.Value = null;
               

                Msg.Text = string.Format("Product edited successfully");

            }
            else
            {
                Msg.Text = string.Format("An error occured while trying to edit the product");
            }

        }

        protected void DeleteProductBtn_Click(object sender, EventArgs e)
        {
            int isDeleted = client.DeleteProduct(idOfProduct);

            if (isDeleted == 1)
            {

                Msg.Text = string.Format("Product deleted successfully");
            }
            else
            {
                Msg.Text = string.Format("An error occured while trying to delete the product");
            }
        }

    }
}