Return-Path: <chintan.raval@leicabiosystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9B942E00C4E; Wed, 14 Nov 2018 14:25:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 25151 seconds by postgrey-1.32 at yocto-www;
	Wed, 14 Nov 2018 14:25:02 PST
Received: from NAM02-CY1-obe.outbound.protection.outlook.com
	(mail-eopbgr760043.outbound.protection.outlook.com [40.107.76.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0C7CE00C4B
	for <poky@yoctoproject.org>; Wed, 14 Nov 2018 14:25:02 -0800 (PST)
Received: from BN7PR07MB5090.namprd07.prod.outlook.com (20.176.27.27) by
	BN7PR07MB4194.namprd07.prod.outlook.com (52.135.244.144) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1294.25; Wed, 14 Nov 2018 10:55:29 +0000
Received: from BN7PR07MB5090.namprd07.prod.outlook.com
	([fe80::e1aa:4ede:512c:7f8b]) by
	BN7PR07MB5090.namprd07.prod.outlook.com
	([fe80::e1aa:4ede:512c:7f8b%3]) with mapi id 15.20.1294.045;
	Wed, 14 Nov 2018 10:55:29 +0000
From: "Raval, Chintan K" <chintan.raval@leicabiosystems.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: glibc 2.23 with binutils 2.29 and gcc7.3
Thread-Index: AdR8CA+8G2xz6bBDSGifAQhAfRKI0QAAHJDA
Date: Wed, 14 Nov 2018 10:55:29 +0000
Message-ID: <BN7PR07MB509023B14AD3F10E1A15BB22F4C30@BN7PR07MB5090.namprd07.prod.outlook.com>
References: <BN7PR07MB5090CCEF6ADE30AAD6EA7404F4C30@BN7PR07MB5090.namprd07.prod.outlook.com>
In-Reply-To: <BN7PR07MB5090CCEF6ADE30AAD6EA7404F4C30@BN7PR07MB5090.namprd07.prod.outlook.com>
Accept-Language: en-IN, en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [134.217.181.26]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; BN7PR07MB4194;
	20:bFa1sWvy6ADuwpMIvN//JQJOlHIXKvKBwFlGcVfUTQgOBeC4tkxuNgBtZagKpymEzIxeuo0kxRqXzEeF1Mqhw1K8slLMq+lr4fZYhrtKOwHDhqViGvtDjSTjv6Y8RjhmQe4R+yG5E8bkua+U6QUtAUtVgFC6CSVh++vmcpwOv2HRj344+3Zi+kKdi7ycM6BoJihLoQCVRD7d5Zqfb3uRhsO2Epkb6ZSWGnPRJMpyh/dppB7/zVnC1mkykGcUPfGN;
	23:iLiDL7D7XdE14/L7ZXu7kpde6cqzB437lzURxhcjZIPGxjWAce6NOq4mwC6HOLr6ckFEy/dCD2wsbRyfVthaF2SU2wbiDMz1Q+PWu+XFTr7rqrhwTYZNgdgA+q8TFWT1oMkL7WqFMRv1YgauhOnmQg==
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-correlation-id: b0c3f253-8857-448e-71ed-08d64a1fb11b
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390098)(7020095)(4652040)(8989299)(5600074)(711020)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7153060)(49563074)(7193020);
	SRVR:BN7PR07MB4194; 
X-MS-TrafficTypeDiagnostic: BN7PR07MB4194:|BN7PR07MB4194:
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=chintan.raval@leicabiosystems.com; 
x-microsoft-antispam-prvs: <BN7PR07MB419460CB434848760A228866F4C30@BN7PR07MB4194.namprd07.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(21748063052155)(28532068793085)(190501279198761)(227612066756510)(253647566268744)(86561027422486)(64217206974132)(31418570063057)(128460861657000)(81160342030619);
x-ms-exchange-senderadcheck: 1
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(8211001083)(102415395)(6040522)(2401047)(5005006)(8121501046)(93006095)(93001095)(3002001)(10201501046)(3231410)(944501410)(4983020)(52105112)(6055026)(148016)(149066)(150057)(6041310)(20161123564045)(20161123558120)(20161123562045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123560045)(201708071742011)(7699051)(76991095);
	SRVR:BN7PR07MB4194; BCL:0; PCL:0; RULEID:; SRVR:BN7PR07MB4194; 
x-forefront-prvs: 085634EFF4
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(366004)(39860400002)(136003)(396003)(346002)(376002)(53754006)(199004)(189003)(5640700003)(54556002)(733005)(55016002)(6306002)(54896002)(26005)(14454004)(102836004)(8936002)(6436002)(478600001)(1730700003)(81156014)(53936002)(33656002)(236005)(9686003)(2473003)(2501003)(99286004)(68736007)(2351001)(6916009)(105586002)(106356001)(81166006)(229853002)(2900100001)(6506007)(186003)(66066001)(486006)(476003)(446003)(76176011)(8676002)(7696005)(11346002)(5024004)(316002)(7736002)(2906002)(97736004)(606006)(9326002)(99936001)(3846002)(71200400001)(71190400001)(2940100002)(86362001)(5660300001)(256004)(25786009)(74316002)(6116002)(93156006)(14444005);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BN7PR07MB4194;
	H:BN7PR07MB5090.namprd07.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: leicabiosystems.com does not
	designate permitted sender hosts)
