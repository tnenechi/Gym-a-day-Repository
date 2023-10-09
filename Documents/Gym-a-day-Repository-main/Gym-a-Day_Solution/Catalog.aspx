<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Catalog.aspx.cs" Inherits="Gym_a_Day_Solution.Catalog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   <%-- <link rel="stylesheet" type="text/css" href="catalog.css"/>--%>

    <style>

        
.product-catalog{
    display: flex;
    flex-wrap: wrap;
    
}

.product_card {
    width: 200px;
    height: 300px;
    background-color: #fff;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    margin: 1em;
    border-radius: 5px;
    border: 2px solid white;
}

    .product_card img {
        width: 150px;
        height: 200px;
        object-fit: contain;
    }

    .product_card p {
        margin-bottom: 1em;
    }

    .product_card:hover {
        /*box-shadow: 10px 10px 5px #cfcbcb;*/
        border: 2px solid #fca311;

    }

    a{
        color: black;
        text-decoration: none;
    }


  






    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="product-catalog">
        <asp:Repeater ID="Repeater1" runat="server">
            
            <ItemTemplate>
                

                            <a class="product_card" href="ProductDescription.aspx?ProdID=<%# Eval("Prod_ID") %>">
                                <asp:Image ID="ProdImg" ImageUrl='<%# Eval("Prod_Img_Path") %>' runat="server" />
                                    <asp:Label ID="ProdName" runat="server" Text='<%# Eval("Prod_Name") %>'></asp:Label>
                                    <asp:Label ID="ProdPrice" runat="server"  >R<%# Eval("Prod_Price") %></asp:Label>
                            </a>

            </ItemTemplate>
        </asp:Repeater>
    </div>
</asp:Content>
