<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ProductAddition.aspx.cs" Inherits="Gym_a_Day_Solution.ProductAddition" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="productAddition.css"/>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="product-addition-container">
        <h1>Add a Product</h1>

        <div id="addProductForm">
            <label for="productImgPath">Image path</label>
            <input
                runat="server"
                id="productImgPath"
                type="text"
                name="productImgPath"
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

            <asp:Button ID="Submit" runat="server" Text="Add Product" CssClass="add-product-btn" OnClick="Submit_Click" />
        </div>

    </div>
</asp:Content>
