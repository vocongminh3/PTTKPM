USE [master]
GO
/****** Object:  Database [QuanLyNhaSach]    Script Date: 12/27/2022 2:29:21 PM ******/
CREATE DATABASE [QuanLyNhaSach]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLyNhaSach', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\QuanLyNhaSach.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QuanLyNhaSach_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\QuanLyNhaSach_log.ldf' , SIZE = 816KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QuanLyNhaSach] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLyNhaSach].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLyNhaSach] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLyNhaSach] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLyNhaSach] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLyNhaSach] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLyNhaSach] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLyNhaSach] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QuanLyNhaSach] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLyNhaSach] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyNhaSach] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLyNhaSach] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLyNhaSach] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLyNhaSach] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLyNhaSach] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLyNhaSach] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLyNhaSach] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QuanLyNhaSach] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLyNhaSach] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLyNhaSach] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLyNhaSach] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLyNhaSach] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLyNhaSach] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLyNhaSach] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLyNhaSach] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QuanLyNhaSach] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLyNhaSach] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLyNhaSach] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLyNhaSach] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLyNhaSach] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [QuanLyNhaSach] SET DELAYED_DURABILITY = DISABLED 
GO
USE [QuanLyNhaSach]
GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 12/27/2022 2:29:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[MaHoaDon] [int] NOT NULL,
	[MaSach] [int] NOT NULL,
	[SoLuongMua] [int] NULL,
	[DonGia] [int] NULL,
 CONSTRAINT [ChiTietHoaDon_PK] PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC,
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 12/27/2022 2:29:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHoaDon] [int] IDENTITY(1,1) NOT NULL,
	[MaKhachHang] [int] NULL,
	[NgayLapHoaDon] [date] NULL,
	[BiXoa] [bit] NULL,
 CONSTRAINT [HoaDon_PK] PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 12/27/2022 2:29:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKhachHang] [int] IDENTITY(1,1) NOT NULL,
	[TenKhachHang] [nvarchar](max) NULL,
	[DienThoai] [nvarchar](max) NULL,
	[DiaChi] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Tien] [int] NULL CONSTRAINT [DF_KhachHang_Tien]  DEFAULT ((0)),
	[BiXoa] [bit] NULL,
 CONSTRAINT [KhachHang_PK] PRIMARY KEY CLUSTERED 
