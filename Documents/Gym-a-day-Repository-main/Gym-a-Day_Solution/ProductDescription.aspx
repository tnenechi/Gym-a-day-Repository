<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ProductDescription.aspx.cs" Inherits="Gym_a_Day_Solution.ProductDescription" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="productDescription.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   <div id="product_description_page"  >
        <div id="product_description_left" runat="server">
            <%--Will be dynamically populated--%>
        </div>

        <div id="product_description_right" runat="server">
            <%--Will be dynamically populated--%>

        </div>

       <asp:Button type='submit' class='addToCartBtn' id='AddToCartBtn' runat='server' OnClick='AddToCartBtn_Click' Text='Add to cart'/>
       <asp:Literal runat="server" ID="lt_Added"></asp:Literal>
    </div>

</asp:Content>
