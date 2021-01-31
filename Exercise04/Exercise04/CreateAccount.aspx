<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CreateAccount.aspx.cs" Inherits="Exercise04.CreateAccount" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <H1 class="align-center">
        CREATE YOUR ACCOUNT
    </H1>
        
        <asp:Table class="align-center" ID="Table1" runat="server" HorizontalAlign="Center">
            <asp:TableRow>
                <asp:TableCell CssClass="align-right">
                    First Name:
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="TextBoxFirstName" runat="server" Height="30px" Width="200px"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell CssClass="align-left">
                    <asp:Image ID="ImageFirstName" runat="server" ImageAlign="Left" ImageUrl="~/Images/circled--v1.png" Height="30" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell CssClass="align-right">
                    Last Name:
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="TextBoxLastName" runat="server" Height="30px" Width="200px"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell CssClass="align-left">
                    <asp:Image ID="ImageLastName" runat="server" ImageAlign="Left" ImageUrl="~/Images/circled--v1.png" Height="30" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell CssClass="align-right">
                    User Name:
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="TextBoxUserName" runat="server" Height="30px" Width="200px"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell CssClass="align-left">
                    <asp:Image ID="ImageUserName" runat="server" ImageAlign="Left" ImageUrl="~/Images/circled--v1.png" Height="30" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell CssClass="align-right">
                    Email Address:
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="TextBoxEmailAddress" runat="server" Height="30px" Width="200px" TextMode="Email"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell CssClass="align-left">
                    <asp:Image ID="ImageEmailAddress" runat="server" ImageAlign="Left" ImageUrl="~/Images/circled--v1.png" Height="30" />
                </asp:TableCell>
            </asp:TableRow>
             <asp:TableRow>
                <asp:TableCell CssClass="align-right">
                    Password:
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="TextBoxPassword" runat="server" Height="30px" Width="200px" TextMode="Password"></asp:TextBox>
                </asp:TableCell>
                 <asp:TableCell CssClass="align-left">
                    <asp:Image ID="ImagePassword" runat="server" ImageAlign="Left" ImageUrl="~/Images/circled--v1.png" Height="30" />
                </asp:TableCell>
            </asp:TableRow>
             <asp:TableRow>
                <asp:TableCell CssClass="align-right">
                    Confirm Password:
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="TextBoxConfirmPassword" runat="server" Height="30px" Width="200px" TextMode="Password"></asp:TextBox>
                </asp:TableCell>
                 <asp:TableCell CssClass="align-left">
                    <asp:Image ID="ImageConfirmPassword" runat="server" ImageAlign="Left" ImageUrl="~/Images/circled--v1.png" Height="30" />
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    
    <p class="align-center">
        <asp:Button ID="ButtonCreateAccount" runat="server" Text="Create Account" Width="200px" Height="30" OnClick="ButtonCreateAccount_Click" />
    </p>
</asp:Content>
