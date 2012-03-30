Return-Path: <bryan.odonoghue@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1FA5DE00723
	for <poky@yoctoproject.org>; Fri, 30 Mar 2012 06:25:12 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 30 Mar 2012 06:25:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; 
	d="scan'208,217";a="123609384"
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
	by orsmga001.jf.intel.com with ESMTP; 30 Mar 2012 06:25:10 -0700
Received: from irsmsx102.ger.corp.intel.com ([169.254.2.39]) by
	IRSMSX103.ger.corp.intel.com ([169.254.3.225]) with mapi id
	14.01.0355.002; Fri, 30 Mar 2012 14:24:56 +0100
From: "O'donoghue, Bryan" <bryan.odonoghue@intel.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: udev configuration
Thread-Index: Ac0OeH9FqDmK4UGBT6akTx89WIKAeA==
Date: Fri, 30 Mar 2012 13:24:56 +0000
Message-ID: <B80010913FB1F346A630B7F2E18A60C015768050@IRSMSX102.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.212.78]
MIME-Version: 1.0
Subject: udev configuration
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 30 Mar 2012 13:25:12 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_B80010913FB1F346A630B7F2E18A60C015768050IRSMSX102gercor_"

--_000_B80010913FB1F346A630B7F2E18A60C015768050IRSMSX102gercor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Greetings list.

I'm booting a yocto image a "core-image-minimal" and I've noticed that not =
all of the serial ports have entries in /dev. More generally for hardware c=
oming down the line, I'd like to know how/where the configuration for udev =
is supposed to go in a yocto BSP.

I can't see anything obvious in the meta-intel BSPs but, there must be some=
 way (probably very obvious way) of setting up the udev script to do what y=
ou'd typically want to do ?
-------------------------------------------------------------
Intel Ireland Limited (Branch)
Collinstown Industrial Park, Leixlip, County Kildare, Ireland
Registered Number: E902934

This e-mail and any attachments may contain confidential material for
the sole use of the intended recipient(s). Any review or distribution
by others is strictly prohibited. If you are not the intended
recipient, please contact the sender and delete all copies.

--_000_B80010913FB1F346A630B7F2E18A60C015768050IRSMSX102gercor_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii">
<meta name=3D"Generator" content=3D"Microsoft Word 12 (filtered medium)">
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
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-IE" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Greetings list.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I'm booting a yocto image a &quot;core-image-minimal=
&quot; and I've noticed that not all of the serial ports have entries in /d=
ev. More generally for hardware coming down the line, I'd like to know how/=
where the configuration for udev is supposed
 to go in a yocto BSP.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I can't see anything obvious in the meta-intel BSPs =
but, there must be some way (probably very obvious way) of setting up the u=
dev script to do what you'd typically want to do ?<o:p></o:p></p>
</div>
<font face=3D"monospace">--------------------------------------------------=
-----------<br>
Intel Ireland Limited (Branch)<br>
Collinstown Industrial Park, Leixlip, County Kildare, Ireland<br>
Registered Number: E902934<br>
<br>
This e-mail and any attachments may contain confidential material for<br>
the sole use of the intended recipient(s). Any review or distribution<br>
by others is strictly prohibited. If you are not the intended<br>
recipient, please contact the sender and delete all copies.</font></body>
</html>

--_000_B80010913FB1F346A630B7F2E18A60C015768050IRSMSX102gercor_--
