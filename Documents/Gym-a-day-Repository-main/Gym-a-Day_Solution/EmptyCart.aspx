<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="EmptyCart.aspx.cs" Inherits="Gym_a_Day_Solution.EmptyCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .Empty_Cart_Container{
            display: flex;
            justify-content: center;
            align-items: center;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="Empty_Cart_Container">
        <h1>Oops! Looks like you haven't added anything to your cart my gee</h1>
        <asp:Button ID="BackToShop" runat="server" Text="Let's go Shopping!" OnClick="BackToShop_Click"/>
    </div>
    
</asp:Content>
