<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Projeto.Views.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Cadastros</h1>
    <div class="row">
        <div class="column">
            <asp:Button ID="btnCadastrarPosição" Text="Cadastre uma posição" runat="server" OnClick="btnCadastrarPosição_Click" />
        </div>
        <div class="column">
            <asp:Button ID="btnCadastrarJogador" Text="Cadastre um jogador" runat="server" OnClick="btnCadastrarJogador_Click" />
        </div>
    </div>
    <div class="row">
            <asp:Button ID="btnListar" Text="Listar jogadores" runat="server" OnClick="btnListar_Click" />
    </div>

</asp:Content>
