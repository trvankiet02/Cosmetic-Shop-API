/*
 Navicat Premium Data Transfer

 Source Server         : SQLSever
 Source Server Type    : SQL Server
 Source Server Version : 15002000
 Source Host           : PavilionGaming1\SQLEXPRESS:1433
 Source Catalog        : CosmeticShop
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 15002000
 File Encoding         : 65001

 Date: 16/05/2023 00:33:07
*/


-- ----------------------------
-- Table structure for address
-- ----------------------------

/* Create and use */
-------------------------------
CREATE DATABASE [CosmeticShop]
GO

USE [CosmeticShop]
GO
-------------------------------

IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[address]') AND type IN ('U'))
	DROP TABLE [dbo].[address]
GO

CREATE TABLE [dbo].[address] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [address] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_at] datetime2(7)  NULL,
  [update_at] datetime2(7)  NULL,
  [user_id] int  NULL,
  [first_name] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [is_default] bit  NULL,
  [last_name] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [phone] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[address] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of address
-- ----------------------------
SET IDENTITY_INSERT [dbo].[address] ON
GO

INSERT INTO [dbo].[address] ([id], [address], [create_at], [update_at], [user_id], [first_name], [is_default], [last_name], [phone]) VALUES (N'1', N'617 East Alley', N'2015-12-29 10:35:11.0000000', N'2019-04-06 17:18:18.0000000', N'1', N'Kiet', N'0', N'Tran', N'0982238302')
GO

INSERT INTO [dbo].[address] ([id], [address], [create_at], [update_at], [user_id], [first_name], [is_default], [last_name], [phone]) VALUES (N'2', N'3-9-3 Gakuenminami', N'2020-05-04 04:32:45.0000000', N'2001-07-04 02:09:45.0000000', N'2', N'Kiet', N'0', N'Tran', N'0982238302')
GO

INSERT INTO [dbo].[address] ([id], [address], [create_at], [update_at], [user_id], [first_name], [is_default], [last_name], [phone]) VALUES (N'3', N'515 Pollen Street', N'2003-06-20 06:52:54.0000000', N'2012-03-30 12:48:41.0000000', N'3', N'Kiet', N'0', N'Tran', N'0982238302')
GO

INSERT INTO [dbo].[address] ([id], [address], [create_at], [update_at], [user_id], [first_name], [is_default], [last_name], [phone]) VALUES (N'4', N'279 Volac Park, Grantchester Rd', N'2002-10-07 03:07:09.0000000', N'2020-10-07 10:55:06.0000000', N'4', N'Kiet', N'1', N'Tran', N'0982238302')
GO

INSERT INTO [dbo].[address] ([id], [address], [create_at], [update_at], [user_id], [first_name], [is_default], [last_name], [phone]) VALUES (N'6', N'822 028 County Rd, Yanqing District', N'2013-09-16 11:00:04.0000000', N'2011-03-16 05:11:54.0000000', N'2', N'Kiet', N'0', N'Tran', N'0982238302')
GO

INSERT INTO [dbo].[address] ([id], [address], [create_at], [update_at], [user_id], [first_name], [is_default], [last_name], [phone]) VALUES (N'7', N'Viet Nam', N'2023-05-12 03:03:56.0000000', N'2023-05-11 20:44:49.4310000', N'1', N'Nhi Nhi', N'0', N'Nguyen', N'0987654321')
GO

INSERT INTO [dbo].[address] ([id], [address], [create_at], [update_at], [user_id], [first_name], [is_default], [last_name], [phone]) VALUES (N'8', N'Vân Trình', N'2023-05-11 20:50:51.6940000', N'2023-05-11 20:44:49.4310000', N'1', N'Trần Văn', N'1', N'Kiệt', N'0982238302')
GO

INSERT INTO [dbo].[address] ([id], [address], [create_at], [update_at], [user_id], [first_name], [is_default], [last_name], [phone]) VALUES (N'10', N'1', N'2023-05-14 19:21:27.7420000', NULL, N'10', N'1', N'1', N'1', N'1')
GO

INSERT INTO [dbo].[address] ([id], [address], [create_at], [update_at], [user_id], [first_name], [is_default], [last_name], [phone]) VALUES (N'11', N'alola', N'2023-05-14 20:45:41.7980000', NULL, N'5', N'Tran', N'1', N'Phuc', N'0123456789')
GO

INSERT INTO [dbo].[address] ([id], [address], [create_at], [update_at], [user_id], [first_name], [is_default], [last_name], [phone]) VALUES (N'12', N'So 1 VVN', N'2023-05-15 01:41:52.0880000', NULL, N'12', N'Nguyen', N'1', N'Thien', N'0123456789')
GO

INSERT INTO [dbo].[address] ([id], [address], [create_at], [update_at], [user_id], [first_name], [is_default], [last_name], [phone]) VALUES (N'21', N'1', N'2023-05-15 23:35:51.9880000', NULL, N'13', N'1', N'0', N'111', N'1')
GO

INSERT INTO [dbo].[address] ([id], [address], [create_at], [update_at], [user_id], [first_name], [is_default], [last_name], [phone]) VALUES (N'22', N'1', N'2023-05-15 23:36:52.6830000', NULL, N'13', N'1', N'1', N'1', N'1')
GO

SET IDENTITY_INSERT [dbo].[address] OFF
GO


-- ----------------------------
-- Table structure for cart
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[cart]') AND type IN ('U'))
	DROP TABLE [dbo].[cart]
GO

CREATE TABLE [dbo].[cart] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [create_at] datetime2(7)  NULL,
  [update_at] datetime2(7)  NULL,
  [store_id] int  NULL,
  [user_id] int  NULL
)
GO

ALTER TABLE [dbo].[cart] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of cart
-- ----------------------------
SET IDENTITY_INSERT [dbo].[cart] ON
GO

INSERT INTO [dbo].[cart] ([id], [create_at], [update_at], [store_id], [user_id]) VALUES (N'1', N'2023-05-11 09:45:24.3210000', N'2023-05-15 01:53:39.8830000', N'2', N'1')
GO

INSERT INTO [dbo].[cart] ([id], [create_at], [update_at], [store_id], [user_id]) VALUES (N'2', N'2023-05-11 11:52:20.6660000', N'2023-05-14 10:33:22.9140000', N'1', N'1')
GO

INSERT INTO [dbo].[cart] ([id], [create_at], [update_at], [store_id], [user_id]) VALUES (N'3', N'2023-05-13 15:13:53.8210000', N'2023-05-13 15:13:53.8210000', N'2', N'9')
GO

INSERT INTO [dbo].[cart] ([id], [create_at], [update_at], [store_id], [user_id]) VALUES (N'4', N'2023-05-14 16:59:57.6590000', N'2023-05-14 17:57:09.6660000', N'1', N'5')
GO

INSERT INTO [dbo].[cart] ([id], [create_at], [update_at], [store_id], [user_id]) VALUES (N'5', N'2023-05-14 17:01:24.5880000', N'2023-05-14 18:00:30.9130000', N'2', N'5')
GO

INSERT INTO [dbo].[cart] ([id], [create_at], [update_at], [store_id], [user_id]) VALUES (N'6', N'2023-05-14 19:17:57.7570000', N'2023-05-14 20:28:40.4610000', N'2', N'10')
GO

INSERT INTO [dbo].[cart] ([id], [create_at], [update_at], [store_id], [user_id]) VALUES (N'7', N'2023-05-15 01:35:36.4740000', N'2023-05-15 01:36:05.4500000', N'2', N'11')
GO

INSERT INTO [dbo].[cart] ([id], [create_at], [update_at], [store_id], [user_id]) VALUES (N'8', N'2023-05-15 01:39:14.9920000', N'2023-05-15 01:39:14.9920000', N'1', N'12')
GO

INSERT INTO [dbo].[cart] ([id], [create_at], [update_at], [store_id], [user_id]) VALUES (N'9', N'2023-05-15 01:39:27.1220000', N'2023-05-15 01:53:44.0090000', N'2', N'12')
GO

INSERT INTO [dbo].[cart] ([id], [create_at], [update_at], [store_id], [user_id]) VALUES (N'10', N'2023-05-15 22:30:45.1710000', N'2023-05-15 23:42:38.6920000', N'2', N'13')
GO

INSERT INTO [dbo].[cart] ([id], [create_at], [update_at], [store_id], [user_id]) VALUES (N'11', N'2023-05-15 23:40:53.6990000', N'2023-05-15 23:40:53.6990000', N'1', N'13')
GO

SET IDENTITY_INSERT [dbo].[cart] OFF
GO


-- ----------------------------
-- Table structure for cart_item
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[cart_item]') AND type IN ('U'))
	DROP TABLE [dbo].[cart_item]
GO

CREATE TABLE [dbo].[cart_item] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [create_at] datetime2(7)  NULL,
  [is_payed] bit  NULL,
  [quantity] int  NULL,
  [size] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [update_at] datetime2(7)  NULL,
  [cart_id] int  NULL,
  [product_id] int  NULL
)
GO

ALTER TABLE [dbo].[cart_item] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of cart_item
-- ----------------------------
SET IDENTITY_INSERT [dbo].[cart_item] ON
GO

INSERT INTO [dbo].[cart_item] ([id], [create_at], [is_payed], [quantity], [size], [update_at], [cart_id], [product_id]) VALUES (N'36', N'2023-05-13 15:13:53.8210000', NULL, N'1', N'XXL', N'2023-05-14 10:10:58.0000000', N'3', N'54')
GO

INSERT INTO [dbo].[cart_item] ([id], [create_at], [is_payed], [quantity], [size], [update_at], [cart_id], [product_id]) VALUES (N'47', N'2023-05-14 10:33:22.9140000', NULL, N'2', N'XL', NULL, N'2', N'34')
GO

INSERT INTO [dbo].[cart_item] ([id], [create_at], [is_payed], [quantity], [size], [update_at], [cart_id], [product_id]) VALUES (N'60', N'2023-05-14 19:17:57.7570000', NULL, N'1', N'XL', NULL, N'6', N'24')
GO

INSERT INTO [dbo].[cart_item] ([id], [create_at], [is_payed], [quantity], [size], [update_at], [cart_id], [product_id]) VALUES (N'61', N'2023-05-14 20:28:40.4610000', NULL, N'1', N'S', NULL, N'6', N'4')
GO

INSERT INTO [dbo].[cart_item] ([id], [create_at], [is_payed], [quantity], [size], [update_at], [cart_id], [product_id]) VALUES (N'63', N'2023-05-15 01:36:05.4500000', NULL, N'1', N'S', NULL, N'7', N'4')
GO

INSERT INTO [dbo].[cart_item] ([id], [create_at], [is_payed], [quantity], [size], [update_at], [cart_id], [product_id]) VALUES (N'67', N'2023-05-15 01:53:39.8830000', NULL, N'7', N'XS', NULL, N'1', N'58')
GO

INSERT INTO [dbo].[cart_item] ([id], [create_at], [is_payed], [quantity], [size], [update_at], [cart_id], [product_id]) VALUES (N'68', N'2023-05-15 01:53:44.0090000', NULL, N'3', N'XS', NULL, N'9', N'58')
GO

SET IDENTITY_INSERT [dbo].[cart_item] OFF
GO


-- ----------------------------
-- Table structure for category
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[category]') AND type IN ('U'))
	DROP TABLE [dbo].[category]
GO

CREATE TABLE [dbo].[category] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [category_image] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_at] datetime2(7)  NULL,
  [is_selling] bit  NULL,
  [name] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [update_at] datetime2(7)  NULL
)
GO

ALTER TABLE [dbo].[category] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of category
-- ----------------------------
SET IDENTITY_INSERT [dbo].[category] ON
GO

INSERT INTO [dbo].[category] ([id], [category_image], [create_at], [is_selling], [name], [update_at]) VALUES (N'3', N'https://res.cloudinary.com/dl0vbutga/image/upload/v1683541220/dv92xlnwio6ghifgvd67.png', N'2023-05-08 17:20:18.4020000', N'1', N'Áo', N'2023-05-11 00:29:44.0000000')
GO

INSERT INTO [dbo].[category] ([id], [category_image], [create_at], [is_selling], [name], [update_at]) VALUES (N'4', N'https://res.cloudinary.com/dl0vbutga/image/upload/v1683541295/nygh60sbv6kotat4otv7.png', N'2023-05-08 17:21:33.9630000', N'1', N'Quần', N'2023-05-11 00:29:44.0000000')
GO

INSERT INTO [dbo].[category] ([id], [category_image], [create_at], [is_selling], [name], [update_at]) VALUES (N'5', N'https://res.cloudinary.com/dl0vbutga/image/upload/v1683541324/wheqewcjupu8mwpo8svm.png', N'2023-05-08 17:22:03.6040000', N'1', N'Đồ Biển', N'2023-05-11 00:29:44.0000000')
GO

INSERT INTO [dbo].[category] ([id], [category_image], [create_at], [is_selling], [name], [update_at]) VALUES (N'6', N'https://res.cloudinary.com/dl0vbutga/image/upload/v1683541340/plqhp4lknej8bwcyadhd.png', N'2023-05-08 17:22:18.6420000', N'1', N'Giày', N'2023-05-11 00:29:44.0000000')
GO

INSERT INTO [dbo].[category] ([id], [category_image], [create_at], [is_selling], [name], [update_at]) VALUES (N'7', N'https://res.cloudinary.com/dl0vbutga/image/upload/v1683541359/rn2scqasay7ihfrppirx.png', N'2023-05-08 17:22:37.8630000', N'1', N'Phụ kiện', N'2023-05-11 00:29:44.0000000')
GO

INSERT INTO [dbo].[category] ([id], [category_image], [create_at], [is_selling], [name], [update_at]) VALUES (N'8', N'https://res.cloudinary.com/dl0vbutga/image/upload/v1683541376/pofm7dlohptlr2kwyv8g.png', N'2023-05-08 17:22:54.7740000', N'1', N'Túi', N'2023-05-11 00:29:44.0000000')
GO

SET IDENTITY_INSERT [dbo].[category] OFF
GO


-- ----------------------------
-- Table structure for delivery
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[delivery]') AND type IN ('U'))
	DROP TABLE [dbo].[delivery]
GO

CREATE TABLE [dbo].[delivery] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [create_at] datetime2(7)  NULL,
  [delivery_image] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [delivery_name] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [description] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [update_at] datetime2(7)  NULL
)
GO

ALTER TABLE [dbo].[delivery] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of delivery
-- ----------------------------
SET IDENTITY_INSERT [dbo].[delivery] ON
GO

INSERT INTO [dbo].[delivery] ([id], [create_at], [delivery_image], [delivery_name], [description], [update_at]) VALUES (N'1', N'2010-12-31 23:54:16.0000000', N'https://img.icons8.com/office/16/null/delivery--v1.png', N'Industrial industry', N'Computers & Electronics', N'2017-03-27 19:45:35.0000000')
GO

INSERT INTO [dbo].[delivery] ([id], [create_at], [delivery_image], [delivery_name], [description], [update_at]) VALUES (N'2', N'2018-03-06 02:58:56.0000000', N'https://img.icons8.com/fluency/100/null/delivery.png', N'Consulting industry', N'Others', N'2013-07-23 15:51:45.0000000')
GO

INSERT INTO [dbo].[delivery] ([id], [create_at], [delivery_image], [delivery_name], [description], [update_at]) VALUES (N'3', N'2007-08-09 03:14:29.0000000', N'https://img.icons8.com/dusk/100/null/delivery--v1.png', N'Law industry', N'Household & Kitchen Appliances', N'2018-02-12 01:46:16.0000000')
GO

INSERT INTO [dbo].[delivery] ([id], [create_at], [delivery_image], [delivery_name], [description], [update_at]) VALUES (N'4', N'2011-05-05 13:19:25.0000000', N'https://img.icons8.com/stickers/100/null/delivery.png', N'Study industry', N'Books', N'2018-12-07 02:18:20.0000000')
GO

INSERT INTO [dbo].[delivery] ([id], [create_at], [delivery_image], [delivery_name], [description], [update_at]) VALUES (N'5', N'2008-09-01 10:44:16.0000000', N'https://img.icons8.com/arcade/100/null/delivery.png', N'Work industry', N'Video Games', N'2002-02-18 01:49:45.0000000')
GO

SET IDENTITY_INSERT [dbo].[delivery] OFF
GO


-- ----------------------------
-- Table structure for order
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[order]') AND type IN ('U'))
	DROP TABLE [dbo].[order]
GO

CREATE TABLE [dbo].[order] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [address] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_at] datetime2(7)  NULL,
  [phone] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [price] int  NULL,
  [status] int  NULL,
  [update_at] datetime2(7)  NULL,
  [delivery_id] int  NULL,
  [store_id] int  NULL,
  [user_id] int  NULL,
  [name] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [voucher_id] int  NULL,
  [pay_method] int  NULL
)
GO

ALTER TABLE [dbo].[order] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of order
-- ----------------------------
SET IDENTITY_INSERT [dbo].[order] ON
GO

INSERT INTO [dbo].[order] ([id], [address], [create_at], [phone], [price], [status], [update_at], [delivery_id], [store_id], [user_id], [name], [voucher_id], [pay_method]) VALUES (N'1', N'617 East Alley', N'2023-05-01 10:58:28.7110000', N'0123456789', N'1000', N'4', N'2023-05-09 13:52:18.0000000', N'1', N'1', N'1', N'Kiet', N'2', NULL)
GO

INSERT INTO [dbo].[order] ([id], [address], [create_at], [phone], [price], [status], [update_at], [delivery_id], [store_id], [user_id], [name], [voucher_id], [pay_method]) VALUES (N'2', N'3-9-3 Gakuenminami', N'2023-05-01 10:58:28.7110000', N'0123456789', N'1000', N'4', N'2023-05-09 13:58:30.0000000', N'2', N'1', N'2', N'Kiet', N'2', NULL)
GO

INSERT INTO [dbo].[order] ([id], [address], [create_at], [phone], [price], [status], [update_at], [delivery_id], [store_id], [user_id], [name], [voucher_id], [pay_method]) VALUES (N'3', N'617 East Alley', N'2023-05-01 10:58:28.7110000', N'0123456789', N'1000', N'0', N'2023-05-13 20:10:41.4110000', N'3', N'1', N'1', N'Kiet', N'2', NULL)
GO

INSERT INTO [dbo].[order] ([id], [address], [create_at], [phone], [price], [status], [update_at], [delivery_id], [store_id], [user_id], [name], [voucher_id], [pay_method]) VALUES (N'4', N'Test Address 1', N'2023-05-01 10:58:28.7110000', N'0123456789', N'111574', N'0', N'2023-05-13 20:11:07.2740000', N'2', N'1', N'1', N'Kiet', N'2', NULL)
GO

INSERT INTO [dbo].[order] ([id], [address], [create_at], [phone], [price], [status], [update_at], [delivery_id], [store_id], [user_id], [name], [voucher_id], [pay_method]) VALUES (N'5', N'Test Address 1', N'2023-05-01 10:58:28.7110000', N'0123456789', N'1338325', N'0', N'2023-05-13 20:09:12.3540000', N'2', N'2', N'1', N'Kiet', N'2', NULL)
GO

INSERT INTO [dbo].[order] ([id], [address], [create_at], [phone], [price], [status], [update_at], [delivery_id], [store_id], [user_id], [name], [voucher_id], [pay_method]) VALUES (N'6', N'Test Address 1', N'2023-05-01 10:58:28.7110000', N'0123456789', N'548906', N'4', N'2023-05-13 20:28:43.2200000', N'2', N'1', N'1', N'Test name 1', N'2', NULL)
GO

INSERT INTO [dbo].[order] ([id], [address], [create_at], [phone], [price], [status], [update_at], [delivery_id], [store_id], [user_id], [name], [voucher_id], [pay_method]) VALUES (N'7', N'Test Address 1', N'2023-05-01 10:58:28.7110000', N'0123456789', N'667468', N'0', N'2023-05-13 19:42:28.7510000', N'2', N'2', N'1', N'Test name 1', N'2', NULL)
GO

INSERT INTO [dbo].[order] ([id], [address], [create_at], [phone], [price], [status], [update_at], [delivery_id], [store_id], [user_id], [name], [voucher_id], [pay_method]) VALUES (N'8', N'617 East Alley', N'2023-05-14 05:13:56.9300000', N'0982238302', N'973781', N'4', NULL, N'1', N'2', N'1', N'Kiet Tran', N'1', N'0')
GO

INSERT INTO [dbo].[order] ([id], [address], [create_at], [phone], [price], [status], [update_at], [delivery_id], [store_id], [user_id], [name], [voucher_id], [pay_method]) VALUES (N'9', N'617 East Alley', N'2023-05-14 05:18:15.5180000', N'0982238302', N'121523', N'1', NULL, N'1', N'2', N'1', N'Kiet Tran', N'1', N'0')
GO

INSERT INTO [dbo].[order] ([id], [address], [create_at], [phone], [price], [status], [update_at], [delivery_id], [store_id], [user_id], [name], [voucher_id], [pay_method]) VALUES (N'10', N'617 East Alley', N'2023-05-14 05:19:14.7000000', N'0982238302', N'149202', N'1', NULL, N'1', N'2', N'1', N'Kiet Tran', N'1', N'0')
GO

INSERT INTO [dbo].[order] ([id], [address], [create_at], [phone], [price], [status], [update_at], [delivery_id], [store_id], [user_id], [name], [voucher_id], [pay_method]) VALUES (N'11', N'617 East Alley', N'2023-05-14 05:23:08.9900000', N'0982238302', N'308312', N'1', NULL, N'2', N'2', N'1', N'Kiet Tran', N'1', N'0')
GO

INSERT INTO [dbo].[order] ([id], [address], [create_at], [phone], [price], [status], [update_at], [delivery_id], [store_id], [user_id], [name], [voucher_id], [pay_method]) VALUES (N'12', N'Test Address 1', N'2023-05-14 05:25:41.9660000', N'0123456789', N'1000', N'1', NULL, N'2', N'2', N'1', N'Test name 1', N'1', N'0')
GO

INSERT INTO [dbo].[order] ([id], [address], [create_at], [phone], [price], [status], [update_at], [delivery_id], [store_id], [user_id], [name], [voucher_id], [pay_method]) VALUES (N'13', N'617 East Alley', N'2023-05-14 05:34:21.2560000', N'0982238302', N'1113000', N'3', N'2023-05-14 16:57:19.3270000', N'1', N'2', N'1', N'Kiet Tran', N'1', N'0')
GO

INSERT INTO [dbo].[order] ([id], [address], [create_at], [phone], [price], [status], [update_at], [delivery_id], [store_id], [user_id], [name], [voucher_id], [pay_method]) VALUES (N'14', N'617 East Alley', N'2023-05-14 07:28:50.2920000', N'0982238302', N'1150551', N'2', NULL, N'4', N'1', N'1', N'Kiet Tran', N'1', N'0')
GO

INSERT INTO [dbo].[order] ([id], [address], [create_at], [phone], [price], [status], [update_at], [delivery_id], [store_id], [user_id], [name], [voucher_id], [pay_method]) VALUES (N'15', N'617 East Alley', N'2023-05-14 07:28:50.2920000', N'0982238302', N'1150551', N'0', N'2023-05-14 12:28:02.4590000', N'4', N'2', N'1', N'Kiet Tran', N'1', N'0')
GO

INSERT INTO [dbo].[order] ([id], [address], [create_at], [phone], [price], [status], [update_at], [delivery_id], [store_id], [user_id], [name], [voucher_id], [pay_method]) VALUES (N'16', N'Van trinh', N'2023-05-14 17:13:36.8910000', N'0982238302', N'2654199', N'4', NULL, N'3', N'1', N'5', N'Tran Kiet', N'1', N'0')
GO

INSERT INTO [dbo].[order] ([id], [address], [create_at], [phone], [price], [status], [update_at], [delivery_id], [store_id], [user_id], [name], [voucher_id], [pay_method]) VALUES (N'17', N'Van trinh', N'2023-05-14 17:13:36.8910000', N'0982238302', N'2654199', N'4', NULL, N'3', N'2', N'5', N'Tran Kiet', N'1', N'0')
GO

INSERT INTO [dbo].[order] ([id], [address], [create_at], [phone], [price], [status], [update_at], [delivery_id], [store_id], [user_id], [name], [voucher_id], [pay_method]) VALUES (N'18', N'Van trinh', N'2023-05-14 17:45:01.5590000', N'0982238302', N'548131', N'4', NULL, N'1', N'2', N'5', N'Tran Kiet', N'4', N'0')
GO

INSERT INTO [dbo].[order] ([id], [address], [create_at], [phone], [price], [status], [update_at], [delivery_id], [store_id], [user_id], [name], [voucher_id], [pay_method]) VALUES (N'19', N'Van trinh', N'2023-05-14 17:51:14.9460000', N'0982238302', N'432613', N'4', NULL, N'1', N'1', N'5', N'Tran Kiet', N'4', N'0')
GO

INSERT INTO [dbo].[order] ([id], [address], [create_at], [phone], [price], [status], [update_at], [delivery_id], [store_id], [user_id], [name], [voucher_id], [pay_method]) VALUES (N'20', N'Van trinh', N'2023-05-14 17:57:24.0750000', N'0982238302', N'186575', N'4', NULL, N'1', N'1', N'5', N'Tran Kiet', N'4', N'0')
GO

INSERT INTO [dbo].[order] ([id], [address], [create_at], [phone], [price], [status], [update_at], [delivery_id], [store_id], [user_id], [name], [voucher_id], [pay_method]) VALUES (N'21', N'Van trinh', N'2023-05-14 18:00:43.6700000', N'0982238302', N'746131', N'1', NULL, N'1', N'2', N'5', N'Tran Kiet', N'4', N'1')
GO

