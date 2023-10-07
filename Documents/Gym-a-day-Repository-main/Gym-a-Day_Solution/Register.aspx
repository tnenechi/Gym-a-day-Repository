<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Gym_a_Day_Solution.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="register.css"/>
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="register-container">
        <h1>Registration Form</h1>


        <div id="registerForm">
            <label for="firstName">First Name</label>
            <input
                runat="server"
                id="firstName"
                type="text"
                name="firstname"
                placeholder="First Name" 
                class="input"/>

            <label for="lastName">Last Name</label>
            <input
                runat="server"
                id="lastName"
                type="text"
                name="lastname"
                placeholder="Last Name" 
                class="input"/>

            <label for="email">Email Address</label>
            <input
                runat="server"
                id="email"
                type="text"
                name="email"
                placeholder="abc@gmail.com" 
                class="input"/>

            <label for="phone">Phone Number</label>
            <input
                runat="server"
                id="phone"
                type="text"
                name="phone"
                placeholder="+27 123 456 789" 
                class="input"/>

            <label for="gender">Gender</label>
            <asp:DropDownList ID="gender" runat="server">
                <asp:ListItem Text="Male" value="Male" />
                <asp:ListItem Text="Female" value="Female" />
                <asp:ListItem Text="Other" value="Other" />
            </asp:DropDownList>

            <label for="pswd">Password</label>
            <input
                runat="server"
                id="pswd"
                type="password"
                name="password"
                placeholder="Make It Strong" 
                class="input"/>

            <asp:Button ID="Submit" runat="server" Text="Register" CssClass="register-btn" OnClick="Submit_Click" />
        </div>

        <div class="exists_message">
            <asp:Literal ID="ltMessage" runat="server" />
        </div>

        <div class="links">
            <a href="Login.aspx">Login</a>
            <div class="divider"></div>
            <a href="Home.aspx">Home</a>
        </div>
    </div>
</asp:Content>
