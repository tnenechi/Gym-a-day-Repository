<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="Gym_a_Day_Solution.Checkout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
        .checkoutBody{
            display: flex;
            flex-direction: column;
            justify-content:center;
            align-items: center;
        }


        .InvoiceBtn{
            border-radius: 3px;
            border: 1px solid black;
            background-color: black;
            color: white;
            text-decoration: none;
            padding: 10px 20px;
        }

        .InvoiceBtn:hover{
            border: 1px solid #fca311;
            background-color: #fca311;
            transition: background-color ease 0.57s;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="checkoutBody">
        <asp:Literal ID="CheckoutMsg" runat="server"></asp:Literal>
        <asp:Button ID="InvoiceBtn" runat="server" Text="Invoice" OnClick="InvoiceBtn_Click" CssClass="InvoiceBtn"/>
    </div>

</asp:Content>
