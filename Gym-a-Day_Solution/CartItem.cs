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

        public CartItem(int id, string image, string name, decimal price, string description, int quantity)
        {
            this.ID = id;
            this.Image = image;
            this.Name = name;
            this.Price = price;
            this.Quantity = quantity;
            this.Description = description;
        }
    }
}