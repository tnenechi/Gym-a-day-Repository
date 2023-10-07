<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Gym_a_Day_Solution.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="login.css"/>
</asp:Content>




<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="login-container">
        <h1>Login</h1>
        <div id="loginForm">
            <label for="email">Email Address</label>
            <input
                runat="server"
                type="text"
                name="email"
                id="email"
                placeholder="Email Address" />
            <label for="password">Password</label>
            <input
                runat="server"
                type="password"
                name="password"
                id="pswd"
                placeholder="Password" />

            

            <asp:Button ID="Submit_Login" runat="server" Text="Login" CssClass="login-btn" OnClick="Submit_Login_Click" />
        </div>

        <div class="exists_message">
            <asp:Literal ID="ltMessage" runat="server" />
        </div>

        <div class="links">
            <a href="Register.aspx">Register</a>
            <div class="divider"></div>
            <a href="Home.aspx">Home</a>
        </div>
    </div>
</asp:Content>