x-microsoft-antispam-message-info: qIHWGBaOkaip5Ecem6SagF5BwM3cdJnRTCbI1JI1e8lS326CepWu2akZgNX/yKIigwvtrfAexudkpJwHkyJ8YJ7ZgARrxdwJ8yqbJbvd+uvvKQOVV6GdgKD3/s0K+8Bn8dpT0GH578oVLzlYJYj+C7nDMO4V8cazJt7PGuwjm95M2CJFtz4HQuF4fXVMQpbuBFBO6UZiqxg/0DHoT+J4r/wbM1Sr0RGxRCAXfiW1FlK642EF63AqESO3nhgyit1vhPAtOkajmkCD4VJpopxRcEESLgxUa391Wa44L7GTzAl+aq74dq/UhAIgCjcr/NVXiUohwaSqt2YXSQKVvaFXnXhR7uSHkwbEKZzIp7ucYMw=
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: b0c3f253-8857-448e-71ed-08d64a1fb11b
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Nov 2018 10:55:29.3299 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 771c9c47-7f24-44dc-958e-34f8713a8394
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR07MB4194
X-OriginatorOrg: leicabiosystems.com
Subject: FW: glibc 2.23 with binutils 2.29 and gcc7.3
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
X-List-Received-Date: Wed, 14 Nov 2018 22:25:05 -0000
X-Groupsio-MsgNum: 11428
Content-Language: en-US
Content-Type: multipart/related;
	boundary="_010_BN7PR07MB509023B14AD3F10E1A15BB22F4C30BN7PR07MB5090namp_";
	type="multipart/alternative"

--_010_BN7PR07MB509023B14AD3F10E1A15BB22F4C30BN7PR07MB5090namp_
Content-Type: multipart/alternative;
	boundary="_000_BN7PR07MB509023B14AD3F10E1A15BB22F4C30BN7PR07MB5090namp_"

--_000_BN7PR07MB509023B14AD3F10E1A15BB22F4C30BN7PR07MB5090namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello All,

For my project I'm using rocko layer with qt5.
In place of standard linux and glibc versions I'm using below versions.

Linux Kernel - 2.6.35
Glibc - 2.23
Binutils - 2.29
Gcc - 7.3

While compiling customized poky-image I'm getting following error.

arm-poky-linux-gnueabi-gcc  -march=3Darmv6 -mfpu=3Dvfp -mfloat-abi=3Dsoftfp=
 --sysroot=3D/work/repo/bsp2/build-ebox/tmp/work/armv6-vfp-poky-linux-gnuea=
bi/glibc/2.23-r0/recipe-sysroot-tcbootstrap   -nostdlib -nostartfiles -r -o=
 /work/repo/bsp2/build-ebox/tmp/work/armv6-vfp-poky-linux-gnueabi/glibc/2.2=
3-r0/build-arm-poky-linux-gnueabi/elf/librtld.map.o '-Wl,-(' /work/repo/bsp=
2/build-ebox/tmp/work/armv6-vfp-poky-linux-gnueabi/glibc/2.23-r0/build-arm-=
poky-linux-gnueabi/elf/dl-allobjs.os /work/repo/bsp2/build-ebox/tmp/work/ar=
mv6-vfp-poky-linux-gnueabi/glibc/2.23-r0/build-arm-poky-linux-gnueabi/libc_=
pic.a -lgcc '-Wl,-)' -Wl,-Map,/work/repo/bsp2/build-ebox/tmp/work/armv6-vfp=
-poky-linux-gnueabi/glibc/2.23-r0/build-arm-poky-linux-gnueabi/elf/librtld.=
mapT
| /work/repo/bsp2/build-ebox/tmp/work/armv6-vfp-poky-linux-gnueabi/glibc/2.=
23-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi.gcc-cross-initia=
l-arm/../../libexec/arm-poky-linux-gnueabi.gcc-cross-initial-arm/gcc/arm-po=
ky-linux-gnueabi/7.3.0/ld: cannot find -lgcc
| collect2: error: ld returned 1 exit status
| Makefile:340: recipe for target '/work/repo/bsp2/build-ebox/tmp/work/armv=
6-vfp-poky-linux-gnueabi/glibc/2.23-r0/build-arm-poky-linux-gnueabi/elf/lib=
rtld.map' failed
| make[2]: *** [/work/repo/bsp2/build-ebox/tmp/work/armv6-vfp-poky-linux-gn=
ueabi/glibc/2.23-r0/build-arm-poky-linux-gnueabi/elf/librtld.map] Error 1
| make[2]: Leaving directory '/work/repo/bsp2/build-ebox/tmp/work/armv6-vfp=
-poky-linux-gnueabi/glibc/2.23-r0/git/elf'
| Makefile:234: recipe for target 'elf/subdir_lib' failed
| make[1]: *** [elf/subdir_lib] Error 2
| make[1]: Leaving directory '/work/repo/bsp2/build-ebox/tmp/work/armv6-vfp=
-poky-linux-gnueabi/glibc/2.23-r0/git'
| ERROR: oe_runmake failed
| Makefile:9: recipe for target 'all' failed
| make: *** [all] Error 2
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_compile (log file is located at /work/repo/bsp=
2/build-ebox/tmp/work/armv6-vfp-poky-linux-gnueabi/glibc/2.23-r0/temp/log.d=
o_compile.27335)
ERROR: Task (/work/repo/bsp2/sources/poky/meta/recipes-core/glibc/glibc_2.2=
3.bb:do_compile) failed with exit code '1'
NOTE: Tasks Summary: Attempted 2002 tasks of which 1980 didn't need to be r=
erun and 1 failed.

