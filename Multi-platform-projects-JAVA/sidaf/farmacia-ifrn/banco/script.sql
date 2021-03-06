USE [SIDAF]
GO
/****** Object:  Table [dbo].[Especificacao]    Script Date: 03/15/2010 01:09:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Especificacao](
	[IDEspecificacao] [int] IDENTITY(1,1) NOT NULL,
	[descricao] [varchar](max) NOT NULL,
	[foto] [varchar](150) NULL,
 CONSTRAINT [PK_Especificacao] PRIMARY KEY CLUSTERED 
(
	[IDEspecificacao] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  UserDefinedFunction [dbo].[CriptografaSenha]    Script Date: 03/15/2010 01:09:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[CriptografaSenha]
	(
		@Senha VARCHAR(1000)
	)
RETURNS VARBINARY(4000)
AS
	BEGIN
	
		-- CRIANDO A CHAVE PARA CRIPTOGRAFAR
		   DECLARE @ChaveCriptografia VARCHAR(1000) = 'CHAVE'
		
		-- CRIPTOGRAFANDO A SENHA
		   DECLARE @Criptografada VARBINARY(5000) = ENCRYPTBYPASSPHRASE(@ChaveCriptografia, @Senha)
		
		-- RETORNA A SENHA CRIPTOGRAFADA
		   RETURN @Criptografada
		
	END
GO
/****** Object:  Table [dbo].[Licitacao]    Script Date: 03/15/2010 01:09:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Licitacao](
	[IDLicitacao] [int] IDENTITY(1,1) NOT NULL,
	[numero] [int] NOT NULL,
 CONSTRAINT [PK_Licitacao] PRIMARY KEY CLUSTERED 
(
	[IDLicitacao] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pedido]    Script Date: 03/15/2010 01:09:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pedido](
	[IDPedido] [int] IDENTITY(1,1) NOT NULL,
	[IDEmpresa] [int] NOT NULL,
	[dataCadastro] [datetime2](7) NOT NULL,
 CONSTRAINT [PK__Pedido__00C11F990F975522] PRIMARY KEY CLUSTERED 
(
	[IDPedido] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pais]    Script Date: 03/15/2010 01:09:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Pais](
	[IDPais] [smallint] IDENTITY(1,1) NOT NULL,
	[Sigla] [char](2) NOT NULL,
	[Pais] [varchar](50) NOT NULL,
 CONSTRAINT [PK_pais] PRIMARY KEY CLUSTERED 
(
	[IDPais] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Pais] ON
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (241, N'AF', N'Afghanistan')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (242, N'AL', N'Albania')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (243, N'DZ', N'Algeria')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (244, N'AS', N'American Samoa')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (245, N'AD', N'Andorra')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (246, N'AO', N'Angola')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (247, N'AI', N'Anguilla')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (248, N'AQ', N'Antarctica')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (249, N'AG', N'Antigua and Barbuda')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (250, N'AR', N'Argentina')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (251, N'AM', N'Armenia')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (252, N'AW', N'Aruba')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (253, N'AU', N'Australia')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (254, N'AT', N'Austria')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (255, N'AZ', N'Azerbaijan')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (256, N'BS', N'Bahamas')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (257, N'BH', N'Bahrain')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (258, N'BD', N'Bangladesh')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (259, N'BB', N'Barbados')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (260, N'BY', N'Belarus')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (261, N'BE', N'Belgium')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (262, N'BZ', N'Belize')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (263, N'BJ', N'Benin')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (264, N'BM', N'Bermuda')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (265, N'BT', N'Bhutan')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (266, N'BO', N'Bolivia')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (267, N'BA', N'Bosnia and Herzegovina')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (268, N'BW', N'Botswana')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (269, N'BV', N'Bouvet Island')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (270, N'BR', N'Brasil')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (271, N'IO', N'British Indian Ocean Territory')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (272, N'BN', N'Brunei Darussalam')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (273, N'BG', N'Bulgaria')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (274, N'BF', N'Burkina Faso')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (275, N'BI', N'Burundi')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (276, N'KH', N'Cambodia')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (277, N'CM', N'Cameroon')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (278, N'CA', N'Canada')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (279, N'CV', N'Cape Verde')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (280, N'KY', N'Cayman Islands')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (281, N'CF', N'Central African Republic')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (282, N'TD', N'Chad')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (283, N'CL', N'Chile')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (284, N'CN', N'China')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (285, N'CX', N'Christmas Island')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (286, N'CC', N'Cocos (Keeling) Islands')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (287, N'CO', N'Colombia')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (288, N'KM', N'Comoros')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (289, N'CG', N'Congo')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (290, N'CK', N'Cook Islands')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (291, N'CR', N'Costa Rica')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (292, N'CI', N'Cote D''Ivoire (Ivory Coast)')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (293, N'HR', N'Croatia (Hrvatska)')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (294, N'CU', N'Cuba')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (295, N'CY', N'Cyprus')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (296, N'CZ', N'Czech Republic')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (297, N'DK', N'Denmark')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (298, N'DJ', N'Djibouti')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (299, N'DM', N'Dominica')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (300, N'DO', N'Dominican Republic')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (301, N'TP', N'East Timor')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (302, N'EC', N'Ecuador')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (303, N'EG', N'Egypt')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (304, N'SV', N'El Salvador')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (305, N'GQ', N'Equatorial Guinea')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (306, N'ER', N'Eritrea')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (307, N'EE', N'Estonia')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (308, N'ET', N'Ethiopia')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (309, N'FK', N'Falkland Islands (Malvinas)')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (310, N'FO', N'Faroe Islands')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (311, N'FJ', N'Fiji')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (312, N'FI', N'Finland')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (313, N'FR', N'France')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (314, N'GF', N'French Guiana')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (315, N'PF', N'French Polynesia')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (316, N'TF', N'French Southern Territories')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (317, N'GA', N'Gabon')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (318, N'GM', N'Gambia')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (319, N'GE', N'Georgia')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (320, N'DE', N'Germany')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (321, N'GH', N'Ghana')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (322, N'GI', N'Gibraltar')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (323, N'GR', N'Greece')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (324, N'GL', N'Greenland')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (325, N'GD', N'Grenada')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (326, N'GP', N'Guadeloupe')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (327, N'GU', N'Guam')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (328, N'GT', N'Guatemala')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (329, N'GN', N'Guinea')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (330, N'GW', N'Guinea-Bissau')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (331, N'GY', N'Guyana')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (332, N'HT', N'Haiti')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (333, N'HM', N'Heard and McDonald Islands')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (334, N'HN', N'Honduras')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (335, N'HK', N'Hong Kong')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (336, N'HU', N'Hungary')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (337, N'IS', N'Iceland')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (338, N'IN', N'India')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (339, N'ID', N'Indonesia')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (340, N'IR', N'Iran')
GO
print 'Processed 100 total records'
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (341, N'IQ', N'Iraq')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (342, N'IE', N'Ireland')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (343, N'IL', N'Israel')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (344, N'IT', N'Italy')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (345, N'JM', N'Jamaica')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (346, N'JP', N'Japan')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (347, N'JO', N'Jordan')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (348, N'KZ', N'Kazakhstan')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (349, N'KE', N'Kenya')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (350, N'KI', N'Kiribati')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (351, N'KP', N'Korea (North)')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (352, N'KR', N'Korea (South)')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (353, N'KW', N'Kuwait')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (354, N'KG', N'Kyrgyzstan')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (355, N'LA', N'Laos')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (356, N'LV', N'Latvia')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (357, N'LB', N'Lebanon')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (358, N'LS', N'Lesotho')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (359, N'LR', N'Liberia')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (360, N'LY', N'Libya')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (361, N'LI', N'Liechtenstein')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (362, N'LT', N'Lithuania')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (363, N'LU', N'Luxembourg')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (364, N'MO', N'Macau')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (365, N'MK', N'Macedonia')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (366, N'MG', N'Madagascar')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (367, N'MW', N'Malawi')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (368, N'MY', N'Malaysia')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (369, N'MV', N'Maldives')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (370, N'ML', N'Mali')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (371, N'MT', N'Malta')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (372, N'MH', N'Marshall Islands')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (373, N'MQ', N'Martinique')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (374, N'MR', N'Mauritania')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (375, N'MU', N'Mauritius')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (376, N'YT', N'Mayotte')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (377, N'MX', N'Mexico')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (378, N'FM', N'Micronesia')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (379, N'MD', N'Moldova')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (380, N'MC', N'Monaco')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (381, N'MN', N'Mongolia')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (382, N'MS', N'Montserrat')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (383, N'MA', N'Morocco')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (384, N'MZ', N'Mozambique')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (385, N'MM', N'Myanmar')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (386, N'NA', N'Namibia')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (387, N'NR', N'Nauru')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (388, N'NP', N'Nepal')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (389, N'NL', N'Netherlands')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (390, N'AN', N'Netherlands Antilles')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (391, N'NT', N'Neutral Zone')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (392, N'NC', N'New Caledonia')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (393, N'NZ', N'New Zealand')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (394, N'NI', N'Nicaragua')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (395, N'NE', N'Niger')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (396, N'NG', N'Nigeria')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (397, N'NU', N'Niue')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (398, N'NF', N'Norfolk Island')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (399, N'MP', N'Northern Mariana Islands')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (400, N'NO', N'Norway')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (401, N'OM', N'Oman')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (402, N'PK', N'Pakistan')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (403, N'PW', N'Palau')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (404, N'PA', N'Panama')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (405, N'PG', N'Papua New Guinea')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (406, N'PY', N'Paraguay')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (407, N'PE', N'Peru')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (408, N'PH', N'Philippines')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (409, N'PN', N'Pitcairn')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (410, N'PL', N'Poland')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (411, N'PT', N'Portugal')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (412, N'PR', N'Puerto Rico')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (413, N'QA', N'Qatar')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (414, N'RE', N'Reunion')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (415, N'RO', N'Romania')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (416, N'RU', N'Russian Federation')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (417, N'RW', N'Rwanda')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (418, N'GS', N'S. Georgia and S. Sandwich Isls.')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (419, N'KN', N'Saint Kitts and Nevis')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (420, N'LC', N'Saint Lucia')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (421, N'VC', N'Saint Vincent and the Grenadines')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (422, N'WS', N'Samoa')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (423, N'SM', N'San Marino')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (424, N'ST', N'Sao Tome and Principe')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (425, N'SA', N'Saudi Arabia')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (426, N'SN', N'Senegal')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (427, N'SC', N'Seychelles')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (428, N'SL', N'Sierra Leone')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (429, N'SG', N'Singapore')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (430, N'SK', N'Slovak Republic')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (431, N'SI', N'Slovenia')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (432, N'SB', N'Solomon Islands')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (433, N'SO', N'Somalia')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (434, N'ZA', N'South Africa')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (435, N'ES', N'Spain')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (436, N'LK', N'Sri Lanka')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (437, N'SH', N'St. Helena')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (438, N'PM', N'St. Pierre and Miquelon')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (439, N'SD', N'Sudan')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (440, N'SR', N'Suriname')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (441, N'SJ', N'Svalbard and Jan Mayen Islands')
GO
print 'Processed 200 total records'
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (442, N'SZ', N'Swaziland')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (443, N'SE', N'Sweden')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (444, N'CH', N'Switzerland')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (445, N'SY', N'Syria')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (446, N'TW', N'Taiwan')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (447, N'TJ', N'Tajikistan')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (448, N'TZ', N'Tanzania')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (449, N'TH', N'Thailand')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (450, N'TG', N'Togo')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (451, N'TK', N'Tokelau')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (452, N'TO', N'Tonga')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (453, N'TT', N'Trinidad and Tobago')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (454, N'TN', N'Tunisia')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (455, N'TR', N'Turkey')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (456, N'TM', N'Turkmenistan')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (457, N'TC', N'Turks and Caicos Islands')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (458, N'TV', N'Tuvalu')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (459, N'UM', N'US Minor Outlying Islands')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (460, N'UG', N'Uganda')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (461, N'UA', N'Ukraine')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (462, N'AE', N'United Arab Emirates')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (463, N'UK', N'United Kingdom')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (464, N'US', N'United States')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (465, N'UY', N'Uruguay')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (466, N'UZ', N'Uzbekistan')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (467, N'VU', N'Vanuatu')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (468, N'VA', N'Vatican City State (Holy See)')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (469, N'VE', N'Venezuela')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (470, N'VN', N'Viet Nam')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (471, N'VG', N'Virgin Islands (British)')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (472, N'VI', N'Virgin Islands (U.S.)')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (473, N'WF', N'Wallis and Futuna Islands')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (474, N'EH', N'Western Sahara')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (475, N'YE', N'Yemen')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (476, N'YU', N'Yugoslavia')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (477, N'ZR', N'Zaire')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (478, N'ZM', N'Zambia')
INSERT [dbo].[Pais] ([IDPais], [Sigla], [Pais]) VALUES (479, N'ZW', N'Zimbabwe')
SET IDENTITY_INSERT [dbo].[Pais] OFF
/****** Object:  Table [dbo].[Usuario]    Script Date: 03/15/2010 01:09:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuario](
	[IDLogin] [int] IDENTITY(1,1) NOT NULL,
	[login] [varchar](50) NOT NULL,
	[senha] [varbinary](4000) NOT NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[IDLogin] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_Login] UNIQUE NONCLUSTERED 
(
	[IDLogin] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tipo]    Script Date: 03/15/2010 01:09:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tipo](
	[IDTipo] [int] IDENTITY(1,1) NOT NULL,
	[descricao] [varchar](50) NOT NULL,
	[dataCadastro] [datetime] NOT NULL,
 CONSTRAINT [PK__Tipo__BEB088A607F6335A] PRIMARY KEY CLUSTERED 
(
	[IDTipo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[selecionarTIPOporID]    Script Date: 03/15/2010 01:09:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[selecionarTIPOporID]
	@IDTipo int
AS
	SELECT * FROM Tipo
	WHERE IDTipo = @IDTipo
GO
/****** Object:  StoredProcedure [dbo].[selecionarTIPO]    Script Date: 03/15/2010 01:09:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[selecionarTIPO]
AS
	SELECT * FROM Tipo
GO
/****** Object:  Table [dbo].[Produto]    Script Date: 03/15/2010 01:09:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Produto](
	[IDProduto] [int] IDENTITY(1,1) NOT NULL,
	[IDTipo] [int] NOT NULL,
	[descricao] [varchar](max) NOT NULL,
	[IDEspecificacao] [int] NOT NULL,
	[dataCadastro] [datetime] NOT NULL,
 CONSTRAINT [PK_Produto] PRIMARY KEY CLUSTERED 
(
	[IDProduto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[cadastrarTIPO]    Script Date: 03/15/2010 01:09:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[cadastrarTIPO]
	@descricao varchar(50)
AS
	INSERT INTO Tipo (descricao) 
	VALUES (@descricao)
GO
/****** Object:  UserDefinedFunction [dbo].[DescriptografaSenha]    Script Date: 03/15/2010 01:09:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[DescriptografaSenha]
	(
		@Login VARCHAR(20),
		@Senha VARCHAR(1000)
	)
RETURNS VARCHAR(4000)
AS
	BEGIN
	
		-- CRIANDO A CHAVE PARA CRIPTOGRAFAR
		   DECLARE @ChaveCriptografia VARCHAR(1000) = 'CHAVE'
		   
		-- RECUPERANDO A SENHA DO USUÁRIO AINDA CRIPTOGRADA
		   DECLARE @SenhaCriptografada VARCHAR(MAX) = ( SELECT senha 
		                                                  FROM Usuario
		                                                 WHERE login = @Login)   
		
		-- DESCRIPTOGRAFANDO A SENHA
		   DECLARE @Descriptografada VARCHAR(5000) = DECRYPTBYPASSPHRASE(@ChaveCriptografia, @SenhaCriptografada)
		
		-- RETORNA A SENHA DESCRIPTOGRAFADA
		   RETURN @Descriptografada
	END
GO
/****** Object:  Table [dbo].[Estado]    Script Date: 03/15/2010 01:09:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Estado](
	[IDEstado] [smallint] IDENTITY(1,1) NOT NULL,
	[IDPais] [smallint] NOT NULL,
	[Sigla] [char](2) NOT NULL,
	[Estado] [varchar](50) NOT NULL,
 CONSTRAINT [PK_estado] PRIMARY KEY CLUSTERED 
(
	[IDEstado] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Estado] ON
INSERT [dbo].[Estado] ([IDEstado], [IDPais], [Sigla], [Estado]) VALUES (1, 270, N'AC', N'Acre')
INSERT [dbo].[Estado] ([IDEstado], [IDPais], [Sigla], [Estado]) VALUES (2, 270, N'AL', N'Alagoas')
INSERT [dbo].[Estado] ([IDEstado], [IDPais], [Sigla], [Estado]) VALUES (3, 270, N'AP', N'Amapá')
INSERT [dbo].[Estado] ([IDEstado], [IDPais], [Sigla], [Estado]) VALUES (4, 270, N'AM', N'Amazonas')
INSERT [dbo].[Estado] ([IDEstado], [IDPais], [Sigla], [Estado]) VALUES (5, 270, N'BA', N'Bahia')
INSERT [dbo].[Estado] ([IDEstado], [IDPais], [Sigla], [Estado]) VALUES (6, 270, N'CE', N'Ceará')
INSERT [dbo].[Estado] ([IDEstado], [IDPais], [Sigla], [Estado]) VALUES (7, 270, N'DF', N'Distrito Federal')
INSERT [dbo].[Estado] ([IDEstado], [IDPais], [Sigla], [Estado]) VALUES (8, 270, N'ES', N'Espírito Santo')
INSERT [dbo].[Estado] ([IDEstado], [IDPais], [Sigla], [Estado]) VALUES (9, 270, N'GO', N'Goiás')
INSERT [dbo].[Estado] ([IDEstado], [IDPais], [Sigla], [Estado]) VALUES (10, 270, N'MA', N'Maranhão')
INSERT [dbo].[Estado] ([IDEstado], [IDPais], [Sigla], [Estado]) VALUES (11, 270, N'MT', N'Mato Grosso')
INSERT [dbo].[Estado] ([IDEstado], [IDPais], [Sigla], [Estado]) VALUES (12, 270, N'MS', N'Mato Grosso do Sul')
INSERT [dbo].[Estado] ([IDEstado], [IDPais], [Sigla], [Estado]) VALUES (13, 270, N'MG', N'Minas Gerais')
INSERT [dbo].[Estado] ([IDEstado], [IDPais], [Sigla], [Estado]) VALUES (14, 270, N'PA', N'Pará')
INSERT [dbo].[Estado] ([IDEstado], [IDPais], [Sigla], [Estado]) VALUES (15, 270, N'PB', N'Paraíba')
INSERT [dbo].[Estado] ([IDEstado], [IDPais], [Sigla], [Estado]) VALUES (16, 270, N'PR', N'Paraná')
INSERT [dbo].[Estado] ([IDEstado], [IDPais], [Sigla], [Estado]) VALUES (17, 270, N'PE', N'Pernambuco')
INSERT [dbo].[Estado] ([IDEstado], [IDPais], [Sigla], [Estado]) VALUES (18, 270, N'PI', N'Piauí')
INSERT [dbo].[Estado] ([IDEstado], [IDPais], [Sigla], [Estado]) VALUES (19, 270, N'RJ', N'Rio de Janeiro')
INSERT [dbo].[Estado] ([IDEstado], [IDPais], [Sigla], [Estado]) VALUES (20, 270, N'RN', N'Rio Grande do Norte')
INSERT [dbo].[Estado] ([IDEstado], [IDPais], [Sigla], [Estado]) VALUES (21, 270, N'RS', N'Rio Grande do Sul')
INSERT [dbo].[Estado] ([IDEstado], [IDPais], [Sigla], [Estado]) VALUES (22, 270, N'RO', N'Rondônia')
INSERT [dbo].[Estado] ([IDEstado], [IDPais], [Sigla], [Estado]) VALUES (23, 270, N'RR', N'Roraima')
INSERT [dbo].[Estado] ([IDEstado], [IDPais], [Sigla], [Estado]) VALUES (24, 270, N'SC', N'Santa Catarina')
INSERT [dbo].[Estado] ([IDEstado], [IDPais], [Sigla], [Estado]) VALUES (25, 270, N'SP', N'São Paulo')
INSERT [dbo].[Estado] ([IDEstado], [IDPais], [Sigla], [Estado]) VALUES (26, 270, N'SE', N'Sergipe')
INSERT [dbo].[Estado] ([IDEstado], [IDPais], [Sigla], [Estado]) VALUES (27, 270, N'TO', N'Tocantins')
INSERT [dbo].[Estado] ([IDEstado], [IDPais], [Sigla], [Estado]) VALUES (28, 464, N'AL', N'Alabama')
INSERT [dbo].[Estado] ([IDEstado], [IDPais], [Sigla], [Estado]) VALUES (29, 464, N'AL', N'Alaska')
INSERT [dbo].[Estado] ([IDEstado], [IDPais], [Sigla], [Estado]) VALUES (30, 464, N'AR', N'Arkansas')
INSERT [dbo].[Estado] ([IDEstado], [IDPais], [Sigla], [Estado]) VALUES (31, 464, N'AR', N'Arizona')
INSERT [dbo].[Estado] ([IDEstado], [IDPais], [Sigla], [Estado]) VALUES (32, 464, N'CA', N'California')
INSERT [dbo].[Estado] ([IDEstado], [IDPais], [Sigla], [Estado]) VALUES (33, 464, N'CO', N'Connecticut')
INSERT [dbo].[Estado] ([IDEstado], [IDPais], [Sigla], [Estado]) VALUES (34, 464, N'DE', N'Delaware')
INSERT [dbo].[Estado] ([IDEstado], [IDPais], [Sigla], [Estado]) VALUES (35, 464, N'FL', N'Florida')
INSERT [dbo].[Estado] ([IDEstado], [IDPais], [Sigla], [Estado]) VALUES (36, 464, N'GE', N'Georgia')
INSERT [dbo].[Estado] ([IDEstado], [IDPais], [Sigla], [Estado]) VALUES (37, 464, N'ID', N'Idaho')
INSERT [dbo].[Estado] ([IDEstado], [IDPais], [Sigla], [Estado]) VALUES (38, 464, N'IL', N'Illinois')
INSERT [dbo].[Estado] ([IDEstado], [IDPais], [Sigla], [Estado]) VALUES (39, 464, N'IN', N'Indiana')
INSERT [dbo].[Estado] ([IDEstado], [IDPais], [Sigla], [Estado]) VALUES (40, 464, N'IO', N'Iowa')
INSERT [dbo].[Estado] ([IDEstado], [IDPais], [Sigla], [Estado]) VALUES (41, 464, N'KA', N'Kansas')
INSERT [dbo].[Estado] ([IDEstado], [IDPais], [Sigla], [Estado]) VALUES (42, 464, N'KE', N'Kentucky')
INSERT [dbo].[Estado] ([IDEstado], [IDPais], [Sigla], [Estado]) VALUES (43, 464, N'LO', N'Louisiana')
INSERT [dbo].[Estado] ([IDEstado], [IDPais], [Sigla], [Estado]) VALUES (44, 464, N'MA', N'Maine')
INSERT [dbo].[Estado] ([IDEstado], [IDPais], [Sigla], [Estado]) VALUES (45, 464, N'MA', N'Maryland')
INSERT [dbo].[Estado] ([IDEstado], [IDPais], [Sigla], [Estado]) VALUES (46, 464, N'MA', N'Massachusetts')
INSERT [dbo].[Estado] ([IDEstado], [IDPais], [Sigla], [Estado]) VALUES (47, 464, N'MI', N'Minnesota')
INSERT [dbo].[Estado] ([IDEstado], [IDPais], [Sigla], [Estado]) VALUES (48, 464, N'MI', N'Mississippi')
INSERT [dbo].[Estado] ([IDEstado], [IDPais], [Sigla], [Estado]) VALUES (49, 464, N'MI', N'Missouri')
INSERT [dbo].[Estado] ([IDEstado], [IDPais], [Sigla], [Estado]) VALUES (50, 464, N'MO', N'Montana')
INSERT [dbo].[Estado] ([IDEstado], [IDPais], [Sigla], [Estado]) VALUES (51, 464, N'NE', N'Nebraska')
INSERT [dbo].[Estado] ([IDEstado], [IDPais], [Sigla], [Estado]) VALUES (52, 464, N'NE', N'Nevada')
INSERT [dbo].[Estado] ([IDEstado], [IDPais], [Sigla], [Estado]) VALUES (53, 464, N'NE', N'New Jersey')
INSERT [dbo].[Estado] ([IDEstado], [IDPais], [Sigla], [Estado]) VALUES (54, 464, N'NE', N'New Mexico')
INSERT [dbo].[Estado] ([IDEstado], [IDPais], [Sigla], [Estado]) VALUES (55, 464, N'NE', N'New York')
INSERT [dbo].[Estado] ([IDEstado], [IDPais], [Sigla], [Estado]) VALUES (56, 464, N'NO', N'North Carolina')
INSERT [dbo].[Estado] ([IDEstado], [IDPais], [Sigla], [Estado]) VALUES (57, 464, N'NO', N'North Dakota')
INSERT [dbo].[Estado] ([IDEstado], [IDPais], [Sigla], [Estado]) VALUES (58, 464, N'OH', N'Ohio')
INSERT [dbo].[Estado] ([IDEstado], [IDPais], [Sigla], [Estado]) VALUES (59, 464, N'OK', N'Oklahoma')
INSERT [dbo].[Estado] ([IDEstado], [IDPais], [Sigla], [Estado]) VALUES (60, 464, N'OR', N'Oregon')
INSERT [dbo].[Estado] ([IDEstado], [IDPais], [Sigla], [Estado]) VALUES (61, 464, N'PE', N'Pennsylvania')
INSERT [dbo].[Estado] ([IDEstado], [IDPais], [Sigla], [Estado]) VALUES (62, 464, N'RH', N'Rhode')
INSERT [dbo].[Estado] ([IDEstado], [IDPais], [Sigla], [Estado]) VALUES (63, 464, N'SO', N'South Carolina')
INSERT [dbo].[Estado] ([IDEstado], [IDPais], [Sigla], [Estado]) VALUES (64, 464, N'SO', N'South Dakota')
INSERT [dbo].[Estado] ([IDEstado], [IDPais], [Sigla], [Estado]) VALUES (65, 464, N'TE', N'Tennessee')
INSERT [dbo].[Estado] ([IDEstado], [IDPais], [Sigla], [Estado]) VALUES (66, 464, N'TE', N'Texas')
INSERT [dbo].[Estado] ([IDEstado], [IDPais], [Sigla], [Estado]) VALUES (67, 464, N'UT', N'Utah')
INSERT [dbo].[Estado] ([IDEstado], [IDPais], [Sigla], [Estado]) VALUES (68, 464, N'VE', N'Vermont')
INSERT [dbo].[Estado] ([IDEstado], [IDPais], [Sigla], [Estado]) VALUES (69, 464, N'VI', N'Virginia')
INSERT [dbo].[Estado] ([IDEstado], [IDPais], [Sigla], [Estado]) VALUES (70, 464, N'WA', N'Washington')
INSERT [dbo].[Estado] ([IDEstado], [IDPais], [Sigla], [Estado]) VALUES (71, 464, N'WE', N'West Virginia')
INSERT [dbo].[Estado] ([IDEstado], [IDPais], [Sigla], [Estado]) VALUES (72, 464, N'WI', N'Wisconsin')
INSERT [dbo].[Estado] ([IDEstado], [IDPais], [Sigla], [Estado]) VALUES (73, 464, N'WY', N'Wyoming')
SET IDENTITY_INSERT [dbo].[Estado] OFF
/****** Object:  Table [dbo].[EspecificacaoPedido]    Script Date: 03/15/2010 01:09:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EspecificacaoPedido](
	[IDEspecificacaoPedido] [int] IDENTITY(1,1) NOT NULL,
	[IDPedido] [int] NOT NULL,
	[IDEspecificacao] [int] NOT NULL,
 CONSTRAINT [PK__Especifi__B120B5D81367E606] PRIMARY KEY CLUSTERED 
(
	[IDEspecificacaoPedido] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[excluirTIPO]    Script Date: 03/15/2010 01:09:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[excluirTIPO]
	@IDTipo int
AS
	DELETE FROM Tipo
	WHERE IDTipo = @IDTipo
GO
/****** Object:  StoredProcedure [dbo].[atualizarTIPO]    Script Date: 03/15/2010 01:09:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[atualizarTIPO]
	@IDTipo int,
	@descricao varchar(50)
AS
	UPDATE [SIDAF].[dbo].[Tipo]
	SET [descricao] = @descricao
	WHERE IDTipo = @IDTipo
GO
/****** Object:  Table [dbo].[Cidade]    Script Date: 03/15/2010 01:09:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cidade](
	[IDCidade] [int] IDENTITY(1,1) NOT NULL,
	[IDEstado] [smallint] NOT NULL,
	[Cidade] [varchar](50) NOT NULL,
 CONSTRAINT [PK_cidade] PRIMARY KEY CLUSTERED 
(
	[IDCidade] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Cidade] ON
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1, 1, N'Acrelândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2, 1, N'Assis Brasil')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3, 1, N'Brasiléia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4, 1, N'Bujari')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5, 1, N'Capixaba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (6, 1, N'Cruzeiro do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (7, 1, N'Epitaciolândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (8, 1, N'Feijó')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (9, 1, N'Jordão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (10, 1, N'Mâncio Lima')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (11, 1, N'Manoel Urbano')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (12, 1, N'Marechal Thaumaturgo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (13, 1, N'Plácido de Castro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (14, 1, N'Porto Acre')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (15, 1, N'Porto Walter')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (16, 1, N'Rio Branco')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (17, 1, N'Rodrigues Alves')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (18, 1, N'Santa Rosa do Purus')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (19, 1, N'Sena Madureira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (20, 1, N'Senador Guiomard')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (21, 1, N'Tarauacá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (22, 1, N'Xapuri')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (23, 2, N'Água Branca')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (24, 2, N'Anadia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (25, 2, N'Arapiraca')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (26, 2, N'Atalaia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (27, 2, N'Barra de Santo Antônio')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (28, 2, N'Barra de São Miguel')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (29, 2, N'Batalha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (30, 2, N'Belém')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (31, 2, N'Belo Monte')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (32, 2, N'Boca da Mata')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (33, 2, N'Branquinha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (34, 2, N'Cacimbinhas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (35, 2, N'Cajueiro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (36, 2, N'Campestre')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (37, 2, N'Campo Alegre')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (38, 2, N'Campo Grande')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (39, 2, N'Canapi')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (40, 2, N'Capela')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (41, 2, N'Carneiros')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (42, 2, N'Chã Preta')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (43, 2, N'Coité do Nóia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (44, 2, N'Colônia Leopoldina')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (45, 2, N'Coqueiro Seco')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (46, 2, N'Coruripe')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (47, 2, N'Craíbas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (48, 2, N'Delmiro Gouveia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (49, 2, N'Dois Riachos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (50, 2, N'Estrela de Alagoas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (51, 2, N'Feira Grande')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (52, 2, N'Feliz Deserto')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (53, 2, N'Flexeiras')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (54, 2, N'Girau do Ponciano')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (55, 2, N'Ibateguara')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (56, 2, N'Igaci')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (57, 2, N'Igreja Nova')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (58, 2, N'Inhapi')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (59, 2, N'Jacaré dos Homens')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (60, 2, N'Jacuípe')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (61, 2, N'Japaratinga')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (62, 2, N'Jaramataia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (63, 2, N'Joaquim Gomes')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (64, 2, N'Jundiá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (65, 2, N'Junqueiro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (66, 2, N'Lagoa da Canoa')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (67, 2, N'Limoeiro de Anadia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (68, 2, N'Maceió')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (69, 2, N'Major Isidoro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (70, 2, N'Mar Vermelho')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (71, 2, N'Maragogi')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (72, 2, N'Maravilha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (73, 2, N'Marechal Deodoro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (74, 2, N'Maribondo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (75, 2, N'Mata Grande')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (76, 2, N'Matriz de Camaragibe')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (77, 2, N'Messias')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (78, 2, N'Minador do Negrão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (79, 2, N'Monteirópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (80, 2, N'Murici')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (81, 2, N'Novo Lino')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (82, 2, N'Olho d`Água das Flores')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (83, 2, N'Olho d`Água do Casado')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (84, 2, N'Olho d`Água Grande')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (85, 2, N'Olivença')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (86, 2, N'Ouro Branco')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (87, 2, N'Palestina')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (88, 2, N'Palmeira dos Índios')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (89, 2, N'Pão de Açúcar')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (90, 2, N'Pariconha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (91, 2, N'Paripueira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (92, 2, N'Passo de Camaragibe')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (93, 2, N'Paulo Jacinto')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (94, 2, N'Penedo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (95, 2, N'Piaçabuçu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (96, 2, N'Pilar')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (97, 2, N'Pindoba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (98, 2, N'Piranhas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (99, 2, N'Poço das Trincheiras')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (100, 2, N'Porto Calvo')
GO
print 'Processed 100 total records'
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (101, 2, N'Porto de Pedras')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (102, 2, N'Porto Real do Colégio')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (103, 2, N'Quebrangulo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (104, 2, N'Rio Largo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (105, 2, N'Roteiro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (106, 2, N'Santa Luzia do Norte')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (107, 2, N'Santana do Ipanema')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (108, 2, N'Santana do Mundaú')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (109, 2, N'São Brás')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (110, 2, N'São José da Laje')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (111, 2, N'São José da Tapera')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (112, 2, N'São Luís do Quitunde')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (113, 2, N'São Miguel dos Campos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (114, 2, N'São Miguel dos Milagres')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (115, 2, N'São Sebastião')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (116, 2, N'Satuba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (117, 2, N'Senador Rui Palmeira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (118, 2, N'Tanque d`Arca')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (119, 2, N'Taquarana')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (120, 2, N'Teotônio Vilela')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (121, 2, N'Traipu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (122, 2, N'União dos Palmares')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (123, 2, N'Viçosa')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (124, 3, N'Amapá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (125, 3, N'Calçoene')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (126, 3, N'Cutias')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (127, 3, N'Ferreira Gomes')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (128, 3, N'Itaubal')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (129, 3, N'Laranjal do Jari')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (130, 3, N'Macapá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (131, 3, N'Mazagão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (132, 3, N'Oiapoque')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (133, 3, N'Pedra Branca do Amaparí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (134, 3, N'Porto Grande')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (135, 3, N'Pracuúba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (136, 3, N'Santana')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (137, 3, N'Serra do Navio')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (138, 3, N'Tartarugalzinho')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (139, 3, N'Vitória do Jari')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (140, 4, N'Alvarães')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (141, 4, N'Amaturá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (142, 4, N'namã')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (143, 4, N'Anori')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (144, 4, N'Apuí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (145, 4, N'Atalaia do Norte')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (146, 4, N'Autazes')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (147, 4, N'Barcelos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (148, 4, N'Barreirinha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (149, 4, N'Benjamin Constant')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (150, 4, N'Beruri')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (151, 4, N'Boa Vista do Ramos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (152, 4, N'Boca do Acre')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (153, 4, N'Borba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (154, 4, N'Caapiranga')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (155, 4, N'Canutama')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (156, 4, N'Carauari')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (157, 4, N'Careiro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (158, 4, N'Careiro da Várzea')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (159, 4, N'Coari')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (160, 4, N'Codajás')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (161, 4, N'Eirunepé')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (162, 4, N'Envira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (163, 4, N'Fonte Boa')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (164, 4, N'Guajará')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (165, 4, N'Humaitá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (166, 4, N'Ipixuna')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (167, 4, N'Iranduba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (168, 4, N'Itacoatiara')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (169, 4, N'Itamarati')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (170, 4, N'Itapiranga')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (171, 4, N'Japurá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (172, 4, N'Juruá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (173, 4, N'Jutaí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (174, 4, N'Lábrea')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (175, 4, N'Manacapuru')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (176, 4, N'Manaquiri')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (177, 4, N'Manaus')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (178, 4, N'Manicoré')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (179, 4, N'Maraã')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (180, 4, N'Maués')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (181, 4, N'Nhamundá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (182, 4, N'Nova Olinda do Norte')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (183, 4, N'Novo Airão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (184, 4, N'Novo Aripuanã')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (185, 4, N'Parintins')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (186, 4, N'Pauini')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (187, 4, N'Presidente Figueiredo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (188, 4, N'Rio Preto da Eva')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (189, 4, N'Santa Isabel do Rio Negro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (190, 4, N'Santo Antônio do Içá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (191, 4, N'São Gabriel da Cachoeira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (192, 4, N'São Paulo de Olivença')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (193, 4, N'São Sebastião do Uatumã')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (194, 4, N'Silves')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (195, 4, N'Tabatinga')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (196, 4, N'Tapauá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (197, 4, N'Tefé')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (198, 4, N'Tonantins')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (199, 4, N'Uarini')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (200, 4, N'Urucará')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (201, 4, N'Urucurituba')
GO
print 'Processed 200 total records'
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (202, 5, N'Abaíra')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (203, 5, N'Abaré')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (204, 5, N'Acajutiba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (205, 5, N'Adustina')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (206, 5, N'Água Fria')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (207, 5, N'Aiquara')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (208, 5, N'Alagoinhas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (209, 5, N'Alcobaça')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (210, 5, N'Almadina')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (211, 5, N'Amargosa')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (212, 5, N'Amélia Rodrigues')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (213, 5, N'América Dourada')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (214, 5, N'Anagé')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (215, 5, N'Andaraí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (216, 5, N'Andorinha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (217, 5, N'Angical')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (218, 5, N'Anguera')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (219, 5, N'Antas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (220, 5, N'Antônio Cardoso')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (221, 5, N'Antônio Gonçalves')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (222, 5, N'Aporá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (223, 5, N'Apuarema')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (224, 5, N'Araças')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (225, 5, N'Aracatu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (226, 5, N'Araci')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (227, 5, N'Aramari')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (228, 5, N'Arataca')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (229, 5, N'Aratuípe')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (230, 5, N'Aurelino Leal')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (231, 5, N'Baianópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (232, 5, N'Baixa Grande')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (233, 5, N'Banzaê')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (234, 5, N'Barra')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (235, 5, N'Barra da Estiva')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (236, 5, N'Barra do Choça')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (237, 5, N'Barra do Mendes')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (238, 5, N'Barra do Rocha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (239, 5, N'Barreiras')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (240, 5, N'Barro Alto')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (241, 5, N'Belmonte')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (242, 5, N'Belo Campo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (243, 5, N'Biritinga')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (244, 5, N'Boa Nova')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (245, 5, N'Boa Vista do Tupim')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (246, 5, N'Bom Jesus da Lapa')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (247, 5, N'Bom Jesus da Serra')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (248, 5, N'Boninal')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (249, 5, N'Bonito')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (250, 5, N'Boquira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (251, 5, N'Botuporã')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (252, 5, N'Brejões')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (253, 5, N'Brejolândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (254, 5, N'Brotas de Macaúbas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (255, 5, N'Brumado')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (256, 5, N'Buerarema')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (257, 5, N'Buritirama')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (258, 5, N'Caatiba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (259, 5, N'Cabaceiras do Paraguaçu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (260, 5, N'Cachoeira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (261, 5, N'Caculé')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (262, 5, N'Caém')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (263, 5, N'Caetanos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (264, 5, N'Caetité')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (265, 5, N'Cafarnaum')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (266, 5, N'Cairu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (267, 5, N'Caldeirão Grande')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (268, 5, N'Camacan')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (269, 5, N'Camaçari')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (270, 5, N'Camamu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (271, 5, N'Campo Alegre de Lourdes')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (272, 5, N'Campo Formoso')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (273, 5, N'Canápolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (274, 5, N'Canarana')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (275, 5, N'Canavieiras')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (276, 5, N'Candeal')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (277, 5, N'Candeias')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (278, 5, N'Candiba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (279, 5, N'Cândido Sales')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (280, 5, N'Cansanção')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (281, 5, N'Canudos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (282, 5, N'Capela do Alto Alegre')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (283, 5, N'Capim Grosso')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (284, 5, N'Caraíbas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (285, 5, N'Caravelas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (286, 5, N'Cardeal da Silva')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (287, 5, N'Carinhanha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (288, 5, N'Casa Nova')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (289, 5, N'Castro Alves')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (290, 5, N'Catolândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (291, 5, N'Catu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (292, 5, N'Caturama')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (293, 5, N'Central')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (294, 5, N'Chorrochó')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (295, 5, N'Cícero Dantas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (296, 5, N'Cipó')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (297, 5, N'Coaraci')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (298, 5, N'Cocos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (299, 5, N'Conceição da Feira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (300, 5, N'Conceição do Almeida')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (301, 5, N'Conceição do Coité')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (302, 5, N'Conceição do Jacuípe')
GO
print 'Processed 300 total records'
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (303, 5, N'Conde')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (304, 5, N'Condeúba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (305, 5, N'Contendas do Sincorá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (306, 5, N'Coração de Maria')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (307, 5, N'Cordeiros')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (308, 5, N'Coribe')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (309, 5, N'Coronel João Sá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (310, 5, N'Correntina')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (311, 5, N'Cotegipe')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (312, 5, N'Cravolândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (313, 5, N'Crisópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (314, 5, N'Cristópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (315, 5, N'Cruz das Almas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (316, 5, N'Curaçá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (317, 5, N'Dário Meira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (318, 5, N'Dias d`Ávila')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (319, 5, N'Dom Basílio')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (320, 5, N'Dom Macedo Costa')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (321, 5, N'Elísio Medrado')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (322, 5, N'Encruzilhada')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (323, 5, N'Entre Rios')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (324, 5, N'Érico Cardoso')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (325, 5, N'Esplanada')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (326, 5, N'Euclides da Cunha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (327, 5, N'Eunápolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (328, 5, N'Fátima')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (329, 5, N'Feira da Mata')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (330, 5, N'Feira de Santana')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (331, 5, N'Filadélfia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (332, 5, N'Firmino Alves')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (333, 5, N'Floresta Azul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (334, 5, N'Formosa do Rio Preto')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (335, 5, N'Gandu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (336, 5, N'Gavião')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (337, 5, N'Gentio do Ouro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (338, 5, N'Glória')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (339, 5, N'Gongogi')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (340, 5, N'Governador Lomanto Júnior')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (341, 5, N'Governador Mangabeira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (342, 5, N'Guajeru')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (343, 5, N'Guanambi')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (344, 5, N'Guaratinga')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (345, 5, N'Heliópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (346, 5, N'Iaçu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (347, 5, N'Ibiassucê')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (348, 5, N'Ibicaraí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (349, 5, N'Ibicoara')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (350, 5, N'Ibicuí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (351, 5, N'Ibipeba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (352, 5, N'Ibipitanga')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (353, 5, N'Ibiquera')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (354, 5, N'Ibirapitanga')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (355, 5, N'Ibirapuã')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (356, 5, N'Ibirataia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (357, 5, N'Ibitiara')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (358, 5, N'Ibititá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (359, 5, N'Ibotirama')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (360, 5, N'Ichu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (361, 5, N'Igaporã')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (362, 5, N'Igrapiúna')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (363, 5, N'Iguaí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (364, 5, N'Ilhéus')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (365, 5, N'Inhambupe')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (366, 5, N'Ipecaetá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (367, 5, N'Ipiaú')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (368, 5, N'Ipirá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (369, 5, N'Ipupiara')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (370, 5, N'Irajuba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (371, 5, N'Iramaia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (372, 5, N'Iraquara')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (373, 5, N'Irará')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (374, 5, N'Irecê')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (375, 5, N'Itabela')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (376, 5, N'Itaberaba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (377, 5, N'Itabuna')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (378, 5, N'Itacaré')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (379, 5, N'Itaeté')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (380, 5, N'Itagi')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (381, 5, N'Itagibá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (382, 5, N'Itagimirim')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (383, 5, N'Itaguaçu da Bahia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (384, 5, N'Itaju do Colônia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (385, 5, N'Itajuípe')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (386, 5, N'Itamaraju')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (387, 5, N'Itamari')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (388, 5, N'Itambé')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (389, 5, N'Itanagra')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (390, 5, N'Itanhém')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (391, 5, N'Itaparica')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (392, 5, N'Itapé')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (393, 5, N'Itapebi')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (394, 5, N'Itapetinga')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (395, 5, N'Itapicuru')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (396, 5, N'Itapitanga')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (397, 5, N'Itaquara')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (398, 5, N'Itarantim')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (399, 5, N'Itatim')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (400, 5, N'Itiruçu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (401, 5, N'Itiúba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (402, 5, N'Itororó')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (403, 5, N'Ituaçu')
GO
print 'Processed 400 total records'
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (404, 5, N'Ituberá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (405, 5, N'Iuiú')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (406, 5, N'Jaborandi')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (407, 5, N'Jacaraci')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (408, 5, N'Jacobina')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (409, 5, N'Jaguaquara')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (410, 5, N'Jaguarari')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (411, 5, N'Jaguaripe')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (412, 5, N'Jandaíra')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (413, 5, N'Jequié')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (414, 5, N'Jeremoabo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (415, 5, N'Jiquiriçá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (416, 5, N'Jitaúna')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (417, 5, N'João Dourado')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (418, 5, N'Juazeiro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (419, 5, N'Jucuruçu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (420, 5, N'Jussara')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (421, 5, N'Jussari')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (422, 5, N'Jussiape')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (423, 5, N'Lafaiete Coutinho')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (424, 5, N'Lagoa Real')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (425, 5, N'Laje')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (426, 5, N'Lajedão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (427, 5, N'Lajedinho')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (428, 5, N'Lajedo do Tabocal')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (429, 5, N'Lamarão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (430, 5, N'Lapão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (431, 5, N'Lauro de Freitas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (432, 5, N'Lençóis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (433, 5, N'Licínio de Almeida')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (434, 5, N'Livramento de Nossa Senhora')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (435, 5, N'Macajuba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (436, 5, N'Macarani')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (437, 5, N'Macaúbas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (438, 5, N'Macururé')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (439, 5, N'Madre de Deus')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (440, 5, N'Maetinga')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (441, 5, N'Maiquinique')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (442, 5, N'Mairi')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (443, 5, N'Malhada')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (444, 5, N'Malhada de Pedras')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (445, 5, N'Manoel Vitorino')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (446, 5, N'Mansidão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (447, 5, N'Maracás')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (448, 5, N'Maragogipe')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (449, 5, N'Maraú')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (450, 5, N'Marcionílio Souza')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (451, 5, N'Mascote')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (452, 5, N'Mata de São João')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (453, 5, N'Matina')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (454, 5, N'Medeiros Neto')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (455, 5, N'Miguel Calmon')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (456, 5, N'Milagres')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (457, 5, N'Mirangaba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (458, 5, N'Mirante')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (459, 5, N'Monte Santo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (460, 5, N'Morpará')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (461, 5, N'Morro do Chapéu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (462, 5, N'Mortugaba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (463, 5, N'Mucugê')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (464, 5, N'Mucuri')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (465, 5, N'Mulungu do Morro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (466, 5, N'Mundo Novo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (467, 5, N'Muniz Ferreira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (468, 5, N'Muquém de São Francisco')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (469, 5, N'Muritiba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (470, 5, N'Mutuípe')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (471, 5, N'Nazaré')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (472, 5, N'Nilo Peçanha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (473, 5, N'Nordestina')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (474, 5, N'Nova Canaã')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (475, 5, N'Nova Fátima')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (476, 5, N'Nova Ibiá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (477, 5, N'Nova Itarana')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (478, 5, N'Nova Redenção')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (479, 5, N'Nova Soure')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (480, 5, N'Nova Viçosa')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (481, 5, N'Novo Horizonte')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (482, 5, N'Novo Triunfo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (483, 5, N'Olindina')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (484, 5, N'Oliveira dos Brejinhos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (485, 5, N'Ouriçangas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (486, 5, N'Ourolândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (487, 5, N'Palmas de Monte Alto')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (488, 5, N'Palmeiras')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (489, 5, N'Paramirim')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (490, 5, N'Paratinga')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (491, 5, N'Paripiranga')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (492, 5, N'Pau Brasil')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (493, 5, N'Paulo Afonso')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (494, 5, N'Pé de Serra')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (495, 5, N'Pedrão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (496, 5, N'Pedro Alexandre')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (497, 5, N'Piatã')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (498, 5, N'Pilão Arcado')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (499, 5, N'Pindaí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (500, 5, N'Pindobaçu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (501, 5, N'Pintadas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (502, 5, N'Piraí do Norte')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (503, 5, N'Piripá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (504, 5, N'Piritiba')
GO
print 'Processed 500 total records'
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (505, 5, N'Planaltino')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (506, 5, N'Planalto')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (507, 5, N'Poções')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (508, 5, N'Pojuca')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (509, 5, N'Ponto Novo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (510, 5, N'Porto Seguro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (511, 5, N'Potiraguá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (512, 5, N'Prado')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (513, 5, N'Presidente Dutra')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (514, 5, N'Presidente Jânio Quadros')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (515, 5, N'Presidente Tancredo Neves')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (516, 5, N'Queimadas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (517, 5, N'Quijingue')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (518, 5, N'Quixabeira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (519, 5, N'Rafael Jambeiro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (520, 5, N'Remanso')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (521, 5, N'Retirolândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (522, 5, N'Riachão das Neves')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (523, 5, N'Riachão do Jacuípe')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (524, 5, N'Riacho de Santana')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (525, 5, N'Ribeira do Amparo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (526, 5, N'Ribeira do Pombal')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (527, 5, N'Ribeirão do Largo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (528, 5, N'Rio de Contas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (529, 5, N'Rio do Antônio')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (530, 5, N'Rio do Pires')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (531, 5, N'Rio Real')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (532, 5, N'Rodelas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (533, 5, N'Ruy Barbosa')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (534, 5, N'Salinas da Margarida')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (535, 5, N'Salvador')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (536, 5, N'Santa Bárbara')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (537, 5, N'Santa Brígida')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (538, 5, N'Santa Cruz Cabrália')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (539, 5, N'Santa Cruz da Vitória')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (540, 5, N'Santa Inês')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (541, 5, N'Santa Luzia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (542, 5, N'Santa Maria da Vitória')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (543, 5, N'Santa Rita de Cássia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (544, 5, N'Santa Teresinha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (545, 5, N'Santaluz')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (546, 5, N'Santana')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (547, 5, N'Santanópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (548, 5, N'Santo Amaro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (549, 5, N'Santo Antônio de Jesus')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (550, 5, N'Santo Estêvão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (551, 5, N'São Desidério')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (552, 5, N'São Domingos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (553, 5, N'São Felipe')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (554, 5, N'São Félix')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (555, 5, N'São Félix do Coribe')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (556, 5, N'São Francisco do Conde')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (557, 5, N'São Gabriel')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (558, 5, N'São Gonçalo dos Campos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (559, 5, N'São José da Vitória')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (560, 5, N'São José do Jacuípe')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (561, 5, N'São Miguel das Matas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (562, 5, N'São Sebastião do Passé')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (563, 5, N'Sapeaçu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (564, 5, N'Sátiro Dias')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (565, 5, N'Saubara')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (566, 5, N'Saúde')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (567, 5, N'Seabra')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (568, 5, N'Sebastião Laranjeiras')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (569, 5, N'Senhor do Bonfim')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (570, 5, N'Sento Sé')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (571, 5, N'Serra do Ramalho')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (572, 5, N'Serra Dourada')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (573, 5, N'Serra Preta')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (574, 5, N'Serrinha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (575, 5, N'Serrolândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (576, 5, N'Simões Filho')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (577, 5, N'Sítio do Mato')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (578, 5, N'Sítio do Quinto')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (579, 5, N'Sobradinho')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (580, 5, N'Souto Soares')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (581, 5, N'Tabocas do Brejo Velho')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (582, 5, N'Tanhaçu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (583, 5, N'Tanque Novo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (584, 5, N'Tanquinho')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (585, 5, N'Taperoá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (586, 5, N'Tapiramutá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (587, 5, N'Teixeira de Freitas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (588, 5, N'Teodoro Sampaio')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (589, 5, N'Teofilândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (590, 5, N'Teolândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (591, 5, N'Terra Nova')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (592, 5, N'Tremedal')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (593, 5, N'Tucano')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (594, 5, N'Uauá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (595, 5, N'Ubaíra')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (596, 5, N'Ubaitaba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (597, 5, N'Ubatã')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (598, 5, N'Uibaí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (599, 5, N'Umburanas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (600, 5, N'Una')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (601, 5, N'Urandi')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (602, 5, N'Uruçuca')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (603, 5, N'Utinga')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (604, 5, N'Valença')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (605, 5, N'Valente')
GO
print 'Processed 600 total records'
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (606, 5, N'Várzea da Roça')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (607, 5, N'Várzea do Poço')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (608, 5, N'Várzea Nova')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (609, 5, N'Varzedo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (610, 5, N'Vera Cruz')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (611, 5, N'Vereda')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (612, 5, N'Vitória da Conquista')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (613, 5, N'Wagner')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (614, 5, N'Wanderley')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (615, 5, N'Wenceslau Guimarães')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (616, 5, N'Xique-Xique')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (617, 6, N'Abaiara')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (618, 6, N'Acarapé')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (619, 6, N'Acaraú')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (620, 6, N'Acopiara')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (621, 6, N'Aiuaba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (622, 6, N'Alcântaras')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (623, 6, N'Altaneira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (624, 6, N'Alto Santo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (625, 6, N'Amontada')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (626, 6, N'Antonina do Norte')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (627, 6, N'Apuiarés')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (628, 6, N'Aquiraz')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (629, 6, N'Aracati')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (630, 6, N'Aracoiaba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (631, 6, N'Ararendá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (632, 6, N'Araripe')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (633, 6, N'Aratuba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (634, 6, N'Arneiroz')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (635, 6, N'Assaré')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (636, 6, N'Aurora')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (637, 6, N'Baixio')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (638, 6, N'Banabuiú')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (639, 6, N'Barbalha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (640, 6, N'Barreira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (641, 6, N'Barro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (642, 6, N'Barroquinha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (643, 6, N'Baturité')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (644, 6, N'Beberibe')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (645, 6, N'Bela Cruz')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (646, 6, N'Boa Viagem')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (647, 6, N'Brejo Santo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (648, 6, N'Camocim')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (649, 6, N'Campos Sales')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (650, 6, N'Canindé')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (651, 6, N'Capistrano')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (652, 6, N'Caridade')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (653, 6, N'Cariré')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (654, 6, N'Caririaçu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (655, 6, N'Cariús')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (656, 6, N'Carnaubal')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (657, 6, N'Cascavel')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (658, 6, N'Catarina')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (659, 6, N'Catunda')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (660, 6, N'Caucaia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (661, 6, N'Cedro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (662, 6, N'Chaval')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (663, 6, N'Choró')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (664, 6, N'Chorozinho')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (665, 6, N'Coreaú')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (666, 6, N'Crateús')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (667, 6, N'Crato')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (668, 6, N'Croatá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (669, 6, N'Cruz')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (670, 6, N'Deputado Irapuan Pinheiro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (671, 6, N'Ererê')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (672, 6, N'Eusébio')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (673, 6, N'Farias Brito')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (674, 6, N'Forquilha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (675, 6, N'Fortaleza')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (676, 6, N'Fortim')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (677, 6, N'Frecheirinha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (678, 6, N'General Sampaio')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (679, 6, N'Graça')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (680, 6, N'Granja')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (681, 6, N'Granjeiro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (682, 6, N'Groaíras')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (683, 6, N'Guaiúba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (684, 6, N'Guaraciaba do Norte')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (685, 6, N'Guaramiranga')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (686, 6, N'Hidrolândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (687, 6, N'Horizonte')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (688, 6, N'Ibaretama')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (689, 6, N'Ibiapina')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (690, 6, N'Ibicuitinga')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (691, 6, N'Icapuí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (692, 6, N'Icó')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (693, 6, N'Iguatu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (694, 6, N'Independência')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (695, 6, N'Ipaporanga')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (696, 6, N'Ipaumirim')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (697, 6, N'Ipu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (698, 6, N'Ipueiras')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (699, 6, N'Iracema')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (700, 6, N'Irauçuba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (701, 6, N'Itaiçaba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (702, 6, N'Itaitinga')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (703, 6, N'Itapagé')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (704, 6, N'Itapipoca')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (705, 6, N'Itapiúna')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (706, 6, N'Itarema')
GO
print 'Processed 700 total records'
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (707, 6, N'Itatira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (708, 6, N'Jaguaretama')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (709, 6, N'Jaguaribara')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (710, 6, N'Jaguaribe')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (711, 6, N'Jaguaruana')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (712, 6, N'Jardim')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (713, 6, N'Jati')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (714, 6, N'Jijoca de Jericoacoara')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (715, 6, N'Juazeiro do Norte')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (716, 6, N'Jucás')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (717, 6, N'Lavras da Mangabeira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (718, 6, N'Limoeiro do Norte')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (719, 6, N'Madalena')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (720, 6, N'Maracanaú')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (721, 6, N'Maranguape')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (722, 6, N'Marco')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (723, 6, N'Martinópole')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (724, 6, N'Massapê')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (725, 6, N'Mauriti')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (726, 6, N'Meruoca')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (727, 6, N'Milagres')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (728, 6, N'Milhã')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (729, 6, N'Miraíma')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (730, 6, N'Missão Velha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (731, 6, N'Mombaça')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (732, 6, N'Monsenhor Tabosa')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (733, 6, N'Morada Nova')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (734, 6, N'Moraújo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (735, 6, N'Morrinhos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (736, 6, N'Mucambo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (737, 6, N'Mulungu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (738, 6, N'Nova Olinda')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (739, 6, N'Nova Russas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (740, 6, N'Novo Oriente')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (741, 6, N'Ocara')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (742, 6, N'Orós')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (743, 6, N'Pacajus')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (744, 6, N'Pacatuba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (745, 6, N'Pacoti')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (746, 6, N'Pacujá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (747, 6, N'Palhano')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (748, 6, N'Palmácia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (749, 6, N'Paracuru')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (750, 6, N'Paraipaba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (751, 6, N'Parambu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (752, 6, N'Paramoti')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (753, 6, N'Pedra Branca')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (754, 6, N'Penaforte')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (755, 6, N'Pentecoste')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (756, 6, N'Pereiro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (757, 6, N'Pindoretama')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (758, 6, N'Piquet Carneiro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (759, 6, N'Pires Ferreira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (760, 6, N'Poranga')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (761, 6, N'Porteiras')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (762, 6, N'Potengi')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (763, 6, N'Potiretama')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (764, 6, N'Quiterianópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (765, 6, N'Quixadá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (766, 6, N'Quixelô')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (767, 6, N'Quixeramobim')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (768, 6, N'Quixeré')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (769, 6, N'Redenção')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (770, 6, N'Reriutaba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (771, 6, N'Russas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (772, 6, N'Saboeiro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (773, 6, N'Salitre')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (774, 6, N'Santa Quitéria')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (775, 6, N'Santana do Acaraú')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (776, 6, N'Santana do Cariri')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (777, 6, N'São Benedito')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (778, 6, N'São Gonçalo do Amarante')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (779, 6, N'São João do Jaguaribe')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (780, 6, N'São Luís do Curu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (781, 6, N'Senador Pompeu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (782, 6, N'Senador Sá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (783, 6, N'Sobral')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (784, 6, N'Solonópole')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (785, 6, N'Tabuleiro do Norte')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (786, 6, N'Tamboril')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (787, 6, N'Tarrafas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (788, 6, N'Tauá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (789, 6, N'Tejuçuoca')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (790, 6, N'Tianguá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (791, 6, N'Trairi')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (792, 6, N'Tururu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (793, 6, N'Ubajara')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (794, 6, N'Umari')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (795, 6, N'Umirim')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (796, 6, N'Uruburetama')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (797, 6, N'Uruoca')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (798, 6, N'Varjota')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (799, 6, N'Várzea Alegre')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (800, 6, N'Viçosa do Ceará')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (801, 7, N'Brasília')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (802, 8, N'Afonso Cláudio')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (803, 8, N'Água Doce do Norte')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (804, 8, N'Águia Branca')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (805, 8, N'Alegre')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (806, 8, N'Alfredo Chaves')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (807, 8, N'Alto Rio Novo')
GO
print 'Processed 800 total records'
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (808, 8, N'Anchieta')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (809, 8, N'Apiacá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (810, 8, N'Aracruz')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (811, 8, N'Atilio Vivacqua')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (812, 8, N'Baixo Guandu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (813, 8, N'Barra de São Francisco')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (814, 8, N'Boa Esperança')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (815, 8, N'Bom Jesus do Norte')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (816, 8, N'Brejetuba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (817, 8, N'Cachoeiro de Itapemirim')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (818, 8, N'Cariacica')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (819, 8, N'Castelo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (820, 8, N'Colatina')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (821, 8, N'Conceição da Barra')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (822, 8, N'Conceição do Castelo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (823, 8, N'Divino de São Lourenço')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (824, 8, N'Domingos Martins')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (825, 8, N'Dores do Rio Preto')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (826, 8, N'Ecoporanga')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (827, 8, N'Fundão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (828, 8, N'Guaçuí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (829, 8, N'Guarapari')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (830, 8, N'Ibatiba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (831, 8, N'Ibiraçu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (832, 8, N'Ibitirama')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (833, 8, N'Iconha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (834, 8, N'Irupi')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (835, 8, N'Itaguaçu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (836, 8, N'Itapemirim')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (837, 8, N'Itarana')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (838, 8, N'Iúna')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (839, 8, N'Jaguaré')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (840, 8, N'Jerônimo Monteiro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (841, 8, N'João Neiva')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (842, 8, N'Laranja da Terra')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (843, 8, N'Linhares')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (844, 8, N'Mantenópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (845, 8, N'Marataízes')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (846, 8, N'Marechal Floriano')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (847, 8, N'Marilândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (848, 8, N'Mimoso do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (849, 8, N'Montanha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (850, 8, N'Mucurici')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (851, 8, N'Muniz Freire')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (852, 8, N'Muqui')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (853, 8, N'Nova Venécia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (854, 8, N'Pancas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (855, 8, N'Pedro Canário')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (856, 8, N'Pinheiros')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (857, 8, N'Piúma')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (858, 8, N'Ponto Belo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (859, 8, N'Presidente Kennedy')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (860, 8, N'Rio Bananal')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (861, 8, N'Rio Novo do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (862, 8, N'Santa Leopoldina')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (863, 8, N'Santa Maria de Jetibá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (864, 8, N'Santa Teresa')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (865, 8, N'São Domingos do Norte')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (866, 8, N'São Gabriel da Palha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (867, 8, N'São José do Calçado')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (868, 8, N'São Mateus')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (869, 8, N'São Roque do Canaã')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (870, 8, N'Serra')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (871, 8, N'Sooretama')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (872, 8, N'Vargem Alta')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (873, 8, N'Venda Nova do Imigrante')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (874, 8, N'Viana')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (875, 8, N'Vila Pavão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (876, 8, N'Vila Valério')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (877, 8, N'Vila Velha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (878, 8, N'Vitória')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (879, 9, N'Abadia de Goiás')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (880, 9, N'Abadiânia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (881, 9, N'Acreúna')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (882, 9, N'Adelândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (883, 9, N'Água Fria de Goiás')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (884, 9, N'Água Limpa')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (885, 9, N'Águas Lindas de Goiás')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (886, 9, N'Alexânia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (887, 9, N'Aloândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (888, 9, N'Alto Horizonte')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (889, 9, N'Alto Paraíso de Goiás')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (890, 9, N'Alvorada do Norte')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (891, 9, N'Amaralina')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (892, 9, N'Americano do Brasil')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (893, 9, N'Amorinópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (894, 9, N'Anápolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (895, 9, N'Anhanguera')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (896, 9, N'Anicuns')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (897, 9, N'Aparecida de Goiânia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (898, 9, N'Aparecida do Rio Doce')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (899, 9, N'Aporé')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (900, 9, N'Araçu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (901, 9, N'Aragarças')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (902, 9, N'Aragoiânia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (903, 9, N'Araguapaz')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (904, 9, N'Arenópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (905, 9, N'Aruanã')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (906, 9, N'Aurilândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (907, 9, N'Avelinópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (908, 9, N'Baliza')
GO
print 'Processed 900 total records'
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (909, 9, N'Barro Alto')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (910, 9, N'Bela Vista de Goiás')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (911, 9, N'Bom Jardim de Goiás')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (912, 9, N'Bom Jesus de Goiás')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (913, 9, N'Bonfinópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (914, 9, N'Bonópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (915, 9, N'Brazabrantes')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (916, 9, N'Britânia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (917, 9, N'Buriti Alegre')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (918, 9, N'Buriti de Goiás')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (919, 9, N'Buritinópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (920, 9, N'Cabeceiras')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (921, 9, N'Cachoeira Alta')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (922, 9, N'Cachoeira de Goiás')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (923, 9, N'Cachoeira Dourada')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (924, 9, N'Caçu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (925, 9, N'Caiapônia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (926, 9, N'Caldas Novas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (927, 9, N'Caldazinha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (928, 9, N'Campestre de Goiás')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (929, 9, N'Campinaçu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (930, 9, N'Campinorte')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (931, 9, N'Campo Alegre de Goiás')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (932, 9, N'Campos Belos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (933, 9, N'Campos Verdes')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (934, 9, N'Carmo do Rio Verde')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (935, 9, N'Castelândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (936, 9, N'Catalão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (937, 9, N'Caturaí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (938, 9, N'Cavalcante')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (939, 9, N'Ceres')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (940, 9, N'Cezarina')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (941, 9, N'Chapadão do Céu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (942, 9, N'Cidade Ocidental')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (943, 9, N'Cocalzinho de Goiás')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (944, 9, N'Colinas do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (945, 9, N'Córrego do Ouro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (946, 9, N'Corumbá de Goiás')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (947, 9, N'Corumbaíba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (948, 9, N'Cristalina')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (949, 9, N'Cristianópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (950, 9, N'Crixás')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (951, 9, N'Cromínia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (952, 9, N'Cumari')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (953, 9, N'Damianópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (954, 9, N'Damolândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (955, 9, N'Davinópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (956, 9, N'Diorama')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (957, 9, N'Divinópolis de Goiás')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (958, 9, N'Doverlândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (959, 9, N'Edealina')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (960, 9, N'Edéia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (961, 9, N'Estrela do Norte')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (962, 9, N'Faina')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (963, 9, N'Fazenda Nova')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (964, 9, N'Firminópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (965, 9, N'Flores de Goiás')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (966, 9, N'Formosa')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (967, 9, N'Formoso')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (968, 9, N'Goianápolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (969, 9, N'Goiandira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (970, 9, N'Goianésia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (971, 9, N'Goiânia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (972, 9, N'Goianira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (973, 9, N'Goiás')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (974, 9, N'Goiatuba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (975, 9, N'Gouvelândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (976, 9, N'Guapó')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (977, 9, N'Guaraíta')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (978, 9, N'Guarani de Goiás')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (979, 9, N'Guarinos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (980, 9, N'Heitoraí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (981, 9, N'Hidrolândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (982, 9, N'Hidrolina')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (983, 9, N'Iaciara')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (984, 9, N'Inaciolândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (985, 9, N'Indiara')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (986, 9, N'Inhumas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (987, 9, N'Ipameri')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (988, 9, N'Iporá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (989, 9, N'Israelândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (990, 9, N'Itaberaí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (991, 9, N'Itaguari')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (992, 9, N'Itaguaru')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (993, 9, N'Itajá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (994, 9, N'Itapaci')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (995, 9, N'Itapirapuã')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (996, 9, N'Itapuranga')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (997, 9, N'Itarumã')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (998, 9, N'Itauçu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (999, 9, N'Itumbiara')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1000, 9, N'Ivolândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1001, 9, N'Jandaia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1002, 9, N'Jaraguá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1003, 9, N'Jataí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1004, 9, N'Jaupaci')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1005, 9, N'Jesúpolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1006, 9, N'Joviânia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1007, 9, N'Jussara')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1008, 9, N'Leopoldo de Bulhões')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1009, 9, N'Luziânia')
GO
print 'Processed 1000 total records'
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1010, 9, N'Mairipotaba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1011, 9, N'Mambaí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1012, 9, N'Mara Rosa')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1013, 9, N'Marzagão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1014, 9, N'Matrinchã')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1015, 9, N'Maurilândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1016, 9, N'Mimoso de Goiás')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1017, 9, N'Minaçu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1018, 9, N'Mineiros')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1019, 9, N'Moiporá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1020, 9, N'Monte Alegre de Goiás')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1021, 9, N'Montes Claros de Goiás')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1022, 9, N'Montividiu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1023, 9, N'Montividiu do Norte')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1024, 9, N'Morrinhos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1025, 9, N'Morro Agudo de Goiás')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1026, 9, N'Mossâmedes')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1027, 9, N'Mozarlândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1028, 9, N'Mundo Novo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1029, 9, N'Mutunópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1030, 9, N'Nazário')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1031, 9, N'Nerópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1032, 9, N'Niquelândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1033, 9, N'Nova América')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1034, 9, N'Nova Aurora')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1035, 9, N'Nova Crixás')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1036, 9, N'Nova Glória')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1037, 9, N'Nova Iguaçu de Goiás')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1038, 9, N'Nova Roma')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1039, 9, N'Nova Veneza')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1040, 9, N'Novo Brasil')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1041, 9, N'Novo Gama')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1042, 9, N'Novo Planalto')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1043, 9, N'Orizona')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1044, 9, N'Ouro Verde de Goiás')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1045, 9, N'Ouvidor')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1046, 9, N'Padre Bernardo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1047, 9, N'Palestina de Goiás')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1048, 9, N'Palmeiras de Goiás')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1049, 9, N'Palmelo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1050, 9, N'Palminópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1051, 9, N'Panamá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1052, 9, N'Paranaiguara')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1053, 9, N'Paraúna')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1054, 9, N'Perolândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1055, 9, N'Petrolina de Goiás')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1056, 9, N'Pilar de Goiás')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1057, 9, N'Piracanjuba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1058, 9, N'Piranhas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1059, 9, N'Pirenópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1060, 9, N'Pires do Rio')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1061, 9, N'Planaltina')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1062, 9, N'Pontalina')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1063, 9, N'Porangatu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1064, 9, N'Porteirão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1065, 9, N'Portelândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1066, 9, N'Posse')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1067, 9, N'Professor Jamil')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1068, 9, N'Quirinópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1069, 9, N'Rialma')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1070, 9, N'Rianápolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1071, 9, N'Rio Quente')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1072, 9, N'Rio Verde')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1073, 9, N'Rubiataba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1074, 9, N'Sanclerlândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1075, 9, N'Santa Bárbara de Goiás')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1076, 9, N'Santa Cruz de Goiás')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1077, 9, N'Santa Fé de Goiás')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1078, 9, N'Santa Helena de Goiás')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1079, 9, N'Santa Isabel')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1080, 9, N'Santa Rita do Araguaia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1081, 9, N'Santa Rita do Novo Destino')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1082, 9, N'Santa Rosa de Goiás')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1083, 9, N'Santa Tereza de Goiás')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1084, 9, N'Santa Terezinha de Goiás')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1085, 9, N'Santo Antônio da Barra')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1086, 9, N'Santo Antônio de Goiás')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1087, 9, N'Santo Antônio do Descoberto')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1088, 9, N'São Domingos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1089, 9, N'São Francisco de Goiás')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1090, 9, N'São João d`Aliança')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1091, 9, N'São João da Paraúna')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1092, 9, N'São Luís de Montes Belos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1093, 9, N'São Luíz do Norte')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1094, 9, N'São Miguel do Araguaia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1095, 9, N'São Miguel do Passa Quatro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1096, 9, N'São Patrício')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1097, 9, N'São Simão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1098, 9, N'Senador Canedo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1099, 9, N'Serranópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1100, 9, N'Silvânia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1101, 9, N'Simolândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1102, 9, N'Sítio d`Abadia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1103, 9, N'Taquaral de Goiás')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1104, 9, N'Teresina de Goiás')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1105, 9, N'Terezópolis de Goiás')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1106, 9, N'Três Ranchos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1107, 9, N'Trindade')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1108, 9, N'Trombas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1109, 9, N'Turvânia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1110, 9, N'Turvelândia')
GO
print 'Processed 1100 total records'
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1111, 9, N'Uirapuru')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1112, 9, N'Uruaçu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1113, 9, N'Uruana')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1114, 9, N'Urutaí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1115, 9, N'Valparaíso de Goiás')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1116, 9, N'Varjão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1117, 9, N'Vianópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1118, 9, N'Vicentinópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1119, 9, N'Vila Boa')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1120, 9, N'Vila Propício')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1121, 10, N'Açailândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1122, 10, N'Afonso Cunha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1123, 10, N'Água Doce do Maranhão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1124, 10, N'Alcântara')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1125, 10, N'Aldeias Altas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1126, 10, N'Altamira do Maranhão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1127, 10, N'Alto Alegre do Maranhão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1128, 10, N'Alto Alegre do Pindaré')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1129, 10, N'Alto Parnaíba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1130, 10, N'Amapá do Maranhão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1131, 10, N'Amarante do Maranhão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1132, 10, N'Anajatuba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1133, 10, N'Anapurus')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1134, 10, N'Apicum-Açu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1135, 10, N'Araguanã')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1136, 10, N'Araioses')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1137, 10, N'Arame')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1138, 10, N'Arari')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1139, 10, N'Axixá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1140, 10, N'Bacabal')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1141, 10, N'Bacabeira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1142, 10, N'Bacuri')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1143, 10, N'Bacurituba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1144, 10, N'Balsas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1145, 10, N'Barão de Grajaú')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1146, 10, N'Barra do Corda')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1147, 10, N'Barreirinhas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1148, 10, N'Bela Vista do Maranhão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1149, 10, N'Belágua')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1150, 10, N'Benedito Leite')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1151, 10, N'Bequimão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1152, 10, N'Bernardo do Mearim')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1153, 10, N'Boa Vista do Gurupi')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1154, 10, N'Bom Jardim')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1155, 10, N'Bom Jesus das Selvas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1156, 10, N'Bom Lugar')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1157, 10, N'Brejo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1158, 10, N'Brejo de Areia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1159, 10, N'Buriti')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1160, 10, N'Buriti Bravo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1161, 10, N'Buriticupu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1162, 10, N'Buritirana')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1163, 10, N'Cachoeira Grande')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1164, 10, N'Cajapió')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1165, 10, N'Cajari')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1166, 10, N'Campestre do Maranhão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1167, 10, N'Cândido Mendes')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1168, 10, N'Cantanhede')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1169, 10, N'Capinzal do Norte')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1170, 10, N'Carolina')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1171, 10, N'Carutapera')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1172, 10, N'Caxias')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1173, 10, N'Cedral')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1174, 10, N'Central do Maranhão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1175, 10, N'Centro do Guilherme')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1176, 10, N'Centro Novo do Maranhão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1177, 10, N'Chapadinha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1178, 10, N'Cidelândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1179, 10, N'Codó')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1180, 10, N'Coelho Neto')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1181, 10, N'Colinas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1182, 10, N'Conceição do Lago-Açu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1183, 10, N'Coroatá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1184, 10, N'Cururupu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1185, 10, N'Davinópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1186, 10, N'Dom Pedro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1187, 10, N'Duque Bacelar')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1188, 10, N'Esperantinópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1189, 10, N'Estreito')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1190, 10, N'Feira Nova do Maranhão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1191, 10, N'Fernando Falcão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1192, 10, N'Formosa da Serra Negra')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1193, 10, N'Fortaleza dos Nogueiras')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1194, 10, N'Fortuna')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1195, 10, N'Godofredo Viana')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1196, 10, N'Gonçalves Dias')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1197, 10, N'Governador Archer')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1198, 10, N'Governador Edison Lobão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1199, 10, N'Governador Eugênio Barros')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1200, 10, N'Governador Luiz Rocha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1201, 10, N'Governador Newton Bello')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1202, 10, N'Governador Nunes Freire')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1203, 10, N'Graça Aranha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1204, 10, N'Grajaú')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1205, 10, N'Guimarães')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1206, 10, N'Humberto de Campos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1207, 10, N'Icatu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1208, 10, N'Igarapé do Meio')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1209, 10, N'Igarapé Grande')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1210, 10, N'Imperatriz')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1211, 10, N'Itaipava do Grajaú')
GO
print 'Processed 1200 total records'
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1212, 10, N'Itapecuru Mirim')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1213, 10, N'Itinga do Maranhão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1214, 10, N'Jatobá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1215, 10, N'Jenipapo dos Vieiras')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1216, 10, N'João Lisboa')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1217, 10, N'Joselândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1218, 10, N'Junco do Maranhão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1219, 10, N'Lago da Pedra')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1220, 10, N'Lago do Junco')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1221, 10, N'Lago dos Rodrigues')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1222, 10, N'Lago Verde')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1223, 10, N'Lagoa do Mato')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1224, 10, N'Lagoa Grande do Maranhão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1225, 10, N'Lajeado Novo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1226, 10, N'Lima Campos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1227, 10, N'Loreto')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1228, 10, N'Luís Domingues')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1229, 10, N'Magalhães de Almeida')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1230, 10, N'Maracaçumé')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1231, 10, N'Marajá do Sena')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1232, 10, N'Maranhãozinho')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1233, 10, N'Mata Roma')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1234, 10, N'Matinha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1235, 10, N'Matões')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1236, 10, N'Matões do Norte')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1237, 10, N'Milagres do Maranhão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1238, 10, N'Mirador')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1239, 10, N'Miranda do Norte')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1240, 10, N'Mirinzal')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1241, 10, N'Monção')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1242, 10, N'Montes Altos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1243, 10, N'Morros')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1244, 10, N'Nina Rodrigues')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1245, 10, N'Nova Colinas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1246, 10, N'Nova Iorque')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1247, 10, N'Nova Olinda do Maranhão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1248, 10, N'Olho d`Água das Cunhãs')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1249, 10, N'Olinda Nova do Maranhão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1250, 10, N'Paço do Lumiar')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1251, 10, N'Palmeirândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1252, 10, N'Paraibano')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1253, 10, N'Parnarama')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1254, 10, N'Passagem Franca')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1255, 10, N'Pastos Bons')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1256, 10, N'Paulino Neves')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1257, 10, N'Paulo Ramos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1258, 10, N'Pedreiras')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1259, 10, N'Pedro do Rosário')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1260, 10, N'Penalva')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1261, 10, N'Peri Mirim')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1262, 10, N'Peritoró')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1263, 10, N'Pindaré-Mirim')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1264, 10, N'Pinheiro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1265, 10, N'Pio XII')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1266, 10, N'Pirapemas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1267, 10, N'Poção de Pedras')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1268, 10, N'Porto Franco')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1269, 10, N'Porto Rico do Maranhão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1270, 10, N'Presidente Dutra')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1271, 10, N'Presidente Juscelino')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1272, 10, N'Presidente Médici')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1273, 10, N'Presidente Sarney')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1274, 10, N'Presidente Vargas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1275, 10, N'Primeira Cruz')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1276, 10, N'Raposa')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1277, 10, N'Riachão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1278, 10, N'Ribamar Fiquene')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1279, 10, N'Rosário')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1280, 10, N'Sambaíba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1281, 10, N'Santa Filomena do Maranhão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1282, 10, N'Santa Helena')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1283, 10, N'Santa Inês')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1284, 10, N'Santa Luzia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1285, 10, N'Santa Luzia do Paruá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1286, 10, N'Santa Quitéria do Maranhão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1287, 10, N'Santa Rita')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1288, 10, N'Santana do Maranhão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1289, 10, N'Santo Amaro do Maranhão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1290, 10, N'Santo Antônio dos Lopes')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1291, 10, N'São Benedito do Rio Preto')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1292, 10, N'São Bento')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1293, 10, N'São Bernardo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1294, 10, N'São Domingos do Azeitão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1295, 10, N'São Domingos do Maranhão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1296, 10, N'São Félix de Balsas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1297, 10, N'São Francisco do Brejão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1298, 10, N'São Francisco do Maranhão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1299, 10, N'São João Batista')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1300, 10, N'São João do Carú')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1301, 10, N'São João do Paraíso')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1302, 10, N'São João do Soter')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1303, 10, N'São João dos Patos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1304, 10, N'São José de Ribamar')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1305, 10, N'São José dos Basílios')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1306, 10, N'São Luís')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1307, 10, N'São Luís Gonzaga do Maranhão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1308, 10, N'São Mateus do Maranhão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1309, 10, N'São Pedro da Água Branca')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1310, 10, N'São Pedro dos Crentes')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1311, 10, N'São Raimundo das Mangabeiras')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1312, 10, N'São Raimundo do Doca Bezerra')
GO
print 'Processed 1300 total records'
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1313, 10, N'São Roberto')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1314, 10, N'São Vicente Ferrer')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1315, 10, N'Satubinha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1316, 10, N'Senador Alexandre Costa')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1317, 10, N'Senador La Rocque')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1318, 10, N'Serrano do Maranhão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1319, 10, N'Sítio Novo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1320, 10, N'Sucupira do Norte')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1321, 10, N'Sucupira do Riachão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1322, 10, N'Tasso Fragoso')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1323, 10, N'Timbiras')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1324, 10, N'Timon')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1325, 10, N'Trizidela do Vale')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1326, 10, N'Tufilândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1327, 10, N'Tuntum')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1328, 10, N'Turiaçu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1329, 10, N'Turilândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1330, 10, N'Tutóia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1331, 10, N'Urbano Santos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1332, 10, N'Vargem Grande')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1333, 10, N'Viana')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1334, 10, N'Vila Nova dos Martírios')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1335, 10, N'Vitória do Mearim')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1336, 10, N'Vitorino Freire')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1337, 10, N'Zé Doca')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1338, 11, N'Acorizal')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1339, 11, N'Água Boa')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1340, 11, N'Alta Floresta')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1341, 11, N'Alto Araguaia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1342, 11, N'Alto Boa Vista')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1343, 11, N'Alto Garças')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1344, 11, N'Alto Paraguai')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1345, 11, N'Alto Taquari')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1346, 11, N'Apiacás')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1347, 11, N'Araguaiana')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1348, 11, N'Araguainha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1349, 11, N'Araputanga')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1350, 11, N'Arenápolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1351, 11, N'Aripuanã')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1352, 11, N'Barão de Melgaço')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1353, 11, N'Barra do Bugres')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1354, 11, N'Barra do Garças')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1355, 11, N'Brasnorte')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1356, 11, N'Cáceres')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1357, 11, N'Campinápolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1358, 11, N'Campo Novo do Parecis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1359, 11, N'Campo Verde')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1360, 11, N'Campos de Júlio')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1361, 11, N'Canabrava do Norte')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1362, 11, N'Canarana')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1363, 11, N'Carlinda')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1364, 11, N'Castanheira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1365, 11, N'Chapada dos Guimarães')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1366, 11, N'Cláudia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1367, 11, N'Cocalinho')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1368, 11, N'Colíder')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1369, 11, N'Comodoro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1370, 11, N'Confresa')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1371, 11, N'Cotriguaçu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1372, 11, N'Cuiabá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1373, 11, N'Denise')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1374, 11, N'Diamantino')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1375, 11, N'Dom Aquino')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1376, 11, N'Feliz Natal')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1377, 11, N'Figueirópolis d`Oeste')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1378, 11, N'Gaúcha do Norte')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1379, 11, N'General Carneiro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1380, 11, N'Glória d`Oeste')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1381, 11, N'Guarantã do Norte')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1382, 11, N'Guiratinga')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1383, 11, N'Indiavaí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1384, 11, N'Itaúba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1385, 11, N'Itiquira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1386, 11, N'Jaciara')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1387, 11, N'Jangada')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1388, 11, N'Jauru')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1389, 11, N'Juara')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1390, 11, N'Juína')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1391, 11, N'Juruena')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1392, 11, N'Juscimeira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1393, 11, N'Lambari d`Oeste')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1394, 11, N'Lucas do Rio Verde')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1395, 11, N'Luciára')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1396, 11, N'Marcelândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1397, 11, N'Matupá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1398, 11, N'Mirassol d`Oeste')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1399, 11, N'Nobres')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1400, 11, N'Nortelândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1401, 11, N'Nossa Senhora do Livramento')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1402, 11, N'Nova Bandeirantes')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1403, 11, N'Nova Brasilândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1404, 11, N'Nova Canaã do Norte')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1405, 11, N'Nova Guarita')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1406, 11, N'Nova Lacerda')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1407, 11, N'Nova Marilândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1408, 11, N'Nova Maringá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1409, 11, N'Nova Monte Verde')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1410, 11, N'Nova Mutum')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1411, 11, N'Nova Olímpia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1412, 11, N'Nova Ubiratã')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1413, 11, N'Nova Xavantina')
GO
print 'Processed 1400 total records'
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1414, 11, N'Novo Horizonte do Norte')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1415, 11, N'Novo Mundo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1416, 11, N'Novo São Joaquim')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1417, 11, N'Paranaíta')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1418, 11, N'Paranatinga')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1419, 11, N'Pedra Preta')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1420, 11, N'Peixoto de Azevedo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1421, 11, N'Planalto da Serra')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1422, 11, N'Poconé')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1423, 11, N'Pontal do Araguaia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1424, 11, N'Ponte Branca')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1425, 11, N'Pontes e Lacerda')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1426, 11, N'Porto Alegre do Norte')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1427, 11, N'Porto dos Gaúchos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1428, 11, N'Porto Esperidião')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1429, 11, N'Porto Estrela')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1430, 11, N'Poxoréo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1431, 11, N'Primavera do Leste')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1432, 11, N'Querência')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1433, 11, N'Reserva do Cabaçal')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1434, 11, N'Ribeirão Cascalheira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1435, 11, N'Ribeirãozinho')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1436, 11, N'Rio Branco')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1437, 11, N'Rondonópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1438, 11, N'Rosário Oeste')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1439, 11, N'Salto do Céu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1440, 11, N'Santa Carmem')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1441, 11, N'Santa Terezinha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1442, 11, N'Santo Afonso')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1443, 11, N'Santo Antônio do Leverger')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1444, 11, N'São Félix do Araguaia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1445, 11, N'São José do Povo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1446, 11, N'São José do Rio Claro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1447, 11, N'São José do Xingu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1448, 11, N'São José dos Quatro Marcos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1449, 11, N'São Pedro da Cipa')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1450, 11, N'Sapezal')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1451, 11, N'Sinop')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1452, 11, N'Sorriso')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1453, 11, N'Tabaporã')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1454, 11, N'Tangará da Serra')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1455, 11, N'Tapurah')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1456, 11, N'Terra Nova do Norte')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1457, 11, N'Tesouro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1458, 11, N'Torixoréu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1459, 11, N'União do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1460, 11, N'Várzea Grande')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1461, 11, N'Vera')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1462, 11, N'Vila Bela da Santíssima Trindade')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1463, 11, N'Vila Rica')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1464, 12, N'Água Clara')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1465, 12, N'Alcinópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1466, 12, N'Amambaí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1467, 12, N'Anastácio')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1468, 12, N'Anaurilândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1469, 12, N'Angélica')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1470, 12, N'Antônio João')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1471, 12, N'Aparecida do Taboado')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1472, 12, N'Aquidauana')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1473, 12, N'Aral Moreira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1474, 12, N'Bandeirantes')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1475, 12, N'Bataguassu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1476, 12, N'Bataiporã')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1477, 12, N'Bela Vista')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1478, 12, N'Bodoquena')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1479, 12, N'Bonito')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1480, 12, N'Brasilândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1481, 12, N'Caarapó')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1482, 12, N'Camapuã')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1483, 12, N'Campo Grande')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1484, 12, N'Caracol')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1485, 12, N'Cassilândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1486, 12, N'Chapadão do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1487, 12, N'Corguinho')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1488, 12, N'Coronel Sapucaia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1489, 12, N'Corumbá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1490, 12, N'Costa Rica')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1491, 12, N'Coxim')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1492, 12, N'Deodápolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1493, 12, N'Dois Irmãos do Buriti')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1494, 12, N'Douradina')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1495, 12, N'Dourados')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1496, 12, N'Eldorado')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1497, 12, N'Fátima do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1498, 12, N'Glória de Dourados')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1499, 12, N'Guia Lopes da Laguna')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1500, 12, N'Iguatemi')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1501, 12, N'Inocência')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1502, 12, N'Itaporã')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1503, 12, N'Itaquiraí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1504, 12, N'Ivinhema')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1505, 12, N'Japorã')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1506, 12, N'Jaraguari')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1507, 12, N'Jardim')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1508, 12, N'Jateí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1509, 12, N'Juti')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1510, 12, N'Ladário')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1511, 12, N'Laguna Carapã')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1512, 12, N'Maracaju')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1513, 12, N'Miranda')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1514, 12, N'Mundo Novo')
GO
print 'Processed 1500 total records'
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1515, 12, N'Naviraí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1516, 12, N'Nioaque')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1517, 12, N'Nova Alvorada do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1518, 12, N'Nova Andradina')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1519, 12, N'Novo Horizonte do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1520, 12, N'Paranaíba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1521, 12, N'Paranhos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1522, 12, N'Pedro Gomes')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1523, 12, N'Ponta Porã')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1524, 12, N'Porto Murtinho')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1525, 12, N'Ribas do Rio Pardo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1526, 12, N'Rio Brilhante')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1527, 12, N'Rio Negro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1528, 12, N'Rio Verde de Mato Grosso')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1529, 12, N'Rochedo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1530, 12, N'Santa Rita do Pardo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1531, 12, N'São Gabriel do Oeste')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1532, 12, N'Selvíria')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1533, 12, N'Sete Quedas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1534, 12, N'Sidrolândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1535, 12, N'Sonora')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1536, 12, N'Tacuru')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1537, 12, N'Taquarussu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1538, 12, N'Terenos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1539, 12, N'Três Lagoas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1540, 12, N'Vicentina')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1541, 13, N'Abadia dos Dourados')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1542, 13, N'Abaeté')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1543, 13, N'Abre Campo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1544, 13, N'Acaiaca')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1545, 13, N'Açucena')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1546, 13, N'Água Boa')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1547, 13, N'Água Comprida')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1548, 13, N'Aguanil')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1549, 13, N'Águas Formosas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1550, 13, N'Águas Vermelhas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1551, 13, N'Aimorés')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1552, 13, N'Aiuruoca')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1553, 13, N'Alagoa')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1554, 13, N'Albertina')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1555, 13, N'Além Paraíba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1556, 13, N'Alfenas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1557, 13, N'Alfredo Vasconcelos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1558, 13, N'Almenara')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1559, 13, N'Alpercata')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1560, 13, N'Alpinópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1561, 13, N'Alterosa')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1562, 13, N'Alto Caparaó')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1563, 13, N'Alto Jequitibá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1564, 13, N'Alto Rio Doce')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1565, 13, N'Alvarenga')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1566, 13, N'Alvinópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1567, 13, N'Alvorada de Minas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1568, 13, N'Amparo do Serra')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1569, 13, N'Andradas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1570, 13, N'Andrelândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1571, 13, N'Angelândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1572, 13, N'Antônio Carlos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1573, 13, N'Antônio Dias')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1574, 13, N'Antônio Prado de Minas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1575, 13, N'Araçaí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1576, 13, N'Aracitaba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1577, 13, N'Araçuaí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1578, 13, N'Araguari')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1579, 13, N'Arantina')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1580, 13, N'Araponga')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1581, 13, N'Araporã')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1582, 13, N'Arapuá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1583, 13, N'Araújos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1584, 13, N'Araxá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1585, 13, N'Arceburgo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1586, 13, N'Arcos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1587, 13, N'Areado')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1588, 13, N'Argirita')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1589, 13, N'Aricanduva')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1590, 13, N'Arinos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1591, 13, N'Astolfo Dutra')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1592, 13, N'Ataléia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1593, 13, N'Augusto de Lima')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1594, 13, N'Baependi')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1595, 13, N'Baldim')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1596, 13, N'Bambuí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1597, 13, N'Bandeira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1598, 13, N'Bandeira do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1599, 13, N'Barão de Cocais')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1600, 13, N'Barão de Monte Alto')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1601, 13, N'Barbacena')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1602, 13, N'Barra Longa')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1603, 13, N'Barroso')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1604, 13, N'Bela Vista de Minas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1605, 13, N'Belmiro Braga')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1606, 13, N'Belo Horizonte')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1607, 13, N'Belo Oriente')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1608, 13, N'Belo Vale')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1609, 13, N'Berilo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1610, 13, N'Berizal')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1611, 13, N'Bertópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1612, 13, N'Betim')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1613, 13, N'Bias Fortes')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1614, 13, N'Bicas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1615, 13, N'Biquinhas')
GO
print 'Processed 1600 total records'
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1616, 13, N'Boa Esperança')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1617, 13, N'Bocaina de Minas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1618, 13, N'Bocaiúva')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1619, 13, N'Bom Despacho')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1620, 13, N'Bom Jardim de Minas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1621, 13, N'Bom Jesus da Penha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1622, 13, N'Bom Jesus do Amparo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1623, 13, N'Bom Jesus do Galho')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1624, 13, N'Bom Repouso')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1625, 13, N'Bom Sucesso')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1626, 13, N'Bonfim')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1627, 13, N'Bonfinópolis de Minas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1628, 13, N'Bonito de Minas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1629, 13, N'Borda da Mata')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1630, 13, N'Botelhos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1631, 13, N'Botumirim')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1632, 13, N'Brás Pires')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1633, 13, N'Brasilândia de Minas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1634, 13, N'Brasília de Minas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1635, 13, N'Brasópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1636, 13, N'Braúnas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1637, 13, N'Brumadinho')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1638, 13, N'Bueno Brandão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1639, 13, N'Buenópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1640, 13, N'Bugre')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1641, 13, N'Buritis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1642, 13, N'Buritizeiro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1643, 13, N'Cabeceira Grande')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1644, 13, N'Cabo Verde')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1645, 13, N'Cachoeira da Prata')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1646, 13, N'Cachoeira de Minas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1647, 13, N'Cachoeira de Pajeú')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1648, 13, N'Cachoeira Dourada')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1649, 13, N'Caetanópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1650, 13, N'Caeté')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1651, 13, N'Caiana')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1652, 13, N'Cajuri')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1653, 13, N'Caldas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1654, 13, N'Camacho')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1655, 13, N'Camanducaia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1656, 13, N'Cambuí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1657, 13, N'Cambuquira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1658, 13, N'Campanário')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1659, 13, N'Campanha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1660, 13, N'Campestre')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1661, 13, N'Campina Verde')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1662, 13, N'Campo Azul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1663, 13, N'Campo Belo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1664, 13, N'Campo do Meio')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1665, 13, N'Campo Florido')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1666, 13, N'Campos Altos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1667, 13, N'Campos Gerais')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1668, 13, N'Cana Verde')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1669, 13, N'Canaã')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1670, 13, N'Canápolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1671, 13, N'Candeias')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1672, 13, N'Cantagalo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1673, 13, N'Caparaó')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1674, 13, N'Capela Nova')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1675, 13, N'Capelinha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1676, 13, N'Capetinga')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1677, 13, N'Capim Branco')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1678, 13, N'Capinópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1679, 13, N'Capitão Andrade')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1680, 13, N'Capitão Enéas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1681, 13, N'Capitólio')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1682, 13, N'Caputira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1683, 13, N'Caraí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1684, 13, N'Caranaíba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1685, 13, N'Carandaí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1686, 13, N'Carangola')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1687, 13, N'Caratinga')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1688, 13, N'Carbonita')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1689, 13, N'Careaçu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1690, 13, N'Carlos Chagas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1691, 13, N'Carmésia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1692, 13, N'Carmo da Cachoeira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1693, 13, N'Carmo da Mata')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1694, 13, N'Carmo de Minas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1695, 13, N'Carmo do Cajuru')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1696, 13, N'Carmo do Paranaíba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1697, 13, N'Carmo do Rio Claro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1698, 13, N'Carmópolis de Minas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1699, 13, N'Carneirinho')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1700, 13, N'Carrancas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1701, 13, N'Carvalhópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1702, 13, N'Carvalhos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1703, 13, N'Casa Grande')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1704, 13, N'Cascalho Rico')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1705, 13, N'Cássia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1706, 13, N'Cataguases')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1707, 13, N'Catas Altas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1708, 13, N'Catas Altas da Noruega')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1709, 13, N'Catuji')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1710, 13, N'Catuti')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1711, 13, N'Caxambu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1712, 13, N'Cedro do Abaeté')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1713, 13, N'Central de Minas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1714, 13, N'Centralina')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1715, 13, N'Chácara')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1716, 13, N'Chalé')
GO
print 'Processed 1700 total records'
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1717, 13, N'Chapada do Norte')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1718, 13, N'Chapada Gaúcha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1719, 13, N'Chiador')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1720, 13, N'Cipotânea')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1721, 13, N'Claraval')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1722, 13, N'Claro dos Poções')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1723, 13, N'Cláudio')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1724, 13, N'Coimbra')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1725, 13, N'Coluna')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1726, 13, N'Comendador Gomes')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1727, 13, N'Comercinho')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1728, 13, N'Conceição da Aparecida')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1729, 13, N'Conceição da Barra de Minas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1730, 13, N'Conceição das Alagoas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1731, 13, N'Conceição das Pedras')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1732, 13, N'Conceição de Ipanema')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1733, 13, N'Conceição do Mato Dentro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1734, 13, N'Conceição do Pará')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1735, 13, N'Conceição do Rio Verde')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1736, 13, N'Conceição dos Ouros')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1737, 13, N'Cônego Marinho')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1738, 13, N'Confins')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1739, 13, N'Congonhal')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1740, 13, N'Congonhas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1741, 13, N'Congonhas do Norte')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1742, 13, N'Conquista')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1743, 13, N'Conselheiro Lafaiete')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1744, 13, N'Conselheiro Pena')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1745, 13, N'Consolação')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1746, 13, N'Contagem')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1747, 13, N'Coqueiral')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1748, 13, N'Coração de Jesus')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1749, 13, N'Cordisburgo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1750, 13, N'Cordislândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1751, 13, N'Corinto')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1752, 13, N'Coroaci')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1753, 13, N'Coromandel')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1754, 13, N'Coronel Fabriciano')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1755, 13, N'Coronel Murta')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1756, 13, N'Coronel Pacheco')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1757, 13, N'Coronel Xavier Chaves')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1758, 13, N'Córrego Danta')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1759, 13, N'Córrego do Bom Jesus')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1760, 13, N'Córrego Fundo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1761, 13, N'Córrego Novo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1762, 13, N'Couto de Magalhães de Minas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1763, 13, N'Crisólita')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1764, 13, N'Cristais')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1765, 13, N'Cristália')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1766, 13, N'Cristiano Otoni')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1767, 13, N'Cristina')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1768, 13, N'Crucilândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1769, 13, N'Cruzeiro da Fortaleza')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1770, 13, N'Cruzília')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1771, 13, N'Cuparaque')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1772, 13, N'Curral de Dentro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1773, 13, N'Curvelo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1774, 13, N'Datas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1775, 13, N'Delfim Moreira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1776, 13, N'Delfinópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1777, 13, N'Delta')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1778, 13, N'Descoberto')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1779, 13, N'Desterro de Entre Rios')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1780, 13, N'Desterro do Melo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1781, 13, N'Diamantina')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1782, 13, N'Diogo de Vasconcelos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1783, 13, N'Dionísio')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1784, 13, N'Divinésia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1785, 13, N'Divino')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1786, 13, N'Divino das Laranjeiras')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1787, 13, N'Divinolândia de Minas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1788, 13, N'Divinópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1789, 13, N'Divisa Alegre')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1790, 13, N'Divisa Nova')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1791, 13, N'Divisópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1792, 13, N'Dom Bosco')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1793, 13, N'Dom Cavati')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1794, 13, N'Dom Joaquim')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1795, 13, N'Dom Silvério')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1796, 13, N'Dom Viçoso')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1797, 13, N'Dona Eusébia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1798, 13, N'Dores de Campos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1799, 13, N'Dores de Guanhães')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1800, 13, N'Dores do Indaiá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1801, 13, N'Dores do Turvo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1802, 13, N'Doresópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1803, 13, N'Douradoquara')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1804, 13, N'Durandé')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1805, 13, N'Elói Mendes')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1806, 13, N'Engenheiro Caldas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1807, 13, N'Engenheiro Navarro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1808, 13, N'Entre Folhas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1809, 13, N'Entre Rios de Minas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1810, 13, N'Ervália')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1811, 13, N'Esmeraldas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1812, 13, N'Espera Feliz')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1813, 13, N'Espinosa')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1814, 13, N'Espírito Santo do Dourado')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1815, 13, N'Estiva')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1816, 13, N'Estrela Dalva')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1817, 13, N'Estrela do Indaiá')
GO
print 'Processed 1800 total records'
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1818, 13, N'Estrela do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1819, 13, N'Eugenópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1820, 13, N'Ewbank da Câmara')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1821, 13, N'Extrema')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1822, 13, N'Fama')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1823, 13, N'Faria Lemos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1824, 13, N'Felício dos Santos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1825, 13, N'Felisburgo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1826, 13, N'Felixlândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1827, 13, N'Fernandes Tourinho')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1828, 13, N'Ferros')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1829, 13, N'Fervedouro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1830, 13, N'Florestal')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1831, 13, N'Formiga')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1832, 13, N'Formoso')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1833, 13, N'Fortaleza de Minas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1834, 13, N'Fortuna de Minas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1835, 13, N'Francisco Badaró')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1836, 13, N'Francisco Dumont')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1837, 13, N'Francisco Sá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1838, 13, N'Franciscópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1839, 13, N'Frei Gaspar')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1840, 13, N'Frei Inocêncio')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1841, 13, N'Frei Lagonegro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1842, 13, N'Fronteira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1843, 13, N'Fronteira dos Vales')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1844, 13, N'Fruta de Leite')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1845, 13, N'Frutal')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1846, 13, N'Funilândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1847, 13, N'Galiléia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1848, 13, N'Gameleiras')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1849, 13, N'Glaucilândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1850, 13, N'Goiabeira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1851, 13, N'Goianá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1852, 13, N'Gonçalves')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1853, 13, N'Gonzaga')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1854, 13, N'Gouveia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1855, 13, N'Governador Valadares')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1856, 13, N'Grão Mogol')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1857, 13, N'Grupiara')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1858, 13, N'Guanhães')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1859, 13, N'Guapé')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1860, 13, N'Guaraciaba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1861, 13, N'Guaraciama')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1862, 13, N'Guaranésia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1863, 13, N'Guarani')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1864, 13, N'Guarará')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1865, 13, N'Guarda-Mor')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1866, 13, N'Guaxupé')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1867, 13, N'Guidoval')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1868, 13, N'Guimarânia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1869, 13, N'Guiricema')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1870, 13, N'Gurinhatã')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1871, 13, N'Heliodora')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1872, 13, N'Iapu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1873, 13, N'Ibertioga')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1874, 13, N'Ibiá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1875, 13, N'Ibiaí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1876, 13, N'Ibiracatu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1877, 13, N'Ibiraci')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1878, 13, N'Ibirité')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1879, 13, N'Ibitiúra de Minas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1880, 13, N'Ibituruna')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1881, 13, N'Icaraí de Minas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1882, 13, N'Igarapé')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1883, 13, N'Igaratinga')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1884, 13, N'Iguatama')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1885, 13, N'Ijaci')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1886, 13, N'Ilicínea')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1887, 13, N'Imbé de Minas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1888, 13, N'Inconfidentes')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1889, 13, N'Indaiabira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1890, 13, N'Indianópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1891, 13, N'Ingaí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1892, 13, N'Inhapim')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1893, 13, N'Inhaúma')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1894, 13, N'Inimutaba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1895, 13, N'Ipaba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1896, 13, N'Ipanema')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1897, 13, N'Ipatinga')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1898, 13, N'Ipiaçu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1899, 13, N'Ipuiúna')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1900, 13, N'Iraí de Minas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1901, 13, N'Itabira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1902, 13, N'Itabirinha de Mantena')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1903, 13, N'Itabirito')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1904, 13, N'Itacambira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1905, 13, N'Itacarambi')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1906, 13, N'Itaguara')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1907, 13, N'Itaipé')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1908, 13, N'Itajubá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1909, 13, N'Itamarandiba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1910, 13, N'Itamarati de Minas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1911, 13, N'Itambacuri')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1912, 13, N'Itambé do Mato Dentro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1913, 13, N'Itamogi')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1914, 13, N'Itamonte')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1915, 13, N'Itanhandu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1916, 13, N'Itanhomi')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1917, 13, N'Itaobim')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1918, 13, N'Itapagipe')
GO
print 'Processed 1900 total records'
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1919, 13, N'Itapecerica')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1920, 13, N'Itapeva')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1921, 13, N'Itatiaiuçu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1922, 13, N'Itaú de Minas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1923, 13, N'Itaúna')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1924, 13, N'Itaverava')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1925, 13, N'Itinga')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1926, 13, N'Itueta')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1927, 13, N'Ituiutaba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1928, 13, N'Itumirim')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1929, 13, N'Iturama')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1930, 13, N'Itutinga')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1931, 13, N'Jaboticatubas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1932, 13, N'Jacinto')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1933, 13, N'Jacuí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1934, 13, N'Jacutinga')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1935, 13, N'Jaguaraçu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1936, 13, N'Jaíba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1937, 13, N'Jampruca')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1938, 13, N'Janaúba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1939, 13, N'Januária')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1940, 13, N'Japaraíba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1941, 13, N'Japonvar')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1942, 13, N'Jeceaba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1943, 13, N'Jenipapo de Minas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1944, 13, N'Jequeri')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1945, 13, N'Jequitaí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1946, 13, N'Jequitibá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1947, 13, N'Jequitinhonha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1948, 13, N'Jesuânia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1949, 13, N'Joaíma')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1950, 13, N'Joanésia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1951, 13, N'João Monlevade')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1952, 13, N'João Pinheiro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1953, 13, N'Joaquim Felício')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1954, 13, N'Jordânia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1955, 13, N'José Gonçalves de Minas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1956, 13, N'José Raydan')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1957, 13, N'Josenópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1958, 13, N'Juatuba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1959, 13, N'Juiz de Fora')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1960, 13, N'Juramento')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1961, 13, N'Juruaia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1962, 13, N'Juvenília')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1963, 13, N'Ladainha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1964, 13, N'Lagamar')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1965, 13, N'Lagoa da Prata')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1966, 13, N'Lagoa dos Patos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1967, 13, N'Lagoa Dourada')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1968, 13, N'Lagoa Formosa')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1969, 13, N'Lagoa Grande')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1970, 13, N'Lagoa Santa')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1971, 13, N'Lajinha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1972, 13, N'Lambari')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1973, 13, N'Lamim')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1974, 13, N'Laranjal')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1975, 13, N'Lassance')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1976, 13, N'Lavras')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1977, 13, N'Leandro Ferreira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1978, 13, N'Leme do Prado')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1979, 13, N'Leopoldina')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1980, 13, N'Liberdade')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1981, 13, N'Lima Duarte')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1982, 13, N'Limeira do Oeste')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1983, 13, N'Lontra')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1984, 13, N'Luisburgo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1985, 13, N'Luislândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1986, 13, N'Luminárias')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1987, 13, N'Luz')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1988, 13, N'Machacalis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1989, 13, N'Machado')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1990, 13, N'Madre de Deus de Minas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1991, 13, N'Malacacheta')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1992, 13, N'Mamonas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1993, 13, N'Manga')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1994, 13, N'Manhuaçu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1995, 13, N'Manhumirim')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1996, 13, N'Mantena')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1997, 13, N'Mar de Espanha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1998, 13, N'Maravilhas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (1999, 13, N'Maria da Fé')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2000, 13, N'Mariana')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2001, 13, N'Marilac')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2002, 13, N'Mário Campos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2003, 13, N'Maripá de Minas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2004, 13, N'Marliéria')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2005, 13, N'Marmelópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2006, 13, N'Martinho Campos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2007, 13, N'Martins Soares')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2008, 13, N'Mata Verde')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2009, 13, N'Materlândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2010, 13, N'Mateus Leme')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2011, 13, N'Mathias Lobato')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2012, 13, N'Matias Barbosa')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2013, 13, N'Matias Cardoso')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2014, 13, N'Matipó')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2015, 13, N'Mato Verde')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2016, 13, N'Matozinhos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2017, 13, N'Matutina')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2018, 13, N'Medeiros')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2019, 13, N'Medina')
GO
print 'Processed 2000 total records'
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2020, 13, N'Mendes Pimentel')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2021, 13, N'Mercês')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2022, 13, N'Mesquita')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2023, 13, N'Minas Novas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2024, 13, N'Minduri')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2025, 13, N'Mirabela')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2026, 13, N'Miradouro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2027, 13, N'Miraí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2028, 13, N'Miravânia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2029, 13, N'Moeda')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2030, 13, N'Moema')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2031, 13, N'Monjolos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2032, 13, N'Monsenhor Paulo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2033, 13, N'Montalvânia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2034, 13, N'Monte Alegre de Minas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2035, 13, N'Monte Azul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2036, 13, N'Monte Belo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2037, 13, N'Monte Carmelo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2038, 13, N'Monte Formoso')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2039, 13, N'Monte Santo de Minas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2040, 13, N'Monte Sião')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2041, 13, N'Montes Claros')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2042, 13, N'Montezuma')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2043, 13, N'Morada Nova de Minas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2044, 13, N'Morro da Garça')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2045, 13, N'Morro do Pilar')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2046, 13, N'Munhoz')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2047, 13, N'Muriaé')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2048, 13, N'Mutum')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2049, 13, N'Muzambinho')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2050, 13, N'Nacip Raydan')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2051, 13, N'Nanuque')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2052, 13, N'Naque')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2053, 13, N'Natalândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2054, 13, N'Natércia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2055, 13, N'Nazareno')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2056, 13, N'Nepomuceno')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2057, 13, N'Ninheira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2058, 13, N'Nova Belém')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2059, 13, N'Nova Era')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2060, 13, N'Nova Lima')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2061, 13, N'Nova Módica')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2062, 13, N'Nova Ponte')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2063, 13, N'Nova Porteirinha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2064, 13, N'Nova Resende')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2065, 13, N'Nova Serrana')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2066, 13, N'Nova União')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2067, 13, N'Novo Cruzeiro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2068, 13, N'Novo Oriente de Minas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2069, 13, N'Novorizonte')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2070, 13, N'Olaria')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2071, 13, N'Olhos-d`Água')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2072, 13, N'Olímpio Noronha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2073, 13, N'Oliveira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2074, 13, N'Oliveira Fortes')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2075, 13, N'Onça de Pitangui')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2076, 13, N'Oratórios')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2077, 13, N'Orizânia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2078, 13, N'Ouro Branco')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2079, 13, N'Ouro Fino')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2080, 13, N'Ouro Preto')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2081, 13, N'Ouro Verde de Minas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2082, 13, N'Padre Carvalho')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2083, 13, N'Padre Paraíso')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2084, 13, N'Pai Pedro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2085, 13, N'Paineiras')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2086, 13, N'Pains')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2087, 13, N'Paiva')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2088, 13, N'Palma')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2089, 13, N'Palmópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2090, 13, N'Papagaios')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2091, 13, N'Pará de Minas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2092, 13, N'Paracatu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2093, 13, N'Paraguaçu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2094, 13, N'Paraisópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2095, 13, N'Paraopeba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2096, 13, N'Passa Quatro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2097, 13, N'Passa Tempo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2098, 13, N'Passa-Vinte')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2099, 13, N'Passabém')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2100, 13, N'Passos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2101, 13, N'Patis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2102, 13, N'Patos de Minas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2103, 13, N'Patrocínio')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2104, 13, N'Patrocínio do Muriaé')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2105, 13, N'Paula Cândido')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2106, 13, N'Paulistas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2107, 13, N'Pavão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2108, 13, N'Peçanha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2109, 13, N'Pedra Azul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2110, 13, N'Pedra Bonita')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2111, 13, N'Pedra do Anta')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2112, 13, N'Pedra do Indaiá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2113, 13, N'Pedra Dourada')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2114, 13, N'Pedralva')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2115, 13, N'Pedras de Maria da Cruz')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2116, 13, N'Pedrinópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2117, 13, N'Pedro Leopoldo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2118, 13, N'Pedro Teixeira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2119, 13, N'Pequeri')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2120, 13, N'Pequi')
GO
print 'Processed 2100 total records'
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2121, 13, N'Perdigão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2122, 13, N'Perdizes')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2123, 13, N'Perdões')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2124, 13, N'Periquito')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2125, 13, N'Pescador')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2126, 13, N'Piau')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2127, 13, N'Piedade de Caratinga')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2128, 13, N'Piedade de Ponte Nova')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2129, 13, N'Piedade do Rio Grande')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2130, 13, N'Piedade dos Gerais')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2131, 13, N'Pimenta')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2132, 13, N'Pingo-d`Água')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2133, 13, N'Pintópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2134, 13, N'Piracema')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2135, 13, N'Pirajuba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2136, 13, N'Piranga')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2137, 13, N'Piranguçu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2138, 13, N'Piranguinho')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2139, 13, N'Pirapetinga')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2140, 13, N'Pirapora')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2141, 13, N'Piraúba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2142, 13, N'Pitangui')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2143, 13, N'Piumhi')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2144, 13, N'Planura')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2145, 13, N'Poço Fundo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2146, 13, N'Poços de Caldas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2147, 13, N'Pocrane')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2148, 13, N'Pompéu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2149, 13, N'Ponte Nova')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2150, 13, N'Ponto Chique')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2151, 13, N'Ponto dos Volantes')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2152, 13, N'Porteirinha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2153, 13, N'Porto Firme')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2154, 13, N'Poté')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2155, 13, N'Pouso Alegre')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2156, 13, N'Pouso Alto')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2157, 13, N'Prados')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2158, 13, N'Prata')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2159, 13, N'Pratápolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2160, 13, N'Pratinha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2161, 13, N'Presidente Bernardes')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2162, 13, N'Presidente Juscelino')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2163, 13, N'Presidente Kubitschek')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2164, 13, N'Presidente Olegário')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2165, 13, N'Prudente de Morais')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2166, 13, N'Quartel Geral')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2167, 13, N'Queluzito')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2168, 13, N'Raposos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2169, 13, N'Raul Soares')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2170, 13, N'Recreio')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2171, 13, N'Reduto')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2172, 13, N'Resende Costa')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2173, 13, N'Resplendor')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2174, 13, N'Ressaquinha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2175, 13, N'Riachinho')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2176, 13, N'Riacho dos Machados')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2177, 13, N'Ribeirão das Neves')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2178, 13, N'Ribeirão Vermelho')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2179, 13, N'Rio Acima')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2180, 13, N'Rio Casca')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2181, 13, N'Rio do Prado')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2182, 13, N'Rio Doce')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2183, 13, N'Rio Espera')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2184, 13, N'Rio Manso')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2185, 13, N'Rio Novo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2186, 13, N'Rio Paranaíba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2187, 13, N'Rio Pardo de Minas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2188, 13, N'Rio Piracicaba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2189, 13, N'Rio Pomba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2190, 13, N'Rio Preto')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2191, 13, N'Rio Vermelho')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2192, 13, N'Ritápolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2193, 13, N'Rochedo de Minas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2194, 13, N'Rodeiro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2195, 13, N'Romaria')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2196, 13, N'Rosário da Limeira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2197, 13, N'Rubelita')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2198, 13, N'Rubim')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2199, 13, N'Sabará')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2200, 13, N'Sabinópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2201, 13, N'Sacramento')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2202, 13, N'Salinas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2203, 13, N'Salto da Divisa')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2204, 13, N'Santa Bárbara')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2205, 13, N'Santa Bárbara do Leste')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2206, 13, N'Santa Bárbara do Monte Verde')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2207, 13, N'Santa Bárbara do Tugúrio')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2208, 13, N'Santa Cruz de Minas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2209, 13, N'Santa Cruz de Salinas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2210, 13, N'Santa Cruz do Escalvado')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2211, 13, N'Santa Efigênia de Minas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2212, 13, N'Santa Fé de Minas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2213, 13, N'Santa Helena de Minas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2214, 13, N'Santa Juliana')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2215, 13, N'Santa Luzia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2216, 13, N'Santa Margarida')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2217, 13, N'Santa Maria de Itabira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2218, 13, N'Santa Maria do Salto')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2219, 13, N'Santa Maria do Suaçuí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2220, 13, N'Santa Rita de Caldas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2221, 13, N'Santa Rita de Ibitipoca')
GO
print 'Processed 2200 total records'
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2222, 13, N'Santa Rita de Jacutinga')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2223, 13, N'Santa Rita de Minas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2224, 13, N'Santa Rita do Itueto')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2225, 13, N'Santa Rita do Sapucaí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2226, 13, N'Santa Rosa da Serra')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2227, 13, N'Santa Vitória')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2228, 13, N'Santana da Vargem')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2229, 13, N'Santana de Cataguases')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2230, 13, N'Santana de Pirapama')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2231, 13, N'Santana do Deserto')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2232, 13, N'Santana do Garambéu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2233, 13, N'Santana do Jacaré')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2234, 13, N'Santana do Manhuaçu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2235, 13, N'Santana do Paraíso')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2236, 13, N'Santana do Riacho')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2237, 13, N'Santana dos Montes')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2238, 13, N'Santo Antônio do Amparo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2239, 13, N'Santo Antônio do Aventureiro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2240, 13, N'Santo Antônio do Grama')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2241, 13, N'Santo Antônio do Itambé')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2242, 13, N'Santo Antônio do Jacinto')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2243, 13, N'Santo Antônio do Monte')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2244, 13, N'Santo Antônio do Retiro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2245, 13, N'Santo Antônio do Rio Abaixo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2246, 13, N'Santo Hipólito')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2247, 13, N'Santos Dumont')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2248, 13, N'São Bento Abade')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2249, 13, N'São Brás do Suaçuí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2250, 13, N'São Domingos das Dores')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2251, 13, N'São Domingos do Prata')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2252, 13, N'São Félix de Minas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2253, 13, N'São Francisco')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2254, 13, N'São Francisco de Paula')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2255, 13, N'São Francisco de Sales')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2256, 13, N'São Francisco do Glória')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2257, 13, N'São Geraldo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2258, 13, N'São Geraldo da Piedade')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2259, 13, N'São Geraldo do Baixio')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2260, 13, N'São Gonçalo do Abaeté')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2261, 13, N'São Gonçalo do Pará')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2262, 13, N'São Gonçalo do Rio Abaixo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2263, 13, N'São Gonçalo do Rio Preto')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2264, 13, N'São Gonçalo do Sapucaí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2265, 13, N'São Gotardo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2266, 13, N'São João Batista do Glória')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2267, 13, N'São João da Lagoa')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2268, 13, N'São João da Mata')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2269, 13, N'São João da Ponte')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2270, 13, N'São João das Missões')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2271, 13, N'São João del Rei')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2272, 13, N'São João do Manhuaçu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2273, 13, N'São João do Manteninha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2274, 13, N'São João do Oriente')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2275, 13, N'São João do Pacuí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2276, 13, N'São João do Paraíso')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2277, 13, N'São João Evangelista')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2278, 13, N'São João Nepomuceno')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2279, 13, N'São Joaquim de Bicas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2280, 13, N'São José da Barra')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2281, 13, N'São José da Lapa')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2282, 13, N'São José da Safira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2283, 13, N'São José da Varginha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2284, 13, N'São José do Alegre')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2285, 13, N'São José do Divino')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2286, 13, N'São José do Goiabal')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2287, 13, N'São José do Jacuri')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2288, 13, N'São José do Mantimento')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2289, 13, N'São Lourenço')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2290, 13, N'São Miguel do Anta')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2291, 13, N'São Pedro da União')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2292, 13, N'São Pedro do Suaçuí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2293, 13, N'São Pedro dos Ferros')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2294, 13, N'São Romão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2295, 13, N'São Roque de Minas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2296, 13, N'São Sebastião da Bela Vista')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2297, 13, N'São Sebastião da Vargem Alegre')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2298, 13, N'São Sebastião do Anta')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2299, 13, N'São Sebastião do Maranhão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2300, 13, N'São Sebastião do Oeste')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2301, 13, N'São Sebastião do Paraíso')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2302, 13, N'São Sebastião do Rio Preto')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2303, 13, N'São Sebastião do Rio Verde')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2304, 13, N'São Thomé das Letras')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2305, 13, N'São Tiago')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2306, 13, N'São Tomás de Aquino')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2307, 13, N'São Vicente de Minas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2308, 13, N'Sapucaí-Mirim')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2309, 13, N'Sardoá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2310, 13, N'Sarzedo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2311, 13, N'Sem-Peixe')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2312, 13, N'Senador Amaral')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2313, 13, N'Senador Cortes')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2314, 13, N'Senador Firmino')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2315, 13, N'Senador José Bento')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2316, 13, N'Senador Modestino Gonçalves')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2317, 13, N'Senhora de Oliveira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2318, 13, N'Senhora do Porto')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2319, 13, N'Senhora dos Remédios')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2320, 13, N'Sericita')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2321, 13, N'Seritinga')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2322, 13, N'Serra Azul de Minas')
GO
print 'Processed 2300 total records'
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2323, 13, N'Serra da Saudade')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2324, 13, N'Serra do Salitre')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2325, 13, N'Serra dos Aimorés')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2326, 13, N'Serrania')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2327, 13, N'Serranópolis de Minas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2328, 13, N'Serranos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2329, 13, N'Serro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2330, 13, N'Sete Lagoas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2331, 13, N'Setubinha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2332, 13, N'Silveirânia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2333, 13, N'Silvianópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2334, 13, N'Simão Pereira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2335, 13, N'Simonésia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2336, 13, N'Sobrália')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2337, 13, N'Soledade de Minas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2338, 13, N'Tabuleiro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2339, 13, N'Taiobeiras')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2340, 13, N'Taparuba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2341, 13, N'Tapira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2342, 13, N'Tapiraí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2343, 13, N'Taquaraçu de Minas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2344, 13, N'Tarumirim')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2345, 13, N'Teixeiras')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2346, 13, N'Teófilo Otoni')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2347, 13, N'Timóteo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2348, 13, N'Tiradentes')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2349, 13, N'Tiros')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2350, 13, N'Tocantins')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2351, 13, N'Tocos do Moji')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2352, 13, N'Toledo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2353, 13, N'Tombos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2354, 13, N'Três Corações')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2355, 13, N'Três Marias')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2356, 13, N'Três Pontas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2357, 13, N'Tumiritinga')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2358, 13, N'Tupaciguara')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2359, 13, N'Turmalina')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2360, 13, N'Turvolândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2361, 13, N'Ubá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2362, 13, N'Ubaí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2363, 13, N'Ubaporanga')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2364, 13, N'Uberaba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2365, 13, N'Uberlândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2366, 13, N'Umburatiba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2367, 13, N'Unaí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2368, 13, N'União de Minas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2369, 13, N'Uruana de Minas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2370, 13, N'Urucânia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2371, 13, N'Urucuia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2372, 13, N'Vargem Alegre')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2373, 13, N'Vargem Bonita')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2374, 13, N'Vargem Grande do Rio Pardo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2375, 13, N'Varginha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2376, 13, N'Varjão de Minas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2377, 13, N'Várzea da Palma')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2378, 13, N'Varzelândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2379, 13, N'Vazante')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2380, 13, N'Verdelândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2381, 13, N'Veredinha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2382, 13, N'Veríssimo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2383, 13, N'Vermelho Novo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2384, 13, N'Vespasiano')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2385, 13, N'Viçosa')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2386, 13, N'Vieiras')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2387, 13, N'Virgem da Lapa')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2388, 13, N'Virgínia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2389, 13, N'Virginópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2390, 13, N'Virgolândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2391, 13, N'Visconde do Rio Branco')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2392, 13, N'Volta Grande')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2393, 13, N'Wenceslau Braz')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2394, 14, N'Abaetetuba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2395, 14, N'Abel Figueiredo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2396, 14, N'Acará')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2397, 14, N'Afuá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2398, 14, N'Água Azul do Norte')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2399, 14, N'Alenquer')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2400, 14, N'Almeirim')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2401, 14, N'Altamira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2402, 14, N'Anajás')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2403, 14, N'Ananindeua')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2404, 14, N'Anapu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2405, 14, N'Augusto Corrêa')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2406, 14, N'Aurora do Pará')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2407, 14, N'Aveiro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2408, 14, N'Bagre')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2409, 14, N'Baião')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2410, 14, N'Bannach')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2411, 14, N'Barcarena')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2412, 14, N'Belém')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2413, 14, N'Belterra')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2414, 14, N'Benevides')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2415, 14, N'Bom Jesus do Tocantins')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2416, 14, N'Bonito')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2417, 14, N'Bragança')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2418, 14, N'Brasil Novo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2419, 14, N'Brejo Grande do Araguaia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2420, 14, N'Breu Branco')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2421, 14, N'Breves')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2422, 14, N'Bujaru')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2423, 14, N'Cachoeira do Arari')
GO
print 'Processed 2400 total records'
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2424, 14, N'Cachoeira do Piriá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2425, 14, N'Cametá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2426, 14, N'Canaã dos Carajás')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2427, 14, N'Capanema')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2428, 14, N'Capitão Poço')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2429, 14, N'Castanhal')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2430, 14, N'Chaves')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2431, 14, N'Colares')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2432, 14, N'Conceição do Araguaia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2433, 14, N'Concórdia do Pará')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2434, 14, N'Cumaru do Norte')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2435, 14, N'Curionópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2436, 14, N'Curralinho')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2437, 14, N'Curuá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2438, 14, N'Curuçá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2439, 14, N'Dom Eliseu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2440, 14, N'Eldorado dos Carajás')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2441, 14, N'Faro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2442, 14, N'Floresta do Araguaia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2443, 14, N'Garrafão do Norte')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2444, 14, N'Goianésia do Pará')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2445, 14, N'Gurupá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2446, 14, N'Igarapé-Açu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2447, 14, N'Igarapé-Miri')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2448, 14, N'Inhangapi')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2449, 14, N'Ipixuna do Pará')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2450, 14, N'Irituia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2451, 14, N'Itaituba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2452, 14, N'Itupiranga')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2453, 14, N'Jacareacanga')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2454, 14, N'Jacundá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2455, 14, N'Juruti')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2456, 14, N'Limoeiro do Ajuru')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2457, 14, N'Mãe do Rio')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2458, 14, N'Magalhães Barata')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2459, 14, N'Marabá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2460, 14, N'Maracanã')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2461, 14, N'Marapanim')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2462, 14, N'Marituba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2463, 14, N'Medicilândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2464, 14, N'Melgaço')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2465, 14, N'Mocajuba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2466, 14, N'Moju')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2467, 14, N'Monte Alegre')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2468, 14, N'Muaná')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2469, 14, N'Nova Esperança do Piriá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2470, 14, N'Nova Ipixuna')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2471, 14, N'Nova Timboteua')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2472, 14, N'Novo Progresso')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2473, 14, N'Novo Repartimento')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2474, 14, N'Óbidos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2475, 14, N'Oeiras do Pará')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2476, 14, N'Oriximiná')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2477, 14, N'Ourém')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2478, 14, N'Ourilândia do Norte')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2479, 14, N'Pacajá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2480, 14, N'Palestina do Pará')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2481, 14, N'Paragominas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2482, 14, N'Parauapebas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2483, 14, N'Pau d`Arco')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2484, 14, N'Peixe-Boi')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2485, 14, N'Piçarra')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2486, 14, N'Placas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2487, 14, N'Ponta de Pedras')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2488, 14, N'Portel')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2489, 14, N'Porto de Moz')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2490, 14, N'Prainha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2491, 14, N'Primavera')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2492, 14, N'Quatipuru')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2493, 14, N'Redenção')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2494, 14, N'Rio Maria')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2495, 14, N'Rondon do Pará')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2496, 14, N'Rurópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2497, 14, N'Salinópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2498, 14, N'Salvaterra')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2499, 14, N'Santa Bárbara do Pará')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2500, 14, N'Santa Cruz do Arari')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2501, 14, N'Santa Isabel do Pará')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2502, 14, N'Santa Luzia do Pará')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2503, 14, N'Santa Maria das Barreiras')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2504, 14, N'Santa Maria do Pará')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2505, 14, N'Santana do Araguaia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2506, 14, N'Santarém')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2507, 14, N'Santarém Novo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2508, 14, N'Santo Antônio do Tauá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2509, 14, N'São Caetano de Odivelas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2510, 14, N'São Domingos do Araguaia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2511, 14, N'São Domingos do Capim')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2512, 14, N'São Félix do Xingu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2513, 14, N'São Francisco do Pará')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2514, 14, N'São Geraldo do Araguaia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2515, 14, N'São João da Ponta')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2516, 14, N'São João de Pirabas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2517, 14, N'São João do Araguaia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2518, 14, N'São Miguel do Guamá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2519, 14, N'São Sebastião da Boa Vista')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2520, 14, N'Sapucaia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2521, 14, N'Senador José Porfírio')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2522, 14, N'Soure')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2523, 14, N'Tailândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2524, 14, N'Terra Alta')
GO
print 'Processed 2500 total records'
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2525, 14, N'Terra Santa')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2526, 14, N'Tomé-Açu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2527, 14, N'Tracuateua')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2528, 14, N'Trairão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2529, 14, N'Tucumã')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2530, 14, N'Tucuruí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2531, 14, N'Ulianópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2532, 14, N'Uruará')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2533, 14, N'Vigia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2534, 14, N'Viseu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2535, 14, N'Vitória do Xingu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2536, 14, N'Xinguara')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2537, 15, N'Água Branca')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2538, 15, N'Aguiar')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2539, 15, N'Alagoa Grande')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2540, 15, N'Alagoa Nova')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2541, 15, N'Alagoinha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2542, 15, N'Alcantil')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2543, 15, N'Algodão de Jandaíra')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2544, 15, N'Alhandra')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2545, 15, N'Amparo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2546, 15, N'Aparecida')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2547, 15, N'Araçagi')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2548, 15, N'Arara')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2549, 15, N'Araruna')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2550, 15, N'Areia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2551, 15, N'Areia de Baraúnas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2552, 15, N'Areial')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2553, 15, N'Aroeiras')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2554, 15, N'Assunção')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2555, 15, N'Baía da Traição')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2556, 15, N'Bananeiras')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2557, 15, N'Baraúna')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2558, 15, N'Barra de Santa Rosa')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2559, 15, N'Barra de Santana')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2560, 15, N'Barra de São Miguel')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2561, 15, N'Bayeux')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2562, 15, N'Belém')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2563, 15, N'Belém do Brejo do Cruz')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2564, 15, N'Bernardino Batista')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2565, 15, N'Boa Ventura')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2566, 15, N'Boa Vista')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2567, 15, N'Bom Jesus')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2568, 15, N'Bom Sucesso')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2569, 15, N'Bonito de Santa Fé')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2570, 15, N'Boqueirão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2571, 15, N'Borborema')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2572, 15, N'Brejo do Cruz')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2573, 15, N'Brejo dos Santos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2574, 15, N'Caaporã')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2575, 15, N'Cabaceiras')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2576, 15, N'Cabedelo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2577, 15, N'Cachoeira dos Índios')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2578, 15, N'Cacimba de Areia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2579, 15, N'Cacimba de Dentro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2580, 15, N'Cacimbas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2581, 15, N'Caiçara')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2582, 15, N'Cajazeiras')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2583, 15, N'Cajazeirinhas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2584, 15, N'Caldas Brandão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2585, 15, N'Camalaú')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2586, 15, N'Campina Grande')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2587, 15, N'Campo de Santana')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2588, 15, N'Capim')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2589, 15, N'Caraúbas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2590, 15, N'Carrapateira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2591, 15, N'Casserengue')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2592, 15, N'Catingueira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2593, 15, N'Catolé do Rocha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2594, 15, N'Caturité')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2595, 15, N'Conceição')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2596, 15, N'Condado')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2597, 15, N'Conde')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2598, 15, N'Congo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2599, 15, N'Coremas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2600, 15, N'Coxixola')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2601, 15, N'Cruz do Espírito Santo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2602, 15, N'Cubati')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2603, 15, N'Cuité')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2604, 15, N'Cuité de Mamanguape')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2605, 15, N'Cuitegi')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2606, 15, N'Curral de Cima')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2607, 15, N'Curral Velho')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2608, 15, N'Damião')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2609, 15, N'Desterro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2610, 15, N'Diamante')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2611, 15, N'Dona Inês')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2612, 15, N'Duas Estradas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2613, 15, N'Emas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2614, 15, N'Esperança')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2615, 15, N'Fagundes')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2616, 15, N'Frei Martinho')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2617, 15, N'Gado Bravo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2618, 15, N'Guarabira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2619, 15, N'Gurinhém')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2620, 15, N'Gurjão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2621, 15, N'Ibiara')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2622, 15, N'Igaracy')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2623, 15, N'Imaculada')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2624, 15, N'Ingá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2625, 15, N'Itabaiana')
GO
print 'Processed 2600 total records'
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2626, 15, N'Itaporanga')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2627, 15, N'Itapororoca')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2628, 15, N'Itatuba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2629, 15, N'Jacaraú')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2630, 15, N'Jericó')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2631, 15, N'João Pessoa')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2632, 15, N'Juarez Távora')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2633, 15, N'Juazeirinho')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2634, 15, N'Junco do Seridó')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2635, 15, N'Juripiranga')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2636, 15, N'Juru')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2637, 15, N'Lagoa')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2638, 15, N'Lagoa de Dentro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2639, 15, N'Lagoa Seca')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2640, 15, N'Lastro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2641, 15, N'Livramento')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2642, 15, N'Logradouro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2643, 15, N'Lucena')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2644, 15, N'Mãe d`Água')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2645, 15, N'Malta')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2646, 15, N'Mamanguape')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2647, 15, N'Manaíra')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2648, 15, N'Marcação')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2649, 15, N'Mari')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2650, 15, N'Marizópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2651, 15, N'Massaranduba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2652, 15, N'Mataraca')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2653, 15, N'Matinhas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2654, 15, N'Mato Grosso')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2655, 15, N'Maturéia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2656, 15, N'Mogeiro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2657, 15, N'Montadas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2658, 15, N'Monte Horebe')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2659, 15, N'Monteiro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2660, 15, N'Mulungu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2661, 15, N'Natuba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2662, 15, N'Nazarezinho')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2663, 15, N'Nova Floresta')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2664, 15, N'Nova Olinda')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2665, 15, N'Nova Palmeira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2666, 15, N'Olho d`Água')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2667, 15, N'Olivedos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2668, 15, N'Ouro Velho')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2669, 15, N'Parari')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2670, 15, N'Passagem')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2671, 15, N'Patos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2672, 15, N'Paulista')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2673, 15, N'Pedra Branca')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2674, 15, N'Pedra Lavrada')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2675, 15, N'Pedras de Fogo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2676, 15, N'Pedro Régis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2677, 15, N'Piancó')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2678, 15, N'Picuí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2679, 15, N'Pilar')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2680, 15, N'Pilões')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2681, 15, N'Pilõezinhos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2682, 15, N'Pirpirituba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2683, 15, N'Pitimbu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2684, 15, N'Pocinhos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2685, 15, N'Poço Dantas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2686, 15, N'Poço de José de Moura')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2687, 15, N'Pombal')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2688, 15, N'Prata')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2689, 15, N'Princesa Isabel')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2690, 15, N'Puxinanã')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2691, 15, N'Queimadas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2692, 15, N'Quixabá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2693, 15, N'Remígio')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2694, 15, N'Riachão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2695, 15, N'Riachão do Bacamarte')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2696, 15, N'Riachão do Poço')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2697, 15, N'Riacho de Santo Antônio')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2698, 15, N'Riacho dos Cavalos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2699, 15, N'Rio Tinto')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2700, 15, N'Salgadinho')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2701, 15, N'Salgado de São Félix')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2702, 15, N'Santa Cecília')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2703, 15, N'Santa Cruz')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2704, 15, N'Santa Helena')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2705, 15, N'Santa Inês')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2706, 15, N'Santa Luzia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2707, 15, N'Santa Rita')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2708, 15, N'Santa Teresinha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2709, 15, N'Santana de Mangueira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2710, 15, N'Santana dos Garrotes')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2711, 15, N'Santarém')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2712, 15, N'Santo André')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2713, 15, N'São Bentinho')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2714, 15, N'São Bento')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2715, 15, N'São Domingos de Pombal')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2716, 15, N'São Domingos do Cariri')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2717, 15, N'São Francisco')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2718, 15, N'São João do Cariri')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2719, 15, N'São João do Rio do Peixe')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2720, 15, N'São João do Tigre')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2721, 15, N'São José da Lagoa Tapada')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2722, 15, N'São José de Caiana')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2723, 15, N'São José de Espinharas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2724, 15, N'São José de Piranhas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2725, 15, N'São José de Princesa')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2726, 15, N'São José do Bonfim')
GO
print 'Processed 2700 total records'
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2727, 15, N'São José do Brejo do Cruz')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2728, 15, N'São José do Sabugi')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2729, 15, N'São José dos Cordeiros')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2730, 15, N'São José dos Ramos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2731, 15, N'São Mamede')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2732, 15, N'São Miguel de Taipu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2733, 15, N'São Sebastião de Lagoa de Roça')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2734, 15, N'São Sebastião do Umbuzeiro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2735, 15, N'Sapé')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2736, 15, N'Seridó')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2737, 15, N'Serra Branca')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2738, 15, N'Serra da Raiz')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2739, 15, N'Serra Grande')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2740, 15, N'Serra Redonda')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2741, 15, N'Serraria')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2742, 15, N'Sertãozinho')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2743, 15, N'Sobrado')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2744, 15, N'Solânea')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2745, 15, N'Soledade')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2746, 15, N'Sossêgo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2747, 15, N'Sousa')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2748, 15, N'Sumé')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2749, 15, N'Taperoá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2750, 15, N'Tavares')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2751, 15, N'Teixeira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2752, 15, N'Tenório')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2753, 15, N'Triunfo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2754, 15, N'Uiraúna')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2755, 15, N'Umbuzeiro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2756, 15, N'Várzea')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2757, 15, N'Vieirópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2758, 15, N'Vista Serrana')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2759, 15, N'Zabelê')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2760, 16, N'Abatiá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2761, 16, N'Adrianópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2762, 16, N'Agudos do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2763, 16, N'Almirante Tamandaré')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2764, 16, N'Altamira do Paraná')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2765, 16, N'Alto Paraná')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2766, 16, N'Alto Piquiri')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2767, 16, N'Altônia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2768, 16, N'Alvorada do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2769, 16, N'Amaporã')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2770, 16, N'Ampére')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2771, 16, N'Anahy')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2772, 16, N'Andirá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2773, 16, N'Ângulo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2774, 16, N'Antonina')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2775, 16, N'Antônio Olinto')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2776, 16, N'Apucarana')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2777, 16, N'Arapongas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2778, 16, N'Arapoti')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2779, 16, N'Arapuã')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2780, 16, N'Araruna')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2781, 16, N'Araucária')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2782, 16, N'Ariranha do Ivaí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2783, 16, N'Assaí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2784, 16, N'Assis Chateaubriand')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2785, 16, N'Astorga')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2786, 16, N'Atalaia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2787, 16, N'Balsa Nova')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2788, 16, N'Bandeirantes')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2789, 16, N'Barbosa Ferraz')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2790, 16, N'Barra do Jacaré')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2791, 16, N'Barracão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2792, 16, N'Bela Vista da Caroba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2793, 16, N'Bela Vista do Paraíso')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2794, 16, N'Bituruna')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2795, 16, N'Boa Esperança')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2796, 16, N'Boa Esperança do Iguaçu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2797, 16, N'Boa Ventura de São Roque')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2798, 16, N'Boa Vista da Aparecida')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2799, 16, N'Bocaiúva do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2800, 16, N'Bom Jesus do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2801, 16, N'Bom Sucesso')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2802, 16, N'Bom Sucesso do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2803, 16, N'Borrazópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2804, 16, N'Braganey')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2805, 16, N'Brasilândia do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2806, 16, N'Cafeara')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2807, 16, N'Cafelândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2808, 16, N'Cafezal do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2809, 16, N'Califórnia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2810, 16, N'Cambará')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2811, 16, N'Cambé')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2812, 16, N'Cambira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2813, 16, N'Campina da Lagoa')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2814, 16, N'Campina do Simão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2815, 16, N'Campina Grande do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2816, 16, N'Campo Bonito')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2817, 16, N'Campo do Tenente')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2818, 16, N'Campo Largo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2819, 16, N'Campo Magro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2820, 16, N'Campo Mourão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2821, 16, N'Cândido de Abreu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2822, 16, N'Candói')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2823, 16, N'Cantagalo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2824, 16, N'Capanema')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2825, 16, N'Capitão Leônidas Marques')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2826, 16, N'Carambeí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2827, 16, N'Carlópolis')
GO
print 'Processed 2800 total records'
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2828, 16, N'Cascavel')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2829, 16, N'Castro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2830, 16, N'Catanduvas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2831, 16, N'Centenário do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2832, 16, N'Cerro Azul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2833, 16, N'Céu Azul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2834, 16, N'Chopinzinho')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2835, 16, N'Cianorte')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2836, 16, N'Cidade Gaúcha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2837, 16, N'Clevelândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2838, 16, N'Colombo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2839, 16, N'Colorado')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2840, 16, N'Congonhinhas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2841, 16, N'Conselheiro Mairinck')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2842, 16, N'Contenda')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2843, 16, N'Corbélia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2844, 16, N'Cornélio Procópio')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2845, 16, N'Coronel Domingos Soares')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2846, 16, N'Coronel Vivida')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2847, 16, N'Corumbataí do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2848, 16, N'Cruz Machado')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2849, 16, N'Cruzeiro do Iguaçu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2850, 16, N'Cruzeiro do Oeste')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2851, 16, N'Cruzeiro do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2852, 16, N'Cruzmaltina')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2853, 16, N'Curitiba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2854, 16, N'Curiúva')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2855, 16, N'Diamante d`Oeste')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2856, 16, N'Diamante do Norte')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2857, 16, N'Diamante do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2858, 16, N'Dois Vizinhos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2859, 16, N'Douradina')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2860, 16, N'Doutor Camargo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2861, 16, N'Doutor Ulysses')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2862, 16, N'Enéas Marques')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2863, 16, N'Engenheiro Beltrão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2864, 16, N'Entre Rios do Oeste')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2865, 16, N'Esperança Nova')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2866, 16, N'Espigão Alto do Iguaçu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2867, 16, N'Farol')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2868, 16, N'Faxinal')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2869, 16, N'Fazenda Rio Grande')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2870, 16, N'Fênix')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2871, 16, N'Fernandes Pinheiro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2872, 16, N'Figueira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2873, 16, N'Flor da Serra do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2874, 16, N'Floraí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2875, 16, N'Floresta')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2876, 16, N'Florestópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2877, 16, N'Flórida')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2878, 16, N'Formosa do Oeste')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2879, 16, N'Foz do Iguaçu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2880, 16, N'Foz do Jordão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2881, 16, N'Francisco Alves')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2882, 16, N'Francisco Beltrão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2883, 16, N'General Carneiro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2884, 16, N'Godoy Moreira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2885, 16, N'Goioerê')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2886, 16, N'Goioxim')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2887, 16, N'Grandes Rios')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2888, 16, N'Guaíra')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2889, 16, N'Guairaçá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2890, 16, N'Guamiranga')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2891, 16, N'Guapirama')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2892, 16, N'Guaporema')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2893, 16, N'Guaraci')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2894, 16, N'Guaraniaçu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2895, 16, N'Guarapuava')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2896, 16, N'Guaraqueçaba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2897, 16, N'Guaratuba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2898, 16, N'Honório Serpa')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2899, 16, N'Ibaiti')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2900, 16, N'Ibema')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2901, 16, N'Ibiporã')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2902, 16, N'Icaraíma')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2903, 16, N'Iguaraçu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2904, 16, N'Iguatu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2905, 16, N'Imbaú')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2906, 16, N'Imbituva')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2907, 16, N'Inácio Martins')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2908, 16, N'Inajá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2909, 16, N'Indianópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2910, 16, N'Ipiranga')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2911, 16, N'Iporã')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2912, 16, N'Iracema do Oeste')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2913, 16, N'Irati')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2914, 16, N'Iretama')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2915, 16, N'Itaguajé')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2916, 16, N'Itaipulândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2917, 16, N'Itambaracá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2918, 16, N'Itambé')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2919, 16, N'Itapejara d`Oeste')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2920, 16, N'Itaperuçu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2921, 16, N'Itaúna do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2922, 16, N'Ivaí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2923, 16, N'Ivaiporã')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2924, 16, N'Ivaté')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2925, 16, N'Ivatuba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2926, 16, N'Jaboti')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2927, 16, N'Jacarezinho')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2928, 16, N'Jaguapitã')
GO
print 'Processed 2900 total records'
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2929, 16, N'Jaguariaíva')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2930, 16, N'Jandaia do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2931, 16, N'Janiópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2932, 16, N'Japira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2933, 16, N'Japurá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2934, 16, N'Jardim Alegre')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2935, 16, N'Jardim Olinda')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2936, 16, N'Jataizinho')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2937, 16, N'Jesuítas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2938, 16, N'Joaquim Távora')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2939, 16, N'Jundiaí do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2940, 16, N'Juranda')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2941, 16, N'Jussara')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2942, 16, N'Kaloré')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2943, 16, N'Lapa')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2944, 16, N'Laranjal')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2945, 16, N'Laranjeiras do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2946, 16, N'Leópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2947, 16, N'Lidianópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2948, 16, N'Lindoeste')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2949, 16, N'Loanda')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2950, 16, N'Lobato')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2951, 16, N'Londrina')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2952, 16, N'Luiziana')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2953, 16, N'Lunardelli')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2954, 16, N'Lupionópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2955, 16, N'Mallet')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2956, 16, N'Mamborê')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2957, 16, N'Mandaguaçu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2958, 16, N'Mandaguari')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2959, 16, N'Mandirituba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2960, 16, N'Manfrinópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2961, 16, N'Mangueirinha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2962, 16, N'Manoel Ribas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2963, 16, N'Marechal Cândido Rondon')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2964, 16, N'Maria Helena')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2965, 16, N'Marialva')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2966, 16, N'Marilândia do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2967, 16, N'Marilena')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2968, 16, N'Mariluz')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2969, 16, N'Maringá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2970, 16, N'Mariópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2971, 16, N'Maripá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2972, 16, N'Marmeleiro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2973, 16, N'Marquinho')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2974, 16, N'Marumbi')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2975, 16, N'Matelândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2976, 16, N'Matinhos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2977, 16, N'Mato Rico')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2978, 16, N'Mauá da Serra')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2979, 16, N'Medianeira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2980, 16, N'Mercedes')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2981, 16, N'Mirador')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2982, 16, N'Miraselva')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2983, 16, N'Missal')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2984, 16, N'Moreira Sales')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2985, 16, N'Morretes')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2986, 16, N'Munhoz de Melo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2987, 16, N'Nossa Senhora das Graças')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2988, 16, N'Nova Aliança do Ivaí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2989, 16, N'Nova América da Colina')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2990, 16, N'Nova Aurora')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2991, 16, N'Nova Cantu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2992, 16, N'Nova Esperança')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2993, 16, N'Nova Esperança do Sudoeste')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2994, 16, N'Nova Fátima')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2995, 16, N'Nova Laranjeiras')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2996, 16, N'Nova Londrina')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2997, 16, N'Nova Olímpia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2998, 16, N'Nova Prata do Iguaçu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (2999, 16, N'Nova Santa Bárbara')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3000, 16, N'Nova Santa Rosa')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3001, 16, N'Nova Tebas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3002, 16, N'Novo Itacolomi')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3003, 16, N'Ortigueira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3004, 16, N'Ourizona')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3005, 16, N'Ouro Verde do Oeste')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3006, 16, N'Paiçandu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3007, 16, N'Palmas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3008, 16, N'Palmeira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3009, 16, N'Palmital')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3010, 16, N'Palotina')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3011, 16, N'Paraíso do Norte')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3012, 16, N'Paranacity')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3013, 16, N'Paranaguá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3014, 16, N'Paranapoema')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3015, 16, N'Paranavaí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3016, 16, N'Pato Bragado')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3017, 16, N'Pato Branco')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3018, 16, N'Paula Freitas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3019, 16, N'Paulo Frontin')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3020, 16, N'Peabiru')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3021, 16, N'Perobal')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3022, 16, N'Pérola')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3023, 16, N'Pérola d`Oeste')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3024, 16, N'Piên')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3025, 16, N'Pinhais')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3026, 16, N'Pinhal de São Bento')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3027, 16, N'Pinhalão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3028, 16, N'Pinhão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3029, 16, N'Piraí do Sul')
GO
print 'Processed 3000 total records'
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3030, 16, N'Piraquara')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3031, 16, N'Pitanga')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3032, 16, N'Pitangueiras')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3033, 16, N'Planaltina do Paraná')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3034, 16, N'Planalto')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3035, 16, N'Ponta Grossa')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3036, 16, N'Pontal do Paraná')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3037, 16, N'Porecatu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3038, 16, N'Porto Amazonas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3039, 16, N'Porto Barreiro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3040, 16, N'Porto Rico')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3041, 16, N'Porto Vitória')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3042, 16, N'Prado Ferreira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3043, 16, N'Pranchita')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3044, 16, N'Presidente Castelo Branco')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3045, 16, N'Primeiro de Maio')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3046, 16, N'Prudentópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3047, 16, N'Quarto Centenário')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3048, 16, N'Quatiguá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3049, 16, N'Quatro Barras')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3050, 16, N'Quatro Pontes')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3051, 16, N'Quedas do Iguaçu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3052, 16, N'Querência do Norte')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3053, 16, N'Quinta do Sol')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3054, 16, N'Quitandinha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3055, 16, N'Ramilândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3056, 16, N'Rancho Alegre')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3057, 16, N'Rancho Alegre d`Oeste')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3058, 16, N'Realeza')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3059, 16, N'Rebouças')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3060, 16, N'Renascença')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3061, 16, N'Reserva')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3062, 16, N'Reserva do Iguaçu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3063, 16, N'Ribeirão Claro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3064, 16, N'Ribeirão do Pinhal')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3065, 16, N'Rio Azul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3066, 16, N'Rio Bom')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3067, 16, N'Rio Bonito do Iguaçu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3068, 16, N'Rio Branco do Ivaí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3069, 16, N'Rio Branco do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3070, 16, N'Rio Negro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3071, 16, N'Rolândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3072, 16, N'Roncador')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3073, 16, N'Rondon')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3074, 16, N'Rosário do Ivaí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3075, 16, N'Sabáudia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3076, 16, N'Salgado Filho')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3077, 16, N'Salto do Itararé')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3078, 16, N'Salto do Lontra')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3079, 16, N'Santa Amélia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3080, 16, N'Santa Cecília do Pavão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3081, 16, N'Santa Cruz de Monte Castelo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3082, 16, N'Santa Fé')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3083, 16, N'Santa Helena')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3084, 16, N'Santa Inês')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3085, 16, N'Santa Isabel do Ivaí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3086, 16, N'Santa Izabel do Oeste')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3087, 16, N'Santa Lúcia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3088, 16, N'Santa Maria do Oeste')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3089, 16, N'Santa Mariana')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3090, 16, N'Santa Mônica')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3091, 16, N'Santa Tereza do Oeste')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3092, 16, N'Santa Terezinha de Itaipu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3093, 16, N'Santana do Itararé')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3094, 16, N'Santo Antônio da Platina')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3095, 16, N'Santo Antônio do Caiuá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3096, 16, N'Santo Antônio do Paraíso')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3097, 16, N'Santo Antônio do Sudoeste')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3098, 16, N'Santo Inácio')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3099, 16, N'São Carlos do Ivaí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3100, 16, N'São Jerônimo da Serra')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3101, 16, N'São João')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3102, 16, N'São João do Caiuá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3103, 16, N'São João do Ivaí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3104, 16, N'São João do Triunfo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3105, 16, N'São Jorge d`Oeste')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3106, 16, N'São Jorge do Ivaí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3107, 16, N'São Jorge do Patrocínio')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3108, 16, N'São José da Boa Vista')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3109, 16, N'São José das Palmeiras')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3110, 16, N'São José dos Pinhais')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3111, 16, N'São Manoel do Paraná')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3112, 16, N'São Mateus do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3113, 16, N'São Miguel do Iguaçu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3114, 16, N'São Pedro do Iguaçu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3115, 16, N'São Pedro do Ivaí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3116, 16, N'São Pedro do Paraná')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3117, 16, N'São Sebastião da Amoreira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3118, 16, N'São Tomé')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3119, 16, N'Sapopema')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3120, 16, N'Sarandi')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3121, 16, N'Saudade do Iguaçu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3122, 16, N'Sengés')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3123, 16, N'Serranópolis do Iguaçu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3124, 16, N'Sertaneja')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3125, 16, N'Sertanópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3126, 16, N'Siqueira Campos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3127, 16, N'Sulina')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3128, 16, N'Tamarana')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3129, 16, N'Tamboara')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3130, 16, N'Tapejara')
GO
print 'Processed 3100 total records'
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3131, 16, N'Tapira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3132, 16, N'Teixeira Soares')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3133, 16, N'Telêmaco Borba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3134, 16, N'Terra Boa')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3135, 16, N'Terra Rica')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3136, 16, N'Terra Roxa')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3137, 16, N'Tibagi')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3138, 16, N'Tijucas do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3139, 16, N'Toledo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3140, 16, N'Tomazina')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3141, 16, N'Três Barras do Paraná')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3142, 16, N'Tunas do Paraná')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3143, 16, N'Tuneiras do Oeste')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3144, 16, N'Tupãssi')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3145, 16, N'Turvo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3146, 16, N'Ubiratã')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3147, 16, N'Umuarama')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3148, 16, N'União da Vitória')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3149, 16, N'Uniflor')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3150, 16, N'Uraí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3151, 16, N'Ventania')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3152, 16, N'Vera Cruz do Oeste')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3153, 16, N'Verê')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3154, 16, N'Vila Alta')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3155, 16, N'Virmond')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3156, 16, N'Vitorino')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3157, 16, N'Wenceslau Braz')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3158, 16, N'Xambrê')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3159, 17, N'Abreu e Lima')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3160, 17, N'Afogados da Ingazeira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3161, 17, N'Afrânio')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3162, 17, N'Agrestina')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3163, 17, N'Água Preta')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3164, 17, N'Águas Belas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3165, 17, N'Alagoinha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3166, 17, N'Aliança')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3167, 17, N'Altinho')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3168, 17, N'Amaraji')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3169, 17, N'Angelim')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3170, 17, N'Araçoiaba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3171, 17, N'Araripina')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3172, 17, N'Arcoverde')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3173, 17, N'Barra de Guabiraba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3174, 17, N'Barreiros')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3175, 17, N'Belém de Maria')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3176, 17, N'Belém de São Francisco')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3177, 17, N'Belo Jardim')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3178, 17, N'Betânia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3179, 17, N'Bezerros')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3180, 17, N'Bodocó')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3181, 17, N'Bom Conselho')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3182, 17, N'Bom Jardim')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3183, 17, N'Bonito')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3184, 17, N'Brejão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3185, 17, N'Brejinho')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3186, 17, N'Brejo da Madre de Deus')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3187, 17, N'Buenos Aires')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3188, 17, N'Buíque')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3189, 17, N'Cabo de Santo Agostinho')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3190, 17, N'Cabrobó')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3191, 17, N'Cachoeirinha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3192, 17, N'Caetés')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3193, 17, N'Calçado')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3194, 17, N'Calumbi')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3195, 17, N'Camaragibe')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3196, 17, N'Camocim de São Félix')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3197, 17, N'Camutanga')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3198, 17, N'Canhotinho')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3199, 17, N'Capoeiras')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3200, 17, N'Carnaíba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3201, 17, N'Carnaubeira da Penha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3202, 17, N'Carpina')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3203, 17, N'Caruaru')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3204, 17, N'Casinhas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3205, 17, N'Catende')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3206, 17, N'Cedro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3207, 17, N'Chã de Alegria')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3208, 17, N'Chã Grande')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3209, 17, N'Condado')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3210, 17, N'Correntes')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3211, 17, N'Cortês')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3212, 17, N'Cumaru')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3213, 17, N'Cupira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3214, 17, N'Custódia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3215, 17, N'Dormentes')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3216, 17, N'Escada')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3217, 17, N'Exu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3218, 17, N'Feira Nova')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3219, 17, N'Fernando de Noronha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3220, 17, N'Ferreiros')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3221, 17, N'Flores')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3222, 17, N'Floresta')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3223, 17, N'Frei Miguelinho')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3224, 17, N'Gameleira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3225, 17, N'Garanhuns')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3226, 17, N'Glória do Goitá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3227, 17, N'Goiana')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3228, 17, N'Granito')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3229, 17, N'Gravatá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3230, 17, N'Iati')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3231, 17, N'Ibimirim')
GO
print 'Processed 3200 total records'
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3232, 17, N'Ibirajuba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3233, 17, N'Igarassu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3234, 17, N'Iguaraci')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3235, 17, N'Inajá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3236, 17, N'Ingazeira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3237, 17, N'Ipojuca')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3238, 17, N'Ipubi')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3239, 17, N'Itacuruba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3240, 17, N'Itaíba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3241, 17, N'Itamaracá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3242, 17, N'Itambé')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3243, 17, N'Itapetim')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3244, 17, N'Itapissuma')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3245, 17, N'Itaquitinga')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3246, 17, N'Jaboatão dos Guararapes')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3247, 17, N'Jaqueira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3248, 17, N'Jataúba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3249, 17, N'Jatobá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3250, 17, N'João Alfredo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3251, 17, N'Joaquim Nabuco')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3252, 17, N'Jucati')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3253, 17, N'Jupi')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3254, 17, N'Jurema')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3255, 17, N'Lagoa do Carro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3256, 17, N'Lagoa do Itaenga')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3257, 17, N'Lagoa do Ouro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3258, 17, N'Lagoa dos Gatos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3259, 17, N'Lagoa Grande')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3260, 17, N'Lajedo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3261, 17, N'Limoeiro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3262, 17, N'Macaparana')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3263, 17, N'Machados')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3264, 17, N'Manari')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3265, 17, N'Maraial')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3266, 17, N'Mirandiba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3267, 17, N'Moreilândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3268, 17, N'Moreno')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3269, 17, N'Nazaré da Mata')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3270, 17, N'Olinda')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3271, 17, N'Orobó')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3272, 17, N'Orocó')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3273, 17, N'Ouricuri')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3274, 17, N'Palmares')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3275, 17, N'Palmeirina')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3276, 17, N'Panelas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3277, 17, N'Paranatama')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3278, 17, N'Parnamirim')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3279, 17, N'Passira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3280, 17, N'Paudalho')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3281, 17, N'Paulista')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3282, 17, N'Pedra')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3283, 17, N'Pesqueira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3284, 17, N'Petrolândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3285, 17, N'Petrolina')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3286, 17, N'Poção')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3287, 17, N'Pombos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3288, 17, N'Primavera')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3289, 17, N'Quipapá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3290, 17, N'Quixaba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3291, 17, N'Recife')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3292, 17, N'Riacho das Almas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3293, 17, N'Ribeirão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3294, 17, N'Rio Formoso')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3295, 17, N'Sairé')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3296, 17, N'Salgadinho')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3297, 17, N'Salgueiro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3298, 17, N'Saloá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3299, 17, N'Sanharó')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3300, 17, N'Santa Cruz')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3301, 17, N'Santa Cruz da Baixa Verde')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3302, 17, N'Santa Cruz do Capibaribe')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3303, 17, N'Santa Filomena')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3304, 17, N'Santa Maria da Boa Vista')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3305, 17, N'Santa Maria do Cambucá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3306, 17, N'Santa Terezinha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3307, 17, N'São Benedito do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3308, 17, N'São Bento do Una')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3309, 17, N'São Caitano')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3310, 17, N'São João')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3311, 17, N'São Joaquim do Monte')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3312, 17, N'São José da Coroa Grande')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3313, 17, N'São José do Belmonte')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3314, 17, N'São José do Egito')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3315, 17, N'São Lourenço da Mata')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3316, 17, N'São Vicente Ferrer')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3317, 17, N'Serra Talhada')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3318, 17, N'Serrita')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3319, 17, N'Sertânia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3320, 17, N'Sirinhaém')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3321, 17, N'Solidão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3322, 17, N'Surubim')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3323, 17, N'Tabira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3324, 17, N'Tacaimbó')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3325, 17, N'Tacaratu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3326, 17, N'Tamandaré')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3327, 17, N'Taquaritinga do Norte')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3328, 17, N'Terezinha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3329, 17, N'Terra Nova')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3330, 17, N'Timbaúba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3331, 17, N'Toritama')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3332, 17, N'Tracunhaém')
GO
print 'Processed 3300 total records'
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3333, 17, N'Trindade')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3334, 17, N'Triunfo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3335, 17, N'Tupanatinga')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3336, 17, N'Tuparetama')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3337, 17, N'Venturosa')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3338, 17, N'Verdejante')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3339, 17, N'Vertente do Lério')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3340, 17, N'Vertentes')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3341, 17, N'Vicência')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3342, 17, N'Vitória de Santo Antão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3343, 17, N'Xexéu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3344, 18, N'Acauã')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3345, 18, N'Agricolândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3346, 18, N'Água Branca')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3347, 18, N'Alagoinha do Piauí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3348, 18, N'Alegrete do Piauí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3349, 18, N'Alto Longá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3350, 18, N'Altos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3351, 18, N'Alvorada do Gurguéia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3352, 18, N'Amarante')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3353, 18, N'Angical do Piauí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3354, 18, N'Anísio de Abreu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3355, 18, N'Antônio Almeida')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3356, 18, N'Aroazes')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3357, 18, N'Arraial')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3358, 18, N'Assunção do Piauí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3359, 18, N'Avelino Lopes')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3360, 18, N'Baixa Grande do Ribeiro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3361, 18, N'Barra d`Alcântara')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3362, 18, N'Barras')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3363, 18, N'Barreiras do Piauí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3364, 18, N'Barro Duro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3365, 18, N'Batalha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3366, 18, N'Bela Vista do Piauí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3367, 18, N'Belém do Piauí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3368, 18, N'Beneditinos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3369, 18, N'Bertolínia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3370, 18, N'Betânia do Piauí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3371, 18, N'Boa Hora')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3372, 18, N'Bocaina')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3373, 18, N'Bom Jesus')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3374, 18, N'Bom Princípio do Piauí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3375, 18, N'Bonfim do Piauí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3376, 18, N'Boqueirão do Piauí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3377, 18, N'Brasileira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3378, 18, N'Brejo do Piauí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3379, 18, N'Buriti dos Lopes')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3380, 18, N'Buriti dos Montes')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3381, 18, N'Cabeceiras do Piauí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3382, 18, N'Cajazeiras do Piauí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3383, 18, N'Cajueiro da Praia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3384, 18, N'Caldeirão Grande do Piauí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3385, 18, N'Campinas do Piauí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3386, 18, N'Campo Alegre do Fidalgo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3387, 18, N'Campo Grande do Piauí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3388, 18, N'Campo Largo do Piauí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3389, 18, N'Campo Maior')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3390, 18, N'Canavieira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3391, 18, N'Canto do Buriti')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3392, 18, N'Capitão de Campos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3393, 18, N'Capitão Gervásio Oliveira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3394, 18, N'Caracol')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3395, 18, N'Caraúbas do Piauí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3396, 18, N'Caridade do Piauí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3397, 18, N'Castelo do Piauí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3398, 18, N'Caxingó')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3399, 18, N'Cocal')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3400, 18, N'Cocal de Telha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3401, 18, N'Cocal dos Alves')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3402, 18, N'Coivaras')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3403, 18, N'Colônia do Gurguéia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3404, 18, N'Colônia do Piauí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3405, 18, N'Conceição do Canindé')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3406, 18, N'Coronel José Dias')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3407, 18, N'Corrente')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3408, 18, N'Cristalândia do Piauí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3409, 18, N'Cristino Castro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3410, 18, N'Curimatá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3411, 18, N'Currais')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3412, 18, N'Curral Novo do Piauí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3413, 18, N'Curralinhos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3414, 18, N'Demerval Lobão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3415, 18, N'Dirceu Arcoverde')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3416, 18, N'Dom Expedito Lopes')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3417, 18, N'Dom Inocêncio')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3418, 18, N'Domingos Mourão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3419, 18, N'Elesbão Veloso')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3420, 18, N'Eliseu Martins')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3421, 18, N'Esperantina')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3422, 18, N'Fartura do Piauí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3423, 18, N'Flores do Piauí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3424, 18, N'Floresta do Piauí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3425, 18, N'Floriano')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3426, 18, N'Francinópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3427, 18, N'Francisco Ayres')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3428, 18, N'Francisco Macedo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3429, 18, N'Francisco Santos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3430, 18, N'Fronteiras')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3431, 18, N'Geminiano')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3432, 18, N'Gilbués')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3433, 18, N'Guadalupe')
GO
print 'Processed 3400 total records'
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3434, 18, N'Guaribas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3435, 18, N'Hugo Napoleão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3436, 18, N'Ilha Grande')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3437, 18, N'Inhuma')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3438, 18, N'Ipiranga do Piauí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3439, 18, N'Isaías Coelho')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3440, 18, N'Itainópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3441, 18, N'Itaueira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3442, 18, N'Jacobina do Piauí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3443, 18, N'Jaicós')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3444, 18, N'Jardim do Mulato')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3445, 18, N'Jatobá do Piauí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3446, 18, N'Jerumenha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3447, 18, N'João Costa')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3448, 18, N'Joaquim Pires')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3449, 18, N'Joca Marques')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3450, 18, N'José de Freitas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3451, 18, N'Juazeiro do Piauí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3452, 18, N'Júlio Borges')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3453, 18, N'Jurema')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3454, 18, N'Lagoa Alegre')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3455, 18, N'Lagoa de São Francisco')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3456, 18, N'Lagoa do Barro do Piauí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3457, 18, N'Lagoa do Piauí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3458, 18, N'Lagoa do Sítio')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3459, 18, N'Lagoinha do Piauí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3460, 18, N'Landri Sales')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3461, 18, N'Luís Correia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3462, 18, N'Luzilândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3463, 18, N'Madeiro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3464, 18, N'Manoel Emídio')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3465, 18, N'Marcolândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3466, 18, N'Marcos Parente')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3467, 18, N'Massapê do Piauí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3468, 18, N'Matias Olímpio')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3469, 18, N'Miguel Alves')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3470, 18, N'Miguel Leão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3471, 18, N'Milton Brandão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3472, 18, N'Monsenhor Gil')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3473, 18, N'Monsenhor Hipólito')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3474, 18, N'Monte Alegre do Piauí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3475, 18, N'Morro Cabeça no Tempo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3476, 18, N'Morro do Chapéu do Piauí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3477, 18, N'Murici dos Portelas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3478, 18, N'Nazaré do Piauí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3479, 18, N'Nossa Senhora de Nazaré')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3480, 18, N'Nossa Senhora dos Remédios')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3481, 18, N'Nova Santa Rita')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3482, 18, N'Novo Oriente do Piauí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3483, 18, N'Novo Santo Antônio')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3484, 18, N'Oeiras')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3485, 18, N'Olho d`Água do Piauí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3486, 18, N'Padre Marcos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3487, 18, N'Paes Landim')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3488, 18, N'Pajeú do Piauí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3489, 18, N'Palmeira do Piauí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3490, 18, N'Palmeirais')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3491, 18, N'Paquetá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3492, 18, N'Parnaguá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3493, 18, N'Parnaíba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3494, 18, N'Passagem Franca do Piauí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3495, 18, N'Patos do Piauí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3496, 18, N'Paulistana')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3497, 18, N'Pavussu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3498, 18, N'Pedro II')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3499, 18, N'Pedro Laurentino')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3500, 18, N'Picos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3501, 18, N'Pimenteiras')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3502, 18, N'Pio IX')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3503, 18, N'Piracuruca')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3504, 18, N'Piripiri')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3505, 18, N'Porto')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3506, 18, N'Porto Alegre do Piauí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3507, 18, N'Prata do Piauí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3508, 18, N'Queimada Nova')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3509, 18, N'Redenção do Gurguéia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3510, 18, N'Regeneração')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3511, 18, N'Riacho Frio')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3512, 18, N'Ribeira do Piauí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3513, 18, N'Ribeiro Gonçalves')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3514, 18, N'Rio Grande do Piauí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3515, 18, N'Santa Cruz do Piauí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3516, 18, N'Santa Cruz dos Milagres')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3517, 18, N'Santa Filomena')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3518, 18, N'Santa Luz')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3519, 18, N'Santa Rosa do Piauí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3520, 18, N'Santana do Piauí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3521, 18, N'Santo Antônio de Lisboa')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3522, 18, N'Santo Antônio dos Milagres')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3523, 18, N'Santo Inácio do Piauí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3524, 18, N'São Braz do Piauí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3525, 18, N'São Félix do Piauí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3526, 18, N'São Francisco de Assis do Piauí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3527, 18, N'São Francisco do Piauí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3528, 18, N'São Gonçalo do Gurguéia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3529, 18, N'São Gonçalo do Piauí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3530, 18, N'São João da Canabrava')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3531, 18, N'São João da Fronteira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3532, 18, N'São João da Serra')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3533, 18, N'São João da Varjota')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3534, 18, N'São João do Arraial')
GO
print 'Processed 3500 total records'
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3535, 18, N'São João do Piauí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3536, 18, N'São José do Divino')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3537, 18, N'São José do Peixe')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3538, 18, N'São José do Piauí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3539, 18, N'São Julião')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3540, 18, N'São Lourenço do Piauí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3541, 18, N'São Luis do Piauí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3542, 18, N'São Miguel da Baixa Grande')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3543, 18, N'São Miguel do Fidalgo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3544, 18, N'São Miguel do Tapuio')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3545, 18, N'São Pedro do Piauí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3546, 18, N'São Raimundo Nonato')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3547, 18, N'Sebastião Barros')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3548, 18, N'Sebastião Leal')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3549, 18, N'Sigefredo Pacheco')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3550, 18, N'Simões')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3551, 18, N'Simplício Mendes')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3552, 18, N'Socorro do Piauí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3553, 18, N'Sussuapara')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3554, 18, N'Tamboril do Piauí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3555, 18, N'Tanque do Piauí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3556, 18, N'Teresina')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3557, 18, N'União')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3558, 18, N'Uruçuí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3559, 18, N'Valença do Piauí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3560, 18, N'Várzea Branca')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3561, 18, N'Várzea Grande')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3562, 18, N'Vera Mendes')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3563, 18, N'Vila Nova do Piauí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3564, 18, N'Wall Ferraz')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3565, 19, N'Angra dos Reis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3566, 19, N'Aperibé')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3567, 19, N'Araruama')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3568, 19, N'Areal')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3569, 19, N'Armação dos Búzios')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3570, 19, N'Arraial do Cabo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3571, 19, N'Barra do Piraí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3572, 19, N'Barra Mansa')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3573, 19, N'Belford Roxo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3574, 19, N'Bom Jardim')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3575, 19, N'Bom Jesus do Itabapoana')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3576, 19, N'Cabo Frio')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3577, 19, N'Cachoeiras de Macacu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3578, 19, N'Cambuci')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3579, 19, N'Campos dos Goytacazes')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3580, 19, N'Cantagalo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3581, 19, N'Carapebus')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3582, 19, N'Cardoso Moreira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3583, 19, N'Carmo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3584, 19, N'Casimiro de Abreu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3585, 19, N'Comendador Levy Gasparian')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3586, 19, N'Conceição de Macabu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3587, 19, N'Cordeiro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3588, 19, N'Duas Barras')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3589, 19, N'Duque de Caxias')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3590, 19, N'Engenheiro Paulo de Frontin')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3591, 19, N'Guapimirim')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3592, 19, N'Iguaba Grande')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3593, 19, N'Itaboraí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3594, 19, N'Itaguaí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3595, 19, N'Italva')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3596, 19, N'Itaocara')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3597, 19, N'Itaperuna')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3598, 19, N'Itatiaia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3599, 19, N'Japeri')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3600, 19, N'Laje do Muriaé')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3601, 19, N'Macaé')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3602, 19, N'Macuco')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3603, 19, N'Magé')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3604, 19, N'Mangaratiba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3605, 19, N'Maricá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3606, 19, N'Mendes')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3607, 19, N'Miguel Pereira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3608, 19, N'Miracema')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3609, 19, N'Natividade')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3610, 19, N'Nilópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3611, 19, N'Niterói')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3612, 19, N'Nova Friburgo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3613, 19, N'Nova Iguaçu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3614, 19, N'Paracambi')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3615, 19, N'Paraíba do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3616, 19, N'Parati')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3617, 19, N'Paty do Alferes')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3618, 19, N'Petrópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3619, 19, N'Pinheiral')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3620, 19, N'Piraí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3621, 19, N'Porciúncula')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3622, 19, N'Porto Real')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3623, 19, N'Quatis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3624, 19, N'Queimados')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3625, 19, N'Quissamã')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3626, 19, N'Resende')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3627, 19, N'Rio Bonito')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3628, 19, N'Rio Claro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3629, 19, N'Rio das Flores')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3630, 19, N'Rio das Ostras')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3631, 19, N'Rio de Janeiro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3632, 19, N'Santa Maria Madalena')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3633, 19, N'Santo Antônio de Pádua')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3634, 19, N'São Fidélis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3635, 19, N'São Francisco de Itabapoana')
GO
print 'Processed 3600 total records'
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3636, 19, N'São Gonçalo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3637, 19, N'São João da Barra')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3638, 19, N'São João de Meriti')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3639, 19, N'São José de Ubá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3640, 19, N'São José do Vale do Rio Preto')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3641, 19, N'São Pedro da Aldeia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3642, 19, N'São Sebastião do Alto')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3643, 19, N'Sapucaia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3644, 19, N'Saquarema')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3645, 19, N'Seropédica')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3646, 19, N'Silva Jardim')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3647, 19, N'Sumidouro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3648, 19, N'Tanguá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3649, 19, N'Teresópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3650, 19, N'Trajano de Morais')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3651, 19, N'Três Rios')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3652, 19, N'Valença')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3653, 19, N'Varre-Sai')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3654, 19, N'Vassouras')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3655, 19, N'Volta Redonda')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3656, 20, N'Acari')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3657, 20, N'Açu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3658, 20, N'Afonso Bezerra')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3659, 20, N'Água Nova')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3660, 20, N'Alexandria')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3661, 20, N'Almino Afonso')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3662, 20, N'Alto do Rodrigues')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3663, 20, N'Angicos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3664, 20, N'Antônio Martins')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3665, 20, N'Apodi')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3666, 20, N'Areia Branca')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3667, 20, N'Arês')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3668, 20, N'Augusto Severo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3669, 20, N'Baía Formosa')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3670, 20, N'Baraúna')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3671, 20, N'Barcelona')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3672, 20, N'Bento Fernandes')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3673, 20, N'Bodó')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3674, 20, N'Bom Jesus')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3675, 20, N'Brejinho')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3676, 20, N'Caiçara do Norte')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3677, 20, N'Caiçara do Rio do Vento')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3678, 20, N'Caicó')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3679, 20, N'Campo Redondo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3680, 20, N'Canguaretama')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3681, 20, N'Caraúbas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3682, 20, N'Carnaúba dos Dantas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3683, 20, N'Carnaubais')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3684, 20, N'Ceará-Mirim')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3685, 20, N'Cerro Corá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3686, 20, N'Coronel Ezequiel')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3687, 20, N'Coronel João Pessoa')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3688, 20, N'Cruzeta')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3689, 20, N'Currais Novos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3690, 20, N'Doutor Severiano')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3691, 20, N'Encanto')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3692, 20, N'Equador')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3693, 20, N'Espírito Santo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3694, 20, N'Extremoz')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3695, 20, N'Felipe Guerra')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3696, 20, N'Fernando Pedroza')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3697, 20, N'Florânia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3698, 20, N'Francisco Dantas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3699, 20, N'Frutuoso Gomes')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3700, 20, N'Galinhos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3701, 20, N'Goianinha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3702, 20, N'Governador Dix-Sept Rosado')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3703, 20, N'Grossos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3704, 20, N'Guamaré')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3705, 20, N'Ielmo Marinho')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3706, 20, N'Ipanguaçu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3707, 20, N'Ipueira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3708, 20, N'Itajá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3709, 20, N'Itaú')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3710, 20, N'Jaçanã')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3711, 20, N'Jandaíra')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3712, 20, N'Janduís')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3713, 20, N'Januário Cicco')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3714, 20, N'Japi')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3715, 20, N'Jardim de Angicos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3716, 20, N'Jardim de Piranhas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3717, 20, N'Jardim do Seridó')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3718, 20, N'João Câmara')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3719, 20, N'João Dias')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3720, 20, N'José da Penha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3721, 20, N'Jucurutu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3722, 20, N'Lagoa d`Anta')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3723, 20, N'Lagoa de Pedras')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3724, 20, N'Lagoa de Velhos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3725, 20, N'Lagoa Nova')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3726, 20, N'Lagoa Salgada')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3727, 20, N'Lajes')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3728, 20, N'Lajes Pintadas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3729, 20, N'Lucrécia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3730, 20, N'Luís Gomes')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3731, 20, N'Macaíba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3732, 20, N'Macau')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3733, 20, N'Major Sales')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3734, 20, N'Marcelino Vieira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3735, 20, N'Martins')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3736, 20, N'Maxaranguape')
GO
print 'Processed 3700 total records'
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3737, 20, N'Messias Targino')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3738, 20, N'Montanhas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3739, 20, N'Monte Alegre')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3740, 20, N'Monte das Gameleiras')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3741, 20, N'Mossoró')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3742, 20, N'Natal')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3743, 20, N'Nísia Floresta')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3744, 20, N'Nova Cruz')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3745, 20, N'Olho-d`Água do Borges')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3746, 20, N'Ouro Branco')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3747, 20, N'Paraná')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3748, 20, N'Paraú')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3749, 20, N'Parazinho')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3750, 20, N'Parelhas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3751, 20, N'Parnamirim')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3752, 20, N'Passa e Fica')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3753, 20, N'Passagem')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3754, 20, N'Patu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3755, 20, N'Pau dos Ferros')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3756, 20, N'Pedra Grande')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3757, 20, N'Pedra Preta')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3758, 20, N'Pedro Avelino')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3759, 20, N'Pedro Velho')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3760, 20, N'Pendências')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3761, 20, N'Pilões')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3762, 20, N'Poço Branco')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3763, 20, N'Portalegre')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3764, 20, N'Porto do Mangue')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3765, 20, N'Presidente Juscelino')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3766, 20, N'Pureza')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3767, 20, N'Rafael Fernandes')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3768, 20, N'Rafael Godeiro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3769, 20, N'Riacho da Cruz')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3770, 20, N'Riacho de Santana')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3771, 20, N'Riachuelo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3772, 20, N'Rio do Fogo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3773, 20, N'Rodolfo Fernandes')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3774, 20, N'Ruy Barbosa')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3775, 20, N'Santa Cruz')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3776, 20, N'Santa Maria')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3777, 20, N'Santana do Matos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3778, 20, N'Santana do Seridó')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3779, 20, N'Santo Antônio')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3780, 20, N'São Bento do Norte')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3781, 20, N'São Bento do Trairí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3782, 20, N'São Fernando')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3783, 20, N'São Francisco do Oeste')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3784, 20, N'São Gonçalo do Amarante')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3785, 20, N'São João do Sabugi')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3786, 20, N'São José de Mipibu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3787, 20, N'São José do Campestre')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3788, 20, N'São José do Seridó')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3789, 20, N'São Miguel')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3790, 20, N'São Miguel de Touros')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3791, 20, N'São Paulo do Potengi')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3792, 20, N'São Pedro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3793, 20, N'São Rafael')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3794, 20, N'São Tomé')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3795, 20, N'São Vicente')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3796, 20, N'Senador Elói de Souza')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3797, 20, N'Senador Georgino Avelino')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3798, 20, N'Serra de São Bento')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3799, 20, N'Serra do Mel')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3800, 20, N'Serra Negra do Norte')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3801, 20, N'Serrinha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3802, 20, N'Serrinha dos Pintos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3803, 20, N'Severiano Melo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3804, 20, N'Sítio Novo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3805, 20, N'Taboleiro Grande')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3806, 20, N'Taipu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3807, 20, N'Tangará')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3808, 20, N'Tenente Ananias')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3809, 20, N'Tenente Laurentino Cruz')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3810, 20, N'Tibau')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3811, 20, N'Tibau do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3812, 20, N'Timbaúba dos Batistas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3813, 20, N'Touros')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3814, 20, N'Triunfo Potiguar')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3815, 20, N'Umarizal')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3816, 20, N'Upanema')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3817, 20, N'Várzea')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3818, 20, N'Venha-Ver')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3819, 20, N'Vera Cruz')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3820, 20, N'Viçosa')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3821, 20, N'Vila Flor')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3822, 21, N'Água Santa')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3823, 21, N'Agudo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3824, 21, N'Ajuricaba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3825, 21, N'Alecrim')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3826, 21, N'Alegrete')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3827, 21, N'Alegria')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3828, 21, N'Alpestre')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3829, 21, N'Alto Alegre')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3830, 21, N'Alto Feliz')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3831, 21, N'Alvorada')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3832, 21, N'Amaral Ferrador')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3833, 21, N'Ametista do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3834, 21, N'André da Rocha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3835, 21, N'Anta Gorda')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3836, 21, N'Antônio Prado')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3837, 21, N'Arambaré')
GO
print 'Processed 3800 total records'
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3838, 21, N'Araricá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3839, 21, N'Aratiba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3840, 21, N'Arroio do Meio')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3841, 21, N'Arroio do Sal')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3842, 21, N'Arroio do Tigre')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3843, 21, N'Arroio dos Ratos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3844, 21, N'Arroio Grande')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3845, 21, N'Arvorezinha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3846, 21, N'Augusto Pestana')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3847, 21, N'Áurea')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3848, 21, N'Bagé')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3849, 21, N'Balneário Pinhal')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3850, 21, N'Barão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3851, 21, N'Barão de Cotegipe')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3852, 21, N'Barão do Triunfo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3853, 21, N'Barra do Guarita')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3854, 21, N'Barra do Quaraí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3855, 21, N'Barra do Ribeiro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3856, 21, N'Barra do Rio Azul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3857, 21, N'Barra Funda')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3858, 21, N'Barracão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3859, 21, N'Barros Cassal')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3860, 21, N'Benjamin Constant do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3861, 21, N'Bento Gonçalves')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3862, 21, N'Boa Vista das Missões')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3863, 21, N'Boa Vista do Buricá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3864, 21, N'Boa Vista do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3865, 21, N'Bom Jesus')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3866, 21, N'Bom Princípio')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3867, 21, N'Bom Progresso')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3868, 21, N'Bom Retiro do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3869, 21, N'Boqueirão do Leão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3870, 21, N'Bossoroca')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3871, 21, N'Braga')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3872, 21, N'Brochier')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3873, 21, N'Butiá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3874, 21, N'Caçapava do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3875, 21, N'Cacequi')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3876, 21, N'Cachoeira do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3877, 21, N'Cachoeirinha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3878, 21, N'Cacique Doble')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3879, 21, N'Caibaté')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3880, 21, N'Caiçara')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3881, 21, N'Camaquã')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3882, 21, N'Camargo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3883, 21, N'Cambará do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3884, 21, N'Campestre da Serra')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3885, 21, N'Campina das Missões')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3886, 21, N'Campinas do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3887, 21, N'Campo Bom')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3888, 21, N'Campo Novo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3889, 21, N'Campos Borges')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3890, 21, N'Candelária')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3891, 21, N'Cândido Godói')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3892, 21, N'Candiota')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3893, 21, N'Canela')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3894, 21, N'Canguçu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3895, 21, N'Canoas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3896, 21, N'Capão da Canoa')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3897, 21, N'Capão do Leão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3898, 21, N'Capela de Santana')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3899, 21, N'Capitão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3900, 21, N'Capivari do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3901, 21, N'Caraá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3902, 21, N'Carazinho')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3903, 21, N'Carlos Barbosa')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3904, 21, N'Carlos Gomes')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3905, 21, N'Casca')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3906, 21, N'Caseiros')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3907, 21, N'Catuípe')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3908, 21, N'Caxias do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3909, 21, N'Centenário')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3910, 21, N'Cerrito')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3911, 21, N'Cerro Branco')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3912, 21, N'Cerro Grande')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3913, 21, N'Cerro Grande do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3914, 21, N'Cerro Largo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3915, 21, N'Chapada')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3916, 21, N'Charqueadas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3917, 21, N'Charrua')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3918, 21, N'Chiapeta')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3919, 21, N'Chuí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3920, 21, N'Chuvisca')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3921, 21, N'Cidreira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3922, 21, N'Ciríaco')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3923, 21, N'Colinas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3924, 21, N'Colorado')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3925, 21, N'Condor')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3926, 21, N'Constantina')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3927, 21, N'Coqueiros do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3928, 21, N'Coronel Barros')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3929, 21, N'Coronel Bicaco')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3930, 21, N'Cotiporã')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3931, 21, N'Coxilha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3932, 21, N'Crissiumal')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3933, 21, N'Cristal')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3934, 21, N'Cristal do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3935, 21, N'Cruz Alta')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3936, 21, N'Cruzeiro do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3937, 21, N'David Canabarro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3938, 21, N'Derrubadas')
GO
print 'Processed 3900 total records'
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3939, 21, N'Dezesseis de Novembro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3940, 21, N'Dilermando de Aguiar')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3941, 21, N'Dois Irmãos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3942, 21, N'Dois Irmãos das Missões')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3943, 21, N'Dois Lajeados')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3944, 21, N'Dom Feliciano')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3945, 21, N'Dom Pedrito')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3946, 21, N'Dom Pedro de Alcântara')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3947, 21, N'Dona Francisca')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3948, 21, N'Doutor Maurício Cardoso')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3949, 21, N'Doutor Ricardo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3950, 21, N'Eldorado do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3951, 21, N'Encantado')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3952, 21, N'Encruzilhada do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3953, 21, N'Engenho Velho')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3954, 21, N'Entre Rios do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3955, 21, N'Entre-Ijuís')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3956, 21, N'Erebango')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3957, 21, N'Erechim')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3958, 21, N'Ernestina')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3959, 21, N'Erval Grande')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3960, 21, N'Erval Seco')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3961, 21, N'Esmeralda')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3962, 21, N'Esperança do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3963, 21, N'Espumoso')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3964, 21, N'Estação')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3965, 21, N'Estância Velha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3966, 21, N'Esteio')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3967, 21, N'Estrela')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3968, 21, N'Estrela Velha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3969, 21, N'Eugênio de Castro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3970, 21, N'Fagundes Varela')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3971, 21, N'Farroupilha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3972, 21, N'Faxinal do Soturno')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3973, 21, N'Faxinalzinho')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3974, 21, N'Fazenda Vilanova')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3975, 21, N'Feliz')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3976, 21, N'Flores da Cunha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3977, 21, N'Floriano Peixoto')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3978, 21, N'Fontoura Xavier')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3979, 21, N'Formigueiro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3980, 21, N'Fortaleza dos Valos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3981, 21, N'Frederico Westphalen')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3982, 21, N'Garibaldi')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3983, 21, N'Garruchos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3984, 21, N'Gaurama')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3985, 21, N'General Câmara')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3986, 21, N'Gentil')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3987, 21, N'Getúlio Vargas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3988, 21, N'Giruá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3989, 21, N'Glorinha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3990, 21, N'Gramado')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3991, 21, N'Gramado dos Loureiros')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3992, 21, N'Gramado Xavier')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3993, 21, N'Gravataí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3994, 21, N'Guabiju')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3995, 21, N'Guaíba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3996, 21, N'Guaporé')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3997, 21, N'Guarani das Missões')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3998, 21, N'Harmonia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (3999, 21, N'Herval')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4000, 21, N'Herveiras')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4001, 21, N'Horizontina')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4002, 21, N'Hulha Negra')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4003, 21, N'Humaitá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4004, 21, N'Ibarama')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4005, 21, N'Ibiaçá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4006, 21, N'Ibiraiaras')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4007, 21, N'Ibirapuitã')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4008, 21, N'Ibirubá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4009, 21, N'Igrejinha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4010, 21, N'Ijuí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4011, 21, N'Ilópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4012, 21, N'Imbé')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4013, 21, N'Imigrante')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4014, 21, N'Independência')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4015, 21, N'Inhacorá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4016, 21, N'Ipê')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4017, 21, N'Ipiranga do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4018, 21, N'Iraí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4019, 21, N'Itaara')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4020, 21, N'Itacurubi')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4021, 21, N'Itapuca')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4022, 21, N'Itaqui')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4023, 21, N'Itatiba do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4024, 21, N'Ivorá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4025, 21, N'Ivoti')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4026, 21, N'Jaboticaba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4027, 21, N'Jacutinga')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4028, 21, N'Jaguarão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4029, 21, N'Jaguari')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4030, 21, N'Jaquirana')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4031, 21, N'Jari')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4032, 21, N'Jóia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4033, 21, N'Júlio de Castilhos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4034, 21, N'Lagoa dos Três Cantos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4035, 21, N'Lagoa Vermelha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4036, 21, N'Lagoão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4037, 21, N'Lajeado')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4038, 21, N'Lajeado do Bugre')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4039, 21, N'Lavras do Sul')
GO
print 'Processed 4000 total records'
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4040, 21, N'Liberato Salzano')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4041, 21, N'Lindolfo Collor')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4042, 21, N'Linha Nova')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4043, 21, N'Maçambara')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4044, 21, N'Machadinho')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4045, 21, N'Mampituba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4046, 21, N'Manoel Viana')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4047, 21, N'Maquiné')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4048, 21, N'Maratá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4049, 21, N'Marau')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4050, 21, N'Marcelino Ramos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4051, 21, N'Mariana Pimentel')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4052, 21, N'Mariano Moro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4053, 21, N'Marques de Souza')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4054, 21, N'Mata')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4055, 21, N'Mato Castelhano')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4056, 21, N'Mato Leitão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4057, 21, N'Maximiliano de Almeida')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4058, 21, N'Minas do Leão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4059, 21, N'Miraguaí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4060, 21, N'Montauri')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4061, 21, N'Monte Alegre dos Campos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4062, 21, N'Monte Belo do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4063, 21, N'Montenegro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4064, 21, N'Mormaço')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4065, 21, N'Morrinhos do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4066, 21, N'Morro Redondo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4067, 21, N'Morro Reuter')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4068, 21, N'Mostardas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4069, 21, N'Muçum')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4070, 21, N'Muitos Capões')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4071, 21, N'Muliterno')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4072, 21, N'Não-Me-Toque')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4073, 21, N'Nicolau Vergueiro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4074, 21, N'Nonoai')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4075, 21, N'Nova Alvorada')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4076, 21, N'Nova Araçá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4077, 21, N'Nova Bassano')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4078, 21, N'Nova Boa Vista')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4079, 21, N'Nova Bréscia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4080, 21, N'Nova Candelária')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4081, 21, N'Nova Esperança do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4082, 21, N'Nova Hartz')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4083, 21, N'Nova Pádua')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4084, 21, N'Nova Palma')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4085, 21, N'Nova Petrópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4086, 21, N'Nova Prata')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4087, 21, N'Nova Ramada')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4088, 21, N'Nova Roma do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4089, 21, N'Nova Santa Rita')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4090, 21, N'Novo Barreiro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4091, 21, N'Novo Cabrais')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4092, 21, N'Novo Hamburgo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4093, 21, N'Novo Machado')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4094, 21, N'Novo Tiradentes')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4095, 21, N'Osório')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4096, 21, N'Paim Filho')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4097, 21, N'Palmares do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4098, 21, N'Palmeira das Missões')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4099, 21, N'Palmitinho')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4100, 21, N'Panambi')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4101, 21, N'Pantano Grande')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4102, 21, N'Paraí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4103, 21, N'Paraíso do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4104, 21, N'Pareci Novo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4105, 21, N'Parobé')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4106, 21, N'Passa Sete')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4107, 21, N'Passo do Sobrado')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4108, 21, N'Passo Fundo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4109, 21, N'Paverama')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4110, 21, N'Pedro Osório')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4111, 21, N'Pejuçara')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4112, 21, N'Pelotas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4113, 21, N'Picada Café')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4114, 21, N'Pinhal')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4115, 21, N'Pinhal Grande')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4116, 21, N'Pinheirinho do Vale')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4117, 21, N'Pinheiro Machado')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4118, 21, N'Pirapó')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4119, 21, N'Piratini')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4120, 21, N'Planalto')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4121, 21, N'Poço das Antas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4122, 21, N'Pontão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4123, 21, N'Ponte Preta')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4124, 21, N'Portão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4125, 21, N'Porto Alegre')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4126, 21, N'Porto Lucena')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4127, 21, N'Porto Mauá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4128, 21, N'Porto Vera Cruz')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4129, 21, N'Porto Xavier')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4130, 21, N'Pouso Novo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4131, 21, N'Presidente Lucena')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4132, 21, N'Progresso')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4133, 21, N'Protásio Alves')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4134, 21, N'Putinga')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4135, 21, N'Quaraí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4136, 21, N'Quevedos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4137, 21, N'Quinze de Novembro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4138, 21, N'Redentora')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4139, 21, N'Relvado')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4140, 21, N'Restinga Seca')
GO
print 'Processed 4100 total records'
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4141, 21, N'Rio dos Índios')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4142, 21, N'Rio Grande')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4143, 21, N'Rio Pardo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4144, 21, N'Riozinho')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4145, 21, N'Roca Sales')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4146, 21, N'Rodeio Bonito')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4147, 21, N'Rolante')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4148, 21, N'Ronda Alta')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4149, 21, N'Rondinha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4150, 21, N'Roque Gonzales')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4151, 21, N'Rosário do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4152, 21, N'Sagrada Família')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4153, 21, N'Saldanha Marinho')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4154, 21, N'Salto do Jacuí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4155, 21, N'Salvador das Missões')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4156, 21, N'Salvador do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4157, 21, N'Sananduva')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4158, 21, N'Santa Bárbara do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4159, 21, N'Santa Clara do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4160, 21, N'Santa Cruz do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4161, 21, N'Santa Maria')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4162, 21, N'Santa Maria do Herval')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4163, 21, N'Santa Rosa')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4164, 21, N'Santa Tereza')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4165, 21, N'Santa Vitória do Palmar')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4166, 21, N'Santana da Boa Vista')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4167, 21, N'Santana do Livramento')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4168, 21, N'Santiago')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4169, 21, N'Santo Ângelo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4170, 21, N'Santo Antônio da Patrulha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4171, 21, N'Santo Antônio das Missões')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4172, 21, N'Santo Antônio do Palma')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4173, 21, N'Santo Antônio do Planalto')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4174, 21, N'Santo Augusto')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4175, 21, N'Santo Cristo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4176, 21, N'Santo Expedito do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4177, 21, N'São Borja')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4178, 21, N'São Domingos do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4179, 21, N'São Francisco de Assis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4180, 21, N'São Francisco de Paula')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4181, 21, N'São Gabriel')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4182, 21, N'São Jerônimo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4183, 21, N'São João da Urtiga')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4184, 21, N'São João do Polêsine')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4185, 21, N'São Jorge')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4186, 21, N'São José das Missões')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4187, 21, N'São José do Herval')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4188, 21, N'São José do Hortêncio')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4189, 21, N'São José do Inhacorá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4190, 21, N'São José do Norte')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4191, 21, N'São José do Ouro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4192, 21, N'São José dos Ausentes')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4193, 21, N'São Leopoldo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4194, 21, N'São Lourenço do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4195, 21, N'São Luiz Gonzaga')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4196, 21, N'São Marcos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4197, 21, N'São Martinho')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4198, 21, N'São Martinho da Serra')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4199, 21, N'São Miguel das Missões')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4200, 21, N'São Nicolau')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4201, 21, N'São Paulo das Missões')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4202, 21, N'São Pedro da Serra')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4203, 21, N'São Pedro do Butiá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4204, 21, N'São Pedro do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4205, 21, N'São Sebastião do Caí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4206, 21, N'São Sepé')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4207, 21, N'São Valentim')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4208, 21, N'São Valentim do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4209, 21, N'São Valério do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4210, 21, N'São Vendelino')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4211, 21, N'São Vicente do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4212, 21, N'Sapiranga')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4213, 21, N'Sapucaia do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4214, 21, N'Sarandi')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4215, 21, N'Seberi')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4216, 21, N'Sede Nova')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4217, 21, N'Segredo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4218, 21, N'Selbach')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4219, 21, N'Senador Salgado Filho')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4220, 21, N'Sentinela do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4221, 21, N'Serafina Corrêa')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4222, 21, N'Sério')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4223, 21, N'Sertão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4224, 21, N'Sertão Santana')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4225, 21, N'Sete de Setembro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4226, 21, N'Severiano de Almeida')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4227, 21, N'Silveira Martins')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4228, 21, N'Sinimbu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4229, 21, N'Sobradinho')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4230, 21, N'Soledade')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4231, 21, N'Tabaí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4232, 21, N'Tapejara')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4233, 21, N'Tapera')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4234, 21, N'Tapes')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4235, 21, N'Taquara')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4236, 21, N'Taquari')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4237, 21, N'Taquaruçu do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4238, 21, N'Tavares')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4239, 21, N'Tenente Portela')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4240, 21, N'Terra de Areia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4241, 21, N'Teutônia')
GO
print 'Processed 4200 total records'
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4242, 21, N'Tiradentes do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4243, 21, N'Toropi')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4244, 21, N'Torres')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4245, 21, N'Tramandaí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4246, 21, N'Travesseiro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4247, 21, N'Três Arroios')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4248, 21, N'Três Cachoeiras')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4249, 21, N'Três Coroas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4250, 21, N'Três de Maio')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4251, 21, N'Três Forquilhas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4252, 21, N'Três Palmeiras')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4253, 21, N'Três Passos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4254, 21, N'Trindade do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4255, 21, N'Triunfo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4256, 21, N'Tucunduva')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4257, 21, N'Tunas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4258, 21, N'Tupanci do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4259, 21, N'Tupanciretã')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4260, 21, N'Tupandi')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4261, 21, N'Tuparendi')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4262, 21, N'Turuçu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4263, 21, N'Ubiretama')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4264, 21, N'União da Serra')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4265, 21, N'Unistalda')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4266, 21, N'Uruguaiana')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4267, 21, N'Vacaria')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4268, 21, N'Vale do Sol')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4269, 21, N'Vale Real')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4270, 21, N'Vale Verde')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4271, 21, N'Vanini')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4272, 21, N'Venâncio Aires')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4273, 21, N'Vera Cruz')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4274, 21, N'Veranópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4275, 21, N'Vespasiano Correa')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4276, 21, N'Viadutos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4277, 21, N'Viamão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4278, 21, N'Vicente Dutra')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4279, 21, N'Victor Graeff')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4280, 21, N'Vila Flores')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4281, 21, N'Vila Lângaro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4282, 21, N'Vila Maria')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4283, 21, N'Vila Nova do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4284, 21, N'Vista Alegre')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4285, 21, N'Vista Alegre do Prata')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4286, 21, N'Vista Gaúcha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4287, 21, N'Vitória das Missões')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4288, 21, N'Xangri-lá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4289, 22, N'Alta Floresta d`Oeste')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4290, 22, N'Alto Alegre dos Parecis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4291, 22, N'Alto Paraíso')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4292, 22, N'Alvorada d`Oeste')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4293, 22, N'Ariquemes')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4294, 22, N'Buritis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4295, 22, N'Cabixi')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4296, 22, N'Cacaulândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4297, 22, N'Cacoal')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4298, 22, N'Campo Novo de Rondônia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4299, 22, N'Candeias do Jamari')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4300, 22, N'Castanheiras')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4301, 22, N'Cerejeiras')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4302, 22, N'Chupinguaia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4303, 22, N'Colorado do Oeste')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4304, 22, N'Corumbiara')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4305, 22, N'Costa Marques')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4306, 22, N'Cujubim')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4307, 22, N'Espigão d`Oeste')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4308, 22, N'Governador Jorge Teixeira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4309, 22, N'Guajará-Mirim')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4310, 22, N'Itapuã do Oeste')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4311, 22, N'Jaru')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4312, 22, N'Ji-Paraná')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4313, 22, N'Machadinho d`Oeste')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4314, 22, N'Ministro Andreazza')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4315, 22, N'Mirante da Serra')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4316, 22, N'Monte Negro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4317, 22, N'Nova Brasilândia d`Oeste')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4318, 22, N'Nova Mamoré')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4319, 22, N'Nova União')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4320, 22, N'Novo Horizonte do Oeste')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4321, 22, N'Ouro Preto do Oeste')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4322, 22, N'Parecis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4323, 22, N'Pimenta Bueno')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4324, 22, N'Pimenteiras do Oeste')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4325, 22, N'Porto Velho')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4326, 22, N'Presidente Médici')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4327, 22, N'Primavera de Rondônia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4328, 22, N'Rio Crespo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4329, 22, N'Rolim de Moura')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4330, 22, N'Santa Luzia d`Oeste')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4331, 22, N'São Felipe d`Oeste')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4332, 22, N'São Francisco do Guaporé')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4333, 22, N'São Miguel do Guaporé')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4334, 22, N'Seringueiras')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4335, 22, N'Teixeirópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4336, 22, N'Theobroma')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4337, 22, N'Urupá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4338, 22, N'Vale do Anari')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4339, 22, N'Vale do Paraíso')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4340, 22, N'Vilhena')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4341, 23, N'Alto Alegre')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4342, 23, N'Amajari')
GO
print 'Processed 4300 total records'
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4343, 23, N'Boa Vista')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4344, 23, N'Bonfim')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4345, 23, N'Cantá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4346, 23, N'Caracaraí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4347, 23, N'Caroebe')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4348, 23, N'Iracema')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4349, 23, N'Mucajaí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4350, 23, N'Normandia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4351, 23, N'Pacaraima')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4352, 23, N'Rorainópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4353, 23, N'São João da Baliza')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4354, 23, N'São Luiz')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4355, 23, N'Uiramutã')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4356, 24, N'Abdon Batista')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4357, 24, N'Abelardo Luz')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4358, 24, N'Agrolândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4359, 24, N'Agronômica')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4360, 24, N'Água Doce')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4361, 24, N'Águas de Chapecó')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4362, 24, N'Águas Frias')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4363, 24, N'Águas Mornas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4364, 24, N'Alfredo Wagner')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4365, 24, N'Alto Bela Vista')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4366, 24, N'Anchieta')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4367, 24, N'Angelina')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4368, 24, N'Anita Garibaldi')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4369, 24, N'Anitápolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4370, 24, N'Antônio Carlos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4371, 24, N'Apiúna')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4372, 24, N'Arabutã')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4373, 24, N'Araquari')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4374, 24, N'Araranguá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4375, 24, N'Armazém')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4376, 24, N'Arroio Trinta')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4377, 24, N'Arvoredo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4378, 24, N'Ascurra')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4379, 24, N'Atalanta')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4380, 24, N'Aurora')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4381, 24, N'Balneário Arroio do Silva')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4382, 24, N'Balneário Barra do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4383, 24, N'Balneário Camboriú')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4384, 24, N'Balneário Gaivota')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4385, 24, N'Bandeirante')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4386, 24, N'Barra Bonita')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4387, 24, N'Barra Velha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4388, 24, N'Bela Vista do Toldo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4389, 24, N'Belmonte')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4390, 24, N'Benedito Novo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4391, 24, N'Biguaçu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4392, 24, N'Blumenau')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4393, 24, N'Bocaina do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4394, 24, N'Bom Jardim da Serra')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4395, 24, N'Bom Jesus')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4396, 24, N'Bom Jesus do Oeste')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4397, 24, N'Bom Retiro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4398, 24, N'Bombinhas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4399, 24, N'Botuverá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4400, 24, N'Braço do Norte')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4401, 24, N'Braço do Trombudo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4402, 24, N'Brunópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4403, 24, N'Brusque')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4404, 24, N'Caçador')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4405, 24, N'Caibi')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4406, 24, N'Calmon')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4407, 24, N'Camboriú')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4408, 24, N'Campo Alegre')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4409, 24, N'Campo Belo do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4410, 24, N'Campo Erê')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4411, 24, N'Campos Novos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4412, 24, N'Canelinha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4413, 24, N'Canoinhas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4414, 24, N'Capão Alto')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4415, 24, N'Capinzal')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4416, 24, N'Capivari de Baixo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4417, 24, N'Catanduvas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4418, 24, N'Caxambu do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4419, 24, N'Celso Ramos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4420, 24, N'Cerro Negro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4421, 24, N'Chapadão do Lageado')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4422, 24, N'Chapecó')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4423, 24, N'Cocal do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4424, 24, N'Concórdia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4425, 24, N'Cordilheira Alta')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4426, 24, N'Coronel Freitas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4427, 24, N'Coronel Martins')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4428, 24, N'Correia Pinto')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4429, 24, N'Corupá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4430, 24, N'Criciúma')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4431, 24, N'Cunha Porã')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4432, 24, N'Cunhataí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4433, 24, N'Curitibanos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4434, 24, N'Descanso')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4435, 24, N'Dionísio Cerqueira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4436, 24, N'Dona Emma')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4437, 24, N'Doutor Pedrinho')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4438, 24, N'Entre Rios')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4439, 24, N'Ermo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4440, 24, N'Erval Velho')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4441, 24, N'Faxinal dos Guedes')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4442, 24, N'Flor do Sertão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4443, 24, N'Florianópolis')
GO
print 'Processed 4400 total records'
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4444, 24, N'Formosa do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4445, 24, N'Forquilhinha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4446, 24, N'Fraiburgo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4447, 24, N'Frei Rogério')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4448, 24, N'Galvão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4449, 24, N'Garopaba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4450, 24, N'Garuva')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4451, 24, N'Gaspar')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4452, 24, N'Governador Celso Ramos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4453, 24, N'Grão Pará')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4454, 24, N'Gravatal')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4455, 24, N'Guabiruba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4456, 24, N'Guaraciaba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4457, 24, N'Guaramirim')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4458, 24, N'Guarujá do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4459, 24, N'Guatambú')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4460, 24, N'Herval d`Oeste')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4461, 24, N'Ibiam')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4462, 24, N'Ibicaré')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4463, 24, N'Ibirama')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4464, 24, N'Içara')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4465, 24, N'Ilhota')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4466, 24, N'Imaruí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4467, 24, N'Imbituba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4468, 24, N'Imbuia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4469, 24, N'Indaial')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4470, 24, N'Iomerê')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4471, 24, N'Ipira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4472, 24, N'Iporã do Oeste')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4473, 24, N'Ipuaçu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4474, 24, N'Ipumirim')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4475, 24, N'Iraceminha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4476, 24, N'Irani')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4477, 24, N'Irati')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4478, 24, N'Irineópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4479, 24, N'Itá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4480, 24, N'Itaiópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4481, 24, N'Itajaí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4482, 24, N'Itapema')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4483, 24, N'Itapiranga')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4484, 24, N'Itapoá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4485, 24, N'Ituporanga')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4486, 24, N'Jaborá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4487, 24, N'Jacinto Machado')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4488, 24, N'Jaguaruna')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4489, 24, N'Jaraguá do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4490, 24, N'Jardinópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4491, 24, N'Joaçaba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4492, 24, N'Joinville')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4493, 24, N'José Boiteux')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4494, 24, N'Jupiá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4495, 24, N'Lacerdópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4496, 24, N'Lages')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4497, 24, N'Laguna')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4498, 24, N'Lajeado Grande')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4499, 24, N'Laurentino')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4500, 24, N'Lauro Muller')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4501, 24, N'Lebon Régis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4502, 24, N'Leoberto Leal')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4503, 24, N'Lindóia do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4504, 24, N'Lontras')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4505, 24, N'Luiz Alves')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4506, 24, N'Luzerna')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4507, 24, N'Macieira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4508, 24, N'Mafra')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4509, 24, N'Major Gercino')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4510, 24, N'Major Vieira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4511, 24, N'Maracajá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4512, 24, N'Maravilha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4513, 24, N'Marema')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4514, 24, N'Massaranduba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4515, 24, N'Matos Costa')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4516, 24, N'Meleiro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4517, 24, N'Mirim Doce')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4518, 24, N'Modelo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4519, 24, N'Mondaí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4520, 24, N'Monte Carlo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4521, 24, N'Monte Castelo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4522, 24, N'Morro da Fumaça')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4523, 24, N'Morro Grande')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4524, 24, N'Navegantes')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4525, 24, N'Nova Erechim')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4526, 24, N'Nova Itaberaba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4527, 24, N'Nova Trento')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4528, 24, N'Nova Veneza')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4529, 24, N'Novo Horizonte')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4530, 24, N'Orleans')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4531, 24, N'Otacílio Costa')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4532, 24, N'Ouro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4533, 24, N'Ouro Verde')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4534, 24, N'Paial')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4535, 24, N'Painel')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4536, 24, N'Palhoça')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4537, 24, N'Palma Sola')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4538, 24, N'Palmeira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4539, 24, N'Palmitos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4540, 24, N'Papanduva')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4541, 24, N'Paraíso')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4542, 24, N'Passo de Torres')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4543, 24, N'Passos Maia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4544, 24, N'Paulo Lopes')
GO
print 'Processed 4500 total records'
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4545, 24, N'Pedras Grandes')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4546, 24, N'Penha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4547, 24, N'Peritiba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4548, 24, N'Petrolândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4549, 24, N'Piçarras')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4550, 24, N'Pinhalzinho')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4551, 24, N'Pinheiro Preto')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4552, 24, N'Piratuba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4553, 24, N'Planalto Alegre')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4554, 24, N'Pomerode')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4555, 24, N'Ponte Alta')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4556, 24, N'Ponte Alta do Norte')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4557, 24, N'Ponte Serrada')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4558, 24, N'Porto Belo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4559, 24, N'Porto União')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4560, 24, N'Pouso Redondo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4561, 24, N'Praia Grande')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4562, 24, N'Presidente Castelo Branco')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4563, 24, N'Presidente Getúlio')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4564, 24, N'Presidente Nereu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4565, 24, N'Princesa')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4566, 24, N'Quilombo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4567, 24, N'Rancho Queimado')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4568, 24, N'Rio das Antas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4569, 24, N'Rio do Campo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4570, 24, N'Rio do Oeste')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4571, 24, N'Rio do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4572, 24, N'Rio dos Cedros')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4573, 24, N'Rio Fortuna')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4574, 24, N'Rio Negrinho')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4575, 24, N'Rio Rufino')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4576, 24, N'Riqueza')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4577, 24, N'Rodeio')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4578, 24, N'Romelândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4579, 24, N'Salete')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4580, 24, N'Saltinho')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4581, 24, N'Salto Veloso')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4582, 24, N'Sangão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4583, 24, N'Santa Cecília')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4584, 24, N'Santa Helena')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4585, 24, N'Santa Rosa de Lima')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4586, 24, N'Santa Rosa do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4587, 24, N'Santa Terezinha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4588, 24, N'Santa Terezinha do Progresso')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4589, 24, N'Santiago do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4590, 24, N'Santo Amaro da Imperatriz')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4591, 24, N'São Bento do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4592, 24, N'São Bernardino')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4593, 24, N'São Bonifácio')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4594, 24, N'São Carlos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4595, 24, N'São Cristovão do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4596, 24, N'São Domingos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4597, 24, N'São Francisco do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4598, 24, N'São João Batista')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4599, 24, N'São João do Itaperiú')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4600, 24, N'São João do Oeste')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4601, 24, N'São João do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4602, 24, N'São Joaquim')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4603, 24, N'São José')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4604, 24, N'São José do Cedro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4605, 24, N'São José do Cerrito')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4606, 24, N'São Lourenço do Oeste')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4607, 24, N'São Ludgero')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4608, 24, N'São Martinho')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4609, 24, N'São Miguel da Boa Vista')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4610, 24, N'São Miguel do Oeste')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4611, 24, N'São Pedro de Alcântara')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4612, 24, N'Saudades')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4613, 24, N'Schroeder')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4614, 24, N'Seara')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4615, 24, N'Serra Alta')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4616, 24, N'Siderópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4617, 24, N'Sombrio')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4618, 24, N'Sul Brasil')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4619, 24, N'Taió')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4620, 24, N'Tangará')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4621, 24, N'Tigrinhos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4622, 24, N'Tijucas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4623, 24, N'Timbé do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4624, 24, N'Timbó')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4625, 24, N'Timbó Grande')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4626, 24, N'Três Barras')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4627, 24, N'Treviso')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4628, 24, N'Treze de Maio')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4629, 24, N'Treze Tílias')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4630, 24, N'Trombudo Central')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4631, 24, N'Tubarão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4632, 24, N'Tunápolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4633, 24, N'Turvo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4634, 24, N'União do Oeste')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4635, 24, N'Urubici')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4636, 24, N'Urupema')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4637, 24, N'Urussanga')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4638, 24, N'Vargeão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4639, 24, N'Vargem')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4640, 24, N'Vargem Bonita')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4641, 24, N'Vidal Ramos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4642, 24, N'Videira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4643, 24, N'Vitor Meireles')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4644, 24, N'Witmarsum')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4645, 24, N'Xanxerê')
GO
print 'Processed 4600 total records'
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4646, 24, N'Xavantina')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4647, 24, N'Xaxim')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4648, 24, N'Zortéa')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4649, 25, N'Adamantina')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4650, 25, N'Adolfo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4651, 25, N'Aguaí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4652, 25, N'Águas da Prata')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4653, 25, N'Águas de Lindóia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4654, 25, N'Águas de Santa Bárbara')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4655, 25, N'Águas de São Pedro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4656, 25, N'Agudos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4657, 25, N'Alambari')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4658, 25, N'Alfredo Marcondes')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4659, 25, N'Altair')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4660, 25, N'Altinópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4661, 25, N'Alto Alegre')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4662, 25, N'Alumínio')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4663, 25, N'Álvares Florence')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4664, 25, N'Álvares Machado')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4665, 25, N'Álvaro de Carvalho')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4666, 25, N'Alvinlândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4667, 25, N'Americana')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4668, 25, N'Américo Brasiliense')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4669, 25, N'Américo de Campos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4670, 25, N'Amparo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4671, 25, N'Analândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4672, 25, N'Andradina')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4673, 25, N'Angatuba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4674, 25, N'Anhembi')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4675, 25, N'Anhumas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4676, 25, N'Aparecida')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4677, 25, N'Aparecida d`Oeste')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4678, 25, N'Apiaí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4679, 25, N'Araçariguama')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4680, 25, N'Araçatuba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4681, 25, N'Araçoiaba da Serra')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4682, 25, N'Aramina')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4683, 25, N'Arandu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4684, 25, N'Arapeí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4685, 25, N'Araraquara')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4686, 25, N'Araras')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4687, 25, N'Arco-Íris')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4688, 25, N'Arealva')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4689, 25, N'Areias')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4690, 25, N'Areiópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4691, 25, N'Ariranha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4692, 25, N'Artur Nogueira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4693, 25, N'Arujá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4694, 25, N'Aspásia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4695, 25, N'Assis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4696, 25, N'Atibaia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4697, 25, N'Auriflama')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4698, 25, N'Avaí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4699, 25, N'Avanhandava')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4700, 25, N'Avaré')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4701, 25, N'Bady Bassitt')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4702, 25, N'Balbinos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4703, 25, N'Bálsamo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4704, 25, N'Bananal')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4705, 25, N'Barão de Antonina')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4706, 25, N'Barbosa')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4707, 25, N'Bariri')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4708, 25, N'Barra Bonita')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4709, 25, N'Barra do Chapéu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4710, 25, N'Barra do Turvo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4711, 25, N'Barretos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4712, 25, N'Barrinha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4713, 25, N'Barueri')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4714, 25, N'Bastos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4715, 25, N'Batatais')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4716, 25, N'Bauru')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4717, 25, N'Bebedouro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4718, 25, N'Bento de Abreu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4719, 25, N'Bernardino de Campos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4720, 25, N'Bertioga')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4721, 25, N'Bilac')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4722, 25, N'Birigui')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4723, 25, N'Biritiba-Mirim')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4724, 25, N'Boa Esperança do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4725, 25, N'Bocaina')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4726, 25, N'Bofete')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4727, 25, N'Boituva')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4728, 25, N'Bom Jesus dos Perdões')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4729, 25, N'Bom Sucesso de Itararé')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4730, 25, N'Borá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4731, 25, N'Boracéia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4732, 25, N'Borborema')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4733, 25, N'Borebi')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4734, 25, N'Botucatu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4735, 25, N'Bragança Paulista')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4736, 25, N'Braúna')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4737, 25, N'Brejo Alegre')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4738, 25, N'Brodowski')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4739, 25, N'Brotas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4740, 25, N'Buri')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4741, 25, N'Buritama')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4742, 25, N'Buritizal')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4743, 25, N'Cabrália Paulista')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4744, 25, N'Cabreúva')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4745, 25, N'Caçapava')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4746, 25, N'Cachoeira Paulista')
GO
print 'Processed 4700 total records'
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4747, 25, N'Caconde')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4748, 25, N'Cafelândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4749, 25, N'Caiabu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4750, 25, N'Caieiras')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4751, 25, N'Caiuá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4752, 25, N'Cajamar')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4753, 25, N'Cajati')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4754, 25, N'Cajobi')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4755, 25, N'Cajuru')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4756, 25, N'Campina do Monte Alegre')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4757, 25, N'Campinas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4758, 25, N'Campo Limpo Paulista')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4759, 25, N'Campos do Jordão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4760, 25, N'Campos Novos Paulista')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4761, 25, N'Cananéia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4762, 25, N'Canas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4763, 25, N'Cândido Mota')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4764, 25, N'Cândido Rodrigues')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4765, 25, N'Canitar')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4766, 25, N'Capão Bonito')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4767, 25, N'Capela do Alto')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4768, 25, N'Capivari')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4769, 25, N'Caraguatatuba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4770, 25, N'Carapicuíba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4771, 25, N'Cardoso')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4772, 25, N'Casa Branca')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4773, 25, N'Cássia dos Coqueiros')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4774, 25, N'Castilho')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4775, 25, N'Catanduva')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4776, 25, N'Catiguá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4777, 25, N'Cedral')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4778, 25, N'Cerqueira César')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4779, 25, N'Cerquilho')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4780, 25, N'Cesário Lange')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4781, 25, N'Charqueada')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4782, 25, N'Chavantes')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4783, 25, N'Clementina')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4784, 25, N'Colina')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4785, 25, N'Colômbia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4786, 25, N'Conchal')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4787, 25, N'Conchas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4788, 25, N'Cordeirópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4789, 25, N'Coroados')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4790, 25, N'Coronel Macedo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4791, 25, N'Corumbataí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4792, 25, N'Cosmópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4793, 25, N'Cosmorama')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4794, 25, N'Cotia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4795, 25, N'Cravinhos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4796, 25, N'Cristais Paulista')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4797, 25, N'Cruzália')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4798, 25, N'Cruzeiro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4799, 25, N'Cubatão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4800, 25, N'Cunha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4801, 25, N'Descalvado')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4802, 25, N'Diadema')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4803, 25, N'Dirce Reis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4804, 25, N'Divinolândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4805, 25, N'Dobrada')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4806, 25, N'Dois Córregos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4807, 25, N'Dolcinópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4808, 25, N'Dourado')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4809, 25, N'Dracena')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4810, 25, N'Duartina')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4811, 25, N'Dumont')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4812, 25, N'Echaporã')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4813, 25, N'Eldorado')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4814, 25, N'Elias Fausto')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4815, 25, N'Elisiário')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4816, 25, N'Embaúba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4817, 25, N'Embu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4818, 25, N'Embu-Guaçu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4819, 25, N'Emilianópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4820, 25, N'Engenheiro Coelho')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4821, 25, N'Espírito Santo do Pinhal')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4822, 25, N'Espírito Santo do Turvo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4823, 25, N'Estiva Gerbi')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4824, 25, N'Estrela d`Oeste')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4825, 25, N'Estrela do Norte')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4826, 25, N'Euclides da Cunha Paulista')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4827, 25, N'Fartura')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4828, 25, N'Fernando Prestes')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4829, 25, N'Fernandópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4830, 25, N'Fernão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4831, 25, N'Ferraz de Vasconcelos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4832, 25, N'Flora Rica')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4833, 25, N'Floreal')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4834, 25, N'Florínia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4835, 25, N'Flórida Paulista')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4836, 25, N'Franca')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4837, 25, N'Francisco Morato')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4838, 25, N'Franco da Rocha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4839, 25, N'Gabriel Monteiro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4840, 25, N'Gália')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4841, 25, N'Garça')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4842, 25, N'Gastão Vidigal')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4843, 25, N'Gavião Peixoto')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4844, 25, N'General Salgado')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4845, 25, N'Getulina')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4846, 25, N'Glicério')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4847, 25, N'Guaiçara')
GO
print 'Processed 4800 total records'
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4848, 25, N'Guaimbê')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4849, 25, N'Guaíra')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4850, 25, N'Guapiaçu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4851, 25, N'Guapiara')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4852, 25, N'Guará')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4853, 25, N'Guaraçaí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4854, 25, N'Guaraci')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4855, 25, N'Guarani d`Oeste')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4856, 25, N'Guarantã')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4857, 25, N'Guararapes')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4858, 25, N'Guararema')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4859, 25, N'Guaratinguetá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4860, 25, N'Guareí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4861, 25, N'Guariba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4862, 25, N'Guarujá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4863, 25, N'Guarulhos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4864, 25, N'Guatapará')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4865, 25, N'Guzolândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4866, 25, N'Herculândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4867, 25, N'Holambra')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4868, 25, N'Hortolândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4869, 25, N'Iacanga')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4870, 25, N'Iacri')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4871, 25, N'Iaras')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4872, 25, N'Ibaté')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4873, 25, N'Ibirá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4874, 25, N'Ibirarema')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4875, 25, N'Ibitinga')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4876, 25, N'Ibiúna')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4877, 25, N'Icém')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4878, 25, N'Iepê')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4879, 25, N'Igaraçu do Tietê')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4880, 25, N'Igarapava')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4881, 25, N'Igaratá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4882, 25, N'Iguape')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4883, 25, N'Ilha Comprida')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4884, 25, N'Ilha Solteira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4885, 25, N'Ilhabela')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4886, 25, N'Indaiatuba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4887, 25, N'Indiana')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4888, 25, N'Indiaporã')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4889, 25, N'Inúbia Paulista')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4890, 25, N'Ipauçu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4891, 25, N'Iperó')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4892, 25, N'Ipeúna')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4893, 25, N'Ipiguá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4894, 25, N'Iporanga')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4895, 25, N'Ipuã')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4896, 25, N'Iracemápolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4897, 25, N'Irapuã')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4898, 25, N'Irapuru')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4899, 25, N'Itaberá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4900, 25, N'Itaí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4901, 25, N'Itajobi')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4902, 25, N'Itaju')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4903, 25, N'Itanhaém')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4904, 25, N'Itaóca')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4905, 25, N'Itapecerica da Serra')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4906, 25, N'Itapetininga')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4907, 25, N'Itapeva')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4908, 25, N'Itapevi')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4909, 25, N'Itapira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4910, 25, N'Itapirapuã Paulista')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4911, 25, N'Itápolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4912, 25, N'Itaporanga')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4913, 25, N'Itapuí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4914, 25, N'Itapura')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4915, 25, N'Itaquaquecetuba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4916, 25, N'Itararé')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4917, 25, N'Itariri')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4918, 25, N'Itatiba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4919, 25, N'Itatinga')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4920, 25, N'Itirapina')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4921, 25, N'Itirapuã')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4922, 25, N'Itobi')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4923, 25, N'Itu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4924, 25, N'Itupeva')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4925, 25, N'Ituverava')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4926, 25, N'Jaborandi')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4927, 25, N'Jaboticabal')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4928, 25, N'Jacareí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4929, 25, N'Jaci')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4930, 25, N'Jacupiranga')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4931, 25, N'Jaguariúna')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4932, 25, N'Jales')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4933, 25, N'Jambeiro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4934, 25, N'Jandira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4935, 25, N'Jardinópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4936, 25, N'Jarinu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4937, 25, N'Jaú')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4938, 25, N'Jeriquara')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4939, 25, N'Joanópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4940, 25, N'João Ramalho')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4941, 25, N'José Bonifácio')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4942, 25, N'Júlio Mesquita')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4943, 25, N'Jumirim')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4944, 25, N'Jundiaí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4945, 25, N'Junqueirópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4946, 25, N'Juquiá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4947, 25, N'Juquitiba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4948, 25, N'Lagoinha')
GO
print 'Processed 4900 total records'
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4949, 25, N'Laranjal Paulista')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4950, 25, N'Lavínia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4951, 25, N'Lavrinhas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4952, 25, N'Leme')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4953, 25, N'Lençóis Paulista')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4954, 25, N'Limeira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4955, 25, N'Lindóia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4956, 25, N'Lins')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4957, 25, N'Lorena')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4958, 25, N'Lourdes')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4959, 25, N'Louveira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4960, 25, N'Lucélia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4961, 25, N'Lucianópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4962, 25, N'Luís Antônio')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4963, 25, N'Luiziânia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4964, 25, N'Lupércio')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4965, 25, N'Lutécia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4966, 25, N'Macatuba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4967, 25, N'Macaubal')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4968, 25, N'Macedônia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4969, 25, N'Magda')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4970, 25, N'Mairinque')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4971, 25, N'Mairiporã')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4972, 25, N'Manduri')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4973, 25, N'Marabá Paulista')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4974, 25, N'Maracaí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4975, 25, N'Marapoama')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4976, 25, N'Mariápolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4977, 25, N'Marília')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4978, 25, N'Marinópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4979, 25, N'Martinópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4980, 25, N'Matão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4981, 25, N'Mauá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4982, 25, N'Mendonça')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4983, 25, N'Meridiano')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4984, 25, N'Mesópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4985, 25, N'Miguelópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4986, 25, N'Mineiros do Tietê')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4987, 25, N'Mira Estrela')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4988, 25, N'Miracatu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4989, 25, N'Mirandópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4990, 25, N'Mirante do Paranapanema')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4991, 25, N'Mirassol')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4992, 25, N'Mirassolândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4993, 25, N'Mococa')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4994, 25, N'Mogi das Cruzes')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4995, 25, N'Mogi Guaçu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4996, 25, N'Mogi-Mirim')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4997, 25, N'Mombuca')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4998, 25, N'Monções')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (4999, 25, N'Mongaguá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5000, 25, N'Monte Alegre do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5001, 25, N'Monte Alto')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5002, 25, N'Monte Aprazível')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5003, 25, N'Monte Azul Paulista')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5004, 25, N'Monte Castelo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5005, 25, N'Monte Mor')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5006, 25, N'Monteiro Lobato')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5007, 25, N'Morro Agudo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5008, 25, N'Morungaba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5009, 25, N'Motuca')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5010, 25, N'Murutinga do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5011, 25, N'Nantes')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5012, 25, N'Narandiba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5013, 25, N'Natividade da Serra')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5014, 25, N'Nazaré Paulista')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5015, 25, N'Neves Paulista')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5016, 25, N'Nhandeara')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5017, 25, N'Nipoã')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5018, 25, N'Nova Aliança')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5019, 25, N'Nova Campina')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5020, 25, N'Nova Canaã Paulista')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5021, 25, N'Nova Castilho')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5022, 25, N'Nova Europa')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5023, 25, N'Nova Granada')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5024, 25, N'Nova Guataporanga')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5025, 25, N'Nova Independência')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5026, 25, N'Nova Luzitânia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5027, 25, N'Nova Odessa')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5028, 25, N'Novais')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5029, 25, N'Novo Horizonte')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5030, 25, N'Nuporanga')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5031, 25, N'Ocauçu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5032, 25, N'Óleo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5033, 25, N'Olímpia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5034, 25, N'Onda Verde')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5035, 25, N'Oriente')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5036, 25, N'Orindiúva')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5037, 25, N'Orlândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5038, 25, N'Osasco')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5039, 25, N'Oscar Bressane')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5040, 25, N'Osvaldo Cruz')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5041, 25, N'Ourinhos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5042, 25, N'Ouro Verde')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5043, 25, N'Ouroeste')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5044, 25, N'Pacaembu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5045, 25, N'Palestina')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5046, 25, N'Palmares Paulista')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5047, 25, N'Palmeira d`Oeste')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5048, 25, N'Palmital')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5049, 25, N'Panorama')
GO
print 'Processed 5000 total records'
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5050, 25, N'Paraguaçu Paulista')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5051, 25, N'Paraibuna')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5052, 25, N'Paraíso')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5053, 25, N'Paranapanema')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5054, 25, N'Paranapuã')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5055, 25, N'Parapuã')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5056, 25, N'Pardinho')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5057, 25, N'Pariquera-Açu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5058, 25, N'Parisi')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5059, 25, N'Patrocínio Paulista')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5060, 25, N'Paulicéia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5061, 25, N'Paulínia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5062, 25, N'Paulistânia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5063, 25, N'Paulo de Faria')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5064, 25, N'Pederneiras')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5065, 25, N'Pedra Bela')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5066, 25, N'Pedranópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5067, 25, N'Pedregulho')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5068, 25, N'Pedreira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5069, 25, N'Pedrinhas Paulista')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5070, 25, N'Pedro de Toledo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5071, 25, N'Penápolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5072, 25, N'Pereira Barreto')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5073, 25, N'Pereiras')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5074, 25, N'Peruíbe')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5075, 25, N'Piacatu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5076, 25, N'Piedade')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5077, 25, N'Pilar do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5078, 25, N'Pindamonhangaba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5079, 25, N'Pindorama')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5080, 25, N'Pinhalzinho')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5081, 25, N'Piquerobi')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5082, 25, N'Piquete')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5083, 25, N'Piracaia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5084, 25, N'Piracicaba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5085, 25, N'Piraju')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5086, 25, N'Pirajuí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5087, 25, N'Pirangi')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5088, 25, N'Pirapora do Bom Jesus')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5089, 25, N'Pirapozinho')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5090, 25, N'Pirassununga')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5091, 25, N'Piratininga')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5092, 25, N'Pitangueiras')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5093, 25, N'Planalto')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5094, 25, N'Platina')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5095, 25, N'Poá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5096, 25, N'Poloni')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5097, 25, N'Pompéia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5098, 25, N'Pongaí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5099, 25, N'Pontal')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5100, 25, N'Pontalinda')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5101, 25, N'Pontes Gestal')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5102, 25, N'Populina')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5103, 25, N'Porangaba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5104, 25, N'Porto Feliz')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5105, 25, N'Porto Ferreira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5106, 25, N'Potim')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5107, 25, N'Potirendaba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5108, 25, N'Pracinha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5109, 25, N'Pradópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5110, 25, N'Praia Grande')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5111, 25, N'Pratânia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5112, 25, N'Presidente Alves')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5113, 25, N'Presidente Bernardes')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5114, 25, N'Presidente Epitácio')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5115, 25, N'Presidente Prudente')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5116, 25, N'Presidente Venceslau')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5117, 25, N'Promissão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5118, 25, N'Quadra')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5119, 25, N'Quatá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5120, 25, N'Queiroz')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5121, 25, N'Queluz')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5122, 25, N'Quintana')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5123, 25, N'Rafard')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5124, 25, N'Rancharia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5125, 25, N'Redenção da Serra')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5126, 25, N'Regente Feijó')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5127, 25, N'Reginópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5128, 25, N'Registro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5129, 25, N'Restinga')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5130, 25, N'Ribeira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5131, 25, N'Ribeirão Bonito')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5132, 25, N'Ribeirão Branco')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5133, 25, N'Ribeirão Corrente')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5134, 25, N'Ribeirão do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5135, 25, N'Ribeirão dos Índios')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5136, 25, N'Ribeirão Grande')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5137, 25, N'Ribeirão Pires')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5138, 25, N'Ribeirão Preto')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5139, 25, N'Rifaina')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5140, 25, N'Rincão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5141, 25, N'Rinópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5142, 25, N'Rio Claro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5143, 25, N'Rio das Pedras')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5144, 25, N'Rio Grande da Serra')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5145, 25, N'Riolândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5146, 25, N'Riversul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5147, 25, N'Rosana')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5148, 25, N'Roseira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5149, 25, N'Rubiácea')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5150, 25, N'Rubinéia')
GO
print 'Processed 5100 total records'
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5151, 25, N'Sabino')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5152, 25, N'Sagres')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5153, 25, N'Sales')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5154, 25, N'Sales Oliveira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5155, 25, N'Salesópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5156, 25, N'Salmourão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5157, 25, N'Saltinho')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5158, 25, N'Salto')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5159, 25, N'Salto de Pirapora')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5160, 25, N'Salto Grande')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5161, 25, N'Sandovalina')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5162, 25, N'Santa Adélia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5163, 25, N'Santa Albertina')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5164, 25, N'Santa Bárbara d`Oeste')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5165, 25, N'Santa Branca')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5166, 25, N'Santa Clara d`Oeste')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5167, 25, N'Santa Cruz da Conceição')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5168, 25, N'Santa Cruz da Esperança')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5169, 25, N'Santa Cruz das Palmeiras')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5170, 25, N'Santa Cruz do Rio Pardo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5171, 25, N'Santa Ernestina')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5172, 25, N'Santa Fé do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5173, 25, N'Santa Gertrudes')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5174, 25, N'Santa Isabel')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5175, 25, N'Santa Lúcia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5176, 25, N'Santa Maria da Serra')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5177, 25, N'Santa Mercedes')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5178, 25, N'Santa Rita d`Oeste')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5179, 25, N'Santa Rita do Passa Quatro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5180, 25, N'Santa Rosa de Viterbo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5181, 25, N'Santa Salete')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5182, 25, N'Santana da Ponte Pensa')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5183, 25, N'Santana de Parnaíba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5184, 25, N'Santo Anastácio')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5185, 25, N'Santo André')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5186, 25, N'Santo Antônio da Alegria')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5187, 25, N'Santo Antônio de Posse')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5188, 25, N'Santo Antônio do Aracanguá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5189, 25, N'Santo Antônio do Jardim')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5190, 25, N'Santo Antônio do Pinhal')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5191, 25, N'Santo Expedito')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5192, 25, N'Santópolis do Aguapeí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5193, 25, N'Santos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5194, 25, N'São Bento do Sapucaí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5195, 25, N'São Bernardo do Campo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5196, 25, N'São Caetano do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5197, 25, N'São Carlos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5198, 25, N'São Francisco')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5199, 25, N'São João da Boa Vista')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5200, 25, N'São João das Duas Pontes')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5201, 25, N'São João de Iracema')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5202, 25, N'São João do Pau d`Alho')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5203, 25, N'São Joaquim da Barra')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5204, 25, N'São José da Bela Vista')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5205, 25, N'São José do Barreiro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5206, 25, N'São José do Rio Pardo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5207, 25, N'São José do Rio Preto')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5208, 25, N'São José dos Campos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5209, 25, N'São Lourenço da Serra')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5210, 25, N'São Luís do Paraitinga')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5211, 25, N'São Manuel')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5212, 25, N'São Miguel Arcanjo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5213, 25, N'São Paulo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5214, 25, N'São Pedro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5215, 25, N'São Pedro do Turvo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5216, 25, N'São Roque')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5217, 25, N'São Sebastião')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5218, 25, N'São Sebastião da Grama')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5219, 25, N'São Simão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5220, 25, N'São Vicente')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5221, 25, N'Sarapuí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5222, 25, N'Sarutaiá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5223, 25, N'Sebastianópolis do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5224, 25, N'Serra Azul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5225, 25, N'Serra Negra')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5226, 25, N'Serrana')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5227, 25, N'Sertãozinho')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5228, 25, N'Sete Barras')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5229, 25, N'Severínia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5230, 25, N'Silveiras')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5231, 25, N'Socorro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5232, 25, N'Sorocaba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5233, 25, N'Sud Mennucci')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5234, 25, N'Sumaré')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5235, 25, N'Suzanápolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5236, 25, N'Suzano')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5237, 25, N'Tabapuã')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5238, 25, N'Tabatinga')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5239, 25, N'Taboão da Serra')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5240, 25, N'Taciba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5241, 25, N'Taguaí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5242, 25, N'Taiaçu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5243, 25, N'Taiúva')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5244, 25, N'Tambaú')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5245, 25, N'Tanabi')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5246, 25, N'Tapiraí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5247, 25, N'Tapiratiba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5248, 25, N'Taquaral')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5249, 25, N'Taquaritinga')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5250, 25, N'Taquarituba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5251, 25, N'Taquarivaí')
GO
print 'Processed 5200 total records'
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5252, 25, N'Tarabai')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5253, 25, N'Tarumã')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5254, 25, N'Tatuí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5255, 25, N'Taubaté')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5256, 25, N'Tejupá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5257, 25, N'Teodoro Sampaio')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5258, 25, N'Terra Roxa')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5259, 25, N'Tietê')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5260, 25, N'Timburi')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5261, 25, N'Torre de Pedra')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5262, 25, N'Torrinha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5263, 25, N'Trabiju')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5264, 25, N'Tremembé')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5265, 25, N'Três Fronteiras')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5266, 25, N'Tuiuti')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5267, 25, N'Tupã')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5268, 25, N'Tupi Paulista')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5269, 25, N'Turiúba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5270, 25, N'Turmalina')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5271, 25, N'Ubarana')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5272, 25, N'Ubatuba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5273, 25, N'Ubirajara')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5274, 25, N'Uchoa')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5275, 25, N'União Paulista')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5276, 25, N'Urânia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5277, 25, N'Uru')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5278, 25, N'Urupês')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5279, 25, N'Valentim Gentil')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5280, 25, N'Valinhos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5281, 25, N'Valparaíso')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5282, 25, N'Vargem')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5283, 25, N'Vargem Grande do Sul')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5284, 25, N'Vargem Grande Paulista')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5285, 25, N'Várzea Paulista')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5286, 25, N'Vera Cruz')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5287, 25, N'Vinhedo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5288, 25, N'Viradouro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5289, 25, N'Vista Alegre do Alto')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5290, 25, N'Vitória Brasil')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5291, 25, N'Votorantim')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5292, 25, N'Votuporanga')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5293, 25, N'Zacarias')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5294, 26, N'Amparo de São Francisco')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5295, 26, N'Aquidabã')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5296, 26, N'Aracaju')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5297, 26, N'Arauá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5298, 26, N'Areia Branca')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5299, 26, N'Barra dos Coqueiros')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5300, 26, N'Boquim')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5301, 26, N'Brejo Grande')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5302, 26, N'Campo do Brito')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5303, 26, N'Canhoba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5304, 26, N'Canindé de São Francisco')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5305, 26, N'Capela')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5306, 26, N'Carira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5307, 26, N'Carmópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5308, 26, N'Cedro de São João')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5309, 26, N'Cristinápolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5310, 26, N'Cumbe')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5311, 26, N'Divina Pastora')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5312, 26, N'Estância')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5313, 26, N'Feira Nova')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5314, 26, N'Frei Paulo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5315, 26, N'Gararu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5316, 26, N'General Maynard')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5317, 26, N'Gracho Cardoso')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5318, 26, N'Ilha das Flores')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5319, 26, N'Indiaroba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5320, 26, N'Itabaiana')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5321, 26, N'Itabaianinha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5322, 26, N'Itabi')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5323, 26, N'Itaporanga d`Ajuda')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5324, 26, N'Japaratuba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5325, 26, N'Japoatã')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5326, 26, N'Lagarto')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5327, 26, N'Laranjeiras')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5328, 26, N'Macambira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5329, 26, N'Malhada dos Bois')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5330, 26, N'Malhador')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5331, 26, N'Maruim')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5332, 26, N'Moita Bonita')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5333, 26, N'Monte Alegre de Sergipe')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5334, 26, N'Muribeca')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5335, 26, N'Neópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5336, 26, N'Nossa Senhora Aparecida')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5337, 26, N'Nossa Senhora da Glória')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5338, 26, N'Nossa Senhora das Dores')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5339, 26, N'Nossa Senhora de Lourdes')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5340, 26, N'Nossa Senhora do Socorro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5341, 26, N'Pacatuba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5342, 26, N'Pedra Mole')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5343, 26, N'Pedrinhas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5344, 26, N'Pinhão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5345, 26, N'Pirambu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5346, 26, N'Poço Redondo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5347, 26, N'Poço Verde')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5348, 26, N'Porto da Folha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5349, 26, N'Propriá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5350, 26, N'Riachão do Dantas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5351, 26, N'Riachuelo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5352, 26, N'Ribeirópolis')
GO
print 'Processed 5300 total records'
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5353, 26, N'Rosário do Catete')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5354, 26, N'Salgado')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5355, 26, N'Santa Luzia do Itanhy')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5356, 26, N'Santa Rosa de Lima')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5357, 26, N'Santana do São Francisco')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5358, 26, N'Santo Amaro das Brotas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5359, 26, N'São Cristóvão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5360, 26, N'São Domingos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5361, 26, N'São Francisco')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5362, 26, N'São Miguel do Aleixo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5363, 26, N'Simão Dias')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5364, 26, N'Siriri')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5365, 26, N'Telha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5366, 26, N'Tobias Barreto')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5367, 26, N'Tomar do Geru')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5368, 26, N'Umbaúba')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5369, 27, N'Abreulândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5370, 27, N'Aguiarnópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5371, 27, N'Aliança do Tocantins')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5372, 27, N'Almas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5373, 27, N'Alvorada')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5374, 27, N'Ananás')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5375, 27, N'Angico')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5376, 27, N'Aparecida do Rio Negro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5377, 27, N'Aragominas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5378, 27, N'Araguacema')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5379, 27, N'Araguaçu')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5380, 27, N'Araguaína')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5381, 27, N'Araguanã')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5382, 27, N'Araguatins')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5383, 27, N'Arapoema')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5384, 27, N'Arraias')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5385, 27, N'Augustinópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5386, 27, N'Aurora do Tocantins')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5387, 27, N'Axixá do Tocantins')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5388, 27, N'Babaçulândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5389, 27, N'Bandeirantes do Tocantins')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5390, 27, N'Barra do Ouro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5391, 27, N'Barrolândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5392, 27, N'Bernardo Sayão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5393, 27, N'Bom Jesus do Tocantins')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5394, 27, N'Brasilândia do Tocantins')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5395, 27, N'Brejinho de Nazaré')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5396, 27, N'Buriti do Tocantins')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5397, 27, N'Cachoeirinha')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5398, 27, N'Campos Lindos')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5399, 27, N'Cariri do Tocantins')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5400, 27, N'Carmolândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5401, 27, N'Carrasco Bonito')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5402, 27, N'Caseara')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5403, 27, N'Centenário')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5404, 27, N'Chapada da Natividade')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5405, 27, N'Chapada de Areia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5406, 27, N'Colinas do Tocantins')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5407, 27, N'Colméia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5408, 27, N'Combinado')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5409, 27, N'Conceição do Tocantins')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5410, 27, N'Couto de Magalhães')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5411, 27, N'Cristalândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5412, 27, N'Crixás do Tocantins')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5413, 27, N'Darcinópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5414, 27, N'Dianópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5415, 27, N'Divinópolis do Tocantins')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5416, 27, N'Dois Irmãos do Tocantins')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5417, 27, N'Dueré')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5418, 27, N'Esperantina')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5419, 27, N'Fátima')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5420, 27, N'Figueirópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5421, 27, N'Filadélfia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5422, 27, N'Formoso do Araguaia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5423, 27, N'Fortaleza do Tabocão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5424, 27, N'Goianorte')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5425, 27, N'Goiatins')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5426, 27, N'Guaraí')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5427, 27, N'Gurupi')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5428, 27, N'Ipueiras')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5429, 27, N'Itacajá')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5430, 27, N'Itaguatins')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5431, 27, N'Itapiratins')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5432, 27, N'Itaporã do Tocantins')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5433, 27, N'Jaú do Tocantins')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5434, 27, N'Juarina')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5435, 27, N'Lagoa da Confusão')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5436, 27, N'Lagoa do Tocantins')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5437, 27, N'Lajeado')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5438, 27, N'Lavandeira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5439, 27, N'Lizarda')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5440, 27, N'Luzinópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5441, 27, N'Marianópolis do Tocantins')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5442, 27, N'Mateiros')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5443, 27, N'Maurilândia do Tocantins')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5444, 27, N'Miracema do Tocantins')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5445, 27, N'Miranorte')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5446, 27, N'Monte do Carmo')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5447, 27, N'Monte Santo do Tocantins')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5448, 27, N'Muricilândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5449, 27, N'Natividade')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5450, 27, N'Nazaré')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5451, 27, N'Nova Olinda')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5452, 27, N'Nova Rosalândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5453, 27, N'Novo Acordo')
GO
print 'Processed 5400 total records'
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5454, 27, N'Novo Alegre')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5455, 27, N'Novo Jardim')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5456, 27, N'Oliveira de Fátima')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5457, 27, N'Palmas')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5458, 27, N'Palmeirante')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5459, 27, N'Palmeiras do Tocantins')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5460, 27, N'Palmeirópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5461, 27, N'Paraíso do Tocantins')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5462, 27, N'Paranã')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5463, 27, N'Pau d`Arco')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5464, 27, N'Pedro Afonso')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5465, 27, N'Peixe')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5466, 27, N'Pequizeiro')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5467, 27, N'Pindorama do Tocantins')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5468, 27, N'Piraquê')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5469, 27, N'Pium')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5470, 27, N'Ponte Alta do Bom Jesus')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5471, 27, N'Ponte Alta do Tocantins')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5472, 27, N'Porto Alegre do Tocantins')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5473, 27, N'Porto Nacional')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5474, 27, N'Praia Norte')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5475, 27, N'Presidente Kennedy')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5476, 27, N'Pugmil')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5477, 27, N'Recursolândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5478, 27, N'Riachinho')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5479, 27, N'Rio da Conceição')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5480, 27, N'Rio dos Bois')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5481, 27, N'Rio Sono')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5482, 27, N'Sampaio')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5483, 27, N'Sandolândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5484, 27, N'Santa Fé do Araguaia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5485, 27, N'Santa Maria do Tocantins')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5486, 27, N'Santa Rita do Tocantins')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5487, 27, N'Santa Rosa do Tocantins')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5488, 27, N'Santa Tereza do Tocantins')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5489, 27, N'Santa Terezinha do Tocantins')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5490, 27, N'São Bento do Tocantins')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5491, 27, N'São Félix do Tocantins')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5492, 27, N'São Miguel do Tocantins')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5493, 27, N'São Salvador do Tocantins')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5494, 27, N'São Sebastião do Tocantins')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5495, 27, N'São Valério da Natividade')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5496, 27, N'Silvanópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5497, 27, N'Sítio Novo do Tocantins')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5498, 27, N'Sucupira')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5499, 27, N'Taguatinga')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5500, 27, N'Taipas do Tocantins')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5501, 27, N'Talismã')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5502, 27, N'Tocantínia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5503, 27, N'Tocantinópolis')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5504, 27, N'Tupirama')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5505, 27, N'Tupiratins')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5506, 27, N'Wanderlândia')
INSERT [dbo].[Cidade] ([IDCidade], [IDEstado], [Cidade]) VALUES (5507, 27, N'Xambioá')
SET IDENTITY_INSERT [dbo].[Cidade] OFF
/****** Object:  Table [dbo].[Endereco]    Script Date: 03/15/2010 01:09:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Endereco](
	[IDEndereco] [int] IDENTITY(1,1) NOT NULL,
	[logradouro] [varchar](150) NOT NULL,
	[numero] [int] NOT NULL,
	[complemento] [varchar](20) NULL,
	[cep] [int] NOT NULL,
	[IDCidade] [int] NOT NULL,
	[bairro] [varchar](100) NOT NULL,
 CONSTRAINT [PK__Endereco__0565787C0BC6C43E] PRIMARY KEY CLUSTERED 
(
	[IDEndereco] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Empresa]    Script Date: 03/15/2010 01:09:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Empresa](
	[IDEmpresa] [int] IDENTITY(1,1) NOT NULL,
	[IDEndereco] [int] NULL,
	[nomeFantasia] [varchar](150) NOT NULL,
	[razaoSocial] [varchar](250) NOT NULL,
	[cnpj] [char](14) NOT NULL,
	[ie] [int] NULL,
	[im] [int] NULL,
	[telefone] [nchar](10) NULL,
	[fax] [nchar](10) NULL,
	[email] [varchar](50) NULL,
	[tipoEmpresa] [varchar](10) NOT NULL,
	[dataCadastro] [datetime] NOT NULL,
	[dataUltimaAlteracao] [datetime] NOT NULL,
 CONSTRAINT [PK_Empresa] PRIMARY KEY CLUSTERED 
(
	[IDEmpresa] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 03/15/2010 01:09:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cliente](
	[IDCliente] [int] IDENTITY(1,1) NOT NULL,
	[IDEndereco] [int] NOT NULL,
	[IDUsuario] [int] NOT NULL,
	[nome] [varchar](150) NOT NULL,
	[dataNascimento] [datetime] NULL,
	[cpf] [char](11) NOT NULL,
	[rg] [int] NULL,
	[orgaoEmissorRg] [varchar](20) NULL,
	[naturalidade] [varchar](50) NULL,
	[nacionalidade] [varchar](50) NULL,
	[telefoneFixo] [nchar](10) NULL,
	[celular] [nchar](10) NULL,
	[email] [varchar](50) NULL,
	[dataCadastro] [datetime] NOT NULL,
	[dataUltimaAlteracao] [datetime] NOT NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[IDCliente] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Fornecedor]    Script Date: 03/15/2010 01:09:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Fornecedor](
	[IDFornecedor] [int] IDENTITY(1,1) NOT NULL,
	[IDEndereco] [int] NULL,
	[nomeFantasia] [varchar](150) NOT NULL,
	[razaoSocial] [varchar](250) NOT NULL,
	[cnpj] [char](14) NOT NULL,
	[ie] [int] NULL,
	[im] [int] NULL,
	[email] [varchar](50) NULL,
	[telefone] [nchar](10) NULL,
	[fax] [nchar](10) NULL,
	[url] [varchar](50) NULL,
	[dataCadastro] [datetime] NOT NULL,
	[dataUltimaAlteracao] [datetime] NOT NULL,
 CONSTRAINT [PK_Fornecedor] PRIMARY KEY CLUSTERED 
(
	[IDFornecedor] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Instituicao]    Script Date: 03/15/2010 01:09:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Instituicao](
	[IDInstituicao] [int] IDENTITY(1,1) NOT NULL,
	[IDEndereco] [int] NOT NULL,
	[razaoSocial] [varchar](250) NOT NULL,
	[nomeFantasia] [varchar](150) NOT NULL,
	[telefone] [nchar](10) NOT NULL,
	[fax] [nchar](10) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[url] [varchar](50) NOT NULL,
	[dataCadastro] [datetime] NOT NULL,
	[dataUltimaAlteracao] [datetime] NOT NULL,
 CONSTRAINT [PK_Instituicao] PRIMARY KEY CLUSTERED 
(
	[IDInstituicao] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Funcionario]    Script Date: 03/15/2010 01:09:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Funcionario](
	[IDFuncionario] [int] IDENTITY(1,1) NOT NULL,
	[IDEndereco] [int] NOT NULL,
	[IDUsuario] [int] NOT NULL,
	[IDEmpresa] [int] NOT NULL,
	[nome] [varchar](50) NOT NULL,
	[dataNascimento] [datetime] NULL,
	[cpf] [char](11) NOT NULL,
	[rg] [int] NULL,
	[orgaoEmissorRg] [varchar](10) NULL,
	[naturalidade] [varchar](50) NULL,
	[nacionalidade] [varchar](50) NULL,
	[telefoneFixo] [nchar](10) NOT NULL,
	[celular] [nchar](10) NULL,
	[email] [varchar](50) NULL,
	[tipoFuncionario] [char](1) NOT NULL,
	[isAtivo] [bit] NOT NULL,
	[dataCadastro] [datetime] NOT NULL,
	[dataUltimaAlteracao] [datetime] NOT NULL,
 CONSTRAINT [PK_Funcionario] PRIMARY KEY CLUSTERED 
(
	[IDFuncionario] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[excluirCLIENTE]    Script Date: 03/15/2010 01:09:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[excluirCLIENTE]
	@IDCliente int
AS
	DELETE FROM Cliente
	WHERE IDCliente = @IDCliente
GO
/****** Object:  StoredProcedure [dbo].[cadastrarCLIENTE]    Script Date: 03/15/2010 01:09:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[cadastrarCLIENTE]
	@cpf char(11),
	@rg int,
	@orgaoEmissor varchar(50),
	@naturalidade varchar(50),
	@nacionalidade varchar(50),
	@dataCadastro date,
	@IDUsuario int
	
AS
	INSERT INTO [SIDAF].[dbo].[Cliente]
		       ([cpf]
	           ,[rg]
		       ,[orgaoEmissorRg]
			   ,[naturalidade]
			   ,[nacionalidade]
			   ,[dataCadastro]
			   ,[IDUsuario])
     VALUES
           (@cpf
           ,@rg
           ,@orgaoEmissor
           ,@naturalidade
           ,@nacionalidade
           ,@dataCadastro
           ,@IDUsuario)
GO
/****** Object:  StoredProcedure [dbo].[atualizarCLIENTE]    Script Date: 03/15/2010 01:09:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[atualizarCLIENTE]
	@IDCliente int,
	@cpf char(11),
	@rg int,
	@orgaoEmissor varchar(50),
	@naturalidade varchar(50),
	@nacionalidade varchar(50),
	@dataCadastro date,
	@IDUsuario int
AS
	UPDATE [SIDAF].[dbo].[Cliente]
	SET [cpf] = @cpf
	   ,[rg] = @rg
       ,[orgaoEmissorRg] = @orgaoEmissor
       ,[naturalidade] = @naturalidade
       ,[nacionalidade] = @nacionalidade
       ,[dataCadastro] = @dataCadastro
       ,[IDUsuario] = @IDUsuario
	WHERE IDCliente = @IDCliente
GO
/****** Object:  StoredProcedure [dbo].[selecionarCLIENTEporRG]    Script Date: 03/15/2010 01:09:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[selecionarCLIENTEporRG]
	@rg int
AS
	SELECT * FROM [SIDAF].[dbo].[Cliente]
	WHERE rg = @rg
GO
/****** Object:  StoredProcedure [dbo].[selecionarCLIENTEporID]    Script Date: 03/15/2010 01:09:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[selecionarCLIENTEporID]
	@IDCliente int
AS
	SELECT * FROM [SIDAF].[dbo].[Cliente]
	WHERE IDCliente = @IDCliente
GO
/****** Object:  StoredProcedure [dbo].[selecionarCLIENTEporCPF]    Script Date: 03/15/2010 01:09:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[selecionarCLIENTEporCPF]
	@cpf char
AS
	SELECT * FROM [SIDAF].[dbo].[Cliente]
	WHERE cpf = @cpf
GO
/****** Object:  StoredProcedure [dbo].[selecionarCLIENTE]    Script Date: 03/15/2010 01:09:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[selecionarCLIENTE]
AS
	SELECT * FROM [SIDAF].[dbo].[Cliente]
GO
/****** Object:  Table [dbo].[SAC]    Script Date: 03/15/2010 01:09:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SAC](
	[IDSAC] [int] IDENTITY(1,1) NOT NULL,
	[IDEmpresa] [int] NOT NULL,
	[nome] [varchar](50) NOT NULL,
	[assunto] [varchar](150) NULL,
	[email] [varchar](150) NOT NULL,
	[telefone] [varchar](10) NULL,
	[mensagem] [varchar](max) NOT NULL,
	[dataCadastro] [datetime] NULL,
 CONSTRAINT [PK__SAC__A5C8FD241CF15040] PRIMARY KEY CLUSTERED 
(
	[IDSAC] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[selecionarSACporID]    Script Date: 03/15/2010 01:09:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[selecionarSACporID]
	@IDSAC int
AS
	SELECT * FROM [SIDAF].[dbo].[SAC]
	WHERE IDSAC = @IDSAC
GO
/****** Object:  StoredProcedure [dbo].[selecionarSAC]    Script Date: 03/15/2010 01:09:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[selecionarSAC]
AS
	SELECT * FROM [SIDAF].[dbo].[SAC]
GO
/****** Object:  StoredProcedure [dbo].[selecionarFUNCIONARIOporCPF]    Script Date: 03/15/2010 01:09:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[selecionarFUNCIONARIOporCPF]
	@cpf char
AS
	SELECT * FROM [SIDAF].[dbo].[Funcionario]
	WHERE cpf = @cpf
GO
/****** Object:  StoredProcedure [dbo].[selecionarFUNCIONARIO]    Script Date: 03/15/2010 01:09:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[selecionarFUNCIONARIO]
AS
	SELECT * FROM [SIDAF].[dbo].[Funcionario]
GO
/****** Object:  Table [dbo].[NotaFiscal]    Script Date: 03/15/2010 01:09:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NotaFiscal](
	[IDNotaFiscal] [int] IDENTITY(1,1) NOT NULL,
	[dataEmissao] [datetime] NOT NULL,
	[IDFuncionario] [int] NOT NULL,
	[IDFilial] [int] NOT NULL,
 CONSTRAINT [PK_NotaFiscal] PRIMARY KEY CLUSTERED 
(
	[IDNotaFiscal] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Devolucao]    Script Date: 03/15/2010 01:09:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Devolucao](
	[IDDevolucao] [int] IDENTITY(1,1) NOT NULL,
	[IDFuncionario] [int] NOT NULL,
	[IDFilial] [int] NOT NULL,
	[dataDevolucao] [datetime] NOT NULL,
 CONSTRAINT [PK_Devolucao] PRIMARY KEY CLUSTERED 
(
	[IDDevolucao] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Caixa]    Script Date: 03/15/2010 01:09:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Caixa](
	[IDCaixa] [int] IDENTITY(1,1) NOT NULL,
	[IDFuncionario] [int] NOT NULL,
	[dataAbertura] [datetime] NOT NULL,
	[dataFechamento] [datetime] NULL,
 CONSTRAINT [PK_Caixa] PRIMARY KEY CLUSTERED 
(
	[IDCaixa] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[atualizarSAC]    Script Date: 03/15/2010 01:09:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[atualizarSAC]
	@IDSAC int,
	@nome varchar(50),
	@assunto varchar(150),
	@email varchar(150),
	@telefone varchar(10),
	@mensagem varchar(MAX),
	@IDEmpresa int
AS
	UPDATE [SIDAF].[dbo].[SAC]
	SET [IDEmpresa] = @IDEmpresa
	   ,[nome] = @nome
       ,[assunto] = @assunto
       ,[email] = @email
       ,[telefone] = @telefone
       ,[mensagem] = @mensagem
	WHERE IDEmpresa = IDEmpresa
GO
/****** Object:  StoredProcedure [dbo].[atualizarFUNCIONARIO]    Script Date: 03/15/2010 01:09:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[atualizarFUNCIONARIO]
	@IDFuncionario int,
	@IDUsuario int,
	@cpf char(11),
	@rg int,
	@orgaoEmissor varchar(50),
	@naturalidade varchar(50),
	@nacionalidade varchar(50),
	@tipoFuncionario varchar(15),
	@IDEmpresa int,
	@dataCadastro date,
	@isAtivo binary
AS
	UPDATE [SIDAF].[dbo].[Funcionario]
	SET [IDUsuario] = @IDUsuario 
       ,[cpf] = @cpf
	   ,[rg] = @rg
       ,[orgaoEmissorRg] = @orgaoEmissor
       ,[naturalidade] = @naturalidade
       ,[nacionalidade] = @nacionalidade
       ,[tipoFuncionario] = @tipoFuncionario
       ,[IDEmpresa] = @IDEmpresa
       ,[dataCadastro] = @dataCadastro
       ,[isAtivo] = @isAtivo
	WHERE IDFuncionario = @IDFuncionario
GO
/****** Object:  Table [dbo].[Descarte]    Script Date: 03/15/2010 01:09:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Descarte](
	[IDDescarte] [int] IDENTITY(1,1) NOT NULL,
	[IDFuncionarioOrdem] [int] NOT NULL,
	[IDFuncionarioDescarte] [int] NOT NULL,
	[IDDestino] [int] NOT NULL,
	[dataOrdem] [datetime] NOT NULL,
	[dataDescarte] [datetime] NULL,
 CONSTRAINT [PK_Descarte] PRIMARY KEY CLUSTERED 
(
	[IDDescarte] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[cadastrarSAC]    Script Date: 03/15/2010 01:09:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[cadastrarSAC]
	@nome varchar(50),
	@assunto varchar(150),
	@email varchar(150),
	@telefone varchar(10),
	@mensagem varchar(MAX),
	@IDEmpresa int
AS
	INSERT INTO [SIDAF].[dbo].[SAC]
		       ([nome]
	           ,[assunto]
		       ,[email]
			   ,[telefone]
			   ,[mensagem]
			   ,[IDEmpresa])
     VALUES
           (@nome
           ,@assunto
           ,@email
           ,@telefone
           ,@mensagem
           ,@IDEmpresa)
GO
/****** Object:  StoredProcedure [dbo].[cadastrarFUNCIONARIO]    Script Date: 03/15/2010 01:09:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[cadastrarFUNCIONARIO]
	@nome varchar(150),
	@dataNascimento datetime,
	@cpf char(11),
	@rg int,
	@orgaoEmissorRg varchar(10),
	@naturalidade varchar(50),
	@nacionalidade varchar(50),
	@telefoneFixo nchar(10),
	@celular nchar(10),
	@email varchar(50),
	@tipoFuncionario int,
	@login varchar(50),
	@senha varchar(1000),
	@IDEmpresa int,
	@cep int,
	@IDCidade int,
	@logradouro varchar(150),
	@numero int,
	@complemento varchar(20),
	@bairro varchar(100)	
AS
	BEGIN
	   SET NOCOUNT ON
	
	-- INICIANDO A TRANSAÇÃO
	   BEGIN TRANSACTION
			BEGIN
			-- INSERINDO USUÁRIO
				INSERT INTO Usuario	(login, senha)
				VALUES (@login, dbo.CriptografaSenha(@senha))
			
			-- DECLARA A VARIÁVEL PARA RECUPERAR O ÚLTIMO IDUSUARIO
				DECLARE @IDUsuario int = SCOPE_IDENTITY()
			
			-- INSERINDO ENDEREÇO
				INSERT INTO Endereco (logradouro
									 ,numero
									 ,complemento
									 ,cep
									 ,IDCidade
									 ,bairro)
				VALUES(@logradouro
					  ,@numero
					  ,@complemento
					  ,@cep
					  ,@IDCidade
					  ,@bairro)
					  
			-- DECLARA A VARIÁVEL PARA RECUPERAR O ULTIMO IDENDERECO
				DECLARE @IDEndereco int = SCOPE_IDENTITY()
			
			-- INSERINDO FUNCIONÁRIO
				INSERT INTO Funcionario (nome
										,dataNascimento
										,cpf
										,rg
										,orgaoEmissorRg
										,naturalidade
										,nacionalidade
										,telefoneFixo
										,celular
										,email
										,tipoFuncionario
										,isAtivo
										,IDEndereco
										,IDUsuario
										,IDEmpresa)
				VALUES (@nome
				       ,@dataNascimento
					   ,@cpf
					   ,@rg
					   ,@orgaoEmissorRg
					   ,@naturalidade
					   ,@nacionalidade
					   ,@telefoneFixo
					   ,@celular
					   ,@email
					   ,@tipoFuncionario
					   ,1
					   ,@IDEndereco
					   ,@IDUsuario
					   ,@IDEmpresa)
       					
			-- VERIFICANDO SE OCORREU ALGUM ERRO
				IF @@ERROR = 0

				-- FECHA A TRANSAÇÃO 
					COMMIT TRANSACTION
				ELSE

				-- REVERTIMENTO DA TRANSAÇÃO
					ROLLBACK TRANSACTION
		END
	END
GO
/****** Object:  Table [dbo].[Compra]    Script Date: 03/15/2010 01:09:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Compra](
	[IDCompra] [int] IDENTITY(1,1) NOT NULL,
	[IDFuncionario] [int] NOT NULL,
	[IDLicitacao] [int] NOT NULL,
	[dataCompra] [datetime] NOT NULL,
 CONSTRAINT [PK_Compra] PRIMARY KEY CLUSTERED 
(
	[IDCompra] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[excluirSAC]    Script Date: 03/15/2010 01:09:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[excluirSAC]
	@IDSAC int
AS
	DELETE FROM SAC
	WHERE IDSAC = @IDSAC
GO
/****** Object:  StoredProcedure [dbo].[excluirFUNCIONARIO]    Script Date: 03/15/2010 01:09:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[excluirFUNCIONARIO]
	@IDFunc int
AS
	DELETE FROM Funcionario
	WHERE IDFuncionario = @IDFunc
GO
/****** Object:  Table [dbo].[Estorno]    Script Date: 03/15/2010 01:09:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estorno](
	[IDEstorno] [int] IDENTITY(1,1) NOT NULL,
	[IDFuncionario] [int] NOT NULL,
	[IDCaixa] [int] NOT NULL,
	[IDCliente] [int] NOT NULL,
	[dataEstorno] [datetime] NOT NULL,
 CONSTRAINT [PK_Estorno] PRIMARY KEY CLUSTERED 
(
	[IDEstorno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Venda]    Script Date: 03/15/2010 01:09:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Venda](
	[IDVenda] [int] IDENTITY(1,1) NOT NULL,
	[dataVenda] [datetime] NOT NULL,
	[IDFuncionario] [int] NULL,
	[IDCaixa] [int] NULL,
	[IDCliente] [int] NULL,
 CONSTRAINT [PK_Venda] PRIMARY KEY CLUSTERED 
(
	[IDVenda] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Movimentacao]    Script Date: 03/15/2010 01:09:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Movimentacao](
	[IDMovimentacao] [int] IDENTITY(1,1) NOT NULL,
	[dataMovimentacao] [datetime] NOT NULL,
	[IDFuncionario] [int] NOT NULL,
	[IDCaixa] [int] NOT NULL,
	[IDCliente] [int] NOT NULL,
	[tipoMovimentacao] [varchar](50) NOT NULL,
	[valor] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_Movimentacao] PRIMARY KEY CLUSTERED 
(
	[IDMovimentacao] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Lote]    Script Date: 03/15/2010 01:09:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lote](
	[IDLote] [int] IDENTITY(1,1) NOT NULL,
	[dataFabricacao] [datetime] NOT NULL,
	[dataValidade] [datetime] NOT NULL,
	[numeroLote] [int] NOT NULL,
	[IDCompra] [int] NOT NULL,
	[IDFornecedor] [int] NOT NULL,
	[IDEspecificacao] [int] NOT NULL,
	[quantidade] [int] NOT NULL,
 CONSTRAINT [PK_Lote] PRIMARY KEY CLUSTERED 
(
	[IDLote] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ItemEstoque]    Script Date: 03/15/2010 01:09:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemEstoque](
	[IDItemEstoque] [int] IDENTITY(1,1) NOT NULL,
	[quantidade] [int] NOT NULL,
	[precoCusto] [decimal](18, 2) NOT NULL,
	[precoVenda] [decimal](18, 2) NOT NULL,
	[IDLote] [int] NOT NULL,
	[dataCadastro] [datetime] NOT NULL,
	[dataUltimaAlteracao] [datetime] NOT NULL,
 CONSTRAINT [PK_ItemEstoque] PRIMARY KEY CLUSTERED 
(
	[IDItemEstoque] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ItemDescarte]    Script Date: 03/15/2010 01:09:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ItemDescarte](
	[IDItemVencido] [int] IDENTITY(1,1) NOT NULL,
	[quantidade] [int] NOT NULL,
	[acao] [varchar](20) NOT NULL,
	[IDItemEstoque] [int] NOT NULL,
	[IDDestino] [int] NOT NULL,
	[IDFuncionario] [int] NOT NULL,
 CONSTRAINT [PK_ItemVencido] PRIMARY KEY CLUSTERED 
(
	[IDItemVencido] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ItemNotaFiscal]    Script Date: 03/15/2010 01:09:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemNotaFiscal](
	[IDItemNotaFiscal] [int] IDENTITY(1,1) NOT NULL,
	[quantidade] [int] NOT NULL,
	[IDItemEstoque] [int] NOT NULL,
	[IDNotaFiscal] [int] NOT NULL,
 CONSTRAINT [PK_ItemNotaFiscal] PRIMARY KEY CLUSTERED 
(
	[IDItemNotaFiscal] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ItemFilial]    Script Date: 03/15/2010 01:09:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemFilial](
	[IDItemFilial] [int] IDENTITY(1,1) NOT NULL,
	[quantidade] [int] NOT NULL,
	[IDItemNotaFiscal] [int] NOT NULL,
	[dataCadastro] [datetime] NOT NULL,
	[dataUltimaAlteracao] [datetime] NOT NULL,
 CONSTRAINT [PK_ItemFilial] PRIMARY KEY CLUSTERED 
(
	[IDItemFilial] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ItemVenda]    Script Date: 03/15/2010 01:09:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemVenda](
	[IDItemVenda] [int] IDENTITY(1,1) NOT NULL,
	[quantidade] [int] NOT NULL,
	[IDItemFilial] [int] NOT NULL,
	[IDVenda] [int] NOT NULL,
 CONSTRAINT [PK_ItemVenda] PRIMARY KEY CLUSTERED 
(
	[IDItemVenda] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ItemDevolucao]    Script Date: 03/15/2010 01:09:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemDevolucao](
	[IDItemDevolucao] [int] IDENTITY(1,1) NOT NULL,
	[quantidade] [int] NOT NULL,
	[IDItemFilial] [int] NOT NULL,
	[IDDevolucao] [int] NOT NULL,
 CONSTRAINT [PK_ItemDevolucao] PRIMARY KEY CLUSTERED 
(
	[IDItemDevolucao] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ItemEstorno]    Script Date: 03/15/2010 01:09:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemEstorno](
	[IDItemEstorno] [int] IDENTITY(1,1) NOT NULL,
	[quantidade] [int] NOT NULL,
	[IDItemVenda] [int] NOT NULL,
	[IDEstorno] [int] NOT NULL,
 CONSTRAINT [PK_ItemEstorno] PRIMARY KEY CLUSTERED 
(
	[IDItemEstorno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Default [DF_Caixa_dataAbertura]    Script Date: 03/15/2010 01:09:33 ******/
