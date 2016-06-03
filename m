Return-Path: <Teemu.Keskinarkaus@Maximatecc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 148FDE00DA8; Fri,  3 Jun 2016 00:04:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mx0a-001ea001.pphosted.com (mx0a-001ea001.pphosted.com
	[148.163.157.126])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3338BE00DA8
	for <poky@yoctoproject.org>; Fri,  3 Jun 2016 00:04:35 -0700 (PDT)
Received: from pps.filterd (m0088399.ppops.net [127.0.0.1])
	by mx0a-001ea001.pphosted.com (8.16.0.11/8.16.0.11) with SMTP id
	u5370Bdj012854; Fri, 3 Jun 2016 02:04:32 -0500
Received: from ammail.actuant.com ([207.250.73.122])
	by mx0a-001ea001.pphosted.com with ESMTP id 2376b46s3d-1
	(version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
	Fri, 03 Jun 2016 02:04:32 -0500
Received: from AMDTCEX15.actuant.pri ([169.254.7.160]) by
	AMDTCEX14.actuant.pri ([169.254.6.81]) with mapi id 14.03.0174.001;
	Fri, 3 Jun 2016 02:04:31 -0500
From: "Keskinarkaus, Teemu" <Teemu.Keskinarkaus@Maximatecc.com>
To: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
Thread-Topic: Recompiles in Yocto/Poky
Thread-Index: AdG8hSPPyTeG7pUNTe+AardJiC/kYAA3u6FAAAB7LzA=
Date: Fri, 3 Jun 2016 07:04:29 +0000
Message-ID: <83DB4EC8FADD45428E3CC4E3664761FD40042D54@AMDTCEX15.actuant.pri>
References: <83DB4EC8FADD45428E3CC4E3664761FD4004044C@AMDTCEX15.actuant.pri>
	<fff4b7c1c35245379ab4cc09fd9fff08@XBOX02.axis.com>
In-Reply-To: <fff4b7c1c35245379ab4cc09fd9fff08@XBOX02.axis.com>
Accept-Language: fi-FI, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.0.10.116]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:, ,
	definitions=2016-06-03_04:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
	priorityscore=1501
	suspectscore=0 malwarescore=0 phishscore=0 bulkscore=0 spamscore=0
	clxscore=1011 impostorscore=0 lowpriorityscore=0 adultscore=0
	classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1604210000
	definitions=main-1606030078
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
X-List-Received-Date: Fri, 03 Jun 2016 07:04:39 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_83DB4EC8FADD45428E3CC4E3664761FD40042D54AMDTCEX15actuan_"

--_000_83DB4EC8FADD45428E3CC4E3664761FD40042D54AMDTCEX15actuan_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Thanks for the clarification. Is there an option that can disable this feat=
ure or is it 'hardcoded' into the system? Not so much of a critical issue b=
ut annoyance.

Teemu Keskinarkaus
Software system engineer
maximatecc
making machines smart, safe and productive

From: Peter Kjellerstedt [mailto:peter.kjellerstedt@axis.com]
Sent: 3. kes=E4kuuta 2016 10:00
To: Keskinarkaus, Teemu
Cc: poky@yoctoproject.org
Subject: RE: Recompiles in Yocto/Poky

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

--_000_83DB4EC8FADD45428E3CC4E3664761FD40042D54AMDTCEX15actuan_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered medium)">
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
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:"Century Gothic";
	panose-1:2 11 5 2 2 2 2 2 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
p.MsoAcetate, li.MsoAcetate, div.MsoAcetate
	{mso-style-priority:99;
	mso-style-link:"Balloon Text Char";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:8.0pt;
	font-family:"Tahoma","sans-serif";}
span.EmailStyle17
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.EmailStyle18
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#943634;
	font-weight:normal;
	font-style:normal;
	text-decoration:none none;}
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";
	font-family:"Tahoma","sans-serif";}
span.EmailStyle21
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#44546A;}
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
<body lang=3D"FI" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#44546A">Thanks =
for the clarification. Is there an option that can disable this feature or =
is it &#8216;hardcoded&#8217; into the system? Not so much of a critical is=
sue but annoyance.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#44546A"><o:p>&n=
bsp;</o:p></span></p>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt;line-height:9.0pt;mso-=
line-height-rule:exactly">
<b><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Century=
 Gothic&quot;,&quot;sans-serif&quot;;color:#1F497D">Teemu Keskinarkaus<br>
</span></b><span lang=3D"EN-US" style=3D"font-size:7.5pt;font-family:&quot;=
Century Gothic&quot;,&quot;sans-serif&quot;;color:#1F497D">Software system =
engineer</span><b><span lang=3D"EN-GB" style=3D"font-size:12.0pt;font-famil=
y:&quot;Century Gothic&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p=
></span></b></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-GB" style=3D"font-size:12.0pt;fo=
nt-family:&quot;Century Gothic&quot;,&quot;sans-serif&quot;;color:black">ma=
ximatecc<o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"font-size:7.5pt;font-f=
amily:&quot;Century Gothic&quot;,&quot;sans-serif&quot;;color:black">making=
 machines smart, safe and productive</span><span lang=3D"EN-US" style=3D"fo=
nt-size:7.5pt;color:#1F497D"><o:p></o:p></span></p>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#44546A"><o:p>&n=
bsp;</o:p></span></p>
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:10.0pt;fo=
nt-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span =
lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Tahoma&quot;,&qu=
ot;sans-serif&quot;"> Peter Kjellerstedt [mailto:peter.kjellerstedt@axis.co=
m]
<br>
<b>Sent:</b> 3. kes=E4kuuta 2016 10:00<br>
<b>To:</b> Keskinarkaus, Teemu<br>
<b>Cc:</b> poky@yoctoproject.org<br>
<b>Subject:</b> RE: Recompiles in Yocto/Poky<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#943634">This is=
 a feature introduced to complement the main use of externalsrc, which is t=
