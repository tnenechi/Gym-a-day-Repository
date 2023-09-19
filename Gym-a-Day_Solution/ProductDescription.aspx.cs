using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Gym_a_Day_Solution.ServiceReference1;

namespace Gym_a_Day_Solution
{
    public partial class ProductDescription : System.Web.UI.Page
    {
        I_Gym_a_Day_BackendClient Client = new I_Gym_a_Day_BackendClient();
        Cart myCart;
        string id;

        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["prodId"];
        }

        protected void Add_Button_Click(object sender, EventArgs e)
        {
            //Create new Cart session
            var product = Client.GetAProduct(Convert.ToInt32(id));
            if (Session["CustCart"] == null)
            {
                myCart = new Cart();
                Session["CustCart"] = myCart;
            }

            myCart = (Cart)Session["CustCart"];
            //Create a cart item!
            id = Request.QueryString["prodId"];
            if(product != null) { 
                CartItem cartItem = new CartItem(product.Prod_Id, product.Prod_Img_Path, product.Prod_Name, product.Prod_Price, product.Prod_Description, product.Prod_Qty);
                myCart.Insert(cartItem);
                lt_Added.Text = "Item successfully added!";
            }
            

        }

        
    }
    /*
     *  public partial class ProductDescription : System.Web.UI.Page
    {
        I_Gym_a_Day_BackendClient Client = new I_Gym_a_Day_BackendClient();

        protected void Page_Load(object sender, EventArgs e)
        {

            if(Request.QueryString["ProdID"] != null)
            {
                //Get the product using the prodID
                int idToGet = Convert.ToInt32(Request.QueryString["ProdID"].ToString());
                var aProduct = Client.GetAProduct(idToGet);

                product_description_left.InnerHtml = "<img src='" + aProduct.Prod_Img_Path + "' alt='Product Image' class='productImg'>";


                string productDetails = "";

                productDetails += "<h2>" + aProduct.Prod_Name + "</h2>";
                productDetails += "<h1>" + aProduct.Prod_Price + "</h1>";
                productDetails += "<hr>";
                productDetails += "<p>" + aProduct.Prod_Description + "</p>";
                productDetails += "<hr>";
                productDetails += "<button type='submit' class='addToCartBtn' id='AddToCartBtn' runat='server' onserverClick='AddToCartBtn_Click'> Add to cart <button/>";

                product_description_right.InnerHtml = productDetails;
            }
            else
            {
                //IF there's no query parameter, redirect to catalog page
                Response.Redirect("Catalog.aspx");
            }
            

        }

        protected void AddToCartBtn_Click(object sender, EventArgs e)
        {

        }
    }
     * 
     * */


}