<%@ Page Language="C#" AutoEventWireup="true" CodeFile="encomendas.aspx.cs" Inherits="paginas_livros"
    MasterPageFile="~/master1.master"%>

<asp:Content ContentPlaceHolderID="head" runat="server">

    </asp:Content>

<asp:Content ContentPlaceHolderID="ContentPlaceHolderMain" runat="server">
    <h2>Encomendas</h2>
    <p>Faça uma pesquisa de encomendas pelo NIF do cliente e/ou pela data</p>
    <div>
        <asp:Label ID="lb_nif_cliente" runat="server" Text="Label">NIF do cliente:</asp:Label>&nbsp;<asp:TextBox ID="tx_nif" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="lb_data_encomenda" runat="server" Text="Label">Data da encomenda:</asp:Label>&nbsp;<asp:calendar ID="cal_encomenda" runat="server"></asp:calendar>
        <br />
        <asp:Button ID="bt_pesquisar" runat="server" Text="Pesquisar" OnClick="bt_pesquisar_Click" />
        <br />
        <b><asp:Label ID="lb_editar_encomendas_login" runat="server" >A pesquisa pode ser feita pelo NIF do cliente, data de encomenda, ou ambos.</asp:Label></b>
        <br />
        <asp:GridView ID="gv_resultadoPesquisa" runat="server" AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
    </div>
</asp:Content>