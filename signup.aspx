<%@ Page Title="" Language="C#" MasterPageFile="~/Eventify.Master" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="Eventify.signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
    function ClearForm() {
        document.getElementById('<%= TextBox1.ClientID %>').value = ''; // Clear full name textbox
        document.getElementById('<%= TextBox2.ClientID %>').value = ''; // Clear password textbox
        document.getElementById('<%= TextBox3.ClientID %>').value = ''; // Clear confirm password textbox
        document.getElementById('<%= TextBox4.ClientID %>').value = ''; // Clear email textbox
        document.getElementById('<%= TextBox5.ClientID %>').value = ''; // Clear phone number textbox
        document.getElementById('<%= lblMessage.ClientID %>').innerHTML = ''; // Clear error label
    }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="signup">
        <div class="container" id="signup_container">
            <div class="row justify-content-center">
                <div class="col-md-6">
                    <div class="card signup-container">
                        <div class="card-body">
                            <h2 class="card-title text-center">SignUp</h2>
                            <table class="table">
                                <tr>
                                    <td><asp:Label ID="Label1" runat="server" Text="Full name" CssClass="form-label"></asp:Label></td>
                                    <td><asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td><asp:Label ID="Label2" runat="server" Text="Password" CssClass="form-label"></asp:Label></td>
                                    <td><asp:TextBox ID="TextBox2" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td><asp:Label ID="Label3" runat="server" Text="Confirm Password" CssClass="form-label"></asp:Label></td>
                                    <td><asp:TextBox ID="TextBox3" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td><asp:Label ID="Label4" runat="server" Text="Email" CssClass="form-label"></asp:Label></td>
                                    <td><asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td><asp:Label ID="Label5" runat="server" Text="Phone Number" CssClass="form-label"></asp:Label></td>
                                    <td><asp:TextBox ID="TextBox5" runat="server" CssClass="form-control"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <asp:Label ID="lblMessage" runat="server" Text="" CssClass="text-danger"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="Button1_Click" BackColor="#E48465" BorderColor="#E48465" />
                                        <asp:Button ID="Button2" runat="server" Text="Reset" CssClass="btn btn-secondary" OnClientClick="ClearForm()" />
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
