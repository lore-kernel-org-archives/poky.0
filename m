Return-Path: <peter.kjellerstedt@axis.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 709D4E00C55; Fri, 16 Sep 2016 01:53:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.60.68.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 424 seconds by postgrey-1.32 at yocto-www;
	Fri, 16 Sep 2016 01:53:21 PDT
Received: from bastet.se.axis.com (bastet.se.axis.com [195.60.68.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C74F3E00A21
	for <poky@yoctoproject.org>; Fri, 16 Sep 2016 01:53:21 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by bastet.se.axis.com (Postfix) with ESMTP id 3C0F0180A7;
	Fri, 16 Sep 2016 10:46:16 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at bastet.se.axis.com
Received: from bastet.se.axis.com ([IPv6:::ffff:127.0.0.1])
	by localhost (bastet.se.axis.com [::ffff:127.0.0.1]) (amavisd-new,
	port 10024)
	with LMTP id QCXVwzQGXZVL; Fri, 16 Sep 2016 10:46:11 +0200 (CEST)
Received: from boulder02.se.axis.com (boulder02.se.axis.com [10.0.8.16])
	by bastet.se.axis.com (Postfix) with ESMTPS id A358F180DA;
	Fri, 16 Sep 2016 10:46:11 +0200 (CEST)
Received: from boulder02.se.axis.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 823961A088;
	Fri, 16 Sep 2016 10:46:11 +0200 (CEST)
Received: from boulder02.se.axis.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 723141A086;
	Fri, 16 Sep 2016 10:46:11 +0200 (CEST)
Received: from thoth.se.axis.com (unknown [10.0.2.173])
	by boulder02.se.axis.com (Postfix) with ESMTP;
	Fri, 16 Sep 2016 10:46:11 +0200 (CEST)
Received: from XBOX02.axis.com (xbox02.axis.com [10.0.5.16])
	by thoth.se.axis.com (Postfix) with ESMTP id 663B42CD;
	Fri, 16 Sep 2016 10:46:11 +0200 (CEST)
Received: from XBOX02.axis.com (10.0.5.16) by XBOX02.axis.com (10.0.5.16) with
	Microsoft SMTP Server (TLS) id 15.0.1156.6;
	Fri, 16 Sep 2016 10:46:11 +0200
Received: from XBOX02.axis.com ([fe80::d00f:cb52:1b56:20d]) by XBOX02.axis.com
	([fe80::d00f:cb52:1b56:20d%21]) with mapi id 15.00.1156.000;
	Fri, 16 Sep 2016 10:46:11 +0200
From: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
To: Tobias Andersson <tobias.andersson@multiq.com>, "poky@yoctoproject.org"
	<poky@yoctoproject.org>
Thread-Topic: [poky] [autobuilder]
Thread-Index: AdIOhRp+qw12snZ4Qw2gE1p29aT3ugBcMyTQ
Date: Fri, 16 Sep 2016 08:46:11 +0000
Message-ID: <269dfdeb1a15404d9a8eee5c4972bc5c@XBOX02.axis.com>
References: <A126740DBD3CFF4C92C08C03B00BC6C8013D4C6B@exch02-esl-se.Multiq2.local>
In-Reply-To: <A126740DBD3CFF4C92C08C03B00BC6C8013D4C6B@exch02-esl-se.Multiq2.local>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.0.5.60]
MIME-Version: 1.0
X-TM-AS-GCONF: 00
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
X-List-Received-Date: Fri, 16 Sep 2016 08:53:25 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_269dfdeb1a15404d9a8eee5c4972bc5cXBOX02axiscom_"

--_000_269dfdeb1a15404d9a8eee5c4972bc5cXBOX02axiscom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

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

--_000_269dfdeb1a15404d9a8eee5c4972bc5cXBOX02axiscom_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
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
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
p
	{mso-style-priority:99;
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
span.stderr
	{mso-style-name:stderr;}
span.EmailStyle19
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
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#943634">Assuming at least one recipe that you=
 build use GROUPMEMS_PARAMS_${PN}, a patch I sent to
<a href=3D"mailto:openembedded-core@lists.openembedded.org">openembedded-co=
re@lists.openembedded.org</a> yesterday will most likely fix this:<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#943634"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#943634"><a href=3D"http://lists.openembedded.=
org/pipermail/openembedded-core/2016-September/126552.html">http://lists.op=
enembedded.org/pipermail/openembedded-core/2016-September/126552.html</a><o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#943634"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#943634">//Peter<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#943634"><o:p>&nbsp;</o:p></span></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0cm 0cm 0cm =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,sans-serif">From:</span></b><span style=3D"font-size:11.0pt;=
font-family:&quot;Calibri&quot;,sans-serif"> poky-bounces@yoctoproject.org =
[mailto:poky-bounces@yoctoproject.org]
<b>On Behalf Of </b>Tobias Andersson<br>
<b>Sent:</b> den 14 september 2016 14:55<br>
<b>To:</b> poky@yoctoproject.org<br>
<b>Subject:</b> [poky] [autobuilder]<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ta=
homa&quot;,sans-serif;color:black">I have an issue with useradd command not=
 succeeding. The issue is appearing when building the image with autobuilde=
r.<br>
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
<span class=3D"stderr">What could be the problem ?</span><o:p></o:p></span>=
</p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ta=
homa&quot;,sans-serif;color:black"><o:p>&nbsp;</o:p></span></p>
<div>
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ta=
homa&quot;,sans-serif;color:black">----------------------------------------=
-----------------<br>
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
<a href=3D"mailto:tobias.andersson@multiq.com">tobias.andersson@multiq.com<=
/a><br>
<br>
<a href=3D"http://www.multiq.com">www.multiq.com</a> <o:p></o:p></span></p>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_269dfdeb1a15404d9a8eee5c4972bc5cXBOX02axiscom_--
