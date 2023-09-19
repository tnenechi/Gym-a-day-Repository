<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Catalog.aspx.cs" Inherits="Gym_a_Day_Solution.Catalog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="catalog.css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="product-catalog">
        <asp:Repeater ID="Repeater1" runat="server">
            
            <ItemTemplate>
                
                        <div class="product_card" id="AProduct" onclick="GetSelectedProduct" runat="server">
                            <a href="ProductDescription.aspx?prodId=<%# Eval("Prod_ID") %>" >
                                    <asp:Image ID="ProdImg" ImageUrl='<%# Eval("Prod_Img_Path") %>' runat="server" />
                                    <asp:Label ID="ProdName" runat="server" Text='<%# Eval("Prod_Name") %>'></asp:Label>
                                    <asp:Label ID="ProdPrice" runat="server" Text='<%# Eval("Prod_Price") %>'></asp:Label>
                                    <asp:Button ID="Add_to_cart_Btn" OnClick="Add_Click" runat="server" Text="Add to cart" />
                            </a>

                        </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</asp:Content>