(
	[MaKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 12/27/2022 2:29:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[tendangnhap] [nvarchar](100) NOT NULL,
	[matkhau] [nvarchar](max) NULL,
	[loai] [bit] NULL CONSTRAINT [DF_Users_Type]  DEFAULT ((0)),
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[tendangnhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhieuNhap]    Script Date: 12/27/2022 2:29:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuNhap](
	[MaPhieuNhap] [int] IDENTITY(1,1) NOT NULL,
	[NgayNhap] [date] NULL,
	[SoLuong] [int] NULL,
	[MaSach] [int] NULL,
 CONSTRAINT [PhieuNhap_PK] PRIMARY KEY CLUSTERED 
(
	[MaPhieuNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhieuThuTien]    Script Date: 12/27/2022 2:29:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuThuTien](
	[MaPhieuThuTien] [int] IDENTITY(1,1) NOT NULL,
	[NgayThuTien] [datetime] NULL,
	[SoTienThu] [int] NULL,
	[MaKhachHang] [int] NULL,
 CONSTRAINT [PhieuThuTien_PK] PRIMARY KEY CLUSTERED 
(
	[MaPhieuThuTien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[QuyDinh]    Script Date: 12/27/2022 2:29:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuyDinh](
	[SoLuongSachTonToiThieuDeNhap] [int] NULL,
	[SoLuongSachNhapToiThieuDeNhap] [int] NULL,
	[TienToiDa] [int] NULL,
	[SoLuongSachTonToiThieuSauKhiBan] [int] NULL,
	[TienThuLonHonNo] [bit] NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_QuyDinh] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sach]    Script Date: 12/27/2022 2:29:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sach](
	[MaSach] [int] IDENTITY(1,1) NOT NULL,
	[TenSach] [nvarchar](max) NULL,
	[TenTheLoai] [nvarchar](max) NULL,
	[TacGia] [nvarchar](max) NULL,
	[SoLuong] [int] NULL,
	[BiXoa] [bit] NULL,
 CONSTRAINT [Sach_PK] PRIMARY KEY CLUSTERED 
(
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[ChiTietHoaDon] ([MaHoaDon], [MaSach], [SoLuongMua], [DonGia]) VALUES (25, 20, 5, 2000)
INSERT [dbo].[ChiTietHoaDon] ([MaHoaDon], [MaSach], [SoLuongMua], [DonGia]) VALUES (26, 1, 1, 1000)
INSERT [dbo].[ChiTietHoaDon] ([MaHoaDon], [MaSach], [SoLuongMua], [DonGia]) VALUES (27, 3, 5, 1000)
SET IDENTITY_INSERT [dbo].[HoaDon] ON 

INSERT [dbo].[HoaDon] ([MaHoaDon], [MaKhachHang], [NgayLapHoaDon], [BiXoa]) VALUES (24, 1, CAST(N'2022-12-17' AS Date), 0)
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaKhachHang], [NgayLapHoaDon], [BiXoa]) VALUES (25, 1, CAST(N'2022-12-17' AS Date), 1)
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaKhachHang], [NgayLapHoaDon], [BiXoa]) VALUES (26, 2, CAST(N'2022-12-17' AS Date), 0)
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaKhachHang], [NgayLapHoaDon], [BiXoa]) VALUES (27, 1, CAST(N'2022-12-17' AS Date), 1)
SET IDENTITY_INSERT [dbo].[HoaDon] OFF
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [DienThoai], [DiaChi], [Email], [Tien], [BiXoa]) VALUES (1, N'Nguyễn Văn A', N'012345679', N'TPHCM', N'nguyenvana@gmail.com', 11000, 0)
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [DienThoai], [DiaChi], [Email], [Tien], [BiXoa]) VALUES (2, N'Nguyễn Văn B', N'0123456789', N'Long An', N'nguyenvanb@gmail.com', 14000, 0)
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [DienThoai], [DiaChi], [Email], [Tien], [BiXoa]) VALUES (3, N'Nguyễn Văn C', N'0123456789', N'An Giang', N'nguyenvanc@gmail.com', 25000, 0)
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [DienThoai], [DiaChi], [Email], [Tien], [BiXoa]) VALUES (5, N'Nguyễn Thị E', N'123456789', N'Tiền Giang', N'nguyenthid@gmail.com', 20000, 0)
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [DienThoai], [DiaChi], [Email], [Tien], [BiXoa]) VALUES (6, N'a', N'12345', N'a', N'a@gmail.com', 0, 1)
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [DienThoai], [DiaChi], [Email], [Tien], [BiXoa]) VALUES (7, N'a', N'12345', N'a', N'a@gmail.com', 0, 1)
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
INSERT [dbo].[NguoiDung] ([tendangnhap], [matkhau], [loai]) VALUES (N'admin', N'admin', 1)
INSERT [dbo].[NguoiDung] ([tendangnhap], [matkhau], [loai]) VALUES (N'staff', N'staff', 0)
SET IDENTITY_INSERT [dbo].[PhieuNhap] ON 

INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [NgayNhap], [SoLuong], [MaSach]) VALUES (52, CAST(N'2022-12-17' AS Date), 200, 20)
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [NgayNhap], [SoLuong], [MaSach]) VALUES (53, CAST(N'2022-12-17' AS Date), 200, 20)
SET IDENTITY_INSERT [dbo].[PhieuNhap] OFF
SET IDENTITY_INSERT [dbo].[PhieuThuTien] ON 

INSERT [dbo].[PhieuThuTien] ([MaPhieuThuTien], [NgayThuTien], [SoTienThu], [MaKhachHang]) VALUES (10, CAST(N'2022-12-17 00:00:00.000' AS DateTime), 10000, 1)
INSERT [dbo].[PhieuThuTien] ([MaPhieuThuTien], [NgayThuTien], [SoTienThu], [MaKhachHang]) VALUES (11, CAST(N'2022-12-17 00:00:00.000' AS DateTime), 10000, 2)
INSERT [dbo].[PhieuThuTien] ([MaPhieuThuTien], [NgayThuTien], [SoTienThu], [MaKhachHang]) VALUES (12, CAST(N'2022-12-17 00:00:00.000' AS DateTime), 10000, 3)
INSERT [dbo].[PhieuThuTien] ([MaPhieuThuTien], [NgayThuTien], [SoTienThu], [MaKhachHang]) VALUES (13, CAST(N'2022-12-17 00:00:00.000' AS DateTime), 10000, 5)
INSERT [dbo].[PhieuThuTien] ([MaPhieuThuTien], [NgayThuTien], [SoTienThu], [MaKhachHang]) VALUES (14, CAST(N'2022-12-17 00:00:00.000' AS DateTime), 20000, 1)
INSERT [dbo].[PhieuThuTien] ([MaPhieuThuTien], [NgayThuTien], [SoTienThu], [MaKhachHang]) VALUES (15, CAST(N'2022-12-17 00:00:00.000' AS DateTime), 10000, 3)
INSERT [dbo].[PhieuThuTien] ([MaPhieuThuTien], [NgayThuTien], [SoTienThu], [MaKhachHang]) VALUES (16, CAST(N'2022-11-18 00:00:00.000' AS DateTime), 5000, 3)
SET IDENTITY_INSERT [dbo].[PhieuThuTien] OFF
SET IDENTITY_INSERT [dbo].[QuyDinh] ON 

