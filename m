Return-Path: <tobias.andersson@multiq.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A4D3AE00C59; Fri, 16 Sep 2016 02:04:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [193.109.254.110 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 382 seconds by postgrey-1.32 at yocto-www;
	Fri, 16 Sep 2016 02:04:05 PDT
Received: from mail1.bemta6.messagelabs.com (mail1.bemta6.messagelabs.com
	[193.109.254.110])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF8FCE00A21
	for <poky@yoctoproject.org>; Fri, 16 Sep 2016 02:04:05 -0700 (PDT)
Received: from [85.158.140.211] by server-6.bemta-6.messagelabs.com id
	DF/49-11175-604BBD75; Fri, 16 Sep 2016 08:57:42 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrNIsWRWlGSWpSXmKPExsVy2HCNuS7Lltv
	hBl1bhC3Ov1jIZjH93xp2ByaP6+sCPNpP9LEFMEWxZuYl5VcksGasntfKXPA9pOL6gS0sDYzz
	/LoYuTiEBGYwSuzp7mDrYuTgYBMwkVi13qqLkZNDRCBN4tPnblYQW1hAUWL5399sEHElicP9z
	9khbCOJR3MOM4PYLAKqEifudoLFeQWCJH5c6WWBmN/KKPGw+SwTSIJTwF7i8Kf3LCA2o4CsxP
	3v98BsZgFxic9zH4DVSAgISCzZc54ZwhaVePn4HyuELS8xbX4LG0R9nsSG5xAH8QoISpyc+YR
	lAqPgLCSjZiEpm4WkDCKuJ3Fj6hQ2CFtbYtnC18wQtq7EjH+HWJDFFzCyr2LUKE4tKkst0jU0
	1EsqykzPKMlNzMzRNTQw08tNLS5OTE/NSUwq1kvOz93ECIwUBiDYwfhpWcAhRkkOJiVR3uLC2
	+FCfEn5KZUZicUZ8UWlOanFhxhlODiUJHjZNwPlBItS01Mr0jJzgDELk5bg4FES4TUCSfMWFy
	TmFmemQ6ROMSpKifM6giQEQBIZpXlwbbA0cYlRVkqYlxHoECGegtSi3MwSVPlXjOIcjErCvG4
	gU3gy80rgpr8CWswEtHj1LLDFJYkIKakGRs+jNQLr9t/MCrntFnnsTJ3O79tuOUcF3K2E1xqH
	sjcF1PSVzeRfHJCfW7n87bnSyi1HuEL+7Y+SXnHSRa2LI23B5VKFbI3lf5pN7vX8uPj2vXZ6n
	NKFCQtmXWK/ksZSq24e9Lj5y+zdcp9DJs2LPycU1XpIVESsbP8VR4+ybw867IxMwu6zKrEUZy
	QaajEXFScCAAA6w38OAwAA
X-Env-Sender: tobias.andersson@multiq.com
X-Msg-Ref: server-5.tower-194.messagelabs.com!1474016259!56140375!1
X-Originating-IP: [195.49.172.55]
X-StarScan-Received: 
X-StarScan-Version: 8.84; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 31580 invoked from network); 16 Sep 2016 08:57:40 -0000
Received: from unknown (HELO exch02-esl-se.Multiq2.local) (195.49.172.55)
	by server-5.tower-194.messagelabs.com with AES256-SHA encrypted SMTP;
	16 Sep 2016 08:57:40 -0000
Received: from exch02-esl-se.Multiq2.local ([::1]) by
	exch02-esl-se.Multiq2.local ([::1]) with mapi id 14.03.0224.002;
	Fri, 16 Sep 2016 10:57:39 +0200
From: Tobias Andersson <tobias.andersson@multiq.com>
To: Peter Kjellerstedt <peter.kjellerstedt@axis.com>, "poky@yoctoproject.org"
	<poky@yoctoproject.org>
Thread-Topic: [poky] [autobuilder]
Thread-Index: AQHSD/bLYlnGGnXsjEGpjxe8lOm2LaB7z7hj
Date: Fri, 16 Sep 2016 08:57:39 +0000
Message-ID: <A126740DBD3CFF4C92C08C03B00BC6C8013D4F6F@exch02-esl-se.Multiq2.local>
References: <A126740DBD3CFF4C92C08C03B00BC6C8013D4C6B@exch02-esl-se.Multiq2.local>,
	<269dfdeb1a15404d9a8eee5c4972bc5c@XBOX02.axis.com>
In-Reply-To: <269dfdeb1a15404d9a8eee5c4972bc5c@XBOX02.axis.com>
Accept-Language: sv-SE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [85.235.1.83]
MIME-Version: 1.0
Subject: Re: [autobuilder]
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
X-List-Received-Date: Fri, 16 Sep 2016 09:04:09 -0000
Content-Language: sv-SE
Content-Type: multipart/alternative;
	boundary="_000_A126740DBD3CFF4C92C08C03B00BC6C8013D4F6Fexch02eslseMult_"

