USE [master]
GO
/****** Object:  Database [ProvinciasRD]    Script Date: Tuesday/March/2020 6:34:17 PM ******/
CREATE DATABASE [ProvinciasRD]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ProvinciasRD', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\ProvinciasRD.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ProvinciasRD_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\ProvinciasRD_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [ProvinciasRD] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ProvinciasRD].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ProvinciasRD] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ProvinciasRD] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ProvinciasRD] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ProvinciasRD] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ProvinciasRD] SET ARITHABORT OFF 
GO
ALTER DATABASE [ProvinciasRD] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ProvinciasRD] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ProvinciasRD] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ProvinciasRD] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ProvinciasRD] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ProvinciasRD] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ProvinciasRD] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ProvinciasRD] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ProvinciasRD] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ProvinciasRD] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ProvinciasRD] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ProvinciasRD] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ProvinciasRD] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ProvinciasRD] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ProvinciasRD] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ProvinciasRD] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ProvinciasRD] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ProvinciasRD] SET RECOVERY FULL 
GO
ALTER DATABASE [ProvinciasRD] SET  MULTI_USER 
GO
ALTER DATABASE [ProvinciasRD] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ProvinciasRD] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ProvinciasRD] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ProvinciasRD] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ProvinciasRD] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'ProvinciasRD', N'ON'
GO
ALTER DATABASE [ProvinciasRD] SET QUERY_STORE = OFF
GO
USE [ProvinciasRD]
GO
/****** Object:  User [dlugo]    Script Date: Tuesday/March/2020 6:34:17 PM ******/
CREATE USER [dlugo] FOR LOGIN [dlugo] WITH DEFAULT_SCHEMA=[dlugo]
GO
/****** Object:  Schema [dlugo]    Script Date: Tuesday/March/2020 6:34:17 PM ******/
CREATE SCHEMA [dlugo]
GO
/****** Object:  Table [dbo].[DistritosMunicipales]    Script Date: Tuesday/March/2020 6:34:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DistritosMunicipales](
	[DistritoID] [int] NOT NULL,
	[Nombre] [varchar](45) NULL,
	[MunicipioID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[DistritoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Municipios]    Script Date: Tuesday/March/2020 6:34:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Municipios](
	[MunicipioID] [int] NOT NULL,
	[Nombre] [varchar](45) NULL,
	[ProvinciaID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MunicipioID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Provincias]    Script Date: Tuesday/March/2020 6:34:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Provincias](
	[ProvinciaID] [int] NOT NULL,
	[Nombre] [varchar](45) NULL,
 CONSTRAINT [Provincia_PK] PRIMARY KEY CLUSTERED 
(
	[ProvinciaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (1, N'Barreras', 2)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (2, N'Barro Arriba', 2)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (3, N'Clavellina', 2)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (4, N'Emma Balaguer Viuda Vallejo', 2)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (5, N'Las Barías-La Estancia', 2)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (6, N'Las Lomas', 2)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (7, N'Los Jovillos', 2)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (8, N'Puerto Viejo', 2)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (9, N'Hatillo', 5)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (10, N'Palmar de Ocoa', 5)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (11, N'Villarpando', 6)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (12, N'Hato Nuevo-Cortés', 6)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (13, N'La Siembra', 7)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (14, N'Las Lagunas', 7)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (15, N'Los Fríos', 7)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (16, N'El Rosario', 9)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (17, N'Proyecto 4', 10)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (18, N'Ganadero', 10)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (19, N'Proyecto 2-C', 10)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (20, N'Amiama Gómez', 11)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (21, N'Los Toros', 11)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (22, N'Tábara Abajo', 11)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (23, N'El Palmar', 12)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (24, N'El Salado', 13)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (25, N'Las Clavellinas', 14)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (26, N'Cabeza de Toro', 15)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (27, N'Mena', 15)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (28, N'Monserrat', 15)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (29, N'Santa Bárbara-El 6', 15)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (30, N'Santana', 15)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (31, N'Uvilla', 15)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (32, N'El Cachón', 17)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (33, N'La Guázara', 17)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (34, N'Villa Central', 17)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (35, N'Arroyo Dulce', 20)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (36, N'Pescadería', 21)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (37, N'Palo Alto', 22)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (38, N'Bahoruco', 23)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (39, N'Los Patos', 25)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (40, N'Canoa', 27)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (41, N'Fondo Negro', 27)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (42, N'Quita Coraza', 27)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (43, N'Cañongo', 28)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (44, N'Manuel Bueno', 4)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (45, N'Capotillo', 30)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (46, N'Santiago de la Cruz', 30)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (47, N'Cenoví', 33)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (48, N'Jaya', 33)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (49, N'La Peña', 33)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (50, N'Presidente Don Antonio Guzmán Fernández', 33)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (51, N'Aguacate', 34)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (52, N'Las Coles', 34)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (53, N'Sabana Grande', 36)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (54, N'Agua Santa del Yuna', 39)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (55, N'Barraquito', 39)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (56, N'Cristo Rey de Guaraguao', 39)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (57, N'Las Táranas', 39)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (58, N'Pedro Sánchez', 40)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (59, N'San Francisco-Vicentillo', 40)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (60, N'Santa Lucía', 41)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (61, N'El Cedro', 41)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (62, N'La Gina', 41)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (63, N'Guayabo', 42)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (64, N'Sabana Larga', 42)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (65, N'Sabana Cruz', 43)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (66, N'Sabana Higüero', 43)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (67, N'Guanito', 44)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (68, N'Rancho de la Guardia', 45)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (69, N'Río Limpio', 47)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (70, N'Canca La Reina', 48)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (71, N'El Higüerito', 48)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (72, N'José Contreras', 48)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (73, N'Juan López', 48)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (74, N'La Ortega', 48)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (75, N'Las Lagunas', 48)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (76, N'Monte de la Jagua', 48)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (77, N'San Víctor', 48)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (78, N'Joba Arriba', 50)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (79, N'Veragua', 50)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (80, N'Villa Magante', 50)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (81, N'Guayabo Dulce', 52)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (82, N'Mata Palacio', 52)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (83, N'Yerba Buena', 52)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (84, N'Elupina Cordero de Las Cañitas', 54)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (85, N'Jamao Afuera', 55)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (86, N'Blanco', 56)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (87, N'Boca de Cachón', 58)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (88, N'El Limón', 58)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (89, N'Batey 8', 59)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (90, N'Vengan a Ver', 60)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (91, N'La Colonia', 62)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (92, N'Guayabal', 63)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (93, N'La Otra Banda', 64)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (94, N'Lagunas de Nisibón', 64)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (95, N'Verón-Punta Cana', 64)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (96, N'Bayahibe', 65)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (97, N'Boca de Yuma', 65)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (98, N'Caleta', 66)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (99, N'Cumayasa', 68)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (100, N'El Ranchito', 69)
GO
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (101, N'Río Verde Arriba', 69)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (102, N'La Sabina', 70)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (103, N'Tireo', 70)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (104, N'Buena Vista', 70)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (105, N'Manabao', 71)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (106, N'Rincón', 72)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (107, N'Arroyo al Medio', 73)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (108, N'Las Gordas', 73)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (109, N'San José de Matanzas', 73)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (110, N'Arroyo Salado', 74)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (111, N'La Entrada', 74)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (112, N'El Pozo', 75)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (113, N'Arroyo Toro-Masipedro', 77)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (114, N'La Salvia-Los Quemados', 77)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (115, N'Jayaco', 77)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (116, N'Juma Bejucal', 77)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (117, N'Sabana del Puerto', 77)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (118, N'Juan Adrián', 79)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (119, N'Villa Sonador', 79)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (120, N'Palo Verde', 81)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (121, N'Cana Chapetón', 82)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (122, N'Hatillo Palma', 82)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (123, N'Villa Elisa', 82)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (124, N'Boyá', 86)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (125, N'Chirino', 86)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (126, N'Don Juan', 86)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (127, N'Gonzalo', 89)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (128, N'Majagual', 89)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (129, N'Los Botados', 90)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (130, N'José Francisco Peña Gómez', 91)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (131, N'Juancho', 91)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (132, N'Catalina', 93)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (133, N'El Carretón', 93)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (134, N'El Limonal', 93)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (135, N'Las Barías', 93)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (136, N'Matanzas', 93)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (137, N'Paya', 93)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (138, N'Sabana Buey', 93)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (139, N'Villa Fundación', 93)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (140, N'Villa Sombrero', 93)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (141, N'Pizarrete', 94)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (142, N'Santana', 94)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (143, N'Maimón', 86)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (144, N'Yásica Arriba', 86)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (145, N'Río Grande', 96)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (146, N'Navas', 99)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (147, N'Belloso', 100)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (148, N'Estrecho', 100)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (149, N'La Isabela', 100)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (150, N'Cabarete', 101)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (151, N'Sabaneta de Yásica', 101)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (152, N'Estero Hondo', 102)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (153, N'Gualete', 102)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (154, N'La Jaiba', 102)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (155, N'Arroyo Barril', 104)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (156, N'El Limón', 104)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (157, N'Las Galeras', 104)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (158, N'Hato Damas', 107)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (159, N'El Carril', 108)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (160, N'Cambita El Pueblecito', 109)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (161, N'La Cuchilla', 113)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (162, N'Medina', 113)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (163, N'San José del Puerto', 113)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (164, N'El Naranjal', 115)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (165, N'El Pinar', 115)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (166, N'La Ciénaga', 115)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (167, N'Nizao-Las Auyamas', 115)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (168, N'El Rosario', 118)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (169, N'Guanito', 118)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (170, N'Hato del Padre', 118)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (171, N'Hato Nuevo', 118)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (172, N'La Jagua', 118)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (173, N'Las Charcas de María Nova', 118)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (174, N'Pedro Corto', 118)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (175, N'Sabana Alta', 118)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (176, N'Sabaneta', 118)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (177, N'Arroyo Cano', 119)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (178, N'Yaque', 119)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (179, N'Batista', 120)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (180, N'Derrumbadero', 120)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (181, N'Jínova', 121)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (182, N'Carrera de Yegua', 122)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (183, N'Matayaya', 122)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (184, N'Jorjillo', 123)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (185, N'El Puerto', 129)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (186, N'Gautier', 129)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (187, N'Caballero', 130)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (188, N'Comedero Arriba', 130)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (189, N'Quita Sueño', 130)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (190, N'La Cueva', 131)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (191, N'Platanal', 131)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (192, N'Angelina', 133)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (193, N'La Bija', 133)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (194, N'Hernando Alonzo', 133)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (195, N'Baitoa', 134)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (196, N'Hato del Yaque', 134)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (197, N'La Canela', 134)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (198, N'Pedro García', 134)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (199, N'San Francisco de Jacagua', 134)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (200, N'El Caimito', 136)
GO
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (201, N'Juncalito', 136)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (202, N'Las Palomas', 137)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (203, N'Canabacoa', 137)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (204, N'Guayabal', 137)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (205, N'El Rubio', 140)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (206, N'La Cuesta', 140)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (207, N'Las Placetas', 140)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (208, N'Canca La Piedra', 141)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (209, N'El Limón', 142)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (210, N'Palmar Arriba', 142)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (211, N'San Luis', 146)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (212, N'La Caleta', 147)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (213, N'Palmarejo-Villa Linda', 148)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (214, N'Pantoja', 148)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (215, N'La Cuaba', 149)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (216, N'La Guáyiga', 149)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (217, N'Hato Viejo', 150)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (218, N'La Victoria', 151)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (219, N'Ámina', 153)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (220, N'Guatapanal', 153)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (221, N'Jaibón (Pueblo Nuevo)', 153)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (222, N'Boca de Mao', 154)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (223, N'Jicomé', 154)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (224, N'Maizal', 154)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (225, N'Paradero', 154)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (226, N'Cruce de Guayacanes', 155)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (227, N'Jaibón', 155)
INSERT [dbo].[DistritosMunicipales] ([DistritoID], [Nombre], [MunicipioID]) VALUES (228, N'La Caya', 155)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (1, N'Distrito Nacional', 5)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (2, N'Azua de Compostela', 1)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (3, N'Estebanía', 1)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (4, N'Guayabal', 1)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (5, N'Las Charcas', 1)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (6, N'Las Yayas de Viajama', 1)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (7, N'Padre Las Casas', 1)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (8, N'Peralta', 1)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (9, N'Pueblo Viejo', 1)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (10, N'Sabana Yegua', 1)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (11, N'Tábara Arriba', 1)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (12, N'Neiba', 2)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (13, N'Galván', 2)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (14, N'Los Ríos', 2)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (15, N'Tamayo', 2)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (16, N'Villa Jaragua', 2)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (17, N'Barahona', 3)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (18, N'Cabral', 3)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (19, N'El Peñón', 3)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (20, N'Enriquillo', 3)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (21, N'Fundación', 3)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (22, N'Jaquimeyes', 3)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (23, N'La Ciénaga', 3)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (24, N'Las Salinas', 3)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (25, N'Paraíso', 3)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (26, N'Polo', 3)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (27, N'Vicente Noble', 3)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (28, N'Dajabón', 4)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (29, N'El Pino', 4)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (30, N'Loma de Cabrera', 4)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (31, N'Partido', 4)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (32, N'Restauración', 4)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (33, N'San Francisco de Macorís', 6)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (34, N'Arenoso', 6)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (35, N'Castillo', 6)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (36, N'Eugenio María de Hostos', 6)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (37, N'Las Guáranas', 6)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (38, N'Pimentel', 6)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (39, N'Villa Riva', 6)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (40, N'El Seibo', 8)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (41, N'Miches', 8)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (42, N'Comendador', 7)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (43, N'Bánica', 7)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (44, N'El Llano', 7)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (45, N'Hondo Valle', 7)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (46, N'Juan Santiago', 7)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (47, N'Pedro Santana', 7)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (48, N'Moca', 9)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (49, N'Cayetano Germosén', 9)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (50, N'Gaspar Hernández', 9)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (51, N'Jamao al Norte', 9)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (52, N'Hato Mayor del Rey', 10)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (53, N'El Valle', 10)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (54, N'Sabana de la Mar', 10)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (55, N'Salcedo', 11)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (56, N'Tenares', 11)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (57, N'Villa Tapia', 11)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (58, N'Jimaní', 12)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (59, N'Cristóbal', 12)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (60, N'Duvergé', 12)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (61, N'La Descubierta', 12)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (62, N'Mella', 12)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (63, N'Postrer Río', 12)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (64, N'Higüey', 13)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (65, N'San Rafael del Yuma', 13)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (66, N'La Romana', 14)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (67, N'Guaymate', 14)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (68, N'Villa Hermosa', 14)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (69, N'La Concepción de La Vega', 15)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (70, N'Constanza', 15)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (71, N'Jarabacoa', 15)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (72, N'Jima Abajo', 15)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (73, N'Nagua', 16)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (74, N'Cabrera', 16)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (75, N'El Factor', 16)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (76, N'Río San Juan', 16)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (77, N'Bonao', 17)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (78, N'Maimón', 17)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (79, N'Piedra Blanca', 17)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (80, N'Montecristi', 18)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (81, N'Castañuela', 18)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (82, N'Guayubín', 18)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (83, N'Las Matas de Santa Cruz', 18)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (84, N'Pepillo Salcedo', 18)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (85, N'Villa Vásquez', 18)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (86, N'Monte Plata', 19)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (87, N'Bayaguana', 19)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (88, N'Peralvillo', 19)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (89, N'Sabana Grande de Boyá', 19)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (90, N'Yamasá', 19)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (91, N'Pedernales', 20)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (92, N'Oviedo', 20)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (93, N'Baní', 21)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (94, N'Nizao', 21)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (95, N'Puerto Plata', 22)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (96, N'Altamira', 22)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (97, N'Guananico', 22)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (98, N'Imbert', 22)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (99, N'Los Hidalgos', 22)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (100, N'Luperón', 22)
GO
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (101, N'Sosúa', 22)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (102, N'Villa Isabela', 22)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (103, N'Villa Montellano', 22)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (104, N'Samaná', 23)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (105, N'Las Terrenas', 23)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (106, N'Sánchez', 23)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (107, N'San Cristóbal', 25)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (108, N'Bajos de Haina', 25)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (109, N'Cambita Garabito', 25)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (110, N'Los Cacaos', 25)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (111, N'Sabana Grande de Palenque', 25)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (112, N'San Gregorio de Nigua', 25)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (113, N'Villa Altagracia', 25)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (114, N'Yaguate', 25)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (115, N'San José de Ocoa', 26)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (116, N'Rancho Arriba', 26)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (117, N'Sabana Larga', 26)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (118, N'San Juan de la Maguana', 27)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (119, N'Bohechío', 27)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (120, N'El Cercado', 27)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (121, N'Juan de Herrera', 27)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (122, N'Las Matas de Farfán', 27)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (123, N'Vallejuelo', 27)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (124, N'San Pedro de Macorís', 28)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (125, N'Consuelo', 28)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (126, N'Guayacanes', 28)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (127, N'Quisqueya', 28)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (128, N'Ramón Santana', 28)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (129, N'San José de Los Llanos', 28)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (130, N'Cotuí', 24)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (131, N'Cevicos', 24)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (132, N'Fantino', 24)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (133, N'La Mata', 24)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (134, N'Santiago', 29)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (135, N'Bisonó', 29)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (136, N'Jánico', 29)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (137, N'Licey al Medio', 29)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (138, N'Puñal', 29)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (139, N'Sabana Iglesia', 29)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (140, N'San José de las Matas', 29)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (141, N'Tamboril', 29)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (142, N'Villa González', 29)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (143, N'San Ignacio de Sabaneta', 30)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (144, N'Los Almácigos', 30)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (145, N'Monción', 30)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (146, N'Santo Domingo Este', 31)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (147, N'Boca Chica', 31)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (148, N'Los Alcarrizos', 31)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (149, N'Pedro Brand', 31)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (150, N'San Antonio de Guerra', 31)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (151, N'Santo Domingo Norte', 31)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (152, N'Santo Domingo Oeste', 31)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (153, N'Mao', 32)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (154, N'Esperanza', 32)
INSERT [dbo].[Municipios] ([MunicipioID], [Nombre], [ProvinciaID]) VALUES (155, N'Laguna Salada', 32)
INSERT [dbo].[Provincias] ([ProvinciaID], [Nombre]) VALUES (1, N'Azua')
INSERT [dbo].[Provincias] ([ProvinciaID], [Nombre]) VALUES (2, N'Bahoruco')
INSERT [dbo].[Provincias] ([ProvinciaID], [Nombre]) VALUES (3, N'Barahona')
INSERT [dbo].[Provincias] ([ProvinciaID], [Nombre]) VALUES (4, N'Dajabón')
INSERT [dbo].[Provincias] ([ProvinciaID], [Nombre]) VALUES (5, N'Distrito Nacional')
INSERT [dbo].[Provincias] ([ProvinciaID], [Nombre]) VALUES (6, N'Duarte')
INSERT [dbo].[Provincias] ([ProvinciaID], [Nombre]) VALUES (7, N'Elías Piña')
INSERT [dbo].[Provincias] ([ProvinciaID], [Nombre]) VALUES (8, N'El Seibo')
INSERT [dbo].[Provincias] ([ProvinciaID], [Nombre]) VALUES (9, N'Espaillat')
INSERT [dbo].[Provincias] ([ProvinciaID], [Nombre]) VALUES (10, N'Hato Mayor')
INSERT [dbo].[Provincias] ([ProvinciaID], [Nombre]) VALUES (11, N'Hermanas Mirabal')
INSERT [dbo].[Provincias] ([ProvinciaID], [Nombre]) VALUES (12, N'Independencia')
INSERT [dbo].[Provincias] ([ProvinciaID], [Nombre]) VALUES (13, N'La Altagracia')
INSERT [dbo].[Provincias] ([ProvinciaID], [Nombre]) VALUES (14, N'La Romana')
INSERT [dbo].[Provincias] ([ProvinciaID], [Nombre]) VALUES (15, N'La Vega')
INSERT [dbo].[Provincias] ([ProvinciaID], [Nombre]) VALUES (16, N'María Trinidad Sánchez')
INSERT [dbo].[Provincias] ([ProvinciaID], [Nombre]) VALUES (17, N'Monseñor Nouel')
INSERT [dbo].[Provincias] ([ProvinciaID], [Nombre]) VALUES (18, N'Monte Cristi')
INSERT [dbo].[Provincias] ([ProvinciaID], [Nombre]) VALUES (19, N'Monte Plata')
INSERT [dbo].[Provincias] ([ProvinciaID], [Nombre]) VALUES (20, N'Pedernales')
INSERT [dbo].[Provincias] ([ProvinciaID], [Nombre]) VALUES (21, N'Peravia')
INSERT [dbo].[Provincias] ([ProvinciaID], [Nombre]) VALUES (22, N'Puerto Plata')
INSERT [dbo].[Provincias] ([ProvinciaID], [Nombre]) VALUES (23, N'Samaná')
INSERT [dbo].[Provincias] ([ProvinciaID], [Nombre]) VALUES (24, N'Sánchez Ramírez')
INSERT [dbo].[Provincias] ([ProvinciaID], [Nombre]) VALUES (25, N'San Cristóbal')
INSERT [dbo].[Provincias] ([ProvinciaID], [Nombre]) VALUES (26, N'San José de Ocoa')
INSERT [dbo].[Provincias] ([ProvinciaID], [Nombre]) VALUES (27, N'San Juan')
INSERT [dbo].[Provincias] ([ProvinciaID], [Nombre]) VALUES (28, N'San Pedro de Macorís')
INSERT [dbo].[Provincias] ([ProvinciaID], [Nombre]) VALUES (29, N'Santiago')
INSERT [dbo].[Provincias] ([ProvinciaID], [Nombre]) VALUES (30, N'Santiago Rodríguez')
INSERT [dbo].[Provincias] ([ProvinciaID], [Nombre]) VALUES (31, N'Santo Domingo')
INSERT [dbo].[Provincias] ([ProvinciaID], [Nombre]) VALUES (32, N'Valverde')
ALTER TABLE [dbo].[DistritosMunicipales] ADD  DEFAULT (NULL) FOR [Nombre]
GO
ALTER TABLE [dbo].[DistritosMunicipales] ADD  DEFAULT (NULL) FOR [MunicipioID]
GO
ALTER TABLE [dbo].[Municipios] ADD  DEFAULT (NULL) FOR [Nombre]
GO
ALTER TABLE [dbo].[Municipios] ADD  DEFAULT (NULL) FOR [ProvinciaID]
GO
ALTER TABLE [dbo].[Provincias] ADD  DEFAULT (NULL) FOR [Nombre]
GO
ALTER TABLE [dbo].[DistritosMunicipales]  WITH CHECK ADD  CONSTRAINT [MunicipioID_idx] FOREIGN KEY([MunicipioID])
REFERENCES [dbo].[Municipios] ([MunicipioID])
GO
ALTER TABLE [dbo].[DistritosMunicipales] CHECK CONSTRAINT [MunicipioID_idx]
GO
ALTER TABLE [dbo].[Municipios]  WITH CHECK ADD  CONSTRAINT [ProvinciaID_idx] FOREIGN KEY([ProvinciaID])
REFERENCES [dbo].[Provincias] ([ProvinciaID])
GO
ALTER TABLE [dbo].[Municipios] CHECK CONSTRAINT [ProvinciaID_idx]
GO
USE [master]
GO
ALTER DATABASE [ProvinciasRD] SET  READ_WRITE 
GO
