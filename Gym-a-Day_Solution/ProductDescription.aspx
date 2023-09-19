<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ProductDescription.aspx.cs" Inherits="Gym_a_Day_Solution.ProductDescription" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   <div id="product_description_page"  >
        <div id="product_description_left">
            <img src="../Images/Product3.jpg" alt="product image" runat="server" id="prod_image">
            <asp:Image ID="product_image" runat="server" />
        </div>
        <div id="product_description_right">
            <h2 id="product_name" runat="server">New Balance Sneaker</h2>
            <h1 id="product_price" runat="server">R99.99</h1>
            <hr>
            <p id="description" runat="server">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Voluptas beatae unde consequatur rerum aspernatur non quisquam cumque voluptates illum optio.</p>
            <hr>
            <asp:Button id="Add_Button" runat="server" Text="Add To Cart" Width="100" OnClick="Add_Button_Click"/>
            <asp:Literal runat="server" ID="lt_Added"></asp:Literal>
        </div>
    </div>

</asp:Content>