INSERT [dbo].[QuyDinh] ([SoLuongSachTonToiThieuDeNhap], [SoLuongSachNhapToiThieuDeNhap], [TienToiDa], [SoLuongSachTonToiThieuSauKhiBan], [TienThuLonHonNo], [id]) VALUES (400, 150, 20000, 20, 0, 1)
SET IDENTITY_INSERT [dbo].[QuyDinh] OFF
SET IDENTITY_INSERT [dbo].[Sach] ON 

INSERT [dbo].[Sach] ([MaSach], [TenSach], [TenTheLoai], [TacGia], [SoLuong], [BiXoa]) VALUES (1, N'Nhà Giả Kim', N'Văn học', N'Paulo Coelho', 98, 0)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TenTheLoai], [TacGia], [SoLuong], [BiXoa]) VALUES (2, N'Tuổi Thơ Dữ Dội', N'Văn học', N'Phùng Quán', 100, 0)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TenTheLoai], [TacGia], [SoLuong], [BiXoa]) VALUES (3, N'Chí Phèo', N'Văn học', N'Nam Cao', 100, 0)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TenTheLoai], [TacGia], [SoLuong], [BiXoa]) VALUES (4, N'Vợ Nhặt', N'Văn học', N'Kim Lân', 100, 0)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TenTheLoai], [TacGia], [SoLuong], [BiXoa]) VALUES (5, N'Tắt Đèn', N'Văn học', N'Ngô Tất Tố', 100, 0)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TenTheLoai], [TacGia], [SoLuong], [BiXoa]) VALUES (6, N'Kinh điển về khởi nghiệp', N'Kinh Tế', N'BILL AULET', 100, 0)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TenTheLoai], [TacGia], [SoLuong], [BiXoa]) VALUES (7, N'Lược Sử Kinh Tế Học', N'Kinh Tế', N'Niall Kishtainy', 100, 0)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TenTheLoai], [TacGia], [SoLuong], [BiXoa]) VALUES (8, N'Xây dựng để trường tồn', N'Kinh Tế', N'Jim Collins ', 100, 0)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TenTheLoai], [TacGia], [SoLuong], [BiXoa]) VALUES (9, N'Từ tốt đến vĩ đại', N'Kinh Tế', N'Jim Collins ', 100, 0)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TenTheLoai], [TacGia], [SoLuong], [BiXoa]) VALUES (10, N'Thế Giới Phẳng', N'Kinh Tế', N'Thomas L.Friedman', 100, 0)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TenTheLoai], [TacGia], [SoLuong], [BiXoa]) VALUES (11, N'Hai Số Phận', N'Văn Học', N'Archer', 100, 0)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TenTheLoai], [TacGia], [SoLuong], [BiXoa]) VALUES (13, N'Bắt Trẻ Đồng Xanh', N'Văn học', N'Salinger', 100, 0)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TenTheLoai], [TacGia], [SoLuong], [BiXoa]) VALUES (20, N'Trí Tuệ Do Thái', N'Tư duy', N' Eran Katz', 494, 0)
SET IDENTITY_INSERT [dbo].[Sach] OFF
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_HoaDon] FOREIGN KEY([MaHoaDon])
REFERENCES [dbo].[HoaDon] ([MaHoaDon])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_HoaDon]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_Sach] FOREIGN KEY([MaSach])
REFERENCES [dbo].[Sach] ([MaSach])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_Sach]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_KhachHang] FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[KhachHang] ([MaKhachHang])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_KhachHang]
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhap_Sach] FOREIGN KEY([MaSach])
REFERENCES [dbo].[Sach] ([MaSach])
GO
ALTER TABLE [dbo].[PhieuNhap] CHECK CONSTRAINT [FK_PhieuNhap_Sach]
GO
ALTER TABLE [dbo].[PhieuThuTien]  WITH CHECK ADD  CONSTRAINT [FK_PhieuThuTien_KhachHang] FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[KhachHang] ([MaKhachHang])
GO
ALTER TABLE [dbo].[PhieuThuTien] CHECK CONSTRAINT [FK_PhieuThuTien_KhachHang]
GO
USE [master]
GO
ALTER DATABASE [QuanLyNhaSach] SET  READ_WRITE 
GO
