Return-Path: <vik@keba.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2C817E00971; Wed, 24 Oct 2018 05:15:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [194.116.158.91 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 64 seconds by postgrey-1.32 at yocto-www;
	Wed, 24 Oct 2018 05:15:27 PDT
Received: from mx02.keba.com (mx02.keba.com [194.116.158.91])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38EECE00901
	for <poky@yoctoproject.org>; Wed, 24 Oct 2018 05:15:27 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.54,420,1534802400"; d="scan'208,217";a="6083963"
Received: from keb10314.keba.co.at ([10.160.100.13])
	by KEB10318.keba.co.at with ESMTP; 24 Oct 2018 14:07:09 +0200
Received: from KEB10315.keba.co.at (10.160.100.14) by KEB10314.keba.co.at
	(10.160.100.13) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
	Wed, 24 Oct 2018 14:14:21 +0200
Received: from KEB10315.keba.co.at ([fe80::59d0:42ee:9840:20c7]) by
	KEB10315.keba.co.at ([fe80::59d0:42ee:9840:20c7%12]) with mapi id
	15.00.1395.000; Wed, 24 Oct 2018 14:14:21 +0200
From: vik Vik Sinisa <vik@keba.com>
To: "raj.khem@gmail.com" <raj.khem@gmail.com>
Thread-Topic: [poky] binutils: problem with binutils-cross-canadian-arm
Thread-Index: AdRrkpWf2ZaMSJblRFi2f81hr32t0A==
Date: Wed, 24 Oct 2018 12:14:21 +0000
Message-ID: <064df19548fc46ed8a0c029c5738ba27@KEB10315.keba.co.at>
Accept-Language: en-US, sr-Latn-CS, de-AT
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.160.100.10]
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: binutils: problem with binutils-cross-canadian-arm
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
X-List-Received-Date: Wed, 24 Oct 2018 12:15:29 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_064df19548fc46ed8a0c029c5738ba27KEB10315kebacoat_"

--_000_064df19548fc46ed8a0c029c5738ba27KEB10315kebacoat_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I created mingw32 based SDK with using latest fsl community Yocto sumo bran=
ch for custom iMX6 platform that we use.
I have problem with binutils package in SDK, binutils tools doesn't work co=
rrectly (you can execute command using windows cmd but there is no error ou=
tput and command just doesn't do anything).
Our distro configuration includes security_flags.inc file (now It's added b=
y default to poky.conf on master).
After some investigation I notice that if I change GCCPIE ?=3D "--enable-de=
fault-pie" to GCCPIE ?=3D ""  in security_flags.inc and rebuild mingw32 SDK=
 binutils tools are working as expected.
Tried to add sdkmingw32 override for GCCPIE flag in security_flags.inc (GCC=
PIE_sdkmingw32 =3D "") as Linux SDK is working correctly and we have only i=
ssue with mingw32 SDK but that didn't helped.

I was able to reproduce this issue with community distro using sumo branch:
MACHINE=3Dimx6qdlsabresd DISTRO=3Dpoky-lsb
Build line:
SDKMACHINE=3Dx86_64-mingw32 bitbake meta-toolchain -c do_populate_sdk

Do you have idea what could be an issue here?

Sinisa

--_000_064df19548fc46ed8a0c029c5738ba27KEB10315kebacoat_
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
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:70.85pt 70.85pt 56.7pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I created mingw32 based SDK with using latest fsl co=
mmunity Yocto sumo branch for custom iMX6 platform that we use.<o:p></o:p><=
/p>
<p class=3D"MsoNormal">I have problem with binutils package in SDK, binutil=
s tools doesn&#8217;t work correctly (you can execute command using windows=
 cmd but there is no error output and command just doesn&#8217;t do anythin=
g).<o:p></o:p></p>
<p class=3D"MsoNormal">Our distro configuration includes security_flags.inc=
 file (now It&#8217;s added by default to poky.conf on master).<o:p></o:p><=
/p>
<p class=3D"MsoNormal">After some investigation I notice that if I change G=
CCPIE ?=3D &quot;--enable-default-pie&quot; to GCCPIE ?=3D &quot;&quot;&nbs=
p; in security_flags.inc and rebuild mingw32 SDK binutils tools are working=
 as expected.<o:p></o:p></p>
<p class=3D"MsoNormal">Tried to add sdkmingw32 override for GCCPIE flag in =
security_flags.inc (GCCPIE_sdkmingw32 =3D &quot;&quot;) as Linux SDK is wor=
king correctly and we have only issue with mingw32 SDK but that didn&#8217;=
t helped.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I was able to reproduce this issue with community di=
stro using sumo branch:<o:p></o:p></p>
<p class=3D"MsoNormal">MACHINE=3Dimx6qdlsabresd DISTRO=3Dpoky-lsb<o:p></o:p=
></p>
<p class=3D"MsoNormal">Build line:<o:p></o:p></p>
<p class=3D"MsoNormal">SDKMACHINE=3Dx86_64-mingw32 bitbake meta-toolchain -=
c do_populate_sdk<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Do you have idea what could be an issue here?<o:p></=
o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Sinisa<o:p></o:p></p>
</div>
</body>
</html>

--_000_064df19548fc46ed8a0c029c5738ba27KEB10315kebacoat_--
