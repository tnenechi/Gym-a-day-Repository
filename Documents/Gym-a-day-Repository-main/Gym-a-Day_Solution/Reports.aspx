<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Reports.aspx.cs" Inherits="Gym_a_Day_Solution.Reports" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

     <style>

        
    .reports_page {
        margin: 80px auto;
        width: 90%;
    }

    .reports_table {
        background-color: #101010;
        width: 100%;
        border-radius: 4px;
        margin-bottom: 50px;
        border-color: #fca311;

    }
    .report-page-headings{
        border-radius: 8px;

    }
    
    .Reports_top_heading, .sortDropdown{
        margin-left: 80px;
    }

    .report-head {
        font-size: large;
        text-align: center;
      
        padding: 5px;
        color: #fff;
        font-weight: normal;
    }
    

    .report-page-headings_top{
      display: block;
        width: 100%;
        font-size: large;
        text-align: center;
        color: #fff;
        background-color: #fca311;
        font-weight: normal;
        
    }

    .report-head:last-child {
        text-align: right;
    }

    .report-table-data {
    
        width: 30px;
        padding: 10px 5px;
        text-align: center;
    }

    .report-table-data:last-child {
        text-align: right;
    }

    
     

</style>



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


     <h1 class="Reports_top_heading">Filter:</h1>
                <asp:DropDownList CssClass="sortDropdown" ID="SortDropDownList" runat="server" OnSelectedIndexChanged="SortDropDownList_SelectedIndexChanged" AutoPostBack="true">

                    <asp:ListItem Value="All">All</asp:ListItem>
                    <asp:ListItem Value="ProdsSold">All Products Sold</asp:ListItem>
                    <asp:ListItem Value="Instock">Number of Products instock</asp:ListItem>
                    <asp:ListItem Value="OutOfStock">Out of stock products</asp:ListItem>
                    <asp:ListItem Value="ProdCat">Products by category</asp:ListItem>
                    <asp:ListItem Value="AllUsers">All Users</asp:ListItem>
                    <asp:ListItem Value="UsersType">Users by type</asp:ListItem>
                   
                </asp:DropDownList>







    <div class="reports_page">


        <div id="allProdsTableContainer" runat="server">
             <table class="reports_table" >
            <tr >
                <th class="report-head">All Products</th>
            </tr>

            

            <tr class="report-page-headings">
                <th class="report-head">ID</th>
                <th class="report-head">Name</th>
                <th class="report-head">Category</th>

                <th class="report-head">Price</th>
            </tr>

            <asp:Repeater ID="AllProds_Repeater" runat="server">
                <ItemTemplate>
                    <tr>
                        <td id="ProdId" class="report-table-data">
                            <p> <%# Eval("Prod_Id") %></p>
                        </td>

                        <td id="ProdName" class="report-table-data">
                            <p> <%# Eval("Prod_Name") %></p>
                        </td>
                        <td id="ProdCat" class="report-table-data">
                            <p> <%# Eval("Prod_Category") %></p>
                        </td>

                        <td id="ProdPrice" class="report-table-data">
                            <p> <%# Eval("Prod_Price") %></p>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </table>
        </div>
       
        <div id="InStockContainer" runat="server">
            <table class="reports_table" >
            <tr>
                <th class="report-head">Products instock</th>
            </tr>

            <tr>
                <th class="report-head">Name</th>
                <th class="report-head">Quantity</th>
            </tr>

            <asp:Repeater ID="ProdQty_Repeater" runat="server">
                <ItemTemplate>
                    <tr>
                        <td id="ProdName" class="report-table-data">
                            <p> <%# Eval("Prod_Name") %></p>
                        </td>

                        <td id="ProdQty" class="report-table-data">
                            <p> <%# Eval("Prod_Qty") %></p>
                        </td>

                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </table>
        </div>

        
        <div id="OutStockContainer" runat="server">
            <table class="reports_table" >
            <tr>
                <th class="report-head">Products out of stock</th>
            </tr>

            <tr>
                <th class="report-head">ID</th>
                <th class="report-head">Name</th>
                <th class="report-head">Category</th>
                <th class="report-head">Price</th>
            </tr>

            <asp:Repeater ID="UnAvailableProd_Repeater" runat="server">
                <ItemTemplate>
                    <tr>
                        <td id="ProdId" class="report-table-data">
                            <p> <%# Eval("Prod_Id") %></p>
                        </td>

                        <td id="ProdName" class="report-table-data">
                            <p> <%# Eval("Prod_Name") %></p>
                        </td>
                        <td id="ProdCat" class="report-table-data">
                            <p> <%# Eval("Prod_Category") %></p>
                        </td>

                        <td id="ProdPrice" class="report-table-data">
                            <p> <%# Eval("Prod_Price") %></p>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </table>
        </div>

        <div id="ProdCatContainer" runat="server">
            <table class="reports_table" >
            <tr>
                <th class="report-head">Products Summary</th>
            </tr>

            <tr>
                <th class="report-head">Category</th>
                <th class="report-head">Quantity</th>
            </tr>

            <asp:Repeater ID="Prod_Summary_Repeater" runat="server">
                <ItemTemplate>
                    <tr>

                        <td class="report-table-data" id="ProdCat"><p> <%# Eval("Category") %></p></td>

                        <td class="report-table-data" id="ProdQty"><p> <%# Eval("Quantity") %></p></td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </table>
        </div>

        <div id="AllUsersContainer" runat="server">
            <table class="reports_table" >
            <tr>
                <th class="report-head">All Users</th>
            </tr>

            <tr>
                <th class="report-head">ID</th>
                <th class="report-head">Name</th>
                <th class="report-head">Type</th>
            </tr>

            <asp:Repeater ID="AllUser_Repeater" runat="server">
                <ItemTemplate>
                    <tr>
                        <td id="UserId" class="report-table-data">
                            <p> <%# Eval("ID") %></p>
                        </td>

                        <td id="UserName" class="report-table-data">
                            <p> <%# Eval("U_Name") %></p>
                        </td>
                        <td id="UserType" class="report-table-data">
                            <p> <%# Eval("Type") %></p>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </table>
        </div>



        <div id="UsersTypeContainer" runat="server">
            <table class="reports_table" >
            <tr>
                <th class="report-head">Users Summary</th>
            </tr>

            <tr>
                <th class="report-head">Type</th>
                <th class="report-head">Number</th>
            </tr>

            <asp:Repeater ID="UsersType_Repeater" runat="server">
                <ItemTemplate>
                    <tr>

                        <td class="report-table-data" ><p> <%# Eval("Type") %></p></td>

                        <td class="report-table-data"><p> <%# Eval("Number") %></p></td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </table>
        </div>

        
    </div>





</asp:Content>