INSERT INTO [dbo].[order] ([id], [address], [create_at], [phone], [price], [status], [update_at], [delivery_id], [store_id], [user_id], [name], [voucher_id], [pay_method]) VALUES (N'22', N'So 1 VVN', N'2023-05-15 01:43:22.3990000', N'0123456789', N'468728', N'0', N'2023-05-15 01:43:41.2950000', N'1', N'1', N'12', N'Nguyen Thien', N'4', N'0')
GO

INSERT INTO [dbo].[order] ([id], [address], [create_at], [phone], [price], [status], [update_at], [delivery_id], [store_id], [user_id], [name], [voucher_id], [pay_method]) VALUES (N'23', N'So 1 VVN', N'2023-05-15 01:43:22.3990000', N'0123456789', N'468728', N'4', N'2023-05-15 01:47:35.2630000', N'1', N'2', N'12', N'Nguyen Thien', N'4', N'0')
GO

INSERT INTO [dbo].[order] ([id], [address], [create_at], [phone], [price], [status], [update_at], [delivery_id], [store_id], [user_id], [name], [voucher_id], [pay_method]) VALUES (N'24', N'1', N'2023-05-15 23:37:24.4200000', N'1', N'301988', N'0', N'2023-05-15 23:37:31.9430000', N'1', N'2', N'13', N'1 111', N'5', N'0')
GO

INSERT INTO [dbo].[order] ([id], [address], [create_at], [phone], [price], [status], [update_at], [delivery_id], [store_id], [user_id], [name], [voucher_id], [pay_method]) VALUES (N'25', N'1', N'2023-05-15 23:41:17.9730000', N'1', N'187253', N'0', N'2023-05-15 23:41:22.0550000', N'1', N'1', N'13', N'1 111', N'5', N'0')
GO

INSERT INTO [dbo].[order] ([id], [address], [create_at], [phone], [price], [status], [update_at], [delivery_id], [store_id], [user_id], [name], [voucher_id], [pay_method]) VALUES (N'26', N'1', N'2023-05-15 23:42:56.3540000', N'1', N'198738', N'0', N'2023-05-15 23:42:59.8700000', N'1', N'2', N'13', N'1 111', N'5', N'0')
GO

SET IDENTITY_INSERT [dbo].[order] OFF
GO


-- ----------------------------
-- Table structure for order_item
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[order_item]') AND type IN ('U'))
	DROP TABLE [dbo].[order_item]
GO

CREATE TABLE [dbo].[order_item] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [create_at] datetime2(7)  NULL,
  [unit_price] int  NULL,
  [update_at] datetime2(7)  NULL,
  [cart_item_id] int  NULL,
  [order_id] int  NULL,
  [quantity] int  NULL,
  [size] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [product_id] int  NULL
)
GO

ALTER TABLE [dbo].[order_item] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of order_item
-- ----------------------------
SET IDENTITY_INSERT [dbo].[order_item] ON
GO

INSERT INTO [dbo].[order_item] ([id], [create_at], [unit_price], [update_at], [cart_item_id], [order_id], [quantity], [size], [product_id]) VALUES (N'1', N'2023-05-01 10:58:28.7110000', N'690000', N'2023-05-14 10:13:28.0000000', NULL, N'1', N'1', N'M', N'4')
GO

INSERT INTO [dbo].[order_item] ([id], [create_at], [unit_price], [update_at], [cart_item_id], [order_id], [quantity], [size], [product_id]) VALUES (N'2', N'2023-05-01 10:58:28.7110000', N'690000', N'2023-05-14 10:13:28.0000000', NULL, N'2', N'1', N'S', N'4')
GO

INSERT INTO [dbo].[order_item] ([id], [create_at], [unit_price], [update_at], [cart_item_id], [order_id], [quantity], [size], [product_id]) VALUES (N'3', N'2023-05-01 10:58:28.7110000', N'690000', N'2023-05-14 10:13:28.0000000', NULL, N'3', N'2', N'M', N'4')
GO

INSERT INTO [dbo].[order_item] ([id], [create_at], [unit_price], [update_at], [cart_item_id], [order_id], [quantity], [size], [product_id]) VALUES (N'4', N'2023-05-01 10:58:28.7110000', N'111574', N'2023-05-14 10:13:28.0000000', NULL, N'4', N'1', N'XL', N'18')
GO

INSERT INTO [dbo].[order_item] ([id], [create_at], [unit_price], [update_at], [cart_item_id], [order_id], [quantity], [size], [product_id]) VALUES (N'5', N'2023-05-01 10:58:28.7110000', N'1338325', N'2023-05-14 10:13:28.0000000', NULL, N'5', N'5', N'M', N'65')
GO

INSERT INTO [dbo].[order_item] ([id], [create_at], [unit_price], [update_at], [cart_item_id], [order_id], [quantity], [size], [product_id]) VALUES (N'6', N'2023-05-01 10:58:28.7110000', N'667468', N'2023-05-14 10:13:28.0000000', NULL, N'7', N'2', N'L', N'64')
GO

INSERT INTO [dbo].[order_item] ([id], [create_at], [unit_price], [update_at], [cart_item_id], [order_id], [quantity], [size], [product_id]) VALUES (N'7', N'2023-05-01 10:58:28.7110000', N'548906', N'2023-05-14 10:13:28.0000000', NULL, N'6', N'2', N'S', N'73')
GO

INSERT INTO [dbo].[order_item] ([id], [create_at], [unit_price], [update_at], [cart_item_id], [order_id], [quantity], [size], [product_id]) VALUES (N'8', N'2023-05-14 05:13:56.9300000', N'973781', NULL, NULL, N'8', N'3', N'XS', N'60')
GO

INSERT INTO [dbo].[order_item] ([id], [create_at], [unit_price], [update_at], [cart_item_id], [order_id], [quantity], [size], [product_id]) VALUES (N'9', N'2023-05-14 05:18:15.5180000', N'121523', NULL, NULL, N'9', N'1', N'XS', N'55')
GO

INSERT INTO [dbo].[order_item] ([id], [create_at], [unit_price], [update_at], [cart_item_id], [order_id], [quantity], [size], [product_id]) VALUES (N'10', N'2023-05-14 05:19:14.7000000', N'155579', NULL, NULL, N'10', N'1', N'XL', N'56')
GO

INSERT INTO [dbo].[order_item] ([id], [create_at], [unit_price], [update_at], [cart_item_id], [order_id], [quantity], [size], [product_id]) VALUES (N'11', N'2023-05-14 05:23:08.9900000', N'308733', NULL, NULL, N'11', N'1', N'XS', N'70')
GO

INSERT INTO [dbo].[order_item] ([id], [create_at], [unit_price], [update_at], [cart_item_id], [order_id], [quantity], [size], [product_id]) VALUES (N'12', N'2023-05-14 05:25:41.9660000', N'108552', NULL, NULL, N'12', N'1', N'L', N'5')
GO

INSERT INTO [dbo].[order_item] ([id], [create_at], [unit_price], [update_at], [cart_item_id], [order_id], [quantity], [size], [product_id]) VALUES (N'13', N'2023-05-14 05:34:21.2560000', N'1494552', NULL, NULL, N'13', N'2', N'M', N'4')
GO

INSERT INTO [dbo].[order_item] ([id], [create_at], [unit_price], [update_at], [cart_item_id], [order_id], [quantity], [size], [product_id]) VALUES (N'14', N'2023-05-14 07:28:50.2920000', N'198481', NULL, NULL, N'15', N'1', N'XXL', N'54')
GO

INSERT INTO [dbo].[order_item] ([id], [create_at], [unit_price], [update_at], [cart_item_id], [order_id], [quantity], [size], [product_id]) VALUES (N'15', N'2023-05-14 07:28:50.2920000', N'418431', NULL, NULL, N'14', N'1', N'XS', N'14')
GO

INSERT INTO [dbo].[order_item] ([id], [create_at], [unit_price], [update_at], [cart_item_id], [order_id], [quantity], [size], [product_id]) VALUES (N'16', N'2023-05-14 07:28:50.2920000', N'229264', NULL, NULL, N'14', N'1', N'L', N'15')
GO

INSERT INTO [dbo].[order_item] ([id], [create_at], [unit_price], [update_at], [cart_item_id], [order_id], [quantity], [size], [product_id]) VALUES (N'17', N'2023-05-14 07:28:50.2920000', N'300450', NULL, NULL, N'14', N'1', N'S', N'73')
GO

INSERT INTO [dbo].[order_item] ([id], [create_at], [unit_price], [update_at], [cart_item_id], [order_id], [quantity], [size], [product_id]) VALUES (N'18', N'2023-05-14 17:13:36.8910000', N'186996', NULL, NULL, N'16', N'1', N'S', N'44')
GO

INSERT INTO [dbo].[order_item] ([id], [create_at], [unit_price], [update_at], [cart_item_id], [order_id], [quantity], [size], [product_id]) VALUES (N'19', N'2023-05-14 17:13:36.8910000', N'355132', NULL, NULL, N'16', N'1', N'L', N'45')
GO

INSERT INTO [dbo].[order_item] ([id], [create_at], [unit_price], [update_at], [cart_item_id], [order_id], [quantity], [size], [product_id]) VALUES (N'20', N'2023-05-14 17:13:36.8910000', N'265122', NULL, NULL, N'16', N'1', N'S', N'29')
GO

INSERT INTO [dbo].[order_item] ([id], [create_at], [unit_price], [update_at], [cart_item_id], [order_id], [quantity], [size], [product_id]) VALUES (N'21', N'2023-05-14 17:13:36.8910000', N'418431', NULL, NULL, N'16', N'1', N'XS', N'14')
GO

INSERT INTO [dbo].[order_item] ([id], [create_at], [unit_price], [update_at], [cart_item_id], [order_id], [quantity], [size], [product_id]) VALUES (N'22', N'2023-05-14 17:13:36.8910000', N'229264', NULL, NULL, N'16', N'1', N'L', N'15')
GO

INSERT INTO [dbo].[order_item] ([id], [create_at], [unit_price], [update_at], [cart_item_id], [order_id], [quantity], [size], [product_id]) VALUES (N'23', N'2023-05-14 17:13:36.8910000', N'333753', NULL, NULL, N'16', N'1', N'L', N'59')
GO

INSERT INTO [dbo].[order_item] ([id], [create_at], [unit_price], [update_at], [cart_item_id], [order_id], [quantity], [size], [product_id]) VALUES (N'24', N'2023-05-14 17:13:36.8910000', N'746552', NULL, NULL, N'17', N'1', N'S', N'4')
GO

INSERT INTO [dbo].[order_item] ([id], [create_at], [unit_price], [update_at], [cart_item_id], [order_id], [quantity], [size], [product_id]) VALUES (N'25', N'2023-05-14 17:13:36.8910000', N'108552', NULL, NULL, N'17', N'1', N'L', N'5')
GO

INSERT INTO [dbo].[order_item] ([id], [create_at], [unit_price], [update_at], [cart_item_id], [order_id], [quantity], [size], [product_id]) VALUES (N'26', N'2023-05-14 17:45:01.5590000', N'548131', NULL, NULL, N'18', N'1', N'M', N'6')
GO

INSERT INTO [dbo].[order_item] ([id], [create_at], [unit_price], [update_at], [cart_item_id], [order_id], [quantity], [size], [product_id]) VALUES (N'27', N'2023-05-14 17:51:14.9460000', N'432613', NULL, NULL, N'19', N'1', N'XL', N'34')
GO

INSERT INTO [dbo].[order_item] ([id], [create_at], [unit_price], [update_at], [cart_item_id], [order_id], [quantity], [size], [product_id]) VALUES (N'28', N'2023-05-14 17:57:24.0750000', N'186575', NULL, NULL, N'20', N'1', N'S', N'44')
GO

INSERT INTO [dbo].[order_item] ([id], [create_at], [unit_price], [update_at], [cart_item_id], [order_id], [quantity], [size], [product_id]) VALUES (N'29', N'2023-05-14 18:00:43.6700000', N'746131', NULL, NULL, N'21', N'1', N'S', N'4')
GO

INSERT INTO [dbo].[order_item] ([id], [create_at], [unit_price], [update_at], [cart_item_id], [order_id], [quantity], [size], [product_id]) VALUES (N'30', N'2023-05-15 01:43:22.3990000', N'252856', NULL, NULL, N'22', N'1', N'M', N'10')
GO

INSERT INTO [dbo].[order_item] ([id], [create_at], [unit_price], [update_at], [cart_item_id], [order_id], [quantity], [size], [product_id]) VALUES (N'31', N'2023-05-15 01:43:22.3990000', N'374156', NULL, NULL, N'23', N'1', N'XS', N'58')
GO

INSERT INTO [dbo].[order_item] ([id], [create_at], [unit_price], [update_at], [cart_item_id], [order_id], [quantity], [size], [product_id]) VALUES (N'32', N'2023-05-15 23:37:24.4200000', N'365916', NULL, NULL, N'24', N'1', N'L', N'64')
GO

INSERT INTO [dbo].[order_item] ([id], [create_at], [unit_price], [update_at], [cart_item_id], [order_id], [quantity], [size], [product_id]) VALUES (N'33', N'2023-05-15 23:41:17.9730000', N'187253', NULL, NULL, N'25', N'1', N'S', N'44')
GO

INSERT INTO [dbo].[order_item] ([id], [create_at], [unit_price], [update_at], [cart_item_id], [order_id], [quantity], [size], [product_id]) VALUES (N'34', N'2023-05-15 23:42:56.3540000', N'198738', NULL, NULL, N'26', N'1', N'XXL', N'54')
GO

SET IDENTITY_INSERT [dbo].[order_item] OFF
GO


-- ----------------------------
-- Table structure for product
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[product]') AND type IN ('U'))
	DROP TABLE [dbo].[product]
GO

CREATE TABLE [dbo].[product] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [color] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_at] datetime2(7)  NULL,
  [description] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [is_selling] bit  NULL,
  [made_in] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [made_of] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [name] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [price] int  NULL,
  [promotional_price] int  NULL,
  [update_at] datetime2(7)  NULL,
  [category_id] int  NULL,
  [store_id] int  NULL,
  [style_id] int  NULL,
  [sold] int  NULL
)
GO

ALTER TABLE [dbo].[product] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of product
-- ----------------------------
SET IDENTITY_INSERT [dbo].[product] ON
GO

INSERT INTO [dbo].[product] ([id], [color], [create_at], [description], [is_selling], [made_in], [made_of], [name], [price], [promotional_price], [update_at], [category_id], [store_id], [style_id], [sold]) VALUES (N'4', N'Đen', N'2023-05-08 17:33:32.7930000', N'Áo này đẹp', N'1', N'Việt Nam', N'Chất liệu da PU', N'DAZY Áo khoác ngoài nữ Thắt lưng Nút đôi Túi màu trơn', N'690000', N'680000', NULL, N'3', N'2', N'4', N'2')
GO

INSERT INTO [dbo].[product] ([id], [color], [create_at], [description], [is_selling], [made_in], [made_of], [name], [price], [promotional_price], [update_at], [category_id], [store_id], [style_id], [sold]) VALUES (N'5', N'Xanh', N'2023-05-08 17:36:36.7290000', N'Áo này đẹp', N'1', N'Việt Nam', N'Vải 95% Polyester, 5% Spandex', N'Mẫu chữ cái đệm vai áo vest', N'132000', N'100000', NULL, N'3', N'2', N'4', N'2')
GO

INSERT INTO [dbo].[product] ([id], [color], [create_at], [description], [is_selling], [made_in], [made_of], [name], [price], [promotional_price], [update_at], [category_id], [store_id], [style_id], [sold]) VALUES (N'6', N'Xám', N'2023-05-08 17:39:00.5040000', N'Áo này đẹp', N'1', N'Việt Nam', N'Tweed  55% Polyester, 45% Bông', N'Honeyspot Áo khoác ngoài nữ Túi Nút phía trước màu trơn', N'504000', N'500000', NULL, N'3', N'2', N'4', N'2')
GO

INSERT INTO [dbo].[product] ([id], [color], [create_at], [description], [is_selling], [made_in], [made_of], [name], [price], [promotional_price], [update_at], [category_id], [store_id], [style_id], [sold]) VALUES (N'7', N'Xanh', N'2023-05-08 17:43:19.0030000', N'Áo này đẹp', N'1', N'Việt Nam', N'Tweed  95% Polyester, 5% Bông', N'SHEIN EZwear Áo khoác ngoài nữ Thắt lưng Túi màu trơn', N'646000', N'600000', NULL, N'3', N'2', N'4', N'2')
GO

INSERT INTO [dbo].[product] ([id], [color], [create_at], [description], [is_selling], [made_in], [made_of], [name], [price], [promotional_price], [update_at], [category_id], [store_id], [style_id], [sold]) VALUES (N'8', N'Màu be', N'2023-05-08 17:54:47.4590000', N'Áo này đẹp', N'1', N'Việt Nam', N'Vải không căng  100% Polyester', N'SHEIN BIZwear Áo khoác ngoài nữ Nút màu trơn', N'355000', N'330000', NULL, N'3', N'2', N'4', N'2')
GO

INSERT INTO [dbo].[product] ([id], [color], [create_at], [description], [is_selling], [made_in], [made_of], [name], [price], [promotional_price], [update_at], [category_id], [store_id], [style_id], [sold]) VALUES (N'9', N'Mustard', N'2014-04-05 20:52:33.0000000', N'Hall Brothers Communications LLC', N'1', N'Brazil', N'85% Polyester, 15% Bông', N'jiwi', N'423602', N'116537', N'2009-08-30 11:08:53.0000000', N'3', N'2', N'5', N'2')
GO

INSERT INTO [dbo].[product] ([id], [color], [create_at], [description], [is_selling], [made_in], [made_of], [name], [price], [promotional_price], [update_at], [category_id], [store_id], [style_id], [sold]) VALUES (N'10', N'Light Gray', N'2003-06-12 21:42:47.0000000', N'Ma Kee Limited', N'1', N'Georgia', N'Tweed', N'Grape core', N'406579', N'231569', N'2004-12-08 15:18:59.0000000', N'3', N'1', N'5', N'2')
GO

INSERT INTO [dbo].[product] ([id], [color], [create_at], [description], [is_selling], [made_in], [made_of], [name], [price], [promotional_price], [update_at], [category_id], [store_id], [style_id], [sold]) VALUES (N'11', N'Persimmon', N'2005-09-07 19:33:23.0000000', N'Ikki Network Systems Corporation', N'1', N'Turkey', N'Vải không căng', N'Plusts core', N'400904', N'192420', N'2008-07-23 18:31:01.0000000', N'3', N'1', N'6', N'2')
GO

INSERT INTO [dbo].[product] ([id], [color], [create_at], [description], [is_selling], [made_in], [made_of], [name], [price], [promotional_price], [update_at], [category_id], [store_id], [style_id], [sold]) VALUES (N'12', N'White Smoke', N'2007-12-11 01:29:09.0000000', N'Lai Kee Limited', N'1', N'Democratic People''s Republic of Korea', N'85% Polyester, 15% Bông', N'trange', N'487911', N'351491', N'2016-12-09 04:40:48.0000000', N'3', N'1', N'6', N'2')
GO

INSERT INTO [dbo].[product] ([id], [color], [create_at], [description], [is_selling], [made_in], [made_of], [name], [price], [promotional_price], [update_at], [category_id], [store_id], [style_id], [sold]) VALUES (N'13', N'Maroon', N'2007-01-09 12:39:54.0000000', N'Tucker''s LLC', N'1', N'Zambia', N'75% Bông', N'Grape', N'455736', N'351030', N'2007-09-26 12:09:18.0000000', N'3', N'1', N'7', N'2')
GO

INSERT INTO [dbo].[product] ([id], [color], [create_at], [description], [is_selling], [made_in], [made_of], [name], [price], [promotional_price], [update_at], [category_id], [store_id], [style_id], [sold]) VALUES (N'14', N'Cream', N'2004-05-29 21:25:17.0000000', N'Jiehong Company Limited', N'1', N'St. Lucia', N'50% Bông, 50% Spandex', N'Orange', N'437876', N'381709', N'2001-01-03 22:27:31.0000000', N'3', N'1', N'7', N'2')
GO

INSERT INTO [dbo].[product] ([id], [color], [create_at], [description], [is_selling], [made_in], [made_of], [name], [price], [promotional_price], [update_at], [category_id], [store_id], [style_id], [sold]) VALUES (N'15', N'Rosy Brown', N'2009-06-25 14:57:15.0000000', N'Fan''s Logistic Limited', N'1', N'Netherlands', N'95% Tweed', N'Apple core', N'482395', N'209739', N'2005-05-01 08:37:21.0000000', N'3', N'1', N'8', N'2')
GO

INSERT INTO [dbo].[product] ([id], [color], [create_at], [description], [is_selling], [made_in], [made_of], [name], [price], [promotional_price], [update_at], [category_id], [store_id], [style_id], [sold]) VALUES (N'16', N'Cream', N'2013-11-18 06:56:49.0000000', N'Nakamori Corporation', N'1', N'Marshall Islands', N'100% Polyester', N'xStrawberry', N'409218', N'209229', N'2014-10-26 03:39:04.0000000', N'3', N'2', N'8', N'2')
GO

INSERT INTO [dbo].[product] ([id], [color], [create_at], [description], [is_selling], [made_in], [made_of], [name], [price], [promotional_price], [update_at], [category_id], [store_id], [style_id], [sold]) VALUES (N'17', N'Persimmon', N'2023-04-28 03:16:07.0000000', N'Xiang Company Limited', N'1', N'South Sudan', N'Vải không căng', N'Rambutan', N'406211', N'375741', N'2008-12-11 15:10:48.0000000', N'3', N'2', N'9', N'2')
GO

INSERT INTO [dbo].[product] ([id], [color], [create_at], [description], [is_selling], [made_in], [made_of], [name], [price], [promotional_price], [update_at], [category_id], [store_id], [style_id], [sold]) VALUES (N'18', N'Cream', N'2022-10-12 10:24:48.0000000', N'Sakura Telecommunication Corporation', N'1', N'Malawi', N'100% Polyester', N'Orfnge se', N'484985', N'111574', N'2011-08-11 19:57:22.0000000', N'3', N'1', N'9', N'2')
GO

INSERT INTO [dbo].[product] ([id], [color], [create_at], [description], [is_selling], [made_in], [made_of], [name], [price], [promotional_price], [update_at], [category_id], [store_id], [style_id], [sold]) VALUES (N'19', N'Yellow', N'2008-05-07 12:59:37.0000000', N'Wang Consultants Company Limited', N'1', N'Philippines', N'100% Polyester', N'Kiwi plus', N'459521', N'289699', N'2019-06-14 17:52:30.0000000', N'4', N'2', N'10', N'2')
GO

INSERT INTO [dbo].[product] ([id], [color], [create_at], [description], [is_selling], [made_in], [made_of], [name], [price], [promotional_price], [update_at], [category_id], [store_id], [style_id], [sold]) VALUES (N'20', N'Tropical Orange', N'2016-09-24 17:08:16.0000000', N'Shi Company Limited', N'1', N'Peru', N'Tweed', N'Orange premium', N'403898', N'309482', N'2014-06-24 03:40:45.0000000', N'4', N'1', N'10', N'2')
GO

INSERT INTO [dbo].[product] ([id], [color], [create_at], [description], [is_selling], [made_in], [made_of], [name], [price], [promotional_price], [update_at], [category_id], [store_id], [style_id], [sold]) VALUES (N'21', N'Beige', N'2014-02-27 22:53:30.0000000', N'Kwok Wing Limited', N'1', N'Austria', N'Polyester', N'Pluots', N'463197', N'310130', N'2007-06-18 07:47:14.0000000', N'4', N'1', N'11', N'2')
GO

INSERT INTO [dbo].[product] ([id], [color], [create_at], [description], [is_selling], [made_in], [made_of], [name], [price], [promotional_price], [update_at], [category_id], [store_id], [style_id], [sold]) VALUES (N'22', N'Chocolate', N'2001-05-13 17:56:50.0000000', N'Yuito Pharmaceutical Corporation', N'1', N'Guatemala', N'Tweed', N'Pluots', N'452383', N'342125', N'2008-02-14 01:03:24.0000000', N'4', N'1', N'11', N'2')
GO

INSERT INTO [dbo].[product] ([id], [color], [create_at], [description], [is_selling], [made_in], [made_of], [name], [price], [promotional_price], [update_at], [category_id], [store_id], [style_id], [sold]) VALUES (N'23', N'Yellow', N'2019-02-21 18:06:34.0000000', N'David Network Systems Inc.', N'1', N'Tonga', N'75% Bông', N'iuambutan', N'404733', N'224837', N'2021-11-28 13:01:55.0000000', N'4', N'2', N'12', N'2')
GO

INSERT INTO [dbo].[product] ([id], [color], [create_at], [description], [is_selling], [made_in], [made_of], [name], [price], [promotional_price], [update_at], [category_id], [store_id], [style_id], [sold]) VALUES (N'24', N'Gold', N'2019-08-25 10:47:54.0000000', N'Kwan Kee Logistic Limited', N'1', N'Zambia', N'50% Bông, 50% Spandex', N'oaspberry', N'450699', N'380365', N'2002-09-12 05:37:17.0000000', N'4', N'2', N'12', N'2')
GO

INSERT INTO [dbo].[product] ([id], [color], [create_at], [description], [is_selling], [made_in], [made_of], [name], [price], [promotional_price], [update_at], [category_id], [store_id], [style_id], [sold]) VALUES (N'25', N'Apricot', N'2004-03-11 08:15:56.0000000', N'Kim Logistic Inc.', N'1', N'Oman', N'75% Bông', N'Rambutan air', N'481006', N'165726', N'2011-06-01 20:05:43.0000000', N'4', N'2', N'13', N'2')
GO

