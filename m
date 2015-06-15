Return-Path: <simon.chen@lmco.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8130CE00978; Mon, 15 Jun 2015 08:17:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.31.106.12 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mailfo01.lmco.com (mailfo01.lmco.com [192.31.106.12])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 389C5E00960;
	Mon, 15 Jun 2015 08:16:56 -0700 (PDT)
Received: from HVXHTPN9.us.lmco.com (hvxhtpn9.ems.lmco.com [158.186.149.27])
	by mailfo01.lmco.com (8.14.5/8.14.5) with ESMTP id t5FFGh4W028659;
	Mon, 15 Jun 2015 16:16:51 +0100
Received: from HVXDSP45.us.lmco.com ([fe80::e5e8:eada:5adc:d92a]) by
	HVXHTPN9.us.lmco.com ([fe80::cc0f:96a:cb16:8684%15]) with mapi id
	14.03.0174.001; Mon, 15 Jun 2015 11:16:38 -0400
From: "Chen, Simon" <simon.chen@lmco.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "poky@yoctoproject.org"
	<poky@yoctoproject.org>
Thread-Topic: Missing Kernel Modules (.ko files) in Yoct File System
Thread-Index: AdCnfkQ6R4gnXqVIRm61WDzREQ4z4Q==
Date: Mon, 15 Jun 2015 15:16:37 +0000
Message-ID: <D3EFC6D8DB6B2D48A91E6F02D0DB338FAA53FB@HVXDSP45.us.lmco.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [158.186.156.90]
MIME-Version: 1.0
X-LM-Outbound: External 158.186.149.27 cntry=us
	g=b6f0de4a20c5d6691279de8877ad498f q=t5FFGh4W028659 m=10
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:5.14.151, 1.0.33,
	0.0.0000
	definitions=2015-06-15_01:2015-06-15, 2015-06-14,
	1970-01-01 signatures=0
Subject: Missing Kernel Modules (.ko files) in Yoct File System
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
X-List-Received-Date: Mon, 15 Jun 2015 15:17:04 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_D3EFC6D8DB6B2D48A91E6F02D0DB338FAA53FBHVXDSP45uslmcocom_"

--_000_D3EFC6D8DB6B2D48A91E6F02D0DB338FAA53FBHVXDSP45uslmcocom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

This is a follow-up to my graphics card driver problem...

It appears that for Yocto's udev, the init script fails to extract a MODALI=
AS from the external driver software that I've installed. Once extracted, t=
hese MODALIAS's should show up in /lib/modules/<KERNEL VERSION>/modules.ali=
as, and udev tries to associate this MODALIAS with the appropriate deviceID=
 from the actual Radeon graphics card. I've been comparing Ubuntu's filesys=
tem with Yocto's, and I have a hunch that these MODALIAS's are being pulled=
 from the .ko files from each of these drivers. However, I've found that th=
ese .ko's and their folders do not exist where they should be in the /lib/m=
odules/<KERNEL VERSION>/kernel directory.

My question is, how is YOCTO's built-in drivers for the mouse, keyboard, an=
d monitor still operational even without these .ko's. Is there a way to gen=
erate these ko's so that an external driver can be installed? Am I confusin=
g built-in modules with external ones? Is Yocto only configured to run buil=
t-in kernel modules?

-Simon

From: poky-bounces@yoctoproject.org [mailto:poky-bounces@yoctoproject.org] =
On Behalf Of Chen, Simon
Sent: Monday, June 08, 2015 2:28 PM
To: poky@yoctoproject.org
Subject: EXTERNAL: [poky] Issue with udev not creating dev/dri/card0 for xf=
86-video-ati

Hello,

I've built a Yocto image using poky-dizzy-12.0.1, and have my target propri=
etary board boot off of it. I am trying to assimilate an external graphics =
card, the AMD Radeon E8860 by "manually" installing the latest version of t=
he open source Radeon driver, xf86-video-ati. The main issue I am tackling =
is that the device file dev/dri/card0 required by the Radeon driver does no=
t exist, and neither does dev/fb0 which is needed by the default VESA drive=
r whenever xf86-video-ati fails.  My hypothesis at the moment, is that the =
udev from Yocto is not correctly parameterized for the radeon driver, or it=
 is incomplete. I've tried adding some new rules to the etc/udev/rules.d/lo=
cal.rules file but it doesn't seem to work. I am also fairly new to udev ru=
les.

What are your thoughts?

Thanks,
Simon Chen

--_000_D3EFC6D8DB6B2D48A91E6F02D0DB338FAA53FBHVXDSP45uslmcocom_
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
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
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
span.EmailStyle17
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">This is a follow-up to=
 my graphics card driver problem&#8230;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">It appears that for Yo=
cto&#8217;s udev, the init script fails to extract a MODALIAS from the exte=
rnal driver software that I&#8217;ve installed. Once extracted, these MODAL=
IAS&#8217;s should show up in /lib/modules/&lt;KERNEL VERSION&gt;/modules.a=
lias,
 and udev tries to associate this MODALIAS with the appropriate deviceID fr=
om the actual Radeon graphics card. I&#8217;ve been comparing Ubuntu&#8217;=
s filesystem with Yocto&#8217;s, and I have a hunch that these MODALIAS&#82=
17;s are being pulled from the .ko files from each of these
 drivers. However, I&#8217;ve found that these .ko&#8217;s and their folder=
s do not exist where they should be in the /lib/modules/&lt;KERNEL VERSION&=
gt;/kernel directory.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">My question is, how is=
 YOCTO&#8217;s built-in drivers for the mouse, keyboard, and monitor still =
operational even without these .ko&#8217;s. Is there a way to generate thes=
e ko&#8217;s so that an external driver can be installed?
 Am I confusing built-in modules with external ones? Is Yocto only configur=
ed to run built-in kernel modules?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">-Simon<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> poky-bou=
nces@yoctoproject.org [mailto:poky-bounces@yoctoproject.org]
<b>On Behalf Of </b>Chen, Simon<br>
<b>Sent:</b> Monday, June 08, 2015 2:28 PM<br>
<b>To:</b> poky@yoctoproject.org<br>
<b>Subject:</b> EXTERNAL: [poky] Issue with udev not creating dev/dri/card0=
 for xf86-video-ati<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;ve built a Yocto image using poky-dizzy-12.0=
.1, and have my target proprietary board boot off of it. I am trying to ass=
imilate an external graphics card, the AMD Radeon E8860 by &#8220;manually&=
#8221; installing the latest version of the open source
 Radeon driver, xf86-video-ati. The main issue I am tackling is that the de=
vice file dev/dri/card0 required by the Radeon driver does not exist, and n=
either does dev/fb0 which is needed by the default VESA driver whenever xf8=
6-video-ati fails.&nbsp; My hypothesis
 at the moment, is that the udev from Yocto is not correctly parameterized =
for the radeon driver, or it is incomplete. I&#8217;ve tried adding some ne=
w rules to the etc/udev/rules.d/local.rules file but it doesn&#8217;t seem =
to work. I am also fairly new to udev rules.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">What are your thoughts?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Simon Chen<o:p></o:p></p>
</div>
</body>
</html>

--_000_D3EFC6D8DB6B2D48A91E6F02D0DB338FAA53FBHVXDSP45uslmcocom_--
