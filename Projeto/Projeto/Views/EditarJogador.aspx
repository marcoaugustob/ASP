<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditarJogador.aspx.cs" Inherits="Projeto.Views.EditarJogador" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Editar Jogador</h1>

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>

            <div class="row" style="text-align: left">
                <div class="column">
                    <asp:TextBox ID="txtNomeJogador" Style="text-align: center" runat="server"></asp:TextBox>
                </div>
                <div class="column">
                    <asp:Button ID="btnBuscar" Text="" Style="text-align: center" runat="server" OnClick="btnBuscar_Click" ForeColor="Black" />
                </div>
            </div>

            <formview style="text-align: center">
            <div class="row">
                <asp:Label ID="lblNome" Text="Nome:" runat="server" />
                <asp:TextBox ID="txtNome" runat="server" />
            </div>
           <div class="row">
               <asp:Label ID="lblPosi" Text="Posição:" runat="server"></asp:Label>
                 
               <asp:DropDownList ID="lista" runat="server" />
            </div>
               <div class="row">
                <asp:Label ID="lblTime" Text="Time:" runat="server"></asp:Label>
                <asp:TextBox ID="txtTime" runat="server"></asp:TextBox>
            </div>
            <div class="row">
                <div class="column">
                    <asp:Button ID="btnEdita" Text="Salva" runat="server" OnClick="btnEdita_Click" />
                </div>
                <div class="column">
                    <asp:Button ID="btnCancela" Text="Exclui" runat="server" OnClick="btnCancela_Click" />
                </div>
            </div>
            </formview>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
