<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="Gym_a_Day_Solution.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   <link rel="stylesheet" type="text/css" href="cart.css"/>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    



    <div class="cart-page" id="Cart_Container" runat="server">
      <table class="cart-table">
          <%--Heading row--%>
        <tr id="cart-page-headings">
          <th class="cart-head">Product</th>
          <th class="cart-head">Quantity</th>
          <th class="cart-head">Subtotal</th>
        </tr>

          <asp:Repeater ID="Cart_Repeater" runat="server">
              <ItemTemplate>

                        <asp:HiddenField ID="ProdID_HiddenField" runat="server" Value='<%# Eval("ID") %>' EnableViewState="true"/>
                         <%--Product row--%>
                        <tr id="cart-page-product">
                            <td class="cart-table-data">
                                <div class="cart-info">
                                    <asp:Image ID="Cart_Prod_Img"   ImageUrl='<%# Eval("Image") %>'  runat="server" CssClass="cart-table-img" />
                                    <div>
                                        <asp:Label ID="Cart_Prod_Name" runat="server" Text='<%# Eval("Name") %>' CssClass="cart-product-name" ></asp:Label>
                                        <br />
                                        <small>Price: <%# Eval("Price") %></small>
                                        <br />
                                            <%--remove link--%>
                                        <asp:LinkButton ID="RemoveItem" CssClass="cart-remove" runat="server" OnClick="RemoveItem_Click" CommandArgument='<%# Eval("ID") %>'>Remove</asp:LinkButton>
                                    </div>
                                </div>
                            </td>

                            <td class="cart-table-data">
                               
                                <asp:TextBox 
                                    TextMode="number" 
                                    CssClass="cart-table-quantity" 
                                    ID="Cart_Item_Qty" 
                                    runat="server" 
                                     Text='<%# GetCartItemQuantity(Eval("ID")) %>'
                                    min="1"
                                    max='<%# GetDBProductQTY(Eval("ID")) %>'
                                    EnableViewState="true"> </asp:TextBox>

                                
                            </td>

                                <%--an item subtotal--%>
                            <td class="cart-table-data"><%# TotalQuantityPrice(Eval("ID")) %></td>
                        </tr>

              </ItemTemplate>
          </asp:Repeater>
      </table>

       <div class="update-cart">
            <asp:Button ID="Update_Btn" runat="server" Text="Update Cart" OnClick="Update_Btn_Click" CommandArgument='<%# Eval("ID") %>'/>
      </div>

      <div class="total-price">
        <table class="total-price-table">
          <tr>
            <td class="cart-table-data">Cart Subtotal</td>
            <td class="cart-table-data"><%= customerCart.CartTotal()%></td>
          </tr>
          <tr>
            <td class="cart-table-data">VAT</td>
            <td class="cart-table-data"><%= getVAT() %></td>
          </tr>
        <tr>
            <td class="cart-table-data">Shipping</td>
            <td class="cart-table-data"><%= getShippingFee() %></td>
        </tr>
        <tr>
            <td class="cart-table-data">Discount Applied</td>
            <td class="cart-table-data">N/A</td>
        </tr>
        <tr>
            <td class="cart-table-data">Total</td>
            <td class="cart-table-data"><%= getGrandTotal() %></td>
          </tr>
        </table> 
      </div>

      <div class="checkout">
        <button class="checkout-btn">Checkout</button>
      </div>
    </div>
   
</asp:Content>