INSERT INTO [dbo].[product] ([id], [color], [create_at], [description], [is_selling], [made_in], [made_of], [name], [price], [promotional_price], [update_at], [category_id], [store_id], [style_id], [sold]) VALUES (N'26', N'Yellow', N'2019-06-01 07:27:20.0000000', N'Jiang Kee Pharmaceutical Company Limited', N'1', N'St. Vincent and the Grenadines', N'Spandex', N'aambutan', N'464449', N'275023', N'2016-05-04 04:24:12.0000000', N'4', N'2', N'13', N'2')
GO

INSERT INTO [dbo].[product] ([id], [color], [create_at], [description], [is_selling], [made_in], [made_of], [name], [price], [promotional_price], [update_at], [category_id], [store_id], [style_id], [sold]) VALUES (N'27', N'Mustard', N'2013-12-20 09:58:24.0000000', N'Jiang Company Limited', N'1', N'Uruguay', N'Polyester', N'Apple se', N'484427', N'383984', N'2006-11-29 15:01:41.0000000', N'4', N'1', N'14', N'2')
GO

INSERT INTO [dbo].[product] ([id], [color], [create_at], [description], [is_selling], [made_in], [made_of], [name], [price], [promotional_price], [update_at], [category_id], [store_id], [style_id], [sold]) VALUES (N'28', N'Indian Red', N'2012-10-06 13:00:31.0000000', N'Sze Kwan Technology Limited', N'1', N'Ecuador', N'Polyester', N'Raobutan air', N'461535', N'380803', N'2001-11-11 11:00:20.0000000', N'4', N'2', N'14', N'2')
GO

INSERT INTO [dbo].[product] ([id], [color], [create_at], [description], [is_selling], [made_in], [made_of], [name], [price], [promotional_price], [update_at], [category_id], [store_id], [style_id], [sold]) VALUES (N'29', N'Camel', N'2017-12-24 06:40:46.0000000', N'Suzuki Corporation', N'1', N'Cabo Verde', N'65% Polyester', N'Rambutan', N'408435', N'242337', N'2001-03-18 05:00:50.0000000', N'5', N'1', N'15', N'2')
GO

INSERT INTO [dbo].[product] ([id], [color], [create_at], [description], [is_selling], [made_in], [made_of], [name], [price], [promotional_price], [update_at], [category_id], [store_id], [style_id], [sold]) VALUES (N'30', N'White', N'2006-06-12 13:03:41.0000000', N'Pak''s Limited', N'1', N'Oman', N'50% Bông, 50% Spandex', N'Raspbervy', N'450396', N'156044', N'2009-03-03 08:51:57.0000000', N'5', N'2', N'15', N'2')
GO

INSERT INTO [dbo].[product] ([id], [color], [create_at], [description], [is_selling], [made_in], [made_of], [name], [price], [promotional_price], [update_at], [category_id], [store_id], [style_id], [sold]) VALUES (N'31', N'Tropical Orange', N'2010-01-17 19:51:58.0000000', N'Pan Kee Company Limited', N'1', N'Sudan', N'75% Bông', N'iApple', N'494272', N'112530', N'2016-10-11 21:59:56.0000000', N'5', N'2', N'16', N'2')
GO

INSERT INTO [dbo].[product] ([id], [color], [create_at], [description], [is_selling], [made_in], [made_of], [name], [price], [promotional_price], [update_at], [category_id], [store_id], [style_id], [sold]) VALUES (N'32', N'Tangerine', N'2023-02-02 16:54:39.0000000', N'Yunxi Consultants Company Limited', N'1', N'Morocco', N'60% Polyester, 20% Bông', N'Strawberry', N'411395', N'388429', N'2000-07-09 07:26:04.0000000', N'5', N'2', N'16', N'2')
GO

INSERT INTO [dbo].[product] ([id], [color], [create_at], [description], [is_selling], [made_in], [made_of], [name], [price], [promotional_price], [update_at], [category_id], [store_id], [style_id], [sold]) VALUES (N'33', N'Rosy Brown', N'2020-08-06 01:41:50.0000000', N'Kenta Corporation', N'1', N'Mexico', N'50% Bông, 50% Spandex', N'Cheary', N'443112', N'258173', N'2000-08-10 20:41:31.0000000', N'5', N'1', N'17', N'2')
GO

INSERT INTO [dbo].[product] ([id], [color], [create_at], [description], [is_selling], [made_in], [made_of], [name], [price], [promotional_price], [update_at], [category_id], [store_id], [style_id], [sold]) VALUES (N'34', N'Amber', N'2014-09-25 08:14:43.0000000', N'Ziyi Company Limited', N'1', N'Equatorial Guinea', N'75% Bông', N'iRaspberry', N'407864', N'394984', N'2019-05-19 19:14:37.0000000', N'5', N'1', N'17', N'2')
GO

INSERT INTO [dbo].[product] ([id], [color], [create_at], [description], [is_selling], [made_in], [made_of], [name], [price], [promotional_price], [update_at], [category_id], [store_id], [style_id], [sold]) VALUES (N'35', N'Sepia', N'2021-03-27 04:57:43.0000000', N'Momoe Corporation', N'1', N'Argentina', N'60% Polyester, 20% Bông', N'xStrawberry', N'411596', N'202671', N'2009-10-11 08:16:53.0000000', N'5', N'2', N'18', N'2')
GO

INSERT INTO [dbo].[product] ([id], [color], [create_at], [description], [is_selling], [made_in], [made_of], [name], [price], [promotional_price], [update_at], [category_id], [store_id], [style_id], [sold]) VALUES (N'36', N'Coffee', N'2010-03-03 14:17:13.0000000', N'Tong Kee Limited', N'1', N'Chad', N'Polyester', N'Strawberry', N'439308', N'141343', N'2018-11-17 14:42:01.0000000', N'5', N'2', N'18', N'2')
GO

INSERT INTO [dbo].[product] ([id], [color], [create_at], [description], [is_selling], [made_in], [made_of], [name], [price], [promotional_price], [update_at], [category_id], [store_id], [style_id], [sold]) VALUES (N'37', N'Tropical Orange', N'2019-02-26 14:13:31.0000000', N'Kinoshita Corporation', N'1', N'Nigeria', N'65% Polyester', N'Cherry pi', N'459820', N'126099', N'2017-12-13 12:39:47.0000000', N'5', N'1', N'19', N'2')
GO

INSERT INTO [dbo].[product] ([id], [color], [create_at], [description], [is_selling], [made_in], [made_of], [name], [price], [promotional_price], [update_at], [category_id], [store_id], [style_id], [sold]) VALUES (N'38', N'Vermilion', N'2001-02-05 03:34:55.0000000', N'Xu Toy Company Limited', N'1', N'Bosnia and Herzegovina', N'75% Bông', N'Mtngo', N'407947', N'251986', N'2021-03-05 22:03:22.0000000', N'5', N'1', N'19', N'2')
GO

INSERT INTO [dbo].[product] ([id], [color], [create_at], [description], [is_selling], [made_in], [made_of], [name], [price], [promotional_price], [update_at], [category_id], [store_id], [style_id], [sold]) VALUES (N'39', N'Lime', N'2021-05-30 07:14:04.0000000', N'Pak''s Technology Limited', N'1', N'Comoros', N'Spandex', N'Manzo', N'483004', N'111358', N'2016-05-10 10:25:02.0000000', N'6', N'1', N'20', N'2')
GO

INSERT INTO [dbo].[product] ([id], [color], [create_at], [description], [is_selling], [made_in], [made_of], [name], [price], [promotional_price], [update_at], [category_id], [store_id], [style_id], [sold]) VALUES (N'40', N'Black', N'2010-09-12 08:17:03.0000000', N'Minato Communications Corporation', N'1', N'Venezuela (Bolivarian Republic of)', N'65% Polyester', N'Raspberry air', N'422548', N'260140', N'2021-08-04 15:13:21.0000000', N'6', N'2', N'20', N'2')
GO

INSERT INTO [dbo].[product] ([id], [color], [create_at], [description], [is_selling], [made_in], [made_of], [name], [price], [promotional_price], [update_at], [category_id], [store_id], [style_id], [sold]) VALUES (N'41', N'Amber', N'2009-01-17 01:58:42.0000000', N'Yamada Telecommunication Corporation', N'1', N'Austria', N'Spandex', N'Cperry', N'488746', N'297122', N'2002-06-18 02:07:13.0000000', N'6', N'1', N'21', N'2')
GO

INSERT INTO [dbo].[product] ([id], [color], [create_at], [description], [is_selling], [made_in], [made_of], [name], [price], [promotional_price], [update_at], [category_id], [store_id], [style_id], [sold]) VALUES (N'42', N'Red', N'2009-10-20 23:05:28.0000000', N'Sanders Brothers LLC', N'1', N'Ethiopia', N'90% Polyester, 10% Spandex', N'Mango', N'469170', N'172036', N'2015-05-06 16:26:20.0000000', N'6', N'1', N'21', N'2')
GO

INSERT INTO [dbo].[product] ([id], [color], [create_at], [description], [is_selling], [made_in], [made_of], [name], [price], [promotional_price], [update_at], [category_id], [store_id], [style_id], [sold]) VALUES (N'43', N'Persimmon', N'2022-08-06 13:17:32.0000000', N'Zhiyuan Company Limited', N'1', N'Senegal', N'85% Polyester, 15% Bông', N'hluots', N'456122', N'385913', N'2017-11-04 15:06:53.0000000', N'6', N'2', N'22', N'2')
GO

INSERT INTO [dbo].[product] ([id], [color], [create_at], [description], [is_selling], [made_in], [made_of], [name], [price], [promotional_price], [update_at], [category_id], [store_id], [style_id], [sold]) VALUES (N'44', N'Bronze', N'2005-01-11 10:59:05.0000000', N'Yu Engineering Company Limited', N'1', N'Panama', N'75% Bông', N'Rambutan pi', N'428425', N'171313', N'2012-02-12 11:29:34.0000000', N'6', N'1', N'22', N'2')
GO

INSERT INTO [dbo].[product] ([id], [color], [create_at], [description], [is_selling], [made_in], [made_of], [name], [price], [promotional_price], [update_at], [category_id], [store_id], [style_id], [sold]) VALUES (N'45', N'Jasmine', N'2003-06-26 13:56:23.0000000', N'Nakamori Corporation', N'1', N'Malawi', N'65% Polyester', N'Pluots', N'484720', N'324164', N'2014-08-25 07:30:11.0000000', N'6', N'1', N'23', N'2')
GO

INSERT INTO [dbo].[product] ([id], [color], [create_at], [description], [is_selling], [made_in], [made_of], [name], [price], [promotional_price], [update_at], [category_id], [store_id], [style_id], [sold]) VALUES (N'46', N'Black', N'2007-08-17 17:08:54.0000000', N'Ka Keung Limited', N'1', N'Mauritania', N'60% Polyester, 20% Bông', N'ambi-Pluots', N'478731', N'398431', N'2023-02-22 11:04:56.0000000', N'6', N'2', N'23', N'2')
GO

INSERT INTO [dbo].[product] ([id], [color], [create_at], [description], [is_selling], [made_in], [made_of], [name], [price], [promotional_price], [update_at], [category_id], [store_id], [style_id], [sold]) VALUES (N'47', N'Jasmine', N'2015-07-06 09:49:48.0000000', N'Hara Communications Corporation', N'1', N'Dominica', N'60% Polyester, 20% Bông', N'Strawbefry pi', N'427148', N'286553', N'2022-06-11 15:24:51.0000000', N'6', N'2', N'24', N'2')
GO

INSERT INTO [dbo].[product] ([id], [color], [create_at], [description], [is_selling], [made_in], [made_of], [name], [price], [promotional_price], [update_at], [category_id], [store_id], [style_id], [sold]) VALUES (N'48', N'Beige', N'2017-12-11 13:13:51.0000000', N'Kathryn LLC', N'1', N'Czech Republic', N'Polyester', N'xGrnpe', N'419761', N'238392', N'2005-04-24 06:34:02.0000000', N'6', N'1', N'24', N'2')
GO

INSERT INTO [dbo].[product] ([id], [color], [create_at], [description], [is_selling], [made_in], [made_of], [name], [price], [promotional_price], [update_at], [category_id], [store_id], [style_id], [sold]) VALUES (N'49', N'Tropical Orange', N'2000-03-04 14:20:56.0000000', N'Yunxi Pharmaceutical Company Limited', N'1', N'Austria', N'Tweed', N'iPpuots', N'486999', N'302431', N'2009-01-26 22:10:03.0000000', N'6', N'1', N'25', N'2')
GO

INSERT INTO [dbo].[product] ([id], [color], [create_at], [description], [is_selling], [made_in], [made_of], [name], [price], [promotional_price], [update_at], [category_id], [store_id], [style_id], [sold]) VALUES (N'50', N'Beige', N'2015-05-02 03:55:13.0000000', N'Momoe Telecommunication Corporation', N'1', N'Mongolia', N'Bông', N'xRaspbeory', N'423603', N'379524', N'2006-04-28 13:19:10.0000000', N'6', N'2', N'25', N'2')
GO

INSERT INTO [dbo].[product] ([id], [color], [create_at], [description], [is_selling], [made_in], [made_of], [name], [price], [promotional_price], [update_at], [category_id], [store_id], [style_id], [sold]) VALUES (N'51', N'Tangerine', N'2011-02-13 11:39:22.0000000', N'Takahashi Logistic Corporation', N'1', N'Kiribati', N'80% Twees, 20% Bông', N'Rambutan premium', N'419943', N'117705', N'2012-04-19 05:33:52.0000000', N'7', N'2', N'26', N'2')
GO

INSERT INTO [dbo].[product] ([id], [color], [create_at], [description], [is_selling], [made_in], [made_of], [name], [price], [promotional_price], [update_at], [category_id], [store_id], [style_id], [sold]) VALUES (N'52', N'Apricot', N'2022-03-14 14:41:50.0000000', N'Pak''s Network Systems Limited', N'1', N'Eritrea', N'65% Polyester', N'Cherry', N'404365', N'381484', N'2005-01-26 02:30:48.0000000', N'7', N'2', N'26', N'2')
GO

INSERT INTO [dbo].[product] ([id], [color], [create_at], [description], [is_selling], [made_in], [made_of], [name], [price], [promotional_price], [update_at], [category_id], [store_id], [style_id], [sold]) VALUES (N'53', N'Amber', N'2015-05-18 16:43:03.0000000', N'Watanabe Toy Corporation', N'1', N'Zimbabwe', N'Bông', N'lherry', N'499110', N'104382', N'2008-04-27 22:42:19.0000000', N'7', N'1', N'27', N'2')
GO

INSERT INTO [dbo].[product] ([id], [color], [create_at], [description], [is_selling], [made_in], [made_of], [name], [price], [promotional_price], [update_at], [category_id], [store_id], [style_id], [sold]) VALUES (N'54', N'Bronze', N'2004-06-05 15:13:06.0000000', N'Wing Sze Limited', N'1', N'Namibia', N'Bông', N'lango', N'421046', N'181754', N'2005-04-09 12:22:47.0000000', N'7', N'2', N'27', N'2')
GO

INSERT INTO [dbo].[product] ([id], [color], [create_at], [description], [is_selling], [made_in], [made_of], [name], [price], [promotional_price], [update_at], [category_id], [store_id], [style_id], [sold]) VALUES (N'55', N'Tangerine', N'2009-10-29 18:37:35.0000000', N'Cooper Communications LLC', N'1', N'Sudan', N'95% Tweed', N'Raspberry', N'471854', N'111792', N'2000-12-24 21:29:46.0000000', N'7', N'2', N'28', N'2')
GO

INSERT INTO [dbo].[product] ([id], [color], [create_at], [description], [is_selling], [made_in], [made_of], [name], [price], [promotional_price], [update_at], [category_id], [store_id], [style_id], [sold]) VALUES (N'56', N'White Smoke', N'2004-12-04 07:42:10.0000000', N'Hui Mei Property Limited', N'1', N'Qatar', N'Vải không căng', N'iStrawberry', N'414136', N'142752', N'2003-07-13 02:20:44.0000000', N'7', N'2', N'28', N'2')
GO

INSERT INTO [dbo].[product] ([id], [color], [create_at], [description], [is_selling], [made_in], [made_of], [name], [price], [promotional_price], [update_at], [category_id], [store_id], [style_id], [sold]) VALUES (N'57', N'Salmon', N'2005-11-19 13:49:14.0000000', N'Wing Suen Electronic Limited', N'1', N'Iceland', N'65% Polyester', N'miwi', N'451205', N'351101', N'2013-11-09 08:23:57.0000000', N'7', N'2', N'29', N'2')
GO

INSERT INTO [dbo].[product] ([id], [color], [create_at], [description], [is_selling], [made_in], [made_of], [name], [price], [promotional_price], [update_at], [category_id], [store_id], [style_id], [sold]) VALUES (N'58', N'Chocolate', N'2022-07-31 07:26:21.0000000', N'Kaito Corporation', N'1', N'Cambodia', N'85% Polyester, 15% Bông', N'Chepry', N'498015', N'341841', N'2020-11-03 22:42:40.0000000', N'7', N'2', N'29', N'3')
GO

INSERT INTO [dbo].[product] ([id], [color], [create_at], [description], [is_selling], [made_in], [made_of], [name], [price], [promotional_price], [update_at], [category_id], [store_id], [style_id], [sold]) VALUES (N'59', N'Sand Beige', N'2007-05-17 13:41:55.0000000', N'Lok''s Limited', N'1', N'Hungary', N'60% Polyester, 20% Bông', N'therry elite', N'454752', N'304729', N'2022-06-02 18:41:41.0000000', N'7', N'1', N'30', N'2')
GO

INSERT INTO [dbo].[product] ([id], [color], [create_at], [description], [is_selling], [made_in], [made_of], [name], [price], [promotional_price], [update_at], [category_id], [store_id], [style_id], [sold]) VALUES (N'60', N'Mustard', N'2004-09-07 19:30:46.0000000', N'Uchida Consultants Corporation', N'1', N'India', N'75% Bông', N'iStraaberry', N'496557', N'295524', N'2005-02-01 22:57:02.0000000', N'7', N'2', N'30', N'2')
GO

INSERT INTO [dbo].[product] ([id], [color], [create_at], [description], [is_selling], [made_in], [made_of], [name], [price], [promotional_price], [update_at], [category_id], [store_id], [style_id], [sold]) VALUES (N'61', N'Yellow', N'2002-02-24 23:12:38.0000000', N'Ito Food Corporation', N'1', N'Albania', N'Tweed', N'Cherly', N'427955', N'297549', N'2016-03-08 17:23:13.0000000', N'7', N'2', N'31', N'2')
GO

INSERT INTO [dbo].[product] ([id], [color], [create_at], [description], [is_selling], [made_in], [made_of], [name], [price], [promotional_price], [update_at], [category_id], [store_id], [style_id], [sold]) VALUES (N'62', N'Dark Gray', N'2018-11-03 07:27:37.0000000', N'Zhennan Company Limited', N'1', N'Nepal', N'75% Bông', N'Raspberry', N'437350', N'172675', N'2019-12-01 04:02:49.0000000', N'7', N'1', N'31', N'2')
GO

INSERT INTO [dbo].[product] ([id], [color], [create_at], [description], [is_selling], [made_in], [made_of], [name], [price], [promotional_price], [update_at], [category_id], [store_id], [style_id], [sold]) VALUES (N'63', N'Lime', N'2013-05-15 21:11:07.0000000', N'Yunxi Pharmaceutical Company Limited', N'1', N'Canada', N'Chất liệu da PU', N'ultra-Apole', N'459441', N'132589', N'2014-05-01 02:59:50.0000000', N'8', N'1', N'32', N'2')
GO

INSERT INTO [dbo].[product] ([id], [color], [create_at], [description], [is_selling], [made_in], [made_of], [name], [price], [promotional_price], [update_at], [category_id], [store_id], [style_id], [sold]) VALUES (N'64', N'Cream', N'2018-10-16 13:02:22.0000000', N'Xiuying Company Limited', N'1', N'Myanmar', N'Spandex', N'Stralberry', N'459175', N'333734', N'2007-05-06 09:33:44.0000000', N'8', N'2', N'32', N'2')
GO

INSERT INTO [dbo].[product] ([id], [color], [create_at], [description], [is_selling], [made_in], [made_of], [name], [price], [promotional_price], [update_at], [category_id], [store_id], [style_id], [sold]) VALUES (N'65', N'Red', N'2010-09-09 11:00:45.0000000', N'Ming Sze Pharmaceutical Limited', N'1', N'Switzerland', N'80% Twees, 20% Bông', N'Sdrawberry', N'492123', N'267665', N'2007-01-19 11:29:25.0000000', N'8', N'2', N'33', N'2')
GO

INSERT INTO [dbo].[product] ([id], [color], [create_at], [description], [is_selling], [made_in], [made_of], [name], [price], [promotional_price], [update_at], [category_id], [store_id], [style_id], [sold]) VALUES (N'66', N'Khaki', N'2003-11-01 03:30:17.0000000', N'Hazuki Toy Corporation', N'1', N'Montenegro', N'Vải không căng', N'Orange', N'454656', N'290527', N'2010-08-27 10:40:55.0000000', N'8', N'2', N'33', N'2')
GO

INSERT INTO [dbo].[product] ([id], [color], [create_at], [description], [is_selling], [made_in], [made_of], [name], [price], [promotional_price], [update_at], [category_id], [store_id], [style_id], [sold]) VALUES (N'67', N'Light Gray', N'2012-08-09 12:16:46.0000000', N'Jialun Company Limited', N'1', N'Costa Rica', N'50% Bông, 50% Spandex', N'Cherry se', N'484569', N'390084', N'2011-01-02 07:42:05.0000000', N'8', N'2', N'34', N'2')
GO

INSERT INTO [dbo].[product] ([id], [color], [create_at], [description], [is_selling], [made_in], [made_of], [name], [price], [promotional_price], [update_at], [category_id], [store_id], [style_id], [sold]) VALUES (N'68', N'Light Coral', N'2010-02-10 19:12:02.0000000', N'Tina LLC', N'1', N'Sweden', N'Polyester', N'Cherry elite', N'442052', N'297031', N'2017-12-25 21:55:39.0000000', N'8', N'2', N'34', N'2')
GO

INSERT INTO [dbo].[product] ([id], [color], [create_at], [description], [is_selling], [made_in], [made_of], [name], [price], [promotional_price], [update_at], [category_id], [store_id], [style_id], [sold]) VALUES (N'69', N'Chocolate', N'2017-11-29 07:08:49.0000000', N'Takuya Corporation', N'1', N'Congo', N'75% Bông', N'Puuots', N'464213', N'229068', N'2005-05-27 08:53:39.0000000', N'8', N'1', N'35', N'2')
GO

INSERT INTO [dbo].[product] ([id], [color], [create_at], [description], [is_selling], [made_in], [made_of], [name], [price], [promotional_price], [update_at], [category_id], [store_id], [style_id], [sold]) VALUES (N'70', N'Light Coral', N'2018-12-08 19:21:58.0000000', N'Xiaoming Property Company Limited', N'1', N'Burundi', N'75% Bông', N'hiwi', N'440275', N'281983', N'2015-10-18 09:27:16.0000000', N'8', N'2', N'35', N'2')
GO

INSERT INTO [dbo].[product] ([id], [color], [create_at], [description], [is_selling], [made_in], [made_of], [name], [price], [promotional_price], [update_at], [category_id], [store_id], [style_id], [sold]) VALUES (N'71', N'Coffee', N'2007-07-22 08:51:09.0000000', N'Ng''s Limited', N'1', N'Nauru', N'Vải không căng', N'mpple', N'424882', N'172384', N'2021-09-12 07:02:38.0000000', N'8', N'1', N'36', N'2')
GO

INSERT INTO [dbo].[product] ([id], [color], [create_at], [description], [is_selling], [made_in], [made_of], [name], [price], [promotional_price], [update_at], [category_id], [store_id], [style_id], [sold]) VALUES (N'72', N'White Smoke', N'2012-05-14 16:45:29.0000000', N'Eita Residence Corporation', N'1', N'Guatemala', N'Spandex', N'Ramzutan', N'483685', N'377408', N'2003-11-18 09:45:04.0000000', N'8', N'2', N'37', N'2')
GO

INSERT INTO [dbo].[product] ([id], [color], [create_at], [description], [is_selling], [made_in], [made_of], [name], [price], [promotional_price], [update_at], [category_id], [store_id], [style_id], [sold]) VALUES (N'73', N'Gainsboro', N'2023-03-05 10:10:23.0000000', N'Vargas''s LLC', N'1', N'Georgia', N'80% Twees, 20% Bông', N'xrange', N'404682', N'274453', N'2004-01-27 06:41:33.0000000', N'8', N'1', N'37', N'6')
GO

INSERT INTO [dbo].[product] ([id], [color], [create_at], [description], [is_selling], [made_in], [made_of], [name], [price], [promotional_price], [update_at], [category_id], [store_id], [style_id], [sold]) VALUES (N'74', N'T3', N'2023-05-15 04:58:36.7550000', N'Test Descrpition 1', N'1', N'T', N'T', N'Test Product Name 10', N'10', N'9', N'2023-05-15 05:28:58.4420000', N'3', N'1', N'4', N'0')
GO