Summary: 1 task failed:
  /work/repo/bsp2/sources/poky/meta/recipes-core/glibc/glibc_2.23.bb:do_com=
pile
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.

Any help will be highly appreciated.


Best regards,
Chintan Raval  |  Software Design Engineer  |  Leica Biosystems

4th Floor, Tower - 6A, RMZ Ecoworld, Bellandur, Bengaluru 560103, Karnataka=
, INDIA
M: +91-81470-43553
chintan.raval@leicabiosystems.com<mailto:chintan.raval@leicabiosystems.com>
LeicaBiosystems.com<http://www.leicabiosystems.com/>

[cid:image002.jpg@01D2C45C.93ECCA10]<http://www.leicabiosystems.com/>

        [Description: icon_facebook_grey] <https://www.facebook.com/LeicaBi=
osystems>            [Description: icon_twitter_grey] <https://twitter.com/=
LeicaBio>                 [Description: icon_linkedin_grey] <https://www.li=
nkedin.com/company/leica-biosystems>



Please be advised that this email may contain confidential information. If =
you are not the intended recipient, please notify us by email by replying t=
o the sender and delete this message. The sender disclaims that the content=
 of this email constitutes an offer to enter into, or the acceptance of, an=
y agreement; provided that the foregoing does not invalidate the binding ef=
fect of any digital or other electronic reproduction of a manual signature =
that is included in any attachment.

--_000_BN7PR07MB509023B14AD3F10E1A15BB22F4C30BN7PR07MB5090namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle18
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle19
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1029" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-IN" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello All,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">For my project I&#8217;m using rocko layer with qt5.=
<o:p></o:p></p>
<p class=3D"MsoNormal">In place of standard linux and glibc versions I&#821=
7;m using below versions.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Linux Kernel &#8211; 2.6.35<o:p></o:p></p>
<p class=3D"MsoNormal">Glibc &#8211; 2.23<o:p></o:p></p>
<p class=3D"MsoNormal">Binutils &#8211; 2.29<o:p></o:p></p>
<p class=3D"MsoNormal">Gcc &#8211; 7.3<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">While compiling customized poky-image I&#8217;m gett=
ing following error.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">arm-poky-linux-gnueabi-gcc&nbsp; -march=3Darmv6 -mfp=
u=3Dvfp -mfloat-abi=3Dsoftfp --sysroot=3D/work/repo/bsp2/build-ebox/tmp/wor=
k/armv6-vfp-poky-linux-gnueabi/glibc/2.23-r0/recipe-sysroot-tcbootstrap&nbs=
p;&nbsp; -nostdlib -nostartfiles -r -o /work/repo/bsp2/build-ebox/tmp/work/=
armv6-vfp-poky-linux-gnueabi/glibc/2.23-r0/build-arm-poky-linux-gnueabi/elf=
/librtld.map.o
 '-Wl,-(' /work/repo/bsp2/build-ebox/tmp/work/armv6-vfp-poky-linux-gnueabi/=
glibc/2.23-r0/build-arm-poky-linux-gnueabi/elf/dl-allobjs.os /work/repo/bsp=
2/build-ebox/tmp/work/armv6-vfp-poky-linux-gnueabi/glibc/2.23-r0/build-arm-=
poky-linux-gnueabi/libc_pic.a -lgcc
 '-Wl,-)' -Wl,-Map,/work/repo/bsp2/build-ebox/tmp/work/armv6-vfp-poky-linux=
-gnueabi/glibc/2.23-r0/build-arm-poky-linux-gnueabi/elf/librtld.mapT<o:p></=
o:p></p>
<p class=3D"MsoNormal">| /work/repo/bsp2/build-ebox/tmp/work/armv6-vfp-poky=
-linux-gnueabi/glibc/2.23-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-g=
nueabi.gcc-cross-initial-arm/../../libexec/arm-poky-linux-gnueabi.gcc-cross=
-initial-arm/gcc/arm-poky-linux-gnueabi/7.3.0/ld:
 cannot find -lgcc<o:p></o:p></p>
