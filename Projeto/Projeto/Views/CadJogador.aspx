<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CadJogador.aspx.cs" Inherits="Projeto.Views.CadJogador" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Cadastro Jogador</h1>
   
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <formview style="text-align: center">
            <div class="row">
                <asp:Label ID="lblNome" Text="Nome:" runat="server" />
                <asp:TextBox ID="txtNome" runat="server" />
            </div>
           <div class="row">
              <asp:Label ID="lblIdPosi" Text="IdPosi:" runat="server" />
                <asp:TextBox ID="txtIdPosi" runat="server" />
            </div>
               <div class="row">
                <asp:Label ID="lblTime" Text="Time:" runat="server"></asp:Label>
                <asp:TextBox ID="txtTime" runat="server"></asp:TextBox>
            </div>
            <div class="row">
                <div class="column">
                    <asp:Button ID="btnCadastrar" Text="Cadastrar" runat="server" OnClick="btnCadastrar_Click" />
                </div>
                <div class="column">
                    <asp:Button ID="btnCadastrarLimpar" Text="Limpar" runat="server" OnClick="btnCadastrarLimpar_Click" />
                </div>
            </div>
            </formview>
        </ContentTemplate>
    </asp:UpdatePanel>
















</asp:Content>
