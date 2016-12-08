Return-Path: <teemu.keskinarkaus@crosscontrol.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 38437E00E04; Thu,  8 Dec 2016 00:23:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [148.163.159.126 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 1252 seconds by postgrey-1.32 at yocto-www;
	Thu, 08 Dec 2016 00:23:51 PST
Received: from mx0a-001ea001.pphosted.com (mx0b-001ea001.pphosted.com
	[148.163.159.126])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F1E6E00DFF
	for <poky@yoctoproject.org>; Thu,  8 Dec 2016 00:23:51 -0800 (PST)
Received: from pps.filterd (m0088396.ppops.net [127.0.0.1])
	by mx0b-001ea001.pphosted.com (8.16.0.17/8.16.0.17) with SMTP id
	uB882wmE011912
	for <poky@yoctoproject.org>; Thu, 8 Dec 2016 02:02:58 -0600
Received: from ammail.actuant.com ([207.250.73.122])
	by mx0b-001ea001.pphosted.com with ESMTP id 2745phu7eq-1
	(version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT)
	for <poky@yoctoproject.org>; Thu, 08 Dec 2016 02:02:58 -0600
Received: from AMDRSEX04.actuant.pri (10.10.32.62) by AMDTCEX14.actuant.pri
	(10.0.11.149) with Microsoft SMTP Server (TLS) id 14.3.301.0;
	Thu, 8 Dec 2016 02:02:58 -0600
Received: from AMDTCEX14.actuant.pri ([169.254.6.81]) by AMDRSEX04.actuant.pri
	([10.10.32.62]) with mapi id 14.03.0301.000;
	Thu, 8 Dec 2016 02:02:57 -0600
From: "Keskinarkaus, Teemu" <teemu.keskinarkaus@crosscontrol.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: Enabling UTF-8 
Thread-Index: AdJRDlkJngDn5IQoRbC33SyfSSUtAg==
Date: Thu, 8 Dec 2016 08:02:57 +0000
Message-ID: <83DB4EC8FADD45428E3CC4E3664761FD4243A127@AMDTCEX14.actuant.pri>
Accept-Language: fi-FI, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.0.10.116]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:, ,
	definitions=2016-12-08_04:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
	priorityscore=1501
	malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
	clxscore=1011 lowpriorityscore=0 impostorscore=0 adultscore=0
	classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1609300000
	definitions=main-1612080128
Subject: Enabling UTF-8
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
X-List-Received-Date: Thu, 08 Dec 2016 08:23:56 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_83DB4EC8FADD45428E3CC4E3664761FD4243A127AMDTCEX14actuan_"

--_000_83DB4EC8FADD45428E3CC4E3664761FD4243A127AMDTCEX14actuan_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I'm trying to get UTF-8 support enabled to my image.  For whatever reason I=
 don't seem to get it working. I have following lines in my local.conf.

GLIBC_GENERATE_LOCALES =3D "en_GB en_US en_GB.UTF-8 en_US.UTF-8"
IMAGE_LINGUAS =3D "en-gb en-us"

I get only en and en_GB locales to image (/usr/share/locale).

I'm using Yocto 1.6.1, but I've tested it on Yocto 2.1 too without any diff=
erence.  I'm using valleyisland-32 - machine if that has anything to do wit=
h it.

Is there something else needed to be done to force UTF-8 locales being gene=
rated? Seems that those lines don't change anything. Same locales are gener=
ated with or without those lines in local.conf.

Teemu Keskinarkaus
Software system engineer
Cell: +358 400 330047
Fax: +358 207 669199
www.crosscontrol.com<http://www.crosscontrol.com>
CrossControl
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

--_000_83DB4EC8FADD45428E3CC4E3664761FD4243A127AMDTCEX14actuan_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered medium)">
<style><!--
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
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
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
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
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
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I&#8217;m trying to get UTF-8 s=
upport enabled to my image. &nbsp;For whatever reason I don&#8217;t seem to=
 get it working. I have following lines in my local.conf.<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">GLIBC_GENERATE_LOCALES =3D &quo=
t;en_GB en_US en_GB.UTF-8 en_US.UTF-8&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">IMAGE_LINGUAS =3D &quot;en-gb e=
n-us&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I get only en and en_GB locales=
 to image (/usr/share/locale).
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I&#8217;m using Yocto 1.6.1, bu=
t I&#8217;ve tested it on Yocto 2.1 too without any difference.&nbsp; I&#82=
17;m using valleyisland-32 &#8211; machine if that has anything to do with =
it.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Is there something else needed =
to be done to force UTF-8 locales being generated? Seems that those lines d=
on&#8217;t change anything. Same locales are generated with or without thos=
e lines in local.conf.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt;line-height:9.0pt;mso-=
line-height-rule:exactly">
<b><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Century=
 Gothic&quot;,&quot;sans-serif&quot;;mso-fareast-language:FI">Teemu Keskina=
rkaus<br>
</span></b><span lang=3D"EN-US" style=3D"font-size:7.5pt;font-family:&quot;=
Century Gothic&quot;,&quot;sans-serif&quot;;mso-fareast-language:FI">Softwa=
re system engineer</span><b><span lang=3D"EN-US" style=3D"font-size:10.0pt;=
font-family:&quot;Century Gothic&quot;,&quot;sans-serif&quot;;mso-fareast-l=
anguage:FI"><br>
</span></b><span lang=3D"EN-US" style=3D"font-size:7.5pt;font-family:&quot;=
Century Gothic&quot;,&quot;sans-serif&quot;;mso-fareast-language:FI">Cell: =
&#43;358&nbsp;400&nbsp;330047</span><b><span lang=3D"EN-US" style=3D"font-s=
ize:6.0pt;font-family:&quot;Century Gothic&quot;,&quot;sans-serif&quot;;mso=
-fareast-language:FI"><br>
</span></b><span lang=3D"EN-US" style=3D"font-size:7.5pt;font-family:&quot;=
Century Gothic&quot;,&quot;sans-serif&quot;;mso-fareast-language:FI">Fax: &=
#43;358&nbsp;207 669199</span><b><span lang=3D"EN-US" style=3D"font-size:6.=
0pt;font-family:&quot;Century Gothic&quot;,&quot;sans-serif&quot;;mso-farea=
st-language:FI"><br>
</span></b><span lang=3D"EN-GB" style=3D"font-size:7.5pt;font-family:&quot;=
Century Gothic&quot;,&quot;sans-serif&quot;;mso-fareast-language:FI"><a hre=
f=3D"http://www.crosscontrol.com"><span style=3D"color:blue">www.crosscontr=
ol.com</span></a><span style=3D"color:#0070C0">
</span></span><b><span lang=3D"EN-GB" style=3D"font-size:12.0pt;font-family=
:&quot;Century Gothic&quot;,&quot;sans-serif&quot;;color:black;mso-fareast-=
language:FI"><o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-GB" style=3D"font-size:12.0pt;fo=
nt-family:&quot;Century Gothic&quot;,&quot;sans-serif&quot;;color:black;mso=
-fareast-language:FI">CrossControl<o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"font-size:7.5pt;font-f=
amily:&quot;Century Gothic&quot;,&quot;sans-serif&quot;;color:black;mso-far=
east-language:FI">making machines smart, safe and productive</span><span la=
ng=3D"EN-US" style=3D"mso-fareast-language:FI"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
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

--_000_83DB4EC8FADD45428E3CC4E3664761FD4243A127AMDTCEX14actuan_--
