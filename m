Return-Path: <song.liu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 217B7E011F5
	for <poky@pokylinux.org>; Tue,  9 Aug 2011 09:37:26 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 09 Aug 2011 09:37:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,344,1309762800"; d="scan'208,217";a="36820016"
Received: from orsmsx602.amr.corp.intel.com ([10.22.226.211])
	by orsmga001.jf.intel.com with ESMTP; 09 Aug 2011 09:37:34 -0700
Received: from orsmsx102.amr.corp.intel.com (10.22.225.129) by
	orsmsx602.amr.corp.intel.com (10.22.226.211) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 9 Aug 2011 09:37:35 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.180]) by
	ORSMSX102.amr.corp.intel.com ([169.254.1.117]) with mapi id
	14.01.0323.003; Tue, 9 Aug 2011 09:37:34 -0700
From: "Liu, Song" <song.liu@intel.com>
To: "Xu, Jiajun" <jiajun.xu@intel.com>, "poky@pokylinux.org"
	<poky@pokylinux.org>, "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"Wold, Saul" <saul.wold@intel.com>, "Zhang, Jessica"
	<jessica.zhang@intel.com>, "Flanagan, Elizabeth"
	<elizabeth.flanagan@intel.com>
Thread-Topic: Weekly test report for Yocto1.1 M3 RC3 20110806 build
Thread-Index: AcxWdNI3FzWooIaESjWUQXmv+8xlagAJNO3gAAY360A=
Date: Tue, 9 Aug 2011 16:37:33 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A137692BA@ORSMSX101.amr.corp.intel.com>
References: <2F0982C572735F46B77790D29DA0FD8712D20AE1AF@shsmsx501.ccr.corp.intel.com>
	<D5AB6E638E5A3E4B8F4406B113A5A19A12D70F6B87@shsmsx501.ccr.corp.intel.com>
In-Reply-To: <D5AB6E638E5A3E4B8F4406B113A5A19A12D70F6B87@shsmsx501.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: Weekly test report for Yocto1.1 M3 RC3 20110806 build
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
X-List-Received-Date: Tue, 09 Aug 2011 16:37:26 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_7E680CB2A76BB8438D08CF13C09FC53A137692BAORSMSX101amrcor_"

--_000_7E680CB2A76BB8438D08CF13C09FC53A137692BAORSMSX101amrcor_
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

Jiajun, thanks a lot for the update. This looks good!

Song

From: Xu, Jiajun
Sent: Tuesday, August 09, 2011 6:41 AM
To: poky@pokylinux.org; yocto@yoctoproject.org; Wold, Saul; Liu, Song; Zhan=
g, Jessica; Flanagan, Elizabeth
Cc: Fan, WenhuaX; Zhao Yi
Subject: RE: Weekly test report for Yocto1.1 M3 RC3 20110806 build

Hi all,
There is no BLOCK issue with this build. QA will continue fullpass testing =
with it, if there is no new build.

Best Regards,
Jiajun

From: poky-bounces@yoctoproject.org [mailto:poky-bounces@yoctoproject.org] =
On Behalf Of Fan, WenhuaX
Sent: Tuesday, August 09, 2011 5:15 PM
To: poky@pokylinux.org; yocto@yoctoproject.org
Subject: [poky] Weekly test report for Yocto1.1 M3 RC3 20110806 build

Hi All,
       This is the weekly test report for Yocto 1.1 M3 RC3 20110806 build. =
There is one new bug found. RPM package can not be installed on qemuarm and=
 beagleboard. Some lsb images build failed on autobuilder. Standby and I2C =
