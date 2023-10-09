<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="EmptyCart.aspx.cs" Inherits="Gym_a_Day_Solution.EmptyCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .Empty_Cart_Container{
            height: 500px;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }




        .backtoshop{
            margin: 0.9em 0.5em;
            padding: 1.2em;
            background-color: #111111;
            color: #fff;
            border: 2px solid #fca311;
            border-radius: 3px;
        }

        .backtoshop:hover{
            background-color: #fca311;
            color: white;
            transition: background-color ease 0.5s;
        }

    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="Empty_Cart_Container">
        <h1>Oops! Looks like you haven't added anything to your cart my gee</h1> 
        
        <asp:Button ID="BackToShop" runat="server" Text="Let's go Shopping!" OnClick="BackToShop_Click" CssClass="backtoshop"/>
    </div>
    
</asp:Content>
