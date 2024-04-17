USE [master]
GO
/****** Object:  Database [ProyectoDB]    Script Date: 16/4/2024 21:32:22 ******/
CREATE DATABASE [ProyectoDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ProyectoDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\ProyectoDB_Primary.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ProyectoDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\ProyectoDB_Primary.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [ProyectoDB] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ProyectoDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ProyectoDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ProyectoDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ProyectoDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ProyectoDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ProyectoDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [ProyectoDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ProyectoDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ProyectoDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ProyectoDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ProyectoDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ProyectoDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ProyectoDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ProyectoDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ProyectoDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ProyectoDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ProyectoDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ProyectoDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ProyectoDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ProyectoDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ProyectoDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ProyectoDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ProyectoDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ProyectoDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ProyectoDB] SET  MULTI_USER 
GO
ALTER DATABASE [ProyectoDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ProyectoDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ProyectoDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ProyectoDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ProyectoDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ProyectoDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [ProyectoDB] SET QUERY_STORE = ON
GO
ALTER DATABASE [ProyectoDB] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [ProyectoDB]
GO
/****** Object:  Table [dbo].[Cargo]    Script Date: 16/4/2024 21:32:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cargo](
	[IdCargo] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCargo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categoría]    Script Date: 16/4/2024 21:32:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categoría](
	[IdCategoria] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 16/4/2024 21:32:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[IdCliente] [int] IDENTITY(1,1) NOT NULL,
	[Cedula] [varchar](20) NULL,
	[Apellidos] [varchar](100) NULL,
	[Nombres] [varchar](100) NULL,
	[Direccion] [varchar](200) NULL,
	[Telefono] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetalleVenta]    Script Date: 16/4/2024 21:32:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleVenta](
	[IdDetalleVenta] [int] IDENTITY(1,1) NOT NULL,
	[IdProducto] [int] NULL,
	[IdVenta] [int] NULL,
	[Cantidad] [int] NULL,
	[PrecioUnitario] [decimal](10, 2) NULL,
	[IVG] [decimal](10, 2) NULL,
	[SubTotal] [decimal](10, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdDetalleVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 16/4/2024 21:32:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleado](
	[IdEmpleado] [int] IDENTITY(1,1) NOT NULL,
	[IdCargo] [int] NULL,
	[Cedula] [varchar](20) NULL,
	[Apellidos] [varchar](100) NULL,
	[Nombres] [varchar](100) NULL,
	[Sexo] [char](1) NULL,
	[FechaNacimiento] [date] NULL,
	[Direccion] [varchar](200) NULL,
	[EstadoCivil] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 16/4/2024 21:32:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producto](
	[IdProducto] [int] IDENTITY(1,1) NOT NULL,
	[IdCategoria] [int] NULL,
	[Nombre] [varchar](100) NULL,
	[Marca] [varchar](100) NULL,
	[Stock] [int] NULL,
	[PrecioCompra] [decimal](10, 2) NULL,
	[PrecioVenta] [decimal](10, 2) NULL,
	[FechaVencimiento] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 16/4/2024 21:32:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[IdUsuario] [int] IDENTITY(1,1) NOT NULL,
	[IdEmpleado] [int] NULL,
	[Usuario] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Venta]    Script Date: 16/4/2024 21:32:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Venta](
	[IdVenta] [int] IDENTITY(1,1) NOT NULL,
	[IdEmpleado] [int] NULL,
	[IdCliente] [int] NULL,
	[Serie] [varchar](50) NULL,
	[NumDocumento] [varchar](50) NULL,
	[TipoDocumento] [varchar](50) NULL,
	[FechaVenta] [date] NULL,
	[Total] [decimal](10, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DetalleVenta]  WITH CHECK ADD FOREIGN KEY([IdProducto])
REFERENCES [dbo].[Producto] ([IdProducto])
GO
ALTER TABLE [dbo].[DetalleVenta]  WITH CHECK ADD FOREIGN KEY([IdVenta])
REFERENCES [dbo].[Venta] ([IdVenta])
GO
ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD FOREIGN KEY([IdCargo])
REFERENCES [dbo].[Cargo] ([IdCargo])
GO
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD FOREIGN KEY([IdCategoria])
REFERENCES [dbo].[Categoría] ([IdCategoria])
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD FOREIGN KEY([IdEmpleado])
REFERENCES [dbo].[Empleado] ([IdEmpleado])
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD FOREIGN KEY([IdCliente])
REFERENCES [dbo].[Cliente] ([IdCliente])
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD FOREIGN KEY([IdEmpleado])
REFERENCES [dbo].[Empleado] ([IdEmpleado])
GO
/****** Object:  StoredProcedure [dbo].[Actualizar_Catalogo]    Script Date: 16/4/2024 21:32:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Actualizar_Catalogo]
	-- Add the parameters for the stored procedure here
	 @IdProducto INT,
	@Nombre NVARCHAR(100),
	   @Marca NVARCHAR(50),
	   @PrecioCompra Decimal,
	   @PrecioVenta Decimal
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

  UPDATE [dbo].[Producto]
   SET 
      [Nombre] = @Nombre,
	  [Marca] = @Marca
	  ,[PrecioCompra] = @PrecioCompra
      ,[PrecioVenta] = @PrecioVenta
 WHERE [IdProducto] =  @IdProducto 




END
GO
/****** Object:  StoredProcedure [dbo].[Crear_Producto]    Script Date: 16/4/2024 21:32:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Crear_Producto]
    @IdCategoria INT,
    @Nombre NVARCHAR(100),
    @Marca NVARCHAR(50),
    @Stock INT,
    @PrecioCompra DECIMAL(18, 2),
    @PrecioVenta DECIMAL(18, 2),
    @FechaVencimiento DATE
AS
BEGIN
    INSERT INTO Producto (IdCategoria, Nombre, Marca, Stock, PrecioCompra, PrecioVenta, FechaVencimiento)
    VALUES (@IdCategoria, @Nombre, @Marca, @Stock, @PrecioCompra, @PrecioVenta, @FechaVencimiento)
END
GO
/****** Object:  StoredProcedure [dbo].[Eliminar_Catalogo]    Script Date: 16/4/2024 21:32:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Eliminar_Catalogo]
	-- Add the parameters for the stored procedure here
	 @IdProducto INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

 DELETE FROM [dbo].[Producto]
 WHERE [IdProducto] =  @IdProducto 
END
GO
/****** Object:  StoredProcedure [dbo].[Insertar_Empleado]    Script Date: 16/4/2024 21:32:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Insertar_Empleado]
    @Cedula NVARCHAR(20),
    @Apellidos NVARCHAR(50),
    @Nombres NVARCHAR(50),
    @Sexo CHAR(1),
    @FechaNacimiento DATE,
    @Direccion NVARCHAR(100),
    @EstadoCivil NVARCHAR(20),
	 @Password NVARCHAR(20)
AS
BEGIN
    INSERT INTO Empleado (IdCargo, Cedula, Apellidos, Nombres, Sexo, FechaNacimiento, Direccion, EstadoCivil)
    VALUES (2, @Cedula, @Apellidos, @Nombres, @Sexo, @FechaNacimiento, @Direccion, @EstadoCivil)

	DECLARE @UltimoID INT;
    SET @UltimoID = SCOPE_IDENTITY();
	
	INSERT INTO [dbo].[Usuario]
           ([IdEmpleado]
           ,[Usuario]
           ,[Password])
     VALUES
           (@UltimoID
           ,UPPER(SUBSTRING(@Nombres, 1, 1)) + @Apellidos
           ,@Password)

END
GO
/****** Object:  StoredProcedure [dbo].[Obtener_Categorias]    Script Date: 16/4/2024 21:32:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Obtener_Categorias]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;


SELECT [IdCategoria]
      ,[Descripcion]
  FROM [dbo].[Categoría]




END
GO
/****** Object:  StoredProcedure [dbo].[Obtener_Clientes]    Script Date: 16/4/2024 21:32:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Obtener_Clientes]

AS
BEGIN


SELECT [IdCliente]
      ,[Cedula]
      ,[Apellidos]
      ,[Nombres]
      ,[Direccion]
      ,[Telefono],
	  CONCAT(Nombres,' ', Apellidos) as NombreCompleto
  FROM [dbo].[Cliente]
END
GO
/****** Object:  StoredProcedure [dbo].[Obtener_Login]    Script Date: 16/4/2024 21:32:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Obtener_Login]
    @usuario NVARCHAR(50),
    @password NVARCHAR(50)
AS
BEGIN
SELECT [IdUsuario]
      ,[IdEmpleado]
      ,[Usuario]
      ,[Password]
  FROM [dbo].[Usuario]

  WHERE Usuario = @usuario AND Password = @password

END;
GO
/****** Object:  StoredProcedure [dbo].[Obtener_Productos]    Script Date: 16/4/2024 21:32:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Obtener_Productos]
AS
BEGIN

	SET NOCOUNT ON;

SELECT [IdProducto]
      ,[IdCategoria]
      ,[Nombre]
      ,[Marca]
      ,[Stock]
      ,[PrecioCompra]
      ,[PrecioVenta]
      ,[FechaVencimiento]
  FROM [dbo].[Producto]

END
GO
/****** Object:  StoredProcedure [dbo].[Obtener_VentasClientes]    Script Date: 16/4/2024 21:32:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Obtener_VentasClientes]
    @FechaInicio DATE,
    @FechaFin DATE,
    @IdCliente INT,
    @IdProducto INT
AS
BEGIN
    SET NOCOUNT ON;

    	SELECT TOP (1000) B.[IdVenta]
      ,[IdEmpleado]
      ,[IdCliente]
      ,[Serie]
      ,[NumDocumento]
      ,[TipoDocumento]
      ,[FechaVenta]
      ,[Total]

  FROM [ProyectoDB].[dbo].[Venta] A inner join  [ProyectoDB].[dbo].[DetalleVenta] B on A.IdVenta = B.IdVenta

    WHERE 
        (@FechaInicio IS NULL OR A.FechaVenta >= @FechaInicio)
        AND (@FechaFin IS NULL OR A.FechaVenta <= @FechaFin)
        AND (@IdCliente IS NULL OR A.IdCliente = @IdCliente)
        AND (@IdProducto IS NULL OR B.IdProducto = @IdProducto);
END
GO
USE [master]
GO
ALTER DATABASE [ProyectoDB] SET  READ_WRITE 
GO