--_000_A126740DBD3CFF4C92C08C03B00BC6C8013D4F6Fexch02eslseMult_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

The parameters in the recipe i use to add the group

inherit useradd
USERADD_PACKAGES =3D "${PN}"
GROUPADD_PARAM_${PN} =3D " --system --force networker"

I basically looked at the other recipes in the meta layer adding groups and=
 did the same. And they obviously work.

---------------------------------------------------------
Med v=E4nlig h=E4lsning/ Kind Regards

Tobias Andersson

Software Developer

Direct: +46 (0)10 211 66 05
Office: +46 (0)10 211 66 00

tobias.andersson@multiq.com

www.multiq.com
________________________________
Fr=E5n: Peter Kjellerstedt [peter.kjellerstedt@axis.com]
Skickat: den 16 september 2016 10:46
Till: Tobias Andersson; poky@yoctoproject.org
=C4mne: RE: [poky] [autobuilder]

Assuming at least one recipe that you build use GROUPMEMS_PARAMS_${PN}, a p=
atch I sent to openembedded-core@lists.openembedded.org<mailto:openembedded=
-core@lists.openembedded.org> yesterday will most likely fix this:

http://lists.openembedded.org/pipermail/openembedded-core/2016-September/12=
6552.html
//Peter

From: poky-bounces@yoctoproject.org [mailto:poky-bounces@yoctoproject.org] =
On Behalf Of Tobias Andersson
Sent: den 14 september 2016 14:55
To: poky@yoctoproject.org
Subject: [poky] [autobuilder]

I have an issue with useradd command not succeeding. The issue is appearing=
 when building the image with autobuilder.

error msg:
"do_populate_sysroot_setscene: mqclient-base-files: useradd command did not=
 succeed."

The user being added in the recipe depends on another group that i add from=
 another recipe, which the logs states that the group does not exits, even =
though i check in the sysroot that it does.
I even had to apply the --force flag to the recipe adding the group because=
 it generated an error stating it already existed.

What could be the problem ?

---------------------------------------------------------
Med v=E4nlig h=E4lsning/ Kind Regards

Tobias Andersson

Software Developer

Direct: +46 (0)10 211 66 05
Office: +46 (0)10 211 66 00

tobias.andersson@multiq.com<mailto:tobias.andersson@multiq.com>

www.multiq.com<http://www.multiq.com>

--_000_A126740DBD3CFF4C92C08C03B00BC6C8013D4F6Fexch02eslseMult_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html dir=3D"ltr">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style>=0A=
<!--=0A=
@font-face=0A=
	{font-family:"Cambria Math"}=0A=
@font-face=0A=
	{font-family:Calibri}=0A=
@font-face=0A=
	{font-family:Tahoma}=0A=
p.MsoNormal, li.MsoNormal, div.MsoNormal=0A=
	{margin:0cm;=0A=
	margin-bottom:.0001pt;=0A=
	font-size:12.0pt;=0A=
	font-family:"Times New Roman",serif}=0A=
a:link, span.MsoHyperlink=0A=
	{color:#0563C1;=0A=
	text-decoration:underline}=0A=
a:visited, span.MsoHyperlinkFollowed=0A=
	{color:#954F72;=0A=
	text-decoration:underline}=0A=
p=0A=
	{margin:0cm;=0A=
	margin-bottom:.0001pt;=0A=
	font-size:12.0pt;=0A=
	font-family:"Times New Roman",serif}=0A=
span.EmailStyle19=0A=
	{font-family:"Calibri",sans-serif;=0A=
	color:#943634;=0A=
	font-weight:normal;=0A=
	font-style:normal;=0A=
	text-decoration:none none}=0A=
.MsoChpDefault=0A=
	{font-size:10.0pt}=0A=
@page WordSection1=0A=
	{margin:72.0pt 72.0pt 72.0pt 72.0pt}=0A=
-->=0A=
</style><style id=3D"owaParaStyle" type=3D"text/css">P {margin-top:0;margin=
-bottom:0;}</style>
</head>
<body ocsi=3D"0" fpstyle=3D"1" lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#95=
4F72">
<div style=3D"direction: ltr;font-family: Tahoma;color: #000000;font-size: =
10pt;">The parameters in the recipe i use to add the group<br>
<br>
inherit useradd<br>
USERADD_PACKAGES =3D &quot;${PN}&quot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<br>
GROUPADD_PARAM_${PN} =3D &quot; --system --force networker&quot;<br>
<div><br>
I basically looked at the other recipes in the meta layer adding groups and=
 did the same. And they obviously work.<br>
