<%@ Page Title="" Language="C#" MasterPageFile="~/loggedin.Master" AutoEventWireup="true" CodeBehind="about1.aspx.cs" Inherits="Eventify.about1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
    <center>
        <div class="about_section">
            <div class="about_heading">
                <h1>About us</h1>
            </div>
            <div class="about_body">
                <div class="text">
                <h2>About Eventify: Your Ultimate Event Organization Solution</h2>
                <p class="text-justify">Welcome to Eventify, the event calendar website designed to simplify your busy life.
            We understand the challenges of managing a hectic schedule, which is why we've created
            a user-friendly platform that allows you to effortlessly log your events and plans and stay organized,
            no matter how busy life gets.</p>
        </div>
                <hr class="solid">
                <div class="text">
                <h2>Our Mission</h2>
                <p class="text-justify">At Eventify, our mission is to empower individuals with busy schedules to take control
            of their time and make the most of every moment. We believe that effective organization is
            the key to reducing stress and maximizing productivity, and our platform is designed to help
            you achieve just that.</p>
        </div>
                <hr class="solid">
        <div class="text">
                <h2>Key Features of Eventify</h2>
                <p class="text-justify"><b>Seamless Event Logging:</b> With Eventify, logging your events is quick and easy. 
            Whether it's a work meeting, a social gathering, or a personal appointment, you can 
            effortlessly add events to your calendar and keep track of your commitments.<br>
            <b>Customized Organization:</b> Eventify offers customizable features that allow you to tailor your event
            organization experience to suit your unique needs. Set reminders, categorize events,
            and color-code your calendar to ensure that nothing slips through the cracks.<br>
            <b>Easy Accessibility:</b> .Easy access your events anytime, anywhere. 
            Stay organized even when you're on the move.</p>
        </div>
                <hr class="solid">
        <div class="text">
                <h2>Why Choose Eventify?</h2>
                <p class="text-justify"><b>Simplicity:</b> Eventify is designed with simplicity in mind. Our intuitive interface
            makes it easy for even the busiest individuals to manage their schedules effectively, 
            with minimal effort and no learning curve.<br>
            <b>Efficiency:</b> Say goodbye to the stress of missed appointments and double bookings.
            With Eventify, you can stay on top of your schedule and manage your time more efficiently,
            allowing you to focus on what matters most.<br>
            <b>Peace of Mind:</b> Rest assured that your event data is safe and secure with 
            Eventify's robust encryption and privacy measures. With Eventify, you can plan and 
            organize your events with confidence, knowing that your information is protected.</p>
        </div>

                        <hr class="solid">
            <div class="text">
        <h2>Join the Eventify Community Today</h2>
        <p class="text-justify">Ready to take control of your busy schedule and stay organized with ease?
            Click on the button below to add an event to your calendar!</p>
</div>
                <div>
                    <asp:Button runat="server" Text="Add Event" PostBackUrl="~/calendar.aspx" BackColor="#E48465" BorderColor="#E48465"/>
                </div>
            </div>
        </div>
    </center>
</section>
</asp:Content>
