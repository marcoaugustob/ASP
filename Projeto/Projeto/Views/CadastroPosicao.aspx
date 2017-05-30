<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CadastroPosicao.aspx.cs" Inherits="Projeto.Views.CadastroPosicao" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <asp:Label ID="lblNome" Text="Posição:" runat="server"></asp:Label>
    <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
    </div>
    <div class="row">
        <asp:Label ID="lblDesc" Text="Descrição:" runat="server"></asp:Label>
    <asp:TextBox ID="txtDesc" runat="server"></asp:TextBox>
    </div>
    <div class="row">
           <div class="column">
            <asp:Button ID="btnCadastrar" Text="Cadastrar" runat="server" OnClick="btnCadastrar_Click" />
        </div>
        <div class="column">
            <asp:Button ID="btnCadastrarLimpar" Text="Limpar" runat="server" OnClick="btnCadastrarLimpar_Click" />
        </div>
    </div>




</asp:Content>