ALTER TABLE [dbo].[Caixa] ADD  CONSTRAINT [DF_Caixa_dataAbertura]  DEFAULT (getdate()) FOR [dataAbertura]
GO
/****** Object:  Default [DF_Cliente_dataCadastro]    Script Date: 03/15/2010 01:09:33 ******/
ALTER TABLE [dbo].[Cliente] ADD  CONSTRAINT [DF_Cliente_dataCadastro]  DEFAULT (getdate()) FOR [dataCadastro]
GO
/****** Object:  Default [DF_Cliente_dataUltimaAlteracao]    Script Date: 03/15/2010 01:09:33 ******/
ALTER TABLE [dbo].[Cliente] ADD  CONSTRAINT [DF_Cliente_dataUltimaAlteracao]  DEFAULT (getdate()) FOR [dataUltimaAlteracao]
GO
/****** Object:  Default [DF_Compra_dataCompra]    Script Date: 03/15/2010 01:09:33 ******/
ALTER TABLE [dbo].[Compra] ADD  CONSTRAINT [DF_Compra_dataCompra]  DEFAULT (getdate()) FOR [dataCompra]
GO
/****** Object:  Default [DF_Descarte_dataOrdem]    Script Date: 03/15/2010 01:09:33 ******/
ALTER TABLE [dbo].[Descarte] ADD  CONSTRAINT [DF_Descarte_dataOrdem]  DEFAULT (getdate()) FOR [dataOrdem]
GO
/****** Object:  Default [DF_Devolucao_dataDevolucao]    Script Date: 03/15/2010 01:09:33 ******/
ALTER TABLE [dbo].[Devolucao] ADD  CONSTRAINT [DF_Devolucao_dataDevolucao]  DEFAULT (getdate()) FOR [dataDevolucao]
GO
/****** Object:  Default [DF_Empresa_dataCadastro]    Script Date: 03/15/2010 01:09:33 ******/
ALTER TABLE [dbo].[Empresa] ADD  CONSTRAINT [DF_Empresa_dataCadastro]  DEFAULT (getdate()) FOR [dataCadastro]
GO
/****** Object:  Default [DF_Empresa_dataUltimaAlteracao]    Script Date: 03/15/2010 01:09:33 ******/
ALTER TABLE [dbo].[Empresa] ADD  CONSTRAINT [DF_Empresa_dataUltimaAlteracao]  DEFAULT (getdate()) FOR [dataUltimaAlteracao]
GO
/****** Object:  Default [DF_Estorno_dataEstorno]    Script Date: 03/15/2010 01:09:34 ******/
ALTER TABLE [dbo].[Estorno] ADD  CONSTRAINT [DF_Estorno_dataEstorno]  DEFAULT (getdate()) FOR [dataEstorno]
GO
/****** Object:  Default [DF_Fornecedor_dataCadastro]    Script Date: 03/15/2010 01:09:34 ******/
ALTER TABLE [dbo].[Fornecedor] ADD  CONSTRAINT [DF_Fornecedor_dataCadastro]  DEFAULT (getdate()) FOR [dataCadastro]
GO
/****** Object:  Default [DF_Fornecedor_dataUltimaAlteracao]    Script Date: 03/15/2010 01:09:34 ******/
ALTER TABLE [dbo].[Fornecedor] ADD  CONSTRAINT [DF_Fornecedor_dataUltimaAlteracao]  DEFAULT (getdate()) FOR [dataUltimaAlteracao]
GO
/****** Object:  Default [DF_Funcionario_dataCadastro]    Script Date: 03/15/2010 01:09:34 ******/
ALTER TABLE [dbo].[Funcionario] ADD  CONSTRAINT [DF_Funcionario_dataCadastro]  DEFAULT (getdate()) FOR [dataCadastro]
GO
/****** Object:  Default [DF_Funcionario_dataUltimaAlteracao]    Script Date: 03/15/2010 01:09:34 ******/
ALTER TABLE [dbo].[Funcionario] ADD  CONSTRAINT [DF_Funcionario_dataUltimaAlteracao]  DEFAULT (getdate()) FOR [dataUltimaAlteracao]
GO
/****** Object:  Default [DF_Instituicao_dataCadastro]    Script Date: 03/15/2010 01:09:34 ******/
ALTER TABLE [dbo].[Instituicao] ADD  CONSTRAINT [DF_Instituicao_dataCadastro]  DEFAULT (getdate()) FOR [dataCadastro]
GO
/****** Object:  Default [DF_Instituicao_dataUltimaAlteracao]    Script Date: 03/15/2010 01:09:34 ******/
ALTER TABLE [dbo].[Instituicao] ADD  CONSTRAINT [DF_Instituicao_dataUltimaAlteracao]  DEFAULT (getdate()) FOR [dataUltimaAlteracao]
GO
/****** Object:  Default [DF_ItemEstoque_dataCadastro]    Script Date: 03/15/2010 01:09:34 ******/
ALTER TABLE [dbo].[ItemEstoque] ADD  CONSTRAINT [DF_ItemEstoque_dataCadastro]  DEFAULT (getdate()) FOR [dataCadastro]
GO
/****** Object:  Default [DF_ItemEstoque_dataUltimaAlteracao]    Script Date: 03/15/2010 01:09:34 ******/
ALTER TABLE [dbo].[ItemEstoque] ADD  CONSTRAINT [DF_ItemEstoque_dataUltimaAlteracao]  DEFAULT (getdate()) FOR [dataUltimaAlteracao]
GO
/****** Object:  Default [DF_ItemFilial_dataCadastro]    Script Date: 03/15/2010 01:09:34 ******/
ALTER TABLE [dbo].[ItemFilial] ADD  CONSTRAINT [DF_ItemFilial_dataCadastro]  DEFAULT (getdate()) FOR [dataCadastro]
GO
/****** Object:  Default [DF_ItemFilial_dataUltimaAlteracao]    Script Date: 03/15/2010 01:09:34 ******/
ALTER TABLE [dbo].[ItemFilial] ADD  CONSTRAINT [DF_ItemFilial_dataUltimaAlteracao]  DEFAULT (getdate()) FOR [dataUltimaAlteracao]
GO
/****** Object:  Default [DF_Movimentacao_dataMovimentacao]    Script Date: 03/15/2010 01:09:34 ******/
ALTER TABLE [dbo].[Movimentacao] ADD  CONSTRAINT [DF_Movimentacao_dataMovimentacao]  DEFAULT (getdate()) FOR [dataMovimentacao]
GO
/****** Object:  Default [DF_NotaFiscal_dataEmissao]    Script Date: 03/15/2010 01:09:34 ******/
ALTER TABLE [dbo].[NotaFiscal] ADD  CONSTRAINT [DF_NotaFiscal_dataEmissao]  DEFAULT (getdate()) FOR [dataEmissao]
GO
/****** Object:  Default [DF_Pedido_dataCadastro]    Script Date: 03/15/2010 01:09:34 ******/
ALTER TABLE [dbo].[Pedido] ADD  CONSTRAINT [DF_Pedido_dataCadastro]  DEFAULT (getdate()) FOR [dataCadastro]
GO
/****** Object:  Default [DF_Produto_dataCadastro]    Script Date: 03/15/2010 01:09:34 ******/
ALTER TABLE [dbo].[Produto] ADD  CONSTRAINT [DF_Produto_dataCadastro]  DEFAULT (getdate()) FOR [dataCadastro]
GO
/****** Object:  Default [DF_SAC_dataCadastro]    Script Date: 03/15/2010 01:09:34 ******/
ALTER TABLE [dbo].[SAC] ADD  CONSTRAINT [DF_SAC_dataCadastro]  DEFAULT (getdate()) FOR [dataCadastro]
GO
/****** Object:  Default [DF_Tipo_dataCadastro]    Script Date: 03/15/2010 01:09:34 ******/
ALTER TABLE [dbo].[Tipo] ADD  CONSTRAINT [DF_Tipo_dataCadastro]  DEFAULT (getdate()) FOR [dataCadastro]
GO
/****** Object:  Default [DF_Venda_dataVenda]    Script Date: 03/15/2010 01:09:34 ******/
ALTER TABLE [dbo].[Venda] ADD  CONSTRAINT [DF_Venda_dataVenda]  DEFAULT (getdate()) FOR [dataVenda]
GO
/****** Object:  ForeignKey [FK_Caixa_Funcionario]    Script Date: 03/15/2010 01:09:33 ******/
ALTER TABLE [dbo].[Caixa]  WITH CHECK ADD  CONSTRAINT [FK_Caixa_Funcionario] FOREIGN KEY([IDFuncionario])
REFERENCES [dbo].[Funcionario] ([IDFuncionario])
GO
ALTER TABLE [dbo].[Caixa] CHECK CONSTRAINT [FK_Caixa_Funcionario]
GO
/****** Object:  ForeignKey [fk_cod_estado_cidade]    Script Date: 03/15/2010 01:09:33 ******/
ALTER TABLE [dbo].[Cidade]  WITH CHECK ADD  CONSTRAINT [fk_cod_estado_cidade] FOREIGN KEY([IDEstado])
REFERENCES [dbo].[Estado] ([IDEstado])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Cidade] CHECK CONSTRAINT [fk_cod_estado_cidade]
GO
/****** Object:  ForeignKey [FK_Cliente_Endereco]    Script Date: 03/15/2010 01:09:33 ******/
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD  CONSTRAINT [FK_Cliente_Endereco] FOREIGN KEY([IDEndereco])
REFERENCES [dbo].[Endereco] ([IDEndereco])
GO
ALTER TABLE [dbo].[Cliente] CHECK CONSTRAINT [FK_Cliente_Endereco]
GO
/****** Object:  ForeignKey [FK_Cliente_Usuario]    Script Date: 03/15/2010 01:09:33 ******/
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD  CONSTRAINT [FK_Cliente_Usuario] FOREIGN KEY([IDUsuario])
REFERENCES [dbo].[Usuario] ([IDLogin])
GO
ALTER TABLE [dbo].[Cliente] CHECK CONSTRAINT [FK_Cliente_Usuario]
GO
/****** Object:  ForeignKey [FK_Compra_Funcionario]    Script Date: 03/15/2010 01:09:33 ******/
ALTER TABLE [dbo].[Compra]  WITH CHECK ADD  CONSTRAINT [FK_Compra_Funcionario] FOREIGN KEY([IDFuncionario])
REFERENCES [dbo].[Funcionario] ([IDFuncionario])
GO
ALTER TABLE [dbo].[Compra] CHECK CONSTRAINT [FK_Compra_Funcionario]
GO
/****** Object:  ForeignKey [FK_Compra_Licitacao]    Script Date: 03/15/2010 01:09:33 ******/
ALTER TABLE [dbo].[Compra]  WITH CHECK ADD  CONSTRAINT [FK_Compra_Licitacao] FOREIGN KEY([IDLicitacao])
REFERENCES [dbo].[Licitacao] ([IDLicitacao])
GO
ALTER TABLE [dbo].[Compra] CHECK CONSTRAINT [FK_Compra_Licitacao]
GO
/****** Object:  ForeignKey [FK_Descarte_Funcionario]    Script Date: 03/15/2010 01:09:33 ******/
ALTER TABLE [dbo].[Descarte]  WITH CHECK ADD  CONSTRAINT [FK_Descarte_Funcionario] FOREIGN KEY([IDFuncionarioOrdem])
REFERENCES [dbo].[Funcionario] ([IDFuncionario])
GO
ALTER TABLE [dbo].[Descarte] CHECK CONSTRAINT [FK_Descarte_Funcionario]
GO
/****** Object:  ForeignKey [FK_Descarte_Funcionario1]    Script Date: 03/15/2010 01:09:33 ******/
ALTER TABLE [dbo].[Descarte]  WITH CHECK ADD  CONSTRAINT [FK_Descarte_Funcionario1] FOREIGN KEY([IDFuncionarioDescarte])
REFERENCES [dbo].[Funcionario] ([IDFuncionario])
GO
ALTER TABLE [dbo].[Descarte] CHECK CONSTRAINT [FK_Descarte_Funcionario1]
GO
/****** Object:  ForeignKey [FK_Descarte_Instituicao]    Script Date: 03/15/2010 01:09:33 ******/
ALTER TABLE [dbo].[Descarte]  WITH CHECK ADD  CONSTRAINT [FK_Descarte_Instituicao] FOREIGN KEY([IDDestino])
REFERENCES [dbo].[Instituicao] ([IDInstituicao])
GO
ALTER TABLE [dbo].[Descarte] CHECK CONSTRAINT [FK_Descarte_Instituicao]
GO
/****** Object:  ForeignKey [FK_Devolucao_Empresa]    Script Date: 03/15/2010 01:09:33 ******/
ALTER TABLE [dbo].[Devolucao]  WITH CHECK ADD  CONSTRAINT [FK_Devolucao_Empresa] FOREIGN KEY([IDFilial])
REFERENCES [dbo].[Empresa] ([IDEmpresa])
GO
ALTER TABLE [dbo].[Devolucao] CHECK CONSTRAINT [FK_Devolucao_Empresa]
GO
/****** Object:  ForeignKey [FK_Devolucao_Funcionario]    Script Date: 03/15/2010 01:09:33 ******/
ALTER TABLE [dbo].[Devolucao]  WITH CHECK ADD  CONSTRAINT [FK_Devolucao_Funcionario] FOREIGN KEY([IDFuncionario])
REFERENCES [dbo].[Funcionario] ([IDFuncionario])
GO
ALTER TABLE [dbo].[Devolucao] CHECK CONSTRAINT [FK_Devolucao_Funcionario]
GO
/****** Object:  ForeignKey [FK_Empresa_Endereco]    Script Date: 03/15/2010 01:09:33 ******/
ALTER TABLE [dbo].[Empresa]  WITH CHECK ADD  CONSTRAINT [FK_Empresa_Endereco] FOREIGN KEY([IDEndereco])
REFERENCES [dbo].[Endereco] ([IDEndereco])
GO
ALTER TABLE [dbo].[Empresa] CHECK CONSTRAINT [FK_Empresa_Endereco]
GO
/****** Object:  ForeignKey [FK_Endereco_cidade]    Script Date: 03/15/2010 01:09:33 ******/
ALTER TABLE [dbo].[Endereco]  WITH CHECK ADD  CONSTRAINT [FK_Endereco_cidade] FOREIGN KEY([IDCidade])
REFERENCES [dbo].[Cidade] ([IDCidade])
GO
ALTER TABLE [dbo].[Endereco] CHECK CONSTRAINT [FK_Endereco_cidade]
GO
/****** Object:  ForeignKey [FK__Especific__IDPed__15502E78]    Script Date: 03/15/2010 01:09:34 ******/
ALTER TABLE [dbo].[EspecificacaoPedido]  WITH CHECK ADD  CONSTRAINT [FK__Especific__IDPed__15502E78] FOREIGN KEY([IDPedido])
REFERENCES [dbo].[Pedido] ([IDPedido])
GO
ALTER TABLE [dbo].[EspecificacaoPedido] CHECK CONSTRAINT [FK__Especific__IDPed__15502E78]
GO
/****** Object:  ForeignKey [FK_EspecificacaoPedido_Especificacao]    Script Date: 03/15/2010 01:09:34 ******/
ALTER TABLE [dbo].[EspecificacaoPedido]  WITH CHECK ADD  CONSTRAINT [FK_EspecificacaoPedido_Especificacao] FOREIGN KEY([IDEspecificacao])
REFERENCES [dbo].[Especificacao] ([IDEspecificacao])
GO
ALTER TABLE [dbo].[EspecificacaoPedido] CHECK CONSTRAINT [FK_EspecificacaoPedido_Especificacao]
GO
/****** Object:  ForeignKey [fk_cod_pais_estado]    Script Date: 03/15/2010 01:09:34 ******/
ALTER TABLE [dbo].[Estado]  WITH CHECK ADD  CONSTRAINT [fk_cod_pais_estado] FOREIGN KEY([IDPais])
REFERENCES [dbo].[Pais] ([IDPais])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Estado] CHECK CONSTRAINT [fk_cod_pais_estado]
GO
/****** Object:  ForeignKey [FK_Estorno_Caixa]    Script Date: 03/15/2010 01:09:34 ******/
ALTER TABLE [dbo].[Estorno]  WITH CHECK ADD  CONSTRAINT [FK_Estorno_Caixa] FOREIGN KEY([IDCaixa])
REFERENCES [dbo].[Caixa] ([IDCaixa])
GO
ALTER TABLE [dbo].[Estorno] CHECK CONSTRAINT [FK_Estorno_Caixa]
GO
/****** Object:  ForeignKey [FK_Estorno_Cliente]    Script Date: 03/15/2010 01:09:34 ******/
ALTER TABLE [dbo].[Estorno]  WITH CHECK ADD  CONSTRAINT [FK_Estorno_Cliente] FOREIGN KEY([IDCliente])
REFERENCES [dbo].[Cliente] ([IDCliente])
GO
ALTER TABLE [dbo].[Estorno] CHECK CONSTRAINT [FK_Estorno_Cliente]
GO
/****** Object:  ForeignKey [FK_Estorno_Funcionario]    Script Date: 03/15/2010 01:09:34 ******/
ALTER TABLE [dbo].[Estorno]  WITH CHECK ADD  CONSTRAINT [FK_Estorno_Funcionario] FOREIGN KEY([IDFuncionario])
REFERENCES [dbo].[Funcionario] ([IDFuncionario])
GO
ALTER TABLE [dbo].[Estorno] CHECK CONSTRAINT [FK_Estorno_Funcionario]
GO
/****** Object:  ForeignKey [FK_Fornecedor_Endereco]    Script Date: 03/15/2010 01:09:34 ******/
ALTER TABLE [dbo].[Fornecedor]  WITH CHECK ADD  CONSTRAINT [FK_Fornecedor_Endereco] FOREIGN KEY([IDEndereco])
REFERENCES [dbo].[Endereco] ([IDEndereco])
GO
ALTER TABLE [dbo].[Fornecedor] CHECK CONSTRAINT [FK_Fornecedor_Endereco]
GO
/****** Object:  ForeignKey [FK_Funcionario_Empresa]    Script Date: 03/15/2010 01:09:34 ******/
ALTER TABLE [dbo].[Funcionario]  WITH CHECK ADD  CONSTRAINT [FK_Funcionario_Empresa] FOREIGN KEY([IDEmpresa])
REFERENCES [dbo].[Empresa] ([IDEmpresa])
GO
ALTER TABLE [dbo].[Funcionario] CHECK CONSTRAINT [FK_Funcionario_Empresa]
GO
/****** Object:  ForeignKey [FK_Funcionario_Endereco]    Script Date: 03/15/2010 01:09:34 ******/
ALTER TABLE [dbo].[Funcionario]  WITH CHECK ADD  CONSTRAINT [FK_Funcionario_Endereco] FOREIGN KEY([IDEndereco])
REFERENCES [dbo].[Endereco] ([IDEndereco])
GO
ALTER TABLE [dbo].[Funcionario] CHECK CONSTRAINT [FK_Funcionario_Endereco]
GO
/****** Object:  ForeignKey [FK_Funcionario_Endereco1]    Script Date: 03/15/2010 01:09:34 ******/
ALTER TABLE [dbo].[Funcionario]  WITH CHECK ADD  CONSTRAINT [FK_Funcionario_Endereco1] FOREIGN KEY([IDEndereco])
REFERENCES [dbo].[Endereco] ([IDEndereco])
GO
ALTER TABLE [dbo].[Funcionario] CHECK CONSTRAINT [FK_Funcionario_Endereco1]
GO
/****** Object:  ForeignKey [FK_Funcionario_Usuario]    Script Date: 03/15/2010 01:09:34 ******/
ALTER TABLE [dbo].[Funcionario]  WITH CHECK ADD  CONSTRAINT [FK_Funcionario_Usuario] FOREIGN KEY([IDUsuario])
REFERENCES [dbo].[Usuario] ([IDLogin])
GO
ALTER TABLE [dbo].[Funcionario] CHECK CONSTRAINT [FK_Funcionario_Usuario]
GO
/****** Object:  ForeignKey [FK_Instituicao_Endereco]    Script Date: 03/15/2010 01:09:34 ******/
ALTER TABLE [dbo].[Instituicao]  WITH CHECK ADD  CONSTRAINT [FK_Instituicao_Endereco] FOREIGN KEY([IDEndereco])
REFERENCES [dbo].[Endereco] ([IDEndereco])
GO
ALTER TABLE [dbo].[Instituicao] CHECK CONSTRAINT [FK_Instituicao_Endereco]
GO
/****** Object:  ForeignKey [FK_ItemDescarte_Instituicao]    Script Date: 03/15/2010 01:09:34 ******/
ALTER TABLE [dbo].[ItemDescarte]  WITH CHECK ADD  CONSTRAINT [FK_ItemDescarte_Instituicao] FOREIGN KEY([IDDestino])
REFERENCES [dbo].[Instituicao] ([IDInstituicao])
GO
ALTER TABLE [dbo].[ItemDescarte] CHECK CONSTRAINT [FK_ItemDescarte_Instituicao]
GO
/****** Object:  ForeignKey [FK_ItemVencido_Funcionario]    Script Date: 03/15/2010 01:09:34 ******/
ALTER TABLE [dbo].[ItemDescarte]  WITH CHECK ADD  CONSTRAINT [FK_ItemVencido_Funcionario] FOREIGN KEY([IDFuncionario])
REFERENCES [dbo].[Funcionario] ([IDFuncionario])
GO
ALTER TABLE [dbo].[ItemDescarte] CHECK CONSTRAINT [FK_ItemVencido_Funcionario]
GO
/****** Object:  ForeignKey [FK_ItemVencido_ItemEstoque]    Script Date: 03/15/2010 01:09:34 ******/
ALTER TABLE [dbo].[ItemDescarte]  WITH CHECK ADD  CONSTRAINT [FK_ItemVencido_ItemEstoque] FOREIGN KEY([IDItemEstoque])
REFERENCES [dbo].[ItemEstoque] ([IDItemEstoque])
GO
ALTER TABLE [dbo].[ItemDescarte] CHECK CONSTRAINT [FK_ItemVencido_ItemEstoque]
GO
/****** Object:  ForeignKey [FK_ItemDevolucao_Devolucao]    Script Date: 03/15/2010 01:09:34 ******/
ALTER TABLE [dbo].[ItemDevolucao]  WITH CHECK ADD  CONSTRAINT [FK_ItemDevolucao_Devolucao] FOREIGN KEY([IDDevolucao])
REFERENCES [dbo].[Devolucao] ([IDDevolucao])
GO
ALTER TABLE [dbo].[ItemDevolucao] CHECK CONSTRAINT [FK_ItemDevolucao_Devolucao]
GO
/****** Object:  ForeignKey [FK_ItemDevolucao_ItemFilial]    Script Date: 03/15/2010 01:09:34 ******/
ALTER TABLE [dbo].[ItemDevolucao]  WITH CHECK ADD  CONSTRAINT [FK_ItemDevolucao_ItemFilial] FOREIGN KEY([IDItemFilial])
REFERENCES [dbo].[ItemFilial] ([IDItemFilial])
GO
ALTER TABLE [dbo].[ItemDevolucao] CHECK CONSTRAINT [FK_ItemDevolucao_ItemFilial]
GO
/****** Object:  ForeignKey [FK_ItemEstoque_Lote1]    Script Date: 03/15/2010 01:09:34 ******/
ALTER TABLE [dbo].[ItemEstoque]  WITH CHECK ADD  CONSTRAINT [FK_ItemEstoque_Lote1] FOREIGN KEY([IDLote])
REFERENCES [dbo].[Lote] ([IDLote])
GO
ALTER TABLE [dbo].[ItemEstoque] CHECK CONSTRAINT [FK_ItemEstoque_Lote1]
GO
/****** Object:  ForeignKey [FK_ItemEstorno_Estorno]    Script Date: 03/15/2010 01:09:34 ******/
ALTER TABLE [dbo].[ItemEstorno]  WITH CHECK ADD  CONSTRAINT [FK_ItemEstorno_Estorno] FOREIGN KEY([IDEstorno])
REFERENCES [dbo].[Estorno] ([IDEstorno])
GO
ALTER TABLE [dbo].[ItemEstorno] CHECK CONSTRAINT [FK_ItemEstorno_Estorno]
GO
/****** Object:  ForeignKey [FK_ItemEstorno_ItemVenda]    Script Date: 03/15/2010 01:09:34 ******/
ALTER TABLE [dbo].[ItemEstorno]  WITH CHECK ADD  CONSTRAINT [FK_ItemEstorno_ItemVenda] FOREIGN KEY([IDItemVenda])
REFERENCES [dbo].[ItemVenda] ([IDItemVenda])
GO
ALTER TABLE [dbo].[ItemEstorno] CHECK CONSTRAINT [FK_ItemEstorno_ItemVenda]
GO
/****** Object:  ForeignKey [FK_ItemFilial_ItemNotaFiscal]    Script Date: 03/15/2010 01:09:34 ******/
ALTER TABLE [dbo].[ItemFilial]  WITH CHECK ADD  CONSTRAINT [FK_ItemFilial_ItemNotaFiscal] FOREIGN KEY([IDItemNotaFiscal])
REFERENCES [dbo].[ItemNotaFiscal] ([IDItemNotaFiscal])
GO
ALTER TABLE [dbo].[ItemFilial] CHECK CONSTRAINT [FK_ItemFilial_ItemNotaFiscal]
GO
/****** Object:  ForeignKey [FK_ItemNotaFiscal_ItemEstoque]    Script Date: 03/15/2010 01:09:34 ******/
ALTER TABLE [dbo].[ItemNotaFiscal]  WITH CHECK ADD  CONSTRAINT [FK_ItemNotaFiscal_ItemEstoque] FOREIGN KEY([IDItemEstoque])
REFERENCES [dbo].[ItemEstoque] ([IDItemEstoque])
GO
ALTER TABLE [dbo].[ItemNotaFiscal] CHECK CONSTRAINT [FK_ItemNotaFiscal_ItemEstoque]
GO
/****** Object:  ForeignKey [FK_ItemNotaFiscal_NotaFiscal]    Script Date: 03/15/2010 01:09:34 ******/
ALTER TABLE [dbo].[ItemNotaFiscal]  WITH CHECK ADD  CONSTRAINT [FK_ItemNotaFiscal_NotaFiscal] FOREIGN KEY([IDNotaFiscal])
REFERENCES [dbo].[NotaFiscal] ([IDNotaFiscal])
GO
ALTER TABLE [dbo].[ItemNotaFiscal] CHECK CONSTRAINT [FK_ItemNotaFiscal_NotaFiscal]
GO
/****** Object:  ForeignKey [FK_ItemVenda_ItemFilial]    Script Date: 03/15/2010 01:09:34 ******/
ALTER TABLE [dbo].[ItemVenda]  WITH CHECK ADD  CONSTRAINT [FK_ItemVenda_ItemFilial] FOREIGN KEY([IDItemFilial])
REFERENCES [dbo].[ItemFilial] ([IDItemFilial])
GO
ALTER TABLE [dbo].[ItemVenda] CHECK CONSTRAINT [FK_ItemVenda_ItemFilial]
GO
/****** Object:  ForeignKey [FK_ItemVenda_Venda]    Script Date: 03/15/2010 01:09:34 ******/
ALTER TABLE [dbo].[ItemVenda]  WITH CHECK ADD  CONSTRAINT [FK_ItemVenda_Venda] FOREIGN KEY([IDVenda])
REFERENCES [dbo].[Venda] ([IDVenda])
GO
ALTER TABLE [dbo].[ItemVenda] CHECK CONSTRAINT [FK_ItemVenda_Venda]
GO
/****** Object:  ForeignKey [FK_Lote_Compra]    Script Date: 03/15/2010 01:09:34 ******/
ALTER TABLE [dbo].[Lote]  WITH CHECK ADD  CONSTRAINT [FK_Lote_Compra] FOREIGN KEY([IDCompra])
REFERENCES [dbo].[Compra] ([IDCompra])
GO
ALTER TABLE [dbo].[Lote] CHECK CONSTRAINT [FK_Lote_Compra]
GO
/****** Object:  ForeignKey [FK_Lote_Especificacao]    Script Date: 03/15/2010 01:09:34 ******/
ALTER TABLE [dbo].[Lote]  WITH CHECK ADD  CONSTRAINT [FK_Lote_Especificacao] FOREIGN KEY([IDEspecificacao])
REFERENCES [dbo].[Especificacao] ([IDEspecificacao])
GO
ALTER TABLE [dbo].[Lote] CHECK CONSTRAINT [FK_Lote_Especificacao]
GO
/****** Object:  ForeignKey [FK_Lote_Fornecedor]    Script Date: 03/15/2010 01:09:34 ******/
ALTER TABLE [dbo].[Lote]  WITH CHECK ADD  CONSTRAINT [FK_Lote_Fornecedor] FOREIGN KEY([IDFornecedor])
REFERENCES [dbo].[Fornecedor] ([IDFornecedor])
GO
ALTER TABLE [dbo].[Lote] CHECK CONSTRAINT [FK_Lote_Fornecedor]
GO
/****** Object:  ForeignKey [FK_Movimentacao_Caixa]    Script Date: 03/15/2010 01:09:34 ******/
ALTER TABLE [dbo].[Movimentacao]  WITH CHECK ADD  CONSTRAINT [FK_Movimentacao_Caixa] FOREIGN KEY([IDCaixa])
REFERENCES [dbo].[Caixa] ([IDCaixa])
GO
ALTER TABLE [dbo].[Movimentacao] CHECK CONSTRAINT [FK_Movimentacao_Caixa]
GO
/****** Object:  ForeignKey [FK_Movimentacao_Cliente]    Script Date: 03/15/2010 01:09:34 ******/
ALTER TABLE [dbo].[Movimentacao]  WITH CHECK ADD  CONSTRAINT [FK_Movimentacao_Cliente] FOREIGN KEY([IDCliente])
REFERENCES [dbo].[Cliente] ([IDCliente])
GO
ALTER TABLE [dbo].[Movimentacao] CHECK CONSTRAINT [FK_Movimentacao_Cliente]
GO
/****** Object:  ForeignKey [FK_Movimentacao_Funcionario]    Script Date: 03/15/2010 01:09:34 ******/
ALTER TABLE [dbo].[Movimentacao]  WITH CHECK ADD  CONSTRAINT [FK_Movimentacao_Funcionario] FOREIGN KEY([IDFuncionario])
REFERENCES [dbo].[Funcionario] ([IDFuncionario])
GO
ALTER TABLE [dbo].[Movimentacao] CHECK CONSTRAINT [FK_Movimentacao_Funcionario]
GO
/****** Object:  ForeignKey [FK_NotaFiscal_Empresa]    Script Date: 03/15/2010 01:09:34 ******/
ALTER TABLE [dbo].[NotaFiscal]  WITH CHECK ADD  CONSTRAINT [FK_NotaFiscal_Empresa] FOREIGN KEY([IDFilial])
REFERENCES [dbo].[Empresa] ([IDEmpresa])
GO
ALTER TABLE [dbo].[NotaFiscal] CHECK CONSTRAINT [FK_NotaFiscal_Empresa]
GO
/****** Object:  ForeignKey [FK_NotaFiscal_Funcionario]    Script Date: 03/15/2010 01:09:34 ******/
ALTER TABLE [dbo].[NotaFiscal]  WITH CHECK ADD  CONSTRAINT [FK_NotaFiscal_Funcionario] FOREIGN KEY([IDFuncionario])
REFERENCES [dbo].[Funcionario] ([IDFuncionario])
GO
ALTER TABLE [dbo].[NotaFiscal] CHECK CONSTRAINT [FK_NotaFiscal_Funcionario]
GO
/****** Object:  ForeignKey [FK_Produto_Especificacao]    Script Date: 03/15/2010 01:09:34 ******/
ALTER TABLE [dbo].[Produto]  WITH CHECK ADD  CONSTRAINT [FK_Produto_Especificacao] FOREIGN KEY([IDEspecificacao])
REFERENCES [dbo].[Especificacao] ([IDEspecificacao])
GO
ALTER TABLE [dbo].[Produto] CHECK CONSTRAINT [FK_Produto_Especificacao]
GO
/****** Object:  ForeignKey [FK_Produto_Tipo]    Script Date: 03/15/2010 01:09:34 ******/
ALTER TABLE [dbo].[Produto]  WITH CHECK ADD  CONSTRAINT [FK_Produto_Tipo] FOREIGN KEY([IDTipo])
REFERENCES [dbo].[Tipo] ([IDTipo])
GO
ALTER TABLE [dbo].[Produto] CHECK CONSTRAINT [FK_Produto_Tipo]
GO
/****** Object:  ForeignKey [FK_SAC_Empresa]    Script Date: 03/15/2010 01:09:34 ******/
ALTER TABLE [dbo].[SAC]  WITH CHECK ADD  CONSTRAINT [FK_SAC_Empresa] FOREIGN KEY([IDEmpresa])
REFERENCES [dbo].[Empresa] ([IDEmpresa])
GO
ALTER TABLE [dbo].[SAC] CHECK CONSTRAINT [FK_SAC_Empresa]
GO
/****** Object:  ForeignKey [FK_Venda_Caixa]    Script Date: 03/15/2010 01:09:34 ******/
ALTER TABLE [dbo].[Venda]  WITH CHECK ADD  CONSTRAINT [FK_Venda_Caixa] FOREIGN KEY([IDCaixa])
REFERENCES [dbo].[Caixa] ([IDCaixa])
GO
ALTER TABLE [dbo].[Venda] CHECK CONSTRAINT [FK_Venda_Caixa]
GO
/****** Object:  ForeignKey [FK_Venda_Cliente]    Script Date: 03/15/2010 01:09:34 ******/
ALTER TABLE [dbo].[Venda]  WITH CHECK ADD  CONSTRAINT [FK_Venda_Cliente] FOREIGN KEY([IDCliente])
REFERENCES [dbo].[Cliente] ([IDCliente])
GO
ALTER TABLE [dbo].[Venda] CHECK CONSTRAINT [FK_Venda_Cliente]
GO
/****** Object:  ForeignKey [FK_Venda_Funcionario]    Script Date: 03/15/2010 01:09:34 ******/
ALTER TABLE [dbo].[Venda]  WITH CHECK ADD  CONSTRAINT [FK_Venda_Funcionario] FOREIGN KEY([IDFuncionario])
REFERENCES [dbo].[Funcionario] ([IDFuncionario])
GO
ALTER TABLE [dbo].[Venda] CHECK CONSTRAINT [FK_Venda_Funcionario]
GO
