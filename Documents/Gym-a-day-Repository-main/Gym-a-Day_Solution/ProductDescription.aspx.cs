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
        int idOfSelectedProd;




        protected void Page_Load(object sender, EventArgs e)
        {


            if (Request.QueryString["ProdId"] != null)
            {

                //Default: Hide the update product btn
                UpdateProdBtn.Visible = false;



                idOfSelectedProd = Convert.ToInt32(Request.QueryString["ProdId"]);

                //Get the product using the prodID
                var aProduct = Client.GetAProduct(idOfSelectedProd);

                //TEMPLATE FOR PRODUCT IMAGE
                product_description_left.InnerHtml = "<img src='" + aProduct.Prod_Img_Path + "' alt='Product Image' class='productImg'>";


                string productDetails = "";

                //TEMPLATE FOR PRODUCT DESCRIPTIONS
                productDetails += "<h2>" + aProduct.Prod_Name + "</h2>";
                productDetails += "<h1>R" + aProduct.Prod_Price + "</h1>";
                productDetails += "<hr>";
                productDetails += "<p>" + aProduct.Prod_Description + "</p>";
                productDetails += "<hr>";
                

                product_description_right.InnerHtml = productDetails;



                //Show only the update product btn for admin
                if(Session["UserType"] != null)
                {
                    if (((string)Session["UserType"]).Equals("Admin"))
                    {
                        AddToCartBtn.Visible = false;
                        UpdateProdBtn.Visible = true;
                       
                    }
                }
            }
            else
            {
                //IF there's no query parameter, redirect to catalog page
                Response.Redirect("Catalog.aspx");
            }


        }




        protected void AddToCartBtn_Click(object sender, EventArgs e)
        {
       
            

            //Get the selected product
            var product = Client.GetAProduct(Convert.ToInt32(idOfSelectedProd));

            if (Session["CustCart"] == null)
            { //If this is the first product the customer is adding to their cart, initialize a new cart and save it to the Session["CustCart"]

                myCart = new Cart();
                Session["CustCart"] = myCart;
            }
            else
            { //else if the customer already has products in the cart, get the existing cart (which would be stored in Session["CustCart"]

                myCart = (Cart)Session["CustCart"];
            }


            //Create a cart item object for the selected product
            //***** TODO: ***** work on passing in the correct quantity of the selected product in the cart, not the quantity of the product in the db 
            CartItem cartItem = new CartItem(product.Prod_Id, product.Prod_Img_Path, product.Prod_Name, product.Prod_Price, product.Prod_Description);

            //Insert the CartItem into the customer's cart
            myCart.Insert(cartItem);
            lt_Added.Text = "Item successfully added!";


        }

        

        protected void UpdateProdBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("ManageProduct.aspx?id=" + idOfSelectedProd);
        }
    }








}