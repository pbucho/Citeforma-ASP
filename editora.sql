USE [master]
GO
/****** Object:  Database [bd_editora]    Script Date: 10/22/2014 14:11:37 ******/
CREATE DATABASE [Editora]
GO
USE [Editora]
GO
/****** Object:  Table [dbo].[Autores]    Script Date: 10/22/2014 14:11:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Autores](
	[IDAutor] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [nvarchar](1000) NOT NULL,
	[PaisOrigem] [nvarchar](1000) NOT NULL,
	[PremioNobel] [bit] NOT NULL,
	[ResumoObra] [nvarchar](2500) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDAutor] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Autores] ON
INSERT [dbo].[Autores] ([IDAutor], [Nome], [PaisOrigem], [PremioNobel], [ResumoObra]) VALUES (1, N'Luís de Camões', N'Portugal', 0, N'Poeta português (1524-1580), autor do famoso poema épico "Os Lusíadas" e de uma considerável obra lírica e dramática.')
INSERT [dbo].[Autores] ([IDAutor], [Nome], [PaisOrigem], [PremioNobel], [ResumoObra]) VALUES (2, N'Miguel de Cervantes', N'Espanha', 0, N'Romancista, dramaturgo e poeta espanhol. Foi o criador de "D. Quixote" (1605) e é considerado uma das figuras mais importantes da literatura espanhola. Nasceu em 1547, em Alcalá de Henares, Espanha, e morreu em 1616, em Madrid. Depois de ter estudado em Madrid, Cervantes partiu para a Itália e tornou-se soldado.')
INSERT [dbo].[Autores] ([IDAutor], [Nome], [PaisOrigem], [PremioNobel], [ResumoObra]) VALUES (3, N'Roberto Bolaño', N'Chile', 0, N'Roberto Bolaño nasceu em 1953, em Santiago do Chile, filho de pai camionista e de mãe professora. A sua infância foi vivida em várias cidades chilenas (Valparaíso, Quilpué, Viña del Mar ou Cauquenes) e a passagem pela escola atormentada pela dislexia. Aos quinze anos a família mudou-se para a Cidade do México. ')
INSERT [dbo].[Autores] ([IDAutor], [Nome], [PaisOrigem], [PremioNobel], [ResumoObra]) VALUES (4, N'Gabriel García Márquez', N'Colombia', 1, N'Escritor colombiano nascido a 6 de Março de 1928 em Aracataca, um pequeno entreposto do comércio de bananas. Desde logo deixado ao cuidado dos seus avós, um coronel na reserva, ex-combatente na guerra civil, e uma apaixonada pelas tradições orais indígenas, estudou na austeridade de um colégio de jesuítas.')
INSERT [dbo].[Autores] ([IDAutor], [Nome], [PaisOrigem], [PremioNobel], [ResumoObra]) VALUES (5, N'José Saramago', N'Portugal', 1, N'Consagrado escritor português, José Saramago nasceu a 16 de novembro de 1922, em Azinhaga, no concelho da Golegã. Ficcionista, cronista, poeta, autor dramático, coube-lhe a honra de ser o primeiro autor português distinguido com o Prémio Nobel da Literatura, em 1998, consagrando, no seu nome, o prestígio das letras portuguesas contemporâneas além-fronteiras.')
INSERT [dbo].[Autores] ([IDAutor], [Nome], [PaisOrigem], [PremioNobel], [ResumoObra]) VALUES (6, N'Fernando Pessoa', N'Portugal', 0, N'Um dos maiores génios poéticos de toda a nossa Literatura e um dos poucos escritores portugueses mundialmente conhecidos. A sua poesia acabou por ser decisiva na evolução de toda a produção poética portuguesa do século XX. Se nele é ainda notória a herança simbolista, Pessoa foi mais longe, não só quanto à criação (e invenção) de novas tentativas artísticas e literárias, mas também no que respeita ao esforço de teorização e de crítica literária.')
INSERT [dbo].[Autores] ([IDAutor], [Nome], [PaisOrigem], [PremioNobel], [ResumoObra]) VALUES (7, N'José Gil', N'Portugal', 0, N'Filósofo e pensador português nascido em 1939, em Lourenço Marques, Moçambique. Após completar o ensino secundário na capital moçambicana, em 1957 veio estudar para a Faculdade de Ciências da Universidade de Lisboa, onde se inscreveu no curso de Ciências Matemáticas. Contudo, logo no ano seguinte mudou-se para Paris, em França, onde prosseguiu os estudos em Matemática. No entanto, percebeu que a sua área preferida era a Filosofia e mudou de curso. Em 1968 concluiu a licenciatura em Filosofia na Faculdade de Letras de Paris, na Universidade da Sorbonne.')
INSERT [dbo].[Autores] ([IDAutor], [Nome], [PaisOrigem], [PremioNobel], [ResumoObra]) VALUES (8, N'Eduardo Lourenço', N'Portugal', 0, N'Ensaísta português, nasceu a 29 de Maio de 1923, em S. Sergio de Rio Seco, Almeida. Formado em Ciências Histórico-Filosóficas pela Universidade de Coimbra, onde foi professor entre 1947 e 1953, leccionou depois em várias universidades, como a da Baía, no Brasil, e nas Universidades de Hamburgo, Heidelberg, Montpellier, Grenoble e Nice. Fixando residência em Vence, leccionou, até à sua jubilação, na Universidade de Nice.')
INSERT [dbo].[Autores] ([IDAutor], [Nome], [PaisOrigem], [PremioNobel], [ResumoObra]) VALUES (9, N'Aquilino Ribeiro', N'Portugal', 0, N'Aquilino Ribeiro nasce na beira Alta, em 1885 e morre em Lisboa em 1963.  Deixou uma vasta obra em que cultivou todos os géneros literários, partilhando com Fernando Pessoa, nas palavras de Óscar Lopes, lugar cimeiro nas Letras Portuguesas. ')
INSERT [dbo].[Autores] ([IDAutor], [Nome], [PaisOrigem], [PremioNobel], [ResumoObra]) VALUES (10, N'Miguel Torga', N'Portugal', 0, N'Pseudónimo de Adolfo Correia da Rocha, autor de uma produção literária vasta e variada, largamente reconhecida. Nasceu em S. Martinho de Anta em 1907. Depois de uma experiência de emigração no Brasil durante a adolescência, cursou Medicina em Coimbra, onde passou a viver e onde veio a falecer em 1995. Foi poeta presencista numa primeira fase; a sua obra abordou temas bucólicos, a angústia da morte, a revolta, temas sociais como a justiça e a liberdade, o amor, e deixou transparecer uma aliança íntima e permanente entre o homem e a terra.')
SET IDENTITY_INSERT [dbo].[Autores] OFF
/****** Object:  Table [dbo].[Clientes]    Script Date: 10/22/2014 14:11:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[NIF] [nvarchar](9) NOT NULL,
	[Nome] [nvarchar](1000) NOT NULL,
	[Morada] [nvarchar](1000) NOT NULL,
	[CodigoPostal] [nchar](8) NOT NULL,
	[Localidade] [nvarchar](1000) NOT NULL,
	[Telefone] [nvarchar](16) NOT NULL,
	[Email] [nvarchar](250) NOT NULL,
	[Codigo] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__Clientes__9B8553FC173876EA] PRIMARY KEY CLUSTERED 
(
	[NIF] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ__Clientes__C7DEC3301A14E395] UNIQUE NONCLUSTERED 
(
	[NIF] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Clientes] ([NIF], [Nome], [Morada], [CodigoPostal], [Localidade], [Telefone], [Email], [Codigo]) VALUES (N'145147852', N'Rita Alves', N'Largo das Flores, 4', N'1654-567', N'Odivelas', N'212763120', N'rita_alves@email.com', N'4')
INSERT [dbo].[Clientes] ([NIF], [Nome], [Morada], [CodigoPostal], [Localidade], [Telefone], [Email], [Codigo]) VALUES (N'145874122', N'Filipa Ferraz', N'Rua Cidade de Paris, 65', N'1876-110', N'Sintra', N'2134565435', N'filipa_ferraz@email.com', N'8')
INSERT [dbo].[Clientes] ([NIF], [Nome], [Morada], [CodigoPostal], [Localidade], [Telefone], [Email], [Codigo]) VALUES (N'200547851', N'Cristina Campos', N'Rua Fernando Pessoa, 122, 4º Esq.', N'1280-570', N'Lisboa', N'212552663', N'cristina_campos@gmail.com', N'14')
INSERT [dbo].[Clientes] ([NIF], [Nome], [Morada], [CodigoPostal], [Localidade], [Telefone], [Email], [Codigo]) VALUES (N'201365478', N'André Almeida', N'Rua Álvaro de Campos, 34', N'1963-254', N'Mafra', N'214785369', N'andre_almeida@hotmail.com', N'12')
INSERT [dbo].[Clientes] ([NIF], [Nome], [Morada], [CodigoPostal], [Localidade], [Telefone], [Email], [Codigo]) VALUES (N'210365214', N'Rui Gomes', N'Largo Alexandre O''Neill, 35', N'1963-250', N'Mafra', N'214587963', N'rui_gomes@hotmail.com', N'13')
INSERT [dbo].[Clientes] ([NIF], [Nome], [Morada], [CodigoPostal], [Localidade], [Telefone], [Email], [Codigo]) VALUES (N'213654789', N'Jaime Nunes', N'Rua Fernando Pessoa, 12', N'1280-570', N'Lisboa', N'212008765', N'jaime_nunes@email.com', N'7')
INSERT [dbo].[Clientes] ([NIF], [Nome], [Morada], [CodigoPostal], [Localidade], [Telefone], [Email], [Codigo]) VALUES (N'214587963', N'Ana Gomes', N'Rua Direita, 65', N'1234-567', N'Lisboa', N'212172345', N'ana_gomes@email.com', N'1')
INSERT [dbo].[Clientes] ([NIF], [Nome], [Morada], [CodigoPostal], [Localidade], [Telefone], [Email], [Codigo]) VALUES (N'214653879', N'Cláudia Silva', N'Rua Direita, 125, 2º Esq.', N'1234-567', N'Lisboa', N'213521478', N'claudia_silva@gmail.com', N'11')
INSERT [dbo].[Clientes] ([NIF], [Nome], [Morada], [CodigoPostal], [Localidade], [Telefone], [Email], [Codigo]) VALUES (N'215478965', N'Maria Costa', N'Rua Cidade do Cabo, 4, 1 Dto.', N'1825-632', N'Lisboa', N'214539871', N'maria_costa@gmail.com', N'10')
INSERT [dbo].[Clientes] ([NIF], [Nome], [Morada], [CodigoPostal], [Localidade], [Telefone], [Email], [Codigo]) VALUES (N'221144558', N'Rui Almeida', N'Rua Cidade do Porto, 32', N'1432-571', N'Lisboa', N'216756432', N'rui_almeida@email.com', N'3')
INSERT [dbo].[Clientes] ([NIF], [Nome], [Morada], [CodigoPostal], [Localidade], [Telefone], [Email], [Codigo]) VALUES (N'223651478', N'David Costa', N'Rua da Liberdade, 234, 3º Esq.', N'1234-871', N'Lisboa', N'218765435', N'david_costa@email.com', N'2')
INSERT [dbo].[Clientes] ([NIF], [Nome], [Morada], [CodigoPostal], [Localidade], [Telefone], [Email], [Codigo]) VALUES (N'225632588', N'António Palma', N'Rua Luís de Camões, 134', N'1987-234', N'Lisboa', N'212876000', N'antonio_palma@email.com', N'6')
INSERT [dbo].[Clientes] ([NIF], [Nome], [Morada], [CodigoPostal], [Localidade], [Telefone], [Email], [Codigo]) VALUES (N'256398741', N'Jorge Lopes', N'Avenida de Londres, 567', N'1820-345', N'Loures', N'212000875', N'antonio_palma@email.com', N'9')
INSERT [dbo].[Clientes] ([NIF], [Nome], [Morada], [CodigoPostal], [Localidade], [Telefone], [Email], [Codigo]) VALUES (N'256987454', N'Sara Domingos', N'Rua do Rossio, 234, 5º Dto.', N'1654-789', N'Odivelas', N'218654346', N'sara_domingos@email.com', N'5')
/****** Object:  Table [dbo].[Categorias]    Script Date: 10/22/2014 14:11:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categorias](
	[IDCategoria] [int] IDENTITY(1,1) NOT NULL,
	[Categoria] [nvarchar](1000) NOT NULL,
	[Descricao] [nvarchar](2500) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDCategoria] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categorias] ON
INSERT [dbo].[Categorias] ([IDCategoria], [Categoria], [Descricao]) VALUES (1, N'História', NULL)
INSERT [dbo].[Categorias] ([IDCategoria], [Categoria], [Descricao]) VALUES (2, N'Literatura', NULL)
INSERT [dbo].[Categorias] ([IDCategoria], [Categoria], [Descricao]) VALUES (3, N'Poesia', NULL)
INSERT [dbo].[Categorias] ([IDCategoria], [Categoria], [Descricao]) VALUES (4, N'Romance', NULL)
INSERT [dbo].[Categorias] ([IDCategoria], [Categoria], [Descricao]) VALUES (5, N'Crónica', NULL)
INSERT [dbo].[Categorias] ([IDCategoria], [Categoria], [Descricao]) VALUES (6, N'Biografia', NULL)
INSERT [dbo].[Categorias] ([IDCategoria], [Categoria], [Descricao]) VALUES (7, N'Ensaio', NULL)
INSERT [dbo].[Categorias] ([IDCategoria], [Categoria], [Descricao]) VALUES (8, N'Ficção', NULL)
SET IDENTITY_INSERT [dbo].[Categorias] OFF
/****** Object:  StoredProcedure [dbo].[SP_Categorias_Update]    Script Date: 10/22/2014 14:11:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Categorias_Update]
	@IDCategoria	INT,
	@Categoria		NVARCHAR(1000),
	@Descricao		NVARCHAR(2500)
AS
BEGIN
	UPDATE		Categorias
	SET			Categoria = @Categoria, Descricao = @Descricao
	WHERE		IDCategoria = @IDCategoria
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Categorias_Select]    Script Date: 10/22/2014 14:11:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Categorias_Select]
AS
BEGIN
	SELECT		IDCategoria, Categoria, Descricao 
	FROM		Categorias
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Categorias_Insert]    Script Date: 10/22/2014 14:11:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Categorias_Insert]
	@Categoria		NVARCHAR(1000),
	@Descricao		NVARCHAR(2500)
AS
BEGIN
	INSERT INTO		Categorias(Categoria, Descricao)
	VALUES			(@Categoria, @Descricao)
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Categorias_Delete]    Script Date: 10/22/2014 14:11:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Categorias_Delete]
	@IDCategoria	INT
AS
BEGIN
	DELETE		FROM Categorias
	WHERE		IDCategoria = @IDCategoria
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Autores_Update]    Script Date: 10/22/2014 14:11:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Autores_Update]
	@IDAutor		INT,
	@Nome			NVARCHAR(1000),
	@PaisOrigem		NVARCHAR(1000),
	@PremioNobel	BIT,
	@ResumoObra		NVARCHAR(2500)
AS
BEGIN
	Update	Autores set Nome = @Nome, PaisOrigem = @PaisOrigem,
						PremioNobel = @PremioNobel,
						ResumoObra = @ResumoObra
	WHERE	IDAutor = @IDAutor
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Autores_Select_By_PremioNobel]    Script Date: 10/22/2014 14:11:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Autores_Select_By_PremioNobel]
	@PremioNobel		Bit
AS
BEGIN
	SELECT		IDAutor, Nome, PaisOrigem, PremioNobel, ResumoObra
	FROM		Autores
	WHERE		PremioNobel = @PremioNobel
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Autores_Select_By_Nome]    Script Date: 10/22/2014 14:11:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Autores_Select_By_Nome]
	@Nome		NVARCHAR(1000)
AS
BEGIN
	SELECT		IDAutor, Nome, PaisOrigem, PremioNobel, ResumoObra
	FROM		Autores
	WHERE		Nome LIKE '%' + @Nome + '%' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Autores_Select_By_IDAutor]    Script Date: 10/22/2014 14:11:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Autores_Select_By_IDAutor]
	@IDAutor	INT
AS
BEGIN
	SELECT		IDAutor, Nome, PaisOrigem, PremioNobel, ResumoObra
	FROM		Autores
	WHERE		IDAutor = @IDAutor
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Autores_Select]    Script Date: 10/22/2014 14:11:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Autores_Select]
AS
BEGIN
	SELECT		IDAutor, Nome, PaisOrigem, PremioNobel, ResumoObra
	FROM		Autores
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Autores_Insert]    Script Date: 10/22/2014 14:11:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Autores_Insert]
	@Nome			NVARCHAR(1000),
	@PaisOrigem		NVARCHAR(1000),
	@PremioNobel	BIT,
	@ResumoObra		NVARCHAR(2500)
AS
BEGIN
	INSERT INTO Autores(Nome, PaisOrigem, PremioNobel, ResumoObra)
	VALUES		(@Nome, @PaisOrigem, @PremioNobel, @ResumoObra)
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Autores_Delete]    Script Date: 10/22/2014 14:11:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Autores_Delete]
	@IDAutor		INT
AS
BEGIN
	DELETE FROM 	Autores 
	WHERE			IDAutor = @IDAutor
END
GO
/****** Object:  Table [dbo].[Livros]    Script Date: 10/22/2014 14:11:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Livros](
	[IDLivro] [int] IDENTITY(1,1) NOT NULL,
	[Titulo] [nvarchar](1000) NOT NULL,
	[ISBN] [nvarchar](20) NOT NULL,
	[Categoria] [int] NULL,
	[AnoLancamento] [int] NULL,
	[Preco] [money] NULL,
	[QuantidadeStock] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDLivro] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Livros] ON
INSERT [dbo].[Livros] ([IDLivro], [Titulo], [ISBN], [Categoria], [AnoLancamento], [Preco], [QuantidadeStock]) VALUES (1, N'Contos de Outros Tempos', N'123456', 2, 2010, 10.0000, 50)
INSERT [dbo].[Livros] ([IDLivro], [Titulo], [ISBN], [Categoria], [AnoLancamento], [Preco], [QuantidadeStock]) VALUES (2, N'História de Portugal - Volume I', N'654321', 1, 2012, 12.0000, 60)
INSERT [dbo].[Livros] ([IDLivro], [Titulo], [ISBN], [Categoria], [AnoLancamento], [Preco], [QuantidadeStock]) VALUES (3, N'História de Portugal - Volume II', N'125416', 1, 2008, 12.5000, 32)
INSERT [dbo].[Livros] ([IDLivro], [Titulo], [ISBN], [Categoria], [AnoLancamento], [Preco], [QuantidadeStock]) VALUES (4, N'El Ingenioso Hidalgo Don Quijote De La Mancha', N'254136', 2, 2008, 22.0000, 25)
INSERT [dbo].[Livros] ([IDLivro], [Titulo], [ISBN], [Categoria], [AnoLancamento], [Preco], [QuantidadeStock]) VALUES (5, N'2666', N'214587', 2, 2010, 23.0000, 24)
INSERT [dbo].[Livros] ([IDLivro], [Titulo], [ISBN], [Categoria], [AnoLancamento], [Preco], [QuantidadeStock]) VALUES (6, N'Os detectives selvagens', N'125896', 2, 2012, 21.0000, 19)
INSERT [dbo].[Livros] ([IDLivro], [Titulo], [ISBN], [Categoria], [AnoLancamento], [Preco], [QuantidadeStock]) VALUES (7, N'Cem anos de solidão', N'214514', 2, 2009, 14.0000, 43)
INSERT [dbo].[Livros] ([IDLivro], [Titulo], [ISBN], [Categoria], [AnoLancamento], [Preco], [QuantidadeStock]) VALUES (8, N'A aventura de Miguel Littin clandestino no Chile', N'145237', 5, 2012, 19.0000, 52)
INSERT [dbo].[Livros] ([IDLivro], [Titulo], [ISBN], [Categoria], [AnoLancamento], [Preco], [QuantidadeStock]) VALUES (9, N'Os poemas possíveis', N'148752', 3, 2010, 33.0000, 51)
INSERT [dbo].[Livros] ([IDLivro], [Titulo], [ISBN], [Categoria], [AnoLancamento], [Preco], [QuantidadeStock]) VALUES (10, N'Viagem a Portugal', N'145782', 5, 2009, 32.0000, 50)
INSERT [dbo].[Livros] ([IDLivro], [Titulo], [ISBN], [Categoria], [AnoLancamento], [Preco], [QuantidadeStock]) VALUES (11, N'A caverna', N'124789', 4, 2009, 15.0000, 33)
INSERT [dbo].[Livros] ([IDLivro], [Titulo], [ISBN], [Categoria], [AnoLancamento], [Preco], [QuantidadeStock]) VALUES (12, N'Contos, Fábulas & Outras Ficções', N'254169', 2, 2008, 16.3000, 22)
INSERT [dbo].[Livros] ([IDLivro], [Titulo], [ISBN], [Categoria], [AnoLancamento], [Preco], [QuantidadeStock]) VALUES (13, N'Portugal, hoje', N'412578', 7, 2009, 24.0000, 61)
INSERT [dbo].[Livros] ([IDLivro], [Titulo], [ISBN], [Categoria], [AnoLancamento], [Preco], [QuantidadeStock]) VALUES (14, N'O labirinto da saudade', N'563247', 7, 2009, 23.0000, 14)
INSERT [dbo].[Livros] ([IDLivro], [Titulo], [ISBN], [Categoria], [AnoLancamento], [Preco], [QuantidadeStock]) VALUES (15, N'Príncipes de Portugal', N'147963', 1, 2010, 19.0000, 10)
INSERT [dbo].[Livros] ([IDLivro], [Titulo], [ISBN], [Categoria], [AnoLancamento], [Preco], [QuantidadeStock]) VALUES (16, N'O Malhadinhas', N'214598', 4, 2012, 14.0000, 5)
INSERT [dbo].[Livros] ([IDLivro], [Titulo], [ISBN], [Categoria], [AnoLancamento], [Preco], [QuantidadeStock]) VALUES (17, N'Contos da montanha', N'254176', 4, 2008, 12.0000, 18)
INSERT [dbo].[Livros] ([IDLivro], [Titulo], [ISBN], [Categoria], [AnoLancamento], [Preco], [QuantidadeStock]) VALUES (18, N'Bichos', N'652148', 4, 2010, 12.0000, 22)
SET IDENTITY_INSERT [dbo].[Livros] OFF
/****** Object:  Table [dbo].[Encomendas]    Script Date: 10/22/2014 14:11:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Encomendas](
	[IDEncomenda] [int] IDENTITY(1,1) NOT NULL,
	[Data] [nchar](10) NULL,
	[NIFCliente] [nvarchar](9) NULL,
 CONSTRAINT [PK_Encomendas] PRIMARY KEY CLUSTERED 
(
	[IDEncomenda] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Encomendas] ON
INSERT [dbo].[Encomendas] ([IDEncomenda], [Data], [NIFCliente]) VALUES (11, N'2011-06-11', N'200547851')
INSERT [dbo].[Encomendas] ([IDEncomenda], [Data], [NIFCliente]) VALUES (12, N'2011-12-14', N'201365478')
INSERT [dbo].[Encomendas] ([IDEncomenda], [Data], [NIFCliente]) VALUES (13, N'2011-12-16', N'213654789')
INSERT [dbo].[Encomendas] ([IDEncomenda], [Data], [NIFCliente]) VALUES (14, N'2011-12-16', N'214653879')
INSERT [dbo].[Encomendas] ([IDEncomenda], [Data], [NIFCliente]) VALUES (15, N'2011-12-26', N'200547851')
INSERT [dbo].[Encomendas] ([IDEncomenda], [Data], [NIFCliente]) VALUES (16, N'2012-01-06', N'214653879')
INSERT [dbo].[Encomendas] ([IDEncomenda], [Data], [NIFCliente]) VALUES (17, N'2012-01-06', N'213654789')
INSERT [dbo].[Encomendas] ([IDEncomenda], [Data], [NIFCliente]) VALUES (18, N'2012-02-01', N'221144558')
INSERT [dbo].[Encomendas] ([IDEncomenda], [Data], [NIFCliente]) VALUES (19, N'2012-02-02', N'200547851')
INSERT [dbo].[Encomendas] ([IDEncomenda], [Data], [NIFCliente]) VALUES (20, N'2012-02-03', N'201365478')
SET IDENTITY_INSERT [dbo].[Encomendas] OFF
/****** Object:  Table [dbo].[EncomendaLivros]    Script Date: 10/22/2014 14:11:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EncomendaLivros](
	[IDEncomendaLivro] [int] IDENTITY(1,1) NOT NULL,
	[Encomenda] [int] NULL,
	[Livro] [int] NULL,
	[Quantidade] [int] NULL,
 CONSTRAINT [PK_EncomendaLivros] PRIMARY KEY CLUSTERED 
(
	[IDEncomendaLivro] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[EncomendaLivros] ON
INSERT [dbo].[EncomendaLivros] ([IDEncomendaLivro], [Encomenda], [Livro], [Quantidade]) VALUES (1, 11, 1, 6)
INSERT [dbo].[EncomendaLivros] ([IDEncomendaLivro], [Encomenda], [Livro], [Quantidade]) VALUES (2, 11, 2, 5)
INSERT [dbo].[EncomendaLivros] ([IDEncomendaLivro], [Encomenda], [Livro], [Quantidade]) VALUES (3, 11, 3, 4)
INSERT [dbo].[EncomendaLivros] ([IDEncomendaLivro], [Encomenda], [Livro], [Quantidade]) VALUES (4, 11, 4, 3)
INSERT [dbo].[EncomendaLivros] ([IDEncomendaLivro], [Encomenda], [Livro], [Quantidade]) VALUES (5, 12, 5, 4)
INSERT [dbo].[EncomendaLivros] ([IDEncomendaLivro], [Encomenda], [Livro], [Quantidade]) VALUES (6, 12, 6, 5)
INSERT [dbo].[EncomendaLivros] ([IDEncomendaLivro], [Encomenda], [Livro], [Quantidade]) VALUES (7, 13, 7, 6)
INSERT [dbo].[EncomendaLivros] ([IDEncomendaLivro], [Encomenda], [Livro], [Quantidade]) VALUES (8, 13, 8, 5)
INSERT [dbo].[EncomendaLivros] ([IDEncomendaLivro], [Encomenda], [Livro], [Quantidade]) VALUES (9, 13, 9, 4)
INSERT [dbo].[EncomendaLivros] ([IDEncomendaLivro], [Encomenda], [Livro], [Quantidade]) VALUES (10, 14, 10, 3)
INSERT [dbo].[EncomendaLivros] ([IDEncomendaLivro], [Encomenda], [Livro], [Quantidade]) VALUES (11, 14, 11, 4)
INSERT [dbo].[EncomendaLivros] ([IDEncomendaLivro], [Encomenda], [Livro], [Quantidade]) VALUES (12, 15, 12, 5)
INSERT [dbo].[EncomendaLivros] ([IDEncomendaLivro], [Encomenda], [Livro], [Quantidade]) VALUES (13, 15, 13, 6)
INSERT [dbo].[EncomendaLivros] ([IDEncomendaLivro], [Encomenda], [Livro], [Quantidade]) VALUES (14, 16, 14, 7)
INSERT [dbo].[EncomendaLivros] ([IDEncomendaLivro], [Encomenda], [Livro], [Quantidade]) VALUES (15, 16, 15, 2)
INSERT [dbo].[EncomendaLivros] ([IDEncomendaLivro], [Encomenda], [Livro], [Quantidade]) VALUES (16, 17, 16, 3)
INSERT [dbo].[EncomendaLivros] ([IDEncomendaLivro], [Encomenda], [Livro], [Quantidade]) VALUES (17, 17, 17, 4)
INSERT [dbo].[EncomendaLivros] ([IDEncomendaLivro], [Encomenda], [Livro], [Quantidade]) VALUES (18, 18, 18, 5)
INSERT [dbo].[EncomendaLivros] ([IDEncomendaLivro], [Encomenda], [Livro], [Quantidade]) VALUES (19, 19, 18, 6)
INSERT [dbo].[EncomendaLivros] ([IDEncomendaLivro], [Encomenda], [Livro], [Quantidade]) VALUES (20, 19, 1, 7)
INSERT [dbo].[EncomendaLivros] ([IDEncomendaLivro], [Encomenda], [Livro], [Quantidade]) VALUES (21, 20, 2, 8)
INSERT [dbo].[EncomendaLivros] ([IDEncomendaLivro], [Encomenda], [Livro], [Quantidade]) VALUES (22, 20, 3, 2)
INSERT [dbo].[EncomendaLivros] ([IDEncomendaLivro], [Encomenda], [Livro], [Quantidade]) VALUES (23, 20, 4, 3)
INSERT [dbo].[EncomendaLivros] ([IDEncomendaLivro], [Encomenda], [Livro], [Quantidade]) VALUES (24, 20, 5, 1)
SET IDENTITY_INSERT [dbo].[EncomendaLivros] OFF
/****** Object:  Table [dbo].[AutoresLivros]    Script Date: 10/22/2014 14:11:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AutoresLivros](
	[IDAutorLivro] [int] IDENTITY(1,1) NOT NULL,
	[Autor] [int] NULL,
	[Livro] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDAutorLivro] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AutoresLivros] ON
INSERT [dbo].[AutoresLivros] ([IDAutorLivro], [Autor], [Livro]) VALUES (1, 1, 1)
INSERT [dbo].[AutoresLivros] ([IDAutorLivro], [Autor], [Livro]) VALUES (2, 2, 1)
INSERT [dbo].[AutoresLivros] ([IDAutorLivro], [Autor], [Livro]) VALUES (3, 3, 2)
INSERT [dbo].[AutoresLivros] ([IDAutorLivro], [Autor], [Livro]) VALUES (4, 4, 2)
INSERT [dbo].[AutoresLivros] ([IDAutorLivro], [Autor], [Livro]) VALUES (5, 5, 3)
INSERT [dbo].[AutoresLivros] ([IDAutorLivro], [Autor], [Livro]) VALUES (6, 6, 3)
INSERT [dbo].[AutoresLivros] ([IDAutorLivro], [Autor], [Livro]) VALUES (7, 7, 3)
INSERT [dbo].[AutoresLivros] ([IDAutorLivro], [Autor], [Livro]) VALUES (8, 8, 4)
INSERT [dbo].[AutoresLivros] ([IDAutorLivro], [Autor], [Livro]) VALUES (9, 9, 5)
INSERT [dbo].[AutoresLivros] ([IDAutorLivro], [Autor], [Livro]) VALUES (10, 10, 6)
INSERT [dbo].[AutoresLivros] ([IDAutorLivro], [Autor], [Livro]) VALUES (12, 1, 7)
INSERT [dbo].[AutoresLivros] ([IDAutorLivro], [Autor], [Livro]) VALUES (13, 2, 8)
INSERT [dbo].[AutoresLivros] ([IDAutorLivro], [Autor], [Livro]) VALUES (14, 3, 9)
INSERT [dbo].[AutoresLivros] ([IDAutorLivro], [Autor], [Livro]) VALUES (15, 4, 10)
INSERT [dbo].[AutoresLivros] ([IDAutorLivro], [Autor], [Livro]) VALUES (16, 5, 11)
INSERT [dbo].[AutoresLivros] ([IDAutorLivro], [Autor], [Livro]) VALUES (17, 6, 12)
INSERT [dbo].[AutoresLivros] ([IDAutorLivro], [Autor], [Livro]) VALUES (18, 7, 13)
INSERT [dbo].[AutoresLivros] ([IDAutorLivro], [Autor], [Livro]) VALUES (19, 8, 14)
INSERT [dbo].[AutoresLivros] ([IDAutorLivro], [Autor], [Livro]) VALUES (20, 9, 14)
INSERT [dbo].[AutoresLivros] ([IDAutorLivro], [Autor], [Livro]) VALUES (21, 10, 15)
INSERT [dbo].[AutoresLivros] ([IDAutorLivro], [Autor], [Livro]) VALUES (22, 10, 16)
INSERT [dbo].[AutoresLivros] ([IDAutorLivro], [Autor], [Livro]) VALUES (23, 2, 17)
INSERT [dbo].[AutoresLivros] ([IDAutorLivro], [Autor], [Livro]) VALUES (24, 2, 18)
SET IDENTITY_INSERT [dbo].[AutoresLivros] OFF
/****** Object:  Default [DF__Autores__PremioN__1367E606]    Script Date: 10/22/2014 14:11:38 ******/
ALTER TABLE [dbo].[Autores] ADD  DEFAULT ((0)) FOR [PremioNobel]
GO
/****** Object:  ForeignKey [FK_Livros_Categorias]    Script Date: 10/22/2014 14:11:46 ******/
ALTER TABLE [dbo].[Livros]  WITH CHECK ADD  CONSTRAINT [FK_Livros_Categorias] FOREIGN KEY([Categoria])
REFERENCES [dbo].[Categorias] ([IDCategoria])
GO
ALTER TABLE [dbo].[Livros] CHECK CONSTRAINT [FK_Livros_Categorias]
GO
/****** Object:  ForeignKey [FK_Encomendas_Clientes]    Script Date: 10/22/2014 14:11:46 ******/
ALTER TABLE [dbo].[Encomendas]  WITH CHECK ADD  CONSTRAINT [FK_Encomendas_Clientes] FOREIGN KEY([NIFCliente])
REFERENCES [dbo].[Clientes] ([NIF])
GO
ALTER TABLE [dbo].[Encomendas] CHECK CONSTRAINT [FK_Encomendas_Clientes]
GO
/****** Object:  ForeignKey [FK_EncomendaLivros_Encomendas]    Script Date: 10/22/2014 14:11:46 ******/
ALTER TABLE [dbo].[EncomendaLivros]  WITH CHECK ADD  CONSTRAINT [FK_EncomendaLivros_Encomendas] FOREIGN KEY([Encomenda])
REFERENCES [dbo].[Encomendas] ([IDEncomenda])
GO
ALTER TABLE [dbo].[EncomendaLivros] CHECK CONSTRAINT [FK_EncomendaLivros_Encomendas]
GO
/****** Object:  ForeignKey [FK_EncomendaLivros_Livros]    Script Date: 10/22/2014 14:11:46 ******/
ALTER TABLE [dbo].[EncomendaLivros]  WITH CHECK ADD  CONSTRAINT [FK_EncomendaLivros_Livros] FOREIGN KEY([Livro])
REFERENCES [dbo].[Livros] ([IDLivro])
GO
ALTER TABLE [dbo].[EncomendaLivros] CHECK CONSTRAINT [FK_EncomendaLivros_Livros]
GO
/****** Object:  ForeignKey [ChaveExterna_AutorLivro]    Script Date: 10/22/2014 14:11:46 ******/
ALTER TABLE [dbo].[AutoresLivros]  WITH CHECK ADD  CONSTRAINT [ChaveExterna_AutorLivro] FOREIGN KEY([Autor])
REFERENCES [dbo].[Autores] ([IDAutor])
GO
ALTER TABLE [dbo].[AutoresLivros] CHECK CONSTRAINT [ChaveExterna_AutorLivro]
GO
/****** Object:  ForeignKey [FK_AutoresLivros_Livros]    Script Date: 10/22/2014 14:11:46 ******/
ALTER TABLE [dbo].[AutoresLivros]  WITH CHECK ADD  CONSTRAINT [FK_AutoresLivros_Livros] FOREIGN KEY([Livro])
REFERENCES [dbo].[Livros] ([IDLivro])
GO
ALTER TABLE [dbo].[AutoresLivros] CHECK CONSTRAINT [FK_AutoresLivros_Livros]
GO