INSERT INTO [dbo].[product] ([id], [color], [create_at], [description], [is_selling], [made_in], [made_of], [name], [price], [promotional_price], [update_at], [category_id], [store_id], [style_id], [sold]) VALUES (N'75', N'T2', N'2023-05-15 07:17:55.0060000', N'Test Descrpition 1', N'1', N'T', N'T', N'Test Product Name 101', N'10', N'9', NULL, N'3', N'1', N'4', N'0')
GO

INSERT INTO [dbo].[product] ([id], [color], [create_at], [description], [is_selling], [made_in], [made_of], [name], [price], [promotional_price], [update_at], [category_id], [store_id], [style_id], [sold]) VALUES (N'76', N'T1', N'2023-05-15 08:59:33.3920000', N'Test Descrpition 1', N'1', N'T', N'T', N'Test Product Name 1011', N'100', N'90', N'2023-05-15 23:48:31.0740000', N'3', N'1', N'11', N'0')
GO

INSERT INTO [dbo].[product] ([id], [color], [create_at], [description], [is_selling], [made_in], [made_of], [name], [price], [promotional_price], [update_at], [category_id], [store_id], [style_id], [sold]) VALUES (N'77', N'123', N'2023-05-15 21:15:04.4360000', N'123', N'0', N'123', N'123', N'abc', N'123', N'123', NULL, N'4', N'1', N'12', N'0')
GO

INSERT INTO [dbo].[product] ([id], [color], [create_at], [description], [is_selling], [made_in], [made_of], [name], [price], [promotional_price], [update_at], [category_id], [store_id], [style_id], [sold]) VALUES (N'78', N'123', N'2023-05-15 21:19:34.6420000', N'123', N'1', N'123', N'123', N'abccc', N'123', N'123', NULL, N'3', N'1', N'4', N'0')
GO

INSERT INTO [dbo].[product] ([id], [color], [create_at], [description], [is_selling], [made_in], [made_of], [name], [price], [promotional_price], [update_at], [category_id], [store_id], [style_id], [sold]) VALUES (N'79', N'123', N'2023-05-15 21:26:12.2300000', N'123', N'1', N'123', N'123', N'abccaaaaaaaaa', N'123', N'123', NULL, N'3', N'1', N'4', N'0')
GO

SET IDENTITY_INSERT [dbo].[product] OFF
GO


-- ----------------------------
-- Table structure for product_image
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[product_image]') AND type IN ('U'))
	DROP TABLE [dbo].[product_image]
GO

CREATE TABLE [dbo].[product_image] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [create_at] datetime2(7)  NULL,
  [image] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [update_at] datetime2(7)  NULL,
  [product_id] int  NULL
)
GO