<p class=3D"MsoNormal">| collect2: error: ld returned 1 exit status<o:p></o=
:p></p>
<p class=3D"MsoNormal">| Makefile:340: recipe for target '/work/repo/bsp2/b=
uild-ebox/tmp/work/armv6-vfp-poky-linux-gnueabi/glibc/2.23-r0/build-arm-pok=
y-linux-gnueabi/elf/librtld.map' failed<o:p></o:p></p>
<p class=3D"MsoNormal">| make[2]: *** [/work/repo/bsp2/build-ebox/tmp/work/=
armv6-vfp-poky-linux-gnueabi/glibc/2.23-r0/build-arm-poky-linux-gnueabi/elf=
/librtld.map] Error 1<o:p></o:p></p>
<p class=3D"MsoNormal">| make[2]: Leaving directory '/work/repo/bsp2/build-=
ebox/tmp/work/armv6-vfp-poky-linux-gnueabi/glibc/2.23-r0/git/elf'<o:p></o:p=
></p>
<p class=3D"MsoNormal">| Makefile:234: recipe for target 'elf/subdir_lib' f=
ailed<o:p></o:p></p>
<p class=3D"MsoNormal">| make[1]: *** [elf/subdir_lib] Error 2<o:p></o:p></=
p>
<p class=3D"MsoNormal">| make[1]: Leaving directory '/work/repo/bsp2/build-=
ebox/tmp/work/armv6-vfp-poky-linux-gnueabi/glibc/2.23-r0/git'<o:p></o:p></p=
>
<p class=3D"MsoNormal">| ERROR: oe_runmake failed<o:p></o:p></p>
<p class=3D"MsoNormal">| Makefile:9: recipe for target 'all' failed<o:p></o=
:p></p>
<p class=3D"MsoNormal">| make: *** [all] Error 2<o:p></o:p></p>
<p class=3D"MsoNormal">| WARNING: exit code 1 from a shell command.<o:p></o=
:p></p>
<p class=3D"MsoNormal">| ERROR: Function failed: do_compile (log file is lo=
cated at /work/repo/bsp2/build-ebox/tmp/work/armv6-vfp-poky-linux-gnueabi/g=
libc/2.23-r0/temp/log.do_compile.27335)<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: Task (/work/repo/bsp2/sources/poky/meta/recip=
es-core/glibc/glibc_2.23.bb:do_compile) failed with exit code '1'<o:p></o:p=
></p>
<p class=3D"MsoNormal">NOTE: Tasks Summary: Attempted 2002 tasks of which 1=
980 didn't need to be rerun and 1 failed.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Summary: 1 task failed:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; /work/repo/bsp2/sources/poky/meta/recipes-cor=
e/glibc/glibc_2.23.bb:do_compile<o:p></o:p></p>
<p class=3D"MsoNormal">Summary: There were 2 ERROR messages shown, returnin=
g a non-zero exit code.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif;color:#1F497D;mso-fareast-language:EN-A=
U">Any help will be highly appreciated.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-GB" style=3D"font-size:10.0pt;fo=
nt-family:&quot;Arial&quot;,sans-serif;color:#1F497D;mso-fareast-language:E=
N-AU"><o:p>&nbsp;</o:p></span></b></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-GB" style=3D"font-size:10.0pt;fo=
nt-family:&quot;Arial&quot;,sans-serif;color:#1F497D;mso-fareast-language:E=
N-AU"><o:p>&nbsp;</o:p></span></b></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-GB" style=3D"font-size:10.0pt;fo=
nt-family:&quot;Arial&quot;,sans-serif;color:#1F497D;mso-fareast-language:E=
N-AU">Best regards,<o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-GB" style=3D"font-size:10.0pt;fo=
nt-family:&quot;Arial&quot;,sans-serif;color:#1F497D;mso-fareast-language:E=
N-AU">Chintan Raval</span></b><span lang=3D"EN-GB" style=3D"font-size:10.0p=
t;font-family:&quot;Arial&quot;,sans-serif;color:#1F497D;mso-fareast-langua=
ge:EN-AU">&nbsp;
 |&nbsp; Software Design Engineer&nbsp; |&nbsp; </span><b><span lang=3D"EN-=
