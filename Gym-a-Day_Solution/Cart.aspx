<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="Gym_a_Day_Solution.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #myform {
    text-align: center;
    padding: 5px;
    border: 1px dotted #ccc;
    margin: 2%;
    }
    .qty {
        width: 40px;
        height: 23px;
        text-align: center;
        background-color: black;
        color: white;
        border: 1px solid black;
    }
    .qtyplus, .remove { width:25px; height:25px; border: 1px solid black; color: red; background-color: black;}
    input.qtyminus { width:25px; height:25px; border: 1px solid black; color: red; background-color: black;}
    .qtyplus:hover, input.qtyminus:hover, .remove:hover { width:25px; height:25px; border: 1px solid black; color: black; background-color: red;}

    #Cart_Total_Text_Box{
        border: 1px solid red;
        margin: 5px;
    }
    #CheckoutButton{
        border: 2px solid black;
        background-color: black;
        color: red;
    }
    #CheckoutButton:hover{
        border: 2px solid red;
        background-color: red;
        color: black;
    }
    #CartTable {
        border: 1px solid green;
        background-color: aquamarine;
    }
    </style>
    <script>
        jQuery(document).ready(($) => {
            $('.quantity').on('click', '.plus', function (e) {
                let $input = $(this).prev('input.qty');
                let val = parseInt($input.val());
                $input.val(val + 1).change();
            });

            $('.quantity').on('click', '.minus',
                function (e) {
                    let $input = $(this).next('input.qty');
                    var val = parseInt($input.val());
                    if (val > 0) {
                        $input.val(val - 1).change();
                    }
                });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Your Cart</h1>
    <%--  --%>
    <asp:Table ID="CartTable" runat="server" Height="139px" Width="444px">
        <asp:TableRow runat="server">
            <asp:TableCell>
                Product
            </asp:TableCell>
            <asp:TableCell>
                Quantity
            </asp:TableCell>
            <asp:TableCell>
                Total
            </asp:TableCell>
            <asp:TableCell>
                Remove
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>

             <%-- Product --%>
            <asp:TableCell ID="Checkout_Item_Details" runat="server">
                
            </asp:TableCell>

            <%-- Table Quantity--%>
            <asp:TableCell id="Item_Qty" runat="server">
                <form id='myform' method='POST' class='quantity' action='#'>
                  <asp:Button runat="server" text="-" ID="qtyMinus" OnClick="qtyMinus_Click" CssClass="qtyminus" />
                  <input type='text' name='quantity' value='0' class='qty' runat="server" id="cart_qty" />
                    <asp:Button runat="server" text="+" ID="qtyPlus" OnClick="qtyPlus_Click" CssClass="qtyplus" />
                </form>
            </asp:TableCell>

             <%-- Table Item Price--%>
            <asp:TableCell ID="Item_Price" runat="server">
                <%--<asp:Literal ID="item_price"runat="server"></asp:Literal>--%>
                <asp:Label runat="server" > R550.00</asp:Label>
            </asp:TableCell>
            <asp:TableCell ID="Remove_Item" runat="server">
                <asp:Button runat="server" text="X" ID="Remove" OnClick="Remove_Click" CssClass="remove" />
            </asp:TableCell>
        </asp:TableRow>

         <%-- *** Checkout Table ***--%>
    </asp:Table>
    <asp:Table ID="CheckoutTable" runat="server">
        <asp:TableRow>
            <asp:TableCell>
                Cart Total
            </asp:TableCell>
            <asp:TableCell>
                <input type="text" id="Cart_Total_Text_Box" />
            </asp:TableCell>
            <asp:TableCell >
                <asp:Label ID="Grand_Total" runat="server" Text='<%# Eval("Total_Price") %>'></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Button ID="CheckoutButton" runat="server" Width="100" Text="Checkout" OnClick="CheckoutButton_Click"/>
            </asp:TableCell>
        </asp:TableRow>

    </asp:Table>
    <div _designerregion="0">
    
   <%-- <asp:Table ID="CartTable" runat="server" Height="139px" Width="344px">
        <asp:TableRow runat="server">
            <asp:TableCell>
                Product
            </asp:TableCell>
            <asp:TableCell>
                Quantity
            </asp:TableCell>
            <asp:TableCell>
                Total
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell ID="Checkout_Item_Details" runat="server">
                <asp:Image ID="Checkout_ProdImg" ImageUrl='<%# Eval("Prod_Img_Path") %>' runat="server" />
                <asp:Label ID="ProdName" runat="server" Text='<%# Eval("Prod_Name") %>'></asp:Label>
                 <asp:Label ID="Checkout_ProdPrice" runat="server" Text='<%# Eval("Prod_Price") %>'></asp:Label>
            </asp:TableCell>
            <asp:TableCell id="Item_Qty" runat="server">
                ...
            </asp:TableCell>
            <asp:TableCell ID="Item_Price" runat="server">
                ...
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    <asp:Table ID="CheckoutTable" runat="server">
        <asp:TableRow>
            <asp:TableCell>
                Total
            </asp:TableCell>
            <asp:TableCell >
                <asp:Label ID="Grand_Total" runat="server" Text='<%# Eval("Total_Price") %>'></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Button ID="CheckoutButton" runat="server" Width="100" Text="Checkout" OnClick="Checkout_Click"/>
            </asp:TableCell>
        </asp:TableRow>

    </asp:Table>--%>
    <div _designerregion="0">
    </div>
    
    </div>
    
</asp:Content>
