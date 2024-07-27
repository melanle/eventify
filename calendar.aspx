<%@ Page Title="" Language="C#" MasterPageFile="~/loggedin.Master" AutoEventWireup="true" CodeBehind="calendar.aspx.cs" Inherits="Eventify.calendar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="calendar_container">
    <h2 class="calendar_heading">Check out your events!</h2>
    <asp:Label ID="lblMessage" runat="server" CssClass="calendar_message" Text="" ForeColor="red"></asp:Label>
    <br />
    <asp:Label ID="lblDate" runat="server" CssClass="calendar_label" Text="Date:"></asp:Label>
    <div class="calendar_main">
        <asp:Calendar ID="calDate" runat="server" BackColor="White" BorderColor="#E48465" DayNameFormat="Shortest" Font-Names="Times New Roman" Font-Size="10pt" ForeColor="#E48465" Height="220px" NextPrevFormat="FullMonth" TitleFormat="Month" Width="824px">
            <DayHeaderStyle BackColor="#E48465" Font-Bold="True" Font-Size="7pt" ForeColor="#333333" Height="10pt" />
            <DayStyle Width="14%" />
            <NextPrevStyle Font-Size="8pt" ForeColor="White" />
            <OtherMonthDayStyle ForeColor="#999999" />
            <SelectedDayStyle BackColor="#F7B168" ForeColor="White" />
            <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt" ForeColor="#333333" Width="1%" />
            <TitleStyle BackColor="#E48465" Font-Bold="True" Font-Size="13pt" ForeColor="White" Height="14pt" />
            <TodayDayStyle BackColor="Beige" />
        </asp:Calendar>
    </div>
    <br />
    <asp:Label ID="lblName" runat="server" CssClass="calendar_label" Text="Event Name:"></asp:Label>
    <asp:TextBox ID="txtName" runat="server" CssClass="calendar_input" placeholder="Event Name" />
    <br />
    <asp:Label ID="lblTime" runat="server" CssClass="calendar_label" Text="Time (optional):"></asp:Label>
    <asp:TextBox ID="txtTime" runat="server" CssClass="calendar_input" placeholder="Time (optional)" />
    <br />
    <asp:Button ID="btnAddEvent" runat="server" CssClass="calendar_button" Text="Add Event"  BackColor="#E48465" OnClick="btnAddEvent_Click" />

    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="View Events" BackColor="#E48465" BorderColor="#E48465" />
</div>
    <asp:GridView ID="GridView1" runat="server" BackColor="#E48465" BorderColor="White" BorderStyle="Groove">
        <AlternatingRowStyle BackColor="Beige" ForeColor="#E48465" />
        <HeaderStyle ForeColor="Beige" />
    </asp:GridView>
</asp:Content>