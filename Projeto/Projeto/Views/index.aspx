<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Projeto.Views.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1 style="text-align: center">Busque um jogador para saber sua posição</h1>
    <div class="row" style="text-align: center">
        <div class="column">
            <asp:TextBox ID="txtNomeJogador" Style="text-align: center" runat="server"></asp:TextBox>
        </div>
        <div class="column">
            <asp:Button ID="btnBuscar" Text="Buscar" Style="text-align: center" runat="server" OnClick="btnBuscar_Click" ForeColor="Black" />
        </div>

    </div>

</asp:Content>