ALTER TABLE [dbo].[product_image] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of product_image
-- ----------------------------
SET IDENTITY_INSERT [dbo].[product_image] ON
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'1', N'2023-05-08 17:33:32.7930000', N'https://res.cloudinary.com/dl0vbutga/image/upload/v1683542019/a31ws6lsovtn4g4lbmhx.webp', N'2023-05-14 10:15:02.0000000', N'4')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'2', N'2023-05-08 17:33:32.7930000', N'https://res.cloudinary.com/dl0vbutga/image/upload/v1683542022/hzu9bgtavcrajmg4vx1t.webp', N'2023-05-14 10:15:02.0000000', N'4')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'3', N'2023-05-08 17:33:32.7930000', N'https://res.cloudinary.com/dl0vbutga/image/upload/v1683542025/wfxnymb4tfzd4bghhraa.webp', N'2023-05-14 10:15:02.0000000', N'4')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'4', N'2023-05-08 17:33:32.7930000', N'https://res.cloudinary.com/dl0vbutga/image/upload/v1683542028/eipigw8xdgpuloaqa4br.webp', N'2023-05-14 10:15:02.0000000', N'4')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'5', N'2023-05-08 17:36:36.7290000', N'https://res.cloudinary.com/dl0vbutga/image/upload/v1683542203/lqjdzr9e9milxn6e2sgm.webp', N'2023-05-14 10:15:02.0000000', N'5')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'6', N'2023-05-08 17:36:36.7290000', N'https://res.cloudinary.com/dl0vbutga/image/upload/v1683542206/m9lzuan4vlwgu43fzcfk.webp', N'2023-05-14 10:15:02.0000000', N'5')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'7', N'2023-05-08 17:36:36.7290000', N'https://res.cloudinary.com/dl0vbutga/image/upload/v1683542209/fejeojeagiykiehojucb.webp', N'2023-05-14 10:15:02.0000000', N'5')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'8', N'2023-05-08 17:39:00.5040000', N'https://res.cloudinary.com/dl0vbutga/image/upload/v1683542347/fvjgh3ex0sblox4cwkdb.webp', N'2023-05-14 10:15:02.0000000', N'6')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'9', N'2023-05-08 17:39:00.5040000', N'https://res.cloudinary.com/dl0vbutga/image/upload/v1683542351/g3qk6ecpd3oolupnrplf.webp', N'2023-05-14 10:15:02.0000000', N'6')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'10', N'2023-05-08 17:39:00.5040000', N'https://res.cloudinary.com/dl0vbutga/image/upload/v1683542355/fzzlob0eyztqwlfc9kai.webp', N'2023-05-14 10:15:02.0000000', N'6')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'11', N'2023-05-08 17:39:00.5040000', N'https://res.cloudinary.com/dl0vbutga/image/upload/v1683542358/bbpw3dr21oxbuocxo1tc.webp', N'2023-05-14 10:15:02.0000000', N'6')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'12', N'2023-05-08 17:43:19.0030000', N'https://res.cloudinary.com/dl0vbutga/image/upload/v1683542605/b8xczqx1avgp82kij3gg.webp', N'2023-05-14 10:15:02.0000000', N'7')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'13', N'2023-05-08 17:43:19.0030000', N'https://res.cloudinary.com/dl0vbutga/image/upload/v1683542608/cj3s1eley6tyg7ea3i7o.webp', N'2023-05-14 10:15:02.0000000', N'7')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'14', N'2023-05-08 17:43:19.0030000', N'https://res.cloudinary.com/dl0vbutga/image/upload/v1683542612/letibcihofrkxy47u0vb.webp', N'2023-05-14 10:15:02.0000000', N'7')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'15', N'2023-05-08 17:54:47.4590000', N'https://res.cloudinary.com/dl0vbutga/image/upload/v1683543294/aw2pdvjhepzkytfgutls.webp', N'2023-05-14 10:15:02.0000000', N'8')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'16', N'2023-05-08 17:54:47.4590000', N'https://res.cloudinary.com/dl0vbutga/image/upload/v1683543298/v6qjpefdxrtdj60tibqc.webp', N'2023-05-14 10:15:02.0000000', N'8')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'17', N'2023-05-08 17:54:47.4590000', N'https://res.cloudinary.com/dl0vbutga/image/upload/v1683543301/t4h24hptsu4sakcjorc5.webp', N'2023-05-14 10:15:02.0000000', N'8')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'18', N'2023-05-08 17:54:47.4590000', N'https://res.cloudinary.com/dl0vbutga/image/upload/v1683543305/cnmhipf0t71wtrarbmwa.webp', N'2023-05-14 10:15:02.0000000', N'8')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'19', N'2002-10-07 10:28:31.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/01/10/1673317340ba9d51e96cbe142de120297685d6c81c.webp', N'2023-05-14 10:15:02.0000000', N'21')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'20', N'2018-03-31 11:56:08.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/02/18/167671397784ceea16901145ecb5ec0f6aa129acbf.webp', N'2023-05-14 10:15:02.0000000', N'56')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'21', N'2005-08-28 12:22:22.0000000', N'https://img.ltwebstatic.com/images3_pi/2021/12/13/1639361958b7abce7d52fc89a7e25201c543287d49.webp', N'2023-05-14 10:15:02.0000000', N'62')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'22', N'2003-09-25 01:26:10.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/04/27/1682578589edc1b67b8a07a9b27383a3b634406132.webp', N'2023-05-14 10:15:02.0000000', N'42')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'23', N'2009-02-28 12:25:02.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/05/02/16830145474d7ee92c3b5bd2f2a69a2c56d0cecf1b.webp', N'2023-05-14 10:15:02.0000000', N'18')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'24', N'2004-03-08 12:40:15.0000000', N'https://img.ltwebstatic.com/images3_pi/2022/10/28/1666924651a1b1b2fea03db9d75edfc920c08928dc.webp', N'2023-05-14 10:15:02.0000000', N'28')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'25', N'2000-03-30 18:54:01.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/03/06/1678096358f54f32418794ee12412b9a7339bb6bc9.webp', N'2023-05-14 10:15:02.0000000', N'50')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'26', N'2008-03-16 06:33:56.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/03/29/1680058168399375ca4b91966d3a6de3066a12e84b.webp', N'2023-05-14 10:15:02.0000000', N'38')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'27', N'2015-05-02 22:35:57.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/02/15/16764492103bf1f50d5aa463993c5f38f5724323cd.webp', N'2023-05-14 10:15:02.0000000', N'54')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'28', N'2003-08-02 00:15:04.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/03/29/16800581634321422eeb6e4c18cd4cecc989d7e001.webp', N'2023-05-14 10:15:02.0000000', N'38')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'29', N'2011-06-09 21:41:18.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/01/12/16734961972fb646dae69f71285f757074144b9731.webp', N'2023-05-14 10:15:02.0000000', N'37')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'30', N'2006-01-10 18:53:24.0000000', N'https://img.ltwebstatic.com/images3_pi/2022/10/31/16671946069966b8eb5ca699b6b8307004b35727b4.webp', N'2023-05-14 10:15:02.0000000', N'72')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'31', N'2004-08-04 10:23:56.0000000', N'https://img.ltwebstatic.com/images3_pi/2021/11/15/163696948997c540b195f4539847fccf5ae68ad0c4.webp', N'2023-05-14 10:15:02.0000000', N'32')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'32', N'2013-06-27 20:15:51.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/04/24/16823068234e7511fd3097d111c3d0941d4266c245.webp', N'2023-05-14 10:15:02.0000000', N'67')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'33', N'2013-12-16 21:54:45.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/04/05/1680678023004350690fd36dd2e3a63e18e052c0a5.webp', N'2023-05-14 10:15:02.0000000', N'64')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'34', N'2003-02-24 21:11:57.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/03/06/1678096359ed4b2d872bae3c47c91013b6eab31921.webp', N'2023-05-14 10:15:02.0000000', N'50')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'35', N'2004-03-07 14:24:41.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/03/06/167809636163e104e1fb43ec1647043c826e4c3f0d.webp', N'2023-05-14 10:15:02.0000000', N'50')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'36', N'2015-10-09 11:30:25.0000000', N'https://img.ltwebstatic.com/images3_pi/2022/04/02/164888277441e67334ab691f32953214e3391b9a4c.webp', N'2023-05-14 10:15:02.0000000', N'57')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'37', N'2014-07-13 23:19:55.0000000', N'https://img.ltwebstatic.com/images3_pi/2022/11/07/1667823665accd5d811abedf908887d2d7d7beb132.webp', N'2023-05-14 10:15:02.0000000', N'41')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'38', N'2016-03-09 18:01:17.0000000', N'https://img.ltwebstatic.com/images3_pi/2022/10/17/1665985383fc51d38ef342e8085999b48bf55c63e5.webp', N'2023-05-14 10:15:02.0000000', N'11')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'39', N'2014-08-31 23:05:18.0000000', N'https://img.ltwebstatic.com/images3_pi/2022/10/31/166721119913ff3a06e1990a808838d1fbde4db532.webp', N'2023-05-14 10:15:02.0000000', N'10')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'40', N'2011-09-01 08:46:15.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/05/02/16830145444f122b2b9e66a25ced9aaf0026debfef.webp', N'2023-05-14 10:15:02.0000000', N'18')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'41', N'2014-10-05 09:50:41.0000000', N'https://img.ltwebstatic.com/images3_pi/2022/10/31/1667211201d42e2bf4ec12981754b7f7809805475b.webp', N'2023-05-14 10:15:02.0000000', N'10')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'42', N'2017-06-11 17:09:25.0000000', N'https://img.ltwebstatic.com/images3_pi/2020/02/13/15815858792febe1fa2fa1d071682e923ad2d6d2af.webp', N'2023-05-14 10:15:02.0000000', N'19')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'43', N'2008-10-20 16:01:05.0000000', N'https://img.ltwebstatic.com/images3_pi/2022/08/29/166176576236a65f34a70620435d61dedd4eed91ee.webp', N'2023-05-14 10:15:02.0000000', N'33')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'44', N'2011-11-16 00:02:18.0000000', N'https://img.ltwebstatic.com/images3_pi/2022/10/24/16666024155e96bbc18d47f5e3af9ca2d9d106e716.webp', N'2023-05-14 10:15:02.0000000', N'40')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'45', N'2019-10-25 19:21:06.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/02/08/167582006209de40d4276f8ffe2337c6c48d46ce4f.webp', N'2023-05-14 10:15:02.0000000', N'70')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'46', N'2000-08-03 08:43:35.0000000', N'https://img.ltwebstatic.com/images2_pi/2019/09/23/15692299691045808352.webp', N'2023-05-14 10:15:02.0000000', N'24')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'47', N'2011-01-15 04:52:27.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/02/20/167688111103e8dc8e049ba0106b9c8882aecac53d.webp', N'2023-05-14 10:15:02.0000000', N'49')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'48', N'2013-07-22 05:54:09.0000000', N'https://img.ltwebstatic.com/images3_pi/2021/12/06/1638756941132aa14120d43b07c40ac9a1128831c9.webp', N'2023-05-14 10:15:02.0000000', N'52')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'49', N'2021-05-16 09:50:55.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/05/02/16830145412440d85ae875881ebbce60191a46d018.webp', N'2023-05-14 10:15:02.0000000', N'18')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'50', N'2005-04-27 09:08:27.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/03/30/1680154592a01375fa6942fc02cb9d06667e88dddf.webp', N'2023-05-14 10:15:02.0000000', N'44')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'51', N'2006-08-30 12:56:02.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/03/30/16801545945141cfeec646ff4f0e0fc8b008ba847c.webp', N'2023-05-14 10:15:02.0000000', N'44')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'52', N'2010-12-29 00:12:57.0000000', N'https://img.ltwebstatic.com/images3_pi/2022/10/17/1665985377428e44bb445a7de24d71005beb87f76b.webp', N'2023-05-14 10:15:02.0000000', N'11')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'53', N'2001-05-10 14:39:18.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/03/21/16793658516061fb098b6a7861a4620845fae2fd78.webp', N'2023-05-14 10:15:02.0000000', N'60')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'54', N'2015-04-11 15:35:52.0000000', N'https://img.ltwebstatic.com/images3_pi/2022/11/07/1667823666b170c3ca9d768313ff77e22d4d05093e.webp', N'2023-05-14 10:15:02.0000000', N'41')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'55', N'2012-10-23 09:23:24.0000000', N'https://img.ltwebstatic.com/images3_pi/2022/10/31/16672112023d8e841af55004448100c610215ff36b.webp', N'2023-05-14 10:15:02.0000000', N'10')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'56', N'2001-09-03 22:03:34.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/03/30/1680154588a082dfa293c0d3e28649a758eb305286.webp', N'2023-05-14 10:15:02.0000000', N'44')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'57', N'2015-03-01 21:11:48.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/04/25/168241708726b60b71a0d45c1980f33ecb61a953f6.webp', N'2023-05-14 10:15:02.0000000', N'29')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'58', N'2019-03-05 05:24:50.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/04/12/16812632247c1088f21e9999b84e44afadc611862c.webp', N'2023-05-14 10:15:02.0000000', N'58')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'59', N'2017-07-25 11:08:17.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/04/04/1680598563b2305c723aa2eb404e3a839147d53b7c.webp', N'2023-05-14 10:15:02.0000000', N'45')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'60', N'2019-10-01 18:41:14.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/04/19/16819018260ea45ab54cbc16901cfaffbea0e55198.webp', N'2023-05-14 10:15:02.0000000', N'47')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'61', N'2001-06-17 23:59:40.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/02/15/167644920897644a32d4fbdcaa03197a4eb41b919d.webp', N'2023-05-14 10:15:02.0000000', N'54')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'62', N'2011-09-06 19:24:43.0000000', N'https://img.ltwebstatic.com/images3_pi/2021/12/02/1638411030aca63e5fc24e27b9c2165fdc5b76e5bf.webp', N'2023-05-14 10:15:02.0000000', N'23')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'63', N'2009-07-08 09:30:05.0000000', N'https://img.ltwebstatic.com/images3_pi/2022/12/08/16704694609740946219c93650ed5dda60bc2ab162.webp', N'2023-05-14 10:15:02.0000000', N'11')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'64', N'2012-02-17 14:38:40.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/04/05/168067802595af654a93cf54600d7f9dd3fbd11c06.webp', N'2023-05-14 10:15:02.0000000', N'64')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'65', N'2010-10-15 00:44:29.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/04/24/16823067981b3963792f2ecadfc6e4a3a6eb6aac96.webp', N'2023-05-14 10:15:02.0000000', N'67')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'66', N'2009-03-11 05:16:19.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/04/19/1681901828c834d2dea20e34a7df58ec0b8fb9a8e9.webp', N'2023-05-14 10:15:02.0000000', N'47')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'67', N'2003-10-27 21:33:18.0000000', N'https://img.ltwebstatic.com/images3_pi/2022/05/19/16529298361d90483e436171240ffa415e525c4134.webp', N'2023-05-14 10:15:02.0000000', N'16')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'68', N'2022-04-27 23:37:05.0000000', N'https://img.ltwebstatic.com/images3_pi/2022/11/26/166942588204dd9cd5cb3e5e9667133339d57d856c.webp', N'2023-05-14 10:15:02.0000000', N'34')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'69', N'2000-12-19 04:05:01.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/03/23/16795431424991985e43158c6cb777236be1f890e1.webp', N'2023-05-14 10:15:02.0000000', N'14')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'70', N'2011-03-06 15:00:12.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/04/12/16812632266f8ab061b4de0ec11b8ef3d754a9eba7.webp', N'2023-05-14 10:15:02.0000000', N'58')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'71', N'2016-05-11 02:07:33.0000000', N'https://img.ltwebstatic.com/images3_pi/2021/12/13/16393619552a60d9d5fe8889110d9c2141f3c4a6d2.webp', N'2023-05-14 10:15:02.0000000', N'62')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'72', N'2001-11-08 17:30:22.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/02/08/1675820058761cc2c6cae679285f6aeea7e5ecf08e.webp', N'2023-05-14 10:15:02.0000000', N'70')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'73', N'2019-02-22 21:07:27.0000000', N'https://img.ltwebstatic.com/images3_pi/2022/10/24/16666024146a6a7e7901c78910ca029e5a31df1a94.webp', N'2023-05-14 10:15:02.0000000', N'40')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'74', N'2015-04-05 23:40:44.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/04/12/1681263222ec22fe228ca4a88b4fc65bdef12949be.webp', N'2023-05-14 10:15:02.0000000', N'58')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'75', N'2008-10-24 04:42:58.0000000', N'https://img.ltwebstatic.com/images3_pi/2021/11/10/16365134246a26c20b7679e567d3949af1cdc73575.webp', N'2023-05-14 10:15:02.0000000', N'22')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'76', N'2005-12-17 21:25:50.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/03/21/1679365850da70884e90dad86e043e946852ff3514.webp', N'2023-05-14 10:15:02.0000000', N'60')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'77', N'2016-09-05 10:43:59.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/02/08/1675820060b711b353c4cecb18b21bbaa3b9b4514d.webp', N'2023-05-14 10:15:02.0000000', N'70')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'78', N'2010-02-20 09:25:16.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/04/21/16820619710f39af0126e428d95fe3ec777d86399c.webp', N'2023-05-14 10:15:02.0000000', N'68')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'79', N'2005-02-17 14:14:12.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/01/12/16734961946a89cc11a54a1359d948e4c9a22b8074.webp', N'2023-05-14 10:15:02.0000000', N'37')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'80', N'2002-11-17 20:49:03.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/04/27/1682564821f1fec6a8fe82703f7be6c99a6af8b2e9.webp', N'2023-05-14 10:15:02.0000000', N'31')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'81', N'2012-02-18 05:27:20.0000000', N'https://img.ltwebstatic.com/images3_pi/2022/05/05/165171666990988033f6d08eff3ed5542f7e7fd1e5.webp', N'2023-05-14 10:15:02.0000000', N'35')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'82', N'2020-05-03 17:56:19.0000000', N'https://img.ltwebstatic.com/images3_pi/2021/12/06/1638756928ebf0426957ad06342ccfaf01b9ecb3e6.webp', N'2023-05-14 10:15:02.0000000', N'52')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'83', N'2019-05-18 12:18:46.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/04/04/1680600025008a1f4ed1dd616aff1785355eae54a4.webp', N'2023-05-14 10:15:02.0000000', N'27')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'84', N'2019-09-26 11:48:55.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/03/09/1678365243eee3624d641a72824f9cb27454585783.webp', N'2023-05-14 10:15:02.0000000', N'13')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'85', N'2003-11-16 22:40:54.0000000', N'https://img.ltwebstatic.com/images3_pi/2022/11/07/1667820119f3e22b53ea011b87ac673dab17ead8ff.webp', N'2023-05-14 10:15:02.0000000', N'31')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'86', N'2019-06-19 21:25:25.0000000', N'https://img.ltwebstatic.com/images3_pi/2022/04/02/1648882773d2f58ff3277a84cb4ecd80efed6e734f.webp', N'2023-05-14 10:15:02.0000000', N'57')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'87', N'2003-08-20 02:10:38.0000000', N'https://img.ltwebstatic.com/images3_pi/2022/05/19/16529298335c05e097da57dbc20eade6d71f79feb4.webp', N'2023-05-14 10:15:02.0000000', N'16')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'88', N'2017-07-03 11:56:56.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/04/24/1682306824a569726886578629716700917f25d6f8.webp', N'2023-05-14 10:15:02.0000000', N'67')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'89', N'2016-10-19 02:12:17.0000000', N'https://img.ltwebstatic.com/images3_pi/2022/11/19/166882077636876a7cb43817cb3f74ef796bd04539.webp', N'2023-05-14 10:15:02.0000000', N'46')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'90', N'2003-05-21 08:10:33.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/04/06/16807625641f45afa42299be405716de4ad776f139.webp', N'2023-05-14 10:15:02.0000000', N'36')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'91', N'2004-08-11 04:30:45.0000000', N'https://img.ltwebstatic.com/images3_pi/2022/12/08/167046945509229262acf3b460cf94edefcd3c7d50.webp', N'2023-05-14 10:15:02.0000000', N'11')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'92', N'2004-08-10 11:22:17.0000000', N'https://img.ltwebstatic.com/images3_pi/2022/10/08/1665218887c5b313365cbe4dadb33a8cdc255906f8.webp', N'2023-05-14 10:15:02.0000000', N'39')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'93', N'2003-04-23 19:10:31.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/04/05/168067801491b2f502c74eb332a170dd7e0c6d685c.webp', N'2023-05-14 10:15:02.0000000', N'64')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'94', N'2017-11-14 09:29:43.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/04/12/16812633416f34aa089c3ce4718df292f29badd94e.webp', N'2023-05-14 10:15:02.0000000', N'58')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'95', N'2001-05-16 12:38:04.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/04/11/1681185427b869bc388452bb9098d24d22006ede67.webp', N'2023-05-14 10:15:02.0000000', N'17')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'96', N'2000-11-15 21:53:14.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/02/15/1676449207e2a4b2443afffab22d5c9a9cf6bd7606.webp', N'2023-05-14 10:15:02.0000000', N'54')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'97', N'2011-11-02 05:10:22.0000000', N'https://img.ltwebstatic.com/images3_pi/2022/10/08/1665218886d294f099da942f1bdda7cf07e91c3866.webp', N'2023-05-14 10:15:02.0000000', N'39')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'98', N'2015-12-23 17:17:55.0000000', N'https://img.ltwebstatic.com/images3_spmp/2023/04/19/168189990875c0ff40a96bf5197c9b72f2ef58ee9b.jpg', N'2023-05-14 10:15:02.0000000', N'73')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'99', N'2019-11-08 19:32:24.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/03/23/1679534183392ee3d7212239dc33f140447fd0d3fc.webp', N'2023-05-14 10:15:02.0000000', N'63')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'100', N'2011-09-24 23:02:51.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/03/29/168005817205efe08b0339e5aab1a96914f93cd9c4.webp', N'2023-05-14 10:15:02.0000000', N'38')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'101', N'2011-11-25 16:15:07.0000000', N'https://img.ltwebstatic.com/images3_pi/2022/10/28/16669234426860c4a5a51e4b6dc4e0e00989143584.webp', N'2023-05-14 10:15:02.0000000', N'56')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'102', N'2004-12-21 01:08:15.0000000', N'https://img.ltwebstatic.com/images3_pi/2022/10/31/1667194607d8df7fd3853991c1a71b56fb46d1ebb8.webp', N'2023-05-14 10:15:02.0000000', N'72')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'103', N'2011-05-17 07:55:19.0000000', N'https://img.ltwebstatic.com/images3_pi/2022/09/16/1663315444d32ff9078d43a7c82c063825b9253137_thumbnail_900x.webp', N'2023-05-14 10:15:02.0000000', N'25')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'104', N'2002-02-08 16:03:23.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/05/02/16830145393fa9cdcb3b7b4bfe67ef0b9fda455bef.webp', N'2023-05-14 10:15:02.0000000', N'18')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'105', N'2015-03-12 05:23:28.0000000', N'https://img.ltwebstatic.com/images3_pi/2022/04/02/164888277115b71f6beeb602ca5cadb667e821c3be.webp', N'2023-05-14 10:15:02.0000000', N'57')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'106', N'2005-01-25 16:05:48.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/03/23/167953418024b17ab03137568862317bb145e76cc0.webp', N'2023-05-14 10:15:02.0000000', N'63')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'107', N'2009-12-19 13:41:44.0000000', N'https://img.ltwebstatic.com/images3_pi/2022/08/29/16617657657255d5bf9896cd2fbd186334ae2d17c8.webp', N'2023-05-14 10:15:02.0000000', N'33')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'108', N'2003-01-31 05:48:03.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/03/23/16795341858d283315a65b7e0ad0697c0420c86774.webp', N'2023-05-14 10:15:02.0000000', N'63')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'109', N'2005-05-08 17:59:30.0000000', N'https://img.ltwebstatic.com/images3_pi/2022/11/26/1669425869ce355b7ac0ae8e8e661ec36927c4d415.webp', N'2023-05-14 10:15:02.0000000', N'34')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'110', N'2010-07-31 18:04:26.0000000', N'https://img.ltwebstatic.com/images3_pi/2022/11/18/16687479595cd17f235ceba47999c15fa8d7cd98a1.webp', N'2023-05-14 10:15:02.0000000', N'28')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'111', N'2017-02-15 11:28:48.0000000', N'https://img.ltwebstatic.com/images3_pi/2022/11/19/166882077467d24c616bbe78b3259ed0d094dbb23d.webp', N'2023-05-14 10:15:02.0000000', N'46')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'112', N'2005-09-27 11:47:39.0000000', N'https://img.ltwebstatic.com/images3_pi/2022/08/23/16612202325136319e110de3cb7f8bdce6ba86e93f.webp', N'2023-05-14 10:15:02.0000000', N'20')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'113', N'2001-09-12 07:02:50.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/04/14/1681475590043ff8ecc66f7dc3d2c46471278418e5.webp', N'2023-05-14 10:15:02.0000000', N'43')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'114', N'2018-10-29 08:48:31.0000000', N'https://img.ltwebstatic.com/images2_pi/2019/09/23/15692299722465239436.webp', N'2023-05-14 10:15:02.0000000', N'24')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'115', N'2017-06-23 11:42:44.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/03/23/1679534189a411f880fa88107651424124503900aa.webp', N'2023-05-14 10:15:02.0000000', N'63')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'116', N'2010-07-26 20:13:37.0000000', N'https://img.ltwebstatic.com/images3_pi/2021/12/02/1638411031f6c57b9fd0c67c6fa5624734117ccd7e.webp', N'2023-05-14 10:15:02.0000000', N'23')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'117', N'2002-04-05 16:10:27.0000000', N'https://img.ltwebstatic.com/images3_pi/2022/08/29/166176575764175fde0417464a4f61b5cee3ff489d.webp', N'2023-05-14 10:15:02.0000000', N'33')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'118', N'2000-10-18 11:47:10.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/04/14/1681475587a5ddd44ce0903d99447da3c86afe70d3.webp', N'2023-05-14 10:15:02.0000000', N'43')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'119', N'2006-11-22 19:38:05.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/03/21/1679365849e077d4f2cfe29b9fc95bd4e02e388041.webp', N'2023-05-14 10:15:02.0000000', N'60')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'120', N'2003-03-02 01:48:09.0000000', N'https://img.ltwebstatic.com/images3_pi/2022/11/07/16678236641d6f55004eae2359d4ec4dfa26972851.webp', N'2023-05-14 10:15:02.0000000', N'41')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'121', N'2003-04-02 07:35:38.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/03/23/167954313558ea4fa1dea26b1dcdc606e5c585e991.webp', N'2023-05-14 10:15:02.0000000', N'14')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'122', N'2013-10-13 17:19:50.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/03/23/16795431399b7786f56ed64f68ec882c4380496852.webp', N'2023-05-14 10:15:02.0000000', N'14')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'123', N'2014-11-06 00:21:33.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/04/05/1680678021a9b9deeb620251fc3ba07cb1fc7766fe.webp', N'2023-05-14 10:15:02.0000000', N'64')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'124', N'2011-02-20 04:35:20.0000000', N'https://img.ltwebstatic.com/images3_pi/2022/05/05/1651716667852ef23e660638a2cd2d564866d7920f.webp', N'2023-05-14 10:15:02.0000000', N'35')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'125', N'2000-08-19 01:34:24.0000000', N'https://img.ltwebstatic.com/images3_pi/2020/02/13/1581585887b23de647ed6407f01063c006e1c33264.webp', N'2023-05-14 10:15:02.0000000', N'19')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'126', N'2014-11-03 07:35:05.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/04/14/16814755855e71002f1dabb414cc45001c8ec0680f.webp', N'2023-05-14 10:15:02.0000000', N'43')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'127', N'2011-04-16 11:19:58.0000000', N'https://img.ltwebstatic.com/images3_pi/2020/05/18/15897837638d794764860ea1995767e026db5ad3d6.webp', N'2023-05-14 10:15:02.0000000', N'48')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'128', N'2022-03-19 03:39:29.0000000', N'https://img.ltwebstatic.com/images3_pi/2022/08/23/16612202305ccf2ed79df633c6cacd1757f90cf633.webp', N'2023-05-14 10:15:02.0000000', N'20')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'129', N'2006-07-01 12:41:54.0000000', N'https://img.ltwebstatic.com/images3_pi/2022/04/27/1651037709070723e25c1a8f41734c27c38ebf1998.webp', N'2023-05-14 10:15:02.0000000', N'56')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'130', N'2004-05-24 15:25:53.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/04/11/1681185430adab1cf85d1f35cf46b5b6a219215488.webp', N'2023-05-14 10:15:02.0000000', N'17')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'131', N'2014-12-19 13:59:52.0000000', N'https://img.ltwebstatic.com/images3_pi/2022/10/14/166573376706655e044eb6dc35c78f6ed5f716ea01.webp', N'2023-05-14 10:15:02.0000000', N'53')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'132', N'2009-11-20 05:56:23.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/02/20/16768614059f4707bde995101eff4666393410caa3.webp', N'2023-05-14 10:15:02.0000000', N'59')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'133', N'2021-10-27 07:45:39.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/05/02/16830145359d0897f8e1aa5f99705199d9150e0546.webp', N'2023-05-14 10:15:02.0000000', N'18')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'134', N'2014-08-14 12:01:37.0000000', N'https://img.ltwebstatic.com/images3_pi/2022/11/19/166882077219e9853dbeb02eac93a347fd5ef59f5e.webp', N'2023-05-14 10:15:02.0000000', N'46')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'135', N'2015-05-30 04:29:04.0000000', N'https://img.ltwebstatic.com/images3_spmp/2023/04/19/1681899881ca88541d45a4d1a3c6766d2de7ee2d69.jpg', N'2023-05-14 10:15:02.0000000', N'73')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'136', N'2015-03-10 09:37:40.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/04/07/168086232534eda520972f9285b3bd07bc87dfac01.webp', N'2023-05-14 10:15:02.0000000', N'51')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'137', N'2005-02-15 02:46:35.0000000', N'https://img.ltwebstatic.com/images3_pi/2022/04/02/16488827705d9c59cd365ebc08086688f2b560005d.webp', N'2023-05-14 10:15:02.0000000', N'57')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'138', N'2008-07-23 04:58:25.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/04/05/168067801622d14aa7bd799a536ce883a2001c9a88.webp', N'2023-05-14 10:15:02.0000000', N'64')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'139', N'2015-09-12 11:00:25.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/04/19/1681901823f4ae434e4333cfe7b03741948bc23006.webp', N'2023-05-14 10:15:02.0000000', N'47')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'140', N'2014-03-13 23:52:09.0000000', N'https://img.ltwebstatic.com/images3_pi/2021/12/13/1639361962af0538c090d39e7a8a9d45366bb9588c.webp', N'2023-05-14 10:15:02.0000000', N'62')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'141', N'2015-09-21 02:20:45.0000000', N'https://img.ltwebstatic.com/images3_pi/2022/11/22/1669111975d728e5caba3aecc4b751675aff59e57d.webp', N'2023-05-14 10:15:02.0000000', N'73')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'142', N'2010-08-13 10:02:01.0000000', N'https://img.ltwebstatic.com/images3_pi/2021/12/02/163841103370f6947f4e25a19a98e01854ff51d81e.webp', N'2023-05-14 10:15:02.0000000', N'23')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'143', N'2003-11-30 05:25:34.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/05/02/1683014537ac8d5eeaec1a8d7aa633828a07d77f2d.webp', N'2023-05-14 10:15:02.0000000', N'18')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'144', N'2017-04-28 05:52:45.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/04/05/16806780193fd53d09f03ed25e4acae025f032558e.webp', N'2023-05-14 10:15:02.0000000', N'64')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'145', N'2009-12-04 00:47:37.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/02/20/1676861403f6202c03c227c5737e4841e4a46ff12b.webp', N'2023-05-14 10:15:02.0000000', N'59')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'146', N'2002-03-19 03:50:17.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/04/07/168086232791f1b7c58e3c58f1288f8865b53e3a30.webp', N'2023-05-14 10:15:02.0000000', N'51')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'147', N'2003-11-07 17:46:39.0000000', N'https://img.ltwebstatic.com/images3_pi/2022/11/19/16688207719f5a0b610ff61c7ea847e784e696182f.webp', N'2023-05-14 10:15:02.0000000', N'46')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'148', N'2013-07-09 10:42:54.0000000', N'https://img.ltwebstatic.com/images3_pi/2022/10/31/166721120455385ed98720ba1ac6e4068f4f071146.webp', N'2023-05-14 10:15:02.0000000', N'10')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'149', N'2013-06-19 11:06:26.0000000', N'https://img.ltwebstatic.com/images3_pi/2022/10/31/1667211201d42e2bf4ec12981754b7f7809805475b.webp', N'2023-05-14 10:15:02.0000000', N'10')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'150', N'2004-01-30 22:45:34.0000000', N'https://img.ltwebstatic.com/images3_pi/2022/04/02/1648863746b4116d243e6d0adb67cdec451310103f.webp', N'2023-05-14 10:15:02.0000000', N'56')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'151', N'2005-03-10 07:53:15.0000000', N'https://img.ltwebstatic.com/images3_pi/2022/12/17/1671243193698c4cc5e20433358245a228019a062d.webp', N'2023-05-14 10:15:02.0000000', N'15')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'152', N'2017-01-15 20:12:10.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/03/29/1680058176a78140aa11fc5e999351e45a80f8f150.webp', N'2023-05-14 10:15:02.0000000', N'38')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'153', N'2007-11-10 20:46:19.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/01/10/16733173458dbc4dcf89af7e51942438182c23841a.webp', N'2023-05-14 10:15:02.0000000', N'21')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'154', N'2012-08-09 02:48:19.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/03/30/1680158989856edba63f09f70da864d0807a97b751.webp', N'2023-05-14 10:15:02.0000000', N'12')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'155', N'2021-09-07 05:48:54.0000000', N'https://img.ltwebstatic.com/images3_pi/2021/07/30/16276348964b62eb1ad9fb0ca20ee65f3d82fa301a.webp', N'2023-05-14 10:15:02.0000000', N'61')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'156', N'2019-11-05 13:56:29.0000000', N'https://img.ltwebstatic.com/images3_pi/2022/12/30/167239444596705db4ba36b12af1f51ef21f577704.webp', N'2023-05-14 10:15:02.0000000', N'66')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'157', N'2002-01-09 20:23:35.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/02/20/1676881116337b42a54c0c4a5d9a84a6d31ecd225e.webp', N'2023-05-14 10:15:02.0000000', N'49')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'158', N'2017-07-26 02:00:33.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/04/11/16811426850faec787f7c4bed99b85ba0aada1b530.webp', N'2023-05-14 10:15:02.0000000', N'71')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'159', N'2005-04-04 14:52:19.0000000', N'https://img.ltwebstatic.com/images3_pi/2022/04/02/1648869850ef42f391215d519acf767a9ea3156a3e.webp', N'2023-05-14 10:15:02.0000000', N'55')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'160', N'2000-10-24 20:12:23.0000000', N'https://img.ltwebstatic.com/images3_pi/2022/06/22/16558754506b97eb62746bf183e039eaed05551ea1.webp', N'2023-05-14 10:15:02.0000000', N'30')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'161', N'2011-06-12 17:48:27.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/04/04/1680600022c87bf58fc0c54c9900f18bf7426099a4.webp', N'2023-05-14 10:15:02.0000000', N'27')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'162', N'2023-03-20 18:41:13.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/01/10/16733173436b3a8b354e3ab345d43157fa87957477.webp', N'2023-05-14 10:15:02.0000000', N'21')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'163', N'2014-09-20 00:05:44.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/04/27/1682578623d2c82ee5df761d1d6a9f32b8d66e1132.webp', N'2023-05-14 10:15:02.0000000', N'42')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'164', N'2018-02-04 12:28:42.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/04/04/16805985684fed38a54f27ef2ca6e597fc00669020.webp', N'2023-05-14 10:15:02.0000000', N'45')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'165', N'2017-12-18 07:17:11.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/02/20/1676861401e59d691a87f355ac5cee26c274c8b3ac.webp', N'2023-05-14 10:15:02.0000000', N'59')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'166', N'2020-01-29 22:09:44.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/04/21/1682061973e7dd5ee2a1a3f1dfc7eb811cdc0dccbe.webp', N'2023-05-14 10:15:02.0000000', N'68')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'167', N'2006-04-16 03:12:17.0000000', N'https://img.ltwebstatic.com/images3_pi/2022/06/22/1655875456c6f5063252b4dbdb00ca4ebd820c5d4c.webp', N'2023-05-14 10:15:02.0000000', N'30')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'168', N'2023-04-13 04:08:48.0000000', N'https://img.ltwebstatic.com/images3_pi/2020/02/13/1581585892e81fb521f43dbf1962c01933574bc145.webp', N'2023-05-14 10:15:02.0000000', N'19')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'169', N'2000-02-01 02:12:09.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/02/21/1676944522e181a23018ade00fb882887a49551ab5.webp', N'2023-05-14 10:15:02.0000000', N'69')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'170', N'2022-04-09 13:09:46.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/03/30/168015899160d59d336c39cf76860856b46ecd6213.webp', N'2023-05-14 10:15:02.0000000', N'12')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'171', N'2006-09-20 14:30:27.0000000', N'https://img.ltwebstatic.com/images3_pi/2022/05/05/16517166615bcf5ebb875a689123c631176f1cbdf9.webp', N'2023-05-14 10:15:02.0000000', N'35')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'172', N'2000-06-15 14:00:34.0000000', N'https://img.ltwebstatic.com/images3_pi/2022/11/18/16687479665191e373d28897d5010b4bdfaeca3a70.webp', N'2023-05-14 10:15:02.0000000', N'28')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'173', N'2011-06-14 20:25:26.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/04/21/1682061975f57c8ff675318636353c6317644458ae.webp', N'2023-05-14 10:15:02.0000000', N'68')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'174', N'2000-05-12 08:45:55.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/04/27/16825786253f561dd4df424986368ba5d3a017aa70.webp', N'2023-05-14 10:15:02.0000000', N'42')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'175', N'2001-11-16 07:00:51.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/03/09/1678365235754f9f171889b1883afb4361ed9bac71.webp', N'2023-05-14 10:15:02.0000000', N'13')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'176', N'2010-01-15 01:37:14.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/03/23/16795431566d5875dfeb1b079c68a5c572b254cc41.webp', N'2023-05-14 10:15:02.0000000', N'14')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'177', N'2001-12-12 03:54:24.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/03/27/1679879708bc8dc52fb8af55938611437973872026.webp', N'2023-05-14 10:15:02.0000000', N'55')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'178', N'2017-04-30 12:28:19.0000000', N'https://img.ltwebstatic.com/images3_pi/2022/08/29/1661765761ea7055f7312b5bf9db0c1ef538db4088.webp', N'2023-05-14 10:15:02.0000000', N'33')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'179', N'2022-05-17 05:51:30.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/02/03/1675411017f75a60c058f9af112ff253dfb8161524.webp', N'2023-05-14 10:15:02.0000000', N'53')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'180', N'2002-03-07 18:56:08.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/03/23/167954316413c3245b0b482cf8fd7302701220ba8f.webp', N'2023-05-14 10:15:02.0000000', N'14')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'181', N'2016-09-22 09:55:22.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/04/11/1681142683e6905a4c53b7bfb8d9cc8af4746cfbd6.webp', N'2023-05-14 10:15:02.0000000', N'71')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'182', N'2007-02-17 14:25:47.0000000', N'https://img.ltwebstatic.com/images3_pi/2021/07/30/162763489934c88f1b5bf54ec0cb30dd68250ddc58.webp', N'2023-05-14 10:15:02.0000000', N'61')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'183', N'2022-09-10 16:52:31.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/04/25/16824170849f1456672aa8f80cf6a2197716c95722.webp', N'2023-05-14 10:15:02.0000000', N'29')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'184', N'2004-05-01 15:48:19.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/04/11/1681185434736718f61a1dad19b8c38a2d7d5ec277.webp', N'2023-05-14 10:15:02.0000000', N'17')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'185', N'2011-06-15 07:41:41.0000000', N'https://img.ltwebstatic.com/images3_pi/2021/12/06/16387569239b237587f11c571329275fa570f97b5d.webp', N'2023-05-14 10:15:02.0000000', N'52')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'186', N'2011-03-30 05:23:39.0000000', N'https://img.ltwebstatic.com/images3_pi/2022/12/17/1671243188b6c5643b76abf33541e81812517c7efa.webp', N'2023-05-14 10:15:02.0000000', N'15')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'187', N'2002-05-15 00:51:11.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/05/02/1683014533717dde8d062bbeaf2664e4e688ad459d.webp', N'2023-05-14 10:15:02.0000000', N'18')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'188', N'2015-10-17 12:48:15.0000000', N'https://img.ltwebstatic.com/images3_pi/2021/07/30/16276349016338528889aa630b43788e225bcb734f.webp', N'2023-05-14 10:15:02.0000000', N'61')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'189', N'2002-02-03 10:24:26.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/02/21/1676944523eaae6964f3330cabbddbad4e3ab7db4c.webp', N'2023-05-14 10:15:02.0000000', N'69')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'190', N'2011-02-27 02:51:46.0000000', N'https://img.ltwebstatic.com/images3_pi/2022/12/17/1671243195b987f54a0e41cb0c75a3ac237218c859.webp', N'2023-05-14 10:15:02.0000000', N'15')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'191', N'2007-06-26 18:04:51.0000000', N'https://img.ltwebstatic.com/images3_pi/2022/10/31/1667194609e4f4640e18100996dd6c1160fa6ed7da.webp', N'2023-05-14 10:15:02.0000000', N'72')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'192', N'2002-01-23 07:06:54.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/03/23/16795431494018a315e9c37240cd197a895061aa2a.webp', N'2023-05-14 10:15:02.0000000', N'14')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'193', N'2004-01-27 21:17:23.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/03/09/167836523674a1257c87ffe4d09c086ee2f7135ffc.webp', N'2023-05-14 10:15:02.0000000', N'13')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'194', N'2004-11-30 02:43:31.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/03/27/1679879704aa28ede5563594a5215fc399cfc2b484.webp', N'2023-05-14 10:15:02.0000000', N'55')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'195', N'2017-05-09 17:10:00.0000000', N'https://img.ltwebstatic.com/images3_pi/2022/10/31/16672111979a3944b57b8050858176c440b79a8430.webp', N'2023-05-14 10:15:02.0000000', N'10')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'196', N'2004-05-12 20:24:09.0000000', N'https://img.ltwebstatic.com/images3_pi/2022/10/14/1665733769d1b19e2a6c017a6ed02d15828fa9f7e9.webp', N'2023-05-14 10:15:02.0000000', N'53')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'197', N'2001-09-11 14:22:06.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/04/11/168120822963c3849e07adbc124168d729b92ab0d3.webp', N'2023-05-14 10:15:02.0000000', N'9')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'198', N'2020-01-03 07:42:17.0000000', N'https://img.ltwebstatic.com/images3_pi/2021/11/10/163651342219b7b2f15134eb867de16d0776c23eef.webp', N'2023-05-14 10:15:02.0000000', N'22')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'199', N'2013-10-25 23:30:12.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/04/11/16811854480a07c98aba1b3f091f26c681b0d3aad0.webp', N'2023-05-14 10:15:02.0000000', N'17')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'200', N'2001-07-31 14:04:53.0000000', N'https://img.ltwebstatic.com/images3_pi/2022/11/26/16694258658985511cecd347ed302719a989284250.webp', N'2023-05-14 10:15:02.0000000', N'34')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'201', N'2013-06-07 11:07:33.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/04/06/16807625663f21fdaef7de24b2e7f112612101cf50.webp', N'2023-05-14 10:15:02.0000000', N'36')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'202', N'2020-11-28 16:24:14.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/03/23/1679543145af668b0619357c7c78696045c85563b9.webp', N'2023-05-14 10:15:02.0000000', N'14')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'203', N'2006-01-01 19:01:19.0000000', N'https://img.ltwebstatic.com/images3_pi/2022/12/17/1671243191cafd7f44bc0b4094943c153e3cd48abf.webp', N'2023-05-14 10:15:02.0000000', N'15')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'204', N'2021-05-25 05:04:59.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/04/24/1682306796005905e3d45be3d96b9870d2b3b06812.webp', N'2023-05-14 10:15:02.0000000', N'67')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'205', N'2000-06-13 16:36:21.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/04/11/1681185440c7f33a534ca0dca45ebd3f45919ea658.webp', N'2023-05-14 10:15:02.0000000', N'17')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'206', N'2005-04-20 20:26:08.0000000', N'https://img.ltwebstatic.com/images3_pi/2022/10/10/1665367382f59d88f394df10ff3d14639ac7108e52_thumbnail_900x.webp', N'2023-05-14 10:15:02.0000000', N'25')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'207', N'2002-03-03 13:00:43.0000000', N'https://img.ltwebstatic.com/images3_pi/2022/10/14/166573377498834be8ee7ce0548fed45047928729e.webp', N'2023-05-14 10:15:02.0000000', N'53')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'208', N'2007-06-13 09:03:22.0000000', N'https://img.ltwebstatic.com/images3_pi/2022/05/07/1651904118947f605f439fdc1aa5bb9d0d41c23fc7.webp', N'2023-05-14 10:15:02.0000000', N'26')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'209', N'2019-07-22 05:11:50.0000000', N'https://img.ltwebstatic.com/images3_pi/2021/12/13/163936195332e2eda12cbed3b1f05a9e8327b7f989.webp', N'2023-05-14 10:15:02.0000000', N'62')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'210', N'2000-11-22 01:46:26.0000000', N'https://img.ltwebstatic.com/images3_pi/2022/11/07/16678201219ef7e1e87cdbd1770980ab7cad32bbe5.webp', N'2023-05-14 10:15:02.0000000', N'31')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'211', N'2015-12-18 15:11:49.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/04/06/1680762562b008431ad04cf611f2c98b1f0d65b8f2.webp', N'2023-05-14 10:15:02.0000000', N'36')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'212', N'2014-05-20 09:44:15.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/02/06/1675695077a53b57c3db618dad2b5d7a9f80bc0d93.webp', N'2023-05-14 10:15:02.0000000', N'65')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'213', N'2004-09-03 11:15:39.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/03/29/16800581813704356c140498353ae9b00e09a99858.webp', N'2023-05-14 10:15:02.0000000', N'38')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'214', N'2022-07-13 16:20:56.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/04/27/1682578591385a568fe4afb4f7213bfcf6d2282088.webp', N'2023-05-14 10:15:02.0000000', N'42')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'215', N'2012-08-12 19:13:14.0000000', N'https://img.ltwebstatic.com/images3_pi/2022/10/08/16652188837a3a9f0c8d8441c7537e6a439defc6b0.webp', N'2023-05-14 10:15:02.0000000', N'39')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'216', N'2011-09-18 05:28:44.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/04/11/16811426875dc94a4059bec7767767d4f2fbcc3e55.webp', N'2023-05-14 10:15:02.0000000', N'71')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'217', N'2003-09-27 05:35:15.0000000', N'https://img.ltwebstatic.com/images3_pi/2023/04/04/1680598569db2bd53b44b261bf866230ae75231fd3.webp', N'2023-05-14 10:15:02.0000000', N'45')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'218', N'2015-12-25 08:44:09.0000000', N'https://img.ltwebstatic.com/images3_pi/2021/06/21/16242608168a95dcb3739daff34cace907e22ecb09.webp', N'2023-05-14 10:15:02.0000000', N'61')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'219', N'2023-05-15 04:58:36.7550000', N'https://res.cloudinary.com/dl0vbutga/image/upload/v1684101524/qzwk2phjkgnrdtx3v9pd.jpg', NULL, N'74')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'220', N'2023-05-15 04:58:36.7550000', N'https://res.cloudinary.com/dl0vbutga/image/upload/v1684101528/gothhhe6h1o8mxfb13o0.png', NULL, N'74')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'221', N'2023-05-15 05:28:58.4420000', N'https://res.cloudinary.com/dl0vbutga/image/upload/v1684103346/id5ogn02qh9kxkg19k0n.jpg', NULL, N'74')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'222', N'2023-05-15 05:28:58.4420000', N'https://res.cloudinary.com/dl0vbutga/image/upload/v1684103350/bgxcjqmypmqozduresbj.png', NULL, N'74')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'223', N'2023-05-15 07:17:55.0060000', N'https://res.cloudinary.com/dl0vbutga/image/upload/v1684109884/vhvbifrglwfvtftb3ify.jpg', NULL, N'75')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'224', N'2023-05-15 07:17:55.0060000', N'https://res.cloudinary.com/dl0vbutga/image/upload/v1684109888/cdf5bgofcmfran9rtfk6.png', NULL, N'75')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'225', N'2023-05-15 08:59:33.3920000', N'https://res.cloudinary.com/dl0vbutga/image/upload/v1684115983/i5fq2cxf4qrnjtssr5i1.jpg', NULL, N'76')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'226', N'2023-05-15 08:59:33.3920000', N'https://res.cloudinary.com/dl0vbutga/image/upload/v1684115994/zsu6kcmfcuvvqighd6xa.png', NULL, N'76')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'227', N'2023-05-15 21:15:04.4360000', NULL, NULL, N'77')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'228', N'2023-05-15 21:15:04.4360000', NULL, NULL, N'77')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'229', N'2023-05-15 21:19:34.6420000', NULL, NULL, N'78')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'230', N'2023-05-15 21:19:34.6420000', N'https://res.cloudinary.com/dl0vbutga/image/upload/v1684160631/exvo0r1pyxl2oox98ypx.jpg', NULL, N'78')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'231', N'2023-05-15 21:19:34.6420000', N'https://res.cloudinary.com/dl0vbutga/image/upload/v1684160745/tcuwgai16idwvao67uyp.jpg', NULL, N'78')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'232', N'2023-05-15 21:15:04.4360000', N'https://res.cloudinary.com/dl0vbutga/image/upload/v1684160745/brmcehi6hg0sre2isgdu.jpg', NULL, N'77')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'233', N'2023-05-15 21:26:12.2300000', N'https://res.cloudinary.com/dl0vbutga/image/upload/v1684160773/aammd8bnmgwn4uigl8nq.jpg', NULL, N'79')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'234', N'2023-05-15 21:26:12.2300000', N'https://res.cloudinary.com/dl0vbutga/image/upload/v1684160776/if4y5mrfbw1dcuaa0tb5.jpg', NULL, N'79')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'235', N'2023-05-15 21:26:12.2300000', N'https://res.cloudinary.com/dl0vbutga/image/upload/v1684160779/gorzq4haiws5zj2rbgpo.jpg', NULL, N'79')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'236', N'2023-05-15 23:48:31.0740000', N'https://res.cloudinary.com/dl0vbutga/image/upload/v1684169313/xg1bn18vpbpacjrwgkri.jpg', NULL, N'76')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'237', N'2023-05-15 23:48:31.0740000', N'https://res.cloudinary.com/dl0vbutga/image/upload/v1684169315/mya0w9vor4pdid936k9s.jpg', NULL, N'76')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'238', N'2023-05-15 23:48:31.0740000', N'https://res.cloudinary.com/dl0vbutga/image/upload/v1684169316/kxrbuvp38mtho1nnqyda.jpg', NULL, N'76')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'239', N'2023-05-15 23:48:31.0740000', N'https://res.cloudinary.com/dl0vbutga/image/upload/v1684169319/tbn4d7ra3arvt14qcch5.jpg', NULL, N'76')
GO

