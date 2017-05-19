<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Calc1.aspx.cs" Inherits="Aula1805.Calc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Calc</h1>
    <div class="row">
        <div class="col-md-4">
            <asp:Label ID="Label1" runat="server" Text="Valor 1"></asp:Label>
        </div>
        <div class="col-md-4">
            <asp:Label ID="Label2" runat="server" Text="Valor 2"></asp:Label>
        </div>
    </div>
    <div class="row">

        <div class="col-md-4">
            <asp:TextBox ID="txtN1" runat="server"></asp:TextBox>
        </div>
        <div class="col-md-4">
            <asp:TextBox ID="txtN2" runat="server"></asp:TextBox>
        </div>
    </div>
    <div class="row">

        <div class="col-md-4">
            <asp:TextBox ID="txtR" runat="server"></asp:TextBox>
        </div>
        <div class="col-md-2">
            <asp:Button ID="btnMais" runat="server" Text=" + " OnClick="btnMais_Click" />
        </div>

        <div class="col-md-2">
            <asp:Button ID="btnR" runat="server" Text=" = " OnClick="btnR_Click" />
        </div>
    </div>
</asp:Content>
