Return-Path: <Aditya.Tayade@kpit.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9DC60E00A1C; Mon,  2 Apr 2018 06:03:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.101.67 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Mon, 02 Apr 2018 06:03:41 PDT
Received: from IND01-BO1-obe.outbound.protection.outlook.com
	(mail-bo1ind01on0067.outbound.protection.outlook.com [104.47.101.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 46027E0084A
	for <poky@yoctoproject.org>; Mon,  2 Apr 2018 06:03:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kpitc.onmicrosoft.com; 
	s=selector1-kpit-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=ZX/p1tVuxmPYA3GFbRcVKrcaZHvHCxQte80prrkGUoQ=;
	b=Ak1Zst/jK511nRUHPTvScu/g780wxemVl+xliFKSy50beq15lvJjDXf0SVcZLIzucl5Zg/f+FTKyHcvg05Z10jaJM9yiswWnUH0cmfBHBC/84zcrqE3eJDSOlKBcSvKMJKLUiYK6BndWqfjaKfv9Kw8Zvcc5hbmkl4Cq3Hm+UiI=
Received: from MAXPR01MB0348.INDPRD01.PROD.OUTLOOK.COM (10.164.150.144) by
	MAXPR01MB0428.INDPRD01.PROD.OUTLOOK.COM (10.164.151.17) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.631.10; Mon, 2 Apr 2018 13:03:36 +0000
Received: from MAXPR01MB0348.INDPRD01.PROD.OUTLOOK.COM
	([fe80::9933:6c3b:3ec:9197]) by MAXPR01MB0348.INDPRD01.PROD.OUTLOOK.COM
	([fe80::9933:6c3b:3ec:9197%13]) with mapi id 15.20.0631.013;
	Mon, 2 Apr 2018 13:03:36 +0000
From: Aditya Tayade <Aditya.Tayade@kpit.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: QEMU package list verification
Thread-Index: AQHTymyza+dHxudTokaxfx8F47ZMoKPtcQ/Q
Date: Mon, 2 Apr 2018 13:03:36 +0000
Message-ID: <MAXPR01MB03489367CE139C21FC9A08E091A60@MAXPR01MB0348.INDPRD01.PROD.OUTLOOK.COM>
References: <MAXPR01MB03488720F9BD6E615B6832BE91A60@MAXPR01MB0348.INDPRD01.PROD.OUTLOOK.COM>
In-Reply-To: <MAXPR01MB03488720F9BD6E615B6832BE91A60@MAXPR01MB0348.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Aditya.Tayade@kpit.com; 
x-originating-ip: [115.112.39.238]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; MAXPR01MB0428;
	7:lcaU1zPeTObmqVsNfYtytHCIz/SQdO1dYNky45/bb2HaMgw6b919kx+8fPZ+JkiaO0BzPRJ9cGhWN6jj95nE3KxgamuBHOFn9Lpmf0JiMF06rduBtslVNiyj9Vt0zAzKaeZZcrLtN7ZK4kucPBJu+Us0v5SP7JhmhW7k2MAhhlxwcoWiLSZiLi0Rujz0BnENIvnhtLaOqxNjYsmoI1EZt0/dCY3Mt3TmyxWlXAgv/75haEy2hlLS/ufaiCkAsJy+
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 6a3a3822-b9ef-4ed4-3da8-08d5989a25a7
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(48565401081)(5600026)(4604075)(3008032)(4534165)(7168020)(4627221)(201703031133081)(201702281549075)(2017052603328)(7153060)(7193020);
	SRVR:MAXPR01MB0428; 
x-ms-traffictypediagnostic: MAXPR01MB0428:
x-microsoft-antispam-prvs: <MAXPR01MB0428918266184267473D4AED91A60@MAXPR01MB0428.INDPRD01.PROD.OUTLOOK.COM>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(8121501046)(5005006)(10201501046)(3002001)(93006095)(93001095)(3231221)(944501327)(52105095)(6055026)(6041310)(20161123560045)(20161123558120)(20161123564045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123562045)(6072148)(201708071742011);
	SRVR:MAXPR01MB0428; BCL:0; PCL:0; RULEID:; SRVR:MAXPR01MB0428; 
x-forefront-prvs: 0630013541
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(39860400002)(39380400002)(396003)(366004)(346002)(376002)(189003)(199004)(478600001)(8936002)(19627405001)(72206003)(81166006)(86362001)(2940100002)(105586002)(3480700004)(5660300001)(8676002)(14454004)(97736004)(476003)(7696005)(25786009)(66066001)(486005)(1730700003)(81156014)(2351001)(486005)(2900100001)(55016002)(446003)(3280700002)(54896002)(7736002)(5640700003)(74316002)(59450400001)(53936002)(186003)(6506007)(76176011)(15650500001)(5250100002)(2906002)(2501003)(55236004)(3846002)(6116002)(99286004)(68736007)(33656002)(26005)(6606003)(3660700001)(106356001)(102836004)(9686003)(6916009)(11346002)(316002)(6436002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:MAXPR01MB0428;
	H:MAXPR01MB0348.INDPRD01.PROD.OUTLOOK.COM; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: kpit.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: fmGTcCSXV3xrURFoqV8/lZ92Zk0Lgwdd/w1ToBXlstwgP82p/fcPvl/rgf8RX5So5Vp6trFXQbejltt/S+SW5uhsEu1uWoDa8isN4P1NDxDPgSrCLkY/1U0BV+qJyw2Bc9EMA1wX0HIAWl5gNYhY9SyVaIoAP8IsPYb2vLQjTmKV6D7cQWCQs7cU5u65AeVk1ErKjqdfSz7w+Y2dszEtXx37mB4vtkIHOfqN+NXwe3290SlKTDVb4OJgIcAWVVhsuu1UZWsK/cPGwKygwbKmkLm6+I4PkWdzfbcFQNdxcf7NiZQk7POE38+Q9yc8NU4Tz2ErafDgxQh3QfU+hT5Wv8Qr54EJxR4LyRtpQ6L3A8CyxRD1A5j/DEyMo/DsQqG0CSFxbXts/gOS02oPj1Ov3K9InIxwOMcTqbLOVhC3cHQ=
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: kpit.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6a3a3822-b9ef-4ed4-3da8-08d5989a25a7
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Apr 2018 13:03:36.5802 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3539451e-b46e-4a26-a242-ff61502855c7
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MAXPR01MB0428
Subject: QEMU package list verification
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
X-List-Received-Date: Mon, 02 Apr 2018 13:03:44 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MAXPR01MB03489367CE139C21FC9A08E091A60MAXPR01MB0348INDP_"

--_000_MAXPR01MB03489367CE139C21FC9A08E091A60MAXPR01MB0348INDP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi ,
Please refer to my below steps to understand how OS components are included=
 in the Qemu image for Yocto 2.5

1) Build core-image-sato for yocto 2.5 ( DISTRO_VERSION =3D 2.4+snapshot-20=
180402)
2) I used the bitbake-layers show-recipes to list down the packages .
3) Verify whether the packages are part of the image root fs
4) I use command find ./ -name*<package-name>*

