Return-Path: <song.liu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2C4454C80655
	for <poky@pokylinux.org>; Wed,  1 Jun 2011 14:03:49 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 01 Jun 2011 12:03:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,304,1304319600"; d="scan'208,217";a="5420920"
Received: from orsmsx602.amr.corp.intel.com ([10.22.226.211])
	by azsmga001.ch.intel.com with ESMTP; 01 Jun 2011 12:03:46 -0700
Received: from orsmsx151.amr.corp.intel.com (10.22.226.38) by
	orsmsx602.amr.corp.intel.com (10.22.226.211) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 1 Jun 2011 12:03:46 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.114]) by
	ORSMSX151.amr.corp.intel.com ([169.254.5.187]) with mapi id
	14.01.0289.001; Wed, 1 Jun 2011 12:03:45 -0700
From: "Liu, Song" <song.liu@intel.com>
To: "Xu, Jiajun" <jiajun.xu@intel.com>, "Zanussi, Tom" <tom.zanussi@intel.com>
Thread-Topic: Weekly Test Report for Yocto 1.1 M1 RC2 - 20110528
Thread-Index: AcwfqS4orwT+vYWCQ6WeHHnEzbzwlAA5O0Yw
Date: Wed, 1 Jun 2011 19:03:44 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A010675@ORSMSX101.amr.corp.intel.com>
References: <D5AB6E638E5A3E4B8F4406B113A5A19A5262D035@shsmsx501.ccr.corp.intel.com>
In-Reply-To: <D5AB6E638E5A3E4B8F4406B113A5A19A5262D035@shsmsx501.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.9.131.214]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"poky@pokylinux.org" <poky@pokylinux.org>
Subject: Re: Weekly Test Report for Yocto 1.1 M1 RC2 - 20110528
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
X-List-Received-Date: Wed, 01 Jun 2011 19:03:51 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_7E680CB2A76BB8438D08CF13C09FC53A010675ORSMSX101amrcorpi_"

--_000_7E680CB2A76BB8438D08CF13C09FC53A010675ORSMSX101amrcorpi_
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

