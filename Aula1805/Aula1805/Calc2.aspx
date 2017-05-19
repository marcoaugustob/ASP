<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Calc2.aspx.cs" Inherits="Aula1805.Calc2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Calc2</h1>
    <div class="row">
        <asp:Label ID="Label1" runat="server" Text="Var1"></asp:Label>
        <asp:Label ID="Label2" runat="server" Text="Var2"></asp:Label>
        <asp:Label ID="Label3" runat="server" Text="Resultado"></asp:Label>
    </div>
    <div class="row">
        <asp:TextBox ID="txtV1M" runat="server"></asp:TextBox>
        <asp:Label ID="Label4" runat="server" Text="+"></asp:Label>
        <asp:TextBox ID="txtV2M" runat="server"></asp:TextBox>
        <asp:Label ID="Label5" runat="server" Text="="></asp:Label>
        <asp:TextBox ID="txtR1" runat="server"></asp:TextBox>
    </div>
    <div class="row">
        <asp:TextBox ID="txtV1Me" runat="server"></asp:TextBox>
        <asp:Label ID="Label6" runat="server" Text="-"></asp:Label>
        <asp:TextBox ID="txtV2Me" runat="server"></asp:TextBox>
        <asp:Label ID="Label7" runat="server" Text="="></asp:Label>
        <asp:TextBox ID="txtR2" runat="server"></asp:TextBox>
    </div>
    <div class="row">
        <asp:TextBox ID="txtV1V" runat="server"></asp:TextBox>
        <asp:Label ID="Label8" runat="server" Text="*"></asp:Label>
        <asp:TextBox ID="txtV2V" runat="server"></asp:TextBox>
        <asp:Label ID="Label9" runat="server" Text="="></asp:Label>
        <asp:TextBox ID="txtR3" runat="server"></asp:TextBox>
    </div>
    <div class="row">
        <asp:TextBox ID="txtV1D" runat="server"></asp:TextBox>
        <asp:Label ID="Label10" runat="server" Text="/"></asp:Label>
        <asp:TextBox ID="txtV2D" runat="server"></asp:TextBox>
        <asp:Label ID="Label11" runat="server" Text="="></asp:Label>
        <asp:TextBox ID="txtR4" runat="server"></asp:TextBox>
    </div>



</asp:Content>
