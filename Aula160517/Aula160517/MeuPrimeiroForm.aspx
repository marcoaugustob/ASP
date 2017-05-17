<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MeuPrimeiroForm.aspx.cs" Inherits="Aula160517.MeuPrimeiroForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Meu primeiro Form</h1>

    <asp:UpdatePanel ID="UpdatePanel" runat="server">
        <ContentTemplate>
            <div class="row">
                <asp:Label ID="lblNome" Text="Nome: " runat="server" />
                <asp:TextBox ID="txtNome" runat="server" />
                <asp:RequiredFieldValidator ID="fvNome" runat="server" ErrorMessage="Campo nome é obrigatório" ControlToValidate ="txtNome"></asp:RequiredFieldValidator>
            </div>
            <div class="row">
                <asp:Label ID="Descricao" Text="Descrição: " runat="server" />
                <asp:TextBox ID="txtDescricao" runat="server" TextMode="MultiLine" />
            </div>
            <div class="row">
                <asp:Label ID="lblAtivo" Text="Ativo :" runat="server" />
                <asp:CheckBox ID="chkAtivo" runat="server" />
            </div>
            <div class="row">
                <asp:Button ID="btnSalvar" Text="Salvar" runat="server" OnClick="btnSalvar_Click" />
                <asp:Button ID="btnCalcelar" Text="Cancelar" runat="server" OnClick="btnCalcelar_Click"  CausesValidation ="false"/>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>

</asp:Content>