ogether with devtool. When you use &#8220;devtool modify -x &lt;recipe&gt;&=
#8221;, it fetches the sources as specified in the recipe
 and makes them available locally. At the same time it sets up a bbappend i=
n the workspace layer which uses externalsrc to use those sources when buil=
ding the recipe. This is intended to make it easy to use BitBake to actuall=
y work on and develop the sources.
 However, for this to work in practice, BitBake must rebuild the package if=
 there are any changes in the sources, but since BitBake normally only look=
s at the meta data to determine if a recipe task needs to run, there is not=
hing telling it that the sources
 have changed. Therefore changes were made so that code specified using ext=
ernalsrc is always rebuilt.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#943634"><o:p>&n=
bsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#943634">//Peter=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#943634"><o:p>&n=
bsp;</o:p></span></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0cm 0cm 0cm =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">From:</span></b><span lang=
=3D"EN-US"> poky-bounces@yoctoproject.org [mailto:poky-bounces@yoctoproject=
.org]
<b>On Behalf Of </b>Keskinarkaus, Teemu<br>
<b>Sent:</b> den 2 juni 2016 06:28<br>
<b>To:</b> poky@yoctoproject.org<br>
<b>Subject:</b> [poky] Recompiles in Yocto/Poky<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I have Yocto based system for i=
MX6. First Yocto 1.7 was used and system implemented with that. Later Yocto=
 (and meta-layers) were updated to 2.1.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">We have several libraries/appli=
cations/modules that use externalsrc ie. sources sources are not fetched fr=
om git repository, but they are locally available.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I noticed with Yocto 2.1 that i=
f I recreate image without changing anything, all those externalsrc recipes=
 get recompiled/created. This didn&#8217;t happened with Yocto 1.7. I check=
ed the recipes and they are the same.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Why are those recipes that use =
externalsrc &#8211; feature recompiled every time? In Yocto 1.7 if you try =
to re-create image without changing anything, nothing happen, but in Yocto =
2.1 you do the same all those externalsrc
 recipes get recompiled and image file also recreated.<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt;line-height:9.0pt;mso-=
line-height-rule:exactly">
<b><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Century=
 Gothic&quot;,&quot;sans-serif&quot;">Teemu Keskinarkaus<br>
</span></b><span lang=3D"EN-US" style=3D"font-size:7.5pt;font-family:&quot;=
Century Gothic&quot;,&quot;sans-serif&quot;">Software system engineer</span=
><b><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Centur=
y Gothic&quot;,&quot;sans-serif&quot;"><br>
</span></b><span lang=3D"EN-US" style=3D"font-size:7.5pt;font-family:&quot;=
Century Gothic&quot;,&quot;sans-serif&quot;">Cell: &#43;358&nbsp;400&nbsp;3=
30047</span><b><span lang=3D"EN-US" style=3D"font-size:6.0pt;font-family:&q=
uot;Century Gothic&quot;,&quot;sans-serif&quot;"><br>
</span></b><span lang=3D"EN-US" style=3D"font-size:7.5pt;font-family:&quot;=
Century Gothic&quot;,&quot;sans-serif&quot;">Fax: &#43;358&nbsp;207 669199<=
/span><b><span lang=3D"EN-US" style=3D"font-size:6.0pt;font-family:&quot;Ce=
ntury Gothic&quot;,&quot;sans-serif&quot;"><br>
</span></b><span lang=3D"EN-GB" style=3D"font-size:10.0pt;font-family:&quot=
;Century Gothic&quot;,&quot;sans-serif&quot;"><a href=3D"http://www.maximat=
ecc.com/"><span style=3D"font-size:7.5pt;color:#0070C0">www.maximatecc.com<=
/span></a></span><span lang=3D"EN-GB" style=3D"font-size:7.5pt;font-family:=
&quot;Century Gothic&quot;,&quot;sans-serif&quot;;color:#0070C0">
</span><b><span lang=3D"EN-GB" style=3D"font-size:12.0pt;font-family:&quot;=
Century Gothic&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span>=
</b></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-GB" style=3D"font-size:12.0pt;fo=
nt-family:&quot;Century Gothic&quot;,&quot;sans-serif&quot;;color:black">ma=
ximatecc<o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"font-size:7.5pt;font-f=
amily:&quot;Century Gothic&quot;,&quot;sans-serif&quot;;color:black">making=
 machines smart, safe and productive</span><span lang=3D"EN-US"><o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Ti=
mes New Roman&quot;,&quot;serif&quot;"><o:p>&nbsp;</o:p></span></p>
<div class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span=
 style=3D"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;se=
rif&quot;">
<hr size=3D"2" width=3D"100%" align=3D"center">
</span></div>
<p class=3D"MsoNormal"><span style=3D"font-size:7.5pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:black"><br>
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
Thank you.</span><span style=3D"font-size:12.0pt;font-family:&quot;Times Ne=
w Roman&quot;,&quot;serif&quot;"><o:p></o:p></span></p>
</div>
</div>
<br>
<hr>
<font face=3D"Arial" color=3D"Black" size=3D"1"><br>
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
Thank you.<br>
</font>
</body>
</html>

--_000_83DB4EC8FADD45428E3CC4E3664761FD40042D54AMDTCEX15actuan_--
