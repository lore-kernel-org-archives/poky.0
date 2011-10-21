Return-Path: <jessica.zhang@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7362EE01358
	for <poky@yoctoproject.org>; Thu, 20 Oct 2011 22:06:22 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 20 Oct 2011 22:06:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,383,1315206000"; d="scan'208,217";a="64816307"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by azsmga001.ch.intel.com with ESMTP; 20 Oct 2011 22:06:21 -0700
Received: from orsmsx104.amr.corp.intel.com (10.22.225.131) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Thu, 20 Oct 2011 22:06:21 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.14]) by
	ORSMSX104.amr.corp.intel.com ([169.254.3.146]) with mapi id
	14.01.0323.003; Thu, 20 Oct 2011 22:06:20 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: =?iso-8859-2?Q?Przemek_Ogorza=B3ek?= <darthhunterix@wp.pl>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: [poky] Several noob's problems:
Thread-Index: AQHMYDMakuLUs49t70Wv3iF/hW7aGpWGm4Ow
Date: Fri, 21 Oct 2011 05:06:20 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C16E988A7@ORSMSX101.amr.corp.intel.com>
References: <4e51533cbaea03.13400098@wp.pl>
In-Reply-To: <4e51533cbaea03.13400098@wp.pl>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: Several noob's problems:
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
X-List-Received-Date: Fri, 21 Oct 2011 05:06:22 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_C6510F6D410BB64A8C15398EDC6B847C16E988A7ORSMSX101amrcor_"

--_000_C6510F6D410BB64A8C15398EDC6B847C16E988A7ORSMSX101amrcor_
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable

Hi Przemek,



The answer to question2:



For the Eclipse plug-in, there're 2 options and only the " poky-tree mode" =
requires you to run "bitbake meta-ide-support".  To use the prebuilt toolch=
ain, you need to select the "SDK root mode".  You can follow the ADT user m=
anual (http://www.yoctoproject.org/docs/1.0/adt-manual/adt-manual.html) on =
setting up your environment to use Eclipse plug-in with the prebuilt toolch=
ain.



Thanks,

Jessica



From: poky-bounces@yoctoproject.org [mailto:poky-bounces@yoctoproject.org] =
On Behalf Of Przemek Ogorzalek
Sent: Sunday, August 21, 2011 11:50 AM
To: poky@yoctoproject.org
Subject: [poky] Several noob's problems:



Hello!

I've got some problems with using Poky and I couldn't find any solutions in=
 documentation or wiki, so I hope that someone will be able to help me. Som=
e questions might sound stupid, but I've got almost zero experience with em=
bedded hardware, and even some obvious things are a mystery to me.



Question one:

There is an excellent instruction of booting the device over network, but I=
 need to download the image directly to device. How do I do that?



Question two:

I have installed the Eclipse plug-in, but it requires running "bitbake meta=
-ide-support" to build toolchain. Is there any way to use pre-build tarball=
s from http://autobuilder.yoctoproject.org/downloads/yocto-1.0/toolchain/i6=
86/ ?

I have written in another mail (Subject: "glibc building problem")  why I c=
an't simply create my own toolchain (compilation problems).



Question three:

As I understand, to customize my Poky, I have to edit recipes (or write my =
own). There are plenty of them however in meta directory, and finding a pat=
tern among them is rather difficult. Is there any sort of wizard (I mean so=
mething like "make menuconfig" during normal kernel compilation) for it, or=
 I have to study meta directory?



I use Poky 5.0.1 on 32-bit host with Fedora 15 and my target is PowerPC.



That's all, for now at least.

Thanks in advance for any help.

Best regards

Przemek "Darth Hunterix"




--_000_C6510F6D410BB64A8C15398EDC6B847C16E988A7ORSMSX101amrcor_
Content-Type: text/html; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
2">
<meta name=3D"Generator" content=3D"Microsoft Word 12 (filtered medium)">
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
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p
	{mso-style-priority:99;
	margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;}
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Hi Przemek,<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">The answer to question2:<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">For the Eclipse plug-in, =
there&#8217;re 2 options and only the &#8220; poky-tree mode&#8221; require=
s you to run &#8220;bitbake meta-ide-support&#8221;.&nbsp; To use the prebu=
ilt toolchain, you
 need to select the &#8220;SDK root mode&#8221;.&nbsp; You can follow the A=
DT user manual (http://www.yoctoproject.org/docs/1.0/adt-manual/adt-manual.=
html) on setting up your environment to use Eclipse plug-in with the prebui=
lt toolchain.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Thanks,<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Jessica<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> poky-bou=
nces@yoctoproject.org [mailto:poky-bounces@yoctoproject.org]
<b>On Behalf Of </b>Przemek Ogorzalek<br>
<b>Sent:</b> Sunday, August 21, 2011 11:50 AM<br>
<b>To:</b> poky@yoctoproject.org<br>
<b>Subject:</b> [poky] Several noob's problems:<o:p></o:p></span></p>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p>Hello!<o:p></o:p></p>
<p>I've got some problems with using Poky and I couldn't find any solutions=
 in documentation or wiki, so I hope that someone will be able to help me. =
Some questions might sound stupid, but I've got almost zero experience with=
 embedded hardware, and even some
 obvious things are a mystery to me.<o:p></o:p></p>
<p>&nbsp;<o:p></o:p></p>
<p>Question one:<o:p></o:p></p>
<p>There is an excellent instruction of booting the device over network, bu=
t I need to download the image directly to device. How do I do that?<o:p></=
o:p></p>
<p>&nbsp;<o:p></o:p></p>
<p>Question two:<o:p></o:p></p>
<p>I have installed the Eclipse plug-in, but it requires running &quot;bitb=
ake meta-ide-support&quot; to build toolchain. Is there any way to use pre-=
build tarballs from http://autobuilder.yoctoproject.org/downloads/yocto-1.0=
/toolchain/i686/ ?<o:p></o:p></p>
<p>I have written in another mail (Subject: &quot;glibc building problem&qu=
ot;)&nbsp; why I can't simply create my own toolchain (compilation problems=
).<o:p></o:p></p>
<p>&nbsp;<o:p></o:p></p>
<p>Question three:<o:p></o:p></p>
<p>As I understand, to customize my Poky, I have to edit recipes (or write =
my own). There are plenty of them however in meta directory, and finding a =
pattern among them is rather difficult. Is there any sort of wizard (I mean=
 something like &quot;make menuconfig&quot;
 during normal kernel compilation) for it, or I have to study meta director=
y?<o:p></o:p></p>
<p>&nbsp;<o:p></o:p></p>
<p>I use Poky 5.0.1 on 32-bit host with Fedora 15 and my target is PowerPC.=
<o:p></o:p></p>
<p>&nbsp;<o:p></o:p></p>
<p>That's all, for now at least.<o:p></o:p></p>
<p>Thanks in advance for any help.<o:p></o:p></p>
<p>Best regards<o:p></o:p></p>
<p>Przemek &quot;Darth Hunterix&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_C6510F6D410BB64A8C15398EDC6B847C16E988A7ORSMSX101amrcor_--
