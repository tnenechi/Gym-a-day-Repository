using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Gym_a_Day_Solution
{
    public class Cart
    {
        private List<CartItem> Items { get; set; }

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
        public void Insert(CartItem item) {

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
        public void Delete(int rowID)
        {
            Items.RemoveAt(rowID);
        }

        //Function to Update CartItem Quantity
        public void Update(int rowId, int Quantity)
        {
            if (Quantity > 0)
            {
                Items[rowId].Quantity = Quantity;
            } 
            else
            {
                Delete(rowId);
            }
        }

        //Total price of all items
        public decimal GrandTotal()
        {
            if (Items.Equals(null))
            {
                return 0;
            }
            else
            {
                decimal grandTotal = 0;
                foreach(CartItem item in Items)
                {
                    grandTotal += item.Quantity * item.Price;
                }
                return grandTotal;
            }           
        }
    }
}