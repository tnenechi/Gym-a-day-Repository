using Gym_a_Day_Solution.ServiceReference1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gym_a_Day_Solution
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        I_Gym_a_Day_BackendClient Client = new I_Gym_a_Day_BackendClient();
        public Cart customerCart;
        protected void Page_Load(object sender, EventArgs e)
        {
            


            if (Session["CustCart"] == null)
            { //if the customer has no product(s) in their cart, inform them that their cart is empty
                Response.Redirect("EmptyCart.aspx");
            }
            else
            { //else if the customer has product(s) in their cart, display the products



                //Get the customer's existing cart
                customerCart = (Cart)Session["CustCart"];

                if (!IsPostBack)
                {
                    Cart_Repeater.DataSource = customerCart.Items;
                    Cart_Repeater.DataBind();

                }



            }

        }

      


       protected int GetDBProductQTY(object idObject)
       {
            int ID = Convert.ToInt32(idObject);

            int DBProdQty = Client.GetProductQty(ID);

            return DBProdQty;
       }


        public int GetCartItemQuantity(object idObject)
        {
            int ID = Convert.ToInt32(idObject);
            int index = customerCart.IndexOfItem(ID);
            int itemQty = customerCart.Items[index].Quantity;
            return itemQty;
        }



        //Returns the total price of a CartItem (original price * quantity) in the customerCart
        public decimal TotalQuantityPrice(object idObject)
        {
            int ID = Convert.ToInt32(idObject);
            int rowIndex = customerCart.IndexOfItem(ID);
            decimal total = customerCart.Items[rowIndex].Price * customerCart.Items[rowIndex].Quantity;

            return total;
            
        }

        
            //Calls the Delete method, to delete a specific CartItem from the customerCart
            //Called by a LinkButton, which passes the item ID as CommandArgument;
        protected void RemoveItem_Click(object sender, EventArgs e)
        {
            string StringID = ((LinkButton)sender).CommandArgument;
            int ID = Convert.ToInt32(StringID);
            customerCart.Delete(ID);

            if(customerCart.Items.Count == 0)
            {
                Response.Redirect("EmptyCart.aspx");
            }

            Server.TransferRequest(Request.Url.AbsolutePath, false);
        }

  
        //Updates the quantity of each cartItem to the text in the "Cart_Item_Qty" Textbox
        protected void Update_Btn_Click(object sender, EventArgs e)
        {
            foreach(RepeaterItem item in Cart_Repeater.Items)
            {

                HiddenField prodID = (HiddenField)item.FindControl("ProdID_HiddenField");
                int idOfProd = Convert.ToInt32((prodID.Value));

                TextBox qtyTextBox = (TextBox)item.FindControl("Cart_Item_Qty");
                int newQty = Convert.ToInt32(qtyTextBox.Text);

              

                customerCart.Update(idOfProd, newQty);

            }

            Server.TransferRequest(Request.Url.AbsolutePath, false);

        }


        //calculates the VAT: 15% of the grandTotal
        protected decimal getVAT()
        {
            decimal total = customerCart.CartTotal();

            decimal VAT = (decimal)0.15 * total;

            return VAT;
        }


        //If customer total items > R500, then shipping is free, else a flat rate of R150
        protected string getShippingFee()
        {
            decimal total = customerCart.CartTotal();

            if(total >= 500)
            {
                return "Free!";
            }
            else
            {
                return "Flat rate: R150";
            }
        }



        //Returns the CartTotal + VAT + ShippingFee + ...
        protected decimal getGrandTotal()
        {
            decimal cartTotal = customerCart.CartTotal();
            decimal vat = getVAT();
            decimal shippingFee = (cartTotal >= 500) ? 0 : 150;

            decimal grandTotal = cartTotal + vat + shippingFee;

            return grandTotal;
        }





        protected void CheckoutButton_Click(object sender, EventArgs e)
        {
            if(Session["UserType"] != null)
            {
                Dictionary<int, int> prodIdQty = new Dictionary<int, int>();
                int userId = (int)Session["UserID"];
                DateTime datePurchased = DateTime.Now;
                decimal totalSpent = getGrandTotal();

                foreach (RepeaterItem item in Cart_Repeater.Items)
                {

                    HiddenField prodID = (HiddenField)item.FindControl("ProdID_HiddenField");
                    int idOfProd = Convert.ToInt32((prodID.Value));

                    TextBox qtyTextBox = (TextBox)item.FindControl("Cart_Item_Qty");
                    int qtyBought = Convert.ToInt32(qtyTextBox.Text);



                    prodIdQty.Add(idOfProd, qtyBought);

                }

                //create Invoice
                Client.CreateInvoice(userId, prodIdQty, totalSpent, datePurchased);

                //redirect to checkout Page
                Response.Redirect("Checkout.aspx?cp=1");
            }
            else
            {
                Response.Redirect("Login.aspx?cout=0");
            }
        }

    }






    public class Cart
    {
        public List<CartItem> Items { get; set; }

        public Cart()
        {
            Items = new List<CartItem>();
        }

        //Index of the Item in the Items List
        public int IndexOfItem(int ID)
        {
            foreach (CartItem item in Items)
            {
                if (item.ID.Equals(ID))
                {
                    return Items.IndexOf(item);
                }
            }
            return -1;
        }

        //Function to add CartItem to Items List
        public void Insert(CartItem item)
        {

            int index = IndexOfItem(item.ID);
            if (index.Equals(-1))
            {
                Items.Add(item);
            }
            else
            {
                Items[index].Quantity++;
            }
        }

        //Helper function to Delete CartItem from Items List
        public void Delete(int ID)
        {
            int rowID = this.IndexOfItem(ID);
            Items.RemoveAt(rowID);
        }

        //Function to Update CartItem Quantity from ItemList
        public void Update(int ID, int Quantity)
        {
            int rowId = this.IndexOfItem(ID);
            if (Quantity > 0)
            {
                Items[rowId].Quantity = Quantity;
            }
            else
            {
                Delete(rowId);
            }
        }



        //Total price of all items in the cart
        public decimal CartTotal()
        {
            if (Items.Equals(null))
            {
                return 0;
            }
            else
            {
                decimal grandTotal = 0;
                foreach (CartItem item in Items)
                {
                    grandTotal += item.Quantity * item.Price;
                }
                return grandTotal;
            }
        }


        
    }
}