<%@ Page Language="C#" AutoEventWireup="true" CodeFile="autores.aspx.cs" Inherits="paginas_autores"
    MasterPageFile="~/master1.master"%>

<asp:Content ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ContentPlaceHolderID="ContentPlaceHolderMain" runat="server">
    <h2>Autores</h2>
    <p>Faça uma pesquisa de autores pelo nome</p>
    <div>
        Nome do autor: <asp:TextBox ID="tx_autor" runat="server"></asp:TextBox>
        &nbsp;<asp:Button ID="bt_pesquisar" runat="server" Text="Pesquisar" OnClick="bt_pesquisar_Click" />
        <br />
        <b><asp:Label ID="lb_editar_autores_login" runat="server" >PLACEHOLDER</asp:Label></b>
        <br />
        <asp:GridView ID="gv_autores" runat="server" AutoGenerateSelectButton="True" CellPadding="4" ForeColor="Black" GridLines="Horizontal" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" OnSelectedIndexChanged="gv_autores_SelectedIndexChanged">
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
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">IDAutor</td>
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
                <td class="auto-style2">País origem</td>
                <td>
                    <asp:TextBox ID="tx_pais" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tx_pais" ErrorMessage="Obrigatório"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Prémio Nobel</td>
                <td>
                    <asp:CheckBox ID="chk_nobel" runat="server" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Resumo obra</td>
                <td>
                    <asp:TextBox ID="tx_resumo" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="tx_resumo" ErrorMessage="Obrigatório"></asp:RequiredFieldValidator>
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
