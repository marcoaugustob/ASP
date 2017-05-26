<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CadastroCategorias.aspx.cs" Inherits="Aula2505.Views.Categorias.CadastroCategorias" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Cadastro de Categorias</h1>
    <asp:UpdatePanel ID="up" EnableViewState="true" runat="server">
        <ContentTemplate>
            <div class="row">
                <asp:Label ID="lblNome" Text="Nome:" runat="server"></asp:Label>
                <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
            </div>
            <div class="row">
                <asp:Label ID="lblDesc" Text="Descrição:" runat="server"></asp:Label>
            </div>
            <div class="row">
                <asp:TextBox ID="txtDesc" runat="server"></asp:TextBox>
            </div>
            <div class="row">
                <asp:Label ID="lblAtivo" Text="Ativo:" runat="server"></asp:Label>
                <asp:CheckBox ID="chkAtivo" runat="server" />
            </div>
            <div class="row">
                <asp:Button ID="btnSalvar" Text="Salvar" runat="server" OnClick="btnSalvar_Click"></asp:Button>
                <asp:Button ID="btnLimpar" Text="Limpar" runat="server" OnClick="btnLimpar_Click"></asp:Button>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>

</asp:Content>
