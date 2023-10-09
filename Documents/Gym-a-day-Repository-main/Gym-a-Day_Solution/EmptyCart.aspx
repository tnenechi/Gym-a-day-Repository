<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="EmptyCart.aspx.cs" Inherits="Gym_a_Day_Solution.EmptyCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .Empty_Cart_Container{
            height: 500px;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        #BackToShop {
            padding: 10px 20px;
            background-color: #111111;
            color: #fff;
            border: 1px solid #fca311;
            border-radius: 3px;

        }

        #BackToShop {
            cursor: pointer;
            background-color: #fca311;
            transition: background-color linear 0.3s;
}

    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="Empty_Cart_Container">
        <h1>Oops! Looks like you haven't added anything to your cart my gee</h1>
        <asp:Button ID="BackToShop" runat="server" Text="Let's go Shopping!" OnClick="BackToShop_Click"/>
    </div>
    
</asp:Content>
