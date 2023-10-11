<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ProductDescription.aspx.cs" Inherits="Gym_a_Day_Solution.ProductDescription" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   <%-- <link rel="stylesheet" href="productDescription.css" />--%>

<style>

#product_description_page{
    height: 80vh;
    padding: 150px 0;
    
}

#product_description_details {
    padding: 10px;
    display: flex;
    align-items: center;
    margin: 0 1.5em;
    border: 1px solid #fca311;
    border-radius: 5px;
}

.productImg{
    border-radius: 5px;
    border: 1px solid #fca311;
    height: 290px;
    width: 290px;
    margin-right: 90px;
    object-fit: contain;
    background-color: #fff;
}

#product_description_right {
    margin-left: 10px;
    display: flex;
    flex-direction: column;
    justify-content: space-between;
    height: 400px
}



.addToCartBtn {
    margin-top: 1em;
    margin-left: 1.5em;
    padding: 1em;
    background-color: #000000;
    color: #fff;
    border: 1px solid #fca311;
    border-radius: 3px;

}

.addToCartBtn:hover {
 background-color: #fca311;
 border-radius: 3px;
 transition: background-color ease-in 0.25s;
}




    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   <div id="product_description_page">
       <div id="product_description_details"  >
        <div id="product_description_left" runat="server">
            <%--Will be dynamically populated--%>
        </div>

        <div id="product_description_right" runat="server">
            <%--Will be dynamically populated--%>

        </div>


    </div>
       <asp:Button type='submit' class='addToCartBtn' id='AddToCartBtn' runat='server' OnClick='AddToCartBtn_Click' Text='Add to cart'/>
      


       <asp:Button type='submit' class='addToCartBtn' id='UpdateProdBtn' runat='server' OnClick="UpdateProdBtn_Click" Text='Update Product'/>
   


      <asp:Literal runat="server" ID="lt_Added"></asp:Literal>

   </div>



</asp:Content>
