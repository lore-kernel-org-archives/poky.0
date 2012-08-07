Return-Path: <cristian.iorga@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53249E002A6;
	Tue,  7 Aug 2012 00:49:20 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 07 Aug 2012 00:49:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; 
	d="scan'208,217";a="194074711"
Received: from irsmsx101.ger.corp.intel.com ([163.33.3.153])
	by fmsmga001.fm.intel.com with ESMTP; 07 Aug 2012 00:49:19 -0700
Received: from irsmsx152.ger.corp.intel.com (163.33.192.66) by
	IRSMSX101.ger.corp.intel.com (163.33.3.153) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Tue, 7 Aug 2012 08:48:54 +0100
Received: from irsmsx102.ger.corp.intel.com ([169.254.2.176]) by
	IRSMSX152.ger.corp.intel.com ([169.254.6.134]) with mapi id
	14.01.0355.002; Tue, 7 Aug 2012 08:48:53 +0100
From: "Iorga, Cristian" <cristian.iorga@intel.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: Developing hob/bitbake using PyDev
Thread-Index: Ac10cRbq1J10KgUFRY27x8mibuQJZw==
Date: Tue, 7 Aug 2012 07:48:53 +0000
Message-ID: <969F26A8BAB325438E7EB80D3C3134FB161794D1@IRSMSX102.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.181]
MIME-Version: 1.0
Subject: Developing hob/bitbake using PyDev
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
X-List-Received-Date: Tue, 07 Aug 2012 07:49:20 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_969F26A8BAB325438E7EB80D3C3134FB161794D1IRSMSX102gercor_"

--_000_969F26A8BAB325438E7EB80D3C3134FB161794D1IRSMSX102gercor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

Ha anyone use Pydev in order to develop hob or bitbake?
What I am basically interested in is:

1.      Doing remote debugging of hob.

2.      A feature similar to a "Fix and Continue" (change the code, and re-=
run it without re-running the entire hob from the beginning)

Now. I did a small investigation with help from Valentin Popa and Bogdan Ma=
rinescu.
Remote debugging seems possible, but we did not set it up (yet).
"Fix and Continue" we don't know if it exists in Python world, because of t=
he way Pyhon (interpreter + base language works).
I.e.: Python: from module import spam
spam will be initialized after this one.
How Python will handle a reload or something similar in this case?

If anyone have any insights into this issues, please help me.

P.S.: Doing remote debugging of hob seems to need changes in hob/bitbake so=
urces, which I guess would not be acceptable to be integrated into main bra=
nch, isn't it?

Thanks,
Cristian Iorga

--_000_969F26A8BAB325438E7EB80D3C3134FB161794D1IRSMSX102gercor_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
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
	{margin:0in;
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
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:753169361;
	mso-list-type:hybrid;
	mso-list-template-ids:-862569972 67698703 67698713 67698715 67698703 67698=
713 67698715 67698703 67698713 67698715;}
@list l0:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Ha anyone use Pydev in order to develop hob or bitba=
ke?<o:p></o:p></p>
<p class=3D"MsoNormal">What I am basically interested in is:<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">1.<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]>Doing remote debugging of hob.<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">2.<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]>A feature similar to a &#8220;Fix and Continue&#822=
1; (change the code, and re-run it without re-running the entire hob from t=
he beginning)<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Now. I did a small investigation with help from Vale=
ntin Popa and Bogdan Marinescu.<o:p></o:p></p>
<p class=3D"MsoNormal">Remote debugging seems possible, but we did not set =
it up (yet).<o:p></o:p></p>
<p class=3D"MsoNormal">&#8220;Fix and Continue&#8221; we don&#8217;t know i=
f it exists in Python world, because of the way Pyhon (interpreter &#43; ba=
se language works).<o:p></o:p></p>
<p class=3D"MsoNormal">I.e.: Python: from module import spam<o:p></o:p></p>
<p class=3D"MsoNormal">spam will be initialized after this one.<o:p></o:p><=
/p>
<p class=3D"MsoNormal">How Python will handle a reload or something similar=
 in this case?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">If anyone have any insights into this issues, please=
 help me.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">P.S.: Doing remote debugging of hob seems to need ch=
anges in hob/bitbake sources, which I guess would not be acceptable to be i=
ntegrated into main branch, isn&#8217;t it?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Cristian Iorga<o:p></o:p></p>
</div>
</body>
</html>

--_000_969F26A8BAB325438E7EB80D3C3134FB161794D1IRSMSX102gercor_--