GB" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;colo=
r:#ED1B2F;mso-fareast-language:EN-AU">Leica Biosystems</span></b><span lang=
=3D"EN-GB" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-ser=
if;color:#1F497D;mso-fareast-language:EN-AU"><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span lang=3D"EN-US" s=
tyle=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,sans-serif;color:blac=
k;mso-fareast-language:EN-AU"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span lang=3D"FR" styl=
e=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,sans-serif;color:black;m=
so-fareast-language:EN-AU">4th Floor, Tower &#8211; 6A, RMZ Ecoworld, Bella=
ndur, Bengaluru 560103, Karnataka, INDIA<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span lang=3D"FR" styl=
e=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,sans-serif;color:black;m=
so-fareast-language:EN-AU">M: &#43;91-81470-43553
<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span lang=3D"FR" styl=
e=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,sans-serif;color:#1F497D=
;mso-fareast-language:EN-AU"><a href=3D"mailto:chintan.raval@leicabiosystem=
s.com">chintan.raval@leicabiosystems.com</a>
<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span lang=3D"EN-AU" s=
tyle=3D"color:#1F497D;mso-fareast-language:EN-AU"><a href=3D"http://www.lei=
cabiosystems.com/"><span style=3D"font-size:9.0pt;font-family:&quot;Arial&q=
uot;,sans-serif;color:blue">LeicaBiosystems.com</span></a></span><span lang=
=3D"EN-AU" style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,sans-seri=
f;color:#1F497D;mso-fareast-language:EN-AU">
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-AU" style=3D"color:#1F497D;mso-fare=
ast-language:EN-AU"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><a href=3D"http://www.leicabiosystems.com/"><span la=
ng=3D"EN-AU" style=3D"color:#1F497D;mso-fareast-language:EN-AU;text-decorat=
ion:none"><img border=3D"0" width=3D"438" height=3D"96" style=3D"width:4.56=
25in;height:1.0in" id=3D"Picture_x0020_1" src=3D"cid:image001.jpg@01D47C36.=
87535290" alt=3D"cid:image002.jpg@01D2C45C.93ECCA10"></span></a><span lang=
=3D"EN-AU" style=3D"color:#1F497D;mso-fareast-language:EN-AU"><o:p></o:p></=
span></p>
<p class=3D"MsoNormal" style=3D"margin-left:36.0pt"><!--[if gte vml 1]><v:s=
hapetype id=3D"_x0000_t75" coordsize=3D"21600,21600" o:spt=3D"75" o:preferr=
elative=3D"t" path=3D"m@4@5l@4@11@9@11@9@5xe" filled=3D"f" stroked=3D"f">
<v:stroke joinstyle=3D"miter" />
<v:formulas>
<v:f eqn=3D"if lineDrawn pixelLineWidth 0" />
<v:f eqn=3D"sum @0 1 0" />
<v:f eqn=3D"sum 0 0 @1" />
<v:f eqn=3D"prod @2 1 2" />
<v:f eqn=3D"prod @3 21600 pixelWidth" />
<v:f eqn=3D"prod @3 21600 pixelHeight" />
<v:f eqn=3D"sum @0 0 1" />
<v:f eqn=3D"prod @6 1 2" />
<v:f eqn=3D"prod @7 21600 pixelWidth" />
<v:f eqn=3D"sum @8 21600 0" />
<v:f eqn=3D"prod @7 21600 pixelHeight" />
<v:f eqn=3D"sum @10 21600 0" />
</v:formulas>
<v:path o:extrusionok=3D"f" gradientshapeok=3D"t" o:connecttype=3D"rect" />
<o:lock v:ext=3D"edit" aspectratio=3D"t" />
</v:shapetype><v:shape id=3D"Picture_x0020_8" o:spid=3D"_x0000_s1026" type=
=3D"#_x0000_t75" alt=3D"Description: icon_facebook_grey" href=3D"https://ww=
w.facebook.com/LeicaBiosystems" style=3D'position:absolute;left:0;text-alig=
n:left;margin-left:2.15pt;margin-top:9.15pt;width:18.95pt;height:18.95pt;z-=
index:251659264;visibility:visible;mso-wrap-style:square;mso-width-percent:=
0;mso-height-percent:0;mso-wrap-distance-left:9pt;mso-wrap-distance-top:0;m=
so-wrap-distance-right:9pt;mso-wrap-distance-bottom:0;mso-position-horizont=
al:absolute;mso-position-horizontal-relative:margin;mso-position-vertical:a=
bsolute;mso-position-vertical-relative:text;mso-width-percent:0;mso-height-=
percent:0;mso-width-relative:page;mso-height-relative:page' o:button=3D"t">
<v:fill o:detectmouseclick=3D"t" />
<v:imagedata src=3D"cid:image002.gif@01D47C36.87535290" o:title=3D" icon_fa=
cebook_grey" />
<w:wrap anchorx=3D"margin"/>
</v:shape><v:shape id=3D"Picture_x0020_9" o:spid=3D"_x0000_s1028" type=3D"#=
_x0000_t75" alt=3D"Description: icon_twitter_grey" href=3D"https://twitter.=
com/LeicaBio" style=3D'position:absolute;left:0;text-align:left;margin-left=
:33.4pt;margin-top:9.15pt;width:18.95pt;height:18.95pt;z-index:251661312;vi=
sibility:visible;mso-wrap-style:square;mso-width-percent:0;mso-height-perce=
nt:0;mso-wrap-distance-left:9pt;mso-wrap-distance-top:0;mso-wrap-distance-r=
ight:9pt;mso-wrap-distance-bottom:0;mso-position-horizontal:absolute;mso-po=
sition-horizontal-relative:text;mso-position-vertical:absolute;mso-position=
-vertical-relative:text;mso-width-percent:0;mso-height-percent:0;mso-width-=
relative:page;mso-height-relative:page' o:button=3D"t">
<v:fill o:detectmouseclick=3D"t" />
<v:imagedata src=3D"cid:image003.gif@01D47C36.87535290" o:title=3D" icon_tw=
itter_grey" />
</v:shape><v:shape id=3D"Picture_x0020_10" o:spid=3D"_x0000_s1027" type=3D"=
#_x0000_t75" alt=3D"Description: icon_linkedin_grey" href=3D"https://www.li=
nkedin.com/company/leica-biosystems" style=3D'position:absolute;left:0;text=
-align:left;margin-left:64.9pt;margin-top:9.15pt;width:18.95pt;height:18.95=
pt;z-index:251660288;visibility:visible;mso-wrap-style:square;mso-width-per=
cent:0;mso-height-percent:0;mso-wrap-distance-left:9pt;mso-wrap-distance-to=
p:0;mso-wrap-distance-right:9pt;mso-wrap-distance-bottom:0;mso-position-hor=
izontal:absolute;mso-position-horizontal-relative:text;mso-position-vertica=
l:absolute;mso-position-vertical-relative:text;mso-width-percent:0;mso-heig=
ht-percent:0;mso-width-relative:page;mso-height-relative:page' o:button=3D"=
t">
<v:fill o:detectmouseclick=3D"t" />
<v:imagedata src=3D"cid:image004.gif@01D47C36.87535290" o:title=3D" icon_li=
nkedin_grey" />
</v:shape><![endif]--><![if !vml]><span style=3D"mso-ignore:vglayout">
<table cellpadding=3D"0" cellspacing=3D"0" align=3D"left">
<tbody>
<tr>
<td width=3D"14" height=3D"707"></td>
<td width=3D"38"></td>
<td width=3D"25"></td>
<td width=3D"38"></td>
<td width=3D"25"></td>
<td width=3D"38"></td>
</tr>
<tr>
<td height=3D"38"></td>
<td align=3D"left" valign=3D"top"><a href=3D"https://www.facebook.com/Leica=
Biosystems"><img border=3D"0" width=3D"25" height=3D"25" style=3D"width:.26=
38in;height:.2638in" src=3D"cid:image008.jpg@01D47C36.A5182C10" alt=3D"Desc=
ription: icon_facebook_grey" v:shapes=3D"Picture_x0020_8"></a></td>
<td></td>
<td align=3D"left" valign=3D"top"><a href=3D"https://twitter.com/LeicaBio">=
<img border=3D"0" width=3D"25" height=3D"25" style=3D"width:.2638in;height:=
.2638in" src=3D"cid:image009.jpg@01D47C36.A5182C10" alt=3D"Description: ico=
n_twitter_grey" v:shapes=3D"Picture_x0020_9"></a></td>
<td></td>
<td align=3D"left" valign=3D"top"><a href=3D"https://www.linkedin.com/compa=
ny/leica-biosystems"><img border=3D"0" width=3D"25" height=3D"25" style=3D"=
width:.2638in;height:.2638in" src=3D"cid:image010.jpg@01D47C36.A5182C10" al=
t=3D"Description: icon_linkedin_grey" v:shapes=3D"Picture_x0020_10"></a></t=
d>
</tr>
</tbody>
</table>
</span><![endif]><span lang=3D"EN-AU" style=3D"color:#1F497D;mso-fareast-la=
nguage:EN-AU"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-AU"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
Please be advised that this email may contain confidential information. If =
you are not the intended recipient, please notify us by email by replying t=
o the sender and delete this message. The sender disclaims that the content=
 of this email constitutes an offer
 to enter into, or the acceptance of, any agreement; provided that the fore=
