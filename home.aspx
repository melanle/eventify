<%@ Page Title="" Language="C#" MasterPageFile="~/Eventify.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="Eventify.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <section>
    <img src="images/logo/main%20page%20bg%20picture.png" class="img-fluid" width="100%"/>
</section>
    <section>
        <center>
            <div class="home_section">
                <div class="home_heading">
                    <h1>Greetings!</h1>
                </div>
                <div class="home_body">
                    <div class="text">
                    <h2>Welcome to Eventify: Your Personal Event Calendar</h2>
                    <p class="text-justify">Eventify is your go-to platform for staying organized and maximizing your event planning experience. 
            With our intuitive event calendar, you can effortlessly log and manage all your events, ensuring 
            that you never miss a moment.</p>
                    <img src="images/logo/calendar.png" />
            </div>
                    <hr class="solid">
                    <div class="text">
                    <h2>Stay Organized, Stay on Top</h2>
                    <p class="text-justify">Gone are the days of scattered notes and missed appointments. With Eventify, you can centralize all 
            your events in one convenient location. From important meetings and social gatherings to personal 
            milestones and deadlines, our event calendar keeps you on track and in control.</p>
                    <img src="images/logo/stayontop.png" />
            </div>
                    <hr class="solid">
            <div class="text">
                    <h2>Secure and Reliable</h2>
                    <p class="text-justify">Your privacy and security are our top priorities. Rest assured that your event data is safe and secure 
            with Eventify's robust encryption and data protection measures. Focus on planning your events with peace 
            of mind, knowing that your information is in good hands.</p>
                    <img src="images/logo/security.png" />
            </div>
                    <hr class="solid">
            <div class="text">
                    <h2>Get Started Today</h2>
                    <p class="text-justify">Join the thousands of users who trust Eventify to simplify their event planning experience. 
            Sign up for free and start organizing your events with confidence. With Eventify, 
            staying organized has never been easier.</p>
                    <img src="images/logo/getstarted.png" />
            </div>
                    <div>
                        <asp:Button ID="signupbtn" runat="server" Text="Sign Up now" CssClass="signupbtn" PostBackUrl="signup.aspx" BackColor="#E48465" BorderColor="#E48465"/>
                    </div>
                </div>
            </div>
        </center>
    </section>


</asp:Content>