issue still exist on Emenlow. Xorg eats lots of CUP=1B$B!G=1B(Bs resource a=
fter standby still exist on Crownbay. Broken ldd issue still exist in curre=
nt build. 3D test still is blocked on Sugarbay. The rpm/zypper install/remo=
val consume disk space still exists. For bug fixing, Broken grub issue has =
been fixed on Crownbay. Ld.so issue fixed for Qemux86-64 toolchain. Psplash=
 issue fixed on Blacksand. Sato and Sato-sdk for Qemux86-64 image boot succ=
essfully in current build.
Note=1B$B!'=1B(BFor different images, they are built against different comm=
it/branch on autobuilder. You can refer to =1B$B!H=1B(BCommit Information=
=1B$B!I=1B(B section for detailed information. The test report is archived =
@https://wiki.pokylinux.org/wiki/Yocto_1.1_Milestone_Test_Report


Test Summary:
---------------------------------------

Test Result Summary

Component

Target

Status

Comments

BSP

SugarBay

GOOD

3D testing blocked due to libsdl.so;RTLDLIST invalid in ldd command.

CrownBay-emgd

GOOD

Xorg eats lots of CPU time after standby

JasperForest

GOOD

I/OAT DMA engine init failed;

Blacksand

GOOD

Everything runs well

eMenlow

GOOD

I2C_transfer error; Standby failed;

Beagleboard

BUGGY

RPM package can not be installed.

Routerstationpro

GOOD

Everything runs well

Mpc8315e-rdb

GOOD

Everything runs well

QEMU

qemux86

GOOD

Rpm/zypper install/removal consume disk space;"Install/Remove" icon can't w=
ork.

qemux86-64

GOOD

Rpm/zypper install/removal consume disk space;"Install/Remove" icon can't w=
ork.

qemuarm

BUGGY

RPM package can not be installed.

qemuppc

GOOD

Unfs does not work with qemuppc

qemumips

GOOD

The image can not boot up.

ADT

=1B$B!!=1B(B

BUGGY

Unfs does not work with qemuppc;


=1B$B!!=1B(B

Critical bugs, more than 50% test cases are blocked

=1B$B!!=1B(B

Only Normal, Minor or Enhancement bugs, or less than 10% test cases failed

=1B$B!!=1B(B

Normal, Major and Critical bugs, and more than 10% test cases failed


Detailed Test Result for each component

Target

Total TCs

Not Run

Passed

Failed

Not testable (Blocked)

Sugarbay Sato-SDK

62

0

59

1 (bug 1236)

2 (bug 883)

Jasperforest Sato-SDK

34

0

33

1 (bug 1188)

0

n450 Sato-SDK

58

0

58

0

0

eMenlow Sato-SDK

58

0

56

2 (bug 310, 503)

0

Crownbay-Sato-SDK

59

0

59

0

0

Beagleboard

40

0

37

3 (bug 1352, 1234)

0

Routerstationpro

33

0

33

0

0

Mpc8315e-rdb

36

0

36

0

0

Qemux86-64 Sato

30

0

28

2 (bug 1174, 1234)

0

Qemux86-64 Sato-SDK

35

0

32

3 (bug 1174, 1234, 1236)

0

Qemux86 Sato

30

0

28

2 (bug 1174, 1234)

0

Qemux86 Sato-SDK

35

0

33

2 (bug 1174, 1234)

0

Qemumips Sato

30

0

29

1 (bug 1234)

0

Qemumips Sato-SDK

35

0

34

1 (bug 1234)

0

Qemuppc Sato

22

0

21

1 (bug 414)

0

Qemuppc Sato-SDK

27

0

26

1 (bug 414)

0

Qemuarm Sato

30

0

24

6 (bug 1352, 1234)

0

Qemuarm Sato-SDK

35

0

29

6 (bug 1352, 1234)

0

ADT

6

0

5

1 (bug 414)

0

Total

695

0

660

33

2




Commit Information
---------------------------------------

For Blacksand/Crownbay/Sugarbay/Jasperforest/Qemuarm/mips/ppc/beagleboard/m=
pc8315e-rdb/routerstationpro:

Tree/Branch: Poky/1.1_M3
Poky Commit id: abdec68876ac7ce1a6d5c223d1757b7e8a14b85f
Meta Branch 1.1_M3
Meta Commit id: da93dc24fd73079b4dbb6811b83e44a2036d54ef

For Emenlow:

Tree/Branch: Poky/1.1_M3
Poky Commit id: abdec68876ac7ce1a6d5c223d1757b7e8a14b85f
Meta Branch 1.1_M3
Meta Commit id: 09e70dff36a1c204f76fe07c08a4f37f526728fe

For Toolchain/Qemux86/Qemux86-64=1B$B!'=1B(B

Tree/Branch: Poky/1.1_M3
Poky Commit id: 1580d1624647bc07ffd4997b6c8cfbccd8040fc5



Issue Summary
---------------------------------------

Component

Bug Number

Target Milestone

System & Core OS

System Usage

Bug 503 - [emenlow] system cannot enter S3 standby mode

1.1

Bug 883 - [Sugarbay] GFX 3D game test fail to run with sugarbay BSP image d=
ue to libsdl.so

1.1

Bug 1174: [zypper/rpm] package install/removal costs lots of disk space

1.1 M4

Bug 1234: No response when I click the 'Install/Remove Software' icon

1.1 M3

New! Bug 1352: [qemuarm] RPM package can not be installed with 20110806 bui=
ld

1.1 M4

Other

Bug 310 - [eMenlow] i2c_transfer error on e-Menlow

1.1

Bug 1188 - [japerforest] I/OAT DMA engine init failed

1.1

Bug 1236 - Broken ldd due to wrong path for ld.so

1.1 M4

Bug 1258 -[crownbay] Xorg eats lots of CPU time after standby

1.1 M4

ADT

Bug 414: [PPC] kernel panic when booting poky-image-sdk-qemuppc through UNF=
S

1.1



Verified Fixed Bug:
---------------------------------------


1.     Bug 1211<http://bugzilla.pokylinux.org/show_bug.cgi?id=3D1211> - [Bl=
acksand] Psplash failed when boot up Yocto

2.     Bug 1257<http://bugzilla.pokylinux.org/show_bug.cgi?id=3D1257> - [cr=
ownbay] broken grub due to wrong root path

3.     Bug 1317<http://bugzilla.pokylinux.org/show_bug.cgi?id=3D1317> - [Qe=
mux86-64]sato and sato-sdk images boot failed

4.     Bug 1318<http://bugzilla.pokylinux.org/show_bug.cgi?id=3D1318> - [To=
olchain] wrong path to ld.so for x86_64 toolchain

5.     Bug 1351<http://bugzilla.pokylinux.org/show_bug.cgi?id=3D1351> - [em=
enlow] hdd image not found

6.     Bug 1314<http://bugzilla.pokylinux.org/show_bug.cgi?id=3D1314> - too=
lchain do_populate_sdk failed on autobuilder for arm/mips/ppc with 20110730=
 build


--_000_7E680CB2A76BB8438D08CF13C09FC53A137692BAORSMSX101amrcor_
Content-Type: text/html; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:x=3D"urn:schemas-microsoft-com:office:excel" xmlns:dt=3D"uuid:C2F4101=
0-65B3-11d1-A29F-00AA00C14882" xmlns:m=3D"http://schemas.microsoft.com/offi=
ce/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40">
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
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin:0in;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	text-indent:21.0pt;
	font-size:10.5pt;
	font-family:"Calibri","sans-serif";}
span.PlainTextChar
	{mso-style-name:"Plain Text Char";
	mso-style-priority:99;
	mso-style-link:"Plain Text";
	font-family:"Calibri","sans-serif";}
span.EmailStyle20
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.EmailStyle21
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle22
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
	{mso-list-id:342712185;
	mso-list-type:hybrid;
	mso-list-template-ids:173703454 307527806 67698713 67698715 67698703 67698=
713 67698715 67698703 67698713 67698715;}
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;color:#1F497D">Jiaju=
n, thanks a lot for the update. This looks good!<o:p></o:p></span></p>
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
a&quot;,&quot;sans-serif&quot;"> Xu, Jiajun
<br>
<b>Sent:</b> Tuesday, August 09, 2011 6:41 AM<br>
<b>To:</b> poky@pokylinux.org; yocto@yoctoproject.org; Wold, Saul; Liu, Son=
g; Zhang, Jessica; Flanagan, Elizabeth<br>
<b>Cc:</b> Fan, WenhuaX; Zhao Yi<br>
<b>Subject:</b> RE: Weekly test report for Yocto1.1 M3 RC3 20110806 build<o=
:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><o:p>&nbsp;=
</o:p></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:#1F497D">Hi all,<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:#1F497D">There is no BLOCK issue wit=
h this build. QA will continue fullpass testing with it, if there is no new=
 build.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span></p=
>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:#1F497D">Best Regards,<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:#1F497D">Jiajun<o:p></o:p></span></p=
>
</div>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0in 0in 0in =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><b><span st=
yle=3D"font-size:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quo=
t;">From:</span></b><span style=3D"font-size:10.0pt;font-family:&quot;Tahom=
a&quot;,&quot;sans-serif&quot;"> poky-bounces@yoctoproject.org [mailto:poky=
-bounces@yoctoproject.org]
<b>On Behalf Of </b>Fan, WenhuaX<br>
<b>Sent:</b> Tuesday, August 09, 2011 5:15 PM<br>
<b>To:</b> poky@pokylinux.org; yocto@yoctoproject.org<br>
<b>Subject:</b> [poky] Weekly test report for Yocto1.1 M3 RC3 20110806 buil=
d<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><o:p>&nbsp;=
</o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;">Hi All,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; This=
 is the weekly test report for Yocto 1.1 M3 RC3 20110806 build. There is on=
e new bug found. RPM package can not be installed on qemuarm and beagleboar=
d. Some lsb
 images build failed on autobuilder. Standby and I2C issue still exist on E=