INSERT INTO [dbo].[product_image] ([id], [create_at], [image], [update_at], [product_id]) VALUES (N'240', N'2023-05-15 23:48:31.0740000', N'https://res.cloudinary.com/dl0vbutga/image/upload/v1684169321/tnq6jqxufwbo6crqxp6h.jpg', NULL, N'76')
GO

SET IDENTITY_INSERT [dbo].[product_image] OFF
GO


-- ----------------------------
-- Table structure for product_quantity
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[product_quantity]') AND type IN ('U'))
	DROP TABLE [dbo].[product_quantity]
GO

CREATE TABLE [dbo].[product_quantity] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [create_at] datetime2(7)  NULL,
  [quantity] int  NULL,
  [size] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [update_at] datetime2(7)  NULL,
  [product_id] int  NULL
)
GO

ALTER TABLE [dbo].[product_quantity] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of product_quantity
-- ----------------------------
SET IDENTITY_INSERT [dbo].[product_quantity] ON
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'1', N'2002-01-28 07:51:11.0000000', N'8', N'S', N'2023-05-14 18:00:43.6700000', N'4')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'2', N'2002-01-28 07:51:11.0000000', N'15', N'M', N'2023-05-14 05:34:21.2560000', N'4')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'3', N'2002-01-28 07:51:11.0000000', N'8', N'L', N'2023-05-14 17:13:36.8910000', N'5')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'4', N'2002-01-28 07:51:11.0000000', N'10', N'S', N'2013-10-15 20:13:45.0000000', N'5')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'5', N'2002-01-28 07:51:11.0000000', N'9', N'M', N'2023-05-14 17:45:01.5590000', N'6')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'6', N'2002-01-28 07:51:11.0000000', N'10', N'L', N'2013-10-15 20:13:45.0000000', N'6')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'7', N'2002-01-28 07:51:11.0000000', N'10', N'XL', N'2013-10-15 20:13:45.0000000', N'7')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'8', N'2002-01-28 07:51:11.0000000', N'10', N'S', N'2013-10-15 20:13:45.0000000', N'7')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'9', N'2002-01-28 07:51:11.0000000', N'10', N'L', N'2013-10-15 20:13:45.0000000', N'8')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'10', N'2002-01-28 07:51:11.0000000', N'10', N'M', N'2013-10-15 20:13:45.0000000', N'8')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'11', N'2002-01-28 07:51:11.0000000', N'7', N'S', N'2013-10-15 20:13:45.0000000', N'9')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'12', N'2002-01-28 07:51:11.0000000', N'7', N'M', N'2023-05-15 01:43:41.2950000', N'10')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'13', N'2002-01-28 07:51:11.0000000', N'6', N'XS', N'2013-10-15 20:13:45.0000000', N'11')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'14', N'2002-01-28 07:51:11.0000000', N'10', N'M', N'2013-10-15 20:13:45.0000000', N'12')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'15', N'2002-01-28 07:51:11.0000000', N'8', N'L', N'2013-10-15 20:13:45.0000000', N'13')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'16', N'2002-01-28 07:51:11.0000000', N'7', N'XS', N'2023-05-14 17:13:36.8910000', N'14')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'17', N'2002-01-28 07:51:11.0000000', N'6', N'L', N'2023-05-14 17:13:36.8910000', N'15')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'18', N'2002-01-28 07:51:11.0000000', N'9', N'S', N'2013-10-15 20:13:45.0000000', N'16')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'19', N'2002-01-28 07:51:11.0000000', N'6', N'XXL', N'2013-10-15 20:13:45.0000000', N'17')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'20', N'2002-01-28 07:51:11.0000000', N'10', N'XL', N'2013-10-15 20:13:45.0000000', N'18')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'21', N'2002-01-28 07:51:11.0000000', N'7', N'XL', N'2013-10-15 20:13:45.0000000', N'19')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'22', N'2002-01-28 07:51:11.0000000', N'10', N'XL', N'2013-10-15 20:13:45.0000000', N'20')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'23', N'2002-01-28 07:51:11.0000000', N'7', N'XL', N'2013-10-15 20:13:45.0000000', N'21')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'24', N'2002-01-28 07:51:11.0000000', N'6', N'M', N'2013-10-15 20:13:45.0000000', N'22')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'25', N'2002-01-28 07:51:11.0000000', N'8', N'M', N'2013-10-15 20:13:45.0000000', N'23')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'26', N'2002-01-28 07:51:11.0000000', N'8', N'XL', N'2013-10-15 20:13:45.0000000', N'24')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'27', N'2002-01-28 07:51:11.0000000', N'9', N'S', N'2013-10-15 20:13:45.0000000', N'25')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'28', N'2002-01-28 07:51:11.0000000', N'7', N'XL', N'2013-10-15 20:13:45.0000000', N'26')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'29', N'2002-01-28 07:51:11.0000000', N'6', N'XS', N'2013-10-15 20:13:45.0000000', N'27')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'30', N'2002-01-28 07:51:11.0000000', N'6', N'XXL', N'2013-10-15 20:13:45.0000000', N'28')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'31', N'2002-01-28 07:51:11.0000000', N'8', N'S', N'2023-05-14 17:13:36.8910000', N'29')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'32', N'2002-01-28 07:51:11.0000000', N'9', N'M', N'2013-10-15 20:13:45.0000000', N'30')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'33', N'2002-01-28 07:51:11.0000000', N'6', N'XL', N'2013-10-15 20:13:45.0000000', N'31')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'34', N'2002-01-28 07:51:11.0000000', N'9', N'L', N'2013-10-15 20:13:45.0000000', N'32')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'35', N'2002-01-28 07:51:11.0000000', N'10', N'M', N'2013-10-15 20:13:45.0000000', N'33')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'36', N'2002-01-28 07:51:11.0000000', N'7', N'XL', N'2023-05-14 17:51:14.9460000', N'34')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'37', N'2002-01-28 07:51:11.0000000', N'8', N'S', N'2013-10-15 20:13:45.0000000', N'35')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'38', N'2002-01-28 07:51:11.0000000', N'7', N'XXL', N'2013-10-15 20:13:45.0000000', N'36')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'39', N'2002-01-28 07:51:11.0000000', N'7', N'M', N'2013-10-15 20:13:45.0000000', N'37')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'40', N'2002-01-28 07:51:11.0000000', N'10', N'S', N'2013-10-15 20:13:45.0000000', N'38')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'41', N'2002-01-28 07:51:11.0000000', N'6', N'M', N'2013-10-15 20:13:45.0000000', N'39')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'42', N'2002-01-28 07:51:11.0000000', N'8', N'M', N'2013-10-15 20:13:45.0000000', N'40')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'43', N'2002-01-28 07:51:11.0000000', N'7', N'XXL', N'2013-10-15 20:13:45.0000000', N'41')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'44', N'2002-01-28 07:51:11.0000000', N'9', N'XL', N'2013-10-15 20:13:45.0000000', N'42')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'45', N'2002-01-28 07:51:11.0000000', N'6', N'XXL', N'2013-10-15 20:13:45.0000000', N'43')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'46', N'2002-01-28 07:51:11.0000000', N'5', N'S', N'2023-05-15 23:41:22.0550000', N'44')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'47', N'2002-01-28 07:51:11.0000000', N'6', N'L', N'2023-05-14 17:13:36.8910000', N'45')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'48', N'2002-01-28 07:51:11.0000000', N'8', N'XXL', N'2013-10-15 20:13:45.0000000', N'46')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'49', N'2002-01-28 07:51:11.0000000', N'6', N'L', N'2013-10-15 20:13:45.0000000', N'47')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'50', N'2002-01-28 07:51:11.0000000', N'8', N'S', N'2013-10-15 20:13:45.0000000', N'48')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'51', N'2002-01-28 07:51:11.0000000', N'9', N'XS', N'2013-10-15 20:13:45.0000000', N'49')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'52', N'2002-01-28 07:51:11.0000000', N'9', N'XS', N'2013-10-15 20:13:45.0000000', N'50')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'53', N'2002-01-28 07:51:11.0000000', N'9', N'XS', N'2013-10-15 20:13:45.0000000', N'51')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'54', N'2002-01-28 07:51:11.0000000', N'5', N'XXL', N'2013-10-15 20:13:45.0000000', N'52')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'55', N'2002-01-28 07:51:11.0000000', N'6', N'XXL', N'2013-10-15 20:13:45.0000000', N'53')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'56', N'2002-01-28 07:51:11.0000000', N'9', N'XXL', N'2023-05-15 23:42:59.8700000', N'54')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'57', N'2002-01-28 07:51:11.0000000', N'5', N'XS', N'2023-05-14 05:18:15.5180000', N'55')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'58', N'2002-01-28 07:51:11.0000000', N'6', N'XL', N'2023-05-14 05:19:14.7000000', N'56')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'59', N'2002-01-28 07:51:11.0000000', N'6', N'XXL', N'2013-10-15 20:13:45.0000000', N'57')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'60', N'2002-01-28 07:51:11.0000000', N'8', N'XS', N'2023-05-15 01:43:22.3990000', N'58')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'61', N'2002-01-28 07:51:11.0000000', N'5', N'L', N'2023-05-14 17:13:36.8910000', N'59')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'62', N'2002-01-28 07:51:11.0000000', N'5', N'XS', N'2023-05-14 05:13:56.9300000', N'60')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'63', N'2002-01-28 07:51:11.0000000', N'8', N'XL', N'2013-10-15 20:13:45.0000000', N'61')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'64', N'2002-01-28 07:51:11.0000000', N'6', N'XS', N'2013-10-15 20:13:45.0000000', N'62')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'65', N'2002-01-28 07:51:11.0000000', N'6', N'XS', N'2013-10-15 20:13:45.0000000', N'63')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'66', N'2002-01-28 07:51:11.0000000', N'9', N'L', N'2023-05-15 23:37:31.9430000', N'64')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'67', N'2002-01-28 07:51:11.0000000', N'11', N'M', N'2013-10-15 20:13:45.0000000', N'65')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'68', N'2002-01-28 07:51:11.0000000', N'6', N'S', N'2013-10-15 20:13:45.0000000', N'66')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'69', N'2002-01-28 07:51:11.0000000', N'6', N'S', N'2013-10-15 20:13:45.0000000', N'67')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'70', N'2002-01-28 07:51:11.0000000', N'10', N'L', N'2013-10-15 20:13:45.0000000', N'68')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'71', N'2002-01-28 07:51:11.0000000', N'6', N'S', N'2013-10-15 20:13:45.0000000', N'69')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'72', N'2002-01-28 07:51:11.0000000', N'9', N'XS', N'2023-05-14 05:23:08.9900000', N'70')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'73', N'2002-01-28 07:51:11.0000000', N'9', N'XL', N'2013-10-15 20:13:45.0000000', N'71')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'74', N'2002-01-28 07:51:11.0000000', N'6', N'XL', N'2013-10-15 20:13:45.0000000', N'72')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'75', N'2002-01-28 07:51:11.0000000', N'8', N'S', N'2023-05-14 07:28:50.2920000', N'73')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'76', N'2023-05-15 04:58:36.7550000', N'100', N'S', NULL, N'74')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'77', N'2023-05-15 04:58:36.7550000', N'101', N'M', NULL, N'74')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'78', N'2023-05-15 04:58:36.7550000', N'102', N'L', NULL, N'74')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'79', N'2023-05-15 05:28:58.4420000', N'100', N'S', NULL, N'74')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'80', N'2023-05-15 05:28:58.4420000', N'101', N'M', NULL, N'74')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'81', N'2023-05-15 05:28:58.4420000', N'102', N'L', NULL, N'74')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'82', N'2023-05-15 07:17:55.0060000', N'100', N'S', NULL, N'75')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'83', N'2023-05-15 07:17:55.0060000', N'101', N'M', NULL, N'75')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'84', N'2023-05-15 07:17:55.0060000', N'102', N'L', NULL, N'75')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'85', N'2023-05-15 08:59:33.3920000', N'100', N'S', NULL, N'76')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'86', N'2023-05-15 08:59:33.3920000', N'101', N'M', NULL, N'76')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'87', N'2023-05-15 08:59:33.3920000', N'102', N'L', NULL, N'76')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'88', N'2023-05-15 21:15:04.4360000', N'10', N'S', NULL, N'77')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'89', N'2023-05-15 21:15:04.4360000', N'11', N'M', NULL, N'77')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'90', N'2023-05-15 21:19:34.6420000', N'11', N'S', NULL, N'78')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'91', N'2023-05-15 21:19:34.6420000', N'12', N'M', NULL, N'78')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'92', N'2023-05-15 21:19:34.6420000', N'13', N'L', NULL, N'78')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'93', N'2023-05-15 21:26:12.2300000', N'11', N'S', NULL, N'79')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'94', N'2023-05-15 21:26:12.2300000', N'12', N'M', NULL, N'79')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'95', N'2023-05-15 21:26:12.2300000', N'13', N'L', NULL, N'79')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'96', N'2023-05-15 21:26:12.2300000', N'11', N'S', NULL, N'79')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'97', N'2023-05-15 21:26:12.2300000', N'12', N'M', NULL, N'79')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'98', N'2023-05-15 21:26:12.2300000', N'13', N'L', NULL, N'79')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'99', N'2023-05-15 21:26:12.2300000', N'11', N'S', NULL, N'79')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'100', N'2023-05-15 21:26:12.2300000', N'12', N'M', NULL, N'79')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'101', N'2023-05-15 21:26:12.2300000', N'13', N'L', NULL, N'79')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'102', N'2023-05-15 23:48:31.0740000', N'100', N'S', NULL, N'76')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'103', N'2023-05-15 23:48:31.0740000', N'101', N'M', NULL, N'76')
GO

INSERT INTO [dbo].[product_quantity] ([id], [create_at], [quantity], [size], [update_at], [product_id]) VALUES (N'104', N'2023-05-15 23:48:31.0740000', N'102', N'L', NULL, N'76')
GO

SET IDENTITY_INSERT [dbo].[product_quantity] OFF
GO


-- ----------------------------
-- Table structure for review
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[review]') AND type IN ('U'))
	DROP TABLE [dbo].[review]
GO

CREATE TABLE [dbo].[review] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [content] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_at] datetime2(7)  NULL,
  [rating] float(53)  NOT NULL,
  [update_at] datetime2(7)  NULL,
  [order_id] int  NULL,
  [product_id] int  NULL,
  [user_id] int  NULL
)
GO

ALTER TABLE [dbo].[review] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of review
-- ----------------------------
SET IDENTITY_INSERT [dbo].[review] ON
GO

INSERT INTO [dbo].[review] ([id], [content], [create_at], [rating], [update_at], [order_id], [product_id], [user_id]) VALUES (N'1', N'Sản phẩm tốt, đúng size, màu sáng', N'2023-05-09 07:13:32.3000000', N'5', N'2023-05-09 14:24:55.0000000', N'1', NULL, N'1')
GO

INSERT INTO [dbo].[review] ([id], [content], [create_at], [rating], [update_at], [order_id], [product_id], [user_id]) VALUES (N'4', N'Sản phẩm rất tệ, không đúng như mô tả', N'2023-05-09 07:27:19.7460000', N'1', N'2023-05-09 14:24:55.0000000', N'2', NULL, N'2')
GO

INSERT INTO [dbo].[review] ([id], [content], [create_at], [rating], [update_at], [order_id], [product_id], [user_id]) VALUES (N'6', N'The edit is not the same', N'2023-05-13 21:10:49.4540000', N'3', N'2023-05-09 14:24:55.0000000', N'6', NULL, N'1')
GO

INSERT INTO [dbo].[review] ([id], [content], [create_at], [rating], [update_at], [order_id], [product_id], [user_id]) VALUES (N'7', N'oke', N'2023-05-14 17:29:47.4530000', N'4', NULL, N'16', NULL, N'5')
GO

INSERT INTO [dbo].[review] ([id], [content], [create_at], [rating], [update_at], [order_id], [product_id], [user_id]) VALUES (N'9', N'123', N'2023-05-14 17:40:50.3360000', N'2', NULL, N'17', NULL, N'5')
GO

INSERT INTO [dbo].[review] ([id], [content], [create_at], [rating], [update_at], [order_id], [product_id], [user_id]) VALUES (N'10', N'abcgdfdf', N'2023-05-14 17:45:40.2990000', N'2', NULL, N'18', NULL, N'5')
GO

INSERT INTO [dbo].[review] ([id], [content], [create_at], [rating], [update_at], [order_id], [product_id], [user_id]) VALUES (N'11', N'ok', N'2023-05-14 17:47:58.8650000', N'4', NULL, N'6', NULL, N'1')
GO

INSERT INTO [dbo].[review] ([id], [content], [create_at], [rating], [update_at], [order_id], [product_id], [user_id]) VALUES (N'12', N'ok', N'2023-05-14 17:48:18.8160000', N'4', NULL, N'8', NULL, N'1')
GO

INSERT INTO [dbo].[review] ([id], [content], [create_at], [rating], [update_at], [order_id], [product_id], [user_id]) VALUES (N'13', N'abc', N'2023-05-14 17:52:36.9610000', N'3', NULL, N'19', NULL, N'5')
GO

INSERT INTO [dbo].[review] ([id], [content], [create_at], [rating], [update_at], [order_id], [product_id], [user_id]) VALUES (N'14', N'oke sai cudau', N'2023-05-14 17:58:00.8590000', N'4', NULL, N'20', NULL, N'5')
GO

INSERT INTO [dbo].[review] ([id], [content], [create_at], [rating], [update_at], [order_id], [product_id], [user_id]) VALUES (N'15', N'Trung binh', N'2023-05-15 01:49:28.9790000', N'3', NULL, N'23', NULL, N'12')
GO

SET IDENTITY_INSERT [dbo].[review] OFF
GO


-- ----------------------------
-- Table structure for review_image
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[review_image]') AND type IN ('U'))
	DROP TABLE [dbo].[review_image]
GO

CREATE TABLE [dbo].[review_image] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [create_at] datetime2(7)  NULL,
  [image] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [update_at] datetime2(7)  NULL,
  [review_id] int  NULL
)
GO

ALTER TABLE [dbo].[review_image] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of review_image
-- ----------------------------
SET IDENTITY_INSERT [dbo].[review_image] ON
GO

INSERT INTO [dbo].[review_image] ([id], [create_at], [image], [update_at], [review_id]) VALUES (N'1', N'2023-05-09 07:13:32.3000000', N'https://res.cloudinary.com/dl0vbutga/image/upload/v1683616414/q1retdkcj4hgsffcns6b.jpg', N'2023-05-14 10:17:34.0000000', N'1')
GO

INSERT INTO [dbo].[review_image] ([id], [create_at], [image], [update_at], [review_id]) VALUES (N'4', N'2023-05-09 07:27:19.7460000', N'https://res.cloudinary.com/dl0vbutga/image/upload/v1683617240/adaqblpxbxmyqqqy8uab.jpg', N'2023-05-14 10:17:34.0000000', N'4')
GO

INSERT INTO [dbo].[review_image] ([id], [create_at], [image], [update_at], [review_id]) VALUES (N'5', N'2023-05-09 22:49:29.0000000', N'https://img.freepik.com/free-photo/aerial-shot-long-road-surrounded-by-trees-greens_181624-49253.jpg', N'2023-05-14 10:17:34.0000000', N'1')
GO

INSERT INTO [dbo].[review_image] ([id], [create_at], [image], [update_at], [review_id]) VALUES (N'7', N'2023-05-09 22:50:48.0000000', N'https://img.freepik.com/free-photo/closeup-shot-ferns-spots-fern-are-spores_181624-36493.jpg', N'2023-05-14 10:17:34.0000000', N'1')
GO

INSERT INTO [dbo].[review_image] ([id], [create_at], [image], [update_at], [review_id]) VALUES (N'8', N'2023-05-09 22:51:21.0000000', N'https://img.freepik.com/free-photo/view-mountain-covered-with-snow-seen-from-tunnel_181624-28300.jpg', N'2023-05-14 10:17:34.0000000', N'4')
GO

INSERT INTO [dbo].[review_image] ([id], [create_at], [image], [update_at], [review_id]) VALUES (N'9', N'2023-05-10 00:44:14.0000000', N'https://img.freepik.com/free-photo/digital-painting-mountain-with-colorful-tree-foreground_1340-25699.jpg', N'2023-05-14 10:17:34.0000000', N'1')
GO

INSERT INTO [dbo].[review_image] ([id], [create_at], [image], [update_at], [review_id]) VALUES (N'10', N'2023-05-10 00:44:43.0000000', N'https://img.freepik.com/free-photo/aerial-shot-colorful-autumn-forest_181624-41105.jpg', N'2023-05-14 10:17:34.0000000', N'1')
GO

INSERT INTO [dbo].[review_image] ([id], [create_at], [image], [update_at], [review_id]) VALUES (N'11', N'2023-05-13 21:10:49.4540000', N'https://res.cloudinary.com/dl0vbutga/image/upload/v1684012251/h4d3l5hq37rsu9tpf2bw.jpg', N'2023-05-14 10:17:34.0000000', N'6')
GO

INSERT INTO [dbo].[review_image] ([id], [create_at], [image], [update_at], [review_id]) VALUES (N'12', N'2023-05-13 21:10:49.4540000', N'https://res.cloudinary.com/dl0vbutga/image/upload/v1684012252/kbzuqwksjg5brmbk3ave.jpg', N'2023-05-14 10:17:34.0000000', N'6')
GO

INSERT INTO [dbo].[review_image] ([id], [create_at], [image], [update_at], [review_id]) VALUES (N'13', N'2023-05-13 21:10:49.4540000', N'https://res.cloudinary.com/dl0vbutga/image/upload/v1684012253/glfmoq24xukjnuyiilrj.jpg', N'2023-05-14 10:17:34.0000000', N'6')
GO

INSERT INTO [dbo].[review_image] ([id], [create_at], [image], [update_at], [review_id]) VALUES (N'14', N'2023-05-13 21:10:49.4540000', N'https://res.cloudinary.com/dl0vbutga/image/upload/v1684012254/pv4szv2yyhdetcgxiv8i.jpg', N'2023-05-14 10:17:34.0000000', N'6')
GO

INSERT INTO [dbo].[review_image] ([id], [create_at], [image], [update_at], [review_id]) VALUES (N'15', N'2023-05-13 21:10:49.4540000', N'https://res.cloudinary.com/dl0vbutga/image/upload/v1684012255/ploiltbr5mxr84dnn6gb.jpg', N'2023-05-14 10:17:34.0000000', N'6')
GO

INSERT INTO [dbo].[review_image] ([id], [create_at], [image], [update_at], [review_id]) VALUES (N'16', N'2023-05-14 17:29:47.4530000', N'https://res.cloudinary.com/dl0vbutga/image/upload/v1684085389/eu5eu4vqz65jofpcht08.jpg', NULL, N'7')
GO

