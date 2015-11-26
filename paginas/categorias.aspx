<%@ Page Language="C#" AutoEventWireup="true" CodeFile="categorias.aspx.cs" Inherits="paginas_categorias"
    MasterPageFile="~/master1.master" %>

<asp:Content ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 26px;
        }
    </style>
</asp:Content>

<asp:Content ContentPlaceHolderID="ContentPlaceHolderMain" runat="server">
    <h2>Categorias</h2>
    <p>Faça uma pesquisa de livros disponíveis em cada categoria</p>
    <div>
        <asp:FormView>
        <asp:Label ID="lb_nome_categoria" runat="server" Text="Nome do cliente:"></asp:Label>&nbsp;<asp:TextBox ID="tx_nome_pesquisa" runat="server"></asp:TextBox>
        &nbsp;<asp:Button ID="bt_pesquisar" runat="server" Text="Pesquisar" OnClick="bt_pesquisar_Click" />
            </asp:FormView>
        <br />
        <b>
            <asp:Label ID="lb_editar_categorias_login" runat="server"></asp:Label></b>
        <br />
        <asp:GridView ID="gv_categorias" runat="server" AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" AutoGenerateSelectButton="True" OnSelectedIndexChanged="gv_categorias_SelectedIndexChanged">
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">ID</td>
                <td>
                    <asp:TextBox ID="tx_id" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tx_id" ErrorMessage="Obrigatório"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Nome</td>
                <td>
                    <asp:TextBox ID="tx_nome" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tx_nome" ErrorMessage="Obrigatório"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Descricao</td>
                <td class="auto-style1">
                    <asp:TextBox ID="tx_descricao" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style1">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tx_descricao" ErrorMessage="Obrigatório"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="3">
                    <asp:Button ID="bt_submeter" runat="server" Text="OK" OnClick="bt_submeter_Click" />
                    <asp:LinkButton ID="lbt_eliminar" runat="server" OnClick="lbt_eliminar_Click">Eliminar registo seleccionado</asp:LinkButton>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
