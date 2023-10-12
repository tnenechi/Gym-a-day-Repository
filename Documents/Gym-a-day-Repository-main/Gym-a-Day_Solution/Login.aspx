<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Gym_a_Day_Solution.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%--<link rel="stylesheet" type="text/css" href="login.css"/>--%>



    <style>
        

.login-container {
    height: 100vh;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: space-evenly;
}

#loginForm {
    width: 100%;
    display: flex;
    flex-direction: column;
    align-items: center;
}

.login-container input {
    width: 50%;
    padding: 10px;
    margin-bottom: 2em;
    border-radius: var(--login_border_radius);
}

label {
    color: #fff;
}




.login-btn {
    border-radius: 3px;
    border: 1px solid black;
    background-color: black;
    color: white;
    text-decoration: none;
    padding: 10px 20px;
}

    .login-btn:hover {
        border: 1px solid #fca311;
        background-color: #fca311;
        transition: background-color ease 0.57s;
    }



a {
    color: white;
    text-decoration: none;
}

a:hover {
    border-bottom: 2px solid red;
}

.links {
    display: flex;
    gap: 1em;
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
