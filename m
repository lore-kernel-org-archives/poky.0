Return-Path: <Daniel.Wang@intusurg.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E5FE9E00D83; Wed, 30 Oct 2019 12:09:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, FORGED_SPF_HELO, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [40.107.79.92 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid *  1.0 FORGED_SPF_HELO FORGED_SPF_HELO
Received: from NAM03-CO1-obe.outbound.protection.outlook.com
	(mail-eopbgr790092.outbound.protection.outlook.com [40.107.79.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B041EE00BB5
	for <poky@yoctoproject.org>; Wed, 30 Oct 2019 12:09:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
	b=IhQxjAnIHm6/B4TukciF4GX4KHhXanXfFQvc94yYM4eK8VnkbPKOLF5XLXQVI4besLyjks+zjVv8tJ43s9tuBDbkbVj06qhaqXxNUO6AWlSCjNXWRGwizsZIB4hCbdyyF1YQ9EJnxzcUvWdF1yuu0k41eptNeYDDDNLc95QVSav8d78solRF2uxSCLnQdrK66MqpwWBLNZ2ZpM6+/U0H+Jg+2g7cBv8TDwTyI3VdVXeEzzpwJF6uOSkG9P8iROJbpKM4fs2PzD38SDpZe31snKw9uEK19K6PPYkc09b0qMmWUPt79Sl/F5ZJi9D8mxvgDC5aCEUrF08x0GaJlxj2wg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
	s=arcselector9901;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=q/URQVYixKxdAo5dlDVzJRfBCOGf8iCJSUD8TK2aEF8=;
	b=ipR0Obml5mtm5k2Aln/v7GF/lDFJZGXlRkfmKTskYZnkrp0NhpK/Z2joy0HsWtQ7xvRbbDhR5junMqrDzVdCfQkVpANJRC12EfXqYsqJyXOUBtaaz/g9Jdz/QJDAkuHGTziKZOm+X9TqYvQ3+Lut2+iGrYADdaOMVBomYLMJEdrWGDKHr2tIvsoOhePXfPOACHzT3WSg9a08PpGX4KmmxdhKaaXjN0v2wlwbjODZkWOxBs9PCLoyUaAVCUVmAO1Rh+V563vbrX9ep9X6kf8Zu27rx6tcvAHNPhIlYVgTCs2KgIecRhVRWbnDPTTXnYLpPfee+Zuq392EEDdy0cE0WA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
	smtp.mailfrom=intusurg.com;
	dmarc=pass action=none header.from=intusurg.com; 
	dkim=pass header.d=intusurg.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=IntusurgOps.onmicrosoft.com; s=selector2-IntusurgOps-onmicrosoft-com; 
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=q/URQVYixKxdAo5dlDVzJRfBCOGf8iCJSUD8TK2aEF8=;
	b=pUgisvhFkM8AqIuD3DgYOd53SGEqA8hzqBBV90+kh5C80czMSKALVrO8Ux0hTw0uBy2auJPz1h4SD+Aq996+llj1gNX9bMmhHik4XtfJ1WwKshvyQls4zm4cZsPBgpj65HG93j0PWSr2Dd62NJr/F2f9Yhrniv+3ATRTnnH77y0=
Received: from DM6PR01MB5657.prod.exchangelabs.com (10.255.76.74) by
	DM6PR01MB4987.prod.exchangelabs.com (20.176.120.95) with Microsoft SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.2408.17; Wed, 30 Oct 2019 19:09:34 +0000
Received: from DM6PR01MB5657.prod.exchangelabs.com
	([fe80::8584:bfa1:6ad0:869c]) by DM6PR01MB5657.prod.exchangelabs.com
	([fe80::8584:bfa1:6ad0:869c%3]) with mapi id 15.20.2387.028;
	Wed, 30 Oct 2019 19:09:34 +0000
From: Daniel Wang <Daniel.Wang@intusurg.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: FitImage cause dependency loop
Thread-Index: AQHVj1TKbSKnt1vtEUWe+18uEKBnUg==
Date: Wed, 30 Oct 2019 19:09:34 +0000
Message-ID: <DM6PR01MB5657A2CFB4DFC8F0E4AC7B1A9A600@DM6PR01MB5657.prod.exchangelabs.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Daniel.Wang@intusurg.com; 
x-originating-ip: [8.36.116.205]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 3af71161-0f9e-4a0c-3c98-08d75d6cb3a2
x-ms-traffictypediagnostic: DM6PR01MB4987:
x-microsoft-antispam-prvs: <DM6PR01MB4987C0C2A94738086D535A329A600@DM6PR01MB4987.prod.exchangelabs.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 02065A9E77
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(366004)(376002)(39860400002)(346002)(136003)(396003)(199004)(189003)(55016002)(3480700005)(66946007)(71200400001)(71190400001)(2906002)(5640700003)(256004)(64756008)(6116002)(3846002)(54896002)(6306002)(8676002)(66476007)(6436002)(52536014)(66446008)(66556008)(86362001)(9686003)(91956017)(2351001)(5660300002)(4744005)(99286004)(1730700003)(81156014)(81166006)(76116006)(14454004)(25786009)(6506007)(6916009)(186003)(7736002)(26005)(74316002)(7696005)(316002)(66066001)(486006)(8936002)(476003)(33656002)(102836004)(478600001)(2501003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DM6PR01MB4987;
	H:DM6PR01MB5657.prod.exchangelabs.com; FPR:; SPF:None; LANG:en;
	PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: intusurg.com does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: LSgIBhTRenuE9GCChROd6cy4KanYNx23yOVblUP0YO9AFKaoEgCsgxnY5nimBcSAdaO3lC08wYFAwX4NqcM1ZGqELw8fpFIpzIVbz+qnZKYdGQkH4CxlyLM1i9/Ov2zEU3ZO4xImTrLC53Yyaz8+hcI+Gjwe4Ep7wqCbHBbNzzHFwBwHQr33qlo7qpd2Azloz/DOvcYRQt75sUCGLRfdE1b9tnDYSSiO3cd/SQ5HCAf/qkdcnsocyyeKcXTYZ3hcdug81SiFkgDHdKcB3tIGFzrZiaSg4uQnRGG5Lo5fZ0CJwng0Qqwi3TQhc63WVl9Qu7Mo6c7aZm38/AkvGUVkHFB9e6owxb1ZkSXawNlz0avg61Fdza7Kksf3pdvxddfyNIQUPpIZtUmFlqcD0DS6BJStySlgU0snL58JovNNX6Z6Ne2ITIRg81T9lI9RpcQf
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: intusurg.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3af71161-0f9e-4a0c-3c98-08d75d6cb3a2
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Oct 2019 19:09:34.5750 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 039caf84-d3e9-4cb9-8b4a-2c2e17a80c19
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yz1FntbbJ2ndgTbx7oN8wsKLWlpALtBk8Asbh/MKY3jjuPdaid1B05JqQ4u7xIcW5mfKoymF9WdKDxcOhnNDoPfqUfSjFHyzKXGuzTyTdaU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR01MB4987
Subject: FitImage cause dependency loop
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 30 Oct 2019 19:09:38 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM6PR01MB5657A2CFB4DFC8F0E4AC7B1A9A600DM6PR01MB5657prod_"

--_000_DM6PR01MB5657A2CFB4DFC8F0E4AC7B1A9A600DM6PR01MB5657prod_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi there,

I got a question hope some of you can give me an advice. I=92m using Yocto =
Warrior and meta-tegra to build my distro. I want to enable verified boot s=
o I added the following settings.

KERNEL_CLASSES ?=3D =93 kernel-fitimage =94
KERNEL_IMAGETYPES_append =3D =93 fitImage=94
UBOOT_SIGN_KEYDIR =3D =93${TOPDIR}/conf=94
UBOOT_SIGN_KEYNAME =3D =93dev=94
UBOOT_MKIMAGE_DTCOPTS =3D =93-I dts -O dtb -p 2000=94
UBOOT_SIGN_ENABLE  =3D =931=94

Everything works well without those setting. But as soon as I added those o=
nes Yocto reports a dependency loop (more than 10 matches). Have any of you=
 encountered this issue before how can I fix it? Thank you so much!

Thanks
-Daniel


--_000_DM6PR01MB5657A2CFB4DFC8F0E4AC7B1A9A600DM6PR01MB5657prod_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style>
</head>
<body lang=3D"EN-US">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi there,</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I got a question hope some of you can give me an adv=
ice. I=92m using Yocto Warrior and meta-tegra to build my distro. I want to=
 enable verified boot so I added the following settings.</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">KERNEL_CLASSES ?=3D =93 kernel-fitimage =94</p>
<p class=3D"MsoNormal">KERNEL_IMAGETYPES_append =3D =93 fitImage=94</p>
<p class=3D"MsoNormal">UBOOT_SIGN_KEYDIR =3D =93${TOPDIR}/conf=94</p>
<p class=3D"MsoNormal">UBOOT_SIGN_KEYNAME =3D =93dev=94</p>
<p class=3D"MsoNormal">UBOOT_MKIMAGE_DTCOPTS =3D =93-I dts -O dtb -p 2000=
=94</p>
<p class=3D"MsoNormal">UBOOT_SIGN_ENABLE &nbsp;=3D =931=94</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Everything works well without those setting. But as =
soon as I added those ones Yocto reports a dependency loop (more than 10 ma=
tches). Have any of you encountered this issue before how can I fix it? Tha=
nk you so much!</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks<o:p></o:p></p>
<p class=3D"MsoNormal">-Daniel<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_DM6PR01MB5657A2CFB4DFC8F0E4AC7B1A9A600DM6PR01MB5657prod_--
