<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Catalog.aspx.cs" Inherits="Gym_a_Day_Solution.Catalog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   <%-- <link rel="stylesheet" type="text/css" href="catalog.css"/>--%>

<style>

        
    .product-catalog{
        width: 100%;
        display: flex;
        margin-left: 50px;
        margin-top: 10px;
        justify-content: space-between;

    }

    .ProductFilter{
        width: 500px;
    }

    .Product-Page_Right{
        display: flex;
        flex-direction: column;
        margin-left: 50px;
    }

    .Product-Page_Right_Products{
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

        .sortDropdown{
            background-color: #fca311;
            color: white;
            padding: 5px;
            border: 1px solid #fca311;
            border-radius: 3px;
        }

</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="product-catalog">
      


        <div class="Product-Page_Right">

            <div id="Product-Page_Right_Sort">
                <h1>SORT BY:</h1>
                <asp:DropDownList CssClass="sortDropdown" ID="SortDropDownList" runat="server" OnSelectedIndexChanged="SortDropDownList_SelectedIndexChanged" AutoPostBack="true">

                    <asp:ListItem Value="PrAsc">Price: Ascending</asp:ListItem>
                    <asp:ListItem Value="PrDsc">Price: Descending</asp:ListItem>
                    <asp:ListItem Value="NameAsc">Name: Ascending</asp:ListItem>
                    <asp:ListItem Value="NameDsc">Name: Descending</asp:ListItem>
                </asp:DropDownList>
            </div>


            <div class="Product-Page_Right_Products">

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
            
        </div>
        
    </div>
</asp:Content>
