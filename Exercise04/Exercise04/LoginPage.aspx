<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="Exercise04.LoginPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

        <asp:Table runat="server" class="align-center" HorizontalAlign="Center">
            <asp:TableRow>
                <asp:TableCell CssClass="align-right">
                    Username:
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
                    Password: 
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="TextBoxPassword" runat="server" Height="30px" Width="200px" TextMode="Password"></asp:TextBox>
                </asp:TableCell> 
                <asp:TableCell CssClass="align-left">
                    <asp:Image ID="ImagePassword" runat="server" ImageAlign="Left" ImageUrl="~/Images/circled--v1.png" Height="30" />
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    <p class="align-center">
        <asp:Button ID="ButtonLogIn" runat="server" Text="LOGIN" Width="100" Height="30" OnClick="ButtonLogIn_Click" />
    </p>    
</asp:Content>
