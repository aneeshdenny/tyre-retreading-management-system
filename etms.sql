USE [master]
GO

/****** Object:  Database [ETMS]    Script Date: 12/17/2020 11:01:52 PM ******/
CREATE DATABASE [ETMS]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ETMS', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\ETMS.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ETMS_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\ETMS_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO

ALTER DATABASE [ETMS] SET COMPATIBILITY_LEVEL = 110
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ETMS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [ETMS] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [ETMS] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [ETMS] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [ETMS] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [ETMS] SET ARITHABORT OFF 
GO

ALTER DATABASE [ETMS] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [ETMS] SET AUTO_CREATE_STATISTICS ON 
GO

ALTER DATABASE [ETMS] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [ETMS] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [ETMS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [ETMS] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [ETMS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [ETMS] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [ETMS] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [ETMS] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [ETMS] SET  DISABLE_BROKER 
GO

ALTER DATABASE [ETMS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [ETMS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [ETMS] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [ETMS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [ETMS] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [ETMS] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [ETMS] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [ETMS] SET RECOVERY FULL 
GO

ALTER DATABASE [ETMS] SET  MULTI_USER 
GO

ALTER DATABASE [ETMS] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [ETMS] SET DB_CHAINING OFF 
GO

ALTER DATABASE [ETMS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [ETMS] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO

ALTER DATABASE [ETMS] SET  READ_WRITE 
GO

