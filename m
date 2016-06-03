Return-Path: <peter.kjellerstedt@axis.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 56D97E00DAD; Fri,  3 Jun 2016 00:06:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.60.68.10 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 367 seconds by postgrey-1.32 at yocto-www;
	Fri, 03 Jun 2016 00:06:26 PDT
Received: from bes.se.axis.com (bes.se.axis.com [195.60.68.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE65FE00927
	for <poky@yoctoproject.org>; Fri,  3 Jun 2016 00:06:26 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by bes.se.axis.com (Postfix) with ESMTP id 574282E1A6;
	Fri,  3 Jun 2016 09:00:17 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at bes.se.axis.com
Received: from bes.se.axis.com ([IPv6:::ffff:127.0.0.1])
	by localhost (bes.se.axis.com [::ffff:127.0.0.1]) (amavisd-new,
	port 10024)
	with LMTP id vx-M09wyI+o7; Fri,  3 Jun 2016 09:00:15 +0200 (CEST)
Received: from boulder.se.axis.com (boulder.se.axis.com [10.0.2.104])
	by bes.se.axis.com (Postfix) with ESMTP id 7DB0E2E198;
	Fri,  3 Jun 2016 09:00:15 +0200 (CEST)
Received: from boulder.se.axis.com (localhost [127.0.0.1])
	by postfix.imss71 (Postfix) with ESMTP id 458931938;
	Fri,  3 Jun 2016 09:00:15 +0200 (CEST)
Received: from thoth.se.axis.com (thoth.se.axis.com [10.0.2.173])
	by boulder.se.axis.com (Postfix) with ESMTP id 3AB151558;
	Fri,  3 Jun 2016 09:00:15 +0200 (CEST)
Received: from XBOX02.axis.com (xbox02.axis.com [10.0.5.16])
	by thoth.se.axis.com (Postfix) with ESMTP id 38589111D;
	Fri,  3 Jun 2016 09:00:15 +0200 (CEST)
Received: from xbox11.axis.com (10.0.5.25) by XBOX02.axis.com (10.0.5.16) with
	Microsoft SMTP Server (TLS) id 15.0.1156.6;
	Fri, 3 Jun 2016 09:00:15 +0200
Received: from XBOX02.axis.com (10.0.5.16) by xbox11.axis.com (10.0.5.25) with
	Microsoft SMTP Server (TLS) id 15.0.1156.6;
	Fri, 3 Jun 2016 09:00:14 +0200
Received: from XBOX02.axis.com ([fe80::d00f:cb52:1b56:20d]) by XBOX02.axis.com
	([fe80::d00f:cb52:1b56:20d%21]) with mapi id 15.00.1156.000;
	Fri, 3 Jun 2016 09:00:14 +0200
From: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
To: "Keskinarkaus, Teemu" <Teemu.Keskinarkaus@Maximatecc.com>
Thread-Topic: Recompiles in Yocto/Poky
Thread-Index: AdG8hSPPyTeG7pUNTe+AardJiC/kYAA3u6FA
Date: Fri, 3 Jun 2016 07:00:14 +0000
Message-ID: <fff4b7c1c35245379ab4cc09fd9fff08@XBOX02.axis.com>
References: <83DB4EC8FADD45428E3CC4E3664761FD4004044C@AMDTCEX15.actuant.pri>
In-Reply-To: <83DB4EC8FADD45428E3CC4E3664761FD4004044C@AMDTCEX15.actuant.pri>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.0.5.107]
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Recompiles in Yocto/Poky
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
X-List-Received-Date: Fri, 03 Jun 2016 07:06:32 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_fff4b7c1c35245379ab4cc09fd9fff08XBOX02axiscom_"

--_000_fff4b7c1c35245379ab4cc09fd9fff08XBOX02axiscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

This is a feature introduced to complement the main use of externalsrc, whi=
ch is together with devtool. When you use "devtool modify -x <recipe>", it =
fetches the sources as specified in the recipe and makes them available loc=
ally. At the same time it sets up a bbappend in the workspace layer which u=
ses externalsrc to use those sources when building the recipe. This is inte=
nded to make it easy to use BitBake to actually work on and develop the sou=
rces. However, for this to work in practice, BitBake must rebuild the packa=
ge if there are any changes in the sources, but since BitBake normally only=
 looks at the meta data to determine if a recipe task needs to run, there i=
s nothing telling it that the sources have changed. Therefore changes were =
made so that code specified using externalsrc is always rebuilt.

//Peter

From: poky-bounces@yoctoproject.org [mailto:poky-bounces@yoctoproject.org] =
On Behalf Of Keskinarkaus, Teemu
Sent: den 2 juni 2016 06:28
To: poky@yoctoproject.org
Subject: [poky] Recompiles in Yocto/Poky

Hi,

I have Yocto based system for iMX6. First Yocto 1.7 was used and system imp=
lemented with that. Later Yocto (and meta-layers) were updated to 2.1.

We have several libraries/applications/modules that use externalsrc ie. sou=
rces sources are not fetched from git repository, but they are locally avai=
lable.

I noticed with Yocto 2.1 that if I recreate image without changing anything=
, all those externalsrc recipes get recompiled/created. This didn't happene=
d with Yocto 1.7. I checked the recipes and they are the same.

Why are those recipes that use externalsrc - feature recompiled every time?=
 In Yocto 1.7 if you try to re-create image without changing anything, noth=
ing happen, but in Yocto 2.1 you do the same all those externalsrc recipes =
get recompiled and image file also recreated.

Teemu Keskinarkaus
Software system engineer
Cell: +358 400 330047
Fax: +358 207 669199
www.maximatecc.com<http://www.maximatecc.com/>
maximatecc
making machines smart, safe and productive


________________________________

Actuant Corporation Email Notice

This message is intended only for the use of the Addressee and may contain =
information that is PRIVILEGED and/or CONFIDENTIAL.
This email is intended only for the personal and confidential use of the re=
cipient(s) named above. If the reader of this email is not an intended reci=
pient, you have received this email in error and any review, dissemination,=
 distribution or copying is strictly prohibited.
If you have received this email in error, please notify the sender immediat=
ely by return mail and permanently delete the copy you received.

Thank you.

--_000_fff4b7c1c35245379ab4cc09fd9fff08XBOX02axiscom_
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
@font-face
	{font-family:"Century Gothic";
	panose-1:2 11 5 2 2 2 2 2 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
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
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:#943634;
	font-weight:normal;
	font-style:normal;
	text-decoration:none none;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 2.0cm 70.85pt 2.0cm;}
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
<p class=3D"MsoNormal"><span style=3D"color:#943634">This is a feature intr=
oduced to complement the main use of externalsrc, which is together with de=
vtool. When you use &#8220;devtool modify -x &lt;recipe&gt;&#8221;, it fetc=
hes the sources as specified in the recipe and makes them
 available locally. At the same time it sets up a bbappend in the workspace=
 layer which uses externalsrc to use those sources when building the recipe=
. This is intended to make it easy to use BitBake to actually work on and d=
evelop the sources. However, for
 this to work in practice, BitBake must rebuild the package if there are an=
y changes in the sources, but since BitBake normally only looks at the meta=
 data to determine if a recipe task needs to run, there is nothing telling =
it that the sources have changed.
 Therefore changes were made so that code specified using externalsrc is al=
ways rebuilt.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#943634"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#943634">//Peter<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"color:#943634"><o:p>&nbsp;</o:p></spa=
n></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0cm 0cm 0cm =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b>From:</b> poky-bounces@yoctoproject.org [mailto:p=
oky-bounces@yoctoproject.org]
<b>On Behalf Of </b>Keskinarkaus, Teemu<br>
<b>Sent:</b> den 2 juni 2016 06:28<br>
<b>To:</b> poky@yoctoproject.org<br>
<b>Subject:</b> [poky] Recompiles in Yocto/Poky<o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"FI">Hi,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"FI"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal">I have Yocto based system for iMX6. First Yocto 1.7 =
was used and system implemented with that. Later Yocto (and meta-layers) we=
re updated to 2.1.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">We have several libraries/applications/modules that =
use externalsrc ie. sources sources are not fetched from git repository, bu=
t they are locally available.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I noticed with Yocto 2.1 that if I recreate image wi=
thout changing anything, all those externalsrc recipes get recompiled/creat=
ed. This didn&#8217;t happened with Yocto 1.7. I checked the recipes and th=
ey are the same.
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Why are those recipes that use externalsrc &#8211; f=
eature recompiled every time? In Yocto 1.7 if you try to re-create image wi=
thout changing anything, nothing happen, but in Yocto 2.1 you do the same a=
ll those externalsrc recipes get recompiled
 and image file also recreated.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt;line-height:9.0pt;mso-=
line-height-rule:exactly">
<b><span style=3D"font-size:10.0pt;font-family:&quot;Century Gothic&quot;,s=
ans-serif;mso-fareast-language:FI">Teemu Keskinarkaus<br>
</span></b><span style=3D"font-size:7.5pt;font-family:&quot;Century Gothic&=
quot;,sans-serif;mso-fareast-language:FI">Software system engineer</span><b=
><span style=3D"font-size:10.0pt;font-family:&quot;Century Gothic&quot;,san=
s-serif;mso-fareast-language:FI"><br>
</span></b><span style=3D"font-size:7.5pt;font-family:&quot;Century Gothic&=
quot;,sans-serif;mso-fareast-language:FI">Cell: &#43;358&nbsp;400&nbsp;3300=
47</span><b><span style=3D"font-size:6.0pt;font-family:&quot;Century Gothic=
&quot;,sans-serif;mso-fareast-language:FI"><br>
</span></b><span style=3D"font-size:7.5pt;font-family:&quot;Century Gothic&=
quot;,sans-serif;mso-fareast-language:FI">Fax: &#43;358&nbsp;207 669199</sp=
an><b><span style=3D"font-size:6.0pt;font-family:&quot;Century Gothic&quot;=
,sans-serif;mso-fareast-language:FI"><br>
</span></b><span lang=3D"EN-GB" style=3D"font-size:10.0pt;font-family:&quot=
;Century Gothic&quot;,sans-serif;mso-fareast-language:FI"><a href=3D"http:/=
/www.maximatecc.com/"><span style=3D"font-size:7.5pt;color:#0070C0">www.max=
imatecc.com</span></a></span><span lang=3D"EN-GB" style=3D"font-size:7.5pt;=
font-family:&quot;Century Gothic&quot;,sans-serif;color:#0070C0;mso-fareast=
-language:FI">
</span><b><span lang=3D"EN-GB" style=3D"font-size:12.0pt;font-family:&quot;=
Century Gothic&quot;,sans-serif;color:black;mso-fareast-language:FI"><o:p><=
/o:p></span></b></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-GB" style=3D"font-size:12.0pt;fo=
nt-family:&quot;Century Gothic&quot;,sans-serif;color:black;mso-fareast-lan=
guage:FI">maximatecc<o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"font-size:7.5pt;font-f=
amily:&quot;Century Gothic&quot;,sans-serif;color:black;mso-fareast-languag=
e:FI">making machines smart, safe and productive</span><span style=3D"mso-f=
areast-language:FI"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"FI" style=3D"font-size:12.0pt;font-fam=
ily:&quot;Times New Roman&quot;,serif"><o:p>&nbsp;</o:p></span></p>
<div class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span=
 lang=3D"FI" style=3D"font-size:12.0pt;font-family:&quot;Times New Roman&qu=
ot;,serif">
<hr size=3D"2" width=3D"100%" align=3D"center">
</span></div>
<p class=3D"MsoNormal"><span lang=3D"FI" style=3D"font-size:7.5pt;font-fami=
ly:&quot;Arial&quot;,sans-serif;color:black"><br>
Actuant Corporation Email Notice<br>
<br>
This message is intended only for the use of the Addressee and may contain =
information that is PRIVILEGED and/or CONFIDENTIAL.<br>
This email is intended only for the personal and confidential use of the re=
cipient(s) named above. If the reader of this email is not an intended reci=
pient, you have received this email in error and any review, dissemination,=
 distribution or copying is strictly
 prohibited.<br>
If you have received this email in error, please notify the sender immediat=
ely by return mail and permanently delete the copy you received.<br>
<br>
Thank you.</span><span lang=3D"FI" style=3D"font-size:12.0pt;font-family:&q=
uot;Times New Roman&quot;,serif"><o:p></o:p></span></p>
</div>
</div>
</body>
</html>

--_000_fff4b7c1c35245379ab4cc09fd9fff08XBOX02axiscom_--
