<%@ Page Language="C#" AutoEventWireup="true" CodeFile="clientes.aspx.cs" Inherits="paginas_clientes"
    MasterPageFile="~/master1.master"%>

<asp:Content ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {}
    </style>

    </asp:Content>

<asp:Content ContentPlaceHolderID="ContentPlaceHolderMain" runat="server">
    <h2>Clientes</h2>
    <p>Faça uma pesquisa de clientes pelo nome</p>
    <div>
        <asp:Label ID="lb_nome_cliente" runat="server" Text="Label">Nome do cliente:</asp:Label>&nbsp;<asp:TextBox ID="tx_nome_pesquisa" runat="server"></asp:TextBox>
        &nbsp;<asp:Button ID="bt_pesquisar" runat="server" Text="Pesquisar" OnClick="bt_pesquisar_Click" />
        <br />
        <b><asp:Label ID="lb_editar_clientes_login" runat="server" >PLACEHOLDER</asp:Label></b>
        <br />
        <asp:GridView ID="gv_resultadoPesquisa" runat="server" AllowSorting="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" AutoGenerateSelectButton="True" OnSelectedIndexChanged="gv_resultadoPesquisa_SelectedIndexChanged" OnRowDeleting="gv_resultadoPesquisa_RowDeleting">
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <br />
        <h2>Editar informação</h2>
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">NIF</td>
                <td>
                    <asp:TextBox ID="tx_nif" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tx_nif" ErrorMessage="Obrigatório"></asp:RequiredFieldValidator>
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
                <td class="auto-style2">Morada</td>
                <td>
                    <asp:TextBox ID="tx_morada" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tx_morada" ErrorMessage="Obrigatório"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Código Postal</td>
                <td>
                    <asp:TextBox ID="tx_codigo_postal" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tx_codigo_postal" ErrorMessage="Inserir código postal válido" ValidationExpression="\d{4}-\d{3}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Localidade</td>
                <td>
                    <asp:TextBox ID="tx_localidade" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="tx_localidade" ErrorMessage="Obrigatório"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Telefone</td>
                <td>
                    <asp:TextBox ID="tx_telefone" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="tx_telefone" ErrorMessage="Obrigatório"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Email</td>
                <td>
                    <asp:TextBox ID="tx_email" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="tx_email" ErrorMessage="Inserir email válido" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Codigo</td>
                <td>
                    <asp:TextBox ID="tx_codigo" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="tx_codigo" ErrorMessage="Obrigatório"></asp:RequiredFieldValidator>
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