going does not invalidate the binding effect of any digital or other electr=
onic reproduction of a manual signature that is included in any attachment.
</body>
</html>

--_000_BN7PR07MB509023B14AD3F10E1A15BB22F4C30BN7PR07MB5090namp_--

--_010_BN7PR07MB509023B14AD3F10E1A15BB22F4C30BN7PR07MB5090namp_
Content-Type: image/jpeg; name="image001.jpg"
Content-Description: image001.jpg
Content-Disposition: inline; filename="image001.jpg"; size=5336;
	creation-date="Wed, 14 Nov 2018 10:55:25 GMT";
	modification-date="Wed, 14 Nov 2018 10:55:25 GMT"
Content-ID: <image001.jpg@01D47C36.87535290>
Content-Transfer-Encoding: base64

/9j/4AAQSkZJRgABAQEAYABgAAD/2wBDAAoHBwkHBgoJCAkLCwoMDxkQDw4ODx4WFxIZJCAmJSMg
IyIoLTkwKCo2KyIjMkQyNjs9QEBAJjBGS0U+Sjk/QD3/2wBDAQsLCw8NDx0QEB09KSMpPT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT3/wAARCABgAbYDASIA
AhEBAxEB/8QAGwABAAIDAQEAAAAAAAAAAAAAAAUGAQQHAgP/xAA6EAABBAECBQICCAUEAgMAAAAB
AAIDBBEFEgYTITFBFFEiYQcVIzJygZGhNUJScbIWYrHBJdEzgvD/xAAaAQEAAwEBAQAAAAAAAAAA
AAAAAQIDBAUG/8QALBEBAAICAQMCBQIHAAAAAAAAAAECAxEEEiExQWEFExRRcTLBcoGRobHh8f/a
AAwDAQACEQMRAD8A7MiIgIsLy5zWNLnEADqSfCD0sKEdxdoccpjfqcGQcHByP1HRS0E8ViJskL2v
jcMtc05BH90iYnwvbFekbtWY/MPuiwiKMoiICIiAiIgIijddtTUtJlngdtka5gBxnu8A/sUEkiIg
IiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIsIPOBlcn4z4
om1S9LTryFtGFxaQ0/8AyOHcn5ewXROJNQGmaDcstOHtjIZ+I9B+5XINEpfWOs06pyRLKA78I6n9
gVhntPasPe+C8emr8jJHavj/ADMr5w1wRR+pmy6nXEs9hm7DifswewHz+az9HL3Nh1OsHufXhsYi
J/POP0BWzxPxKII/qrSft9Sm+za2PrywfJUpwvoo0LRY63R0x+KVw8uP/rt+StFY3ER6OfPmyWwX
tmnveY1H2iPX2j0TJ9kx7d1nwuZcR8W67S1+evE4wRxv2xs5YPMHg9e+fkr2vFI3Li4nEvyrzSkx
2793TVlR+jWbFzSa09uLlTvYHPZjsVvq0Ttz2rNbTWfR6RYWUQIiwgyofij+Azfjj/zaphQ/FH8B
m/HH/m1BMIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiD
Hha9quLVaWDe+MSMLdzDhwz5B91sZA7leQ9p7EImNxO4ct4y061osENd+rWbcMzjiGbrgN85891o
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

--_010_BN7PR07MB509023B14AD3F10E1A15BB22F4C30BN7PR07MB5090namp_
Content-Type: image/gif; name="image002.gif"
Content-Description: image002.gif
Content-Disposition: inline; filename="image002.gif"; size=336;
	creation-date="Wed, 14 Nov 2018 10:55:25 GMT";
	modification-date="Wed, 14 Nov 2018 10:55:25 GMT"
Content-ID: <image002.gif@01D47C36.87535290>
Content-Transfer-Encoding: base64