If above command returns *<package-name>*.so or /var/lib/dnf/yumdb/*/*<pack=
age-name>* then i consider the the package successfully added to rootfs.
If not then i consider the package not present in the rootfs.

4) I found some packages not present in the rootfs that are listed in the s=
tep 2 . I assume that by default meta, meta-poky and meta-yocto-bsp layers =
are part of yocto 2.5 so  all the packages present in these layers should b=
e present in QEMU as well.

If my assumption is correct how do we ensure that all the packges of the la=
yers meta, meta-poky and meta-yocto-bsp layers are present in the qemu root=
 fs ?

Regards,
Aditya Tayade


This message contains information that may be privileged or confidential an=
d is the property of the KPIT Technologies Ltd. It is intended only for the=
 person to whom it is addressed. If you are not the intended recipient, you=
 are not authorized to read, print, retain copy, disseminate, distribute, o=
r use this message or any part thereof. If you receive this message in erro=
r, please notify the sender immediately and delete all copies of this messa=
ge. KPIT Technologies Ltd. does not accept any liability for virus infected=
 mails.

--_000_MAXPR01MB03489367CE139C21FC9A08E091A60MAXPR01MB0348INDP_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
Hi ,<br>
<div style=3D"color: rgb(0, 0, 0);">
<div dir=3D"ltr">
<div id=3D"x_divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; col=
or:#000000; font-family:Calibri,Helvetica,sans-serif">
<div>Please refer to my below steps to understand how OS components are inc=
luded in the Qemu image for Yocto 2.5<br>
<br>
1) Build core-image-sato for yocto 2.5 ( DISTRO_VERSION =3D 2.4&#43;snapsho=
t-20180402)<br>
2) I used the bitbake-layers show-recipes to list down the packages .<br>
3) Verify whether the packages are part of the image root fs<br>
4) I use command <b>find ./ -name*&lt;package-name&gt;*</b><br>
&nbsp;<br>
If above command returns <b>*&lt;package-name&gt;*.so or /var/lib/dnf/yumdb=
/*/*&lt;package-name&gt;*</b> then i consider the the package successfully =
added to rootfs.<br>
If not then i consider the package not present in the rootfs.<br>
&nbsp;<br>
4) I found some packages not present in the rootfs that are listed in the s=
tep 2 . I assume that by default meta, meta-poky and meta-yocto-bsp layers =
are part of yocto 2.5 so&nbsp; all the packages present in these layers sho=
uld be present in QEMU as well.<br>
<br>
If my assumption is correct how do we ensure that all the packges of the la=
yers <b>
meta, meta-poky and meta-yocto-bsp</b> layers are present in the qemu root =
fs ?<br>
<br>
Regards,<br>
Aditya Tayade</div>
<br>
<p></p>
</div>
</div>
</div>
</div>
This message contains information that may be privileged or confidential an=
d is the property of the KPIT Technologies Ltd. It is intended only for the=
 person to whom it is addressed. If you are not the intended recipient, you=
 are not authorized to read, print,
 retain copy, disseminate, distribute, or use this message or any part ther=
eof. If you receive this message in error, please notify the sender immedia=
tely and delete all copies of this message. KPIT Technologies Ltd. does not=
 accept any liability for virus
 infected mails.
</body>
</html>

--_000_MAXPR01MB03489367CE139C21FC9A08E091A60MAXPR01MB0348INDP_--
