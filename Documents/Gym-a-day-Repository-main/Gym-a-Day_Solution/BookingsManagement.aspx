<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="BookingsManagement.aspx.cs" Inherits="Gym_a_Day_Solution.BookingsManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>

        .space{
            height: 190px;
        }
.booking-container {
        height: 100vh;
        display: flex;
        flex-direction: column;
        text-align: center;
        justify-content: space-evenly;
        width: 50%;
        margin-left: auto;
        margin-right: auto;
    }

    #bookingForm {
    
        display:flex;
        flex-direction: column;
        align-items: center;
    }

    .booking-container .input {
        width: 100%;
        padding: 10px;
        margin-bottom: 2em;
        border-radius: 3px;
        border: 1px solid black;
    }

    label {
        color: #e5e5e5;
    }

    .book-btn {
        padding: 1em 5em;
    
        background-color: black;
        color: white;
        border: none;
        margin-top: 10px;
        margin-bottom: 15px;
        border-radius: var(--login_border_radius);
        border-radius: 3px;
        font-size: 15px;
    }

    .book-btn:hover{
        background-color: #fca311;
        transition: background-color ease 0.59s;
    }

    a {
        color: white;
        text-decoration: none;
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

    .branchList, .timeList{
        margin: 12px;
        color: white;
        background-color: #fca311;
        padding: 9px;
        border: 1px solid #fca311;
        border-radius: 3px;
        font-size: 15px;
    }



    @media screen and (min-width: 768px) {
        .login-container input {
            width: 30%;
        }
    }
    </style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="space">

    </div>
    <div class="booking-container">
        <h2>Booking Manager</h2>
         <div>
            <asp:Literal ID="Msg" runat="server"></asp:Literal>
        </div>

        <div id="bookingsForm">
            <label for="email">Email Address</label>
            <input
                runat="server"
                id="email"
                type="text"
                name="email"
                placeholder="abc@gmail.com"
                class="input" />
            
            <asp:Button ID="ViewBookingBtn" runat="server" Text="View Booking" CssClass="book-btn" OnClick="ViewBookingBtn_Click" />
            <br />


            <label for="firstName">First Name</label>
            <input
                runat="server"
                id="name"
                type="text"
                name="firstname"
                placeholder="First Name"
                class="input" />
            <br />

            <label for="lastName">Last Name</label>
            <input
                runat="server"
                id="surname"
                type="text"
                name="Surname"
                placeholder="Last Name"
                class="input" />
            <br />

            

            <label for="phone">Phone Number</label>
            <input
                runat="server"
                id="Phone"
                type="text"
                name="phone"
                placeholder="+27 123 456 789"
                class="input" />
            <br />

            <label for="branch">Gym Branch:</label>
            <br />
            <asp:DropDownList ID="branch" runat="server" CssClass="branchList">
                <asp:ListItem Text="Campus Square" />
                <asp:ListItem Text="Cresta" Value="Cresta" />
                <asp:ListItem Text="UJ APK" Value="UJ APK" />
            </asp:DropDownList>
            <br />

            <label for="date">Date</label>
            <input
                runat="server"
                id="date"
                type="date"
                name="date"
                class="input" /><br />

            <label for="time">Time</label>
            <input
                runat="server"
                id="time"
                type="time"
                name="time"
                class="input" /><br />

            <label for="branch">Session (R50/Session):</label>
            <br />
            <asp:DropDownList ID="session" runat="server" CssClass="timeList">
                <asp:ListItem Text=" 30-Mins" Value="30-Mins"/>
                <asp:ListItem Text="1-Hour" Value="1-hour" />
                <asp:ListItem Text="1/2-Hours" Value="1/2-hours" />
                 <asp:ListItem Text="2-Hours" Value="2-hours" />
            </asp:DropDownList>
            <br />

             
            <asp:Button ID="EditBookingBtn" runat="server" Text="Edit Booking" CssClass="book-btn" OnClick="EditBookingBtn_Click" />
            <asp:Button ID="DeleteBookingBtn" runat="server" Text="Delete Booking" CssClass="book-btn" OnClick="DeleteBookingBtn_Click" />
        </div>
                  
        </div>



        <div class="space">

    </div>
</asp:Content>