<br>
<div style=3D"font-family:Tahoma; font-size:13px">
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:10pt"=
>
<div class=3D"PlainText">--------------------------------------------------=
-------<br>
Med v=E4nlig h=E4lsning/ Kind Regards<br>
<br>
Tobias Andersson<br>
<br>
Software Developer<br>
<br>
Direct: &#43;46 (0)10 211 66 05<br>
Office: &#43;46 (0)10 211 66 00&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;
<br>
<br>
tobias.andersson@multiq.com<br>
<br>
www.multiq.com </div>
</span></font></div>
</div>
</div>
<div style=3D"font-family: Times New Roman; color: #000000; font-size: 16px=
">
<hr tabindex=3D"-1">
<div style=3D"direction: ltr;" id=3D"divRpF591823"><font color=3D"#000000" =
face=3D"Tahoma" size=3D"2"><b>Fr=E5n:</b> Peter Kjellerstedt [peter.kjeller=
stedt@axis.com]<br>
<b>Skickat:</b> den 16 september 2016 10:46<br>
<b>Till:</b> Tobias Andersson; poky@yoctoproject.org<br>
<b>=C4mne:</b> RE: [poky] [autobuilder]<br>
</font><br>
</div>
<div></div>
<div>
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot;C=
alibri&quot;,sans-serif; color:#943634">Assuming at least one recipe that y=
ou build use GROUPMEMS_PARAMS_${PN}, a patch I sent to
<a href=3D"mailto:openembedded-core@lists.openembedded.org" target=3D"_blan=
k">openembedded-core@lists.openembedded.org</a> yesterday will most likely =
fix this:</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot;C=
alibri&quot;,sans-serif; color:#943634">&nbsp;</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot;C=
alibri&quot;,sans-serif; color:#943634"><a href=3D"http://lists.openembedde=
d.org/pipermail/openembedded-core/2016-September/126552.html" target=3D"_bl=
ank">http://lists.openembedded.org/pipermail/openembedded-core/2016-Septemb=
er/126552.html</a></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot;C=
alibri&quot;,sans-serif; color:#943634"></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot;C=
alibri&quot;,sans-serif; color:#943634">//Peter</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot;C=
alibri&quot;,sans-serif; color:#943634">&nbsp;</span></p>
<div style=3D"border:none; border-left:solid blue 1.5pt; padding:0cm 0cm 0c=
m 4.0pt">
<div>
<div style=3D"border:none; border-top:solid #E1E1E1 1.0pt; padding:3.0pt 0c=
m 0cm 0cm">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt; font-family:&quo=
t;Calibri&quot;,sans-serif">From:</span></b><span style=3D"font-size:11.0pt=
; font-family:&quot;Calibri&quot;,sans-serif"> poky-bounces@yoctoproject.or=
g [mailto:poky-bounces@yoctoproject.org]
<b>On Behalf Of </b>Tobias Andersson<br>
<b>Sent:</b> den 14 september 2016 14:55<br>
<b>To:</b> poky@yoctoproject.org<br>
<b>Subject:</b> [poky] [autobuilder]</span></p>
</div>
</div>
<p class=3D"MsoNormal">&nbsp;</p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt; font-family:&quot;T=
ahoma&quot;,sans-serif; color:black">I have an issue with useradd command n=
ot succeeding. The issue is appearing when building the image with autobuil=
der.<br>
<br>
error msg:<br>
<span class=3D"stderr">&quot;do_populate_sysroot_setscene: mqclient-base-fi=
les: useradd command did not succeed.&quot;</span><br>
<br>
<span class=3D"stderr">The user being added in the recipe depends on anothe=
r group that i add from another recipe, which the logs states that the grou=
p does not exits, even though i check in the sysroot that it does.</span><b=
r>
<span class=3D"stderr">I even had to apply the --force flag to the recipe a=
dding the group because it generated an error stating it already existed.</=
span><br>
<br>
<span class=3D"stderr">What could be the problem ?</span></span></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt; font-family:&quot;T=
ahoma&quot;,sans-serif; color:black">&nbsp;</span></p>
<div>
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt; font-family:&quot;T=
ahoma&quot;,sans-serif; color:black">--------------------------------------=
-------------------<br>
Med v=E4nlig h=E4lsning/ Kind Regards<br>
<br>
Tobias Andersson<br>
<br>
Software Developer<br>
<br>
Direct: &#43;46 (0)10 211 66 05<br>
Office: &#43;46 (0)10 211 66 00&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;
<br>
<br>
<a href=3D"mailto:tobias.andersson@multiq.com" target=3D"_blank">tobias.and=
ersson@multiq.com</a><br>
<br>
<a href=3D"http://www.multiq.com" target=3D"_blank">www.multiq.com</a> </sp=
an></p>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_A126740DBD3CFF4C92C08C03B00BC6C8013D4F6Fexch02eslseMult_--