menlow. Xorg eats lots of CUP=1B$B!G=1B(Bs resource after standby still exi=
st on Crownbay. Broken ldd issue still exist in current build. 3D test stil=
l is blocked on Sugarbay. The rpm/zypper install/removal
 consume disk space still exists. For bug fixing, Broken grub issue has bee=
n fixed on Crownbay. Ld.so issue fixed for Qemux86-64 toolchain. Psplash is=
sue fixed on Blacksand. Sato and Sato-sdk for Qemux86-64 image boot success=
fully in current build.<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-indent:21.0pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">Note</span><=
span lang=3D"ZH-CN" style=3D"font-size:10.0pt;font-family:SimSun">=1B$B!'=
=1B(B</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&=
quot;sans-serif&quot;">For
 different images, they are built against different commit/branch on autobu=
ilder. You can refer to =1B$B!H=1B(BCommit Information=1B$B!I=1B(B section =
for detailed information. The test report is archived @<a href=3D"https://w=
iki.pokylinux.org/wiki/Yocto_1.1_Milestone_Test_Report">https://wiki.pokyli=
nux.org/wiki/Yocto_1.1_Milestone_Test_Report</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;">Test Summary:<o:p></o:p></span></b></p=
>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;">--------------------------------------=
-<o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" width=3D"851" style=3D"width:638.0pt;margin-left:-.9pt;border-collap=
se:collapse">
<tbody>
<tr style=3D"height:21.0pt">
<td width=3D"851" nowrap=3D"" colspan=3D"4" valign=3D"bottom" style=3D"widt=
h:638.0pt;border:solid windowtext 1.0pt;border-right:solid black 1.0pt;padd=
ing:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Test Result Summary<o:p></o:p></span></b></p>
</td>
</tr>
<tr style=3D"height:21.0pt">
<td width=3D"117" nowrap=3D"" valign=3D"bottom" style=3D"width:88.1pt;borde=
r:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height=
:21.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><b><span st=
yle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Component<o:p></o:p></span></b></p>
</td>
<td width=3D"157" nowrap=3D"" valign=3D"bottom" style=3D"width:117.6pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><b><span st=
yle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Target<o:p></o:p></span></b></p>
</td>
<td width=3D"77" nowrap=3D"" valign=3D"bottom" style=3D"width:57.85pt;borde=
r-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-rig=
ht:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><b><span st=
yle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Status<o:p></o:p></span></b></p>
</td>
<td width=3D"499" valign=3D"bottom" style=3D"width:374.45pt;border-top:none=
;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid w=
indowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><b><span st=
yle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Comments<o:p></o:p></span></b></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"117" nowrap=3D"" rowspan=3D"8" style=3D"width:88.1pt;border-to=
p:none;border-left:solid windowtext 1.0pt;border-bottom:solid black 1.0pt;b=
order-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75=
pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">BSP<o:p></o:p></span></b></p>
</td>
<td width=3D"157" nowrap=3D"" valign=3D"bottom" style=3D"width:117.6pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">SugarBay<o:p></o:p></span></p>
</td>
<td width=3D"77" nowrap=3D"" valign=3D"bottom" style=3D"width:57.85pt;borde=
r-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-rig=
ht:solid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;he=
ight:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">GOOD<o:p></o:p></span></p>
</td>
<td width=3D"499" valign=3D"bottom" style=3D"width:374.45pt;border-top:none=
;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid w=
indowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">3D testing blocked due to libsdl.so;RTLDLIST invalid in ldd com=
mand.<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"157" nowrap=3D"" valign=3D"bottom" style=3D"width:117.6pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">CrownBay-emgd<o:p></o:p></span></p>
</td>
<td width=3D"77" nowrap=3D"" valign=3D"bottom" style=3D"width:57.85pt;borde=
r-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-rig=
ht:solid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;he=
ight:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">GOOD<o:p></o:p></span></p>
</td>
<td width=3D"499" valign=3D"bottom" style=3D"width:374.45pt;border-top:none=
;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid w=
indowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">Xorg eats lots of CPU time after standby<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"157" nowrap=3D"" valign=3D"bottom" style=3D"width:117.6pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">JasperForest<o:p></o:p></span></p>
</td>
<td width=3D"77" nowrap=3D"" valign=3D"bottom" style=3D"width:57.85pt;borde=
r-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-rig=
ht:solid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;he=
ight:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">GOOD<o:p></o:p></span></p>
</td>
<td width=3D"499" valign=3D"bottom" style=3D"width:374.45pt;border-top:none=
;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid w=
indowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">I/OAT DMA engine init failed;<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"157" nowrap=3D"" valign=3D"bottom" style=3D"width:117.6pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">Blacksand<o:p></o:p></span></p>
</td>
<td width=3D"77" nowrap=3D"" valign=3D"bottom" style=3D"width:57.85pt;borde=
r-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-rig=
ht:solid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;he=
ight:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">GOOD<o:p></o:p></span></p>
</td>
<td width=3D"499" valign=3D"bottom" style=3D"width:374.45pt;border-top:none=
;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid w=
indowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">Everything runs well<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"157" nowrap=3D"" valign=3D"bottom" style=3D"width:117.6pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">eMenlow<o:p></o:p></span></p>
</td>
<td width=3D"77" nowrap=3D"" valign=3D"bottom" style=3D"width:57.85pt;borde=
r-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-rig=
ht:solid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;he=
ight:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">GOOD<o:p></o:p></span></p>
</td>
<td width=3D"499" valign=3D"bottom" style=3D"width:374.45pt;border-top:none=
;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid w=
indowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">I2C_transfer error; Standby failed;<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"157" nowrap=3D"" valign=3D"bottom" style=3D"width:117.6pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">Beagleboard<o:p></o:p></span></p>
</td>
<td width=3D"77" nowrap=3D"" valign=3D"bottom" style=3D"width:57.85pt;borde=
r-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-rig=
ht:solid windowtext 1.0pt;background:#FFC000;padding:0in 5.4pt 0in 5.4pt;he=
ight:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">BUGGY<o:p></o:p></span></p>
</td>
<td width=3D"499" valign=3D"bottom" style=3D"width:374.45pt;border-top:none=
;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid w=
indowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">RPM package can not be installed.<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"157" nowrap=3D"" valign=3D"bottom" style=3D"width:117.6pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">Routerstationpro<o:p></o:p></span></p>
</td>
<td width=3D"77" nowrap=3D"" valign=3D"bottom" style=3D"width:57.85pt;borde=
r-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-rig=
ht:solid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;he=
ight:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">GOOD<o:p></o:p></span></p>
</td>
<td width=3D"499" valign=3D"bottom" style=3D"width:374.45pt;border-top:none=
;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid w=
indowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">Everything runs well<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"157" nowrap=3D"" valign=3D"bottom" style=3D"width:117.6pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">Mpc8315e-rdb<o:p></o:p></span></p>
</td>
<td width=3D"77" nowrap=3D"" valign=3D"bottom" style=3D"width:57.85pt;borde=
r-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-rig=
ht:solid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;he=
ight:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">GOOD<o:p></o:p></span></p>
</td>
<td width=3D"499" valign=3D"bottom" style=3D"width:374.45pt;border-top:none=
;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid w=
indowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">Everything runs well<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"117" nowrap=3D"" rowspan=3D"5" style=3D"width:88.1pt;border-to=
p:none;border-left:solid windowtext 1.0pt;border-bottom:solid black 1.0pt;b=
order-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75=
pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">QEMU<o:p></o:p></span></b></p>
</td>
<td width=3D"157" nowrap=3D"" valign=3D"bottom" style=3D"width:117.6pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">qemux86<o:p></o:p></span></p>
</td>
<td width=3D"77" nowrap=3D"" valign=3D"bottom" style=3D"width:57.85pt;borde=
r-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-rig=
ht:solid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;he=
ight:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">GOOD<o:p></o:p></span></p>
</td>
<td width=3D"499" valign=3D"bottom" style=3D"width:374.45pt;border-top:none=
;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid w=
indowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">Rpm/zypper install/removal consume disk space;&quot;Install/Rem=
ove&quot; icon can't work.<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"157" nowrap=3D"" valign=3D"bottom" style=3D"width:117.6pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">qemux86-64<o:p></o:p></span></p>
</td>
<td width=3D"77" nowrap=3D"" valign=3D"bottom" style=3D"width:57.85pt;borde=
r-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-rig=
ht:solid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;he=
ight:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">GOOD<o:p></o:p></span></p>
</td>
<td width=3D"499" valign=3D"bottom" style=3D"width:374.45pt;border-top:none=
;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid w=
indowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">Rpm/zypper install/removal consume disk space;&quot;Install/Rem=
ove&quot; icon can't work.<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"157" nowrap=3D"" valign=3D"bottom" style=3D"width:117.6pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">qemuarm<o:p></o:p></span></p>
</td>
<td width=3D"77" nowrap=3D"" valign=3D"bottom" style=3D"width:57.85pt;borde=
r-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-rig=
ht:solid windowtext 1.0pt;background:#FFC000;padding:0in 5.4pt 0in 5.4pt;he=
ight:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">BUGGY<o:p></o:p></span></p>
</td>
<td width=3D"499" valign=3D"bottom" style=3D"width:374.45pt;border-top:none=
;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid w=
indowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">RPM package can not be installed.<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"157" nowrap=3D"" valign=3D"bottom" style=3D"width:117.6pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">qemuppc<o:p></o:p></span></p>
</td>
<td width=3D"77" nowrap=3D"" valign=3D"bottom" style=3D"width:57.85pt;borde=
r-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-rig=
ht:solid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;he=
ight:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">GOOD<o:p></o:p></span></p>
</td>
<td width=3D"499" valign=3D"bottom" style=3D"width:374.45pt;border-top:none=
;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid w=
indowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">Unfs does not work with qemuppc<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"157" nowrap=3D"" valign=3D"bottom" style=3D"width:117.6pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">qemumips<o:p></o:p></span></p>
</td>
<td width=3D"77" nowrap=3D"" valign=3D"bottom" style=3D"width:57.85pt;borde=
r-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-rig=
ht:solid windowtext 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;he=
ight:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">GOOD<o:p></o:p></span></p>
</td>
<td width=3D"499" valign=3D"bottom" style=3D"width:374.45pt;border-top:none=
;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid w=
indowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">The image can not boot up.<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"117" nowrap=3D"" valign=3D"bottom" style=3D"width:88.1pt;borde=
r:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height=
:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">ADT<o:p></o:p></span></b></p>
</td>
<td width=3D"157" nowrap=3D"" valign=3D"bottom" style=3D"width:117.6pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span lang=
=3D"ZH-CN" style=3D"font-size:10.0pt;font-family:SimSun;color:black">=1B$B!=
!=1B(B</span><span style=3D"font-size:10.0pt;font-family:SimSun;color:black=
"><o:p></o:p></span></p>
</td>
<td width=3D"77" nowrap=3D"" valign=3D"bottom" style=3D"width:57.85pt;borde=
r-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-rig=
ht:solid windowtext 1.0pt;background:#FFC000;padding:0in 5.4pt 0in 5.4pt;he=
ight:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">BUGGY<o:p></o:p></span></p>
</td>
<td width=3D"499" valign=3D"bottom" style=3D"width:374.45pt;border-top:none=
;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid w=
indowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">Unfs does not work with qemuppc;
<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:21.0pt">
<td width=3D"117" nowrap=3D"" valign=3D"bottom" style=3D"width:88.1pt;paddi=
ng:0in 5.4pt 0in 5.4pt;height:21.0pt">
</td>
<td width=3D"157" nowrap=3D"" valign=3D"bottom" style=3D"width:117.6pt;padd=
ing:0in 5.4pt 0in 5.4pt;height:21.0pt">
</td>
<td width=3D"77" nowrap=3D"" valign=3D"bottom" style=3D"width:57.85pt;paddi=
ng:0in 5.4pt 0in 5.4pt;height:21.0pt">
</td>
<td width=3D"499" nowrap=3D"" valign=3D"bottom" style=3D"width:374.45pt;pad=
ding:0in 5.4pt 0in 5.4pt;height:21.0pt">
</td>
</tr>
<tr style=3D"height:21.0pt">
<td width=3D"117" nowrap=3D"" valign=3D"bottom" style=3D"width:88.1pt;backg=
round:red;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"ZH-CN" style=3D"font-size:10.0pt;font-family:SimSun;color:black">=1B=
$B!!=1B(B</span><span style=3D"font-size:10.0pt;font-family:SimSun;color:bl=
ack"><o:p></o:p></span></p>
</td>
<td width=3D"733" nowrap=3D"" colspan=3D"3" valign=3D"bottom" style=3D"widt=
h:549.9pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">Critical bugs, more than 50% test cases are blocked<o:p></o:p><=
/span></p>
</td>
</tr>
<tr style=3D"height:21.0pt">
<td width=3D"117" nowrap=3D"" valign=3D"bottom" style=3D"width:88.1pt;backg=
round:#9BBB59;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"ZH-CN" style=3D"font-size:10.0pt;font-family:SimSun;color:black">=1B=
$B!!=1B(B</span><span style=3D"font-size:10.0pt;font-family:SimSun;color:bl=
ack"><o:p></o:p></span></p>
</td>
<td width=3D"733" nowrap=3D"" colspan=3D"3" valign=3D"bottom" style=3D"widt=
h:549.9pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">Only Normal, Minor or Enhancement bugs, or less than 10% test c=
ases failed<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:21.0pt">
<td width=3D"117" nowrap=3D"" valign=3D"bottom" style=3D"width:88.1pt;backg=
round:#FFC000;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"ZH-CN" style=3D"font-size:10.0pt;font-family:SimSun;color:black">=1B=
$B!!=1B(B</span><span style=3D"font-size:10.0pt;font-family:SimSun;color:bl=
ack"><o:p></o:p></span></p>
</td>
<td width=3D"733" nowrap=3D"" colspan=3D"3" valign=3D"bottom" style=3D"widt=
h:549.9pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">Normal, Major and Critical bugs, and more than 10% test cases f=
ailed<o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" width=3D"756" style=3D"width:567.0pt;margin-left:-.9pt;border-collap=
se:collapse">
<tbody>
<tr style=3D"height:21.0pt">
<td width=3D"756" nowrap=3D"" colspan=3D"6" valign=3D"bottom" style=3D"widt=
h:567.0pt;border:solid windowtext 1.0pt;border-right:solid black 1.0pt;padd=
ing:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Detailed Test Result for each component<o:p></o:p></span=
></b></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"172" nowrap=3D"" valign=3D"bottom" style=3D"width:129.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Target<o:p></o:p></span></b></p>
</td>
<td width=3D"79" valign=3D"bottom" style=3D"width:59.0pt;border-top:none;bo=
rder-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid wind=
owtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Total TCs</span></b><span style=3D"font-size:10.0pt;font=
-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black">
<b><o:p></o:p></b></span></p>
</td>
<td width=3D"103" valign=3D"bottom" style=3D"width:77.0pt;border-top:none;b=
order-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid win=
dowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Not Run<o:p></o:p></span></b></p>
</td>
<td width=3D"73" valign=3D"bottom" style=3D"width:55.0pt;border-top:none;bo=
rder-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid wind=
owtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Passed</span></b><span style=3D"font-size:10.0pt;font-fa=
mily:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black">
<b><o:p></o:p></b></span></p>
</td>
<td width=3D"167" valign=3D"bottom" style=3D"width:125.0pt;border-top:none;=
border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid wi=
ndowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Failed</span></b><span style=3D"font-size:10.0pt;font-fa=
mily:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black">
<b><o:p></o:p></b></span></p>
</td>
<td width=3D"163" valign=3D"bottom" style=3D"width:122.0pt;border-top:none;=
border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid wi=
ndowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Not testable (Blocked)</span></b><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black">
<b><o:p></o:p></b></span></p>
</td>
</tr>
<tr style=3D"height:21.0pt">
<td width=3D"172" nowrap=3D"" valign=3D"bottom" style=3D"width:129.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Sugarbay Sato-SDK<o:p></o:p></span></b></p>
</td>
<td width=3D"79" valign=3D"bottom" style=3D"width:59.0pt;border-top:none;bo=
rder-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid wind=
owtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">62<o:p></o:p></span></p>
</td>
<td width=3D"103" valign=3D"bottom" style=3D"width:77.0pt;border-top:none;b=
order-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid win=
dowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">0<o:p></o:p></span></p>
</td>
<td width=3D"73" valign=3D"bottom" style=3D"width:55.0pt;border-top:none;bo=
rder-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid wind=
owtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00B050">59<o:p></o:p></span></p>
</td>
<td width=3D"167" valign=3D"bottom" style=3D"width:125.0pt;border-top:none;=
border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid wi=
ndowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">1 (bug 1236)<o:p></o:p></span></p>
</td>
<td width=3D"163" valign=3D"bottom" style=3D"width:122.0pt;border-top:none;=
border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid wi=
ndowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">2 (bug 883)<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:21.0pt">
<td width=3D"172" nowrap=3D"" valign=3D"bottom" style=3D"width:129.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Jasperforest Sato-SDK<o:p></o:p></span></b></p>
</td>
<td width=3D"79" valign=3D"bottom" style=3D"width:59.0pt;border-top:none;bo=
rder-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid wind=
owtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">34<o:p></o:p></span></p>
</td>
<td width=3D"103" valign=3D"bottom" style=3D"width:77.0pt;border-top:none;b=
order-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid win=
dowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">0<o:p></o:p></span></p>
</td>
<td width=3D"73" valign=3D"bottom" style=3D"width:55.0pt;border-top:none;bo=
rder-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid wind=
owtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00B050">33<o:p></o:p></span></p>
</td>
<td width=3D"167" valign=3D"bottom" style=3D"width:125.0pt;border-top:none;=
border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid wi=
ndowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">1 (bug 1188)<o:p></o:p></span></p>
</td>
<td width=3D"163" valign=3D"bottom" style=3D"width:122.0pt;border-top:none;=
border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid wi=
ndowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:21.0pt">
<td width=3D"172" nowrap=3D"" valign=3D"bottom" style=3D"width:129.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">n450 Sato-SDK<o:p></o:p></span></b></p>
</td>
<td width=3D"79" valign=3D"bottom" style=3D"width:59.0pt;border-top:none;bo=
rder-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid wind=
owtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">58<o:p></o:p></span></p>
</td>
<td width=3D"103" valign=3D"bottom" style=3D"width:77.0pt;border-top:none;b=
order-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid win=
dowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">0<o:p></o:p></span></p>
</td>
<td width=3D"73" valign=3D"bottom" style=3D"width:55.0pt;border-top:none;bo=
rder-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid wind=
owtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00B050">58<o:p></o:p></span></p>
</td>
<td width=3D"167" valign=3D"bottom" style=3D"width:125.0pt;border-top:none;=
border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid wi=
ndowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0<o:p></o:p></span></p>
</td>
<td width=3D"163" valign=3D"bottom" style=3D"width:122.0pt;border-top:none;=
border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid wi=
ndowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:21.0pt">
<td width=3D"172" nowrap=3D"" valign=3D"bottom" style=3D"width:129.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">eMenlow Sato-SDK<o:p></o:p></span></b></p>
</td>
<td width=3D"79" valign=3D"bottom" style=3D"width:59.0pt;border-top:none;bo=
rder-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid wind=
owtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">58<o:p></o:p></span></p>
</td>
<td width=3D"103" valign=3D"bottom" style=3D"width:77.0pt;border-top:none;b=
order-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid win=
dowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">0<o:p></o:p></span></p>
</td>
<td width=3D"73" valign=3D"bottom" style=3D"width:55.0pt;border-top:none;bo=
rder-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid wind=
owtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00B050">56<o:p></o:p></span></p>
</td>
<td width=3D"167" valign=3D"bottom" style=3D"width:125.0pt;border-top:none;=
border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid wi=
ndowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">2 (bug 310, 503)<o:p></o:p></span></p>
</td>
<td width=3D"163" valign=3D"bottom" style=3D"width:122.0pt;border-top:none;=
border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid wi=
ndowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:21.0pt">
<td width=3D"172" nowrap=3D"" valign=3D"bottom" style=3D"width:129.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Crownbay-Sato-SDK<o:p></o:p></span></b></p>
</td>
<td width=3D"79" valign=3D"bottom" style=3D"width:59.0pt;border-top:none;bo=
rder-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid wind=
owtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">59<o:p></o:p></span></p>
</td>
<td width=3D"103" valign=3D"bottom" style=3D"width:77.0pt;border-top:none;b=
order-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid win=
dowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">0<o:p></o:p></span></p>
</td>
<td width=3D"73" valign=3D"bottom" style=3D"width:55.0pt;border-top:none;bo=
rder-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid wind=
owtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00B050">59<o:p></o:p></span></p>
</td>
<td width=3D"167" valign=3D"bottom" style=3D"width:125.0pt;border-top:none;=
border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid wi=
ndowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0<o:p></o:p></span></p>
</td>
<td width=3D"163" valign=3D"bottom" style=3D"width:122.0pt;border-top:none;=
border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid wi=
ndowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:21.0pt">
<td width=3D"172" nowrap=3D"" valign=3D"bottom" style=3D"width:129.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Beagleboard<o:p></o:p></span></b></p>
</td>
<td width=3D"79" valign=3D"bottom" style=3D"width:59.0pt;border-top:none;bo=
rder-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid wind=
owtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">40<o:p></o:p></span></p>
</td>
<td width=3D"103" valign=3D"bottom" style=3D"width:77.0pt;border-top:none;b=
order-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid win=
dowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">0<o:p></o:p></span></p>
</td>
<td width=3D"73" valign=3D"bottom" style=3D"width:55.0pt;border-top:none;bo=
rder-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid wind=
owtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00B050">37<o:p></o:p></span></p>
</td>
<td width=3D"167" valign=3D"bottom" style=3D"width:125.0pt;border-top:none;=
border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid wi=
ndowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">3 (bug 1352, 1234)<o:p></o:p></span></p>
</td>
<td width=3D"163" valign=3D"bottom" style=3D"width:122.0pt;border-top:none;=
border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid wi=
ndowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:21.0pt">
<td width=3D"172" valign=3D"bottom" style=3D"width:129.0pt;border:solid win=
dowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Routerstationpro<o:p></o:p></span></b></p>
</td>
<td width=3D"79" valign=3D"bottom" style=3D"width:59.0pt;border-top:none;bo=
rder-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid wind=
owtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">33<o:p></o:p></span></p>
</td>
<td width=3D"103" valign=3D"bottom" style=3D"width:77.0pt;border-top:none;b=
order-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid win=
dowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">0<o:p></o:p></span></p>
</td>
<td width=3D"73" valign=3D"bottom" style=3D"width:55.0pt;border-top:none;bo=
rder-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid wind=
owtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00B050">33<o:p></o:p></span></p>
</td>
<td width=3D"167" valign=3D"bottom" style=3D"width:125.0pt;border-top:none;=
border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid wi=
ndowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0<o:p></o:p></span></p>
</td>
<td width=3D"163" valign=3D"bottom" style=3D"width:122.0pt;border-top:none;=
border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid wi=
ndowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:21.0pt">
<td width=3D"172" valign=3D"bottom" style=3D"width:129.0pt;border:solid win=
dowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Mpc8315e-rdb<o:p></o:p></span></b></p>
</td>
<td width=3D"79" valign=3D"bottom" style=3D"width:59.0pt;border-top:none;bo=
rder-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid wind=
owtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">36<o:p></o:p></span></p>
</td>
<td width=3D"103" valign=3D"bottom" style=3D"width:77.0pt;border-top:none;b=
order-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid win=
dowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">0<o:p></o:p></span></p>
</td>
<td width=3D"73" valign=3D"bottom" style=3D"width:55.0pt;border-top:none;bo=
rder-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid wind=
owtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00B050">36<o:p></o:p></span></p>
</td>
<td width=3D"167" valign=3D"bottom" style=3D"width:125.0pt;border-top:none;=
border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid wi=
ndowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0<o:p></o:p></span></p>
</td>
<td width=3D"163" valign=3D"bottom" style=3D"width:122.0pt;border-top:none;=
border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid wi=
ndowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:21.0pt">
<td width=3D"172" nowrap=3D"" valign=3D"bottom" style=3D"width:129.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Qemux86-64 Sato<o:p></o:p></span></b></p>
</td>
<td width=3D"79" nowrap=3D"" valign=3D"bottom" style=3D"width:59.0pt;border=
-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-righ=
t:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">30<o:p></o:p></span></p>
</td>
<td width=3D"103" valign=3D"top" style=3D"width:77.0pt;border-top:none;bord=
er-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid window=
text 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">0<o:p></o:p></span></p>
</td>
<td width=3D"73" valign=3D"top" style=3D"width:55.0pt;border-top:none;borde=
r-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowt=
ext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00B050">28<o:p></o:p></span></p>
</td>
<td width=3D"167" valign=3D"bottom" style=3D"width:125.0pt;border-top:none;=
border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid wi=
ndowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">2 (bug 1174, 1234)<o:p></o:p></span></p>
</td>
<td width=3D"163" valign=3D"bottom" style=3D"width:122.0pt;border-top:none;=
border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid wi=
ndowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:21.0pt">
<td width=3D"172" nowrap=3D"" valign=3D"bottom" style=3D"width:129.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Qemux86-64 Sato-SDK<o:p></o:p></span></b></p>
</td>
<td width=3D"79" nowrap=3D"" valign=3D"bottom" style=3D"width:59.0pt;border=
-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-righ=
t:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">35<o:p></o:p></span></p>
</td>
<td width=3D"103" valign=3D"bottom" style=3D"width:77.0pt;border-top:none;b=
order-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid win=
dowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">0<o:p></o:p></span></p>
</td>
<td width=3D"73" valign=3D"bottom" style=3D"width:55.0pt;border-top:none;bo=
rder-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid wind=
owtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00B050">32<o:p></o:p></span></p>
</td>
<td width=3D"167" valign=3D"bottom" style=3D"width:125.0pt;border-top:none;=
border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid wi=
ndowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">3 (bug 1174, 1234, 1236)<o:p></o:p></span></p>
</td>
<td width=3D"163" valign=3D"bottom" style=3D"width:122.0pt;border-top:none;=
border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid wi=
ndowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:21.0pt">
<td width=3D"172" nowrap=3D"" valign=3D"bottom" style=3D"width:129.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Qemux86 Sato<o:p></o:p></span></b></p>
</td>
<td width=3D"79" nowrap=3D"" valign=3D"bottom" style=3D"width:59.0pt;border=
-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-righ=
t:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">30<o:p></o:p></span></p>
</td>
<td width=3D"103" valign=3D"top" style=3D"width:77.0pt;border-top:none;bord=
er-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid window=
text 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">0<o:p></o:p></span></p>
</td>
<td width=3D"73" valign=3D"top" style=3D"width:55.0pt;border-top:none;borde=
r-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowt=
ext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00B050">28<o:p></o:p></span></p>
</td>
<td width=3D"167" valign=3D"bottom" style=3D"width:125.0pt;border-top:none;=
border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid wi=
ndowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">2 (bug 1174, 1234)<o:p></o:p></span></p>
</td>
<td width=3D"163" valign=3D"bottom" style=3D"width:122.0pt;border-top:none;=
border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid wi=
ndowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:21.0pt">
<td width=3D"172" nowrap=3D"" valign=3D"bottom" style=3D"width:129.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Qemux86 Sato-SDK<o:p></o:p></span></b></p>
</td>
<td width=3D"79" nowrap=3D"" valign=3D"bottom" style=3D"width:59.0pt;border=
-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-righ=
t:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">35<o:p></o:p></span></p>
</td>
<td width=3D"103" valign=3D"top" style=3D"width:77.0pt;border-top:none;bord=
er-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid window=
text 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">0<o:p></o:p></span></p>
</td>
<td width=3D"73" valign=3D"top" style=3D"width:55.0pt;border-top:none;borde=
r-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowt=
ext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00B050">33<o:p></o:p></span></p>
</td>
<td width=3D"167" valign=3D"bottom" style=3D"width:125.0pt;border-top:none;=
border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid wi=
ndowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">2 (bug 1174, 1234)<o:p></o:p></span></p>
</td>
<td width=3D"163" valign=3D"bottom" style=3D"width:122.0pt;border-top:none;=
border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid wi=
ndowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:21.0pt">
<td width=3D"172" nowrap=3D"" valign=3D"bottom" style=3D"width:129.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Qemumips Sato<o:p></o:p></span></b></p>
</td>
<td width=3D"79" nowrap=3D"" valign=3D"bottom" style=3D"width:59.0pt;border=
-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-righ=
t:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">30<o:p></o:p></span></p>
</td>
<td width=3D"103" nowrap=3D"" valign=3D"bottom" style=3D"width:77.0pt;borde=
r-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-rig=
ht:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">0<o:p></o:p></span></p>
</td>
<td width=3D"73" nowrap=3D"" valign=3D"bottom" style=3D"width:55.0pt;border=
-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-righ=
t:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00B050">29<o:p></o:p></span></p>
</td>
<td width=3D"167" valign=3D"bottom" style=3D"width:125.0pt;border-top:none;=
border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid wi=
ndowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">1 (bug 1234)<o:p></o:p></span></p>
</td>
<td width=3D"163" valign=3D"bottom" style=3D"width:122.0pt;border-top:none;=
border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid wi=
ndowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:21.0pt">
<td width=3D"172" nowrap=3D"" valign=3D"bottom" style=3D"width:129.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Qemumips Sato-SDK<o:p></o:p></span></b></p>
</td>
<td width=3D"79" nowrap=3D"" valign=3D"bottom" style=3D"width:59.0pt;border=
-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-righ=
t:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">35<o:p></o:p></span></p>
</td>
<td width=3D"103" nowrap=3D"" valign=3D"bottom" style=3D"width:77.0pt;borde=
r-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-rig=
ht:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">0<o:p></o:p></span></p>
</td>
<td width=3D"73" nowrap=3D"" valign=3D"bottom" style=3D"width:55.0pt;border=
-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-righ=
t:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00B050">34<o:p></o:p></span></p>
</td>
<td width=3D"167" valign=3D"bottom" style=3D"width:125.0pt;border-top:none;=
border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid wi=
ndowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">1 (bug 1234)<o:p></o:p></span></p>
</td>
<td width=3D"163" valign=3D"bottom" style=3D"width:122.0pt;border-top:none;=
border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid wi=
ndowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:21.0pt">
<td width=3D"172" nowrap=3D"" valign=3D"bottom" style=3D"width:129.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Qemuppc Sato<o:p></o:p></span></b></p>
</td>
<td width=3D"79" nowrap=3D"" valign=3D"bottom" style=3D"width:59.0pt;border=
-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-righ=
t:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">22<o:p></o:p></span></p>
</td>
<td width=3D"103" nowrap=3D"" valign=3D"bottom" style=3D"width:77.0pt;borde=
r-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-rig=
ht:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">0<o:p></o:p></span></p>
</td>
<td width=3D"73" nowrap=3D"" valign=3D"bottom" style=3D"width:55.0pt;border=
-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-righ=
t:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00B050">21<o:p></o:p></span></p>
</td>
<td width=3D"167" valign=3D"bottom" style=3D"width:125.0pt;border-top:none;=
border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid wi=
ndowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">1 (bug 414)<o:p></o:p></span></p>
</td>
<td width=3D"163" valign=3D"bottom" style=3D"width:122.0pt;border-top:none;=
border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid wi=
ndowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:21.0pt">
<td width=3D"172" nowrap=3D"" valign=3D"bottom" style=3D"width:129.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Qemuppc Sato-SDK<o:p></o:p></span></b></p>
</td>
<td width=3D"79" nowrap=3D"" valign=3D"bottom" style=3D"width:59.0pt;border=
-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-righ=
t:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">27<o:p></o:p></span></p>
</td>
<td width=3D"103" nowrap=3D"" valign=3D"bottom" style=3D"width:77.0pt;borde=
r-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-rig=
ht:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">0<o:p></o:p></span></p>
</td>
<td width=3D"73" nowrap=3D"" valign=3D"bottom" style=3D"width:55.0pt;border=
-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-righ=
t:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00B050">26<o:p></o:p></span></p>
</td>
<td width=3D"167" valign=3D"bottom" style=3D"width:125.0pt;border-top:none;=
border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid wi=
ndowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">1 (bug 414)<o:p></o:p></span></p>
</td>
<td width=3D"163" valign=3D"bottom" style=3D"width:122.0pt;border-top:none;=
border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid wi=
ndowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:21.0pt">
<td width=3D"172" nowrap=3D"" valign=3D"bottom" style=3D"width:129.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Qemuarm Sato<o:p></o:p></span></b></p>
</td>
<td width=3D"79" nowrap=3D"" valign=3D"bottom" style=3D"width:59.0pt;border=
-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-righ=
t:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">30<o:p></o:p></span></p>
</td>
<td width=3D"103" nowrap=3D"" valign=3D"bottom" style=3D"width:77.0pt;borde=
r-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-rig=
ht:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">0<o:p></o:p></span></p>
</td>
<td width=3D"73" nowrap=3D"" valign=3D"bottom" style=3D"width:55.0pt;border=
-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-righ=
t:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00B050">24<o:p></o:p></span></p>
</td>
<td width=3D"167" valign=3D"bottom" style=3D"width:125.0pt;border-top:none;=
border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid wi=
ndowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">6 (bug 1352, 1234)<o:p></o:p></span></p>
</td>
<td width=3D"163" valign=3D"bottom" style=3D"width:122.0pt;border-top:none;=
border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid wi=
ndowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:21.0pt">
<td width=3D"172" nowrap=3D"" valign=3D"bottom" style=3D"width:129.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Qemuarm Sato-SDK<o:p></o:p></span></b></p>
</td>
<td width=3D"79" nowrap=3D"" valign=3D"bottom" style=3D"width:59.0pt;border=
-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-righ=
t:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">35<o:p></o:p></span></p>
</td>
<td width=3D"103" nowrap=3D"" valign=3D"bottom" style=3D"width:77.0pt;borde=
r-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-rig=
ht:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">0<o:p></o:p></span></p>
</td>
<td width=3D"73" nowrap=3D"" valign=3D"bottom" style=3D"width:55.0pt;border=
-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-righ=
t:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00B050">29<o:p></o:p></span></p>
</td>
<td width=3D"167" valign=3D"bottom" style=3D"width:125.0pt;border-top:none;=
border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid wi=
ndowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">6 (bug 1352, 1234)<o:p></o:p></span></p>
</td>
<td width=3D"163" valign=3D"bottom" style=3D"width:122.0pt;border-top:none;=
border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid wi=
ndowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:21.0pt">
<td width=3D"172" nowrap=3D"" valign=3D"bottom" style=3D"width:129.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">ADT<o:p></o:p></span></b></p>
</td>
<td width=3D"79" nowrap=3D"" valign=3D"bottom" style=3D"width:59.0pt;border=
-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-righ=
t:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">6<o:p></o:p></span></p>
</td>
<td width=3D"103" nowrap=3D"" valign=3D"bottom" style=3D"width:77.0pt;borde=
r-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-rig=
ht:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">0<o:p></o:p></span></p>
</td>
<td width=3D"73" nowrap=3D"" valign=3D"bottom" style=3D"width:55.0pt;border=
-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-righ=
t:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00B050">5<o:p></o:p></span></p>
</td>
<td width=3D"167" valign=3D"bottom" style=3D"width:125.0pt;border-top:none;=
border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid wi=
ndowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">1 (bug 414)<o:p></o:p></span></p>
</td>
<td width=3D"163" valign=3D"bottom" style=3D"width:122.0pt;border-top:none;=
border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid wi=
ndowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:21.0pt">
<td width=3D"172" nowrap=3D"" valign=3D"bottom" style=3D"width:129.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Total<o:p></o:p></span></b></p>
</td>
<td width=3D"79" nowrap=3D"" valign=3D"bottom" style=3D"width:59.0pt;border=
-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-righ=
t:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">695<o:p></o:p></span></p>
</td>
<td width=3D"103" nowrap=3D"" valign=3D"bottom" style=3D"width:77.0pt;borde=
r-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-rig=
ht:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">0<o:p></o:p></span></p>
</td>
<td width=3D"73" nowrap=3D"" valign=3D"bottom" style=3D"width:55.0pt;border=
-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-righ=
t:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">660<o:p></o:p></span></p>
</td>
<td width=3D"167" valign=3D"bottom" style=3D"width:125.0pt;border-top:none;=
border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid wi=
ndowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">33<o:p></o:p></span></p>
</td>
<td width=3D"163" valign=3D"bottom" style=3D"width:122.0pt;border-top:none;=
border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid wi=
ndowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">2<o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><b><span style=3D"font-size:10.0pt;font-family:&q=
uot;Arial&quot;,&quot;sans-serif&quot;">Commit Information<o:p></o:p></span=
></b></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;">--------------------------------------=
-<o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;">For Blacksand/Crownbay/Sugarbay/Jasperfor=
est/Qemuarm/mips/ppc/beagleboard/mpc8315e-rdb/routerstationpro:<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><a name=3D"OLE_LINK9"></a><a name=3D"OLE_LINK7"></a>=
<a name=3D"OLE_LINK8"></a><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;">Tree/Branch: Poky/1.1_M3<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;">Poky Commit id:
<a name=3D"OLE_LINK4"></a><a name=3D"OLE_LINK3"></a>abdec68876ac7ce1a6d5c22=
3d1757b7e8a14b85f<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;">Meta Branch 1.1_M3<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;">Meta Commit id: da93dc24fd73079b4dbb6811b=
83e44a2036d54ef<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;">For Emenlow:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;">Tree/Branch: Poky/1.1_M3<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;">Poky Commit id: abdec68876ac7ce1a6d5c223d=
1757b7e8a14b85f<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;">Meta Branch 1.1_M3<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;">Meta Commit id: 09e70dff36a1c204f76fe07c0=
8a4f37f526728fe<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;">For Toolchain/Qemux86/Qemux86-64</span><s=
pan lang=3D"ZH-CN" style=3D"font-size:10.0pt;font-family:SimSun">=1B$B!'=1B=
(B</span><span style=3D"font-size:10.0pt;font-family:SimSun"><o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><a name=3D"OLE_LINK2"></a><a name=3D"OLE_LINK10"></a=
><a name=3D"OLE_LINK11"></a><a name=3D"OLE_LINK5"></a><a name=3D"OLE_LINK6"=
></a><a name=3D"OLE_LINK1"></a><span style=3D"font-size:10.0pt;font-family:=
&quot;Arial&quot;,&quot;sans-serif&quot;">Tree/Branch: Poky/1.1_M3<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;">Poky Commit id: 1580d1624647bc07ffd4997b6=
c8cfbccd8040fc5<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><b><span style=3D"font-size:10.0pt;font-family:&q=
uot;Arial&quot;,&quot;sans-serif&quot;">Issue Summary<o:p></o:p></span></b>=
</p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;">--------------------------------------=
-<o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></b></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" width=3D"908" style=3D"width:680.8pt;margin-left:-.9pt;border-collap=
se:collapse">
<tbody>
<tr style=3D"height:21.0pt">
<td width=3D"248" nowrap=3D"" colspan=3D"2" valign=3D"bottom" style=3D"widt=
h:186.0pt;border:solid windowtext 1.0pt;border-right:solid black 1.0pt;padd=
ing:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Component<o:p></o:p></span></b></p>
</td>
<td width=3D"549" valign=3D"bottom" style=3D"width:411.8pt;border:solid win=
dowtext 1.0pt;border-left:none;padding:0in 5.4pt 0in 5.4pt;height:21.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Bug Number<o:p></o:p></span></b></p>
</td>
<td width=3D"111" nowrap=3D"" valign=3D"bottom" style=3D"width:83.0pt;borde=
r:solid windowtext 1.0pt;border-left:none;padding:0in 5.4pt 0in 5.4pt;heigh=
t:21.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><b><span st=
yle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Target Milestone<o:p></o:p></span></b></p>
</td>
</tr>
<tr style=3D"height:14.25pt">
<td width=3D"140" nowrap=3D"" rowspan=3D"9" style=3D"width:104.7pt;border-t=
op:none;border-left:solid windowtext 1.0pt;border-bottom:solid black 1.0pt;=
border-right:none;padding:0in 5.4pt 0in 5.4pt;height:14.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">System &amp; Core OS<o:p></o:p></span></b></p>
</td>
<td width=3D"108" nowrap=3D"" rowspan=3D"5" style=3D"width:81.3pt;border-to=
p:none;border-left:solid windowtext 1.0pt;border-bottom:solid black 1.0pt;b=
order-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:14.25=
pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">System Usage<o:p></o:p></span></b></p>
</td>
<td width=3D"549" nowrap=3D"" valign=3D"bottom" style=3D"width:411.8pt;padd=
ing:0in 5.4pt 0in 5.4pt;height:14.25pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">Bug 503 - [emenlow] system cannot enter S3 standby mode<o:p></o=
:p></span></p>
</td>
<td width=3D"111" nowrap=3D"" valign=3D"bottom" style=3D"width:83.0pt;borde=
r-top:none;border-left:solid windowtext 1.0pt;border-bottom:none;border-rig=
ht:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:14.25pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">1.1<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:14.25pt">
<td width=3D"549" nowrap=3D"" valign=3D"bottom" style=3D"width:411.8pt;padd=
ing:0in 5.4pt 0in 5.4pt;height:14.25pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">Bug 883 - [Sugarbay] GFX 3D game test fail to run with sugarbay=
 BSP image due to libsdl.so<o:p></o:p></span></p>
</td>
<td width=3D"111" nowrap=3D"" valign=3D"bottom" style=3D"width:83.0pt;borde=
r-top:none;border-left:solid windowtext 1.0pt;border-bottom:none;border-rig=
ht:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:14.25pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">1.1<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:14.25pt">
<td width=3D"549" nowrap=3D"" valign=3D"bottom" style=3D"width:411.8pt;padd=
ing:0in 5.4pt 0in 5.4pt;height:14.25pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">Bug 1174: [zypper/rpm] package install/removal costs lots of di=
sk space<o:p></o:p></span></p>
</td>
<td width=3D"111" nowrap=3D"" valign=3D"bottom" style=3D"width:83.0pt;borde=
r-top:none;border-left:solid windowtext 1.0pt;border-bottom:none;border-rig=
ht:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:14.25pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">1.1 M4<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:14.25pt">
<td width=3D"549" nowrap=3D"" valign=3D"bottom" style=3D"width:411.8pt;padd=
ing:0in 5.4pt 0in 5.4pt;height:14.25pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">Bug 1234: No response when I click the 'Install/Remove Software=
' icon
<o:p></o:p></span></p>
</td>
<td width=3D"111" nowrap=3D"" valign=3D"bottom" style=3D"width:83.0pt;borde=
r-top:none;border-left:solid windowtext 1.0pt;border-bottom:none;border-rig=
ht:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:14.25pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">1.1 M3<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"549" nowrap=3D"" valign=3D"bottom" style=3D"width:411.8pt;padd=
ing:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:red">New!
</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;=
sans-serif&quot;;color:black">Bug 1352: [qemuarm] RPM package can not be in=
stalled with 20110806 build<o:p></o:p></span></p>
</td>
<td width=3D"111" nowrap=3D"" valign=3D"bottom" style=3D"width:83.0pt;borde=
r-top:none;border-left:solid windowtext 1.0pt;border-bottom:none;border-rig=
ht:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">1.1 M4<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:14.25pt">
<td width=3D"108" nowrap=3D"" rowspan=3D"4" style=3D"width:81.3pt;border-to=
p:none;border-left:solid windowtext 1.0pt;border-bottom:solid black 1.0pt;b=
order-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:14.25=
pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Other<o:p></o:p></span></b></p>
</td>
<td width=3D"549" nowrap=3D"" valign=3D"bottom" style=3D"width:411.8pt;padd=
ing:0in 5.4pt 0in 5.4pt;height:14.25pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">Bug 310 - [eMenlow] i2c_transfer error on e-Menlow<o:p></o:p></=
span></p>
</td>
<td width=3D"111" nowrap=3D"" valign=3D"bottom" style=3D"width:83.0pt;borde=
r-top:none;border-left:solid windowtext 1.0pt;border-bottom:none;border-rig=
ht:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:14.25pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">1.1<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:14.25pt">
<td width=3D"549" nowrap=3D"" valign=3D"bottom" style=3D"width:411.8pt;padd=
ing:0in 5.4pt 0in 5.4pt;height:14.25pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">Bug 1188 - [japerforest] I/OAT DMA engine init failed<o:p></o:p=
></span></p>
</td>
<td width=3D"111" nowrap=3D"" valign=3D"bottom" style=3D"width:83.0pt;borde=
r-top:none;border-left:solid windowtext 1.0pt;border-bottom:none;border-rig=
ht:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:14.25pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">1.1<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:14.25pt">
<td width=3D"549" nowrap=3D"" valign=3D"bottom" style=3D"width:411.8pt;padd=
ing:0in 5.4pt 0in 5.4pt;height:14.25pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">Bug 1236 - Broken ldd due to wrong path for ld.so<o:p></o:p></s=
pan></p>
</td>
<td width=3D"111" nowrap=3D"" valign=3D"bottom" style=3D"width:83.0pt;borde=
r-top:none;border-left:solid windowtext 1.0pt;border-bottom:none;border-rig=
ht:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:14.25pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">1.1 M4<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"549" nowrap=3D"" valign=3D"bottom" style=3D"width:411.8pt;padd=
ing:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">=
Bug 1258 -[crownbay] Xorg eats lots of CPU time after standby<o:p></o:p></s=
pan></p>
</td>
<td width=3D"111" nowrap=3D"" valign=3D"bottom" style=3D"width:83.0pt;borde=
r-top:none;border-left:solid windowtext 1.0pt;border-bottom:none;border-rig=
ht:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">1.1 M4<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"248" nowrap=3D"" colspan=3D"2" style=3D"width:186.0pt;border-t=
op:none;border-left:solid windowtext 1.0pt;border-bottom:solid windowtext 1=
.0pt;border-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0=
pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">ADT<o:p></o:p></span></b></p>
</td>
<td width=3D"549" valign=3D"bottom" style=3D"width:411.8pt;border-top:none;=
border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid wi=
ndowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">Bug 414: [PPC] kernel panic when booting poky-image-sdk-qemuppc=
 through UNFS<o:p></o:p></span></p>
</td>
<td width=3D"111" nowrap=3D"" valign=3D"bottom" style=3D"width:83.0pt;borde=
r-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-rig=
ht:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left"><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;c=
olor:black">1.1<o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></b></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></b></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;">Verified Fixed Bug:<o:p></o:p></span><=
/b></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;">--------------------------------------=
-<o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></b></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:.25in;text-indent:-.25in=
;mso-list:l0 level1 lfo2">
<![if !supportLists]><span style=3D"font-size:10.0pt;font-family:&quot;Aria=
l&quot;,&quot;sans-serif&quot;"><span style=3D"mso-list:Ignore">1.<span sty=
le=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"font-size:10.0pt;font-family:=
&quot;Arial&quot;,&quot;sans-serif&quot;"><a href=3D"http://bugzilla.pokyli=
nux.org/show_bug.cgi?id=3D1211">Bug&nbsp;1211</a>&nbsp;-&nbsp;[Blacksand] P=
splash failed when boot up Yocto<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:.25in;text-indent:-.25in=
;mso-list:l0 level1 lfo2">
<![if !supportLists]><span style=3D"font-size:10.0pt;font-family:&quot;Aria=
l&quot;,&quot;sans-serif&quot;"><span style=3D"mso-list:Ignore">2.<span sty=
le=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"font-size:10.0pt;font-family:=
&quot;Arial&quot;,&quot;sans-serif&quot;"><a href=3D"http://bugzilla.pokyli=
nux.org/show_bug.cgi?id=3D1257">Bug&nbsp;1257</a>&nbsp;-&nbsp;[crownbay] br=
oken grub due to wrong root path<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:.25in;text-indent:-.25in=
;mso-list:l0 level1 lfo2">
<![if !supportLists]><span style=3D"font-size:10.0pt;font-family:&quot;Aria=
l&quot;,&quot;sans-serif&quot;"><span style=3D"mso-list:Ignore">3.<span sty=
le=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"font-size:10.0pt;font-family:=
&quot;Arial&quot;,&quot;sans-serif&quot;"><a href=3D"http://bugzilla.pokyli=
nux.org/show_bug.cgi?id=3D1317">Bug&nbsp;1317</a>&nbsp;-&nbsp;[Qemux86-64]s=
ato and sato-sdk images boot failed<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:.25in;text-indent:-.25in=
;mso-list:l0 level1 lfo2">
<![if !supportLists]><span style=3D"font-size:10.0pt;font-family:&quot;Aria=
l&quot;,&quot;sans-serif&quot;"><span style=3D"mso-list:Ignore">4.<span sty=
le=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"font-size:10.0pt;font-family:=
&quot;Arial&quot;,&quot;sans-serif&quot;"><a href=3D"http://bugzilla.pokyli=
nux.org/show_bug.cgi?id=3D1318">Bug&nbsp;1318</a>&nbsp;-&nbsp;[Toolchain] w=
rong path to ld.so for x86_64 toolchain<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:.25in;text-indent:-.25in=
;mso-list:l0 level1 lfo2">
<![if !supportLists]><span style=3D"font-size:10.0pt;font-family:&quot;Aria=
l&quot;,&quot;sans-serif&quot;"><span style=3D"mso-list:Ignore">5.<span sty=
le=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"font-size:10.0pt;font-family:=
&quot;Arial&quot;,&quot;sans-serif&quot;"><a href=3D"http://bugzilla.pokyli=
nux.org/show_bug.cgi?id=3D1351">Bug&nbsp;1351</a>&nbsp;-&nbsp;[emenlow] hdd=
 image not found<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:.25in;text-indent:-.25in=
;mso-list:l0 level1 lfo2">
<![if !supportLists]><span style=3D"font-size:10.0pt;font-family:&quot;Aria=
l&quot;,&quot;sans-serif&quot;"><span style=3D"mso-list:Ignore">6.<span sty=
le=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"font-size:10.0pt;font-family:=
&quot;Arial&quot;,&quot;sans-serif&quot;"><a href=3D"http://bugzilla.pokyli=
nux.org/show_bug.cgi?id=3D1314">Bug 1314</a> - toolchain do_populate_sdk fa=
iled on autobuilder for arm/mips/ppc with 20110730 build<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</div>
</body>
</html>

--_000_7E680CB2A76BB8438D08CF13C09FC53A137692BAORSMSX101amrcor_--