INSERT INTO [dbo].[review_image] ([id], [create_at], [image], [update_at], [review_id]) VALUES (N'17', N'2023-05-14 17:29:47.4530000', N'https://res.cloudinary.com/dl0vbutga/image/upload/v1684085390/bifwb5m1rgnitqqwqbka.jpg', NULL, N'7')
GO

INSERT INTO [dbo].[review_image] ([id], [create_at], [image], [update_at], [review_id]) VALUES (N'18', N'2023-05-14 17:29:47.4530000', N'https://res.cloudinary.com/dl0vbutga/image/upload/v1684085391/zqyj8i6nbbiaqdzewi6z.jpg', NULL, N'7')
GO

INSERT INTO [dbo].[review_image] ([id], [create_at], [image], [update_at], [review_id]) VALUES (N'19', N'2023-05-14 17:29:47.4530000', N'https://res.cloudinary.com/dl0vbutga/image/upload/v1684085392/bqacjwbe7zforwtycszs.jpg', NULL, N'7')
GO

INSERT INTO [dbo].[review_image] ([id], [create_at], [image], [update_at], [review_id]) VALUES (N'20', N'2023-05-14 17:29:47.4530000', N'https://res.cloudinary.com/dl0vbutga/image/upload/v1684085393/dbavtadxeiyn53dhn1nt.jpg', NULL, N'7')
GO

INSERT INTO [dbo].[review_image] ([id], [create_at], [image], [update_at], [review_id]) VALUES (N'21', N'2023-05-14 17:29:47.4530000', N'https://res.cloudinary.com/dl0vbutga/image/upload/v1684085394/csl0rjlkgghzobnzipxg.jpg', NULL, N'7')
GO

INSERT INTO [dbo].[review_image] ([id], [create_at], [image], [update_at], [review_id]) VALUES (N'24', N'2023-05-14 17:40:50.3360000', N'https://res.cloudinary.com/dl0vbutga/image/upload/v1684086051/o5gdjl0qq7sbxoych3ki.jpg', NULL, N'9')
GO

INSERT INTO [dbo].[review_image] ([id], [create_at], [image], [update_at], [review_id]) VALUES (N'25', N'2023-05-14 17:40:50.3360000', N'https://res.cloudinary.com/dl0vbutga/image/upload/v1684086052/okpmo3x4sltur4iw9rb7.jpg', NULL, N'9')
GO

INSERT INTO [dbo].[review_image] ([id], [create_at], [image], [update_at], [review_id]) VALUES (N'26', N'2023-05-14 17:45:40.2990000', N'https://res.cloudinary.com/dl0vbutga/image/upload/v1684086341/cswlmdn01mgool8v0vef.jpg', NULL, N'10')
GO

INSERT INTO [dbo].[review_image] ([id], [create_at], [image], [update_at], [review_id]) VALUES (N'27', N'2023-05-14 17:48:18.8160000', N'https://res.cloudinary.com/dl0vbutga/image/upload/v1684086499/zrsbkondxhmzo0tknre6.png', NULL, N'12')
GO

INSERT INTO [dbo].[review_image] ([id], [create_at], [image], [update_at], [review_id]) VALUES (N'28', N'2023-05-14 17:52:36.9610000', N'https://res.cloudinary.com/dl0vbutga/image/upload/v1684086757/bszk7glsseed141cy7hf.jpg', NULL, N'13')
GO

INSERT INTO [dbo].[review_image] ([id], [create_at], [image], [update_at], [review_id]) VALUES (N'29', N'2023-05-14 17:58:00.8590000', N'https://res.cloudinary.com/dl0vbutga/image/upload/v1684087081/hixkse59h8jpoincq4vh.jpg', NULL, N'14')
GO

INSERT INTO [dbo].[review_image] ([id], [create_at], [image], [update_at], [review_id]) VALUES (N'30', N'2023-05-15 01:49:28.9790000', N'https://res.cloudinary.com/dl0vbutga/image/upload/v1684115369/jjfhjqzcmcst67prbzsj.jpg', NULL, N'15')
GO

INSERT INTO [dbo].[review_image] ([id], [create_at], [image], [update_at], [review_id]) VALUES (N'31', N'2023-05-15 01:49:28.9790000', N'https://res.cloudinary.com/dl0vbutga/image/upload/v1684115370/qojfl1ebz1dfdcjee0kl.jpg', NULL, N'15')
GO

INSERT INTO [dbo].[review_image] ([id], [create_at], [image], [update_at], [review_id]) VALUES (N'32', N'2023-05-15 01:49:28.9790000', N'https://res.cloudinary.com/dl0vbutga/image/upload/v1684115371/hb5xmmwytggucg7e9sdw.jpg', NULL, N'15')
GO

SET IDENTITY_INSERT [dbo].[review_image] OFF
GO


-- ----------------------------
-- Table structure for store
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[store]') AND type IN ('U'))
	DROP TABLE [dbo].[store]
GO

CREATE TABLE [dbo].[store] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [address] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_at] datetime2(7)  NULL,
  [e_wallet] int  NULL,
  [email] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [feature_image] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [name] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [phone] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [rating] float(53)  NOT NULL,
  [store_image] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [update_at] datetime2(7)  NULL,
  [user_id] int  NULL
)
GO

ALTER TABLE [dbo].[store] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of store
-- ----------------------------
SET IDENTITY_INSERT [dbo].[store] ON
GO

INSERT INTO [dbo].[store] ([id], [address], [create_at], [e_wallet], [email], [feature_image], [name], [phone], [rating], [store_image], [update_at], [user_id]) VALUES (N'1', N'631 Middle Huaihai Road, Huangpu District', N'2009-05-30 00:45:49.0000000', N'129', N'uedaakina@hotmail.com', N'https://wiki.matbao.net/wp-content/uploads/2019/08/Featured-Image-la-gi-1-featured-images-giup-thuong-hieu-de-dang-duoc-nhan-dien.jpg', N'Airi Pharmaceutical Corporation', N'21-021-6957', N'2.34652337080037', N'https://img.icons8.com/ios/100/null/online-shop.png', N'2016-06-25 06:12:07.0000000', N'3')
GO

INSERT INTO [dbo].[store] ([id], [address], [create_at], [e_wallet], [email], [feature_image], [name], [phone], [rating], [store_image], [update_at], [user_id]) VALUES (N'2', N'5-2-4 Higashi Gotanda, Shinagawa-ku ', N'2019-03-15 20:44:44.0000000', N'47', N'san13@icloud.com', N'https://wiki.matbao.net/wp-content/uploads/2019/08/Featured-Image-la-gi-4-ban-co-the-lay-anh-dau-tien-bai-viet-lam-featured-image-trong-wordpress-voi-nhung-thao-tac-don-gian-1.jpg', N'Thompson Inc.', N'3-6080-0033', N'2.46428886405595', N'https://img.icons8.com/ios/100/null/shop--v1.png', N'2012-12-03 00:11:20.0000000', N'4')
GO

INSERT INTO [dbo].[store] ([id], [address], [create_at], [e_wallet], [email], [feature_image], [name], [phone], [rating], [store_image], [update_at], [user_id]) VALUES (N'3', NULL, N'2023-05-14 10:36:34.8440000', N'0', N'store5@gmail.com', NULL, N'Test Store 5', N'0123456789', N'0', N'https://res.cloudinary.com/dl0vbutga/image/upload/v1684060596/kwmlmys8axkugfbtt0tr.png', NULL, N'5')
GO

SET IDENTITY_INSERT [dbo].[store] OFF
GO


-- ----------------------------
-- Table structure for style
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[style]') AND type IN ('U'))
	DROP TABLE [dbo].[style]
GO

CREATE TABLE [dbo].[style] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [create_at] datetime2(7)  NULL,
  [is_selling] bit  NULL,
  [name] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [style_image] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [update_at] datetime2(7)  NULL,
  [category_id] int  NULL
)
GO

ALTER TABLE [dbo].[style] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of style
-- ----------------------------
SET IDENTITY_INSERT [dbo].[style] ON
GO

INSERT INTO [dbo].[style] ([id], [create_at], [is_selling], [name], [style_image], [update_at], [category_id]) VALUES (N'4', N'2023-05-08 17:25:46.3030000', N'1', N'Áo Khoác', N'https://res.cloudinary.com/dl0vbutga/image/upload/v1683541547/xwhhlx5ar0bezgmbwahd.webp', N'2023-05-14 10:18:13.0000000', N'3')
GO

INSERT INTO [dbo].[style] ([id], [create_at], [is_selling], [name], [style_image], [update_at], [category_id]) VALUES (N'5', N'2023-05-11 00:30:00.7910000', N'1', N'Áo len', N'https://res.cloudinary.com/dl0vbutga/image/upload/v1683739812/fltbmvyj6xdmu0qtmicp.webp', N'2023-05-14 10:18:13.0000000', N'3')
GO

INSERT INTO [dbo].[style] ([id], [create_at], [is_selling], [name], [style_image], [update_at], [category_id]) VALUES (N'6', N'2023-05-11 00:31:27.2740000', N'1', N'Áo nỉ', N'https://res.cloudinary.com/dl0vbutga/image/upload/v1683739898/vxs6uuq53otaaa83bijj.webp', N'2023-05-14 10:18:13.0000000', N'3')
GO

INSERT INTO [dbo].[style] ([id], [create_at], [is_selling], [name], [style_image], [update_at], [category_id]) VALUES (N'7', N'2023-05-11 00:35:45.9430000', N'1', N'Áo sơ mi', N'https://res.cloudinary.com/dl0vbutga/image/upload/v1683740155/omwh4lxigfer9tpjtoor.jpg', N'2023-05-14 10:18:13.0000000', N'3')
GO

INSERT INTO [dbo].[style] ([id], [create_at], [is_selling], [name], [style_image], [update_at], [category_id]) VALUES (N'8', N'2023-05-11 00:38:36.3840000', N'1', N'Áo thun', N'https://res.cloudinary.com/dl0vbutga/image/upload/v1683740322/vkuly1aeepgzhyvhafxr.webp', N'2023-05-14 10:18:13.0000000', N'3')
GO

INSERT INTO [dbo].[style] ([id], [create_at], [is_selling], [name], [style_image], [update_at], [category_id]) VALUES (N'9', N'2023-05-11 00:40:35.1270000', N'1', N'Áo vest', N'https://res.cloudinary.com/dl0vbutga/image/upload/v1683740441/o6f69dpopemxvmtk7fn6.webp', N'2023-05-14 10:18:13.0000000', N'3')
GO

INSERT INTO [dbo].[style] ([id], [create_at], [is_selling], [name], [style_image], [update_at], [category_id]) VALUES (N'10', N'2023-05-11 00:43:55.0000000', N'1', N'Quần đùi', N'https://img.ltwebstatic.com/images3_pi/2020/02/13/15815858792febe1fa2fa1d071682e923ad2d6d2af.webp', N'2023-05-14 10:18:13.0000000', N'4')
GO

INSERT INTO [dbo].[style] ([id], [create_at], [is_selling], [name], [style_image], [update_at], [category_id]) VALUES (N'11', N'2023-05-11 00:45:19.0000000', N'1', N'Quần jean', N'https://img.ltwebstatic.com/images3_pi/2022/12/18/16713637435c7dcea4f8aaf4e849c5689406e3b8cd.webp', N'2023-05-14 10:18:13.0000000', N'4')
GO

INSERT INTO [dbo].[style] ([id], [create_at], [is_selling], [name], [style_image], [update_at], [category_id]) VALUES (N'12', N'2023-05-11 00:50:07.0000000', N'1', N'Quần leggin', N'https://img.ltwebstatic.com/images3_pi/2022/03/08/1646742119228ef0d0cfe45113d878b931e7c200ff.webp', N'2023-05-14 10:18:13.0000000', N'4')
GO

INSERT INTO [dbo].[style] ([id], [create_at], [is_selling], [name], [style_image], [update_at], [category_id]) VALUES (N'13', N'2023-05-11 00:50:41.0000000', N'1', N'Váy', N'https://img.ltwebstatic.com/images3_pi/2022/09/16/1663315444d32ff9078d43a7c82c063825b9253137.webp', N'2023-05-14 10:18:13.0000000', N'4')
GO

INSERT INTO [dbo].[style] ([id], [create_at], [is_selling], [name], [style_image], [update_at], [category_id]) VALUES (N'14', N'2023-05-11 00:52:02.0000000', N'1', N'Đầm', N'https://img.ltwebstatic.com/images2_pi/2019/03/28/15537523641228584088.webp', N'2023-05-14 10:18:13.0000000', N'4')
GO

INSERT INTO [dbo].[style] ([id], [create_at], [is_selling], [name], [style_image], [update_at], [category_id]) VALUES (N'15', N'2023-05-11 00:55:21.0000000', N'1', N'Áo che', N'https://img.ltwebstatic.com/images3_pi/2023/04/21/16820458087cff980a5beee4bdc25a3078fb84417e.webp', N'2023-05-14 10:18:13.0000000', N'5')
GO

INSERT INTO [dbo].[style] ([id], [create_at], [is_selling], [name], [style_image], [update_at], [category_id]) VALUES (N'16', N'2023-05-11 00:57:04.0000000', N'1', N'Bikini ba lỗ', N'https://img.ltwebstatic.com/images2_pi/2019/06/24/15613635591592416515.webp', N'2023-05-14 10:18:13.0000000', N'5')
GO

INSERT INTO [dbo].[style] ([id], [create_at], [is_selling], [name], [style_image], [update_at], [category_id]) VALUES (N'17', N'2023-05-11 00:58:16.0000000', N'1', N'Đồ bơi high cut', N'https://img.ltwebstatic.com/images3_pi/2022/08/29/16617657599ca9eab5f1cb662d355048b589180115.webp', N'2023-05-14 10:18:13.0000000', N'5')
GO

INSERT INTO [dbo].[style] ([id], [create_at], [is_selling], [name], [style_image], [update_at], [category_id]) VALUES (N'18', N'2023-05-11 00:59:06.0000000', N'1', N'Đồ bơi tam giác', N'https://img.ltwebstatic.com/images3_pi/2023/04/18/1681789177d6128dbeb8628f7439ee7a150ce3487a.webp', N'2023-05-14 10:18:13.0000000', N'5')
GO

INSERT INTO [dbo].[style] ([id], [create_at], [is_selling], [name], [style_image], [update_at], [category_id]) VALUES (N'19', N'2023-05-11 00:59:40.0000000', N'1', N'Đồ bơi một mảnh', N'https://img.ltwebstatic.com/images3_pi/2023/03/27/167991253067013a085a3b27b1cfd3cae614e8b98d.webp', N'2023-05-14 10:18:13.0000000', N'5')
GO

INSERT INTO [dbo].[style] ([id], [create_at], [is_selling], [name], [style_image], [update_at], [category_id]) VALUES (N'20', N'2023-05-11 01:00:51.0000000', N'1', N'Giày boot', N'https://img.ltwebstatic.com/images3_pi/2023/04/26/1682476137fe70d080c83f80f2c8c2ff45d13215c5.webp', N'2023-05-14 10:18:13.0000000', N'6')
GO

INSERT INTO [dbo].[style] ([id], [create_at], [is_selling], [name], [style_image], [update_at], [category_id]) VALUES (N'21', N'2023-05-11 01:02:04.0000000', N'1', N'Giày cao gót', N'https://img.ltwebstatic.com/images3_pi/2022/02/28/16460380139cea1cd6299054bb9e80acd9bd6f0bb4.webp', N'2023-05-14 10:18:13.0000000', N'6')
GO

INSERT INTO [dbo].[style] ([id], [create_at], [is_selling], [name], [style_image], [update_at], [category_id]) VALUES (N'22', N'2023-05-11 01:04:19.0000000', N'1', N'Giày đế bằng', N'https://img.ltwebstatic.com/images3_pi/2023/04/25/168241608047a2fa3e1d7c3558914310fecd75d8e1.webp', N'2023-05-14 10:18:13.0000000', N'6')
GO

INSERT INTO [dbo].[style] ([id], [create_at], [is_selling], [name], [style_image], [update_at], [category_id]) VALUES (N'23', N'2023-05-11 01:05:09.0000000', N'1', N'Dép', N'https://img.ltwebstatic.com/images3_pi/2023/03/21/167936855876e82bb84ec6c2fbc31be221521e1d5b.webp', N'2023-05-14 10:18:13.0000000', N'6')
GO

INSERT INTO [dbo].[style] ([id], [create_at], [is_selling], [name], [style_image], [update_at], [category_id]) VALUES (N'24', N'2023-05-11 01:07:00.0000000', N'1', N'Giày trẻ em', N'https://img.ltwebstatic.com/images3_pi/2023/04/14/1681473507b4387ac6291523711f23f14ef78f1ba4.webp', N'2023-05-14 10:18:13.0000000', N'6')
GO

INSERT INTO [dbo].[style] ([id], [create_at], [is_selling], [name], [style_image], [update_at], [category_id]) VALUES (N'25', N'2023-05-11 01:07:40.0000000', N'1', N'Giày thể thao', N'https://img.ltwebstatic.com/images3_pi/2023/02/20/167688111103e8dc8e049ba0106b9c8882aecac53d.webp', N'2023-05-14 10:18:13.0000000', N'6')
GO

INSERT INTO [dbo].[style] ([id], [create_at], [is_selling], [name], [style_image], [update_at], [category_id]) VALUES (N'26', N'2023-05-11 01:08:29.0000000', N'1', N'Dây buộc tóc', N'https://img.ltwebstatic.com/images3_pi/2023/02/06/16756484209fc9928a4b67a64b4ac593aafa1b3749.webp', N'2023-05-14 10:18:13.0000000', N'7')
GO

INSERT INTO [dbo].[style] ([id], [create_at], [is_selling], [name], [style_image], [update_at], [category_id]) VALUES (N'27', N'2023-05-11 01:08:29.0000000', N'1', N'Kẹp tóc', N'https://img.ltwebstatic.com/images3_pi/2022/09/16/166329608824f1c5d6ee9bbf7c9bdb67541499abba.webp', N'2023-05-14 10:18:13.0000000', N'7')
GO

INSERT INTO [dbo].[style] ([id], [create_at], [is_selling], [name], [style_image], [update_at], [category_id]) VALUES (N'28', N'2023-05-11 01:08:29.0000000', N'1', N'Kính mắt', N'https://img.ltwebstatic.com/images3_pi/2023/02/13/16762676225fc8e11c0edb2b90aa1872cdd3785cb8.webp', N'2023-05-14 10:18:13.0000000', N'7')
GO

INSERT INTO [dbo].[style] ([id], [create_at], [is_selling], [name], [style_image], [update_at], [category_id]) VALUES (N'29', N'2023-05-11 01:08:29.0000000', N'1', N'Mũ', N'https://img.ltwebstatic.com/images3_pi/2022/04/02/16488827705d9c59cd365ebc08086688f2b560005d.webp', N'2023-05-14 10:18:13.0000000', N'7')
GO

INSERT INTO [dbo].[style] ([id], [create_at], [is_selling], [name], [style_image], [update_at], [category_id]) VALUES (N'30', N'2023-05-11 01:08:29.0000000', N'1', N'Găng tay', N'https://img.ltwebstatic.com/images3_pi/2022/12/26/1672037164180db942b7955b69ddc4e8257ddca232.webp', N'2023-05-14 10:18:13.0000000', N'7')
GO

INSERT INTO [dbo].[style] ([id], [create_at], [is_selling], [name], [style_image], [update_at], [category_id]) VALUES (N'31', N'2023-05-11 01:08:29.0000000', N'1', N'Thắt lưng', N'https://img.ltwebstatic.com/images3_pi/2021/12/13/1639361960010dbfccc9dd6954db08ba62968310fe.webp', N'2023-05-14 10:18:13.0000000', N'7')
GO

INSERT INTO [dbo].[style] ([id], [create_at], [is_selling], [name], [style_image], [update_at], [category_id]) VALUES (N'32', N'2023-05-11 01:08:29.0000000', N'1', N'Balo', N'https://img.ltwebstatic.com/images3_pi/2023/03/24/1679638002b1134e77679957c4340d17bf75af2fae_thumbnail_900x.webp', N'2023-05-14 10:18:13.0000000', N'8')
GO

INSERT INTO [dbo].[style] ([id], [create_at], [is_selling], [name], [style_image], [update_at], [category_id]) VALUES (N'33', N'2023-05-11 01:08:29.0000000', N'1', N'Baguette', N'https://img.ltwebstatic.com/images3_pi/2022/11/18/166878104841d75e5a720a838630b7e47f5879d198.webp', N'2023-05-14 10:18:13.0000000', N'8')
GO

INSERT INTO [dbo].[style] ([id], [create_at], [is_selling], [name], [style_image], [update_at], [category_id]) VALUES (N'34', N'2023-05-11 01:08:29.0000000', N'1', N'Quilted', N'https://img.ltwebstatic.com/images3_pi/2023/04/27/1682603605deba30e0698c4f3d271f3fe6ca683089.webp', N'2023-05-14 10:18:13.0000000', N'8')
GO

INSERT INTO [dbo].[style] ([id], [create_at], [is_selling], [name], [style_image], [update_at], [category_id]) VALUES (N'35', N'2023-05-11 01:08:29.0000000', N'1', N'Tote', N'https://img.ltwebstatic.com/images3_pi/2022/09/05/166236052972da2a7dbafa3713e6b1174df7c237a4.webp', N'2023-05-14 10:18:13.0000000', N'8')
GO

INSERT INTO [dbo].[style] ([id], [create_at], [is_selling], [name], [style_image], [update_at], [category_id]) VALUES (N'36', N'2023-05-11 01:08:29.0000000', N'1', N'Lunch bag', N'https://img.ltwebstatic.com/images3_spmp/2023/05/02/16829815795e80276835fd115be3c1382d3faee8cd.jpg', N'2023-05-14 10:18:13.0000000', N'8')
GO

INSERT INTO [dbo].[style] ([id], [create_at], [is_selling], [name], [style_image], [update_at], [category_id]) VALUES (N'37', N'2023-05-11 01:08:29.0000000', N'1', N'Ví', N'https://img.ltwebstatic.com/images3_pi/2022/02/07/1644225553dd0cbb5682baa2babd7c532b82015d01.webp', N'2023-05-14 10:18:13.0000000', N'8')
GO

SET IDENTITY_INSERT [dbo].[style] OFF
GO


-- ----------------------------
-- Table structure for user
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[user]') AND type IN ('U'))
	DROP TABLE [dbo].[user]
GO

CREATE TABLE [dbo].[user] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [create_at] datetime2(7)  NULL,
  [e_wallet] int  NULL,
  [email] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [first_name] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [last_login] datetime2(7)  NULL,
  [last_name] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [password] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [phone] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [profile_image] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [role] bit  NULL,
  [update_at] datetime2(7)  NULL
)
GO

ALTER TABLE [dbo].[user] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of user
-- ----------------------------
SET IDENTITY_INSERT [dbo].[user] ON
GO

INSERT INTO [dbo].[user] ([id], [create_at], [e_wallet], [email], [first_name], [last_login], [last_name], [password], [phone], [profile_image], [role], [update_at]) VALUES (N'1', N'2003-11-11 19:26:09.0000000', N'730', N'user1@gmail.com', N'Lu', N'2023-05-15 01:53:23.0300000', N'Zhao', N'123', N'0123456787', N'https://res.cloudinary.com/dl0vbutga/image/upload/v1683967615/ydmqlgsufsywimpif1jo.jpg', N'0', N'2023-05-13 09:08:40.9940000')
GO

INSERT INTO [dbo].[user] ([id], [create_at], [e_wallet], [email], [first_name], [last_login], [last_name], [password], [phone], [profile_image], [role], [update_at]) VALUES (N'2', N'2013-10-31 20:44:58.0000000', N'365', N'user2@gmail.com', N'Jiehong', N'2008-10-16 01:26:48.0000000', N'Mo', N'123', N'21-7642-9054', N'https://img.icons8.com/nolan/100/person-female.png', N'0', N'2003-08-28 07:19:40.0000000')
GO

INSERT INTO [dbo].[user] ([id], [create_at], [e_wallet], [email], [first_name], [last_login], [last_name], [password], [phone], [profile_image], [role], [update_at]) VALUES (N'3', N'2005-05-08 18:13:12.0000000', N'872', N'seller1@gmail.com', N'Shihan', N'2023-05-15 23:46:03.1490000', N'Cao', N'123', N'10-416-1854', N'https://img.icons8.com/nolan/64/name.png', N'1', N'2017-12-07 05:44:04.0000000')
GO

INSERT INTO [dbo].[user] ([id], [create_at], [e_wallet], [email], [first_name], [last_login], [last_name], [password], [phone], [profile_image], [role], [update_at]) VALUES (N'4', N'2023-05-07 01:35:36.0000000', N'133', N'seller2@gmail.com', N'Luu', N'2023-05-15 01:45:05.8780000', N'Bi', N'123', N'18-415-1876', N'https://img.icons8.com/dusk/64/null/user-male-circle--v1.png', N'1', N'2023-05-07 01:36:18.0000000')
GO

INSERT INTO [dbo].[user] ([id], [create_at], [e_wallet], [email], [first_name], [last_login], [last_name], [password], [phone], [profile_image], [role], [update_at]) VALUES (N'5', N'2023-05-12 13:06:41.9900000', N'99253869', N'trvankiet02@gmail.com', N'Trần Văn', N'2023-05-14 20:37:15.0800000', N'Kiệt', N'12082002kT@', N'2023-05-14 10:19:53', N'https://res.cloudinary.com/dl0vbutga/image/upload/v1684087766/c1kjp5wfkynghdkb4nuk.jpg', N'1', N'2023-05-14 18:09:25.5420000')
GO

