<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="Gym_a_Day_Solution.Checkout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Literal ID="CheckoutMsg" runat="server"></asp:Literal>
    <asp:Button ID="InvoiceBtn" runat="server" Text="Invoice" OnClick="InvoiceBtn_Click"/>

</asp:Content>