R0lGODlhFwAXAHcAACH/C01TT0ZGSUNFOS4wGAAAAAxtc09QTVNPRkZJQ0U5LjAgJPn1cgAsAAAA
ABcAFwCEZmZmcXFx////YGBgZGRkW1xcbm5uXV1dtLKzurq6+Pf3YmJi4ODh0NDQe3t7/Pz8xsXG
vLu8t7e3dnZ2dHR07+/vwsHCs7GygoKCY2NjWFhY8fHy2NjYq6qrnZ2eampqBa2gE4xkaZ6OAaxs
CxDLQriAEdDsMhjTpLojHGBAsVQUCsgAeKMRPgyBVNBYtoK0g0f64DQ6VhbWVUBIIYXBgjZmEcpS
SYEwY+LggsRB2B5KGBVSGwwMCWErfQMNU4xVdi0DEAoPXEgRe1dNbgEGEVIWPAZ1YppuGhdxGjJs
pSx4enytK6+YrHdmebWPZLiwOH2zuJexd6i5xE4UGBgUo0A/NBkDAxlCNSIn2dkOIQA7

--_010_BN7PR07MB509023B14AD3F10E1A15BB22F4C30BN7PR07MB5090namp_
Content-Type: image/gif; name="image003.gif"
Content-Description: image003.gif
Content-Disposition: inline; filename="image003.gif"; size=452;
	creation-date="Wed, 14 Nov 2018 10:55:26 GMT";
	modification-date="Wed, 14 Nov 2018 10:55:26 GMT"
Content-ID: <image003.gif@01D47C36.87535290>
Content-Transfer-Encoding: base64

R0lGODlhFwAXAHcAACH/C01TT0ZGSUNFOS4wGAAAAAxtc09QTVNPRkZJQ0U5LjAqxCwcbAAsAAAA
ABcAFwCFZmZmcXFx////ZGRkXl5eYmJiYGBgbm5vaWpr9ff4e3t74OPlzM/Rlpqca21uZmdo+/z8
+fr77vDx6eztztLVxcrNxMjJwsXHt7u9p62vlJaYjpGThIeJd3l6V1dX8fP07vLz5Obn1drcvMDC
naKklp2fj5SWjo+QiIuMfH+AAQIDAQIDAQIDAQIDAQIDAQIDAQIDAQIDAQIDAQIDAQIDAQIDAQID
AQIDAQIDAQIDAQIDAQIDAQIDAQIDAQIDAQIDBsFARWBILBqPigNgyWw6n4fAc0odUq9NKxYwKEy1
y8KgOSA4AgZC4cEED1IIL7eQmXwup9JjDAATKAwIBGUNAoaGFQ58fhYCCxoIHheHAhAkcn1SSwYm
CYYTFiGUIHFtmgAGGJ6UlAt7pkwEGxGslCMEWacABBmrtSi4sLGFtQIVBk5gqB4cIqwLB5hLWgMI
HA0YEpQUaE/UABsMCRAREgwaA8jeugYGDh0dB2l8609dYlvKW/X7VUr9Uw4IOUKQoIIgADs=

--_010_BN7PR07MB509023B14AD3F10E1A15BB22F4C30BN7PR07MB5090namp_
Content-Type: image/gif; name="image004.gif"
Content-Description: image004.gif
Content-Disposition: inline; filename="image004.gif"; size=504;
	creation-date="Wed, 14 Nov 2018 10:55:27 GMT";
	modification-date="Wed, 14 Nov 2018 10:55:27 GMT"
Content-ID: <image004.gif@01D47C36.87535290>
Content-Transfer-Encoding: base64

R0lGODlhFwAXAHcAACH/C01TT0ZGSUNFOS4wGAAAAAxtc09QTVNPRkZJQ0U5LjAoKiJ9QAAsAAAA
ABcAFwCFZmZmcXFx////X19fY2NjXV1db29vYWFh+/v78vLy29vb2trae3t7o6OjhISEgYGBwsLC
bm5udnZ2+Pj4aWlpWlpa9PT07+/vlpaW5eXl4ODgzMzMvLy8p6enn5+fmpqajY2N1NTUzc3Nx8fH
tra2sLCwnJyclZWVAQIDAQIDAQIDAQIDAQIDAQIDAQIDAQIDAQIDAQIDAQIDAQIDAQIDAQIDAQID
AQIDAQIDAQIDAQIDAQIDAQIDAQIDAQIDAQIDBvVARmBILBqPjAhgSSAsn9DoMhJYDiKRgXS7HAIG
mMvFpOVGhwSDRSCYSA5mKNowYSPe8af30LBMOmV5AF4AFQYGFVYFBU2Li05dVQAgGBggBBQnHx8S
FB4cHB4GcINVBBpsGgN0bCQhbGwZeF4ECmwLqwl2sLAjWrS2ArgGurElIrAJBgTAt7lsFwEVBRt2
DAfNws8CGwWFHbAOA9nDxRDeBQ3h46bB5WznAOnr5Nvx82zi9cTw6Or57ADUYqNg1RoB9/4J0Gdq
AQIE5R4mfIiA4RIGDx4wAEAB4wMJTphlfEBhkBIAB1KSUglJoMopQo7IlMkgCAA7

--_010_BN7PR07MB509023B14AD3F10E1A15BB22F4C30BN7PR07MB5090namp_
Content-Type: image/jpeg; name="image008.jpg"
Content-Description: image008.jpg
Content-Disposition: inline; filename="image008.jpg"; size=888;
	creation-date="Wed, 14 Nov 2018 10:55:27 GMT";
	modification-date="Wed, 14 Nov 2018 10:55:27 GMT"
Content-ID: <image008.jpg@01D47C36.A5182C10>
Content-Transfer-Encoding: base64

