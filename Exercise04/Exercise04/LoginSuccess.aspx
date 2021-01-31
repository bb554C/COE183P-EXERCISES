<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LoginSuccess.aspx.cs" Inherits="Exercise04.LoginSuccess" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <H1 class="align-center">
        LOGIN SUCCESS</H1>
    <p class="align-center">
        <asp:Button ID="ButtonLogOut" runat="server" OnClick="ButtonLogOut_Click" Text="Log Out" Width="100" Height="30" />
    </p>
</asp:Content>
