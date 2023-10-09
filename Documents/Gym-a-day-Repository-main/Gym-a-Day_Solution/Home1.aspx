<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Gym_a_Day_Solution.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link rel="stylesheet" href="home.css" />
    <style>
    button:hover {
        background-color: #fca311;
    }

    </style>
   
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Section after the header -->
    <div id="hero_section">
      <h1>Keep the <span>Contract</span> away</h1>
      <button>Book Now!</button>
    </div>

    <div id="why-section">
      <h1>Why choose Gym-a-day</h1>
      <ol>
        <li>Register and/or Login</li>
        <li>Edit your prefernces on your account settings</li>
        <li>Check "receive news on deals"</li>
        <li>Save the updated settings</li>
        <li>Be notified anytime there is a deal for you!</li>
      </ol>
    </div>
</asp:Content>
