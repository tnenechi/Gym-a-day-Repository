using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Gym_a_Day_Solution
{
    public class CartItem
    {
        public int ID { get; set; }
        public string Image { get; set; }
        public string Name { get; set; }
        public decimal Price { get; set; }
        public string Description { get; set; }
        public int Quantity { get; set; }

        public CartItem()
        {

        }

        public CartItem(int id, string image, string name, decimal price, string description)
        {
            this.ID = id;
            this.Image = image;
            this.Name = name;
            this.Quantity = 1; //When a CartItem is created, the initial quantity is 1 (although the quantity can later be changed -
                               //the insert method in Cart.aspx.cs takes care of adding an item that is already in the cart
                               //and the page load function takes care of increasing the quantity of an item by + -)


            this.Price = price; 
            this.Description = description;
        }
    }
}