/9j/4AAQSkZJRgABAQEAkACQAAD/2wBDAAgGBgcGBQgHBwcJCQgKDBQNDAsLDBkSEw8UHRofHh0a
HBwgJC4nICIsIxwcKDcpLDAxNDQ0Hyc5PTgyPC4zNDL/wAALCAAmACYBAREA/8QAGgAAAgMBAQAA
AAAAAAAAAAAAAwcCBAUGAf/EAC4QAAAFAgMHAQkAAAAAAAAAAAABAgMEBREGEhMUFiEiMTNBMgc1
QlFSYXFzsf/aAAgBAQAAPwDJccXqHzGIm4sviMdZSsA1yqREyTWiOhZXSTnUyGDV4EijVNyA+4Sn
G+JmnoKzK18eYwJzuKFulQZM2oR9CMt5CXSz5SvYvuG1jaRWIlBjJoyXCd5SVppuZFYKGeua5NWu
oZ9qP1Zy4gTPkRc7ih0mDMTnh6YpnZie2pZJve2UM7FOKN3KazL2bW1DIst7WCbrlUVWqw9UFNk3
qFbIXgU2fIi53FAsH3pD/aQZvtPI924f5T/AqwRnyJuMHqHzEPEtKQtC0rsojzJP5GLcyo1Kospb
mTFvNp9KVH0FPQP6gVlg7nzEP//Z

--_010_BN7PR07MB509023B14AD3F10E1A15BB22F4C30BN7PR07MB5090namp_
Content-Type: image/jpeg; name="image009.jpg"
Content-Description: image009.jpg
Content-Disposition: inline; filename="image009.jpg"; size=864;
	creation-date="Wed, 14 Nov 2018 10:55:28 GMT";
	modification-date="Wed, 14 Nov 2018 10:55:28 GMT"
Content-ID: <image009.jpg@01D47C36.A5182C10>
Content-Transfer-Encoding: base64

/9j/4AAQSkZJRgABAQEAkACQAAD/2wBDAAgGBgcGBQgHBwcJCQgKDBQNDAsLDBkSEw8UHRofHh0a
HBwgJC4nICIsIxwcKDcpLDAxNDQ0Hyc5PTgyPC4zNDL/wAALCAAmACYBAREA/8QAGgAAAgIDAAAA
AAAAAAAAAAAAAgYAAwQFB//EACkQAAEDAgQGAQUAAAAAAAAAAAEAAgMEBQYREhMhIjFBUnEHFTIz
UWH/2gAIAQEAAD8A1Mkj9w8xQ7j/ACU3XDq5Tcd5K2F7+PMVVKcnn2mq44Fq222nuNqJq4ZGantH
3ArcYHwTT19LJWXinfq1aWwv4ZLHxxhe0YfpRPSuc2aZ2TI+wSPD3QSjN7l2fAF+huVjjp3OjZPD
ylgPE/3JOAAb0AHpca+SbxFcr3HSQOD46UcXD990oQ90Mn5D7TZh3F1vsQ1/SNVRlkZQ7qsi9fJV
xuMLoKKEUrHDIuzzKSSSXFziXOccyT1JVkPdHJAdw8wQ7B8lNg+SmwfJWwwHM8wX/9k=

--_010_BN7PR07MB509023B14AD3F10E1A15BB22F4C30BN7PR07MB5090namp_
Content-Type: image/jpeg; name="image010.jpg"
Content-Description: image010.jpg
Content-Disposition: inline; filename="image010.jpg"; size=648;
	creation-date="Wed, 14 Nov 2018 10:55:28 GMT";
	modification-date="Wed, 14 Nov 2018 10:55:28 GMT"
Content-ID: <image010.jpg@01D47C36.A5182C10>
Content-Transfer-Encoding: base64

/9j/4AAQSkZJRgABAQEAkACQAAD/2wBDAAgGBgcGBQgHBwcJCQgKDBQNDAsLDBkSEw8UHRofHh0a
HBwgJC4nICIsIxwcKDcpLDAxNDQ0Hyc5PTgyPC4zNDL/wAALCAAmACYBAREA/8QAGwAAAgMAAwAA
AAAAAAAAAAAAAwUCBAYAAQf/xAAvEAABAwIDBAgHAAAAAAAAAAABAgMEAAUGETEHEhMhFBciNkFR
UnMWJTIzNWJj/9oACAEBAAA/AA2m0zr9c+hw/ryzUo6JFTvtjuGHZaY80g74zQtOiqVcRfqrnEX6
qKytfPtGnWE5tzg35TlqY6Q6U5ONeaas4uk3q83qKxPh8BxQyYZHjSt7C17juttOQV77hySAKNLw
bfoMYyHoZLYGat3mRShjVVa/ZscsXu+1TvGBPWLYuehrT4wxB8OWjpbbKXXyrdQD4Z0HB2I14otL
jklkIcSd1YGhFeSXqOiJiS4sNp7CXTkB4U/2bd73fap3jAHrFsXLU1b2qj5Cyf6ChbKPxUo/vWHx
J3suXuGqMd+Xb5SnokhTTpG6VJ8q7fn3CVKalPy1rfb+2snmmpzbjc7k1w5s1byAcwFGowrjcra2
tEKYtlJ5qCTrUQH5D7j7ru+6vmpR1Nf/2Q==

--_010_BN7PR07MB509023B14AD3F10E1A15BB22F4C30BN7PR07MB5090namp_--
