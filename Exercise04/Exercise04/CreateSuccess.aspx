<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CreateSuccess.aspx.cs" Inherits="Exercise04.CreateSuccess" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <H1 class="align-center">
        Account successfully created</H1>
    <p class="align-center">
        <asp:Button ID="ButtonOk" runat="server" Height="30px" Text="OK" Width="50px" OnClick="ButtonOk_Click" />
    </p>
</asp:Content>
