﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="autores.aspx.cs" Inherits="paginas_autores"
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
        <br />
        <asp:GridView ID="gv_resultadoPesquisa" runat="server" AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
                <asp:BoundField DataField="PaisOrigem" HeaderText="PaisOrigem" SortExpression="PaisOrigem" />
                <asp:CheckBoxField DataField="PremioNobel" HeaderText="PremioNobel" SortExpression="PremioNobel" />
                <asp:BoundField DataField="ResumoObra" HeaderText="ResumoObra" SortExpression="ResumoObra" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EditoraConnectionString %>" SelectCommand="SELECT [Nome], [PaisOrigem], [PremioNobel], [ResumoObra] FROM [Autores]"></asp:SqlDataSource>
        <b><asp:Label ID="lb_editar_autores_login" runat="server" >PLACEHOLDER</asp:Label></b>
    </div>
</asp:Content>
