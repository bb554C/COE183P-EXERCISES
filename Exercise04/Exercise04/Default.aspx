<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Exercise04._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <p>
        &nbsp;</p>
    <H1 class="align-center">
        WELCOME TO BRAMPS RESTAURANT
    </H1>
    <div class="align-center">
        <asp:Button ID="ButtonLogin" runat="server" OnClick="ButtonLogin_Click" Text="LOGIN" Height="50px" />
    </div>
    <div class="align-center">
        <asp:Button ID="ButtonCreateAccount" runat="server" OnClick="ButtonCreateAccount_Click" Text="CREATE ACCOUNT" Height="50px" />
    </div>
</asp:Content>
