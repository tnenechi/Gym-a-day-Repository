<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Invoice.aspx.cs" Inherits="Gym_a_Day_Solution.Invoice" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
 <style>

        
    .cart-page {
        margin: 80px auto;
        width: 90%;
    }

    .cart-table {
        background-color: #101010;
        width: 100%;
        border-radius: 4px;
        margin-bottom: 20px;
        border-color: #fca311;
    }
    #cart-page-headings{
        border-radius: 8px;

    }
    .cart-info {
        display: flex;
        flex-wrap: wrap;
    }

    .cart-head {
        font-size: large;
        text-align: center;
        padding: 5px;
        color: #fff;
        background-color: #fca311;
        font-weight: normal;
    }

    .cart-head:last-child {
        text-align: right;
    }

    .cart-table-data {
    
        width: 30px;
        padding: 10px 5px;
        text-align: center;
    }

    .cart-table-data:last-child {
        text-align: right;
    }

    .cart-table-img {
        width: 80px;
        height: 80px;
        object-fit: contain;
        margin-right: 10px;
    }

    .cart-table-quantity {
        background-color: #151515;
        color: #fff;
        border: 1px solid #fca311;
        width: 40px;
        height: 30px;
        text-align: center;
        border-radius: 3px;
    }

     .cart-remove {
        color: red;
        font-size: 15px;
    } 

    .total-price,
    .checkout {
        display: flex;
        justify-content: flex-end;
        margin-bottom: 30px;
    }

    .total-price-table {
        border-top: 3px solid #fca311;
        width: 100%;
        max-width: 320px;
        border-bottom: 3px solid #fca311;
    }


    
    .checkout-btn, .Update-Btn {
        padding: 10px 20px;
        background-color: #111111;
        color: #fff;
        border: 1px solid #fca311;
        border-radius: 3px;

    }


    
    .checkout-btn:hover {
        cursor: pointer;
        background-color: #fca311;
        transition: background-color linear 0.3s;
    }

    /* Product name hidden for smaller screen */
    @media screen and (max-width: 600px) {
        .cart-product-name {
            display: none;
        }
    }


</style>

</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="cart-table">
        <tr id="cart-page-headings">
          <th class="cart-head">Product</th>
          <th class="cart-head">Quantity</th>
        </tr>
    </table>


    <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>

            <tr id="cart-page-product">
                 <td class="cart-table-data">
                                <div class="cart-info">
                                    <asp:Image ID="Cart_Prod_Img"   ImageUrl='<%# getProductImg(Eval("ProdID")) %>'  runat="server" CssClass="cart-table-img" />
                                    <div>
                                        <asp:Label ID="Cart_Prod_Name" runat="server" Text='<%# getProductName(Eval("ProdID")) %>' CssClass="cart-product-name" ></asp:Label>
                                        <br />
                                        <small>Price: <%# getProductPrice(Eval("ProdID")) %></small>
                                        <br />
                                         
                                    </div>
                                </div>
                            </td>

                <td class="cart-table-data">
                    <p></p>

                </td>
            </tr>




            <div class="total-price">
                <table class="total-price-table">
                  <tr>
                    <td class="cart-table-data">Purchase Date</td>
                    <td class="cart-table-data"><%# Eval("PurchaseDate")%></td>
                  </tr>
                  <tr>
                    <td class="cart-table-data">Total Price</td>
                    <td class="cart-table-data"><%# Eval("TotalPrice") %></td>
                  </tr>
                </table> 
      </div>
        </ItemTemplate>
    </asp:Repeater>





</asp:Content>
