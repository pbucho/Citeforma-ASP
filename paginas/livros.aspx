<%@ Page Language="C#" AutoEventWireup="true" CodeFile="livros.aspx.cs" Inherits="paginas_livros"
    MasterPageFile="~/master1.master"%>

<asp:Content ContentPlaceHolderID="head" runat="server">

    </asp:Content>

<asp:Content ContentPlaceHolderID="ContentPlaceHolderMain" runat="server">
    <aside>
        <section>
            <h2>Temas</h2>
            <a href="#">Literatura</a>
            <a href="#">Poesia</a>
            <a href="#">Engenharia</a>
            <a href="#">Gestão</a>
            <a href="#">História</a>
            <a href="#"></a>
        </section>
    </aside>
    <h2>Pesquisa de livros</h2>
    <p>Faça pesquisa na bases de dados utilizando um dos crtérios que se seguem:</p>
    <div>
        Título do livro: <asp:TextBox ID="tx_titulo" runat="server"></asp:TextBox>
        &nbsp;<asp:Button ID="bt_pesquisar" runat="server" Text="Pesquisar" OnClick="bt_pesquisar_Click" />
        <br />
        <br />
        <asp:GridView ID="gv_resultadoPesquisa" runat="server" AllowPaging="True" AllowSorting="True">
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EditoraConnectionString %>" SelectCommand="SELECT [Titulo], [ISBN], [Categoria], [AnoLancamento], [Preco] FROM [Livros] ORDER BY [Titulo]"></asp:SqlDataSource>
    </div>
</asp:Content>