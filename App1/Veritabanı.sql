USE [Stok_Takip]
GO
/****** Object:  Table [dbo].[kategoribilgileri]    Script Date: 31.05.2021 09:42:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kategoribilgileri](
	[kategori] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[markabilgileri]    Script Date: 31.05.2021 09:42:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[markabilgileri](
	[kategori] [nvarchar](50) NOT NULL,
	[marka] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[urun]    Script Date: 31.05.2021 09:42:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[urun](
	[barkodno] [nvarchar](50) NOT NULL,
	[kategori] [nvarchar](50) NOT NULL,
	[marka] [nvarchar](50) NOT NULL,
	[urunadi] [nvarchar](50) NOT NULL,
	[miktari] [int] NOT NULL,
	[alisfiyati] [decimal](18, 2) NOT NULL,
	[satisfiyati] [decimal](18, 2) NOT NULL,
	[tarih] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[kategoribilgileri] ([kategori]) VALUES (N'Sabun')
INSERT [dbo].[kategoribilgileri] ([kategori]) VALUES (N'Saç Bakım')
INSERT [dbo].[kategoribilgileri] ([kategori]) VALUES (N'Bebek Ürünleri')
INSERT [dbo].[kategoribilgileri] ([kategori]) VALUES (N'Tıraş Ürünleri')
INSERT [dbo].[kategoribilgileri] ([kategori]) VALUES (N'Cilt Bakım Ürünleri')
INSERT [dbo].[kategoribilgileri] ([kategori]) VALUES (N'Güneş Ürünleri')
INSERT [dbo].[kategoribilgileri] ([kategori]) VALUES (N'Ağız Bakım Ürünleri')
INSERT [dbo].[kategoribilgileri] ([kategori]) VALUES (N'Makyaj')
GO
INSERT [dbo].[markabilgileri] ([kategori], [marka]) VALUES (N'Bebek Ürünleri', N'Dalin')
INSERT [dbo].[markabilgileri] ([kategori], [marka]) VALUES (N'Ağız Bakım Ürünleri', N'Oral-B')
INSERT [dbo].[markabilgileri] ([kategori], [marka]) VALUES (N'Ağız Bakım Ürünleri', N'Colgate')
INSERT [dbo].[markabilgileri] ([kategori], [marka]) VALUES (N'Makyaj', N'Mac')
INSERT [dbo].[markabilgileri] ([kategori], [marka]) VALUES (N'Makyaj', N'Essence')
INSERT [dbo].[markabilgileri] ([kategori], [marka]) VALUES (N'Makyaj', N'New well')
INSERT [dbo].[markabilgileri] ([kategori], [marka]) VALUES (N'Sabun', N'Dove')
INSERT [dbo].[markabilgileri] ([kategori], [marka]) VALUES (N'Saç Bakım', N'Urban Care')
INSERT [dbo].[markabilgileri] ([kategori], [marka]) VALUES (N'Tıraş Ürünleri', N'Gillette')
INSERT [dbo].[markabilgileri] ([kategori], [marka]) VALUES (N'Cilt Bakım Ürünleri', N'Simple')
INSERT [dbo].[markabilgileri] ([kategori], [marka]) VALUES (N'Güneş Ürünleri', N'Sebamed')
INSERT [dbo].[markabilgileri] ([kategori], [marka]) VALUES (N'Güneş Ürünleri', N'Roc')
INSERT [dbo].[markabilgileri] ([kategori], [marka]) VALUES (N'Cilt Bakım Ürünleri', N'Vichy')
INSERT [dbo].[markabilgileri] ([kategori], [marka]) VALUES (N'Cilt Bakım Ürünleri', N'Nivea')
INSERT [dbo].[markabilgileri] ([kategori], [marka]) VALUES (N'Cilt Bakım Ürünleri', N'Hobby')
GO
INSERT [dbo].[urun] ([barkodno], [kategori], [marka], [urunadi], [miktari], [alisfiyati], [satisfiyati], [tarih]) VALUES (N'10', N'Bebek Ürünleri', N'Dalin', N'Bebek Şampuanı', 40, CAST(15.00 AS Decimal(18, 2)), CAST(25.00 AS Decimal(18, 2)), N'30.05.2021 20:29:20')
INSERT [dbo].[urun] ([barkodno], [kategori], [marka], [urunadi], [miktari], [alisfiyati], [satisfiyati], [tarih]) VALUES (N'7', N'Saç Bakım', N'Urban Care', N'Keratin şampuan', 40, CAST(32.00 AS Decimal(18, 2)), CAST(38.00 AS Decimal(18, 2)), N'30.05.2021 22:34:35')
INSERT [dbo].[urun] ([barkodno], [kategori], [marka], [urunadi], [miktari], [alisfiyati], [satisfiyati], [tarih]) VALUES (N'6', N'Ağız Bakım Ürünleri', N'Colgate', N'Diş macunu', 25, CAST(12.00 AS Decimal(18, 2)), CAST(16.00 AS Decimal(18, 2)), N'30.05.2021 22:38:01')
INSERT [dbo].[urun] ([barkodno], [kategori], [marka], [urunadi], [miktari], [alisfiyati], [satisfiyati], [tarih]) VALUES (N'5', N'Ağız Bakım Ürünleri', N'Oral-B', N'Ağız gargarası', 40, CAST(18.00 AS Decimal(18, 2)), CAST(25.00 AS Decimal(18, 2)), N'30.05.2021 22:39:11')
INSERT [dbo].[urun] ([barkodno], [kategori], [marka], [urunadi], [miktari], [alisfiyati], [satisfiyati], [tarih]) VALUES (N'3', N'Makyaj', N'Mac', N'Ruj-32', 20, CAST(110.00 AS Decimal(18, 2)), CAST(130.00 AS Decimal(18, 2)), N'30.05.2021 22:45:35')
INSERT [dbo].[urun] ([barkodno], [kategori], [marka], [urunadi], [miktari], [alisfiyati], [satisfiyati], [tarih]) VALUES (N'2', N'Makyaj', N'Essence', N'Rimel', 20, CAST(40.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), N'30.05.2021 22:46:11')
INSERT [dbo].[urun] ([barkodno], [kategori], [marka], [urunadi], [miktari], [alisfiyati], [satisfiyati], [tarih]) VALUES (N'1', N'Makyaj', N'New well', N'Kontour stick', 30, CAST(25.00 AS Decimal(18, 2)), CAST(32.00 AS Decimal(18, 2)), N'30.05.2021 22:47:27')
INSERT [dbo].[urun] ([barkodno], [kategori], [marka], [urunadi], [miktari], [alisfiyati], [satisfiyati], [tarih]) VALUES (N'11', N'Sabun', N'Dove', N'Meyveli Sabun', 45, CAST(5.00 AS Decimal(18, 2)), CAST(8.00 AS Decimal(18, 2)), N'30.05.2021 21:33:12')
INSERT [dbo].[urun] ([barkodno], [kategori], [marka], [urunadi], [miktari], [alisfiyati], [satisfiyati], [tarih]) VALUES (N'8', N'Saç Bakım', N'Urban Care', N'Saç bakım yağı', 20, CAST(30.00 AS Decimal(18, 2)), CAST(35.00 AS Decimal(18, 2)), N'30.05.2021 22:31:20')
INSERT [dbo].[urun] ([barkodno], [kategori], [marka], [urunadi], [miktari], [alisfiyati], [satisfiyati], [tarih]) VALUES (N'12', N'Sabun', N'Dove', N'Sütlü Sabun', 15, CAST(7.00 AS Decimal(18, 2)), CAST(11.00 AS Decimal(18, 2)), N'30.05.2021 21:38:55')
INSERT [dbo].[urun] ([barkodno], [kategori], [marka], [urunadi], [miktari], [alisfiyati], [satisfiyati], [tarih]) VALUES (N'13', N'Tıraş Ürünleri', N'Gillette', N'Traş Bıçağı', 35, CAST(22.00 AS Decimal(18, 2)), CAST(28.00 AS Decimal(18, 2)), N'30.05.2021 22:03:04')
INSERT [dbo].[urun] ([barkodno], [kategori], [marka], [urunadi], [miktari], [alisfiyati], [satisfiyati], [tarih]) VALUES (N'14', N'Güneş Ürünleri', N'Sebamed', N'Güneş kremi 50+', 30, CAST(80.00 AS Decimal(18, 2)), CAST(105.00 AS Decimal(18, 2)), N'30.05.2021 22:12:04')
INSERT [dbo].[urun] ([barkodno], [kategori], [marka], [urunadi], [miktari], [alisfiyati], [satisfiyati], [tarih]) VALUES (N'15', N'Güneş Ürünleri', N'Roc', N'Güneş kremi 30+', 45, CAST(170.00 AS Decimal(18, 2)), CAST(197.00 AS Decimal(18, 2)), N'30.05.2021 22:13:28')
INSERT [dbo].[urun] ([barkodno], [kategori], [marka], [urunadi], [miktari], [alisfiyati], [satisfiyati], [tarih]) VALUES (N'16', N'Cilt Bakım Ürünleri', N'Simple', N'Nemlendirici krem', 30, CAST(15.00 AS Decimal(18, 2)), CAST(19.00 AS Decimal(18, 2)), N'30.05.2021 22:14:27')
INSERT [dbo].[urun] ([barkodno], [kategori], [marka], [urunadi], [miktari], [alisfiyati], [satisfiyati], [tarih]) VALUES (N'17', N'Cilt Bakım Ürünleri', N'Vichy', N'Gençleştirici krem', 35, CAST(210.00 AS Decimal(18, 2)), CAST(245.00 AS Decimal(18, 2)), N'30.05.2021 22:15:25')
INSERT [dbo].[urun] ([barkodno], [kategori], [marka], [urunadi], [miktari], [alisfiyati], [satisfiyati], [tarih]) VALUES (N'18', N'Cilt Bakım Ürünleri', N'Nivea', N'Yüz temizleme köpüğü', 30, CAST(15.00 AS Decimal(18, 2)), CAST(18.00 AS Decimal(18, 2)), N'30.05.2021 22:16:25')
INSERT [dbo].[urun] ([barkodno], [kategori], [marka], [urunadi], [miktari], [alisfiyati], [satisfiyati], [tarih]) VALUES (N'9', N'Cilt Bakım Ürünleri', N'Hobby', N'El nemlendiricisi', 70, CAST(4.00 AS Decimal(18, 2)), CAST(7.00 AS Decimal(18, 2)), N'30.05.2021 22:20:13')
GO