I don=1B$B!G=1B(Bt see anyone reply to this. Which bug is opened for the Be=
agleboard BSP build failure? It seem to be a critical issue.

Tom, shall you or someone else look into this?

Song

From: poky-bounces@yoctoproject.org [mailto:poky-bounces@yoctoproject.org] =
On Behalf Of Xu, Jiajun
Sent: Tuesday, May 31, 2011 8:41 AM
To: poky@pokylinux.org; yocto@yoctoproject.org
Subject: [poky] Weekly Test Report for Yocto 1.1 M1 RC2 - 20110528


Hi all,

       This is the weekly test report for Yocto 1.1 M1 RC2 build. There is =
no new bugs found in this testing. 3 BLOCK issues found in RC1 are fixed. T=
he only one block issue is beagleboard build failed on autobuilder. There a=
re still 9 old open bugs. Grub installation fail on 3 intel BSPs. Graphics =
testing on sugarbay is blocked.

       For bug fixing, the keyboard not work issue and toolchain not built =
out issue are fixed. Meanwhile, the cvs compile issue is marked as INVALID =
because it also fails on native. We also remove sudoku-savant compile test =
in qemu because such error may be caused by limited memory in qemu.

       If there is no new build for M1, QA will continue fullpass testing a=
gainst RC2.



Test Summary
---------------------------------------





Test Result Summary



Component

Target

Status

Comments



BSP

SugarBay

GOOD

Graphics testing is blocked; soft keyboard will be triggered with terminal =
icon;



=1B$B!!=1B(B

CrownBay

GOOD

Grub installation failed;



=1B$B!!=1B(B

JasperForest

GOOD

Everything runs well



=1B$B!!=1B(B

Blacksand

GOOD

Grub installation failed; S3 does not work;



=1B$B!!=1B(B

eMenlow

GOOD

System installation failed; S3 does not work;



=1B$B!!=1B(B

Beagleboard

BLOCK

Build failed



=1B$B!!=1B(B

Routerstationpro

GOOD

Everything runs well



=1B$B!!=1B(B

Mpc8315e-rdb

GOOD

Everything runs well



QEMU

qemux86

GOOD

Everything runs well



=1B$B!!=1B(B

qemux86-64

GOOD

Everything runs well



=1B$B!!=1B(B

qemuarm

GOOD

Everything runs well



=1B$B!!=1B(B

qemuppc

GOOD

unfs does not work with qemuppc



=1B$B!!=1B(B

qemumips

GOOD

Everything runs well



ADT

=1B$B!!=1B(B

Buggy

unfs does not work with qemuppc





=1B$B!!=1B(B

Critical bugs, more than 50% test cases are blocked



=1B$B!!=1B(B

Only Normal, Minor or Enhancement bugs, less than 10% test cases failed



=1B$B!!=1B(B

Normal, Major and Critical bugs, more than 10% test cases failed




Detailed Test Result for each component



Target

Total TCs

Not Run

Passed

Failed

Not testable (Blocked)



Sugarbay Sato-SDK

55

0

53

1 (bug 1101)

1 (bug 1112)



Crownbay Sato-SDK

54

0

49

1 (bug 1099)

4



Jasperforest LSB-SDK

31

0

31

0

0



n450 Sato-SDK

54

0

48

2 (bug 613, 1099)

4



eMenlow Sato-SDK

54

0

48

2 (bug 1099, 503)

4



Routerstationpro Sato-SDK

29

0

29

0

0



Mpc8315e-rdb Sato-SDK

30

0

26

4 (bug 766)

0



Qemux86-64 Sato

27

0

27

0

0



Qemux86-64 Sato-SDK

30

0

30

0

0



Qemux86 Sato

27

0

27

0

0



Qemux86 Sato-SDK

30

0

30

0

0



Qemumips Sato

26

0

26

0

0



Qemumips Sato-SDK

32

0

32

0

0



Qemuppc Sato

20

0

19

0

1 (bug 414)



Qemuppc Sato-SDK

26

0

25

0

1 (bug 414)



Qemuarm Sato

26

0

26

0

0



Qemuarm Sato-SDK

32

0

32

0

0



ADT

6

0

5

1 (bug 414)

0



Total

589

0

563

11

15










* You can check the detailed test result in attachment for each target.

** The failed/blocked case number is listed with failed cases=1B$B!G=1B(B b=
ug number.



Commit Information
---------------------------------------

Tree/Branch: Poky/1.1_M1

Poky Commit: 4ff7af11ef69849ef9c16f585eae58ac920b222b

Meta Branch: 1.1_M1

Meta Commit: fc719f0cd6530ce15148b4aa274f1644b461b298



Issue Summary
---------------------------------------
Component

Bug Number

Target Milestone

System & Core OS

Installation & Boot

Bug 1099: [blacksand/emenlow/crownbay] grub install failed with sato-sdk li=
ve image

1.1 M2

Power Mangement

Bug 613: [Blacksand]system cannot enter S3 standby mode

1.1

Bug 503: [emenlow] system cannot enter S3 standby mode

1.1

Others

Bug 1101: keyboard pop up when clicking terminal icon

1.0 M2

Bug 1107: Open or add person in contacts may segfault on sugarbay/blacksand

1.1 M2

Bug 1097: The mouse can not click accurate to the icons in qemumips X

1.1 M2

Graphics

Bug 1112: [sugarbay] mesa-demos should be added into sato image for graphic=
s testing

Not specified

Bug 883: [Sugarbay] GFX 3D game test fail to run with sugarbay BSP image du=
e to libsdl.so

1.1

Multimedia

Works well in sugarbay/n450/eMenlow/crownbay

=1B$B!!=1B(B

ADT

Bug 414: [PPC] kernel panic when booting poky-image-sdk-qemuppc through UNF=
S

1.1 M3




Verified Fixed Bugs:

1.     Bug 1100<http://bugzilla.pokylinux.org/show_bug.cgi?id=3D1100>: [eme=
nlow/crownbay-noemgd] X window could not start up with sato-sdk image

2.     Bug 1108<http://bugzilla.pokylinux.org/show_bug.cgi?id=3D1108>: keyb=
oard could not work in qemux86/x86-64

3.     Bug 1093<http://bugzilla.pokylinux.org/show_bug.cgi?id=3D1093>: meta=
-toolchain-gmae: eglibc fails to build with 4.6



Best Regards,

Jiajun

--_000_7E680CB2A76BB8438D08CF13C09FC53A010675ORSMSX101amrcorpi_
Content-Type: text/html; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:x=3D"urn:schemas-microsoft-com:office:excel" xmlns:p=3D"urn:schemas-m=
icrosoft-com:office:powerpoint" xmlns:a=3D"urn:schemas-microsoft-com:office=
:access" xmlns:dt=3D"uuid:C2F41010-65B3-11d1-A29F-00AA00C14882" xmlns:s=3D"=
uuid:BDC6E3F0-6DA3-11d1-A2A3-00AA00C14882" xmlns:rs=3D"urn:schemas-microsof=
t-com:rowset" xmlns:z=3D"#RowsetSchema" xmlns:b=3D"urn:schemas-microsoft-co=
m:office:publisher" xmlns:ss=3D"urn:schemas-microsoft-com:office:spreadshee=
t" xmlns:c=3D"urn:schemas-microsoft-com:office:component:spreadsheet" xmlns=
:odc=3D"urn:schemas-microsoft-com:office:odc" xmlns:oa=3D"urn:schemas-micro=
soft-com:office:activation" xmlns:html=3D"http://www.w3.org/TR/REC-html40" =
xmlns:q=3D"http://schemas.xmlsoap.org/soap/envelope/" xmlns:rtc=3D"http://m=
icrosoft.com/officenet/conferencing" xmlns:D=3D"DAV:" xmlns:Repl=3D"http://=
schemas.microsoft.com/repl/" xmlns:mt=3D"http://schemas.microsoft.com/share=
point/soap/meetings/" xmlns:x2=3D"http://schemas.microsoft.com/office/excel=
/2003/xml" xmlns:ppda=3D"http://www.passport.com/NameSpace.xsd" xmlns:ois=
=3D"http://schemas.microsoft.com/sharepoint/soap/ois/" xmlns:dir=3D"http://=
schemas.microsoft.com/sharepoint/soap/directory/" xmlns:ds=3D"http://www.w3=
.org/2000/09/xmldsig#" xmlns:dsp=3D"http://schemas.microsoft.com/sharepoint=
/dsp" xmlns:udc=3D"http://schemas.microsoft.com/data/udc" xmlns:xsd=3D"http=
://www.w3.org/2001/XMLSchema" xmlns:sub=3D"http://schemas.microsoft.com/sha=
repoint/soap/2002/1/alerts/" xmlns:ec=3D"http://www.w3.org/2001/04/xmlenc#"=
 xmlns:sp=3D"http://schemas.microsoft.com/sharepoint/" xmlns:sps=3D"http://=
schemas.microsoft.com/sharepoint/soap/" xmlns:xsi=3D"http://www.w3.org/2001=
/XMLSchema-instance" xmlns:udcs=3D"http://schemas.microsoft.com/data/udc/so=
ap" xmlns:udcxf=3D"http://schemas.microsoft.com/data/udc/xmlfile" xmlns:udc=
p2p=3D"http://schemas.microsoft.com/data/udc/parttopart" xmlns:wf=3D"http:/=
/schemas.microsoft.com/sharepoint/soap/workflow/" xmlns:dsss=3D"http://sche=
mas.microsoft.com/office/2006/digsig-setup" xmlns:dssi=3D"http://schemas.mi=
crosoft.com/office/2006/digsig" xmlns:mdssi=3D"http://schemas.openxmlformat=
s.org/package/2006/digital-signature" xmlns:mver=3D"http://schemas.openxmlf=
ormats.org/markup-compatibility/2006" xmlns:m=3D"http://schemas.microsoft.c=
om/office/2004/12/omml" xmlns:mrels=3D"http://schemas.openxmlformats.org/pa=
ckage/2006/relationships" xmlns:spwp=3D"http://microsoft.com/sharepoint/web=
partpages" xmlns:ex12t=3D"http://schemas.microsoft.com/exchange/services/20=
06/types" xmlns:ex12m=3D"http://schemas.microsoft.com/exchange/services/200=
6/messages" xmlns:pptsl=3D"http://schemas.microsoft.com/sharepoint/soap/Sli=
deLibrary/" xmlns:spsl=3D"http://microsoft.com/webservices/SharePointPortal=
Server/PublishedLinksService" xmlns:Z=3D"urn:schemas-microsoft-com:" xmlns:=
st=3D"&#1;" xmlns=3D"http://www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-2022-=
jp">
<meta name=3D"Generator" content=3D"Microsoft Word 12 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
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
	{font-family:"\@SimSun";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:SimSun;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	font-size:10.5pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p.MsoPlainText, li.MsoPlainText, div.MsoPlainText
	{mso-style-priority:99;
	mso-style-link:"Plain Text Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.5pt;
	font-family:"Calibri","sans-serif";}
span.PlainTextChar
	{mso-style-name:"Plain Text Char";
	mso-style-priority:99;
	mso-style-link:"Plain Text";
	font-family:"Calibri","sans-serif";}
span.EmailStyle19
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.25in 1.0in 1.25in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:353189111;
	mso-list-type:hybrid;
	mso-list-template-ids:-523845966 541113070 67698713 67698715 67698703 6769=
8713 67698715 67698703 67698713 67698715;}
@list l0:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:.25in;
	text-indent:-.25in;}
@list l0:level2
	{mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level3
	{mso-level-tab-stop:1.5in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level4
	{mso-level-tab-stop:2.0in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level5
	{mso-level-tab-stop:2.5in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level6
	{mso-level-tab-stop:3.0in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level7
	{mso-level-tab-stop:3.5in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level8
	{mso-level-tab-stop:4.0in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level9
	{mso-level-tab-stop:4.5in;
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
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple" style=3D"text-justify-t=
rim:punctuation">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;color:#1F497D">I don=
=1B$B!G=1B(Bt see anyone reply to this. Which bug is opened for the Beagleb=
oard BSP build failure? It seem to be a critical issue.<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;color:#1F497D"><o:p>=
&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;color:#1F497D">Tom, =
shall you or someone else look into this?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;color:#1F497D"><o:p>=
&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;color:#1F497D">Song<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;color:#1F497D"><o:p>=
&nbsp;</o:p></span></p>
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><b><span st=
yle=3D"font-size:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quo=
t;">From:</span></b><span style=3D"font-size:10.0pt;font-family:&quot;Tahom=
a&quot;,&quot;sans-serif&quot;"> poky-bounces@yoctoproject.org [mailto:poky=
-bounces@yoctoproject.org]
<b>On Behalf Of </b>Xu, Jiajun<br>
<b>Sent:</b> Tuesday, May 31, 2011 8:41 AM<br>
<b>To:</b> poky@pokylinux.org; yocto@yoctoproject.org<br>
<b>Subject:</b> [poky] Weekly Test Report for Yocto 1.1 M1 RC2 - 20110528<o=
:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><o:p>&nbsp;=
</o:p></p>
<p class=3D"MsoPlainText"><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;">Hi all,<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; T=
his is the weekly test report for Yocto 1.1 M1 RC2 build. There is no new b=
ugs found in this testing. 3 BLOCK issues found in RC1 are fixed. The only =
one block issue
 is beagleboard build failed on autobuilder. There are still 9 old open bug=
s. Grub installation fail on 3 intel BSPs. Graphics testing on sugarbay is =
blocked.<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; F=
or bug fixing, the keyboard not work issue and toolchain not built out issu=
e are fixed. Meanwhile, the cvs compile issue is marked as INVALID because =
it also fails
 on native. We also remove <span style=3D"color:black">sudoku-savant compil=
e test in qemu because such error may be caused by limited memory in qemu.<=
o:p></o:p></span></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;;color:black">&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; If there is no new build for M1, QA will continue fullpass testi=
ng against RC2.</span><span style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><b><span style=3D"font-size:10.0pt;font-family:&q=
uot;Arial&quot;,&quot;sans-serif&quot;">Test Summary<o:p></o:p></span></b><=
/p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;">--------------------------------------=
-<o:p></o:p></span></b></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" width=3D"659" style=3D"width:494.0pt;margin-left:-.75pt;border-colla=
pse:collapse">
<tbody>
<tr>
<td width=3D"98" colspan=3D"3" style=3D"width:73.8pt;padding:0in 0in 0in 0i=
n"></td>
<td width=3D"97" colspan=3D"4" style=3D"width:73.1pt;padding:0in 0in 0in 0i=
n"></td>
<td width=3D"177" colspan=3D"10" style=3D"width:133.05pt;padding:0in 0in 0i=
n 0in"></td>
<td width=3D"75" style=3D"width:56.2pt;padding:0in 0in 0in 0in"></td>
<td width=3D"125" colspan=3D"4" style=3D"width:93.55pt;padding:0in 0in 0in =
0in"></td>
<td width=3D"86" colspan=3D"3" style=3D"width:64.3pt;padding:0in 0in 0in 0i=
n"></td>
</tr>
<tr>
<td width=3D"98" colspan=3D"3" style=3D"width:73.8pt;padding:0in 0in 0in 0i=
n"></td>
<td width=3D"22" colspan=3D"2" style=3D"width:16.8pt;padding:0in 0in 0in 0i=
n"></td>
<td width=3D"75" colspan=3D"2" style=3D"width:56.3pt;padding:0in 0in 0in 0i=
n"></td>
<td width=3D"96" colspan=3D"7" style=3D"width:1.0in;padding:0in 0in 0in 0in=
"></td>
<td width=3D"66" colspan=3D"2" style=3D"width:49.8pt;padding:0in 0in 0in 0i=
n"></td>
<td width=3D"15" style=3D"width:11.25pt;padding:0in 0in 0in 0in"></td>
<td width=3D"75" style=3D"width:56.2pt;padding:0in 0in 0in 0in"></td>
<td width=3D"125" colspan=3D"4" style=3D"width:93.55pt;padding:0in 0in 0in =
0in"></td>
<td width=3D"27" colspan=3D"2" style=3D"width:20.55pt;padding:0in 0in 0in 0=
in"></td>
<td width=3D"58" style=3D"width:43.75pt;padding:0in 0in 0in 0in"></td>
</tr>
<tr>
<td width=3D"98" colspan=3D"3" style=3D"width:73.8pt;padding:0in 0in 0in 0i=
n"></td>
<td width=3D"22" colspan=3D"2" style=3D"width:16.8pt;padding:0in 0in 0in 0i=
n"></td>
<td width=3D"18" style=3D"width:13.5pt;padding:0in 0in 0in 0in"></td>
<td width=3D"57" style=3D"width:42.8pt;padding:0in 0in 0in 0in"></td>
<td width=3D"86" colspan=3D"6" style=3D"width:64.5pt;padding:0in 0in 0in 0i=
n"></td>
<td width=3D"10" style=3D"width:7.5pt;padding:0in 0in 0in 0in"></td>
<td width=3D"53" style=3D"width:39.8pt;padding:0in 0in 0in 0in"></td>
<td width=3D"13" style=3D"width:10.0pt;padding:0in 0in 0in 0in"></td>
<td width=3D"15" style=3D"width:11.25pt;padding:0in 0in 0in 0in"></td>
<td width=3D"75" style=3D"width:56.2pt;padding:0in 0in 0in 0in"></td>
<td width=3D"84" colspan=3D"3" style=3D"width:62.7pt;padding:0in 0in 0in 0i=
n"></td>
<td width=3D"41" style=3D"width:30.85pt;padding:0in 0in 0in 0in"></td>
<td width=3D"27" colspan=3D"2" style=3D"width:20.55pt;padding:0in 0in 0in 0=
in"></td>
<td width=3D"58" style=3D"width:43.75pt;padding:0in 0in 0in 0in"></td>
</tr>
<tr>
<td width=3D"98" colspan=3D"3" style=3D"width:73.8pt;padding:0in 0in 0in 0i=
n"></td>
<td width=3D"10" style=3D"width:7.8pt;padding:0in 0in 0in 0in"></td>
<td width=3D"12" style=3D"width:9.0pt;padding:0in 0in 0in 0in"></td>
<td width=3D"18" style=3D"width:13.5pt;padding:0in 0in 0in 0in"></td>
<td width=3D"57" style=3D"width:42.8pt;padding:0in 0in 0in 0in"></td>
<td width=3D"28" colspan=3D"3" style=3D"width:21.0pt;padding:0in 0in 0in 0i=
n"></td>
<td width=3D"58" colspan=3D"3" style=3D"width:43.5pt;padding:0in 0in 0in 0i=
n"></td>
<td width=3D"10" style=3D"width:7.5pt;padding:0in 0in 0in 0in"></td>
<td width=3D"53" style=3D"width:39.8pt;padding:0in 0in 0in 0in"></td>
<td width=3D"13" style=3D"width:10.0pt;padding:0in 0in 0in 0in"></td>
<td width=3D"15" style=3D"width:11.25pt;padding:0in 0in 0in 0in"></td>
<td width=3D"75" style=3D"width:56.2pt;padding:0in 0in 0in 0in"></td>
<td width=3D"84" colspan=3D"3" style=3D"width:62.7pt;padding:0in 0in 0in 0i=
n"></td>
<td width=3D"41" style=3D"width:30.85pt;padding:0in 0in 0in 0in"></td>
<td width=3D"9" style=3D"width:6.6pt;padding:0in 0in 0in 0in"></td>
<td width=3D"19" style=3D"width:13.95pt;padding:0in 0in 0in 0in"></td>
<td width=3D"58" style=3D"width:43.75pt;padding:0in 0in 0in 0in"></td>
</tr>
<tr>
<td width=3D"89" style=3D"width:67.05pt;padding:0in 0in 0in 0in"></td>
<td width=3D"9" colspan=3D"2" style=3D"width:6.75pt;padding:0in 0in 0in 0in=
"></td>
<td width=3D"10" style=3D"width:7.8pt;padding:0in 0in 0in 0in"></td>
<td width=3D"12" style=3D"width:9.0pt;padding:0in 0in 0in 0in"></td>
<td width=3D"18" style=3D"width:13.5pt;padding:0in 0in 0in 0in"></td>
<td width=3D"57" style=3D"width:42.8pt;padding:0in 0in 0in 0in"></td>
<td width=3D"12" style=3D"width:9.0pt;padding:0in 0in 0in 0in"></td>
<td width=3D"16" colspan=3D"2" style=3D"width:12.0pt;padding:0in 0in 0in 0i=
n"></td>
<td width=3D"43" style=3D"width:32.25pt;padding:0in 0in 0in 0in"></td>
<td width=3D"15" colspan=3D"2" style=3D"width:11.25pt;padding:0in 0in 0in 0=
in"></td>
<td width=3D"10" style=3D"width:7.5pt;padding:0in 0in 0in 0in"></td>
<td width=3D"53" style=3D"width:39.8pt;padding:0in 0in 0in 0in"></td>
<td width=3D"13" style=3D"width:10.0pt;padding:0in 0in 0in 0in"></td>
<td width=3D"15" style=3D"width:11.25pt;padding:0in 0in 0in 0in"></td>
<td width=3D"75" style=3D"width:56.2pt;padding:0in 0in 0in 0in"></td>
<td width=3D"1" style=3D"width:.75pt;padding:0in 0in 0in 0in"></td>
<td width=3D"83" colspan=3D"2" style=3D"width:61.95pt;padding:0in 0in 0in 0=
in"></td>
<td width=3D"41" style=3D"width:30.85pt;padding:0in 0in 0in 0in"></td>
<td width=3D"9" style=3D"width:6.6pt;padding:0in 0in 0in 0in"></td>
<td width=3D"19" style=3D"width:13.95pt;padding:0in 0in 0in 0in"></td>
<td width=3D"58" style=3D"width:43.75pt;padding:0in 0in 0in 0in"></td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"471" nowrap=3D"" colspan=3D"20" style=3D"width:353.0pt;border:=
solid windowtext 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4pt 0in=
 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Test Result Summary<o:p></o:p></span></b></p>
</td>
<td width=3D"188" colspan=3D"5" style=3D"width:141.0pt;padding:0in 0in 0in =
0in;height:15.0pt">
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"95" nowrap=3D"" colspan=3D"2" style=3D"width:70.9pt;border:sol=
id windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0=
pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><b><span st=
yle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Component<o:p></o:p></span></b></p>
</td>
<td width=3D"125" nowrap=3D"" colspan=3D"7" style=3D"width:93.75pt;border-t=
op:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:=
solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><b><span st=
yle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Target<o:p></o:p></span></b></p>
</td>
<td width=3D"59" nowrap=3D"" colspan=3D"3" style=3D"width:44.05pt;border-to=
p:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:s=
olid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><b><span st=
yle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Status<o:p></o:p></span></b></p>
</td>
<td width=3D"192" colspan=3D"8" style=3D"width:144.3pt;border-top:none;bord=
er-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid window=
text 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><b><span st=
yle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Comments<o:p></o:p></span></b></p>
</td>
<td width=3D"188" colspan=3D"5" style=3D"width:141.0pt;padding:0in 0in 0in =
0in;height:15.0pt">
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
</td>
</tr>
<tr style=3D"height:49.5pt">
<td width=3D"95" nowrap=3D"" colspan=3D"2" style=3D"width:70.9pt;border:sol=
id windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:49.5=
pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><b><span st=
yle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">BSP<o:p></o:p></span></b></p>
</td>
<td width=3D"125" nowrap=3D"" colspan=3D"7" style=3D"width:93.75pt;border-t=
op:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:=
solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:49.5pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">SugarBay<o:p></o:p></span></p>
</td>
<td width=3D"59" nowrap=3D"" colspan=3D"3" style=3D"width:44.05pt;border-to=
p:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:s=
olid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height=
:49.5pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">GOOD<o:p></o:p></span></p>
</td>
<td width=3D"192" colspan=3D"8" style=3D"width:144.3pt;border-top:none;bord=
er-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid window=
text 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:49.5pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">Graphics testing is blocked; soft keyboard will be triggered wi=
th terminal icon;<o:p></o:p></span></p>
</td>
<td width=3D"188" colspan=3D"5" style=3D"width:141.0pt;padding:0in 0in 0in =
0in;height:49.5pt">
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
</td>
</tr>
<tr style=3D"height:43.5pt">
<td width=3D"95" nowrap=3D"" colspan=3D"2" style=3D"width:70.9pt;border:sol=
id windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:43.5=
pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"ZH-CN" style=3D"font-size:10.0pt;font-family:SimSun;color:black">=1B$B!=
!=1B(B</span><span style=3D"font-size:10.0pt;font-family:SimSun;color:black=
"><o:p></o:p></span></p>
</td>
<td width=3D"125" nowrap=3D"" colspan=3D"7" style=3D"width:93.75pt;border-t=
op:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:=
solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:43.5pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">CrownBay<o:p></o:p></span></p>
</td>
<td width=3D"59" nowrap=3D"" colspan=3D"3" style=3D"width:44.05pt;border-to=
p:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:s=
olid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height=
:43.5pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">GOOD<o:p></o:p></span></p>
</td>
<td width=3D"192" colspan=3D"8" style=3D"width:144.3pt;border-top:none;bord=
er-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid window=
text 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:43.5pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">Grub installation failed;<o:p></o:p></span></p>
</td>
<td width=3D"188" colspan=3D"5" style=3D"width:141.0pt;padding:0in 0in 0in =
0in;height:43.5pt">
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"95" nowrap=3D"" colspan=3D"2" style=3D"width:70.9pt;border:sol=
id windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0=
pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"ZH-CN" style=3D"font-size:10.0pt;font-family:SimSun;color:black">=1B$B!=
!=1B(B</span><span style=3D"font-size:10.0pt;font-family:SimSun;color:black=
"><o:p></o:p></span></p>
</td>
<td width=3D"125" nowrap=3D"" colspan=3D"7" style=3D"width:93.75pt;border-t=
op:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:=
solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">JasperForest<o:p></o:p></span></p>
</td>
<td width=3D"59" nowrap=3D"" colspan=3D"3" style=3D"width:44.05pt;border-to=
p:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:s=
olid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height=
:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">GOOD<o:p></o:p></span></p>
</td>
<td width=3D"192" colspan=3D"8" style=3D"width:144.3pt;border-top:none;bord=
er-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid window=
text 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">Everything runs well<o:p></o:p></span></p>
</td>
<td width=3D"188" colspan=3D"5" style=3D"width:141.0pt;padding:0in 0in 0in =
0in;height:15.0pt">
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
</td>
</tr>
<tr style=3D"height:42.0pt">
<td width=3D"95" nowrap=3D"" colspan=3D"2" style=3D"width:70.9pt;border:sol=
id windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:42.0=
pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"ZH-CN" style=3D"font-size:10.0pt;font-family:SimSun;color:black">=1B$B!=
!=1B(B</span><span style=3D"font-size:10.0pt;font-family:SimSun;color:black=
"><o:p></o:p></span></p>
</td>
<td width=3D"125" nowrap=3D"" colspan=3D"7" style=3D"width:93.75pt;border-t=
op:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:=
solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:42.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">Blacksand<o:p></o:p></span></p>
</td>
<td width=3D"59" nowrap=3D"" colspan=3D"3" style=3D"width:44.05pt;border-to=
p:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:s=
olid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height=
:42.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">GOOD<o:p></o:p></span></p>
</td>
<td width=3D"192" colspan=3D"8" style=3D"width:144.3pt;border-top:none;bord=
er-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid window=
text 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:42.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">Grub installation failed; S3 does not work;<o:p></o:p></span></=
p>
</td>
<td width=3D"188" colspan=3D"5" style=3D"width:141.0pt;padding:0in 0in 0in =
0in;height:42.0pt">
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
</td>
</tr>
<tr style=3D"height:41.25pt">
<td width=3D"95" nowrap=3D"" colspan=3D"2" style=3D"width:70.9pt;border:sol=
id windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:41.2=
5pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"ZH-CN" style=3D"font-size:10.0pt;font-family:SimSun;color:black">=1B$B!=
!=1B(B</span><span style=3D"font-size:10.0pt;font-family:SimSun;color:black=
"><o:p></o:p></span></p>
</td>
<td width=3D"125" nowrap=3D"" colspan=3D"7" style=3D"width:93.75pt;border-t=
op:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:=
solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:41.25pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">eMenlow<o:p></o:p></span></p>
</td>
<td width=3D"59" nowrap=3D"" colspan=3D"3" style=3D"width:44.05pt;border-to=
p:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:s=
olid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height=
:41.25pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">GOOD<o:p></o:p></span></p>
</td>
<td width=3D"192" colspan=3D"8" style=3D"width:144.3pt;border-top:none;bord=
er-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid window=
text 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:41.25pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">System installation failed; S3 does not work;<o:p></o:p></span>=
</p>
</td>
<td width=3D"188" colspan=3D"5" style=3D"width:141.0pt;padding:0in 0in 0in =
0in;height:41.25pt">
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"95" nowrap=3D"" colspan=3D"2" style=3D"width:70.9pt;border:sol=
id windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0=
pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"ZH-CN" style=3D"font-size:10.0pt;font-family:SimSun;color:black">=1B$B!=
!=1B(B</span><span style=3D"font-size:10.0pt;font-family:SimSun;color:black=
"><o:p></o:p></span></p>
</td>
<td width=3D"125" nowrap=3D"" colspan=3D"7" style=3D"width:93.75pt;border-t=
op:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:=
solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">Beagleboard<o:p></o:p></span></p>
</td>
<td width=3D"59" nowrap=3D"" colspan=3D"3" style=3D"width:44.05pt;border-to=
p:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:s=
olid windowtext 1.0pt;background:red;padding:0in 5.4pt 0in 5.4pt;height:15.=
0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">BLOCK<o:p></o:p></span></p>
</td>
<td width=3D"192" colspan=3D"8" style=3D"width:144.3pt;border-top:none;bord=
er-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid window=
text 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">Build failed<o:p></o:p></span></p>
</td>
<td width=3D"188" colspan=3D"5" style=3D"width:141.0pt;padding:0in 0in 0in =
0in;height:15.0pt">
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
</td>
</tr>
<tr style=3D"height:26.25pt">
<td width=3D"95" nowrap=3D"" colspan=3D"2" style=3D"width:70.9pt;border:sol=
id windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:26.2=
5pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"ZH-CN" style=3D"font-size:10.0pt;font-family:SimSun;color:black">=1B$B!=
!=1B(B</span><span style=3D"font-size:10.0pt;font-family:SimSun;color:black=
"><o:p></o:p></span></p>
</td>
<td width=3D"125" nowrap=3D"" colspan=3D"7" style=3D"width:93.75pt;border-t=
op:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:=
solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">Routerstationpro<o:p></o:p></span></p>
</td>
<td width=3D"59" nowrap=3D"" colspan=3D"3" style=3D"width:44.05pt;border-to=
p:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:s=
olid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height=
:26.25pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">GOOD<o:p></o:p></span></p>
</td>
<td width=3D"192" colspan=3D"8" style=3D"width:144.3pt;border-top:none;bord=
er-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid window=
text 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">Everything runs well<o:p></o:p></span></p>
</td>
<td width=3D"188" colspan=3D"5" style=3D"width:141.0pt;padding:0in 0in 0in =
0in;height:26.25pt">
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"95" nowrap=3D"" colspan=3D"2" style=3D"width:70.9pt;border:sol=
id windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0=
pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"ZH-CN" style=3D"font-size:10.0pt;font-family:SimSun;color:black">=1B$B!=
!=1B(B</span><span style=3D"font-size:10.0pt;font-family:SimSun;color:black=
"><o:p></o:p></span></p>
</td>
<td width=3D"125" nowrap=3D"" colspan=3D"7" style=3D"width:93.75pt;border-t=
op:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:=
solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">Mpc8315e-rdb<o:p></o:p></span></p>
</td>
<td width=3D"59" nowrap=3D"" colspan=3D"3" style=3D"width:44.05pt;border-to=
p:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:s=
olid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height=
:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">GOOD<o:p></o:p></span></p>
</td>
<td width=3D"192" colspan=3D"8" style=3D"width:144.3pt;border-top:none;bord=
er-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid window=
text 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">Everything runs well<o:p></o:p></span></p>
</td>
<td width=3D"188" colspan=3D"5" style=3D"width:141.0pt;padding:0in 0in 0in =
0in;height:15.0pt">
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
</td>
</tr>
<tr style=3D"height:26.25pt">
<td width=3D"95" nowrap=3D"" colspan=3D"2" style=3D"width:70.9pt;border:sol=
id windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:26.2=
5pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><b><span st=
yle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">QEMU<o:p></o:p></span></b></p>
</td>
<td width=3D"125" nowrap=3D"" colspan=3D"7" style=3D"width:93.75pt;border-t=
op:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:=
solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">qemux86<o:p></o:p></span></p>
</td>
<td width=3D"59" nowrap=3D"" colspan=3D"3" style=3D"width:44.05pt;border-to=
p:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:s=
olid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height=
:26.25pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">GOOD<o:p></o:p></span></p>
</td>
<td width=3D"192" colspan=3D"8" style=3D"width:144.3pt;border-top:none;bord=
er-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid window=
text 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">Everything runs well<o:p></o:p></span></p>
</td>
<td width=3D"188" colspan=3D"5" style=3D"width:141.0pt;padding:0in 0in 0in =
0in;height:26.25pt">
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"95" nowrap=3D"" colspan=3D"2" style=3D"width:70.9pt;border:sol=
id windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0=
pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"ZH-CN" style=3D"font-size:10.0pt;font-family:SimSun;color:black">=1B$B!=
!=1B(B</span><span style=3D"font-size:10.0pt;font-family:SimSun;color:black=
"><o:p></o:p></span></p>
</td>
<td width=3D"125" nowrap=3D"" colspan=3D"7" style=3D"width:93.75pt;border-t=
op:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:=
solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">qemux86-64<o:p></o:p></span></p>
</td>
<td width=3D"59" nowrap=3D"" colspan=3D"3" style=3D"width:44.05pt;border-to=
p:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:s=
olid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height=
:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">GOOD<o:p></o:p></span></p>
</td>
<td width=3D"192" colspan=3D"8" style=3D"width:144.3pt;border-top:none;bord=
er-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid window=
text 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">Everything runs well<o:p></o:p></span></p>
</td>
<td width=3D"188" colspan=3D"5" style=3D"width:141.0pt;padding:0in 0in 0in =
0in;height:15.0pt">
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
</td>
</tr>
<tr style=3D"height:26.25pt">
<td width=3D"95" nowrap=3D"" colspan=3D"2" style=3D"width:70.9pt;border:sol=
id windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:26.2=
5pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"ZH-CN" style=3D"font-size:10.0pt;font-family:SimSun;color:black">=1B$B!=
!=1B(B</span><span style=3D"font-size:10.0pt;font-family:SimSun;color:black=
"><o:p></o:p></span></p>
</td>
<td width=3D"125" nowrap=3D"" colspan=3D"7" style=3D"width:93.75pt;border-t=
op:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:=
solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">qemuarm<o:p></o:p></span></p>
</td>
<td width=3D"59" nowrap=3D"" colspan=3D"3" style=3D"width:44.05pt;border-to=
p:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:s=
olid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height=
:26.25pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">GOOD<o:p></o:p></span></p>
</td>
<td width=3D"192" colspan=3D"8" style=3D"width:144.3pt;border-top:none;bord=
er-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid window=
text 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">Everything runs well<o:p></o:p></span></p>
</td>
<td width=3D"188" colspan=3D"5" style=3D"width:141.0pt;padding:0in 0in 0in =
0in;height:26.25pt">
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
</td>
</tr>
<tr style=3D"height:26.25pt">
<td width=3D"95" nowrap=3D"" colspan=3D"2" style=3D"width:70.9pt;border:sol=
id windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:26.2=
5pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"ZH-CN" style=3D"font-size:10.0pt;font-family:SimSun;color:black">=1B$B!=
!=1B(B</span><span style=3D"font-size:10.0pt;font-family:SimSun;color:black=
"><o:p></o:p></span></p>
</td>
<td width=3D"125" nowrap=3D"" colspan=3D"7" style=3D"width:93.75pt;border-t=
op:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:=
solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">qemuppc<o:p></o:p></span></p>
</td>
<td width=3D"59" nowrap=3D"" colspan=3D"3" style=3D"width:44.05pt;border-to=
p:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:s=
olid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height=
:26.25pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">GOOD<o:p></o:p></span></p>
</td>
<td width=3D"192" colspan=3D"8" style=3D"width:144.3pt;border-top:none;bord=
er-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid window=
text 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">unfs does not work with qemuppc<o:p></o:p></span></p>
</td>
<td width=3D"188" colspan=3D"5" style=3D"width:141.0pt;padding:0in 0in 0in =
0in;height:26.25pt">
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
</td>
</tr>
<tr style=3D"height:26.25pt">
<td width=3D"95" nowrap=3D"" colspan=3D"2" style=3D"width:70.9pt;border:sol=
id windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:26.2=
5pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"ZH-CN" style=3D"font-size:10.0pt;font-family:SimSun;color:black">=1B$B!=
!=1B(B</span><span style=3D"font-size:10.0pt;font-family:SimSun;color:black=
"><o:p></o:p></span></p>
</td>
<td width=3D"125" nowrap=3D"" colspan=3D"7" style=3D"width:93.75pt;border-t=
op:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:=
solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">qemumips<o:p></o:p></span></p>
</td>
<td width=3D"59" nowrap=3D"" colspan=3D"3" style=3D"width:44.05pt;border-to=
p:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:s=
olid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height=
:26.25pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">GOOD<o:p></o:p></span></p>
</td>
<td width=3D"192" colspan=3D"8" style=3D"width:144.3pt;border-top:none;bord=
er-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid window=
text 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">Everything runs well<o:p></o:p></span></p>
</td>
<td width=3D"188" colspan=3D"5" style=3D"width:141.0pt;padding:0in 0in 0in =
0in;height:26.25pt">
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
</td>
</tr>
<tr style=3D"height:29.25pt">
<td width=3D"95" nowrap=3D"" colspan=3D"2" style=3D"width:70.9pt;border:sol=
id windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:29.2=
5pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><b><span st=
yle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">ADT<o:p></o:p></span></b></p>
</td>
<td width=3D"125" nowrap=3D"" colspan=3D"7" style=3D"width:93.75pt;border-t=
op:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:=
solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:29.25pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"ZH-CN" style=3D"font-family:SimSun;color:black">=1B$B!!=1B(B</span><spa=
n style=3D"font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"59" nowrap=3D"" colspan=3D"3" style=3D"width:44.05pt;border-to=
p:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:s=
olid windowtext 1.0pt;background:#FFC000;padding:0in 5.4pt 0in 5.4pt;height=
:29.25pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">Buggy<o:p></o:p></span></p>
</td>
<td width=3D"192" colspan=3D"8" style=3D"width:144.3pt;border-top:none;bord=
er-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid window=
text 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:29.25pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">unfs does not work with qemuppc<o:p></o:p></span></p>
</td>
<td width=3D"188" colspan=3D"5" style=3D"width:141.0pt;padding:0in 0in 0in =
0in;height:29.25pt">
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
</td>
</tr>
<tr>
<td width=3D"89" style=3D"width:66.75pt;padding:0in 0in 0in 0in"></td>
<td width=3D"5" style=3D"width:3.75pt;padding:0in 0in 0in 0in"></td>
<td width=3D"4" style=3D"width:3.0pt;padding:0in 0in 0in 0in"></td>
<td width=3D"10" style=3D"width:7.5pt;padding:0in 0in 0in 0in"></td>
<td width=3D"12" style=3D"width:9.0pt;padding:0in 0in 0in 0in"></td>
<td width=3D"18" style=3D"width:13.5pt;padding:0in 0in 0in 0in"></td>
<td width=3D"57" style=3D"width:42.75pt;padding:0in 0in 0in 0in"></td>
<td width=3D"12" style=3D"width:9.0pt;padding:0in 0in 0in 0in"></td>
<td width=3D"12" style=3D"width:9.0pt;padding:0in 0in 0in 0in"></td>
<td width=3D"4" style=3D"width:3.0pt;padding:0in 0in 0in 0in"></td>
<td width=3D"43" style=3D"width:32.25pt;padding:0in 0in 0in 0in"></td>
<td width=3D"11" style=3D"width:8.25pt;padding:0in 0in 0in 0in"></td>
<td width=3D"4" style=3D"width:3.0pt;padding:0in 0in 0in 0in"></td>
<td width=3D"10" style=3D"width:7.5pt;padding:0in 0in 0in 0in"></td>
<td width=3D"53" style=3D"width:39.75pt;padding:0in 0in 0in 0in"></td>
<td width=3D"13" style=3D"width:9.75pt;padding:0in 0in 0in 0in"></td>
<td width=3D"15" style=3D"width:11.25pt;padding:0in 0in 0in 0in"></td>
<td width=3D"75" style=3D"width:56.25pt;padding:0in 0in 0in 0in"></td>
<td width=3D"1" style=3D"width:.75pt;padding:0in 0in 0in 0in"></td>
<td width=3D"21" style=3D"width:15.75pt;padding:0in 0in 0in 0in"></td>
<td width=3D"61" style=3D"width:45.75pt;padding:0in 0in 0in 0in"></td>
<td width=3D"41" style=3D"width:30.75pt;padding:0in 0in 0in 0in"></td>
<td width=3D"9" style=3D"width:6.75pt;padding:0in 0in 0in 0in"></td>
<td width=3D"19" style=3D"width:14.25pt;padding:0in 0in 0in 0in"></td>
<td width=3D"58" style=3D"width:43.5pt;padding:0in 0in 0in 0in"></td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></b></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" width=3D"579" style=3D"width:434.0pt;margin-left:-.75pt;border-colla=
pse:collapse">
<tbody>
<tr style=3D"height:14.25pt">
<td width=3D"73" nowrap=3D"" style=3D"width:55.0pt;background:red;padding:0=
in 5.4pt 0in 5.4pt;height:14.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"ZH-CN" style=3D"font-size:10.0pt;font-family:SimSun;color:black">=1B=
$B!!=1B(B</span><span style=3D"font-size:10.0pt;font-family:SimSun;color:bl=
ack"><o:p></o:p></span></p>
</td>
<td width=3D"442" nowrap=3D"" colspan=3D"11" style=3D"width:331.25pt;paddin=
g:0in 5.4pt 0in 5.4pt;height:14.25pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">Critical bugs, more than 50% test cases are blocked<o:p></o:p><=
/span></p>
</td>
<td width=3D"64" colspan=3D"2" style=3D"width:47.75pt;padding:0in 0in 0in 0=
in;height:14.25pt">
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
</td>
</tr>
<tr style=3D"height:14.25pt">
<td width=3D"73" nowrap=3D"" style=3D"width:55.0pt;background:#9BBB59;paddi=
ng:0in 5.4pt 0in 5.4pt;height:14.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"ZH-CN" style=3D"font-size:10.0pt;font-family:SimSun;color:black">=1B=
$B!!=1B(B</span><span style=3D"font-size:10.0pt;font-family:SimSun;color:bl=
ack"><o:p></o:p></span></p>
</td>
<td width=3D"442" nowrap=3D"" colspan=3D"11" style=3D"width:331.25pt;paddin=
g:0in 5.4pt 0in 5.4pt;height:14.25pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">Only Normal, Minor or Enhancement bugs, less than 10% test case=
s failed<o:p></o:p></span></p>
</td>
<td width=3D"64" colspan=3D"2" style=3D"width:47.75pt;padding:0in 0in 0in 0=
in;height:14.25pt">
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
</td>
</tr>
<tr style=3D"height:14.25pt">
<td width=3D"73" nowrap=3D"" style=3D"width:55.0pt;background:#FFC000;paddi=
ng:0in 5.4pt 0in 5.4pt;height:14.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"ZH-CN" style=3D"font-size:10.0pt;font-family:SimSun;color:black">=1B=
$B!!=1B(B</span><span style=3D"font-size:10.0pt;font-family:SimSun;color:bl=
ack"><o:p></o:p></span></p>
</td>
<td width=3D"442" nowrap=3D"" colspan=3D"11" style=3D"width:331.25pt;paddin=
g:0in 5.4pt 0in 5.4pt;height:14.25pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">Normal, Major and Critical bugs, more than 10% test cases faile=
d<o:p></o:p></span></p>
</td>
<td width=3D"64" colspan=3D"2" style=3D"width:47.75pt;border:none;border-bo=
ttom:solid windowtext 1.0pt;padding:0in 0in 0in 0in;height:14.25pt">
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
</td>
</tr>
<tr>
<td width=3D"73" style=3D"width:55.0pt;padding:0in 0in 0in 0in"></td>
<td width=3D"125" colspan=3D"2" style=3D"width:94.0pt;padding:0in 0in 0in 0=
in"></td>
<td width=3D"72" colspan=3D"2" style=3D"width:.75in;padding:0in 0in 0in 0in=
"></td>
<td width=3D"72" colspan=3D"2" style=3D"width:.75in;padding:0in 0in 0in 0in=
"></td>
<td width=3D"72" colspan=3D"2" style=3D"width:.75in;padding:0in 0in 0in 0in=
"></td>
<td width=3D"85" colspan=3D"2" style=3D"width:64.0pt;padding:0in 0in 0in 0i=
n"></td>
<td width=3D"15" style=3D"width:11.25pt;padding:0in 0in 0in 0in"></td>
<td width=3D"64" colspan=3D"2" style=3D"width:47.75pt;padding:0in 0in 0in 0=
in"></td>
</tr>
<tr style=3D"height:13.5pt">
<td width=3D"537" nowrap=3D"" colspan=3D"13" style=3D"width:403.0pt;border:=
solid windowtext 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4pt 0in=
 5.4pt;height:13.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Detailed Test Result for each component<o:p></o:p></span=
></b></p>
</td>
<td width=3D"41" style=3D"width:30.75pt;padding:0in 0in 0in 0in;height:13.5=
pt">
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
</td>
</tr>
<tr style=3D"height:39.0pt">
<td width=3D"155" nowrap=3D"" colspan=3D"2" style=3D"width:116.0pt;border:s=
olid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:39=
.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Target<o:p></o:p></span></b></p>
</td>
<td width=3D"72" colspan=3D"2" style=3D"width:.75in;border-top:none;border-=
left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtex=
t 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:39.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Total TCs</span></b><span style=3D"font-size:10.0pt;font=
-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black">
<b><o:p></o:p></b></span></p>
</td>
<td width=3D"72" colspan=3D"2" style=3D"width:.75in;border-top:none;border-=
left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtex=
t 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:39.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Not Run<o:p></o:p></span></b></p>
</td>
<td width=3D"72" colspan=3D"2" style=3D"width:.75in;border-top:none;border-=
left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtex=
t 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:39.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Passed</span></b><span style=3D"font-size:10.0pt;font-fa=
mily:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black">
<b><o:p></o:p></b></span></p>
</td>
<td width=3D"95" colspan=3D"2" style=3D"width:71.0pt;border-top:none;border=
-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowte=
xt 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:39.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Failed</span></b><span style=3D"font-size:10.0pt;font-fa=
mily:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black">
<b><o:p></o:p></b></span></p>
</td>
<td width=3D"72" colspan=3D"3" style=3D"width:.75in;border-top:none;border-=
left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtex=
t 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:39.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Not testable (Blocked)</span></b><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black">
<b><o:p></o:p></b></span></p>
</td>
<td width=3D"41" style=3D"width:30.75pt;padding:0in 0in 0in 0in;height:39.0=
pt">
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
</td>
</tr>
<tr style=3D"height:26.25pt">
<td width=3D"155" nowrap=3D"" colspan=3D"2" style=3D"width:116.0pt;border:s=
olid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:26=
.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Sugarbay Sato-SDK<o:p></o:p></span></b></p>
</td>
<td width=3D"72" colspan=3D"2" style=3D"width:.75in;border-top:none;border-=
left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtex=
t 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">55<o:p></o:p></span></p>
</td>
<td width=3D"72" colspan=3D"2" style=3D"width:.75in;border-top:none;border-=
left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtex=
t 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">0<o:p></o:p></span></p>
</td>
<td width=3D"72" colspan=3D"2" style=3D"width:.75in;border-top:none;border-=
left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtex=
t 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00B050">53<o:p></o:p></span></p>
</td>
<td width=3D"95" colspan=3D"2" style=3D"width:71.0pt;border-top:none;border=
-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowte=
xt 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">1 (bug 1101)<o:p></o:p></span></p>
</td>
<td width=3D"72" colspan=3D"3" style=3D"width:.75in;border-top:none;border-=
left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtex=
t 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">1 (bug 1112)<o:p></o:p></span></p>
</td>
<td width=3D"41" style=3D"width:30.75pt;padding:0in 0in 0in 0in;height:26.2=
5pt">
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
</td>
</tr>
<tr style=3D"height:13.5pt">
<td width=3D"155" nowrap=3D"" colspan=3D"2" style=3D"width:116.0pt;border:s=
olid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:13=
.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Crownbay Sato-SDK<o:p></o:p></span></b></p>
</td>
<td width=3D"72" colspan=3D"2" style=3D"width:.75in;border-top:none;border-=
left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtex=
t 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">54<o:p></o:p></span></p>
</td>
<td width=3D"72" colspan=3D"2" style=3D"width:.75in;border-top:none;border-=
left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtex=
t 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">0<o:p></o:p></span></p>
</td>
<td width=3D"72" colspan=3D"2" style=3D"width:.75in;border-top:none;border-=
left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtex=
t 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00B050">49<o:p></o:p></span></p>
</td>
<td width=3D"95" colspan=3D"2" style=3D"width:71.0pt;border-top:none;border=
-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowte=
xt 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">1 (bug 1099)<o:p></o:p></span></p>
</td>
<td width=3D"72" colspan=3D"3" style=3D"width:.75in;border-top:none;border-=
left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtex=
t 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">4<o:p></o:p></span></p>
</td>
<td width=3D"41" style=3D"width:30.75pt;padding:0in 0in 0in 0in;height:13.5=
pt">
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
</td>
</tr>
<tr style=3D"height:13.5pt">
<td width=3D"155" nowrap=3D"" colspan=3D"2" style=3D"width:116.0pt;border:s=
olid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:13=
.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Jasperforest LSB-SDK<o:p></o:p></span></b></p>
</td>
<td width=3D"72" colspan=3D"2" style=3D"width:.75in;border-top:none;border-=
left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtex=
t 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">31<o:p></o:p></span></p>
</td>
<td width=3D"72" colspan=3D"2" style=3D"width:.75in;border-top:none;border-=
left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtex=
t 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">0<o:p></o:p></span></p>
</td>
<td width=3D"72" colspan=3D"2" style=3D"width:.75in;border-top:none;border-=
left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtex=
t 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00B050">31<o:p></o:p></span></p>
</td>
<td width=3D"95" colspan=3D"2" style=3D"width:71.0pt;border-top:none;border=
-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowte=
xt 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0<o:p></o:p></span></p>
</td>
<td width=3D"72" colspan=3D"3" style=3D"width:.75in;border-top:none;border-=
left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtex=
t 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0<o:p></o:p></span></p>
</td>
<td width=3D"41" style=3D"width:30.75pt;padding:0in 0in 0in 0in;height:13.5=
pt">
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
</td>
</tr>
<tr style=3D"height:26.25pt">
<td width=3D"155" nowrap=3D"" colspan=3D"2" style=3D"width:116.0pt;border:s=
olid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:26=
.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">n450 Sato-SDK<o:p></o:p></span></b></p>
</td>
<td width=3D"72" colspan=3D"2" style=3D"width:.75in;border-top:none;border-=
left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtex=
t 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">54<o:p></o:p></span></p>
</td>
<td width=3D"72" colspan=3D"2" style=3D"width:.75in;border-top:none;border-=
left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtex=
t 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">0<o:p></o:p></span></p>
</td>
<td width=3D"72" colspan=3D"2" style=3D"width:.75in;border-top:none;border-=
left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtex=
t 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00B050">48<o:p></o:p></span></p>
</td>
<td width=3D"95" colspan=3D"2" style=3D"width:71.0pt;border-top:none;border=
-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowte=
xt 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">2 (bug 613, 1099)<o:p></o:p></span></p>
</td>
<td width=3D"72" colspan=3D"3" style=3D"width:.75in;border-top:none;border-=
left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtex=
t 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">4<o:p></o:p></span></p>
</td>
<td width=3D"41" style=3D"width:30.75pt;padding:0in 0in 0in 0in;height:26.2=
5pt">
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
</td>
</tr>
<tr style=3D"height:26.25pt">
<td width=3D"155" nowrap=3D"" colspan=3D"2" style=3D"width:116.0pt;border:s=
olid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:26=
.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">eMenlow Sato-SDK<o:p></o:p></span></b></p>
</td>
<td width=3D"72" colspan=3D"2" style=3D"width:.75in;border-top:none;border-=
left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtex=
t 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">54<o:p></o:p></span></p>
</td>
<td width=3D"72" colspan=3D"2" style=3D"width:.75in;border-top:none;border-=
left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtex=
t 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">0<o:p></o:p></span></p>
</td>
<td width=3D"72" colspan=3D"2" style=3D"width:.75in;border-top:none;border-=
left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtex=
t 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00B050">48<o:p></o:p></span></p>
</td>
<td width=3D"95" colspan=3D"2" style=3D"width:71.0pt;border-top:none;border=
-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowte=
xt 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">2 (bug 1099, 503)<o:p></o:p></span></p>
</td>
<td width=3D"72" colspan=3D"3" style=3D"width:.75in;border-top:none;border-=
left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtex=
t 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">4<o:p></o:p></span></p>
</td>
<td width=3D"41" style=3D"width:30.75pt;padding:0in 0in 0in 0in;height:26.2=
5pt">
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
</td>
</tr>
<tr style=3D"height:26.25pt">
<td width=3D"155" colspan=3D"2" style=3D"width:116.0pt;border:solid windowt=
ext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Routerstationpro Sato-SDK<o:p></o:p></span></b></p>
</td>
<td width=3D"72" colspan=3D"2" style=3D"width:.75in;border-top:none;border-=
left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtex=
t 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">29<o:p></o:p></span></p>
</td>
<td width=3D"72" colspan=3D"2" style=3D"width:.75in;border-top:none;border-=
left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtex=
t 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">0<o:p></o:p></span></p>
</td>
<td width=3D"72" colspan=3D"2" style=3D"width:.75in;border-top:none;border-=
left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtex=
t 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00B050">29<o:p></o:p></span></p>
</td>
<td width=3D"95" colspan=3D"2" style=3D"width:71.0pt;border-top:none;border=
-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowte=
xt 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0<o:p></o:p></span></p>
</td>
<td width=3D"72" colspan=3D"3" style=3D"width:.75in;border-top:none;border-=
left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtex=
t 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0<o:p></o:p></span></p>
</td>
<td width=3D"41" style=3D"width:30.75pt;padding:0in 0in 0in 0in;height:26.2=
5pt">
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
</td>
</tr>
<tr style=3D"height:26.25pt">
<td width=3D"155" colspan=3D"2" style=3D"width:116.0pt;border:solid windowt=
ext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Mpc8315e-rdb Sato-SDK<o:p></o:p></span></b></p>
</td>
<td width=3D"72" colspan=3D"2" style=3D"width:.75in;border-top:none;border-=
left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtex=
t 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">30<o:p></o:p></span></p>
</td>
<td width=3D"72" colspan=3D"2" style=3D"width:.75in;border-top:none;border-=
left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtex=
t 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">0<o:p></o:p></span></p>
</td>
<td width=3D"72" colspan=3D"2" style=3D"width:.75in;border-top:none;border-=
left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtex=
t 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00B050">26<o:p></o:p></span></p>
</td>
<td width=3D"95" colspan=3D"2" style=3D"width:71.0pt;border-top:none;border=
-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowte=
xt 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">4 (bug 766)<o:p></o:p></span></p>
</td>
<td width=3D"72" colspan=3D"3" style=3D"width:.75in;border-top:none;border-=
left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtex=
t 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0<o:p></o:p></span></p>
</td>
<td width=3D"41" style=3D"width:30.75pt;padding:0in 0in 0in 0in;height:26.2=
5pt">
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
</td>
</tr>
<tr style=3D"height:13.5pt">
<td width=3D"155" nowrap=3D"" colspan=3D"2" style=3D"width:116.0pt;border:s=
olid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:13=
.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Qemux86-64 Sato<o:p></o:p></span></b></p>
</td>
<td width=3D"72" nowrap=3D"" colspan=3D"2" style=3D"width:.75in;border-top:=
none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:sol=
id windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">27<o:p></o:p></span></p>
</td>
<td width=3D"72" colspan=3D"2" valign=3D"top" style=3D"width:.75in;border-t=
op:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:=
solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">0<o:p></o:p></span></p>
</td>
<td width=3D"72" colspan=3D"2" valign=3D"top" style=3D"width:.75in;border-t=
op:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:=
solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00B050">27<o:p></o:p></span></p>
</td>
<td width=3D"95" colspan=3D"2" style=3D"width:71.0pt;border-top:none;border=
-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowte=
xt 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0<o:p></o:p></span></p>
</td>
<td width=3D"72" colspan=3D"3" style=3D"width:.75in;border-top:none;border-=
left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtex=
t 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0<o:p></o:p></span></p>
</td>
<td width=3D"41" style=3D"width:30.75pt;padding:0in 0in 0in 0in;height:13.5=
pt">
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
</td>
</tr>
<tr style=3D"height:13.5pt">
<td width=3D"155" nowrap=3D"" colspan=3D"2" style=3D"width:116.0pt;border:s=
olid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:13=
.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Qemux86-64 Sato-SDK<o:p></o:p></span></b></p>
</td>
<td width=3D"72" nowrap=3D"" colspan=3D"2" style=3D"width:.75in;border-top:=
none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:sol=
id windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">30<o:p></o:p></span></p>
</td>
<td width=3D"72" colspan=3D"2" style=3D"width:.75in;border-top:none;border-=
left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtex=
t 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">0<o:p></o:p></span></p>
</td>
<td width=3D"72" colspan=3D"2" style=3D"width:.75in;border-top:none;border-=
left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtex=
t 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00B050">30<o:p></o:p></span></p>
</td>
<td width=3D"95" colspan=3D"2" style=3D"width:71.0pt;border-top:none;border=
-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowte=
xt 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0<o:p></o:p></span></p>
</td>
<td width=3D"72" colspan=3D"3" style=3D"width:.75in;border-top:none;border-=
left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtex=
t 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0<o:p></o:p></span></p>
</td>
<td width=3D"41" style=3D"width:30.75pt;padding:0in 0in 0in 0in;height:13.5=
pt">
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
</td>
</tr>
<tr style=3D"height:13.5pt">
<td width=3D"155" nowrap=3D"" colspan=3D"2" style=3D"width:116.0pt;border:s=
olid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:13=
.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Qemux86 Sato<o:p></o:p></span></b></p>
</td>
<td width=3D"72" nowrap=3D"" colspan=3D"2" style=3D"width:.75in;border-top:=
none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:sol=
id windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">27<o:p></o:p></span></p>
</td>
<td width=3D"72" colspan=3D"2" valign=3D"top" style=3D"width:.75in;border-t=
op:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:=
solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">0<o:p></o:p></span></p>
</td>
<td width=3D"72" colspan=3D"2" valign=3D"top" style=3D"width:.75in;border-t=
op:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:=
solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00B050">27<o:p></o:p></span></p>
</td>
<td width=3D"95" colspan=3D"2" style=3D"width:71.0pt;border-top:none;border=
-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowte=
xt 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0<o:p></o:p></span></p>
</td>
<td width=3D"72" colspan=3D"3" style=3D"width:.75in;border-top:none;border-=
left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtex=
t 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0<o:p></o:p></span></p>
</td>
<td width=3D"41" style=3D"width:30.75pt;padding:0in 0in 0in 0in;height:13.5=
pt">
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
</td>
</tr>
<tr style=3D"height:13.5pt">
<td width=3D"155" nowrap=3D"" colspan=3D"2" style=3D"width:116.0pt;border:s=
olid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:13=
.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Qemux86 Sato-SDK<o:p></o:p></span></b></p>
</td>
<td width=3D"72" nowrap=3D"" colspan=3D"2" style=3D"width:.75in;border-top:=
none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:sol=
id windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">30<o:p></o:p></span></p>
</td>
<td width=3D"72" colspan=3D"2" valign=3D"top" style=3D"width:.75in;border-t=
op:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:=
solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">0<o:p></o:p></span></p>
</td>
<td width=3D"72" colspan=3D"2" valign=3D"top" style=3D"width:.75in;border-t=
op:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:=
solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00B050">30<o:p></o:p></span></p>
</td>
<td width=3D"95" colspan=3D"2" style=3D"width:71.0pt;border-top:none;border=
-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowte=
xt 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0<o:p></o:p></span></p>
</td>
<td width=3D"72" colspan=3D"3" style=3D"width:.75in;border-top:none;border-=
left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtex=
t 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0<o:p></o:p></span></p>
</td>
<td width=3D"41" style=3D"width:30.75pt;padding:0in 0in 0in 0in;height:13.5=
pt">
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
</td>
</tr>
<tr style=3D"height:13.5pt">
<td width=3D"155" nowrap=3D"" colspan=3D"2" style=3D"width:116.0pt;border:s=
olid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:13=
.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Qemumips Sato<o:p></o:p></span></b></p>
</td>
<td width=3D"72" nowrap=3D"" colspan=3D"2" style=3D"width:.75in;border-top:=
none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:sol=
id windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">26<o:p></o:p></span></p>
</td>
<td width=3D"72" nowrap=3D"" colspan=3D"2" style=3D"width:.75in;border-top:=
none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:sol=
id windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">0<o:p></o:p></span></p>
</td>
<td width=3D"72" nowrap=3D"" colspan=3D"2" style=3D"width:.75in;border-top:=
none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:sol=
id windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00B050">26<o:p></o:p></span></p>
</td>
<td width=3D"95" colspan=3D"2" style=3D"width:71.0pt;border-top:none;border=
-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowte=
xt 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0<o:p></o:p></span></p>
</td>
<td width=3D"72" colspan=3D"3" style=3D"width:.75in;border-top:none;border-=
left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtex=
t 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0<o:p></o:p></span></p>
</td>
<td width=3D"41" style=3D"width:30.75pt;padding:0in 0in 0in 0in;height:13.5=
pt">
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
</td>
</tr>
<tr style=3D"height:13.5pt">
<td width=3D"155" nowrap=3D"" colspan=3D"2" style=3D"width:116.0pt;border:s=
olid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:13=
.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Qemumips Sato-SDK<o:p></o:p></span></b></p>
</td>
<td width=3D"72" nowrap=3D"" colspan=3D"2" style=3D"width:.75in;border-top:=
none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:sol=
id windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">32<o:p></o:p></span></p>
</td>
<td width=3D"72" nowrap=3D"" colspan=3D"2" style=3D"width:.75in;border-top:=
none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:sol=
id windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">0<o:p></o:p></span></p>
</td>
<td width=3D"72" nowrap=3D"" colspan=3D"2" style=3D"width:.75in;border-top:=
none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:sol=
id windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00B050">32<o:p></o:p></span></p>
</td>
<td width=3D"95" colspan=3D"2" style=3D"width:71.0pt;border-top:none;border=
-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowte=
xt 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0<o:p></o:p></span></p>
</td>
<td width=3D"72" colspan=3D"3" style=3D"width:.75in;border-top:none;border-=
left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtex=
t 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0<o:p></o:p></span></p>
</td>
<td width=3D"41" style=3D"width:30.75pt;padding:0in 0in 0in 0in;height:13.5=
pt">
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
</td>
</tr>
<tr style=3D"height:13.5pt">
<td width=3D"155" nowrap=3D"" colspan=3D"2" style=3D"width:116.0pt;border:s=
olid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:13=
.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Qemuppc Sato<o:p></o:p></span></b></p>
</td>
<td width=3D"72" nowrap=3D"" colspan=3D"2" style=3D"width:.75in;border-top:=
none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:sol=
id windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">20<o:p></o:p></span></p>
</td>
<td width=3D"72" nowrap=3D"" colspan=3D"2" style=3D"width:.75in;border-top:=
none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:sol=
id windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">0<o:p></o:p></span></p>
</td>
<td width=3D"72" nowrap=3D"" colspan=3D"2" style=3D"width:.75in;border-top:=
none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:sol=
id windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00B050">19<o:p></o:p></span></p>
</td>
<td width=3D"95" colspan=3D"2" style=3D"width:71.0pt;border-top:none;border=
-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowte=
xt 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0<o:p></o:p></span></p>
</td>
<td width=3D"72" colspan=3D"3" style=3D"width:.75in;border-top:none;border-=
left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtex=
t 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">1 (bug 414)<o:p></o:p></span></p>
</td>
<td width=3D"41" style=3D"width:30.75pt;padding:0in 0in 0in 0in;height:13.5=
pt">
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
</td>
</tr>
<tr style=3D"height:13.5pt">
<td width=3D"155" nowrap=3D"" colspan=3D"2" style=3D"width:116.0pt;border:s=
olid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:13=
.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Qemuppc Sato-SDK<o:p></o:p></span></b></p>
</td>
<td width=3D"72" nowrap=3D"" colspan=3D"2" style=3D"width:.75in;border-top:=
none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:sol=
id windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">26<o:p></o:p></span></p>
</td>
<td width=3D"72" nowrap=3D"" colspan=3D"2" style=3D"width:.75in;border-top:=
none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:sol=
id windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">0<o:p></o:p></span></p>
</td>
<td width=3D"72" nowrap=3D"" colspan=3D"2" style=3D"width:.75in;border-top:=
none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:sol=
id windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00B050">25<o:p></o:p></span></p>
</td>
<td width=3D"95" colspan=3D"2" style=3D"width:71.0pt;border-top:none;border=
-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowte=
xt 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0<o:p></o:p></span></p>
</td>
<td width=3D"72" colspan=3D"3" style=3D"width:.75in;border-top:none;border-=
left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtex=
t 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">1 (bug 414)<o:p></o:p></span></p>
</td>
<td width=3D"41" style=3D"width:30.75pt;padding:0in 0in 0in 0in;height:13.5=
pt">
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
</td>
</tr>
<tr style=3D"height:13.5pt">
<td width=3D"155" nowrap=3D"" colspan=3D"2" style=3D"width:116.0pt;border:s=
olid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:13=
.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Qemuarm Sato<o:p></o:p></span></b></p>
</td>
<td width=3D"72" nowrap=3D"" colspan=3D"2" style=3D"width:.75in;border-top:=
none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:sol=
id windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">26<o:p></o:p></span></p>
</td>
<td width=3D"72" nowrap=3D"" colspan=3D"2" style=3D"width:.75in;border-top:=
none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:sol=
id windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">0<o:p></o:p></span></p>
</td>
<td width=3D"72" nowrap=3D"" colspan=3D"2" style=3D"width:.75in;border-top:=
none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:sol=
id windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00B050">26<o:p></o:p></span></p>
</td>
<td width=3D"95" colspan=3D"2" style=3D"width:71.0pt;border-top:none;border=
-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowte=
xt 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0<o:p></o:p></span></p>
</td>
<td width=3D"72" colspan=3D"3" style=3D"width:.75in;border-top:none;border-=
left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtex=
t 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0<o:p></o:p></span></p>
</td>
<td width=3D"41" style=3D"width:30.75pt;padding:0in 0in 0in 0in;height:13.5=
pt">
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
</td>
</tr>
<tr style=3D"height:13.5pt">
<td width=3D"155" nowrap=3D"" colspan=3D"2" style=3D"width:116.0pt;border:s=
olid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:13=
.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Qemuarm Sato-SDK<o:p></o:p></span></b></p>
</td>
<td width=3D"72" nowrap=3D"" colspan=3D"2" style=3D"width:.75in;border-top:=
none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:sol=
id windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">32<o:p></o:p></span></p>
</td>
<td width=3D"72" nowrap=3D"" colspan=3D"2" style=3D"width:.75in;border-top:=
none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:sol=
id windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">0<o:p></o:p></span></p>
</td>
<td width=3D"72" nowrap=3D"" colspan=3D"2" style=3D"width:.75in;border-top:=
none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:sol=
id windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00B050">32<o:p></o:p></span></p>
</td>
<td width=3D"95" colspan=3D"2" style=3D"width:71.0pt;border-top:none;border=
-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowte=
xt 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0<o:p></o:p></span></p>
</td>
<td width=3D"72" colspan=3D"3" style=3D"width:.75in;border-top:none;border-=
left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtex=
t 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0<o:p></o:p></span></p>
</td>
<td width=3D"41" style=3D"width:30.75pt;padding:0in 0in 0in 0in;height:13.5=
pt">
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
</td>
</tr>
<tr style=3D"height:13.5pt">
<td width=3D"155" nowrap=3D"" colspan=3D"2" style=3D"width:116.0pt;border:s=
olid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:13=
.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">ADT<o:p></o:p></span></b></p>
</td>
<td width=3D"72" nowrap=3D"" colspan=3D"2" style=3D"width:.75in;border-top:=
none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:sol=
id windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">6<o:p></o:p></span></p>
</td>
<td width=3D"72" nowrap=3D"" colspan=3D"2" style=3D"width:.75in;border-top:=
none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:sol=
id windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">0<o:p></o:p></span></p>
</td>
<td width=3D"72" nowrap=3D"" colspan=3D"2" style=3D"width:.75in;border-top:=
none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:sol=
id windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00B050">5<o:p></o:p></span></p>
</td>
<td width=3D"95" colspan=3D"2" style=3D"width:71.0pt;border-top:none;border=
-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowte=
xt 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">1 (bug 414)<o:p></o:p></span></p>
</td>
<td width=3D"72" colspan=3D"3" style=3D"width:.75in;border-top:none;border-=
left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtex=
t 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0<o:p></o:p></span></p>
</td>
<td width=3D"41" style=3D"width:30.75pt;padding:0in 0in 0in 0in;height:13.5=
pt">
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
</td>
</tr>
<tr style=3D"height:13.5pt">
<td width=3D"155" nowrap=3D"" colspan=3D"2" style=3D"width:116.0pt;border:s=
olid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:13=
.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Total<o:p></o:p></span></b></p>
</td>
<td width=3D"72" nowrap=3D"" colspan=3D"2" style=3D"width:.75in;border-top:=
none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:sol=
id windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">589<o:p></o:p></span></p>
</td>
<td width=3D"72" nowrap=3D"" colspan=3D"2" style=3D"width:.75in;border-top:=
none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:sol=
id windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">0<o:p></o:p></span></p>
</td>
<td width=3D"72" nowrap=3D"" colspan=3D"2" style=3D"width:.75in;border-top:=
none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:sol=
id windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">563<o:p></o:p></span></p>
</td>
<td width=3D"95" colspan=3D"2" style=3D"width:71.0pt;border-top:none;border=
-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowte=
xt 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">11<o:p></o:p></span></p>
</td>
<td width=3D"72" colspan=3D"3" style=3D"width:.75in;border-top:none;border-=
left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtex=
t 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">15<o:p></o:p></span></p>
</td>
<td width=3D"41" style=3D"width:30.75pt;padding:0in 0in 0in 0in;height:13.5=
pt">
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
</td>
</tr>
<tr>
<td width=3D"73" style=3D"width:54.75pt;padding:0in 0in 0in 0in"></td>
<td width=3D"81" style=3D"width:60.75pt;padding:0in 0in 0in 0in"></td>
<td width=3D"44" style=3D"width:33.0pt;padding:0in 0in 0in 0in"></td>
<td width=3D"28" style=3D"width:21.0pt;padding:0in 0in 0in 0in"></td>
<td width=3D"44" style=3D"width:33.0pt;padding:0in 0in 0in 0in"></td>
<td width=3D"28" style=3D"width:21.0pt;padding:0in 0in 0in 0in"></td>
<td width=3D"44" style=3D"width:33.0pt;padding:0in 0in 0in 0in"></td>
<td width=3D"28" style=3D"width:21.0pt;padding:0in 0in 0in 0in"></td>
<td width=3D"44" style=3D"width:33.0pt;padding:0in 0in 0in 0in"></td>
<td width=3D"51" style=3D"width:38.25pt;padding:0in 0in 0in 0in"></td>
<td width=3D"35" style=3D"width:26.25pt;padding:0in 0in 0in 0in"></td>
<td width=3D"15" style=3D"width:11.25pt;padding:0in 0in 0in 0in"></td>
<td width=3D"22" style=3D"width:16.5pt;padding:0in 0in 0in 0in"></td>
<td width=3D"41" style=3D"width:30.75pt;padding:0in 0in 0in 0in"></td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></b></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" width=3D"674" style=3D"width:505.25pt;margin-left:-.75pt;border-coll=
apse:collapse">
<tbody>
<tr>
<td width=3D"72" style=3D"width:.75in;padding:0in 0in 0in 0in"></td>
<td width=3D"121" style=3D"width:91.0pt;padding:0in 0in 0in 0in"></td>
<td width=3D"72" colspan=3D"3" style=3D"width:54.25pt;padding:0in 0in 0in 0=
in"></td>
<td width=3D"72" colspan=3D"3" style=3D"width:.75in;padding:0in 0in 0in 0in=
"></td>
<td width=3D"72" colspan=3D"3" style=3D"width:.75in;padding:0in 0in 0in 0in=
"></td>
<td width=3D"130" colspan=3D"4" style=3D"width:97.75pt;padding:0in 0in 0in =
0in"></td>
<td width=3D"3" colspan=3D"2" style=3D"width:2.25pt;padding:0in 0in 0in 0in=
"></td>
<td width=3D"131" colspan=3D"3" style=3D"width:98.0pt;padding:0in 0in 0in 0=
in"></td>
</tr>
<tr>
<td width=3D"72" style=3D"width:.75in;padding:0in 0in 0in 0in"></td>
<td width=3D"121" style=3D"width:91.0pt;padding:0in 0in 0in 0in"></td>
<td width=3D"29" colspan=3D"2" style=3D"width:22.0pt;padding:0in 0in 0in 0i=
n"></td>
<td width=3D"43" style=3D"width:32.25pt;padding:0in 0in 0in 0in"></td>
<td width=3D"29" colspan=3D"2" style=3D"width:21.75pt;padding:0in 0in 0in 0=
in"></td>
<td width=3D"43" style=3D"width:32.25pt;padding:0in 0in 0in 0in"></td>
<td width=3D"29" colspan=3D"2" style=3D"width:21.75pt;padding:0in 0in 0in 0=
in"></td>
<td width=3D"43" style=3D"width:32.25pt;padding:0in 0in 0in 0in"></td>
<td width=3D"29" colspan=3D"2" style=3D"width:21.75pt;padding:0in 0in 0in 0=
in"></td>
<td width=3D"101" colspan=3D"2" style=3D"width:76.0pt;padding:0in 0in 0in 0=
in"></td>
<td width=3D"2" style=3D"width:1.5pt;padding:0in 0in 0in 0in"></td>
<td width=3D"1" style=3D"width:.75pt;padding:0in 0in 0in 0in"></td>
<td width=3D"71" colspan=3D"2" style=3D"width:53.5pt;padding:0in 0in 0in 0i=
n"></td>
<td width=3D"59" style=3D"width:44.5pt;padding:0in 0in 0in 0in"></td>
</tr>
<tr>
<td width=3D"72" style=3D"width:.75in;padding:0in 0in 0in 0in"></td>
<td width=3D"121" style=3D"width:91.0pt;padding:0in 0in 0in 0in"></td>
<td width=3D"5" style=3D"width:4.0pt;padding:0in 0in 0in 0in"></td>
<td width=3D"24" style=3D"width:.25in;padding:0in 0in 0in 0in"></td>
<td width=3D"43" style=3D"width:32.25pt;padding:0in 0in 0in 0in"></td>
<td width=3D"5" style=3D"width:3.75pt;padding:0in 0in 0in 0in"></td>
<td width=3D"24" style=3D"width:.25in;padding:0in 0in 0in 0in"></td>
<td width=3D"43" style=3D"width:32.25pt;padding:0in 0in 0in 0in"></td>
<td width=3D"5" style=3D"width:3.75pt;padding:0in 0in 0in 0in"></td>
<td width=3D"24" style=3D"width:.25in;padding:0in 0in 0in 0in"></td>
<td width=3D"43" style=3D"width:32.25pt;padding:0in 0in 0in 0in"></td>
<td width=3D"5" style=3D"width:3.75pt;padding:0in 0in 0in 0in"></td>
<td width=3D"24" style=3D"width:.25in;padding:0in 0in 0in 0in"></td>
<td width=3D"82" style=3D"width:61.6pt;padding:0in 0in 0in 0in"></td>
<td width=3D"19" style=3D"width:.2in;padding:0in 0in 0in 0in"></td>
<td width=3D"2" style=3D"width:1.5pt;padding:0in 0in 0in 0in"></td>
<td width=3D"1" style=3D"width:.75pt;padding:0in 0in 0in 0in"></td>
<td width=3D"57" style=3D"width:42.75pt;padding:0in 0in 0in 0in"></td>
<td width=3D"14" style=3D"width:10.75pt;padding:0in 0in 0in 0in"></td>
<td width=3D"59" style=3D"width:44.5pt;padding:0in 0in 0in 0in"></td>
</tr>
<tr>
<td width=3D"72" style=3D"width:.75in;padding:0in 0in 0in 0in"></td>
<td width=3D"121" style=3D"width:90.75pt;padding:0in 0in 0in 0in"></td>
<td width=3D"5" style=3D"width:3.75pt;padding:0in 0in 0in 0in"></td>
<td width=3D"24" style=3D"width:.25in;padding:0in 0in 0in 0in"></td>
<td width=3D"43" style=3D"width:32.25pt;padding:0in 0in 0in 0in"></td>
<td width=3D"5" style=3D"width:3.75pt;padding:0in 0in 0in 0in"></td>
<td width=3D"24" style=3D"width:.25in;padding:0in 0in 0in 0in"></td>
<td width=3D"43" style=3D"width:32.25pt;padding:0in 0in 0in 0in"></td>
<td width=3D"5" style=3D"width:3.75pt;padding:0in 0in 0in 0in"></td>
<td width=3D"24" style=3D"width:.25in;padding:0in 0in 0in 0in"></td>
<td width=3D"43" style=3D"width:32.25pt;padding:0in 0in 0in 0in"></td>
<td width=3D"5" style=3D"width:3.75pt;padding:0in 0in 0in 0in"></td>
<td width=3D"24" style=3D"width:.25in;padding:0in 0in 0in 0in"></td>
<td width=3D"82" style=3D"width:61.5pt;padding:0in 0in 0in 0in"></td>
<td width=3D"19" style=3D"width:14.25pt;padding:0in 0in 0in 0in"></td>
<td width=3D"2" style=3D"width:1.5pt;padding:0in 0in 0in 0in"></td>
<td width=3D"1" style=3D"width:.75pt;padding:0in 0in 0in 0in"></td>
<td width=3D"57" style=3D"width:42.75pt;padding:0in 0in 0in 0in"></td>
<td width=3D"14" style=3D"width:10.5pt;padding:0in 0in 0in 0in"></td>
<td width=3D"59" style=3D"width:44.25pt;padding:0in 0in 0in 0in"></td>
</tr>
</tbody>
</table>
<p class=3D"MsoPlainText"><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;">* You can check the detailed test resu=
lt in attachment for each target.<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;">** The failed/blocked case number is l=
isted with failed cases=1B$B!G=1B(B bug number.<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><b><span style=3D"font-size:10.0pt;font-family:&q=
uot;Arial&quot;,&quot;sans-serif&quot;">Commit Information<o:p></o:p></span=
></b></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;">--------------------------------------=
-<o:p></o:p></span></b></p>
<p class=3D"MsoPlainText"><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;">Tree/Branch: Poky/1.1_M1<o:p></o:p></s=
pan></p>
<p class=3D"MsoPlainText"><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;">Poky Commit: 4ff7af11ef69849ef9c16f585=
eae58ac920b222b<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;">Meta Branch: 1.1_M1<o:p></o:p></span><=
/p>
<p class=3D"MsoPlainText"><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;">Meta Commit: fc719f0cd6530ce15148b4aa2=
74f1644b461b298<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><b><span style=3D"font-size:10.0pt;font-family:&q=
uot;Arial&quot;,&quot;sans-serif&quot;">Issue Summary<o:p></o:p></span></b>=
</p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;">--------------------------------------=
-<o:p></o:p></span></b></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" width=3D"955" style=3D"width:716.6pt;margin-left:-1.15pt;border-coll=
apse:collapse">
<tbody>
<tr style=3D"height:14.25pt">
<td width=3D"275" nowrap=3D"" colspan=3D"2" style=3D"width:206.3pt;border:s=
olid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:14.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Component<o:p></o:p></span></b></p>
</td>
<td width=3D"558" nowrap=3D"" style=3D"width:418.15pt;border:solid windowte=
xt 1.0pt;border-left:none;padding:0in 5.4pt 0in 5.4pt;height:14.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Bug Number<o:p></o:p></span></b></p>
</td>
<td width=3D"123" nowrap=3D"" style=3D"width:92.15pt;border:solid windowtex=
t 1.0pt;border-left:none;padding:0in 5.4pt 0in 5.4pt;height:14.25pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><b><span st=
yle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Target Milestone<o:p></o:p></span></b></p>
</td>
</tr>
<tr style=3D"height:13.5pt">
<td width=3D"133" nowrap=3D"" rowspan=3D"6" style=3D"width:100.0pt;border:s=
olid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:13=
.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">System &amp; Core OS<o:p></o:p></span></b></p>
</td>
<td width=3D"142" nowrap=3D"" style=3D"width:106.3pt;border:none;border-bot=
tom:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Installation &amp; Boot<o:p></o:p></span></b></p>
</td>
<td width=3D"558" nowrap=3D"" style=3D"width:418.15pt;border-top:none;borde=
r-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid windowt=
ext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.5pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">Bug 1099: [blacksand/emenlow/crownbay] grub install failed with=
 sato-sdk live image<o:p></o:p></span></p>
</td>
<td width=3D"123" nowrap=3D"" style=3D"width:92.15pt;border:none;border-rig=
ht:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.5pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">1.1 M2<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:13.5pt">
<td width=3D"142" nowrap=3D"" rowspan=3D"2" style=3D"width:106.3pt;border:n=
one;border-bottom:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height=
:13.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Power Mangement<o:p></o:p></span></b></p>
</td>
<td width=3D"558" nowrap=3D"" style=3D"width:418.15pt;border-top:none;borde=
r-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid windowt=
ext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.5pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">Bug 613: [Blacksand]system cannot enter S3 standby mode<o:p></o=
:p></span></p>
</td>
<td width=3D"123" nowrap=3D"" style=3D"width:92.15pt;border:none;border-rig=
ht:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.5pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">1.1<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:13.5pt">
<td width=3D"558" nowrap=3D"" style=3D"width:418.15pt;border-top:none;borde=
r-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid windowt=
ext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.5pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">Bug 503: [emenlow] system cannot enter S3 standby mode
<o:p></o:p></span></p>
</td>
<td width=3D"123" nowrap=3D"" style=3D"width:92.15pt;border:none;border-rig=
ht:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.5pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">1.1<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:13.5pt">
<td width=3D"142" nowrap=3D"" rowspan=3D"3" style=3D"width:106.3pt;border:n=
one;border-bottom:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height=
:13.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Others<o:p></o:p></span></b></p>
</td>
<td width=3D"558" nowrap=3D"" style=3D"width:418.15pt;border-top:none;borde=
r-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid windowt=
ext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.5pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">Bug 1101: keyboard pop up when clicking terminal icon<o:p></o:p=
></span></p>
</td>
<td width=3D"123" nowrap=3D"" style=3D"width:92.15pt;border:none;border-rig=
ht:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.5pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">1.0 M2<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:13.5pt">
<td width=3D"558" nowrap=3D"" style=3D"width:418.15pt;border-top:none;borde=
r-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid windowt=
ext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.5pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">Bug 1107: Open or add person in contacts may segfault on sugarb=
ay/blacksand<o:p></o:p></span></p>
</td>
<td width=3D"123" nowrap=3D"" style=3D"width:92.15pt;border:none;border-rig=
ht:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.5pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">1.1 M2<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:13.5pt">
<td width=3D"558" nowrap=3D"" style=3D"width:418.15pt;border-top:none;borde=
r-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid windowt=
ext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.5pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">Bug 1097: The mouse can not click accurate to the icons in qemu=
mips X<o:p></o:p></span></p>
</td>
<td width=3D"123" nowrap=3D"" style=3D"width:92.15pt;border:none;border-rig=
ht:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.5pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">1.1 M2<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:13.5pt">
<td width=3D"275" nowrap=3D"" colspan=3D"2" rowspan=3D"2" style=3D"width:20=
6.3pt;border:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5=
.4pt;height:13.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Graphics<o:p></o:p></span></b></p>
</td>
<td width=3D"558" nowrap=3D"" style=3D"width:418.15pt;border:none;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.5pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">Bug 1112: [sugarbay] mesa-demos should be added into sato image=
 for graphics testing<o:p></o:p></span></p>
</td>
<td width=3D"123" nowrap=3D"" style=3D"width:92.15pt;border:none;border-rig=
ht:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.5pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">Not specified<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:13.5pt">
<td width=3D"558" nowrap=3D"" style=3D"width:418.15pt;border:none;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.5pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">Bug 883: [Sugarbay] GFX 3D game test fail to run with sugarbay =
BSP image due to libsdl.so
<o:p></o:p></span></p>
</td>
<td width=3D"123" nowrap=3D"" style=3D"width:92.15pt;border:none;border-rig=
ht:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.5pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">1.1<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:13.5pt">
<td width=3D"275" nowrap=3D"" colspan=3D"2" style=3D"width:206.3pt;border:s=
olid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:13=
.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Multimedia<o:p></o:p></span></b></p>
</td>
<td width=3D"558" nowrap=3D"" style=3D"width:418.15pt;border:none;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.5pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">Works well in sugarbay/n450/eMenlow/crownbay<o:p></o:p></span><=
/p>
</td>
<td width=3D"123" nowrap=3D"" style=3D"width:92.15pt;border:none;border-rig=
ht:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.5pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"ZH-CN" style=3D"font-size:10.0pt;font-family:SimSun;color:black">=1B$B!=
!=1B(B</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,=
&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:12.75pt">
<td width=3D"275" nowrap=3D"" colspan=3D"2" style=3D"width:206.3pt;border:s=
olid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:12=
.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">ADT<o:p></o:p></span></b></p>
</td>
<td width=3D"558" nowrap=3D"" style=3D"width:418.15pt;border-top:none;borde=
r-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowt=
ext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:12.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">Bug 414: [PPC] kernel panic when booting poky-image-sdk-qemuppc=
 through UNFS<o:p></o:p></span></p>
</td>
<td width=3D"123" nowrap=3D"" style=3D"width:92.15pt;border-top:none;border=
-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowte=
xt 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:12.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">1.1 M3<o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoPlainText"><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;">Verified Fixed Bugs:<o:p></o:p></span>=
</p>
<p class=3D"MsoPlainText" style=3D"margin-left:.25in;text-indent:-.25in;mso=
-list:l0 level1 lfo2">
<![if !supportLists]><span style=3D"font-size:10.0pt;font-family:&quot;Aria=
l&quot;,&quot;sans-serif&quot;"><span style=3D"mso-list:Ignore">1.<span sty=
le=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"font-size:10.0pt;font-family:=
&quot;Arial&quot;,&quot;sans-serif&quot;;color:black">Bug
<a href=3D"http://bugzilla.pokylinux.org/show_bug.cgi?id=3D1100">1100</a>: =
[emenlow/crownbay-noemgd] X window could not start up with sato-sdk image</=
span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;"><o:p></o:p></span></p>
<p class=3D"MsoPlainText" style=3D"margin-left:.25in;text-indent:-.25in;mso=
-list:l0 level1 lfo2">
<![if !supportLists]><span style=3D"font-size:10.0pt;font-family:&quot;Aria=
l&quot;,&quot;sans-serif&quot;"><span style=3D"mso-list:Ignore">2.<span sty=
le=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"font-size:10.0pt;font-family:=
&quot;Arial&quot;,&quot;sans-serif&quot;;color:black">Bug
<a href=3D"http://bugzilla.pokylinux.org/show_bug.cgi?id=3D1108">1108</a>: =
keyboard could not work in qemux86/x86-64</span><span style=3D"font-size:10=
.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><o:p></o:p></spa=
n></p>
<p class=3D"MsoPlainText" style=3D"margin-left:.25in;text-indent:-.25in;mso=
-list:l0 level1 lfo2">
<![if !supportLists]><span style=3D"font-size:10.0pt;font-family:&quot;Aria=
l&quot;,&quot;sans-serif&quot;"><span style=3D"mso-list:Ignore">3.<span sty=
le=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"font-size:10.0pt;font-family:=
&quot;Arial&quot;,&quot;sans-serif&quot;;color:black">Bug
<a href=3D"http://bugzilla.pokylinux.org/show_bug.cgi?id=3D1093">1093</a>: =
meta-toolchain-gmae: eglibc fails to build with 4.6</span><span style=3D"fo=
nt-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><o:p><=
/o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;">Best Regards,<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;">Jiajun<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_7E680CB2A76BB8438D08CF13C09FC53A010675ORSMSX101amrcorpi_--
