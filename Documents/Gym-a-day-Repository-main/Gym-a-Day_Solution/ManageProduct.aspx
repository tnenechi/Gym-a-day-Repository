<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ManageProduct.aspx.cs" Inherits="Gym_a_Day_Solution.ManageProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <style>

    .product-addition-container {
        height: 100vh;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: space-evenly;
        color: #fca311;
    }


    #addProductForm {
        width: 100%;
        display: flex;
        flex-direction: column;
        align-items: center;
    }

    .input {
        width: 35%;
        padding: 10px;
        margin-bottom: 2em;
        border-radius: 3px;
        border: 1px solid black;
    }


    .btn {
        padding: 1em 5em;
    
        background-color: black;
        color: white;
        border: none;
        margin-top: 10px;
        margin-bottom: 15px;
        border-radius: var(--login_border_radius);
        border-radius: 3px;
        font-size: 15px;
    }

    .btn:hover{
        background-color: #fca311;
        transition: background-color ease 0.59s;
    }

    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="product-addition-container">
          
        <h1>Manage a Product</h1>
      
        <div>
            <asp:Literal ID="Msg" runat="server"></asp:Literal>
          </div>

        <div id="addProductForm">
            

            <label for="productName">Product Name</label>
            <input
                runat="server"
                id="productName"
                type="text"
                name="productname"
                placeholder="Name of product" 
                class="input"/>

            <label for="productPrice">Product price</label>
            <input
                runat="server"
                id="productPrice"
                type="text"
                name="productPrice"
                placeholder="Price in Rands" 
                class="input"/>

            <label for="productDescription">Product Description</label>
            <input
                runat="server"
                id="productDescription"
                type="text"
                name="productDescription"
                placeholder="Describe the product" 
                class="input"/>

            <label for="productDescription">Product Quantity</label>
            <input
                runat="server"
                id="productQty"
                type="text"
                name="productQty"
                placeholder="Quantity of the product" 
                class="input"/>


            <label for="SelectCategoryDropDownList">Product Category</label>
            <asp:DropDownList ID="SelectCategoryDropDownList" runat="server">
                <asp:ListItem Value="Supplements">Supplements</asp:ListItem>
                <asp:ListItem Value="Clothing">Clothing</asp:ListItem>
                <asp:ListItem Value="Gadgets">Gadgets</asp:ListItem>
            </asp:DropDownList>


            <asp:Button CssClass="btn" ID="EditProductBtn" runat="server" Text="Edit Product" OnClick="EditProductBtn_Click"/>
            <asp:Button CssClass="btn" ID="DeleteProductBtn" runat="server" Text="Delete Product" OnClick="DeleteProductBtn_Click"/>
           
        </div>

    </div>
</asp:Content>
