<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ProductAddition.aspx.cs" Inherits="Gym_a_Day_Solution.ProductAddition" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   <%-- <link rel="stylesheet" type="text/css" href="productAddition.css"/>--%>


    <style>
        .add-container {
            height: 100vh;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: space-evenly;
        }

        #addProductForm {
            width: 100%;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .add-container .input {
            width: 50%;
            padding: 10px;
            margin-bottom: 2em;
            border-radius: var(--login_border_radius);
        }

        label {
            color: #fff;
        }

      add-product-btn {
    border-radius: 3px;
    border: 1px solid black;
    background-color: black;
    color: white;
    text-decoration: none;
    padding: 10px 20px;
}

    add-product-btn:hover {
        border: 1px solid #fca311;
        background-color: #fca311;
        transition: background-color ease 0.57s;
    }

        a {
            color: white;
            text-decoration: none;
        }

            a:hover {
                border-bottom: 2px solid red;
            }

        .links {
            display: flex;
            gap: 1em;
            margin-top: 1em;
        }

        .divider {
            height: 30px;
            border-left: 2px solid;
        }

        @media screen and (min-width: 768px) {
            .add-container input {
                width: 30%;
            }
        }

    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Literal ID="Msg" runat="server"></asp:Literal>

    <div class="add-container">
        <h1>Add a Product</h1>

        <div id="addProductForm">
            <label for="productImgPath">Image path</label>
            <input
                runat="server"
                id="productImgFile"
                type="file"
                name="productImg"
                placeholder="Path to product image" 
                class="input"/>

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


            <asp:Button ID="Submit" runat="server" Text="Add Product" CssClass="add-product-btn" OnClick="Submit_Click" />
        </div>

    </div>
</asp:Content>
