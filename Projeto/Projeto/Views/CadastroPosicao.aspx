<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CadastroPosicao.aspx.cs" Inherits="Projeto.Views.CadastroPosicao" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Cadastrar/Editar/Ecluir Posição</h1>


    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>

            <div class="row" style="text-align: left">
                <div class="column">
                    <asp:TextBox ID="txtBuscaPosicao" Style="text-align: center" runat="server"></asp:TextBox>
                </div>
                <div class="column">
                    <asp:Button ID="btnBuscarPosi" Text="Buscar" Style="text-align: center" runat="server" OnClick="btnBuscarPosi_Click" ForeColor="Black" />
                </div>
            </div>
            <div class="row" style="text-align: center">

                <asp:Label ID="lblPosicao" Text="Posição:" runat="server" />
                <input type="text" list="posicoes" id="txtPosi" runat="server" title="Selecione" />
                <datalist id="posicoes">
                    <option value="GOL">
                    <option value="ZAG">
                    <option value="LAT">
                    <option value="MEIA">
                    <option value="ATA">
                </datalist>
            </div>

            <div class="row" style="text-align: center">
                <asp:Label ID="lblDesc" Text="Descrição:" runat="server"></asp:Label>
                <asp:TextBox ID="txtDesc" runat="server"></asp:TextBox>
            </div>

            <div class="row" style="text-align: center">
                <div class="column">
                    <asp:Button ID="btnCadastrar" Text="Cadastrar" runat="server" OnClick="btnCadastrar_Click" />
                </div>
                <div class="column">
                    <asp:Button ID="btnCadastrarLimpar" Text="Limpar" runat="server" OnClick="btnCadastrarLimpar_Click" />
                </div>
                <div class="column">
                    <asp:Button ID="btnEditar" Text="Editar" runat="server" OnClick="btnEditar_Click" />
                </div>
                <div class="column">
                    <asp:Button ID="btnExcluir" Text="Excluir" runat="server" OnClick="btnExcluir_Click" />
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
