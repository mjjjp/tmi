USE [db_penjualan_ti14gab]
GO
/****** Object:  Table [dbo].[tbl_barang]    Script Date: 04/11/2017 20:31:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_barang](
	[KodeBarang] [char](4) NOT NULL,
	[NamaBarang] [varchar](50) NOT NULL,
	[Harga] [int] NOT NULL,
	[Stok] [int] NOT NULL,
	[Satuan] [varchar](30) NULL,
 CONSTRAINT [PK_tbl_barang] PRIMARY KEY CLUSTERED 
(
	[KodeBarang] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_pelanggan]    Script Date: 04/11/2017 20:31:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_pelanggan](
	[IdPelanggan] [char](4) NOT NULL,
	[NamaPelanggan] [varchar](50) NOT NULL,
	[Alamat] [varchar](100) NULL,
	[NoTelepon] [varchar](13) NULL,
 CONSTRAINT [PK_tbl_pelanggan] PRIMARY KEY CLUSTERED 
(
	[IdPelanggan] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_penjualan]    Script Date: 04/11/2017 20:31:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_penjualan](
	[NoKwitansi] [varchar](20) NOT NULL,
	[TglKwitansi] [date] NOT NULL,
	[IdPelanggan] [char](4) NOT NULL,
 CONSTRAINT [PK_tbl_penjualan] PRIMARY KEY CLUSTERED 
(
	[NoKwitansi] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_detailpenjualan]    Script Date: 04/11/2017 20:31:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_detailpenjualan](
	[NoKwitansi] [varchar](20) NOT NULL,
	[KodeBarang] [char](4) NOT NULL,
	[Jumlah] [int] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[vw_penjualan]    Script Date: 04/11/2017 20:31:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_penjualan]
AS
SELECT     dbo.tbl_penjualan.NoKwitansi, dbo.tbl_penjualan.TglKwitansi, dbo.tbl_penjualan.IdPelanggan, dbo.tbl_pelanggan.NamaPelanggan
FROM         dbo.tbl_pelanggan INNER JOIN
                      dbo.tbl_penjualan ON dbo.tbl_pelanggan.IdPelanggan = dbo.tbl_penjualan.IdPelanggan
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[46] 4[21] 2[16] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tbl_pelanggan"
            Begin Extent = 
               Top = 22
               Left = 34
               Bottom = 141
               Right = 200
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_penjualan"
            Begin Extent = 
               Top = 51
               Left = 289
               Bottom = 155
               Right = 449
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_penjualan'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_penjualan'
GO
/****** Object:  View [dbo].[vw_detail]    Script Date: 04/11/2017 20:31:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_detail]
AS
SELECT     dbo.tbl_detailpenjualan.NoKwitansi, dbo.tbl_detailpenjualan.KodeBarang, dbo.tbl_barang.NamaBarang, dbo.tbl_barang.Harga, dbo.tbl_barang.Satuan, 
                      dbo.tbl_detailpenjualan.Jumlah, dbo.tbl_detailpenjualan.Jumlah * dbo.tbl_barang.Harga AS JumlahBayar
FROM         dbo.tbl_barang INNER JOIN
                      dbo.tbl_detailpenjualan ON dbo.tbl_barang.KodeBarang = dbo.tbl_detailpenjualan.KodeBarang
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[26] 2[18] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tbl_barang"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 154
               Right = 202
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_detailpenjualan"
            Begin Extent = 
               Top = 51
               Left = 283
               Bottom = 161
               Right = 451
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_detail'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_detail'
GO
/****** Object:  View [dbo].[vw_cetaktransaksi]    Script Date: 04/11/2017 20:31:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_cetaktransaksi]
AS
SELECT     dbo.tbl_detailpenjualan.NoKwitansi, dbo.tbl_penjualan.TglKwitansi, dbo.tbl_penjualan.IdPelanggan, dbo.tbl_pelanggan.NamaPelanggan, 
                      dbo.tbl_detailpenjualan.KodeBarang, dbo.tbl_barang.NamaBarang, dbo.tbl_barang.Harga, dbo.tbl_detailpenjualan.Jumlah, 
                      dbo.tbl_barang.Harga * dbo.tbl_detailpenjualan.Jumlah AS JumlahBayar
FROM         dbo.tbl_barang INNER JOIN
                      dbo.tbl_detailpenjualan ON dbo.tbl_barang.KodeBarang = dbo.tbl_detailpenjualan.KodeBarang INNER JOIN
                      dbo.tbl_penjualan ON dbo.tbl_detailpenjualan.NoKwitansi = dbo.tbl_penjualan.NoKwitansi INNER JOIN
                      dbo.tbl_pelanggan ON dbo.tbl_penjualan.IdPelanggan = dbo.tbl_pelanggan.IdPelanggan
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[52] 4[22] 2[13] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tbl_barang"
            Begin Extent = 
               Top = 6
               Left = 10
               Bottom = 147
               Right = 170
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_detailpenjualan"
            Begin Extent = 
               Top = 73
               Left = 224
               Bottom = 177
               Right = 384
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_pelanggan"
            Begin Extent = 
               Top = 16
               Left = 671
               Bottom = 135
               Right = 837
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_penjualan"
            Begin Extent = 
               Top = 19
               Left = 445
               Bottom = 147
               Right = 600
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_cetaktransaksi'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_cetaktransaksi'
GO
/****** Object:  ForeignKey [FK_tbl_detailpenjualan_tbl_barang]    Script Date: 04/11/2017 20:31:42 ******/
ALTER TABLE [dbo].[tbl_detailpenjualan]  WITH CHECK ADD  CONSTRAINT [FK_tbl_detailpenjualan_tbl_barang] FOREIGN KEY([KodeBarang])
REFERENCES [dbo].[tbl_barang] ([KodeBarang])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_detailpenjualan] CHECK CONSTRAINT [FK_tbl_detailpenjualan_tbl_barang]
GO
/****** Object:  ForeignKey [FK_tbl_detailpenjualan_tbl_penjualan]    Script Date: 04/11/2017 20:31:42 ******/
ALTER TABLE [dbo].[tbl_detailpenjualan]  WITH CHECK ADD  CONSTRAINT [FK_tbl_detailpenjualan_tbl_penjualan] FOREIGN KEY([NoKwitansi])
REFERENCES [dbo].[tbl_penjualan] ([NoKwitansi])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_detailpenjualan] CHECK CONSTRAINT [FK_tbl_detailpenjualan_tbl_penjualan]
GO
/****** Object:  ForeignKey [FK_tbl_penjualan_tbl_pelanggan]    Script Date: 04/11/2017 20:31:42 ******/
ALTER TABLE [dbo].[tbl_penjualan]  WITH CHECK ADD  CONSTRAINT [FK_tbl_penjualan_tbl_pelanggan] FOREIGN KEY([IdPelanggan])
REFERENCES [dbo].[tbl_pelanggan] ([IdPelanggan])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_penjualan] CHECK CONSTRAINT [FK_tbl_penjualan_tbl_pelanggan]
GO
