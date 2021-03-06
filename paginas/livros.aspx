﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="livros.aspx.cs" Inherits="paginas_livros"
    MasterPageFile="~/master1.master"%>

<asp:Content ContentPlaceHolderID="head" runat="server">

    </asp:Content>

<asp:Content ContentPlaceHolderID="ContentPlaceHolderMain" runat="server">
    <h2>Livros</h2>
    <p>Faça uma pesquisa de livros pelo título</p>
    <div>
        Título do livro: <asp:TextBox ID="tx_titulo" runat="server"></asp:TextBox>
        &nbsp;<asp:Button ID="bt_pesquisar" runat="server" Text="Pesquisar" OnClick="bt_pesquisar_Click" />
        <br />
        <b><asp:Label ID="lb_editar_livros_login" runat="server" ></asp:Label></b>
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