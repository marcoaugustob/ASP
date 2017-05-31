<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Projeto.Views.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Cadastros</h1>
    <div class="row">
        <div class="column">
    <asp:TextBox ID="txtNomeJogador" runat="server"></asp:TextBox>
            </div>
        <div class="column">
            <asp:Button ID="btnBuscar" Text="" runat="server" OnClick="btnCadastrarJogador_Click" ForeColor="Black" />
        </div>

    </div>

</asp:Content>
