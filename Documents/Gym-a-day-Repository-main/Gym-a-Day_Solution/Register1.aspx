<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Gym_a_Day_Solution.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%--<link rel="stylesheet" type="text/css" href="register.css"/>--%>

    <style>

    .register-container {
        height: 100vh;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: space-evenly;

    }

    #registerForm {
        width: 100%;
        display: flex;
        flex-direction: column;
        align-items: center;
    }

    .register-container .input {
        width: 35%;
        padding: 10px;
        margin-bottom: 2em;
        border-radius: var(--login_border_radius);
        border: 1px solid black;
        border-radius: 3px;
    }

    label {
        color: #e5e5e5;
    }

    .register-btn{
        padding: 1em 3em;
        background-color: black;
        color: white;
        border: none;
        margin-top: 10px;
        border-radius: 3px;
    }

    .register-gender {
        height: 25px;
        width: 150px;
        border: 1px solid #fca311;
        background-color: #fca311;
        color: black;
        text-align: center;
        border-radius: 3px;
    }

    .register-btn:hover {
        background-color: #fca311;
        border-radius: 3px;
    }

    a {
        color: white;
        text-decoration: none;
    }

    a:hover {
        border-bottom: 2px solid #fca311;
    }

    .links {
        display: flex;
        gap: 1em;
        margin-top: 1em;
    }

    .divider {
        height: 30px;
        border-left: 2px solid;
    }

    @media screen and (min-width: 768px) {
        .login-container input {
            width: 30%;
        }
    }

    </style>

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
                placeholder="John" 
                class="input"/>

            <label for="lastName">Last Name</label>
            <input
                runat="server"
                id="lastName"
                type="text"
                name="lastname"
                placeholder="Doe" 
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
            <asp:DropDownList ID="gender" runat="server" CssClass="register-gender">
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
