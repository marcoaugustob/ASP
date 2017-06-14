<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Projeto.Views.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1 style="text-align: center">Busque um jogador para saber sua posição</h1>
    <div class="row">
        <div class="col-lg-6">
            <div class="input-group">
                <asp:TextBox ID="txtNomeJogador" CssClass="form-control" placeholder="Insira aqui o nome" runat="server"></asp:TextBox>
                <span class="input-group-btn">
                    <asp:Button ID="btnBuscar" Text="Buscar" CssClass="btn btn-default" runat="server" OnClick="btnBuscar_Click" ForeColor="Black" />
                </span>
            </div>
        </div>
    </div>
</asp:Content>