INSERT INTO [dbo].[user] ([id], [create_at], [e_wallet], [email], [first_name], [last_login], [last_name], [password], [phone], [profile_image], [role], [update_at]) VALUES (N'6', N'2023-05-12 06:07:53.8800000', N'0', N'user3@gmail.com', N'Trần Văn', N'2023-05-14 10:19:53.0000000', N'Kiệt', N'123456', N'2023-05-14 10:19:53', N'https://img.icons8.com/dusk/64/null/user-male-circle--v1.png', N'0', N'2023-05-14 10:20:26.0000000')
GO

INSERT INTO [dbo].[user] ([id], [create_at], [e_wallet], [email], [first_name], [last_login], [last_name], [password], [phone], [profile_image], [role], [update_at]) VALUES (N'7', N'2023-05-12 06:10:49.0120000', N'0', N'user4@gmail.com', N'Trần Văn', N'2023-05-14 10:19:53.0000000', N'Kiệt', N'123456', N'2023-05-14 10:19:53', N'https://img.icons8.com/dusk/64/null/user-male-circle--v1.png', N'0', N'2023-05-14 10:20:26.0000000')
GO

INSERT INTO [dbo].[user] ([id], [create_at], [e_wallet], [email], [first_name], [last_login], [last_name], [password], [phone], [profile_image], [role], [update_at]) VALUES (N'8', N'2023-05-12 09:54:51.4390000', N'0', N'user5@gmail.com', N'Trần Văn', N'2023-05-14 14:06:50.8160000', N'Kiệt', N'123456', N'2023-05-14 10:19:53', N'https://img.icons8.com/dusk/64/null/user-male-circle--v1.png', N'0', N'2023-05-14 10:20:26.0000000')
GO

INSERT INTO [dbo].[user] ([id], [create_at], [e_wallet], [email], [first_name], [last_login], [last_name], [password], [phone], [profile_image], [role], [update_at]) VALUES (N'9', N'2023-05-12 09:56:07.3570000', N'0', N'user6@gmail.com', N'Trần Văn', N'2023-05-14 10:19:53.0000000', N'Kiệt', N'123456', N'2023-05-14 10:19:53', N'https://img.icons8.com/dusk/64/null/user-male-circle--v1.png', N'0', N'2023-05-14 10:20:26.0000000')
GO

INSERT INTO [dbo].[user] ([id], [create_at], [e_wallet], [email], [first_name], [last_login], [last_name], [password], [phone], [profile_image], [role], [update_at]) VALUES (N'10', N'2023-05-12 10:00:12.5430000', N'0', N'user7@gmail.com', N'Trần Văn', N'2023-05-14 19:17:50.1430000', N'Kiệt', N'123456', N'2023-05-14 10:19:53', N'https://img.icons8.com/dusk/64/null/user-male-circle--v1.png', N'0', N'2023-05-14 10:20:26.0000000')
GO

INSERT INTO [dbo].[user] ([id], [create_at], [e_wallet], [email], [first_name], [last_login], [last_name], [password], [phone], [profile_image], [role], [update_at]) VALUES (N'11', N'2023-05-15 01:22:36.1280000', N'0', N'nguyencongthanh280702@gmail.com', N'Thanh', N'2023-05-15 01:26:30.1510000', N'Nguyen', N'12345678', NULL, N'https://res.cloudinary.com/dl0vbutga/image/upload/v1684114198/bospmtbhcxbckcywc5xu.jpg', N'0', N'2023-05-15 01:29:57.6570000')
GO

INSERT INTO [dbo].[user] ([id], [create_at], [e_wallet], [email], [first_name], [last_login], [last_name], [password], [phone], [profile_image], [role], [update_at]) VALUES (N'12', N'2023-05-15 01:37:07.9860000', N'0', N'user12@gmail.com', N'Nguyen', N'2023-05-15 01:37:17.2690000', N'Thien', N'123456', NULL, N'https://res.cloudinary.com/dl0vbutga/image/upload/v1684114695/pypchftpmi9nxglvwfyy.jpg', N'0', N'2023-05-15 01:38:14.2100000')
GO

INSERT INTO [dbo].[user] ([id], [create_at], [e_wallet], [email], [first_name], [last_login], [last_name], [password], [phone], [profile_image], [role], [update_at]) VALUES (N'13', N'2023-05-15 22:30:26.3930000', N'0', N'sss@gmail.com', NULL, N'2023-05-15 23:25:15.1250000', NULL, N'123455', NULL, NULL, N'0', NULL)
GO

SET IDENTITY_INSERT [dbo].[user] OFF
GO


-- ----------------------------
-- Table structure for user_follow_product
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[user_follow_product]') AND type IN ('U'))
	DROP TABLE [dbo].[user_follow_product]
GO

CREATE TABLE [dbo].[user_follow_product] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [create_at] datetime2(7)  NULL,
  [update_at] datetime2(7)  NULL,
  [product_id] int  NULL,
  [user_id] int  NULL
)
GO

ALTER TABLE [dbo].[user_follow_product] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of user_follow_product
-- ----------------------------
SET IDENTITY_INSERT [dbo].[user_follow_product] ON
GO

INSERT INTO [dbo].[user_follow_product] ([id], [create_at], [update_at], [product_id], [user_id]) VALUES (N'8', N'2023-05-12 07:09:17.9970000', N'2023-05-14 10:20:26.0000000', N'24', N'1')
GO

INSERT INTO [dbo].[user_follow_product] ([id], [create_at], [update_at], [product_id], [user_id]) VALUES (N'9', N'2023-05-12 07:24:03.3160000', N'2023-05-14 10:20:26.0000000', N'55', N'1')
GO

INSERT INTO [dbo].[user_follow_product] ([id], [create_at], [update_at], [product_id], [user_id]) VALUES (N'10', N'2023-05-12 07:24:07.6260000', N'2023-05-14 10:20:26.0000000', N'54', N'1')
GO

INSERT INTO [dbo].[user_follow_product] ([id], [create_at], [update_at], [product_id], [user_id]) VALUES (N'11', N'2023-05-12 07:26:06.2920000', N'2023-05-14 10:20:26.0000000', N'44', N'1')
GO

INSERT INTO [dbo].[user_follow_product] ([id], [create_at], [update_at], [product_id], [user_id]) VALUES (N'12', N'2023-05-12 07:26:10.4580000', N'2023-05-14 10:20:26.0000000', N'45', N'1')
GO

INSERT INTO [dbo].[user_follow_product] ([id], [create_at], [update_at], [product_id], [user_id]) VALUES (N'13', N'2023-05-12 07:26:15.1030000', N'2023-05-14 10:20:26.0000000', N'46', N'1')
GO

INSERT INTO [dbo].[user_follow_product] ([id], [create_at], [update_at], [product_id], [user_id]) VALUES (N'14', N'2023-05-12 07:26:18.9510000', N'2023-05-14 10:20:26.0000000', N'47', N'1')
GO

INSERT INTO [dbo].[user_follow_product] ([id], [create_at], [update_at], [product_id], [user_id]) VALUES (N'15', N'2023-05-12 09:39:38.2780000', N'2023-05-14 10:20:26.0000000', N'25', N'1')
GO

INSERT INTO [dbo].[user_follow_product] ([id], [create_at], [update_at], [product_id], [user_id]) VALUES (N'16', N'2023-05-13 15:13:56.0880000', N'2023-05-14 10:20:26.0000000', N'54', N'9')
GO

INSERT INTO [dbo].[user_follow_product] ([id], [create_at], [update_at], [product_id], [user_id]) VALUES (N'17', N'2023-05-13 16:19:01.9530000', N'2023-05-14 10:20:26.0000000', N'40', N'1')
GO

INSERT INTO [dbo].[user_follow_product] ([id], [create_at], [update_at], [product_id], [user_id]) VALUES (N'18', N'2023-05-14 20:53:17.7860000', NULL, N'54', N'5')
GO

INSERT INTO [dbo].[user_follow_product] ([id], [create_at], [update_at], [product_id], [user_id]) VALUES (N'19', N'2023-05-14 20:53:28.1000000', NULL, N'55', N'5')
GO

INSERT INTO [dbo].[user_follow_product] ([id], [create_at], [update_at], [product_id], [user_id]) VALUES (N'20', N'2023-05-14 20:53:33.2280000', NULL, N'56', N'5')
GO

INSERT INTO [dbo].[user_follow_product] ([id], [create_at], [update_at], [product_id], [user_id]) VALUES (N'21', N'2023-05-15 01:51:01.7580000', NULL, N'58', N'4')
GO

SET IDENTITY_INSERT [dbo].[user_follow_product] OFF
GO


-- ----------------------------
-- Table structure for user_follow_store
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[user_follow_store]') AND type IN ('U'))
	DROP TABLE [dbo].[user_follow_store]
GO

CREATE TABLE [dbo].[user_follow_store] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [create_at] datetime2(7)  NULL,
  [update_at] datetime2(7)  NULL,
  [store_id] int  NULL,
  [user_id] int  NULL
)
GO

ALTER TABLE [dbo].[user_follow_store] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of user_follow_store
-- ----------------------------
SET IDENTITY_INSERT [dbo].[user_follow_store] ON
GO

INSERT INTO [dbo].[user_follow_store] ([id], [create_at], [update_at], [store_id], [user_id]) VALUES (N'1', N'2023-05-11 13:41:58.0000000', N'2023-05-14 10:22:06.0000000', N'1', N'1')
GO

INSERT INTO [dbo].[user_follow_store] ([id], [create_at], [update_at], [store_id], [user_id]) VALUES (N'2', N'2023-05-11 13:42:08.0000000', N'2023-05-14 10:22:06.0000000', N'1', N'2')
GO

INSERT INTO [dbo].[user_follow_store] ([id], [create_at], [update_at], [store_id], [user_id]) VALUES (N'5', N'2023-05-15 01:39:04.3930000', NULL, N'1', N'12')
GO

SET IDENTITY_INSERT [dbo].[user_follow_store] OFF
GO


-- ----------------------------
-- Table structure for voucher
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[voucher]') AND type IN ('U'))
	DROP TABLE [dbo].[voucher]
GO

CREATE TABLE [dbo].[voucher] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [code] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_at] datetime2(7)  NULL,
  [description] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [discount] float(53)  NOT NULL,
  [expire_at] datetime2(7)  NULL,
  [max_discount] int  NULL,
  [name] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [status] bit  NULL,
  [update_at] datetime2(7)  NULL,
  [quantity] int  NULL
)
GO

ALTER TABLE [dbo].[voucher] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of voucher
-- ----------------------------
SET IDENTITY_INSERT [dbo].[voucher] ON
GO

INSERT INTO [dbo].[voucher] ([id], [code], [create_at], [description], [discount], [expire_at], [max_discount], [name], [status], [update_at], [quantity]) VALUES (N'1', N'byF1WYHn2k', N'2008-12-06 20:23:48.0000000', N'Giảm 39%', N'0.389999985694885', N'2023-05-16 11:28:08.0000000', N'1448', N'Phiếu giảm giá', N'1', N'2003-11-12 07:21:53.0000000', N'-3')
GO

INSERT INTO [dbo].[voucher] ([id], [code], [create_at], [description], [discount], [expire_at], [max_discount], [name], [status], [update_at], [quantity]) VALUES (N'2', N'Ay0BU7dNVi', N'2008-03-18 02:36:26.0000000', N'Giảm 17%', N'0.17', N'2023-05-16 11:28:08.0000000', N'1168', N'Phiếu giảm giá', N'0', N'2014-12-04 08:09:00.0000000', N'5')
GO

INSERT INTO [dbo].[voucher] ([id], [code], [create_at], [description], [discount], [expire_at], [max_discount], [name], [status], [update_at], [quantity]) VALUES (N'3', N'piznD96VNo', N'2006-05-15 09:12:18.0000000', N'Giảm 70%', N'0.7', N'2023-05-16 11:28:08.0000000', N'1679', N'Phiếu giảm giá', N'0', N'2021-08-02 02:35:27.0000000', N'5')
GO

INSERT INTO [dbo].[voucher] ([id], [code], [create_at], [description], [discount], [expire_at], [max_discount], [name], [status], [update_at], [quantity]) VALUES (N'4', N'UDxPqOt1qV', N'2010-10-28 00:31:56.0000000', N'Giảm 69%', N'0.689999997615814', N'2023-05-16 11:28:08.0000000', N'1869', N'Phiếu giảm giá', N'1', N'2006-07-03 08:07:23.0000000', N'0')
GO

INSERT INTO [dbo].[voucher] ([id], [code], [create_at], [description], [discount], [expire_at], [max_discount], [name], [status], [update_at], [quantity]) VALUES (N'5', N'XDiwoHJIy0', N'2002-06-09 22:59:10.0000000', N'Giảm 97%', N'0.970000028610229', N'2023-05-16 11:28:08.0000000', N'1191', N'Phiếu giảm giá', N'1', N'2023-04-25 08:03:24.0000000', N'2')
GO

INSERT INTO [dbo].[voucher] ([id], [code], [create_at], [description], [discount], [expire_at], [max_discount], [name], [status], [update_at], [quantity]) VALUES (N'6', N'TW9PQw7vGv', N'2007-09-21 08:12:18.0000000', N'Giảm 45%', N'0.45', N'2023-05-08 12:55:17.0000000', N'1381', N'Phiếu giảm giá', N'1', N'2019-04-04 12:16:56.0000000', N'5')
GO

INSERT INTO [dbo].[voucher] ([id], [code], [create_at], [description], [discount], [expire_at], [max_discount], [name], [status], [update_at], [quantity]) VALUES (N'7', N'NhWUe7RkYY', N'2018-02-19 20:01:12.0000000', N'Giảm 93%', N'0.93', N'2023-05-08 23:44:46.0000000', N'1381', N'Phiếu giảm giá', N'0', N'2021-11-25 02:15:19.0000000', N'5')
GO

INSERT INTO [dbo].[voucher] ([id], [code], [create_at], [description], [discount], [expire_at], [max_discount], [name], [status], [update_at], [quantity]) VALUES (N'8', N'4QsDsbFAmN', N'2004-03-30 00:15:28.0000000', N'Giảm 32%', N'0.32', N'2023-05-08 13:41:50.0000000', N'1009', N'Phiếu giảm giá', N'0', N'2016-12-22 22:59:28.0000000', N'5')
GO

INSERT INTO [dbo].[voucher] ([id], [code], [create_at], [description], [discount], [expire_at], [max_discount], [name], [status], [update_at], [quantity]) VALUES (N'9', N'SzBQMXaD9K', N'2004-06-30 17:25:27.0000000', N'Giảm 77%', N'0.77', N'2023-05-08 06:46:00.0000000', N'1491', N'Phiếu giảm giá', N'0', N'2016-12-26 10:46:36.0000000', N'5')
GO

INSERT INTO [dbo].[voucher] ([id], [code], [create_at], [description], [discount], [expire_at], [max_discount], [name], [status], [update_at], [quantity]) VALUES (N'10', N'aQ3cQAHpTk', N'2016-03-02 20:33:47.0000000', N'Giảm 11%', N'0.11', N'2023-05-08 17:21:11.0000000', N'1922', N'Phiếu giảm giá', N'1', N'2009-04-21 17:33:31.0000000', N'5')
GO

SET IDENTITY_INSERT [dbo].[voucher] OFF
GO


-- ----------------------------
-- Auto increment value for address
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[address]', RESEED, 22)
GO


-- ----------------------------
-- Primary Key structure for table address
-- ----------------------------
ALTER TABLE [dbo].[address] ADD CONSTRAINT [PK__address__3213E83FCAD52FD1] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for cart
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[cart]', RESEED, 11)
GO


-- ----------------------------
-- Primary Key structure for table cart
-- ----------------------------
ALTER TABLE [dbo].[cart] ADD CONSTRAINT [PK__cart__3213E83F5C950D68] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for cart_item
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[cart_item]', RESEED, 71)
GO


-- ----------------------------
-- Primary Key structure for table cart_item
-- ----------------------------
ALTER TABLE [dbo].[cart_item] ADD CONSTRAINT [PK__cart_ite__3213E83F545AB7E4] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for category
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[category]', RESEED, 8)
GO


-- ----------------------------
-- Primary Key structure for table category
-- ----------------------------
ALTER TABLE [dbo].[category] ADD CONSTRAINT [PK__category__3213E83F2B2205BE] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for delivery
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[delivery]', RESEED, 5)
GO


-- ----------------------------
-- Primary Key structure for table delivery
-- ----------------------------
ALTER TABLE [dbo].[delivery] ADD CONSTRAINT [PK__delivery__3213E83F938821EF] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for order
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[order]', RESEED, 26)
GO


-- ----------------------------
-- Primary Key structure for table order
-- ----------------------------
ALTER TABLE [dbo].[order] ADD CONSTRAINT [PK__order__3213E83F4A7FC77F] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for order_item
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[order_item]', RESEED, 34)
GO


-- ----------------------------
-- Primary Key structure for table order_item
-- ----------------------------
ALTER TABLE [dbo].[order_item] ADD CONSTRAINT [PK__order_it__3213E83F2294D3A2] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for product
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[product]', RESEED, 79)
GO


-- ----------------------------
-- Primary Key structure for table product
-- ----------------------------
ALTER TABLE [dbo].[product] ADD CONSTRAINT [PK__product__3213E83FA3788067] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for product_image
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[product_image]', RESEED, 240)
GO


-- ----------------------------
-- Primary Key structure for table product_image
-- ----------------------------
ALTER TABLE [dbo].[product_image] ADD CONSTRAINT [PK__product___3213E83FF72D68D4] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for product_quantity
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[product_quantity]', RESEED, 104)
GO


-- ----------------------------
-- Primary Key structure for table product_quantity
-- ----------------------------
ALTER TABLE [dbo].[product_quantity] ADD CONSTRAINT [PK__product___3213E83FDAA79FEB] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for review
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[review]', RESEED, 15)
GO


-- ----------------------------
-- Primary Key structure for table review
-- ----------------------------
ALTER TABLE [dbo].[review] ADD CONSTRAINT [PK__review__3213E83FE2481328] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for review_image
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[review_image]', RESEED, 32)
GO


-- ----------------------------
-- Primary Key structure for table review_image
-- ----------------------------
ALTER TABLE [dbo].[review_image] ADD CONSTRAINT [PK__review_i__3213E83F10EC252B] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for store
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[store]', RESEED, 3)
GO


-- ----------------------------
-- Primary Key structure for table store
-- ----------------------------
ALTER TABLE [dbo].[store] ADD CONSTRAINT [PK__store__3213E83FFCF161D5] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for style
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[style]', RESEED, 37)
GO


-- ----------------------------
-- Primary Key structure for table style
-- ----------------------------
ALTER TABLE [dbo].[style] ADD CONSTRAINT [PK__style__3213E83F30C3DA74] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for user
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[user]', RESEED, 13)
GO


-- ----------------------------
-- Primary Key structure for table user
-- ----------------------------
ALTER TABLE [dbo].[user] ADD CONSTRAINT [PK__user__3213E83FBD66213F] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for user_follow_product
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[user_follow_product]', RESEED, 21)
GO


-- ----------------------------
-- Primary Key structure for table user_follow_product
-- ----------------------------
ALTER TABLE [dbo].[user_follow_product] ADD CONSTRAINT [PK__user_fol__3213E83FD3FB5580] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for user_follow_store
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[user_follow_store]', RESEED, 5)
GO


-- ----------------------------
-- Primary Key structure for table user_follow_store
-- ----------------------------
ALTER TABLE [dbo].[user_follow_store] ADD CONSTRAINT [PK__user_fol__3213E83F2BA2BFB4] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for voucher
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[voucher]', RESEED, 10)
GO


-- ----------------------------
-- Primary Key structure for table voucher
-- ----------------------------
ALTER TABLE [dbo].[voucher] ADD CONSTRAINT [PK__voucher__3213E83FD82B9B9D] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Foreign Keys structure for table address
-- ----------------------------
ALTER TABLE [dbo].[address] ADD CONSTRAINT [FKlqh9sj5o1ina3muo082ctm566] FOREIGN KEY ([user_id]) REFERENCES [dbo].[user] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table cart
-- ----------------------------
ALTER TABLE [dbo].[cart] ADD CONSTRAINT [FKsu6r9a4w71hspfmm2a6u73ffq] FOREIGN KEY ([store_id]) REFERENCES [dbo].[store] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[cart] ADD CONSTRAINT [FKkfqd0e1s37tdmoa6yg5au4puf] FOREIGN KEY ([user_id]) REFERENCES [dbo].[user] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table cart_item
-- ----------------------------
ALTER TABLE [dbo].[cart_item] ADD CONSTRAINT [FKd0kgpqj5w9tbf4isayegg0iru] FOREIGN KEY ([cart_id]) REFERENCES [dbo].[cart] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[cart_item] ADD CONSTRAINT [FK8p0ifos5t4jtwge28ccaxxwp3] FOREIGN KEY ([product_id]) REFERENCES [dbo].[product] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table order
-- ----------------------------
ALTER TABLE [dbo].[order] ADD CONSTRAINT [FK5w1sqqvcl7usp5x401koogx94] FOREIGN KEY ([delivery_id]) REFERENCES [dbo].[delivery] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[order] ADD CONSTRAINT [FKescdbbikp40p7m63w90crkhuj] FOREIGN KEY ([store_id]) REFERENCES [dbo].[store] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[order] ADD CONSTRAINT [FKrcaf946w0bh6qj0ljiw3pwpnu] FOREIGN KEY ([user_id]) REFERENCES [dbo].[user] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[order] ADD CONSTRAINT [FK4i44djw8yae8oj68oub52vi2x] FOREIGN KEY ([voucher_id]) REFERENCES [dbo].[voucher] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table order_item
-- ----------------------------
ALTER TABLE [dbo].[order_item] ADD CONSTRAINT [FKq4jlwm9fninhqfskh9nuoput8] FOREIGN KEY ([cart_item_id]) REFERENCES [dbo].[cart_item] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[order_item] ADD CONSTRAINT [FK7pv97udw3cbgddveqn6eoosng] FOREIGN KEY ([order_id]) REFERENCES [dbo].[order] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[order_item] ADD CONSTRAINT [FKpy90m3qj86nxkfxtvjhc3vq14] FOREIGN KEY ([product_id]) REFERENCES [dbo].[product] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table product
-- ----------------------------
ALTER TABLE [dbo].[product] ADD CONSTRAINT [FKqys3wf25o4da9h0vqcpnnjfmt] FOREIGN KEY ([category_id]) REFERENCES [dbo].[category] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[product] ADD CONSTRAINT [FKtd9s82vrdjjc50puhcllh6xly] FOREIGN KEY ([store_id]) REFERENCES [dbo].[store] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[product] ADD CONSTRAINT [FKpl6k1h6a2hy26hxeg0ussuask] FOREIGN KEY ([style_id]) REFERENCES [dbo].[style] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table product_image
-- ----------------------------
ALTER TABLE [dbo].[product_image] ADD CONSTRAINT [FKk2kphx5t0ycprf6xmumin88xe] FOREIGN KEY ([product_id]) REFERENCES [dbo].[product] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table product_quantity
-- ----------------------------
ALTER TABLE [dbo].[product_quantity] ADD CONSTRAINT [FKnwq0n4w9g73mw00lprlwqn0xk] FOREIGN KEY ([product_id]) REFERENCES [dbo].[product] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table review
-- ----------------------------
ALTER TABLE [dbo].[review] ADD CONSTRAINT [FKa1u4e2j73n4ugi73180fp697k] FOREIGN KEY ([order_id]) REFERENCES [dbo].[order] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[review] ADD CONSTRAINT [FK8x25iltcokacjswskpkppdepw] FOREIGN KEY ([product_id]) REFERENCES [dbo].[product] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[review] ADD CONSTRAINT [FKhruntmasmfx37yvoo35v910qt] FOREIGN KEY ([user_id]) REFERENCES [dbo].[user] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table review_image
-- ----------------------------
ALTER TABLE [dbo].[review_image] ADD CONSTRAINT [FKisy6ooagmyxepo9iowjdf8llj] FOREIGN KEY ([review_id]) REFERENCES [dbo].[review] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table store
-- ----------------------------
ALTER TABLE [dbo].[store] ADD CONSTRAINT [FKr0q7uae25bb1f2jvrnl2qagvp] FOREIGN KEY ([user_id]) REFERENCES [dbo].[user] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table style
-- ----------------------------
ALTER TABLE [dbo].[style] ADD CONSTRAINT [FKpa4o3q2nhpy5lema2h2bgf47v] FOREIGN KEY ([category_id]) REFERENCES [dbo].[category] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table user_follow_product
-- ----------------------------
ALTER TABLE [dbo].[user_follow_product] ADD CONSTRAINT [FKcxo0uhn0i6n3t9wk26f2o0ysw] FOREIGN KEY ([product_id]) REFERENCES [dbo].[product] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[user_follow_product] ADD CONSTRAINT [FKjq7rg0judcpy86cnvc5p5ogyr] FOREIGN KEY ([user_id]) REFERENCES [dbo].[user] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[user_follow_product] ADD CONSTRAINT [FKl256moxtu2w80dx5f20ynrjyl] FOREIGN KEY ([id]) REFERENCES [dbo].[user_follow_product] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table user_follow_store
-- ----------------------------
ALTER TABLE [dbo].[user_follow_store] ADD CONSTRAINT [FK6f8aul0h4v8l1mqby1vk5kvcn] FOREIGN KEY ([store_id]) REFERENCES [dbo].[store] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[user_follow_store] ADD CONSTRAINT [FKf59sg9ih0ulbdxhw87b2i81my] FOREIGN KEY ([user_id]) REFERENCES [dbo].[user] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

