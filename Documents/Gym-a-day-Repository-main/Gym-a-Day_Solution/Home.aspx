<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Gym_a_Day_Solution.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <%--<link rel="stylesheet" href="home.css" />--%>

    <style>

        /* SECTION AFTER HEADER STYLES */

#hero_section {
  height: calc(100vh - var(--nav_length));
  font-size: 1.5rem;

  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;

  color: #fff;
  background-image: linear-gradient(rgba(0, 0, 0, 0.8), rgba(0, 0, 0, 0.8)),
    url("./Images/backgroung-img.jpg");
  background-position: top;
}

#hero_section h1 span {
  text-decoration: line-through;
  text-decoration-color: red;
  margin-bottom: 240px;
}
        #bookingclick{
            border-radius: 3px;
            border: 1px solid black;
            background-color: black;
            color: white;
            text-decoration: none;
            padding: 10px 20px;
        }

        #bookingclick:hover{
            border: 1px solid #fca311;
            background-color: #fca311;
            transition: background-color ease 0.57s;
        }
    </style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Section after the header -->
    <div id="hero_section">
      <h1>Keep the <span>Contract</span> away</h1>
     
        <a href="Bookings.aspx" id="bookingclick" > Book Now!</a>
    </div>

   
</asp:Content>
