<%@ Page Title="" Language="C#" MasterPageFile="~/Eventify.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Eventify.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="login">
        <div class="container" id="login_container">
            <div class="row justify-content-center">
                <div class="col-md-6">
                    <div class="card login-container">
                        <div class="card-body">
                            <h2 class="card-title text-center">Log In</h2>
                            <table class="table">
                                <tr>
                                    <td><asp:Label ID="LblEmail" runat="server" Text="Email" CssClass="form-label"></asp:Label></td>
                                    <td><asp:TextBox ID="txtLoginEmail" runat="server" CssClass="form-control" placeholder="Email"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td><asp:Label ID="LblPassword" runat="server" Text="Password" CssClass="form-label"></asp:Label></td>
                                    <td><asp:TextBox ID="txtLoginPassword" runat="server" TextMode="Password" CssClass="form-control" placeholder="Password"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td colspan="2" align="center">
                                        <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn btn-primary" OnClick="btnLogin_Click" ValidationGroup="LoginValidation" BackColor="#E48465" BorderColor="#E48465" />
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" align="center">
                                        <asp:Label ID="lblInvalidUser" runat="server" Visible="false" ForeColor="Red" Text="Invalid User Details"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
