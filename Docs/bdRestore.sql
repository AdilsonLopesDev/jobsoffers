USE [master]
GO
/****** Object:  Database [JOBSOFFERS]    Script Date: 17/06/2020 11:48:23 ******/
CREATE DATABASE [JOBSOFFERS]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'JOBSOFFERS', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\JOBSOFFERS.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'JOBSOFFERS_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\JOBSOFFERS_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [JOBSOFFERS] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [JOBSOFFERS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [JOBSOFFERS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [JOBSOFFERS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [JOBSOFFERS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [JOBSOFFERS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [JOBSOFFERS] SET ARITHABORT OFF 
GO
ALTER DATABASE [JOBSOFFERS] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [JOBSOFFERS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [JOBSOFFERS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [JOBSOFFERS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [JOBSOFFERS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [JOBSOFFERS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [JOBSOFFERS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [JOBSOFFERS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [JOBSOFFERS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [JOBSOFFERS] SET  DISABLE_BROKER 
GO
ALTER DATABASE [JOBSOFFERS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [JOBSOFFERS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [JOBSOFFERS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [JOBSOFFERS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [JOBSOFFERS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [JOBSOFFERS] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [JOBSOFFERS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [JOBSOFFERS] SET RECOVERY FULL 
GO
ALTER DATABASE [JOBSOFFERS] SET  MULTI_USER 
GO
ALTER DATABASE [JOBSOFFERS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [JOBSOFFERS] SET DB_CHAINING OFF 
GO
ALTER DATABASE [JOBSOFFERS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [JOBSOFFERS] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [JOBSOFFERS] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'JOBSOFFERS', N'ON'
GO
ALTER DATABASE [JOBSOFFERS] SET QUERY_STORE = OFF
GO
USE [JOBSOFFERS]
GO
/****** Object:  Table [dbo].[Areas]    Script Date: 17/06/2020 11:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Areas](
	[Id] [varchar](50) NOT NULL,
	[Designacao] [varchar](50) NULL,
	[Status] [int] NOT NULL,
	[EstadoId] [varchar](50) NULL,
	[CreatedAt] [date] NULL,
	[UpdatedAt] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AvaliacaoCurriculos]    Script Date: 17/06/2020 11:48:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AvaliacaoCurriculos](
	[Id] [varchar](50) NOT NULL,
	[Designacao] [varchar](50) NULL,
	[Status] [int] NOT NULL,
	[IsFavorito] [int] NOT NULL,
	[EstadoId] [varchar](50) NULL,
	[CurriculoId] [varchar](50) NULL,
	[OportunidadeId] [varchar](50) NULL,
	[CreatedAt] [date] NULL,
	[UpdatedAt] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Beneficios]    Script Date: 17/06/2020 11:48:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Beneficios](
	[Id] [varchar](50) NOT NULL,
	[Designacao] [varchar](50) NULL,
	[Descricao] [varchar](350) NULL,
	[Status] [int] NOT NULL,
	[EstadoId] [varchar](50) NULL,
	[CreatedAt] [date] NULL,
	[UpdatedAt] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Candidaturas]    Script Date: 17/06/2020 11:48:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Candidaturas](
	[Id] [varchar](50) NOT NULL,
	[Status] [int] NOT NULL,
	[EstadoId] [varchar](50) NULL,
	[CandidatoId] [varchar](50) NULL,
	[OportunidadeId] [varchar](50) NULL,
	[CreatedAt] [date] NULL,
	[UpdatedAt] [date] NULL,
	[IsAnalizado] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cargos]    Script Date: 17/06/2020 11:48:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cargos](
	[Id] [varchar](50) NOT NULL,
	[Designacao] [varchar](50) NULL,
	[Status] [int] NOT NULL,
	[EstadoId] [varchar](50) NULL,
	[CreatedAt] [date] NULL,
	[UpdatedAt] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Competencias]    Script Date: 17/06/2020 11:48:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Competencias](
	[Id] [varchar](50) NOT NULL,
	[Designacao] [varchar](50) NULL,
	[Status] [int] NOT NULL,
	[EstadoId] [varchar](50) NULL,
	[CreatedAt] [date] NULL,
	[UpdatedAt] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contactos]    Script Date: 17/06/2020 11:48:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contactos](
	[Id] [varchar](50) NOT NULL,
	[Telefone] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Status] [int] NOT NULL,
	[EstadoId] [varchar](50) NULL,
	[CreatedAt] [date] NULL,
	[UpdatedAt] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContaUsuarios]    Script Date: 17/06/2020 11:48:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContaUsuarios](
	[Id] [varchar](50) NOT NULL,
	[UserName] [varchar](50) NULL,
	[PassWord] [varchar](max) NULL,
	[Status] [int] NOT NULL,
	[EstadoId] [varchar](50) NULL,
	[PessoaId] [varchar](50) NULL,
	[CreatedAt] [date] NULL,
	[UpdatedAt] [date] NULL,
	[Email] [varchar](50) NULL,
	[EmailAlternativo] [nchar](10) NULL,
	[Provider] [int] NOT NULL,
	[FotoUrl] [varchar](90) NULL,
	[EmpresaId] [varchar](50) NULL,
 CONSTRAINT [PK__ContaUsu__A256997A60CA8F3A] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CurriculoDetalhes]    Script Date: 17/06/2020 11:48:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CurriculoDetalhes](
	[Id] [varchar](50) NOT NULL,
	[CurriculoId] [varchar](50) NULL,
	[DetalheId] [varchar](50) NULL,
	[Status] [int] NOT NULL,
	[EstadoId] [varchar](50) NULL,
	[CreatedAt] [date] NULL,
	[UpdatedAt] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CurriculoHobes]    Script Date: 17/06/2020 11:48:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CurriculoHobes](
	[Id] [varchar](50) NOT NULL,
	[CurriculoId] [varchar](50) NULL,
	[HobesId] [varchar](50) NULL,
	[Status] [int] NOT NULL,
	[EstadoId] [varchar](50) NULL,
	[CreatedAt] [date] NULL,
	[UpdatedAt] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Curriculos]    Script Date: 17/06/2020 11:48:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Curriculos](
	[Id] [varchar](50) NOT NULL,
	[Designacao] [varchar](50) NULL,
	[Status] [int] NOT NULL,
	[EstadoId] [varchar](50) NULL,
	[CreatedAt] [date] NULL,
	[UpdatedAt] [date] NULL,
	[CandidatoId] [varchar](50) NULL,
	[ResumoProfissional] [text] NULL,
 CONSTRAINT [PK__Curricul__A6515A339EE60E93] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CurriculoSkills]    Script Date: 17/06/2020 11:48:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CurriculoSkills](
	[Id] [varchar](50) NOT NULL,
	[CurriculoId] [varchar](50) NULL,
	[SkillsId] [varchar](50) NULL,
	[Status] [int] NOT NULL,
	[EstadoId] [varchar](50) NULL,
	[CreatedAt] [date] NULL,
	[UpdatedAt] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Detalhes]    Script Date: 17/06/2020 11:48:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Detalhes](
	[Id] [varchar](50) NOT NULL,
	[Designacao] [varchar](50) NULL,
	[NomeDaInstituicao] [varchar](50) NULL,
	[DescricaoDaInstituicao] [varchar](50) NULL,
	[LocalDaInstituicao] [varchar](50) NULL,
	[DataInicio] [varchar](50) NULL,
	[DataFim] [varchar](50) NULL,
	[Status] [int] NOT NULL,
	[EstadoId] [varchar](50) NULL,
	[CreatedAt] [date] NULL,
	[UpdatedAt] [date] NULL,
	[TipoDetalheId] [varchar](50) NULL,
 CONSTRAINT [PK__Detalhe__E4362622CDB76688] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Documentos]    Script Date: 17/06/2020 11:48:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Documentos](
	[Id] [varchar](50) NOT NULL,
	[NumDocumento] [varchar](50) NULL,
	[Status] [int] NOT NULL,
	[EstadoId] [varchar](50) NULL,
	[TipoDocumentoId] [varchar](50) NULL,
	[CreatedAt] [date] NULL,
	[UpdatedAt] [date] NULL,
	[documentoUrl] [nchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empresas]    Script Date: 17/06/2020 11:48:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empresas](
	[Id] [varchar](50) NOT NULL,
	[Designacao] [varchar](50) NULL,
	[Nif] [varchar](50) NULL,
	[RazaoSocial] [varchar](250) NULL,
	[Missao] [varchar](250) NULL,
	[Visao] [varchar](50) NULL,
	[Status] [int] NOT NULL,
	[EstadoId] [varchar](50) NULL,
	[CreatedAt] [date] NULL,
	[UpdatedAt] [date] NULL,
	[SectorDeAtividade] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estados]    Script Date: 17/06/2020 11:48:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estados](
	[Id] [varchar](50) NOT NULL,
	[Designacao] [varchar](50) NULL,
	[Status] [int] NOT NULL,
	[CreatedAt] [date] NULL,
	[UpdatedAt] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Funcionarios]    Script Date: 17/06/2020 11:48:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Funcionarios](
	[Id] [varchar](50) NOT NULL,
	[Status] [int] NOT NULL,
	[EstadoId] [varchar](50) NULL,
	[EmpresaId] [varchar](50) NULL,
	[PessoaId] [varchar](50) NULL,
	[CreatedAt] [date] NULL,
	[UpdatedAt] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hobes]    Script Date: 17/06/2020 11:48:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hobes](
	[Id] [varchar](50) NOT NULL,
	[Designacao] [varchar](50) NULL,
	[Percentagem] [int] NULL,
	[Descricao] [varchar](50) NULL,
	[Status] [int] NOT NULL,
	[EstadoId] [varchar](50) NULL,
	[CreatedAt] [date] NULL,
	[UpdatedAt] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Idiomas]    Script Date: 17/06/2020 11:48:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Idiomas](
	[Id] [varchar](50) NOT NULL,
	[Designacao] [varchar](50) NULL,
	[Status] [int] NOT NULL,
	[EstadoId] [varchar](50) NULL,
	[CreatedAt] [date] NULL,
	[UpdatedAt] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nacionalidades]    Script Date: 17/06/2020 11:48:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nacionalidades](
	[Id] [varchar](50) NOT NULL,
	[Designacao] [varchar](50) NULL,
	[Status] [int] NOT NULL,
	[EstadoId] [varchar](50) NULL,
	[CreatedAt] [date] NULL,
	[UpdatedAt] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OportunidadeBeneficios]    Script Date: 17/06/2020 11:48:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OportunidadeBeneficios](
	[Id] [varchar](50) NOT NULL,
	[BeneficioId] [varchar](50) NULL,
	[OportunidadeId] [varchar](50) NULL,
	[Status] [int] NOT NULL,
	[EstadoId] [varchar](50) NULL,
	[CreatedAt] [date] NULL,
	[UpdatedAt] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OportunidadeCompetencias]    Script Date: 17/06/2020 11:48:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OportunidadeCompetencias](
	[Id] [varchar](50) NOT NULL,
	[CompetenciaId] [varchar](50) NULL,
	[OportunidadeId] [varchar](50) NULL,
	[Status] [int] NOT NULL,
	[EstadoId] [varchar](50) NULL,
	[CreatedAt] [date] NULL,
	[UpdatedAt] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OportunidadeIdiomas]    Script Date: 17/06/2020 11:48:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OportunidadeIdiomas](
	[Id] [varchar](50) NOT NULL,
	[IdiomaId] [varchar](50) NULL,
	[OportunidadeId] [varchar](50) NULL,
	[Status] [int] NOT NULL,
	[EstadoId] [varchar](50) NULL,
	[CreatedAt] [date] NULL,
	[UpdatedAt] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Oportunidades]    Script Date: 17/06/2020 11:48:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Oportunidades](
	[Id] [varchar](50) NOT NULL,
	[CargaHoraria] [varchar](50) NULL,
	[Salario] [varchar](50) NULL,
	[DataLimite] [date] NULL,
	[Status] [int] NOT NULL,
	[IsFinalizado] [int] NOT NULL,
	[EstadoId] [varchar](50) NULL,
	[Cidade] [varchar](50) NULL,
	[CreatedAt] [date] NULL,
	[UpdatedAt] [date] NULL,
	[TipoEmpregoId] [varchar](50) NULL,
	[TipoFormacaoId] [varchar](50) NULL,
	[TipoFuncaoId] [varchar](50) NULL,
	[ProvinciaId] [varchar](50) NULL,
	[NacionalidadeId] [varchar](50) NULL,
	[Experiencia] [varchar](50) NULL,
	[NumVagas] [varchar](50) NULL,
	[Detalhes] [varchar](500) NULL,
	[CargoId] [varchar](50) NULL,
	[EmpresaId] [varchar](50) NULL,
 CONSTRAINT [PK__Oportuni__3231EA5957A46DEE] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PessoaContactos]    Script Date: 17/06/2020 11:48:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PessoaContactos](
	[Id] [varchar](50) NOT NULL,
	[ContactoId] [varchar](50) NULL,
	[PessoaId] [varchar](50) NULL,
	[Status] [int] NOT NULL,
	[EstadoId] [varchar](50) NULL,
	[CreatedAt] [date] NULL,
	[UpdatedAt] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PessoaDocumentos]    Script Date: 17/06/2020 11:48:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PessoaDocumentos](
	[Id] [varchar](50) NOT NULL,
	[DocumentoId] [varchar](50) NULL,
	[PessoaId] [varchar](50) NULL,
	[Status] [int] NOT NULL,
	[EstadoId] [varchar](50) NULL,
	[CreatedAt] [date] NULL,
	[UpdatedAt] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PessoaIdiomas]    Script Date: 17/06/2020 11:48:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PessoaIdiomas](
	[Id] [varchar](50) NOT NULL,
	[IdiomaId] [varchar](50) NULL,
	[PessoaId] [varchar](50) NULL,
	[Status] [int] NOT NULL,
	[EstadoId] [varchar](50) NULL,
	[CreatedAt] [date] NULL,
	[UpdatedAt] [date] NULL,
	[Percentagem] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pessoas]    Script Date: 17/06/2020 11:48:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pessoas](
	[Id] [varchar](50) NOT NULL,
	[Nome] [varchar](50) NULL,
	[SobreNome] [varchar](50) NULL,
	[DataNascimento] [date] NULL,
	[Status] [int] NOT NULL,
	[EstadoId] [varchar](50) NULL,
	[CreatedAt] [date] NULL,
	[UpdatedAt] [date] NULL,
	[IsCandidato] [int] NOT NULL,
	[Morada] [varchar](50) NULL,
 CONSTRAINT [PK__Pessoa__7061465D0C6F9E3B] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Provincias]    Script Date: 17/06/2020 11:48:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Provincias](
	[Id] [varchar](50) NOT NULL,
	[Designacao] [varchar](50) NULL,
	[Status] [int] NOT NULL,
	[EstadoId] [varchar](50) NULL,
	[CreatedAt] [date] NULL,
	[UpdatedAt] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Skills]    Script Date: 17/06/2020 11:48:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Skills](
	[Id] [varchar](50) NOT NULL,
	[Designacao] [varchar](50) NULL,
	[Percentagem] [int] NULL,
	[Descricao] [varchar](50) NULL,
	[Status] [int] NOT NULL,
	[EstadoId] [varchar](50) NULL,
	[CreatedAt] [date] NULL,
	[UpdatedAt] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SolicitacaoDocumentos]    Script Date: 17/06/2020 11:48:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SolicitacaoDocumentos](
	[Id] [varchar](50) NOT NULL,
	[DetalheEspecifico] [varchar](50) NULL,
	[Status] [int] NOT NULL,
	[EstadoId] [varchar](50) NULL,
	[CandidaturaId] [varchar](50) NULL,
	[TipoDocunentoId] [varchar](50) NULL,
	[CreatedAt] [date] NULL,
	[UpdatedAt] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoDetalhes]    Script Date: 17/06/2020 11:48:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoDetalhes](
	[Id] [varchar](50) NOT NULL,
	[Designacao] [varchar](50) NULL,
	[Descricao] [varchar](50) NULL,
	[Status] [int] NOT NULL,
	[EstadoId] [varchar](50) NULL,
	[CreatedAt] [date] NULL,
	[UpdatedAt] [date] NULL,
	[tipoIcon] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoDocumentos]    Script Date: 17/06/2020 11:48:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoDocumentos](
	[Id] [varchar](50) NOT NULL,
	[Designacao] [varchar](50) NULL,
	[Status] [int] NOT NULL,
	[EstadoId] [varchar](50) NULL,
	[CreatedAt] [date] NULL,
	[UpdatedAt] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoEmpregos]    Script Date: 17/06/2020 11:48:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoEmpregos](
	[Id] [varchar](50) NOT NULL,
	[Designacao] [varchar](50) NULL,
	[Status] [int] NOT NULL,
	[EstadoId] [varchar](50) NULL,
	[CreatedAt] [date] NULL,
	[UpdatedAt] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoFormacaos]    Script Date: 17/06/2020 11:48:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoFormacaos](
	[Id] [varchar](50) NOT NULL,
	[Designacao] [varchar](50) NULL,
	[Status] [int] NOT NULL,
	[EstadoId] [varchar](50) NULL,
	[CreatedAt] [date] NULL,
	[UpdatedAt] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoFuncoes]    Script Date: 17/06/2020 11:48:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoFuncoes](
	[Id] [varchar](50) NOT NULL,
	[Designacao] [varchar](50) NULL,
	[Status] [int] NOT NULL,
	[EstadoId] [varchar](50) NULL,
	[AreaId] [varchar](50) NULL,
	[CreatedAt] [date] NULL,
	[UpdatedAt] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Areas] ([Id], [Designacao], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'6C9B068A-95B8-4577-A614-530CA5C561D8', N'Redes', 1, N'324ba64c-c949-40de-a7cb-ff9e7bd8951f', NULL, NULL)
INSERT [dbo].[Areas] ([Id], [Designacao], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'E3C5C7CF-A0E3-4C48-8D77-51D2D97591F3', N'Programação', 1, N'324ba64c-c949-40de-a7cb-ff9e7bd8951f', NULL, NULL)
INSERT [dbo].[Beneficios] ([Id], [Designacao], [Descricao], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'C481DACD-5DFF-49F5-B707-285E924D19A1', N'Refeição', N'Direito a Refeição', 1, N'324ba64c-c949-40de-a7cb-ff9e7bd8951f', CAST(N'2020-03-01' AS Date), CAST(N'2020-03-01' AS Date))
INSERT [dbo].[Beneficios] ([Id], [Designacao], [Descricao], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'E1A34EEA-6C34-40AA-8225-3CF48A58BA74', N'Transporte', N'Direito ao transporte de ida e volta', 1, N'324ba64c-c949-40de-a7cb-ff9e7bd8951f', CAST(N'2020-03-01' AS Date), CAST(N'2020-03-01' AS Date))
INSERT [dbo].[Candidaturas] ([Id], [Status], [EstadoId], [CandidatoId], [OportunidadeId], [CreatedAt], [UpdatedAt], [IsAnalizado]) VALUES (N'062511ac-f6f0-4c4a-b89c-274f7e685d7a', 1, NULL, N'8484b790-7878-4bbe-9ccb-b8a9c657932d', N'c2d16eb5-e6e7-4d69-9a82-bd4844450cff', CAST(N'2020-04-30' AS Date), CAST(N'2020-05-22' AS Date), 0)
INSERT [dbo].[Candidaturas] ([Id], [Status], [EstadoId], [CandidatoId], [OportunidadeId], [CreatedAt], [UpdatedAt], [IsAnalizado]) VALUES (N'4e84d79c-3569-4b20-bc81-4877945f2f20', 1, NULL, N'c971ecec-9b3f-40d9-9ac2-cc64d4fb01ee', N'c2d16eb5-e6e7-4d69-9a82-bd4844450cff', CAST(N'2020-05-20' AS Date), CAST(N'2020-05-20' AS Date), 0)
INSERT [dbo].[Candidaturas] ([Id], [Status], [EstadoId], [CandidatoId], [OportunidadeId], [CreatedAt], [UpdatedAt], [IsAnalizado]) VALUES (N'5c92aa65-107b-4982-8919-23bda085af05', 1, NULL, N'8484b790-7878-4bbe-9ccb-b8a9c657932d', N'364eb306-ac9f-4a85-99a0-761bba53e209', CAST(N'2020-04-29' AS Date), CAST(N'2020-05-20' AS Date), 0)
INSERT [dbo].[Candidaturas] ([Id], [Status], [EstadoId], [CandidatoId], [OportunidadeId], [CreatedAt], [UpdatedAt], [IsAnalizado]) VALUES (N'64c18e4b-fe0b-4c82-adec-adfeb97ffd14', 1, NULL, N'e81f3f54-29a7-4a4a-ac54-7afedd5b21ed', N'c2d16eb5-e6e7-4d69-9a82-bd4844450cff', CAST(N'2020-05-20' AS Date), CAST(N'2020-05-20' AS Date), 0)
INSERT [dbo].[Candidaturas] ([Id], [Status], [EstadoId], [CandidatoId], [OportunidadeId], [CreatedAt], [UpdatedAt], [IsAnalizado]) VALUES (N'64c4afbd-b8e3-489e-ac64-c47bafed5671', 1, NULL, N'8484b790-7878-4bbe-9ccb-b8a9c657932d', N'e965f3ba-d882-426c-84d5-a7ff110a6070', CAST(N'2020-04-30' AS Date), CAST(N'2020-04-30' AS Date), 0)
INSERT [dbo].[Candidaturas] ([Id], [Status], [EstadoId], [CandidatoId], [OportunidadeId], [CreatedAt], [UpdatedAt], [IsAnalizado]) VALUES (N'7ac64dce-ec5f-47a6-b145-813903a60777', 1, NULL, N'8484b790-7878-4bbe-9ccb-b8a9c657932d', N'07362b1f-2e5b-4739-aa45-e2c4de7a55da', CAST(N'2020-04-29' AS Date), CAST(N'2020-05-19' AS Date), 0)
INSERT [dbo].[Candidaturas] ([Id], [Status], [EstadoId], [CandidatoId], [OportunidadeId], [CreatedAt], [UpdatedAt], [IsAnalizado]) VALUES (N'7c5a32d1-bdf1-433e-aa9f-6d0b0ea293d3', 1, NULL, N'8484b790-7878-4bbe-9ccb-b8a9c657932d', N'640483ba-cf07-453d-a081-d53199377a4f', CAST(N'2020-04-30' AS Date), CAST(N'2020-04-30' AS Date), 0)
INSERT [dbo].[Candidaturas] ([Id], [Status], [EstadoId], [CandidatoId], [OportunidadeId], [CreatedAt], [UpdatedAt], [IsAnalizado]) VALUES (N'81c0e9db-5394-44ca-8ab4-2188cb0d614f', 1, NULL, N'8484b790-7878-4bbe-9ccb-b8a9c657932d', N'dd4f0dea-2a78-41b9-aa7b-9d4ee2351ff4', CAST(N'2020-04-30' AS Date), CAST(N'2020-04-30' AS Date), 0)
INSERT [dbo].[Candidaturas] ([Id], [Status], [EstadoId], [CandidatoId], [OportunidadeId], [CreatedAt], [UpdatedAt], [IsAnalizado]) VALUES (N'8c18f2c7-9694-404b-86ea-91ce046d79b5', 1, NULL, N'8c7f3623-88f6-42a1-97c3-97d90e1a4688', N'c2d16eb5-e6e7-4d69-9a82-bd4844450cff', CAST(N'2020-05-20' AS Date), CAST(N'2020-05-20' AS Date), 0)
INSERT [dbo].[Candidaturas] ([Id], [Status], [EstadoId], [CandidatoId], [OportunidadeId], [CreatedAt], [UpdatedAt], [IsAnalizado]) VALUES (N'9365dfb8-9a71-4e98-9fa4-f9a6e2648248', 1, NULL, N'83d622d3-b1c7-4c78-872f-fec6b21bb0d8', N'c2d16eb5-e6e7-4d69-9a82-bd4844450cff', CAST(N'2020-05-20' AS Date), CAST(N'2020-05-20' AS Date), 0)
INSERT [dbo].[Candidaturas] ([Id], [Status], [EstadoId], [CandidatoId], [OportunidadeId], [CreatedAt], [UpdatedAt], [IsAnalizado]) VALUES (N'a38a0bc0-5624-46ae-b773-786e7a051b52', 1, NULL, N'8679288e-86d1-499e-9f80-b3c5df03fc15', N'c2d16eb5-e6e7-4d69-9a82-bd4844450cff', CAST(N'2020-05-20' AS Date), CAST(N'2020-05-20' AS Date), 0)
INSERT [dbo].[Candidaturas] ([Id], [Status], [EstadoId], [CandidatoId], [OportunidadeId], [CreatedAt], [UpdatedAt], [IsAnalizado]) VALUES (N'a7e2940b-13de-481f-b788-acf28f5a084e', 1, NULL, N'8484b790-7878-4bbe-9ccb-b8a9c657932d', N'9776c19f-f3b2-4564-8bb4-957fcb067677', CAST(N'2020-04-30' AS Date), CAST(N'2020-04-30' AS Date), 0)
INSERT [dbo].[Candidaturas] ([Id], [Status], [EstadoId], [CandidatoId], [OportunidadeId], [CreatedAt], [UpdatedAt], [IsAnalizado]) VALUES (N'b31c5296-4d90-465e-b010-313dd06d5b5c', 1, NULL, N'8484b790-7878-4bbe-9ccb-b8a9c657932d', N'e04c8625-7eab-4f2a-a500-deed292e7cbe', CAST(N'2020-04-30' AS Date), CAST(N'2020-04-30' AS Date), 0)
INSERT [dbo].[Cargos] ([Id], [Designacao], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'DB2DACF2-6D27-4842-B3C4-B8C04B10A820', N'Telemarketing', 1, N'31cbe1a3-95eb-4c45-9d00-5d409dbde8a4', CAST(N'2020-03-01' AS Date), CAST(N'2020-03-01' AS Date))
INSERT [dbo].[Competencias] ([Id], [Designacao], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'00DAA0DA-17EA-4F24-81C2-E52201C48899', N'Trabalho em Equipa', 1, N'324ba64c-c949-40de-a7cb-ff9e7bd8951f', CAST(N'2020-03-01' AS Date), CAST(N'2020-03-01' AS Date))
INSERT [dbo].[Competencias] ([Id], [Designacao], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'15B2DAAB-D4AC-4E33-A779-DAAADA1275FE', N'Liderança', 1, N'324ba64c-c949-40de-a7cb-ff9e7bd8951f', CAST(N'2020-03-01' AS Date), CAST(N'2020-03-01' AS Date))
INSERT [dbo].[Competencias] ([Id], [Designacao], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'23546576-3DA6-45BC-8CB4-B4456BA53C48', N'Capacidade de Comunição', 1, N'324ba64c-c949-40de-a7cb-ff9e7bd8951f', CAST(N'2020-03-01' AS Date), CAST(N'2020-03-01' AS Date))
INSERT [dbo].[Competencias] ([Id], [Designacao], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'3A9E8858-114C-41A2-84D9-3D5B751A311D', N'Criatividade', 1, N'324ba64c-c949-40de-a7cb-ff9e7bd8951f', CAST(N'2020-03-01' AS Date), CAST(N'2020-03-01' AS Date))
INSERT [dbo].[Competencias] ([Id], [Designacao], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'4E1E1A77-B575-4D2C-B387-E5252849B909', N'Espirito empreendedor', 1, N'324ba64c-c949-40de-a7cb-ff9e7bd8951f', CAST(N'2020-03-01' AS Date), CAST(N'2020-03-01' AS Date))
INSERT [dbo].[Competencias] ([Id], [Designacao], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'5612BD67-AB5E-4691-B1D7-7DCADD77CD8D', N'Defesa e Negociação', 1, N'324ba64c-c949-40de-a7cb-ff9e7bd8951f', CAST(N'2020-03-01' AS Date), CAST(N'2020-03-01' AS Date))
INSERT [dbo].[Competencias] ([Id], [Designacao], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'5D34E912-76C8-4F36-AE07-216173093C27', N'Proatividade', 1, N'324ba64c-c949-40de-a7cb-ff9e7bd8951f', CAST(N'2020-03-01' AS Date), CAST(N'2020-03-01' AS Date))
INSERT [dbo].[Competencias] ([Id], [Designacao], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'72C94E95-228C-44E2-82CE-217F0B5024B4', N'Planeamento e gestão de carreira', 1, N'324ba64c-c949-40de-a7cb-ff9e7bd8951f', CAST(N'2020-03-01' AS Date), CAST(N'2020-03-01' AS Date))
INSERT [dbo].[Competencias] ([Id], [Designacao], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'8BD0D5DE-22C5-4694-9590-D5B48B345857', N'Relacionamento Interpessoal', 1, N'324ba64c-c949-40de-a7cb-ff9e7bd8951f', CAST(N'2020-03-01' AS Date), CAST(N'2020-03-01' AS Date))
INSERT [dbo].[Competencias] ([Id], [Designacao], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'9F87C2C1-B620-4BF9-AA60-C616C2CA3579', N'Marketing Digital', 1, N'324ba64c-c949-40de-a7cb-ff9e7bd8951f', CAST(N'2020-03-01' AS Date), CAST(N'2020-03-01' AS Date))
INSERT [dbo].[Competencias] ([Id], [Designacao], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'A0802D95-9E14-4E83-9DE0-1E93B911FB5E', N'Networking', 1, N'324ba64c-c949-40de-a7cb-ff9e7bd8951f', CAST(N'2020-03-01' AS Date), CAST(N'2020-03-01' AS Date))
INSERT [dbo].[Competencias] ([Id], [Designacao], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'BD1EF4EA-02B5-49AC-A600-38CA79428F6B', N'Autoconhecimento/ Autocontrolo', 1, N'324ba64c-c949-40de-a7cb-ff9e7bd8951f', CAST(N'2020-03-01' AS Date), CAST(N'2020-03-01' AS Date))
INSERT [dbo].[Competencias] ([Id], [Designacao], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'D4CAD5C3-6C6B-48E1-AAC8-EF2F6EDE02BA', N'Gestão de Projetos', 1, N'324ba64c-c949-40de-a7cb-ff9e7bd8951f', CAST(N'2020-03-01' AS Date), CAST(N'2020-03-01' AS Date))
INSERT [dbo].[Competencias] ([Id], [Designacao], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'E61EEFF1-1611-4B8A-B7C8-0965DD5CDE15', N'Tomada de decisões', 1, N'324ba64c-c949-40de-a7cb-ff9e7bd8951f', CAST(N'2020-03-01' AS Date), CAST(N'2020-03-01' AS Date))
INSERT [dbo].[Competencias] ([Id], [Designacao], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'F7DF1CFA-D924-4A9D-9803-57A66CD2306D', N'Resiliência', 1, N'324ba64c-c949-40de-a7cb-ff9e7bd8951f', CAST(N'2020-03-01' AS Date), CAST(N'2020-03-01' AS Date))
INSERT [dbo].[Contactos] ([Id], [Telefone], [Email], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'834529B8-0A7E-4EB1-B3FF-BB22C5BF91B3', N'927383510', N'pdkdidy2011@gmail.com', 1, NULL, CAST(N'2020-04-29' AS Date), CAST(N'2020-04-29' AS Date))
INSERT [dbo].[ContaUsuarios] ([Id], [UserName], [PassWord], [Status], [EstadoId], [PessoaId], [CreatedAt], [UpdatedAt], [Email], [EmailAlternativo], [Provider], [FotoUrl], [EmpresaId]) VALUES (N'087BE5CA-A03A-4573-B194-718FA57A96F4', N'InternacionalSeguros', N'$2a$08$5m.H/bbE7k.FU6AvSYkvKunv1eJP4Bf.sBA0nG7FS6TluuJtQrn6e', 1, NULL, NULL, CAST(N'2020-05-20' AS Date), CAST(N'2020-05-20' AS Date), N'internacionaseguros@gmail.com', NULL, 1, NULL, N'D83C6203-4B40-46C2-9AB6-03998AEF9C1C')
INSERT [dbo].[ContaUsuarios] ([Id], [UserName], [PassWord], [Status], [EstadoId], [PessoaId], [CreatedAt], [UpdatedAt], [Email], [EmailAlternativo], [Provider], [FotoUrl], [EmpresaId]) VALUES (N'0aac20c1-b6f9-413b-917c-2dea1c156fbe', N'LilianaLopes', N'$2a$08$XwOnnYmuCFmlL35zkkhO9eOoU.ncQ9V2S.xcwwY4bmukivKNjHlXO', 1, NULL, N'8c7f3623-88f6-42a1-97c3-97d90e1a4688', CAST(N'2020-05-20' AS Date), CAST(N'2020-05-20' AS Date), N'liliana@gmail.com', NULL, 0, NULL, NULL)
INSERT [dbo].[ContaUsuarios] ([Id], [UserName], [PassWord], [Status], [EstadoId], [PessoaId], [CreatedAt], [UpdatedAt], [Email], [EmailAlternativo], [Provider], [FotoUrl], [EmpresaId]) VALUES (N'11590b0f-e8df-4554-a234-5ac90bd32a5b', N'MaravilhaLopes', N'$2a$08$VTExGIVzECEX9VfdeqXMWemk/J/lIOcdoInxAPnfaB7M8kzVST5Pa', 1, NULL, N'e81f3f54-29a7-4a4a-ac54-7afedd5b21ed', CAST(N'2020-05-20' AS Date), CAST(N'2020-05-20' AS Date), N'mravilha@gmail.com', NULL, 0, NULL, NULL)
INSERT [dbo].[ContaUsuarios] ([Id], [UserName], [PassWord], [Status], [EstadoId], [PessoaId], [CreatedAt], [UpdatedAt], [Email], [EmailAlternativo], [Provider], [FotoUrl], [EmpresaId]) VALUES (N'69e98f71-953a-4c02-a8c4-ff08aaac3d03', N'AfonsoMatumona', N'$2a$08$fBAELpdNkyF/rOVpZxYnz.ihz3AGSo6T/YWOqy3ExujJYdA8iaBny', 1, NULL, N'8679288e-86d1-499e-9f80-b3c5df03fc15', CAST(N'2020-05-20' AS Date), CAST(N'2020-05-20' AS Date), N'afonsomatElias@gmail.com', NULL, 0, NULL, NULL)
INSERT [dbo].[ContaUsuarios] ([Id], [UserName], [PassWord], [Status], [EstadoId], [PessoaId], [CreatedAt], [UpdatedAt], [Email], [EmailAlternativo], [Provider], [FotoUrl], [EmpresaId]) VALUES (N'71413301-7230-4188-82d2-6ff0de34ceff', N'AntonioLopes', N'$2a$08$5m.H/bbE7k.FU6AvSYkvKunv1eJP4Bf.sBA0nG7FS6TluuJtQrn6e', 1, NULL, N'8484b790-7878-4bbe-9ccb-b8a9c657932d', CAST(N'2020-04-29' AS Date), CAST(N'2020-04-29' AS Date), N'antonio@gmail.com', NULL, 0, NULL, NULL)
INSERT [dbo].[ContaUsuarios] ([Id], [UserName], [PassWord], [Status], [EstadoId], [PessoaId], [CreatedAt], [UpdatedAt], [Email], [EmailAlternativo], [Provider], [FotoUrl], [EmpresaId]) VALUES (N'774E994B-4A25-486E-B37E-5B8024EF5501', N'SNIR', N'$2a$08$5m.H/bbE7k.FU6AvSYkvKunv1eJP4Bf.sBA0nG7FS6TluuJtQrn6e', 1, NULL, NULL, CAST(N'2020-05-20' AS Date), CAST(N'2020-05-20' AS Date), N'snir@gmail.com', NULL, 1, NULL, N'73BFE246-1370-4221-B51B-25C68AADCF29')
INSERT [dbo].[ContaUsuarios] ([Id], [UserName], [PassWord], [Status], [EstadoId], [PessoaId], [CreatedAt], [UpdatedAt], [Email], [EmailAlternativo], [Provider], [FotoUrl], [EmpresaId]) VALUES (N'8c86b066-00d5-4ac9-a111-be138601fce9', N'RosaLopes', N'$2a$08$NLLzCjQ9BTgzCuqk2Y7qrumKuUv/0livzt1SysQmPm8O1N2cbwjJm', 1, NULL, N'c971ecec-9b3f-40d9-9ac2-cc64d4fb01ee', CAST(N'2020-05-20' AS Date), CAST(N'2020-05-20' AS Date), N'rosa@gmail.com', NULL, 0, NULL, NULL)
INSERT [dbo].[ContaUsuarios] ([Id], [UserName], [PassWord], [Status], [EstadoId], [PessoaId], [CreatedAt], [UpdatedAt], [Email], [EmailAlternativo], [Provider], [FotoUrl], [EmpresaId]) VALUES (N'c31880eb-c39c-4f67-9353-14afc3ec936c', N'WilsonLopes', N'$2a$08$N/43rS0kz8tZAN45FTZQzuC5TG5GvQ3RV5Dp3FL8Fc6qmulmOXRty', 1, NULL, N'83d622d3-b1c7-4c78-872f-fec6b21bb0d8', CAST(N'2020-05-20' AS Date), CAST(N'2020-05-20' AS Date), N'wilson@gmail.com', NULL, 0, NULL, NULL)
INSERT [dbo].[CurriculoDetalhes] ([Id], [CurriculoId], [DetalheId], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'16bb3a66-e67e-4351-ad2f-7bda149f807a', N'5E577F69-2CAE-4777-9507-FC0095635554', N'98d13bb4-f87c-4f40-a07f-56976db9508d', 1, NULL, CAST(N'2020-06-07' AS Date), CAST(N'2020-06-07' AS Date))
INSERT [dbo].[CurriculoDetalhes] ([Id], [CurriculoId], [DetalheId], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'B556826A-6642-498C-8A6E-16CAF2847B8F', N'5E577F69-2CAE-4777-9507-FC0095635554', N'40ECA536-7D26-4C35-BFD3-515DBF14EC4F', 1, NULL, CAST(N'2020-04-29' AS Date), CAST(N'2020-04-29' AS Date))
INSERT [dbo].[CurriculoDetalhes] ([Id], [CurriculoId], [DetalheId], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'D4B6FEEF-156F-4473-B2B5-2015F62C9868', N'5E577F69-2CAE-4777-9507-FC0095635554', N'3BDD9E10-6D52-4D20-87D4-F786B2B79D8A', 1, N'324ba64c-c949-40de-a7cb-ff9e7bd8951f', CAST(N'2020-05-20' AS Date), CAST(N'2020-05-20' AS Date))
INSERT [dbo].[CurriculoDetalhes] ([Id], [CurriculoId], [DetalheId], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'F9C20FA6-58FF-40FE-B659-925F5D0DAE90', N'5E577F69-2CAE-4777-9507-FC0095635554', N'7CA3D2C2-42A7-4299-99FD-8EF4A7A07BED', 1, NULL, CAST(N'2020-04-29' AS Date), CAST(N'2020-04-29' AS Date))
INSERT [dbo].[CurriculoHobes] ([Id], [CurriculoId], [HobesId], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'1FD1B218-599C-43D9-8AEE-D66267BC7BEE', N'5E577F69-2CAE-4777-9507-FC0095635554', N'C46D7553-7461-490A-A279-2A109A82D6AF', 1, N'324ba64c-c949-40de-a7cb-ff9e7bd8951f', CAST(N'2020-05-20' AS Date), CAST(N'2020-05-20' AS Date))
INSERT [dbo].[CurriculoHobes] ([Id], [CurriculoId], [HobesId], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'6C43FE06-4F14-4443-ABFA-4F33E0001801', N'5E577F69-2CAE-4777-9507-FC0095635554', N'0E6263B3-7F80-4D58-840C-9FD5B450456D', 1, N'324ba64c-c949-40de-a7cb-ff9e7bd8951f', CAST(N'2020-05-20' AS Date), CAST(N'2020-05-20' AS Date))
INSERT [dbo].[CurriculoHobes] ([Id], [CurriculoId], [HobesId], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'accf82b7-0d5a-4eb8-aaac-2d2132368c51', N'5E577F69-2CAE-4777-9507-FC0095635554', N'bb69070e-73dc-43f3-8c62-61e10e8079cd', 1, NULL, CAST(N'2020-06-07' AS Date), CAST(N'2020-06-07' AS Date))
INSERT [dbo].[Curriculos] ([Id], [Designacao], [Status], [EstadoId], [CreatedAt], [UpdatedAt], [CandidatoId], [ResumoProfissional]) VALUES (N'5E577F69-2CAE-4777-9507-FC0095635554', N'CTO da Internacional Seguros', 1, NULL, CAST(N'2020-05-20' AS Date), CAST(N'2020-05-20' AS Date), N'8484b790-7878-4bbe-9ccb-b8a9c657932d', N'O resumo de qualificações deve chamar a atenção do recrutador para que no máximo em dois segundos ele tenha vontade de')
INSERT [dbo].[CurriculoSkills] ([Id], [CurriculoId], [SkillsId], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'282B52D4-49B3-4C00-889D-0E7B0D3612E2', N'5E577F69-2CAE-4777-9507-FC0095635554', N'0D8D7AA4-E03E-4C47-8D72-83DA8E16596F', 1, NULL, CAST(N'2020-05-20' AS Date), CAST(N'2020-05-20' AS Date))
INSERT [dbo].[CurriculoSkills] ([Id], [CurriculoId], [SkillsId], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'5782165E-0765-4069-895E-EA2B2CB9FFE2', N'5E577F69-2CAE-4777-9507-FC0095635554', N'3059D3DB-A547-48C3-993B-A8EDD155EF7E', 1, NULL, CAST(N'2020-05-20' AS Date), CAST(N'2020-05-20' AS Date))
INSERT [dbo].[Detalhes] ([Id], [Designacao], [NomeDaInstituicao], [DescricaoDaInstituicao], [LocalDaInstituicao], [DataInicio], [DataFim], [Status], [EstadoId], [CreatedAt], [UpdatedAt], [TipoDetalheId]) VALUES (N'3BDD9E10-6D52-4D20-87D4-F786B2B79D8A', N'Tecnico de T.I', N'Sedima', N'Empresa de Prestação de serviço', N'Cacuaco', N'2020-05-20', N'2022-05-20', 1, N'324ba64c-c949-40de-a7cb-ff9e7bd8951f', CAST(N'2020-05-20' AS Date), CAST(N'2020-05-20' AS Date), N'abd9512f-7e77-45ab-ac8e-59c4a000854c')
INSERT [dbo].[Detalhes] ([Id], [Designacao], [NomeDaInstituicao], [DescricaoDaInstituicao], [LocalDaInstituicao], [DataInicio], [DataFim], [Status], [EstadoId], [CreatedAt], [UpdatedAt], [TipoDetalheId]) VALUES (N'40ECA536-7D26-4C35-BFD3-515DBF14EC4F', N'Coletor de Lixo', N'CRS', N'Coleita de Residio Sólido', N'Kilamba', N'2020-04-29', N'2020-04-29', 1, NULL, CAST(N'2020-04-29' AS Date), CAST(N'2020-04-29' AS Date), N'abd9512f-7e77-45ab-ac8e-59c4a000854c')
INSERT [dbo].[Detalhes] ([Id], [Designacao], [NomeDaInstituicao], [DescricaoDaInstituicao], [LocalDaInstituicao], [DataInicio], [DataFim], [Status], [EstadoId], [CreatedAt], [UpdatedAt], [TipoDetalheId]) VALUES (N'7CA3D2C2-42A7-4299-99FD-8EF4A7A07BED', N'Coletor de Lixo', N'CRS', N'Coleita de Residio Sólido', N'Kilamba', N'2020-04-29', N'2020-04-29', 1, NULL, CAST(N'2020-04-29' AS Date), CAST(N'2020-04-29' AS Date), N'4975c214-e34c-4842-9fd0-f3c38a349540')
INSERT [dbo].[Detalhes] ([Id], [Designacao], [NomeDaInstituicao], [DescricaoDaInstituicao], [LocalDaInstituicao], [DataInicio], [DataFim], [Status], [EstadoId], [CreatedAt], [UpdatedAt], [TipoDetalheId]) VALUES (N'98d13bb4-f87c-4f40-a07f-56976db9508d', N'Engenharia Informáticxa', N'Universidade Metodista de Angola', N'Melhor Estuda
', N'Kinaxixi', N'20/08/2015', N'26/08/2020', 1, NULL, CAST(N'2020-06-07' AS Date), CAST(N'2020-06-07' AS Date), N'3f93a41f-3acb-4a57-ae80-7671c0a10d8b')
INSERT [dbo].[Empresas] ([Id], [Designacao], [Nif], [RazaoSocial], [Missao], [Visao], [Status], [EstadoId], [CreatedAt], [UpdatedAt], [SectorDeAtividade]) VALUES (N'73BFE246-1370-4221-B51B-25C68AADCF29', N'SNIR', N'055114230023', N'Snir software Soluction', N'As organizações precisam ter uma razão de ser para que seus propósitos sejam atingidos e entendidos', N'Desenvolver os meus softwares do muundo', 1, NULL, CAST(N'2020-05-20' AS Date), CAST(N'2020-05-20' AS Date), N'Informação e T.I')
INSERT [dbo].[Empresas] ([Id], [Designacao], [Nif], [RazaoSocial], [Missao], [Visao], [Status], [EstadoId], [CreatedAt], [UpdatedAt], [SectorDeAtividade]) VALUES (N'D83C6203-4B40-46C2-9AB6-03998AEF9C1C', N'IS', N'0554230023', N'Internacional Seguros', N'As organizações precisam ter uma razão de ser para que seus propósitos sejam atingidos e entendidos', N'Proteger', 1, NULL, CAST(N'2020-05-20' AS Date), CAST(N'2020-05-20' AS Date), N'Seguros e Bancas')
INSERT [dbo].[Estados] ([Id], [Designacao], [Status], [CreatedAt], [UpdatedAt]) VALUES (N'049e81aa-635b-4e13-ae3f-a8082345b469', N'Pendente', 1, CAST(N'2019-12-31' AS Date), CAST(N'2019-12-31' AS Date))
INSERT [dbo].[Estados] ([Id], [Designacao], [Status], [CreatedAt], [UpdatedAt]) VALUES (N'1adb7081-fb0b-47da-93e6-6c4c423e696a', N'Lopes Antonio', 1, CAST(N'2020-03-01' AS Date), CAST(N'2020-03-01' AS Date))
INSERT [dbo].[Estados] ([Id], [Designacao], [Status], [CreatedAt], [UpdatedAt]) VALUES (N'31cbe1a3-95eb-4c45-9d00-5d409dbde8a4', N'Suspenso', 1, CAST(N'2019-12-31' AS Date), CAST(N'2019-12-31' AS Date))
INSERT [dbo].[Estados] ([Id], [Designacao], [Status], [CreatedAt], [UpdatedAt]) VALUES (N'324ba64c-c949-40de-a7cb-ff9e7bd8951f', N'Ativo', 1, CAST(N'2019-12-31' AS Date), CAST(N'2019-12-31' AS Date))
INSERT [dbo].[Estados] ([Id], [Designacao], [Status], [CreatedAt], [UpdatedAt]) VALUES (N'49b38078-36e4-4d9b-868d-566679fc5e24', N'Bloqueado', 1, CAST(N'2019-12-31' AS Date), CAST(N'2019-12-31' AS Date))
INSERT [dbo].[Estados] ([Id], [Designacao], [Status], [CreatedAt], [UpdatedAt]) VALUES (N'868564a2-2b73-4933-a5bf-5493dc7d6e74', N'Cancelado', 1, CAST(N'2019-12-31' AS Date), CAST(N'2019-12-31' AS Date))
INSERT [dbo].[Estados] ([Id], [Designacao], [Status], [CreatedAt], [UpdatedAt]) VALUES (N'e7a968e8-6a70-4ea0-9b98-bd48f13ef216', N'Concluido', 1, CAST(N'2019-12-31' AS Date), CAST(N'2019-12-31' AS Date))
INSERT [dbo].[Hobes] ([Id], [Designacao], [Percentagem], [Descricao], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'0E6263B3-7F80-4D58-840C-9FD5B450456D', N'Cantar', 80, N'Cantar faz bem', 1, NULL, CAST(N'2020-05-20' AS Date), CAST(N'2020-05-20' AS Date))
INSERT [dbo].[Hobes] ([Id], [Designacao], [Percentagem], [Descricao], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'bb69070e-73dc-43f3-8c62-61e10e8079cd', N'Progrmacao', 22, N'A', 1, NULL, CAST(N'2020-06-07' AS Date), CAST(N'2020-06-07' AS Date))
INSERT [dbo].[Hobes] ([Id], [Designacao], [Percentagem], [Descricao], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'C46D7553-7461-490A-A279-2A109A82D6AF', N'Ouvir Musicas', 80, N'Ouvir musica faz bem', 1, NULL, CAST(N'2020-05-20' AS Date), CAST(N'2020-05-20' AS Date))
INSERT [dbo].[Idiomas] ([Id], [Designacao], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'23750792-B480-46B3-8385-1EE1DBD975A8', N'Francês', 1, N'324ba64c-c949-40de-a7cb-ff9e7bd8951f', CAST(N'2020-03-01' AS Date), CAST(N'2020-03-01' AS Date))
INSERT [dbo].[Idiomas] ([Id], [Designacao], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'AF671B93-4996-4671-B155-2A505E1CC5C2', N'Português', 1, N'324ba64c-c949-40de-a7cb-ff9e7bd8951f', CAST(N'2020-03-01' AS Date), CAST(N'2020-03-01' AS Date))
INSERT [dbo].[Idiomas] ([Id], [Designacao], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'C93156CC-8CEF-4BB1-A926-C6BA2DA1B34E', N'Inglês', 1, N'324ba64c-c949-40de-a7cb-ff9e7bd8951f', CAST(N'2020-03-01' AS Date), CAST(N'2020-03-01' AS Date))
INSERT [dbo].[Nacionalidades] ([Id], [Designacao], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'4A0048BF-7EDB-4E8A-B5AF-707F0EE99FD9', N'Inglaterra', 1, N'324ba64c-c949-40de-a7cb-ff9e7bd8951f', NULL, NULL)
INSERT [dbo].[Nacionalidades] ([Id], [Designacao], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'564E1716-0CC3-4889-AE1B-712AF9CAC2D7', N'Índia', 1, N'324ba64c-c949-40de-a7cb-ff9e7bd8951f', NULL, NULL)
INSERT [dbo].[Nacionalidades] ([Id], [Designacao], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'57C872E3-1112-4F05-A704-74EEF93A76B1', N'Africa do Sul', 1, N'324ba64c-c949-40de-a7cb-ff9e7bd8951f', NULL, NULL)
INSERT [dbo].[Nacionalidades] ([Id], [Designacao], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'5E1C07B4-CB28-4C3A-A282-272BFAC6E863', N'França', 1, N'324ba64c-c949-40de-a7cb-ff9e7bd8951f', NULL, NULL)
INSERT [dbo].[Nacionalidades] ([Id], [Designacao], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'6942B28F-B5B5-43A9-93D4-23A4FF0A7A4B', N'Brasil', 1, N'324ba64c-c949-40de-a7cb-ff9e7bd8951f', NULL, NULL)
INSERT [dbo].[Nacionalidades] ([Id], [Designacao], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'AC083095-F00E-4795-AD6E-F7C8FC330F45', N'Angola', 1, N'324ba64c-c949-40de-a7cb-ff9e7bd8951f', NULL, NULL)
INSERT [dbo].[Nacionalidades] ([Id], [Designacao], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'E2B13D02-5D46-4638-A2D8-0514B843782D', N'Estado Unidos das América', 1, N'324ba64c-c949-40de-a7cb-ff9e7bd8951f', NULL, NULL)
INSERT [dbo].[OportunidadeBeneficios] ([Id], [BeneficioId], [OportunidadeId], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'45f8a473-5095-407f-aba9-1cb7d72c2ea4', N'C481DACD-5DFF-49F5-B707-285E924D19A1', N'dd4f0dea-2a78-41b9-aa7b-9d4ee2351ff4', 1, N'049e81aa-635b-4e13-ae3f-a8082345b469', CAST(N'2020-03-01' AS Date), CAST(N'2020-03-01' AS Date))
INSERT [dbo].[OportunidadeBeneficios] ([Id], [BeneficioId], [OportunidadeId], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'4698f593-0a13-4d46-bad2-a3a6b8ee3c33', N'C481DACD-5DFF-49F5-B707-285E924D19A1', N'364eb306-ac9f-4a85-99a0-761bba53e209', 1, N'324ba64c-c949-40de-a7cb-ff9e7bd8951f', CAST(N'2020-03-01' AS Date), CAST(N'2020-03-01' AS Date))
INSERT [dbo].[OportunidadeBeneficios] ([Id], [BeneficioId], [OportunidadeId], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'67318142-d99d-4087-811a-fcf84afa576b', N'C481DACD-5DFF-49F5-B707-285E924D19A1', N'640483ba-cf07-453d-a081-d53199377a4f', 1, N'31cbe1a3-95eb-4c45-9d00-5d409dbde8a4', CAST(N'2020-03-25' AS Date), CAST(N'2020-03-25' AS Date))
INSERT [dbo].[OportunidadeBeneficios] ([Id], [BeneficioId], [OportunidadeId], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'859c1568-19e1-4b53-b7cf-5f8d1c3b6faf', N'E1A34EEA-6C34-40AA-8225-3CF48A58BA74', N'364eb306-ac9f-4a85-99a0-761bba53e209', 1, N'324ba64c-c949-40de-a7cb-ff9e7bd8951f', CAST(N'2020-03-01' AS Date), CAST(N'2020-03-01' AS Date))
INSERT [dbo].[OportunidadeBeneficios] ([Id], [BeneficioId], [OportunidadeId], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'c732b38b-c3ad-42cc-91da-589395aee31c', N'E1A34EEA-6C34-40AA-8225-3CF48A58BA74', N'dd4f0dea-2a78-41b9-aa7b-9d4ee2351ff4', 1, N'049e81aa-635b-4e13-ae3f-a8082345b469', CAST(N'2020-03-01' AS Date), CAST(N'2020-03-01' AS Date))
INSERT [dbo].[OportunidadeBeneficios] ([Id], [BeneficioId], [OportunidadeId], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'c8bec091-09b9-44d8-acaf-89de77d2558f', N'C481DACD-5DFF-49F5-B707-285E924D19A1', N'9776c19f-f3b2-4564-8bb4-957fcb067677', 1, N'1adb7081-fb0b-47da-93e6-6c4c423e696a', CAST(N'2020-03-05' AS Date), CAST(N'2020-03-05' AS Date))
INSERT [dbo].[OportunidadeCompetencias] ([Id], [CompetenciaId], [OportunidadeId], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'12bed261-f0d3-4f18-bbc6-fa8290ae9d8e', N'00DAA0DA-17EA-4F24-81C2-E52201C48899', N'640483ba-cf07-453d-a081-d53199377a4f', 1, N'31cbe1a3-95eb-4c45-9d00-5d409dbde8a4', CAST(N'2020-03-25' AS Date), CAST(N'2020-03-25' AS Date))
INSERT [dbo].[OportunidadeCompetencias] ([Id], [CompetenciaId], [OportunidadeId], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'1a562026-0ea0-484e-87e6-69852381aa7d', N'23546576-3DA6-45BC-8CB4-B4456BA53C48', N'9776c19f-f3b2-4564-8bb4-957fcb067677', 1, N'1adb7081-fb0b-47da-93e6-6c4c423e696a', CAST(N'2020-03-05' AS Date), CAST(N'2020-03-05' AS Date))
INSERT [dbo].[OportunidadeCompetencias] ([Id], [CompetenciaId], [OportunidadeId], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'695b822e-6083-48d2-9cc6-fd42f4e01d46', N'15B2DAAB-D4AC-4E33-A779-DAAADA1275FE', N'dd4f0dea-2a78-41b9-aa7b-9d4ee2351ff4', 1, N'049e81aa-635b-4e13-ae3f-a8082345b469', CAST(N'2020-03-01' AS Date), CAST(N'2020-03-01' AS Date))
INSERT [dbo].[OportunidadeCompetencias] ([Id], [CompetenciaId], [OportunidadeId], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'846b4a07-7307-40a8-85a6-34285c551d89', N'4E1E1A77-B575-4D2C-B387-E5252849B909', N'dd4f0dea-2a78-41b9-aa7b-9d4ee2351ff4', 1, N'049e81aa-635b-4e13-ae3f-a8082345b469', CAST(N'2020-03-01' AS Date), CAST(N'2020-03-01' AS Date))
INSERT [dbo].[OportunidadeIdiomas] ([Id], [IdiomaId], [OportunidadeId], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'02a667c0-ba7c-4c58-9e6d-07ce2042467d', N'AF671B93-4996-4671-B155-2A505E1CC5C2', N'9c0f0fee-edf5-45b6-bf2c-6e547e68f8ed', 1, N'049e81aa-635b-4e13-ae3f-a8082345b469', CAST(N'2020-03-01' AS Date), CAST(N'2020-03-01' AS Date))
INSERT [dbo].[OportunidadeIdiomas] ([Id], [IdiomaId], [OportunidadeId], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'43852d57-7cfc-428e-8b33-6cbe519caa99', N'AF671B93-4996-4671-B155-2A505E1CC5C2', N'640483ba-cf07-453d-a081-d53199377a4f', 1, N'049e81aa-635b-4e13-ae3f-a8082345b469', CAST(N'2020-03-25' AS Date), CAST(N'2020-03-25' AS Date))
INSERT [dbo].[OportunidadeIdiomas] ([Id], [IdiomaId], [OportunidadeId], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'50c9cb52-1dcf-4550-93f3-3e0fc0e746fe', N'AF671B93-4996-4671-B155-2A505E1CC5C2', N'dd4f0dea-2a78-41b9-aa7b-9d4ee2351ff4', 1, N'049e81aa-635b-4e13-ae3f-a8082345b469', CAST(N'2020-03-01' AS Date), CAST(N'2020-03-01' AS Date))
INSERT [dbo].[OportunidadeIdiomas] ([Id], [IdiomaId], [OportunidadeId], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'572c302a-8aaa-499a-8fe0-c35a6a12a3b6', N'23750792-B480-46B3-8385-1EE1DBD975A8', N'dd4f0dea-2a78-41b9-aa7b-9d4ee2351ff4', 1, N'049e81aa-635b-4e13-ae3f-a8082345b469', CAST(N'2020-03-01' AS Date), CAST(N'2020-03-01' AS Date))
INSERT [dbo].[OportunidadeIdiomas] ([Id], [IdiomaId], [OportunidadeId], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'6052345c-b725-4ff5-bb11-0b9912f33edf', N'C93156CC-8CEF-4BB1-A926-C6BA2DA1B34E', N'364eb306-ac9f-4a85-99a0-761bba53e209', 1, N'049e81aa-635b-4e13-ae3f-a8082345b469', CAST(N'2020-03-01' AS Date), CAST(N'2020-03-01' AS Date))
INSERT [dbo].[OportunidadeIdiomas] ([Id], [IdiomaId], [OportunidadeId], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'821a3d3e-732e-4f7a-ba1a-a4970ebd2c05', N'AF671B93-4996-4671-B155-2A505E1CC5C2', N'c1fb9262-faa9-4520-9f69-d60994a444ea', 1, N'049e81aa-635b-4e13-ae3f-a8082345b469', CAST(N'2020-03-01' AS Date), CAST(N'2020-03-01' AS Date))
INSERT [dbo].[OportunidadeIdiomas] ([Id], [IdiomaId], [OportunidadeId], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'8aa407e5-4097-4e34-8e45-7b9e2215edd6', N'AF671B93-4996-4671-B155-2A505E1CC5C2', N'c2d16eb5-e6e7-4d69-9a82-bd4844450cff', 1, N'049e81aa-635b-4e13-ae3f-a8082345b469', CAST(N'2020-03-01' AS Date), CAST(N'2020-03-01' AS Date))
INSERT [dbo].[OportunidadeIdiomas] ([Id], [IdiomaId], [OportunidadeId], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'9252fd02-51a7-4ed2-9143-05aa780d375b', N'AF671B93-4996-4671-B155-2A505E1CC5C2', N'9776c19f-f3b2-4564-8bb4-957fcb067677', 1, N'049e81aa-635b-4e13-ae3f-a8082345b469', CAST(N'2020-03-05' AS Date), CAST(N'2020-03-05' AS Date))
INSERT [dbo].[OportunidadeIdiomas] ([Id], [IdiomaId], [OportunidadeId], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'9f22a34d-ec42-41f4-b7ae-45c7e80b3e28', N'C93156CC-8CEF-4BB1-A926-C6BA2DA1B34E', N'dd4f0dea-2a78-41b9-aa7b-9d4ee2351ff4', 1, N'049e81aa-635b-4e13-ae3f-a8082345b469', CAST(N'2020-03-01' AS Date), CAST(N'2020-03-01' AS Date))
INSERT [dbo].[OportunidadeIdiomas] ([Id], [IdiomaId], [OportunidadeId], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'e8b2e33b-c95e-4c9e-97a0-69aba4c960f3', N'C93156CC-8CEF-4BB1-A926-C6BA2DA1B34E', N'c1fb9262-faa9-4520-9f69-d60994a444ea', 1, N'049e81aa-635b-4e13-ae3f-a8082345b469', CAST(N'2020-03-01' AS Date), CAST(N'2020-03-01' AS Date))
INSERT [dbo].[Oportunidades] ([Id], [CargaHoraria], [Salario], [DataLimite], [Status], [IsFinalizado], [EstadoId], [Cidade], [CreatedAt], [UpdatedAt], [TipoEmpregoId], [TipoFormacaoId], [TipoFuncaoId], [ProvinciaId], [NacionalidadeId], [Experiencia], [NumVagas], [Detalhes], [CargoId], [EmpresaId]) VALUES (N'07362b1f-2e5b-4739-aa45-e2c4de7a55da', N'3 hrs', N'12121', CAST(N'2020-09-09' AS Date), 1, 1, N'31cbe1a3-95eb-4c45-9d00-5d409dbde8a4', N'Luanda', CAST(N'2020-03-01' AS Date), CAST(N'2020-03-01' AS Date), N'aa69b9ac-e02f-4f89-9b4a-51da89482362', N'61c1b34c-6319-4768-9d4f-691e0af7339d', N'1C94E5CE-80CC-4687-A238-66AF733255AF', N'3C6B4D42-10B2-4F24-A839-8D9EA577F65A', N'5E1C07B4-CB28-4C3A-A282-272BFAC6E863', N'1 ano', N'41', N'O Web Design envolve trabalhos ligados à layout e design de páginas online assim como produção de conteúdos, embora costume ser mais aplicado à criação de sites', N'DB2DACF2-6D27-4842-B3C4-B8C04B10A820', N'73BFE246-1370-4221-B51B-25C68AADCF29')
INSERT [dbo].[Oportunidades] ([Id], [CargaHoraria], [Salario], [DataLimite], [Status], [IsFinalizado], [EstadoId], [Cidade], [CreatedAt], [UpdatedAt], [TipoEmpregoId], [TipoFormacaoId], [TipoFuncaoId], [ProvinciaId], [NacionalidadeId], [Experiencia], [NumVagas], [Detalhes], [CargoId], [EmpresaId]) VALUES (N'364eb306-ac9f-4a85-99a0-761bba53e209', N'3 hrs', N'12', CAST(N'2020-09-09' AS Date), 1, 0, N'31cbe1a3-95eb-4c45-9d00-5d409dbde8a4', N'Luanda', CAST(N'2020-03-01' AS Date), CAST(N'2020-03-01' AS Date), N'8c90988e-7d44-49f1-af6c-57db211d33f6', N'0bf30c1a-ca6a-4560-a068-cb3c34c5fd5c', N'7BC4CD48-3159-4A13-A65A-D1797B4BD062', N'48336B30-D029-4FCE-AA92-B78D1ACA6688', N'5E1C07B4-CB28-4C3A-A282-272BFAC6E863', N'2 anos', N'24', N'O Web Design envolve trabalhos ligados à layout e design de páginas online assim como produção de conteúdos, embora costume ser mais aplicado à criação de sites', N'DB2DACF2-6D27-4842-B3C4-B8C04B10A820', N'73BFE246-1370-4221-B51B-25C68AADCF29')
INSERT [dbo].[Oportunidades] ([Id], [CargaHoraria], [Salario], [DataLimite], [Status], [IsFinalizado], [EstadoId], [Cidade], [CreatedAt], [UpdatedAt], [TipoEmpregoId], [TipoFormacaoId], [TipoFuncaoId], [ProvinciaId], [NacionalidadeId], [Experiencia], [NumVagas], [Detalhes], [CargoId], [EmpresaId]) VALUES (N'36ddc7dd-8b6b-422a-81df-4218b1cc058e', N'3 hrs', N'2112', CAST(N'2020-09-09' AS Date), 1, 1, N'31cbe1a3-95eb-4c45-9d00-5d409dbde8a4', N'Luanda', CAST(N'2020-03-01' AS Date), CAST(N'2020-03-01' AS Date), N'8c90988e-7d44-49f1-af6c-57db211d33f6', N'0b9097b6-4dda-4b39-b228-b9426f91226c', N'F3CA8205-3048-4C3C-A8DA-DB628E27AB2A', N'3C6B4D42-10B2-4F24-A839-8D9EA577F65A', N'57C872E3-1112-4F05-A704-74EEF93A76B1', N'2 anos', N'22', N'O Web Design envolve trabalhos ligados à layout e design de páginas online assim como produção de conteúdos, embora costume ser mais aplicado à criação de sites', N'DB2DACF2-6D27-4842-B3C4-B8C04B10A820', N'73BFE246-1370-4221-B51B-25C68AADCF29')
INSERT [dbo].[Oportunidades] ([Id], [CargaHoraria], [Salario], [DataLimite], [Status], [IsFinalizado], [EstadoId], [Cidade], [CreatedAt], [UpdatedAt], [TipoEmpregoId], [TipoFormacaoId], [TipoFuncaoId], [ProvinciaId], [NacionalidadeId], [Experiencia], [NumVagas], [Detalhes], [CargoId], [EmpresaId]) VALUES (N'600fb8e7-4c83-450a-91de-88d4e92f7a3b', N'3 hrs', N'2112', CAST(N'2020-09-09' AS Date), 1, 1, N'31cbe1a3-95eb-4c45-9d00-5d409dbde8a4', N'Luanda', CAST(N'2020-03-01' AS Date), CAST(N'2020-03-01' AS Date), N'8c90988e-7d44-49f1-af6c-57db211d33f6', N'0b9097b6-4dda-4b39-b228-b9426f91226c', N'F3CA8205-3048-4C3C-A8DA-DB628E27AB2A', N'3C6B4D42-10B2-4F24-A839-8D9EA577F65A', N'57C872E3-1112-4F05-A704-74EEF93A76B1', N'10 anos', N'22', N'O Web Design envolve trabalhos ligados à layout e design de páginas online assim como produção de conteúdos, embora costume ser mais aplicado à criação de sites', N'DB2DACF2-6D27-4842-B3C4-B8C04B10A820', N'73BFE246-1370-4221-B51B-25C68AADCF29')
INSERT [dbo].[Oportunidades] ([Id], [CargaHoraria], [Salario], [DataLimite], [Status], [IsFinalizado], [EstadoId], [Cidade], [CreatedAt], [UpdatedAt], [TipoEmpregoId], [TipoFormacaoId], [TipoFuncaoId], [ProvinciaId], [NacionalidadeId], [Experiencia], [NumVagas], [Detalhes], [CargoId], [EmpresaId]) VALUES (N'640483ba-cf07-453d-a081-d53199377a4f', N'3 hrs', N'211221', CAST(N'2020-09-09' AS Date), 1, 1, N'31cbe1a3-95eb-4c45-9d00-5d409dbde8a4', N'Luanda', CAST(N'2020-03-25' AS Date), CAST(N'2020-03-25' AS Date), N'4b067041-bf85-40b5-b04d-dfc3b04bc8f3', N'46bf281f-9c4f-4a29-a1ab-387dc83e1a1d', N'BE1CB345-902F-42E8-B4AB-E0E7D4BC0FBC', N'A65059AB-A6B7-471D-B868-530893A1AD46', N'57C872E3-1112-4F05-A704-74EEF93A76B1', N'2 anos', N'30', N'O Web Design envolve trabalhos ligados à layout e design de páginas online assim como produção de conteúdos, embora costume ser mais aplicado à criação de sites', N'DB2DACF2-6D27-4842-B3C4-B8C04B10A820', N'73BFE246-1370-4221-B51B-25C68AADCF29')
INSERT [dbo].[Oportunidades] ([Id], [CargaHoraria], [Salario], [DataLimite], [Status], [IsFinalizado], [EstadoId], [Cidade], [CreatedAt], [UpdatedAt], [TipoEmpregoId], [TipoFormacaoId], [TipoFuncaoId], [ProvinciaId], [NacionalidadeId], [Experiencia], [NumVagas], [Detalhes], [CargoId], [EmpresaId]) VALUES (N'784ae0e1-d68d-4ee8-85b9-c6dfa7a5b954', N'3 hrs', N'12121', CAST(N'2020-09-09' AS Date), 1, 1, N'31cbe1a3-95eb-4c45-9d00-5d409dbde8a4', N'Luanda', CAST(N'2020-03-01' AS Date), CAST(N'2020-03-01' AS Date), N'aa69b9ac-e02f-4f89-9b4a-51da89482362', N'61c1b34c-6319-4768-9d4f-691e0af7339d', N'1C94E5CE-80CC-4687-A238-66AF733255AF', N'3C6B4D42-10B2-4F24-A839-8D9EA577F65A', N'5E1C07B4-CB28-4C3A-A282-272BFAC6E863', N'1 ano', N'41', N'O Web Design envolve trabalhos ligados à layout e design de páginas online assim como produção de conteúdos, embora costume ser mais aplicado à criação de sites', N'DB2DACF2-6D27-4842-B3C4-B8C04B10A820', N'73BFE246-1370-4221-B51B-25C68AADCF29')
INSERT [dbo].[Oportunidades] ([Id], [CargaHoraria], [Salario], [DataLimite], [Status], [IsFinalizado], [EstadoId], [Cidade], [CreatedAt], [UpdatedAt], [TipoEmpregoId], [TipoFormacaoId], [TipoFuncaoId], [ProvinciaId], [NacionalidadeId], [Experiencia], [NumVagas], [Detalhes], [CargoId], [EmpresaId]) VALUES (N'7b0c6558-b5d4-4394-825d-9f99a7f91c8c', N'5 hrs', N'21212', CAST(N'2020-09-09' AS Date), 1, 1, N'31cbe1a3-95eb-4c45-9d00-5d409dbde8a4', N'Luanda', CAST(N'2020-03-01' AS Date), CAST(N'2020-03-01' AS Date), N'aa69b9ac-e02f-4f89-9b4a-51da89482362', N'46bf281f-9c4f-4a29-a1ab-387dc83e1a1d', N'7BC4CD48-3159-4A13-A65A-D1797B4BD062', N'4A870AA3-9AFA-4351-82CE-3D83C5F42295', N'AC083095-F00E-4795-AD6E-F7C8FC330F45', N'4 anos', N'36', N'O Web Design envolve trabalhos ligados à layout e design de páginas online assim como produção de conteúdos, embora costume ser mais aplicado à criação de sites', N'DB2DACF2-6D27-4842-B3C4-B8C04B10A820', N'73BFE246-1370-4221-B51B-25C68AADCF29')
INSERT [dbo].[Oportunidades] ([Id], [CargaHoraria], [Salario], [DataLimite], [Status], [IsFinalizado], [EstadoId], [Cidade], [CreatedAt], [UpdatedAt], [TipoEmpregoId], [TipoFormacaoId], [TipoFuncaoId], [ProvinciaId], [NacionalidadeId], [Experiencia], [NumVagas], [Detalhes], [CargoId], [EmpresaId]) VALUES (N'9561d3bf-8264-420e-9caf-fc9d50f7e2c7', N'3 hrs', N'12121', CAST(N'2020-09-09' AS Date), 1, 1, N'31cbe1a3-95eb-4c45-9d00-5d409dbde8a4', N'Luanda', CAST(N'2020-03-01' AS Date), CAST(N'2020-03-01' AS Date), N'aa69b9ac-e02f-4f89-9b4a-51da89482362', N'61c1b34c-6319-4768-9d4f-691e0af7339d', N'1C94E5CE-80CC-4687-A238-66AF733255AF', N'3C6B4D42-10B2-4F24-A839-8D9EA577F65A', N'5E1C07B4-CB28-4C3A-A282-272BFAC6E863', N'1 ano', N'41', N'O Web Design envolve trabalhos ligados à layout e design de páginas online assim como produção de conteúdos, embora costume ser mais aplicado à criação de sites', N'DB2DACF2-6D27-4842-B3C4-B8C04B10A820', N'73BFE246-1370-4221-B51B-25C68AADCF29')
INSERT [dbo].[Oportunidades] ([Id], [CargaHoraria], [Salario], [DataLimite], [Status], [IsFinalizado], [EstadoId], [Cidade], [CreatedAt], [UpdatedAt], [TipoEmpregoId], [TipoFormacaoId], [TipoFuncaoId], [ProvinciaId], [NacionalidadeId], [Experiencia], [NumVagas], [Detalhes], [CargoId], [EmpresaId]) VALUES (N'9776c19f-f3b2-4564-8bb4-957fcb067677', N'4 hrs', N'212', CAST(N'2020-09-09' AS Date), 1, 1, N'31cbe1a3-95eb-4c45-9d00-5d409dbde8a4', N'Luanda', CAST(N'2020-03-05' AS Date), CAST(N'2020-03-05' AS Date), N'aa69b9ac-e02f-4f89-9b4a-51da89482362', N'0bf30c1a-ca6a-4560-a068-cb3c34c5fd5c', N'7BC4CD48-3159-4A13-A65A-D1797B4BD062', N'88E05634-F116-4A9A-A0E8-29F813FEA2D4', N'564E1716-0CC3-4889-AE1B-712AF9CAC2D7', N'3 anos', N'4', N'O Web Design envolve trabalhos ligados à layout e design de páginas online assim como produção de conteúdos, embora costume ser mais aplicado à criação de sites', N'DB2DACF2-6D27-4842-B3C4-B8C04B10A820', N'73BFE246-1370-4221-B51B-25C68AADCF29')
INSERT [dbo].[Oportunidades] ([Id], [CargaHoraria], [Salario], [DataLimite], [Status], [IsFinalizado], [EstadoId], [Cidade], [CreatedAt], [UpdatedAt], [TipoEmpregoId], [TipoFormacaoId], [TipoFuncaoId], [ProvinciaId], [NacionalidadeId], [Experiencia], [NumVagas], [Detalhes], [CargoId], [EmpresaId]) VALUES (N'9c0f0fee-edf5-45b6-bf2c-6e547e68f8ed', N'3 hrs', N'12121', CAST(N'2020-09-09' AS Date), 1, 1, N'31cbe1a3-95eb-4c45-9d00-5d409dbde8a4', N'Luanda', CAST(N'2020-03-01' AS Date), CAST(N'2020-03-01' AS Date), N'aa69b9ac-e02f-4f89-9b4a-51da89482362', N'61c1b34c-6319-4768-9d4f-691e0af7339d', N'1C94E5CE-80CC-4687-A238-66AF733255AF', N'3C6B4D42-10B2-4F24-A839-8D9EA577F65A', N'5E1C07B4-CB28-4C3A-A282-272BFAC6E863', N'1 ano', N'41', N'O Web Design envolve trabalhos ligados à layout e design de páginas online assim como produção de conteúdos, embora costume ser mais aplicado à criação de sites', N'DB2DACF2-6D27-4842-B3C4-B8C04B10A820', N'73BFE246-1370-4221-B51B-25C68AADCF29')
INSERT [dbo].[Oportunidades] ([Id], [CargaHoraria], [Salario], [DataLimite], [Status], [IsFinalizado], [EstadoId], [Cidade], [CreatedAt], [UpdatedAt], [TipoEmpregoId], [TipoFormacaoId], [TipoFuncaoId], [ProvinciaId], [NacionalidadeId], [Experiencia], [NumVagas], [Detalhes], [CargoId], [EmpresaId]) VALUES (N'a2711147-1b7b-48ed-843d-aae76e869ba2', N'3 hrs', N'12121', CAST(N'2020-09-09' AS Date), 1, 1, N'31cbe1a3-95eb-4c45-9d00-5d409dbde8a4', N'Luanda', CAST(N'2020-03-01' AS Date), CAST(N'2020-03-01' AS Date), N'aa69b9ac-e02f-4f89-9b4a-51da89482362', N'61c1b34c-6319-4768-9d4f-691e0af7339d', N'1C94E5CE-80CC-4687-A238-66AF733255AF', N'3C6B4D42-10B2-4F24-A839-8D9EA577F65A', N'5E1C07B4-CB28-4C3A-A282-272BFAC6E863', N'1 ano', N'41', N'O Web Design envolve trabalhos ligados à layout e design de páginas online assim como produção de conteúdos, embora costume ser mais aplicado à criação de sites', N'DB2DACF2-6D27-4842-B3C4-B8C04B10A820', N'73BFE246-1370-4221-B51B-25C68AADCF29')
INSERT [dbo].[Oportunidades] ([Id], [CargaHoraria], [Salario], [DataLimite], [Status], [IsFinalizado], [EstadoId], [Cidade], [CreatedAt], [UpdatedAt], [TipoEmpregoId], [TipoFormacaoId], [TipoFuncaoId], [ProvinciaId], [NacionalidadeId], [Experiencia], [NumVagas], [Detalhes], [CargoId], [EmpresaId]) VALUES (N'bbbac787-ff6f-4502-836e-a8e1f1285e15', N'4 hrs', N'2112', CAST(N'2020-09-09' AS Date), 1, 1, N'31cbe1a3-95eb-4c45-9d00-5d409dbde8a4', N'Luanda', CAST(N'2020-03-01' AS Date), CAST(N'2020-03-01' AS Date), N'8c90988e-7d44-49f1-af6c-57db211d33f6', N'0b9097b6-4dda-4b39-b228-b9426f91226c', N'F3CA8205-3048-4C3C-A8DA-DB628E27AB2A', N'3C6B4D42-10B2-4F24-A839-8D9EA577F65A', N'57C872E3-1112-4F05-A704-74EEF93A76B1', N'2 anos', N'22', N'O Web Design envolve trabalhos ligados à layout e design de páginas online assim como produção de conteúdos, embora costume ser mais aplicado à criação de sites', N'DB2DACF2-6D27-4842-B3C4-B8C04B10A820', N'73BFE246-1370-4221-B51B-25C68AADCF29')
INSERT [dbo].[Oportunidades] ([Id], [CargaHoraria], [Salario], [DataLimite], [Status], [IsFinalizado], [EstadoId], [Cidade], [CreatedAt], [UpdatedAt], [TipoEmpregoId], [TipoFormacaoId], [TipoFuncaoId], [ProvinciaId], [NacionalidadeId], [Experiencia], [NumVagas], [Detalhes], [CargoId], [EmpresaId]) VALUES (N'c1fb9262-faa9-4520-9f69-d60994a444ea', N'4 hrs', N'1212', CAST(N'2020-09-09' AS Date), 1, 1, N'31cbe1a3-95eb-4c45-9d00-5d409dbde8a4', N'Luanda', CAST(N'2020-03-01' AS Date), CAST(N'2020-03-01' AS Date), N'8c90988e-7d44-49f1-af6c-57db211d33f6', N'61c1b34c-6319-4768-9d4f-691e0af7339d', N'7BC4CD48-3159-4A13-A65A-D1797B4BD062', N'47585E71-281B-4B0B-8312-C704CCBA0697', N'564E1716-0CC3-4889-AE1B-712AF9CAC2D7', N'2 anos', N'121', N'O Web Design envolve trabalhos ligados à layout e design de páginas online assim como produção de conteúdos, embora costume ser mais aplicado à criação de sites', N'DB2DACF2-6D27-4842-B3C4-B8C04B10A820', N'73BFE246-1370-4221-B51B-25C68AADCF29')
INSERT [dbo].[Oportunidades] ([Id], [CargaHoraria], [Salario], [DataLimite], [Status], [IsFinalizado], [EstadoId], [Cidade], [CreatedAt], [UpdatedAt], [TipoEmpregoId], [TipoFormacaoId], [TipoFuncaoId], [ProvinciaId], [NacionalidadeId], [Experiencia], [NumVagas], [Detalhes], [CargoId], [EmpresaId]) VALUES (N'c2d16eb5-e6e7-4d69-9a82-bd4844450cff', N'3 hrs', N'12121', CAST(N'2020-09-09' AS Date), 1, 1, N'31cbe1a3-95eb-4c45-9d00-5d409dbde8a4', N'Luanda', CAST(N'2020-03-01' AS Date), CAST(N'2020-03-01' AS Date), N'aa69b9ac-e02f-4f89-9b4a-51da89482362', N'61c1b34c-6319-4768-9d4f-691e0af7339d', N'1C94E5CE-80CC-4687-A238-66AF733255AF', N'3C6B4D42-10B2-4F24-A839-8D9EA577F65A', N'5E1C07B4-CB28-4C3A-A282-272BFAC6E863', N'1 ano', N'41', N'O Web Design envolve trabalhos ligados à layout e design de páginas online assim como produção de conteúdos, embora costume ser mais aplicado à criação de sites', N'DB2DACF2-6D27-4842-B3C4-B8C04B10A820', N'73BFE246-1370-4221-B51B-25C68AADCF29')
INSERT [dbo].[Oportunidades] ([Id], [CargaHoraria], [Salario], [DataLimite], [Status], [IsFinalizado], [EstadoId], [Cidade], [CreatedAt], [UpdatedAt], [TipoEmpregoId], [TipoFormacaoId], [TipoFuncaoId], [ProvinciaId], [NacionalidadeId], [Experiencia], [NumVagas], [Detalhes], [CargoId], [EmpresaId]) VALUES (N'dd4f0dea-2a78-41b9-aa7b-9d4ee2351ff4', N'3 hrs', N'121', CAST(N'2020-09-09' AS Date), 1, 1, N'31cbe1a3-95eb-4c45-9d00-5d409dbde8a4', N'Luanda', CAST(N'2020-03-01' AS Date), CAST(N'2020-03-01' AS Date), N'aa69b9ac-e02f-4f89-9b4a-51da89482362', N'0bf30c1a-ca6a-4560-a068-cb3c34c5fd5c', N'3357803F-B586-43A1-AC1E-9C410A90C25A', N'4A870AA3-9AFA-4351-82CE-3D83C5F42295', N'57C872E3-1112-4F05-A704-74EEF93A76B1', N'2 anos', N'22', N'O Web Design envolve trabalhos ligados à layout e design de páginas online assim como produção de conteúdos, embora costume ser mais aplicado à criação de sites', N'DB2DACF2-6D27-4842-B3C4-B8C04B10A820', N'73BFE246-1370-4221-B51B-25C68AADCF29')
INSERT [dbo].[Oportunidades] ([Id], [CargaHoraria], [Salario], [DataLimite], [Status], [IsFinalizado], [EstadoId], [Cidade], [CreatedAt], [UpdatedAt], [TipoEmpregoId], [TipoFormacaoId], [TipoFuncaoId], [ProvinciaId], [NacionalidadeId], [Experiencia], [NumVagas], [Detalhes], [CargoId], [EmpresaId]) VALUES (N'e04c8625-7eab-4f2a-a500-deed292e7cbe', N'6 hrs', N'2121', CAST(N'2020-09-09' AS Date), 1, 0, N'31cbe1a3-95eb-4c45-9d00-5d409dbde8a4', N'Luanda', CAST(N'2020-03-01' AS Date), CAST(N'2020-03-01' AS Date), N'aa69b9ac-e02f-4f89-9b4a-51da89482362', N'4c8031c2-623a-4484-97ed-55acd5c74511', N'7BC4CD48-3159-4A13-A65A-D1797B4BD062', N'48336B30-D029-4FCE-AA92-B78D1ACA6688', N'6942B28F-B5B5-43A9-93D4-23A4FF0A7A4B', N'2 anos', N'12', N'O Web Design envolve trabalhos ligados à layout e design de páginas online assim como produção de conteúdos, embora costume ser mais aplicado à criação de sites', N'DB2DACF2-6D27-4842-B3C4-B8C04B10A820', N'73BFE246-1370-4221-B51B-25C68AADCF29')
INSERT [dbo].[Oportunidades] ([Id], [CargaHoraria], [Salario], [DataLimite], [Status], [IsFinalizado], [EstadoId], [Cidade], [CreatedAt], [UpdatedAt], [TipoEmpregoId], [TipoFormacaoId], [TipoFuncaoId], [ProvinciaId], [NacionalidadeId], [Experiencia], [NumVagas], [Detalhes], [CargoId], [EmpresaId]) VALUES (N'e965f3ba-d882-426c-84d5-a7ff110a6070', N'3 hrs', N'12121', CAST(N'2020-09-09' AS Date), 1, 1, N'31cbe1a3-95eb-4c45-9d00-5d409dbde8a4', N'Luanda', CAST(N'2020-03-01' AS Date), CAST(N'2020-03-01' AS Date), N'aa69b9ac-e02f-4f89-9b4a-51da89482362', N'61c1b34c-6319-4768-9d4f-691e0af7339d', N'1C94E5CE-80CC-4687-A238-66AF733255AF', N'3C6B4D42-10B2-4F24-A839-8D9EA577F65A', N'5E1C07B4-CB28-4C3A-A282-272BFAC6E863', N'1 ano', N'41', N'O Web Design envolve trabalhos ligados à layout e design de páginas online assim como produção de conteúdos, embora costume ser mais aplicado à criação de sites', N'DB2DACF2-6D27-4842-B3C4-B8C04B10A820', N'73BFE246-1370-4221-B51B-25C68AADCF29')
INSERT [dbo].[PessoaContactos] ([Id], [ContactoId], [PessoaId], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'DEACF4FD-49A6-4DC6-BB96-B51EE27574EE', N'834529B8-0A7E-4EB1-B3FF-BB22C5BF91B3', N'8484b790-7878-4bbe-9ccb-b8a9c657932d', 1, NULL, CAST(N'2020-04-29' AS Date), CAST(N'2020-04-29' AS Date))
INSERT [dbo].[PessoaIdiomas] ([Id], [IdiomaId], [PessoaId], [Status], [EstadoId], [CreatedAt], [UpdatedAt], [Percentagem]) VALUES (N'3C9F0428-0844-42A8-88E4-766EACE00BC1', N'AF671B93-4996-4671-B155-2A505E1CC5C2', N'8484b790-7878-4bbe-9ccb-b8a9c657932d', 1, NULL, CAST(N'2020-03-01' AS Date), CAST(N'2020-03-01' AS Date), N'94')
INSERT [dbo].[PessoaIdiomas] ([Id], [IdiomaId], [PessoaId], [Status], [EstadoId], [CreatedAt], [UpdatedAt], [Percentagem]) VALUES (N'460C8E2B-EF45-4B5E-A105-5EEB5927CDC0', N'C93156CC-8CEF-4BB1-A926-C6BA2DA1B34E', N'8484b790-7878-4bbe-9ccb-b8a9c657932d', 1, NULL, CAST(N'2020-03-01' AS Date), CAST(N'2020-03-01' AS Date), N'94')
INSERT [dbo].[PessoaIdiomas] ([Id], [IdiomaId], [PessoaId], [Status], [EstadoId], [CreatedAt], [UpdatedAt], [Percentagem]) VALUES (N'84ED8C70-3624-409A-9AD3-A2D679FC3C95', N'23750792-B480-46B3-8385-1EE1DBD975A8', N'8484b790-7878-4bbe-9ccb-b8a9c657932d', 1, NULL, CAST(N'2020-03-01' AS Date), CAST(N'2020-03-01' AS Date), N'94')
INSERT [dbo].[Pessoas] ([Id], [Nome], [SobreNome], [DataNascimento], [Status], [EstadoId], [CreatedAt], [UpdatedAt], [IsCandidato], [Morada]) VALUES (N'83d622d3-b1c7-4c78-872f-fec6b21bb0d8', N'Wilson', N'Lopes', CAST(N'1994-04-29' AS Date), 1, NULL, CAST(N'2020-05-20' AS Date), CAST(N'2020-05-20' AS Date), 1, N'Maianga/Cassenda, Luanda')
INSERT [dbo].[Pessoas] ([Id], [Nome], [SobreNome], [DataNascimento], [Status], [EstadoId], [CreatedAt], [UpdatedAt], [IsCandidato], [Morada]) VALUES (N'8484b790-7878-4bbe-9ccb-b8a9c657932d', N'Antonio', N'Lopes', CAST(N'1994-04-29' AS Date), 1, NULL, CAST(N'2020-04-29' AS Date), CAST(N'2020-04-29' AS Date), 1, N'Maianga/Cassenda, Luanda')
INSERT [dbo].[Pessoas] ([Id], [Nome], [SobreNome], [DataNascimento], [Status], [EstadoId], [CreatedAt], [UpdatedAt], [IsCandidato], [Morada]) VALUES (N'8679288e-86d1-499e-9f80-b3c5df03fc15', N'Afonso', N'Matumona', CAST(N'1994-04-29' AS Date), 1, NULL, CAST(N'2020-05-20' AS Date), CAST(N'2020-05-20' AS Date), 1, N'Maianga/Cassenda, Luanda')
INSERT [dbo].[Pessoas] ([Id], [Nome], [SobreNome], [DataNascimento], [Status], [EstadoId], [CreatedAt], [UpdatedAt], [IsCandidato], [Morada]) VALUES (N'8c7f3623-88f6-42a1-97c3-97d90e1a4688', N'Liliana', N'Lopes', CAST(N'1994-04-29' AS Date), 1, NULL, CAST(N'2020-05-20' AS Date), CAST(N'2020-05-20' AS Date), 1, N'Maianga/Cassenda, Luanda')
INSERT [dbo].[Pessoas] ([Id], [Nome], [SobreNome], [DataNascimento], [Status], [EstadoId], [CreatedAt], [UpdatedAt], [IsCandidato], [Morada]) VALUES (N'c971ecec-9b3f-40d9-9ac2-cc64d4fb01ee', N'Rosa', N'Lopes', CAST(N'1994-04-29' AS Date), 1, NULL, CAST(N'2020-05-20' AS Date), CAST(N'2020-05-20' AS Date), 1, N'Maianga/Cassenda, Luanda')
INSERT [dbo].[Pessoas] ([Id], [Nome], [SobreNome], [DataNascimento], [Status], [EstadoId], [CreatedAt], [UpdatedAt], [IsCandidato], [Morada]) VALUES (N'e81f3f54-29a7-4a4a-ac54-7afedd5b21ed', N'Maravilha', N'Lopes', CAST(N'1994-04-29' AS Date), 1, NULL, CAST(N'2020-05-20' AS Date), CAST(N'2020-05-20' AS Date), 1, N'Maianga/Cassenda, Luanda')
INSERT [dbo].[Provincias] ([Id], [Designacao], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'27935647-ABFF-47BE-A628-9F9D26CC9AE0', N'Huíla', 1, N'324ba64c-c949-40de-a7cb-ff9e7bd8951f', NULL, NULL)
INSERT [dbo].[Provincias] ([Id], [Designacao], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'2B2EED9D-64F9-4A23-AFEB-F4C2BD769818', N'Cabinda', 1, N'324ba64c-c949-40de-a7cb-ff9e7bd8951f', NULL, NULL)
INSERT [dbo].[Provincias] ([Id], [Designacao], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'3C6B4D42-10B2-4F24-A839-8D9EA577F65A', N'Kwanza Sul', 1, N'324ba64c-c949-40de-a7cb-ff9e7bd8951f', NULL, NULL)
INSERT [dbo].[Provincias] ([Id], [Designacao], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'47585E71-281B-4B0B-8312-C704CCBA0697', N'Zaire', 1, N'324ba64c-c949-40de-a7cb-ff9e7bd8951f', NULL, NULL)
INSERT [dbo].[Provincias] ([Id], [Designacao], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'48336B30-D029-4FCE-AA92-B78D1ACA6688', N'Cunene', 1, N'324ba64c-c949-40de-a7cb-ff9e7bd8951f', NULL, NULL)
INSERT [dbo].[Provincias] ([Id], [Designacao], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'4A870AA3-9AFA-4351-82CE-3D83C5F42295', N'Bengo', 1, N'324ba64c-c949-40de-a7cb-ff9e7bd8951f', NULL, NULL)
INSERT [dbo].[Provincias] ([Id], [Designacao], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'802B197A-ED1C-4B70-BBFC-1906D735205C', N'Lunda Norte', 1, N'324ba64c-c949-40de-a7cb-ff9e7bd8951f', NULL, NULL)
INSERT [dbo].[Provincias] ([Id], [Designacao], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'88E05634-F116-4A9A-A0E8-29F813FEA2D4', N'Benguela', 1, N'324ba64c-c949-40de-a7cb-ff9e7bd8951f', NULL, NULL)
INSERT [dbo].[Provincias] ([Id], [Designacao], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'92A76EE2-34D5-416F-8CF9-FAD9385FF59C', N'Uíge', 1, N'324ba64c-c949-40de-a7cb-ff9e7bd8951f', NULL, NULL)
INSERT [dbo].[Provincias] ([Id], [Designacao], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'9AACD34B-B951-416E-8C91-AA6986234DE6', N'Malange', 1, N'324ba64c-c949-40de-a7cb-ff9e7bd8951f', NULL, NULL)
INSERT [dbo].[Provincias] ([Id], [Designacao], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'A65059AB-A6B7-471D-B868-530893A1AD46', N'Luanda', 1, N'324ba64c-c949-40de-a7cb-ff9e7bd8951f', NULL, NULL)
INSERT [dbo].[Provincias] ([Id], [Designacao], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'C9FEFCD0-6654-42D0-995C-55797930AF6B', N'Kwanza Norte', 1, N'324ba64c-c949-40de-a7cb-ff9e7bd8951f', NULL, NULL)
INSERT [dbo].[Provincias] ([Id], [Designacao], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'DEB81874-BF31-415C-A438-790CC9657A66', N'Bié', 1, N'324ba64c-c949-40de-a7cb-ff9e7bd8951f', NULL, NULL)
INSERT [dbo].[Provincias] ([Id], [Designacao], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'E514C5B9-DB4C-4D6F-A0E5-E3B0C815E376', N'Moxico', 1, N'324ba64c-c949-40de-a7cb-ff9e7bd8951f', NULL, NULL)
INSERT [dbo].[Provincias] ([Id], [Designacao], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'E7A9E56E-A14E-4211-8D7D-98791A589AB7', N'Lunda Sul', 1, N'324ba64c-c949-40de-a7cb-ff9e7bd8951f', NULL, NULL)
INSERT [dbo].[Provincias] ([Id], [Designacao], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'E7F3B04E-291B-4696-9E8A-5994D6C0F389', N'Cuando Cubango', 1, N'324ba64c-c949-40de-a7cb-ff9e7bd8951f', NULL, NULL)
INSERT [dbo].[Provincias] ([Id], [Designacao], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'F88A47A6-D5B1-4147-BEB4-7F282FCC32C2', N'Namibe', 1, N'324ba64c-c949-40de-a7cb-ff9e7bd8951f', NULL, NULL)
INSERT [dbo].[Skills] ([Id], [Designacao], [Percentagem], [Descricao], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'0D8D7AA4-E03E-4C47-8D72-83DA8E16596F', N'React js', 88, N'React é vida', 1, NULL, CAST(N'2020-05-20' AS Date), CAST(N'2020-05-20' AS Date))
INSERT [dbo].[Skills] ([Id], [Designacao], [Percentagem], [Descricao], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'3059D3DB-A547-48C3-993B-A8EDD155EF7E', N'React Native', 88, N'React Native é vida', 1, NULL, CAST(N'2020-05-20' AS Date), CAST(N'2020-05-20' AS Date))
INSERT [dbo].[Skills] ([Id], [Designacao], [Percentagem], [Descricao], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'D500F3D4-630B-43EE-9DEB-519AF7B5CF30', N'Node js', 88, N'Node é vida', 1, NULL, CAST(N'2020-05-20' AS Date), CAST(N'2020-05-20' AS Date))
INSERT [dbo].[TipoDetalhes] ([Id], [Designacao], [Descricao], [Status], [EstadoId], [CreatedAt], [UpdatedAt], [tipoIcon]) VALUES (N'0dc8fd60-35f2-4d9a-8e8e-b661a41686f1', N'Atividade Extra-Curricular', N'Atividade Extra-Curricular de uma pessoa', 1, N'324ba64c-c949-40de-a7cb-ff9e7bd8951f', CAST(N'2019-12-31' AS Date), CAST(N'2019-12-31' AS Date), N'fas fa-leaf')
INSERT [dbo].[TipoDetalhes] ([Id], [Designacao], [Descricao], [Status], [EstadoId], [CreatedAt], [UpdatedAt], [tipoIcon]) VALUES (N'3f93a41f-3acb-4a57-ae80-7671c0a10d8b', N'Formação Académica', N'Formação académica de uma pessoa', 1, N'324ba64c-c949-40de-a7cb-ff9e7bd8951f', CAST(N'2019-12-31' AS Date), CAST(N'2019-12-31' AS Date), N'fas fa-graduation-cap')
INSERT [dbo].[TipoDetalhes] ([Id], [Designacao], [Descricao], [Status], [EstadoId], [CreatedAt], [UpdatedAt], [tipoIcon]) VALUES (N'4975c214-e34c-4842-9fd0-f3c38a349540', N'Cursos', N'Cursos de uma pessoa', 1, N'324ba64c-c949-40de-a7cb-ff9e7bd8951f', CAST(N'2019-12-31' AS Date), CAST(N'2019-12-31' AS Date), N'fas fa-graduation-cap')
INSERT [dbo].[TipoDetalhes] ([Id], [Designacao], [Descricao], [Status], [EstadoId], [CreatedAt], [UpdatedAt], [tipoIcon]) VALUES (N'abd9512f-7e77-45ab-ac8e-59c4a000854c', N'Experiência Profissional', N'Experiência Profissional de uma pessoa', 1, N'324ba64c-c949-40de-a7cb-ff9e7bd8951f', CAST(N'2019-12-31' AS Date), CAST(N'2019-12-31' AS Date), N'fas fa-suitcase')
INSERT [dbo].[TipoDocumentos] ([Id], [Designacao], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'9B71C950-3C96-4DBB-9945-1E336E66642B', N'Carta de Condução', 1, N'324ba64c-c949-40de-a7cb-ff9e7bd8951f', CAST(N'2019-12-31' AS Date), CAST(N'2019-12-31' AS Date))
INSERT [dbo].[TipoDocumentos] ([Id], [Designacao], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'D2925891-5B1D-4B8D-A18B-18F23E29CFD8', N'Passa Porte', 1, N'324ba64c-c949-40de-a7cb-ff9e7bd8951f', CAST(N'2019-12-31' AS Date), CAST(N'2019-12-31' AS Date))
INSERT [dbo].[TipoDocumentos] ([Id], [Designacao], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'F23481F4-7DD7-4896-B1AA-9697F6E6E3F8', N'Bilhete de Identidade', 1, N'324ba64c-c949-40de-a7cb-ff9e7bd8951f', CAST(N'2019-12-31' AS Date), CAST(N'2019-12-31' AS Date))
INSERT [dbo].[TipoEmpregos] ([Id], [Designacao], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'4b067041-bf85-40b5-b04d-dfc3b04bc8f3', N'Tempo indeterminado', 1, N'324ba64c-c949-40de-a7cb-ff9e7bd8951f', CAST(N'2020-02-10' AS Date), CAST(N'2020-02-10' AS Date))
INSERT [dbo].[TipoEmpregos] ([Id], [Designacao], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'8c90988e-7d44-49f1-af6c-57db211d33f6', N'Tempo determinado', 1, N'324ba64c-c949-40de-a7cb-ff9e7bd8951f', CAST(N'2020-02-10' AS Date), CAST(N'2020-02-10' AS Date))
INSERT [dbo].[TipoEmpregos] ([Id], [Designacao], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'aa69b9ac-e02f-4f89-9b4a-51da89482362', N'A definir', 1, N'324ba64c-c949-40de-a7cb-ff9e7bd8951f', CAST(N'2020-02-10' AS Date), CAST(N'2020-02-10' AS Date))
INSERT [dbo].[TipoEmpregos] ([Id], [Designacao], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'accfb077-e174-48f2-b9e2-e2a49d05e185', N'Estágio', 1, N'324ba64c-c949-40de-a7cb-ff9e7bd8951f', CAST(N'2020-02-10' AS Date), CAST(N'2020-02-10' AS Date))
INSERT [dbo].[TipoEmpregos] ([Id], [Designacao], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'e647425b-ac36-45de-b2d2-c4fdec7b1ff0', N'Contrato de serviços', 1, N'324ba64c-c949-40de-a7cb-ff9e7bd8951f', CAST(N'2020-02-10' AS Date), CAST(N'2020-02-10' AS Date))
INSERT [dbo].[TipoFormacaos] ([Id], [Designacao], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'0b9097b6-4dda-4b39-b228-b9426f91226c', N'Frequência universitária', 1, N'324ba64c-c949-40de-a7cb-ff9e7bd8951f', CAST(N'2020-02-10' AS Date), CAST(N'2020-02-10' AS Date))
INSERT [dbo].[TipoFormacaos] ([Id], [Designacao], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'0bf30c1a-ca6a-4560-a068-cb3c34c5fd5c', N'Bacharelato', 1, N'324ba64c-c949-40de-a7cb-ff9e7bd8951f', CAST(N'2020-02-10' AS Date), CAST(N'2020-02-10' AS Date))
INSERT [dbo].[TipoFormacaos] ([Id], [Designacao], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'46bf281f-9c4f-4a29-a1ab-387dc83e1a1d', N'Ensino Secundário', 1, N'324ba64c-c949-40de-a7cb-ff9e7bd8951f', CAST(N'2020-02-10' AS Date), CAST(N'2020-02-10' AS Date))
INSERT [dbo].[TipoFormacaos] ([Id], [Designacao], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'4c8031c2-623a-4484-97ed-55acd5c74511', N'Doutoramento / PhD', 1, N'324ba64c-c949-40de-a7cb-ff9e7bd8951f', CAST(N'2020-02-10' AS Date), CAST(N'2020-02-10' AS Date))
INSERT [dbo].[TipoFormacaos] ([Id], [Designacao], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'61c1b34c-6319-4768-9d4f-691e0af7339d', N'Licenciatura-', 1, N'324ba64c-c949-40de-a7cb-ff9e7bd8951f', CAST(N'2020-02-10' AS Date), CAST(N'2020-02-10' AS Date))
INSERT [dbo].[TipoFormacaos] ([Id], [Designacao], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'78582c54-15e1-4c45-b653-f6d7bf00cbcb', N'Ensino Primário', 1, N'324ba64c-c949-40de-a7cb-ff9e7bd8951f', CAST(N'2020-02-10' AS Date), CAST(N'2020-02-10' AS Date))
INSERT [dbo].[TipoFormacaos] ([Id], [Designacao], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'7b75ec48-ef0d-40c4-b697-5a59bad77421', N'Ensino Superior Pedagógico', 1, N'324ba64c-c949-40de-a7cb-ff9e7bd8951f', CAST(N'2020-02-10' AS Date), CAST(N'2020-02-10' AS Date))
INSERT [dbo].[TipoFormacaos] ([Id], [Designacao], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'87613e8e-8abd-4bba-8d0c-b723ef8c5d19', N'Pós-graduação Profissional', 1, N'324ba64c-c949-40de-a7cb-ff9e7bd8951f', CAST(N'2020-02-10' AS Date), CAST(N'2020-02-10' AS Date))
INSERT [dbo].[TipoFormacaos] ([Id], [Designacao], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'a5619d35-3a7a-4316-ac5c-85982e931c61', N'Outro curso de pós-grado', 1, N'324ba64c-c949-40de-a7cb-ff9e7bd8951f', CAST(N'2020-02-10' AS Date), CAST(N'2020-02-10' AS Date))
INSERT [dbo].[TipoFormacaos] ([Id], [Designacao], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'a8058ba6-4224-4675-b6a2-41c6d6879bb8', N'MBA / Mestrado', 1, N'324ba64c-c949-40de-a7cb-ff9e7bd8951f', CAST(N'2020-02-10' AS Date), CAST(N'2020-02-10' AS Date))
INSERT [dbo].[TipoFormacaos] ([Id], [Designacao], [Status], [EstadoId], [CreatedAt], [UpdatedAt]) VALUES (N'f4cdc67c-beae-4b07-a115-2cf785faf2cc', N'Formação Técnico Profissional', 1, N'324ba64c-c949-40de-a7cb-ff9e7bd8951f', CAST(N'2020-02-10' AS Date), CAST(N'2020-02-10' AS Date))
INSERT [dbo].[TipoFuncoes] ([Id], [Designacao], [Status], [EstadoId], [AreaId], [CreatedAt], [UpdatedAt]) VALUES (N'1C94E5CE-80CC-4687-A238-66AF733255AF', N'Desenvolvedor Web', 1, N'324ba64c-c949-40de-a7cb-ff9e7bd8951f', N'E3C5C7CF-A0E3-4C48-8D77-51D2D97591F3', NULL, NULL)
INSERT [dbo].[TipoFuncoes] ([Id], [Designacao], [Status], [EstadoId], [AreaId], [CreatedAt], [UpdatedAt]) VALUES (N'3357803F-B586-43A1-AC1E-9C410A90C25A', N'Chef de Infrastrutura Tecnológica', 1, N'324ba64c-c949-40de-a7cb-ff9e7bd8951f', N'E3C5C7CF-A0E3-4C48-8D77-51D2D97591F3', NULL, NULL)
INSERT [dbo].[TipoFuncoes] ([Id], [Designacao], [Status], [EstadoId], [AreaId], [CreatedAt], [UpdatedAt]) VALUES (N'7BC4CD48-3159-4A13-A65A-D1797B4BD062', N'Web Design', 1, N'324ba64c-c949-40de-a7cb-ff9e7bd8951f', N'E3C5C7CF-A0E3-4C48-8D77-51D2D97591F3', NULL, NULL)
INSERT [dbo].[TipoFuncoes] ([Id], [Designacao], [Status], [EstadoId], [AreaId], [CreatedAt], [UpdatedAt]) VALUES (N'BE1CB345-902F-42E8-B4AB-E0E7D4BC0FBC', N'CCNE', 1, N'324ba64c-c949-40de-a7cb-ff9e7bd8951f', N'6C9B068A-95B8-4577-A614-530CA5C561D8', NULL, NULL)
INSERT [dbo].[TipoFuncoes] ([Id], [Designacao], [Status], [EstadoId], [AreaId], [CreatedAt], [UpdatedAt]) VALUES (N'F3CA8205-3048-4C3C-A8DA-DB628E27AB2A', N'CCNA', 1, N'324ba64c-c949-40de-a7cb-ff9e7bd8951f', N'6C9B068A-95B8-4577-A614-530CA5C561D8', NULL, NULL)
ALTER TABLE [dbo].[Areas] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Areas] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[AvaliacaoCurriculos] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[AvaliacaoCurriculos] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[AvaliacaoCurriculos] ADD  DEFAULT ((0)) FOR [IsFavorito]
GO
ALTER TABLE [dbo].[Beneficios] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Beneficios] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Candidaturas] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Candidaturas] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Candidaturas] ADD  CONSTRAINT [DF_Candidaturas_IsAnalizado]  DEFAULT ((0)) FOR [IsAnalizado]
GO
ALTER TABLE [dbo].[Cargos] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Cargos] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Competencias] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Competencias] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Contactos] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Contactos] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[ContaUsuarios] ADD  CONSTRAINT [DF__ContaUsua__IdCon__7AF13DF7]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[ContaUsuarios] ADD  CONSTRAINT [DF__ContaUsua__Statu__7DCDAAA2]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[ContaUsuarios] ADD  CONSTRAINT [DF_ContaUsuarios_Provider]  DEFAULT ((1)) FOR [Provider]
GO
ALTER TABLE [dbo].[CurriculoDetalhes] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[CurriculoDetalhes] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[CurriculoHobes] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[CurriculoHobes] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Curriculos] ADD  CONSTRAINT [DF__Curriculo__IdCur__6AEFE058]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Curriculos] ADD  CONSTRAINT [DF__Curriculo__Statu__6DCC4D03]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[CurriculoSkills] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[CurriculoSkills] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Detalhes] ADD  CONSTRAINT [DF__Detalhe__IdDetal__3EA749C6]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Detalhes] ADD  CONSTRAINT [DF__Detalhe__Status__3F9B6DFF]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Documentos] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Documentos] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Empresas] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Empresas] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Estados] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Estados] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Funcionarios] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Funcionarios] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Hobes] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Hobes] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Idiomas] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Idiomas] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Nacionalidades] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Nacionalidades] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[OportunidadeBeneficios] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[OportunidadeBeneficios] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[OportunidadeCompetencias] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[OportunidadeCompetencias] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[OportunidadeIdiomas] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[OportunidadeIdiomas] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Oportunidades] ADD  CONSTRAINT [DF__Oportunid__IdOpo__4C364F0E]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Oportunidades] ADD  CONSTRAINT [DF__Oportunid__Statu__4F12BBB9]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Oportunidades] ADD  CONSTRAINT [DF__Oportunid__IsFin__5006DFF2]  DEFAULT ((0)) FOR [IsFinalizado]
GO
ALTER TABLE [dbo].[PessoaContactos] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[PessoaContactos] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[PessoaDocumentos] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[PessoaDocumentos] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[PessoaIdiomas] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[PessoaIdiomas] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Pessoas] ADD  CONSTRAINT [DF__Pessoa__IdPessoa__0F624AF8]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Pessoas] ADD  CONSTRAINT [DF__Pessoa__Status__123EB7A3]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Pessoas] ADD  CONSTRAINT [DF_Pessoas_IsCandidato]  DEFAULT ((1)) FOR [IsCandidato]
GO
ALTER TABLE [dbo].[Provincias] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Provincias] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Skills] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Skills] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[SolicitacaoDocumentos] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[SolicitacaoDocumentos] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[TipoDetalhes] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[TipoDetalhes] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[TipoDocumentos] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[TipoDocumentos] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[TipoEmpregos] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[TipoEmpregos] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[TipoFormacaos] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[TipoFormacaos] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[TipoFuncoes] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[TipoFuncoes] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Areas]  WITH CHECK ADD FOREIGN KEY([EstadoId])
REFERENCES [dbo].[Estados] ([Id])
GO
ALTER TABLE [dbo].[AvaliacaoCurriculos]  WITH CHECK ADD  CONSTRAINT [FK__Avaliacao__Curri__640DD89F] FOREIGN KEY([CurriculoId])
REFERENCES [dbo].[Curriculos] ([Id])
GO
ALTER TABLE [dbo].[AvaliacaoCurriculos] CHECK CONSTRAINT [FK__Avaliacao__Curri__640DD89F]
GO
ALTER TABLE [dbo].[AvaliacaoCurriculos]  WITH CHECK ADD FOREIGN KEY([EstadoId])
REFERENCES [dbo].[Estados] ([Id])
GO
ALTER TABLE [dbo].[AvaliacaoCurriculos]  WITH CHECK ADD  CONSTRAINT [FK__Avaliacao__Oport__6501FCD8] FOREIGN KEY([OportunidadeId])
REFERENCES [dbo].[Oportunidades] ([Id])
GO
ALTER TABLE [dbo].[AvaliacaoCurriculos] CHECK CONSTRAINT [FK__Avaliacao__Oport__6501FCD8]
GO
ALTER TABLE [dbo].[Beneficios]  WITH CHECK ADD FOREIGN KEY([EstadoId])
REFERENCES [dbo].[Estados] ([Id])
GO
ALTER TABLE [dbo].[Candidaturas]  WITH CHECK ADD FOREIGN KEY([CandidatoId])
REFERENCES [dbo].[Pessoas] ([Id])
GO
ALTER TABLE [dbo].[Candidaturas]  WITH CHECK ADD FOREIGN KEY([EstadoId])
REFERENCES [dbo].[Estados] ([Id])
GO
ALTER TABLE [dbo].[Candidaturas]  WITH CHECK ADD FOREIGN KEY([OportunidadeId])
REFERENCES [dbo].[Oportunidades] ([Id])
GO
ALTER TABLE [dbo].[Cargos]  WITH CHECK ADD FOREIGN KEY([EstadoId])
REFERENCES [dbo].[Estados] ([Id])
GO
ALTER TABLE [dbo].[Competencias]  WITH CHECK ADD FOREIGN KEY([EstadoId])
REFERENCES [dbo].[Estados] ([Id])
GO
ALTER TABLE [dbo].[Contactos]  WITH CHECK ADD FOREIGN KEY([EstadoId])
REFERENCES [dbo].[Estados] ([Id])
GO
ALTER TABLE [dbo].[ContaUsuarios]  WITH CHECK ADD FOREIGN KEY([EmpresaId])
REFERENCES [dbo].[Empresas] ([Id])
GO
ALTER TABLE [dbo].[ContaUsuarios]  WITH CHECK ADD  CONSTRAINT [FK__ContaUsua__Estad__7EC1CEDB] FOREIGN KEY([EstadoId])
REFERENCES [dbo].[Estados] ([Id])
GO
ALTER TABLE [dbo].[ContaUsuarios] CHECK CONSTRAINT [FK__ContaUsua__Estad__7EC1CEDB]
GO
ALTER TABLE [dbo].[ContaUsuarios]  WITH CHECK ADD  CONSTRAINT [FK__ContaUsua__Pesso__7FB5F314] FOREIGN KEY([PessoaId])
REFERENCES [dbo].[Pessoas] ([Id])
GO
ALTER TABLE [dbo].[ContaUsuarios] CHECK CONSTRAINT [FK__ContaUsua__Pesso__7FB5F314]
GO
ALTER TABLE [dbo].[CurriculoDetalhes]  WITH CHECK ADD  CONSTRAINT [FK__Curriculo__Curri__45544755] FOREIGN KEY([CurriculoId])
REFERENCES [dbo].[Curriculos] ([Id])
GO
ALTER TABLE [dbo].[CurriculoDetalhes] CHECK CONSTRAINT [FK__Curriculo__Curri__45544755]
GO
ALTER TABLE [dbo].[CurriculoDetalhes]  WITH CHECK ADD  CONSTRAINT [FK__Curriculo__Detal__473C8FC7] FOREIGN KEY([DetalheId])
REFERENCES [dbo].[Detalhes] ([Id])
GO
ALTER TABLE [dbo].[CurriculoDetalhes] CHECK CONSTRAINT [FK__Curriculo__Detal__473C8FC7]
GO
ALTER TABLE [dbo].[CurriculoDetalhes]  WITH CHECK ADD FOREIGN KEY([EstadoId])
REFERENCES [dbo].[Estados] ([Id])
GO
ALTER TABLE [dbo].[CurriculoHobes]  WITH CHECK ADD  CONSTRAINT [FK__Curriculo__Curri__3B0BC30C] FOREIGN KEY([CurriculoId])
REFERENCES [dbo].[Curriculos] ([Id])
GO
ALTER TABLE [dbo].[CurriculoHobes] CHECK CONSTRAINT [FK__Curriculo__Curri__3B0BC30C]
GO
ALTER TABLE [dbo].[CurriculoHobes]  WITH CHECK ADD FOREIGN KEY([EstadoId])
REFERENCES [dbo].[Estados] ([Id])
GO
ALTER TABLE [dbo].[CurriculoHobes]  WITH CHECK ADD FOREIGN KEY([HobesId])
REFERENCES [dbo].[Hobes] ([Id])
GO
ALTER TABLE [dbo].[Curriculos]  WITH CHECK ADD  CONSTRAINT [FK__Curriculo__Candi__2A363CC5] FOREIGN KEY([CandidatoId])
REFERENCES [dbo].[Pessoas] ([Id])
GO
ALTER TABLE [dbo].[Curriculos] CHECK CONSTRAINT [FK__Curriculo__Candi__2A363CC5]
GO
ALTER TABLE [dbo].[Curriculos]  WITH CHECK ADD  CONSTRAINT [FK__Curriculo__Estad__6EC0713C] FOREIGN KEY([EstadoId])
REFERENCES [dbo].[Estados] ([Id])
GO
ALTER TABLE [dbo].[Curriculos] CHECK CONSTRAINT [FK__Curriculo__Estad__6EC0713C]
GO
ALTER TABLE [dbo].[CurriculoSkills]  WITH CHECK ADD  CONSTRAINT [FK__Curriculo__Curri__4D7F7902] FOREIGN KEY([CurriculoId])
REFERENCES [dbo].[Curriculos] ([Id])
GO
ALTER TABLE [dbo].[CurriculoSkills] CHECK CONSTRAINT [FK__Curriculo__Curri__4D7F7902]
GO
ALTER TABLE [dbo].[CurriculoSkills]  WITH CHECK ADD FOREIGN KEY([EstadoId])
REFERENCES [dbo].[Estados] ([Id])
GO
ALTER TABLE [dbo].[CurriculoSkills]  WITH CHECK ADD FOREIGN KEY([SkillsId])
REFERENCES [dbo].[Skills] ([Id])
GO
ALTER TABLE [dbo].[Detalhes]  WITH CHECK ADD  CONSTRAINT [FK__Detalhe__EstadoI__408F9238] FOREIGN KEY([EstadoId])
REFERENCES [dbo].[Estados] ([Id])
GO
ALTER TABLE [dbo].[Detalhes] CHECK CONSTRAINT [FK__Detalhe__EstadoI__408F9238]
GO
ALTER TABLE [dbo].[Detalhes]  WITH CHECK ADD  CONSTRAINT [FK__Detalhe__TipoDet__4830B400] FOREIGN KEY([TipoDetalheId])
REFERENCES [dbo].[TipoDetalhes] ([Id])
GO
ALTER TABLE [dbo].[Detalhes] CHECK CONSTRAINT [FK__Detalhe__TipoDet__4830B400]
GO
ALTER TABLE [dbo].[Documentos]  WITH CHECK ADD FOREIGN KEY([EstadoId])
REFERENCES [dbo].[Estados] ([Id])
GO
ALTER TABLE [dbo].[Documentos]  WITH CHECK ADD FOREIGN KEY([TipoDocumentoId])
REFERENCES [dbo].[TipoDocumentos] ([Id])
GO
ALTER TABLE [dbo].[Empresas]  WITH CHECK ADD FOREIGN KEY([EstadoId])
REFERENCES [dbo].[Estados] ([Id])
GO
ALTER TABLE [dbo].[Funcionarios]  WITH CHECK ADD FOREIGN KEY([EmpresaId])
REFERENCES [dbo].[Empresas] ([Id])
GO
ALTER TABLE [dbo].[Funcionarios]  WITH CHECK ADD FOREIGN KEY([EstadoId])
REFERENCES [dbo].[Estados] ([Id])
GO
ALTER TABLE [dbo].[Funcionarios]  WITH CHECK ADD FOREIGN KEY([PessoaId])
REFERENCES [dbo].[Pessoas] ([Id])
GO
ALTER TABLE [dbo].[Hobes]  WITH CHECK ADD FOREIGN KEY([EstadoId])
REFERENCES [dbo].[Estados] ([Id])
GO
ALTER TABLE [dbo].[Idiomas]  WITH CHECK ADD FOREIGN KEY([EstadoId])
REFERENCES [dbo].[Estados] ([Id])
GO
ALTER TABLE [dbo].[Nacionalidades]  WITH CHECK ADD FOREIGN KEY([EstadoId])
REFERENCES [dbo].[Estados] ([Id])
GO
ALTER TABLE [dbo].[OportunidadeBeneficios]  WITH CHECK ADD FOREIGN KEY([BeneficioId])
REFERENCES [dbo].[Beneficios] ([Id])
GO
ALTER TABLE [dbo].[OportunidadeBeneficios]  WITH CHECK ADD FOREIGN KEY([EstadoId])
REFERENCES [dbo].[Estados] ([Id])
GO
ALTER TABLE [dbo].[OportunidadeBeneficios]  WITH CHECK ADD FOREIGN KEY([EstadoId])
REFERENCES [dbo].[Estados] ([Id])
GO
ALTER TABLE [dbo].[OportunidadeBeneficios]  WITH CHECK ADD  CONSTRAINT [FK__Oportunid__Oport__3118447E] FOREIGN KEY([OportunidadeId])
REFERENCES [dbo].[Oportunidades] ([Id])
GO
ALTER TABLE [dbo].[OportunidadeBeneficios] CHECK CONSTRAINT [FK__Oportunid__Oport__3118447E]
GO
ALTER TABLE [dbo].[OportunidadeCompetencias]  WITH CHECK ADD FOREIGN KEY([CompetenciaId])
REFERENCES [dbo].[Competencias] ([Id])
GO
ALTER TABLE [dbo].[OportunidadeCompetencias]  WITH CHECK ADD FOREIGN KEY([EstadoId])
REFERENCES [dbo].[Estados] ([Id])
GO
ALTER TABLE [dbo].[OportunidadeCompetencias]  WITH CHECK ADD  CONSTRAINT [FK__Oportunid__Oport__37C5420D] FOREIGN KEY([OportunidadeId])
REFERENCES [dbo].[Oportunidades] ([Id])
GO
ALTER TABLE [dbo].[OportunidadeCompetencias] CHECK CONSTRAINT [FK__Oportunid__Oport__37C5420D]
GO
ALTER TABLE [dbo].[OportunidadeIdiomas]  WITH CHECK ADD FOREIGN KEY([EstadoId])
REFERENCES [dbo].[Estados] ([Id])
GO
ALTER TABLE [dbo].[OportunidadeIdiomas]  WITH CHECK ADD FOREIGN KEY([IdiomaId])
REFERENCES [dbo].[Idiomas] ([Id])
GO
ALTER TABLE [dbo].[OportunidadeIdiomas]  WITH CHECK ADD  CONSTRAINT [FK__Oportunid__Oport__1758727B] FOREIGN KEY([OportunidadeId])
REFERENCES [dbo].[Oportunidades] ([Id])
GO
ALTER TABLE [dbo].[OportunidadeIdiomas] CHECK CONSTRAINT [FK__Oportunid__Oport__1758727B]
GO
ALTER TABLE [dbo].[Oportunidades]  WITH CHECK ADD FOREIGN KEY([EmpresaId])
REFERENCES [dbo].[Empresas] ([Id])
GO
ALTER TABLE [dbo].[Oportunidades]  WITH CHECK ADD  CONSTRAINT [FK__Oportunid__Nacio__0EC32C7A] FOREIGN KEY([NacionalidadeId])
REFERENCES [dbo].[Nacionalidades] ([Id])
GO
ALTER TABLE [dbo].[Oportunidades] CHECK CONSTRAINT [FK__Oportunid__Nacio__0EC32C7A]
GO
ALTER TABLE [dbo].[Oportunidades]  WITH CHECK ADD  CONSTRAINT [FK__Oportunid__Provi__0DCF0841] FOREIGN KEY([ProvinciaId])
REFERENCES [dbo].[Provincias] ([Id])
GO
ALTER TABLE [dbo].[Oportunidades] CHECK CONSTRAINT [FK__Oportunid__Provi__0DCF0841]
GO
ALTER TABLE [dbo].[Oportunidades]  WITH CHECK ADD  CONSTRAINT [FK__Oportunid__TipoE__61F08603] FOREIGN KEY([TipoEmpregoId])
REFERENCES [dbo].[TipoEmpregos] ([Id])
GO
ALTER TABLE [dbo].[Oportunidades] CHECK CONSTRAINT [FK__Oportunid__TipoE__61F08603]
GO
ALTER TABLE [dbo].[Oportunidades]  WITH CHECK ADD  CONSTRAINT [FK__Oportunid__TipoF__0CDAE408] FOREIGN KEY([TipoFuncaoId])
REFERENCES [dbo].[TipoFuncoes] ([Id])
GO
ALTER TABLE [dbo].[Oportunidades] CHECK CONSTRAINT [FK__Oportunid__TipoF__0CDAE408]
GO
ALTER TABLE [dbo].[Oportunidades]  WITH CHECK ADD  CONSTRAINT [FK__Oportunid__TipoF__62E4AA3C] FOREIGN KEY([TipoFormacaoId])
REFERENCES [dbo].[TipoFormacaos] ([Id])
GO
ALTER TABLE [dbo].[Oportunidades] CHECK CONSTRAINT [FK__Oportunid__TipoF__62E4AA3C]
GO
ALTER TABLE [dbo].[PessoaContactos]  WITH CHECK ADD FOREIGN KEY([ContactoId])
REFERENCES [dbo].[Contactos] ([Id])
GO
ALTER TABLE [dbo].[PessoaContactos]  WITH CHECK ADD FOREIGN KEY([EstadoId])
REFERENCES [dbo].[Estados] ([Id])
GO
ALTER TABLE [dbo].[PessoaContactos]  WITH CHECK ADD FOREIGN KEY([PessoaId])
REFERENCES [dbo].[Pessoas] ([Id])
GO
ALTER TABLE [dbo].[PessoaDocumentos]  WITH CHECK ADD FOREIGN KEY([DocumentoId])
REFERENCES [dbo].[Documentos] ([Id])
GO
ALTER TABLE [dbo].[PessoaDocumentos]  WITH CHECK ADD FOREIGN KEY([EstadoId])
REFERENCES [dbo].[Estados] ([Id])
GO
ALTER TABLE [dbo].[PessoaDocumentos]  WITH CHECK ADD FOREIGN KEY([PessoaId])
REFERENCES [dbo].[Pessoas] ([Id])
GO
ALTER TABLE [dbo].[PessoaIdiomas]  WITH CHECK ADD FOREIGN KEY([EstadoId])
REFERENCES [dbo].[Estados] ([Id])
GO
ALTER TABLE [dbo].[PessoaIdiomas]  WITH CHECK ADD FOREIGN KEY([IdiomaId])
REFERENCES [dbo].[Idiomas] ([Id])
GO
ALTER TABLE [dbo].[PessoaIdiomas]  WITH CHECK ADD FOREIGN KEY([PessoaId])
REFERENCES [dbo].[Pessoas] ([Id])
GO
ALTER TABLE [dbo].[Pessoas]  WITH CHECK ADD  CONSTRAINT [FK__Pessoa__EstadoId__1332DBDC] FOREIGN KEY([EstadoId])
REFERENCES [dbo].[Estados] ([Id])
GO
ALTER TABLE [dbo].[Pessoas] CHECK CONSTRAINT [FK__Pessoa__EstadoId__1332DBDC]
GO
ALTER TABLE [dbo].[Provincias]  WITH CHECK ADD FOREIGN KEY([EstadoId])
REFERENCES [dbo].[Estados] ([Id])
GO
ALTER TABLE [dbo].[Skills]  WITH CHECK ADD FOREIGN KEY([EstadoId])
REFERENCES [dbo].[Estados] ([Id])
GO
ALTER TABLE [dbo].[SolicitacaoDocumentos]  WITH CHECK ADD FOREIGN KEY([CandidaturaId])
REFERENCES [dbo].[Candidaturas] ([Id])
GO
ALTER TABLE [dbo].[SolicitacaoDocumentos]  WITH CHECK ADD FOREIGN KEY([EstadoId])
REFERENCES [dbo].[Estados] ([Id])
GO
ALTER TABLE [dbo].[SolicitacaoDocumentos]  WITH CHECK ADD FOREIGN KEY([TipoDocunentoId])
REFERENCES [dbo].[TipoDocumentos] ([Id])
GO
ALTER TABLE [dbo].[TipoDetalhes]  WITH CHECK ADD FOREIGN KEY([EstadoId])
REFERENCES [dbo].[Estados] ([Id])
GO
ALTER TABLE [dbo].[TipoDocumentos]  WITH CHECK ADD FOREIGN KEY([EstadoId])
REFERENCES [dbo].[Estados] ([Id])
GO
ALTER TABLE [dbo].[TipoEmpregos]  WITH CHECK ADD FOREIGN KEY([EstadoId])
REFERENCES [dbo].[Estados] ([Id])
GO
ALTER TABLE [dbo].[TipoFormacaos]  WITH CHECK ADD FOREIGN KEY([EstadoId])
REFERENCES [dbo].[Estados] ([Id])
GO
ALTER TABLE [dbo].[TipoFuncoes]  WITH CHECK ADD FOREIGN KEY([AreaId])
REFERENCES [dbo].[Areas] ([Id])
GO
ALTER TABLE [dbo].[TipoFuncoes]  WITH CHECK ADD FOREIGN KEY([EstadoId])
REFERENCES [dbo].[Estados] ([Id])
GO
ALTER TABLE [dbo].[TipoFuncoes]  WITH CHECK ADD FOREIGN KEY([EstadoId])
REFERENCES [dbo].[Estados] ([Id])
GO
USE [master]
GO
ALTER DATABASE [JOBSOFFERS] SET  READ_WRITE 
GO
