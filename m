Return-Path: <laurentiu.serban@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CD1EBE01351
	for <poky@pokylinux.org>; Mon, 18 Jun 2012 13:11:02 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 18 Jun 2012 13:11:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; 
	d="xml'?ods'72,48?scan'72,48,208,217,72,48";a="181743692"
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
	by fmsmga002.fm.intel.com with ESMTP; 18 Jun 2012 13:10:59 -0700
Received: from irsmsx104.ger.corp.intel.com (163.33.3.159) by
	IRSMSX103.ger.corp.intel.com (163.33.3.157) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Mon, 18 Jun 2012 21:10:55 +0100
Received: from irsmsx102.ger.corp.intel.com ([169.254.2.176]) by
	IRSMSX104.ger.corp.intel.com ([169.254.5.70]) with mapi id
	14.01.0355.002; Mon, 18 Jun 2012 21:10:55 +0100
From: "Serban, Laurentiu" <laurentiu.serban@intel.com>
To: "Stewart, David C" <david.c.stewart@intel.com>, "Purdie, Richard"
	<richard.purdie@intel.com>, "Wold, Saul" <saul.wold@intel.com>, "Liu, Song"
	<song.liu@intel.com>, "Xu, Jiajun" <jiajun.xu@intel.com>,
	"yi.zhao@windriver.com" <yi.zhao@windriver.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>, "poky@pokylinux.org" <poky@pokylinux.org>
Thread-Topic: Weekly test report for 1.3M1 RC1 - consolidated
Thread-Index: Ac1NjnPP4xiPszh5SS22TUtNyZgsTw==
Date: Mon, 18 Jun 2012 20:10:54 +0000
Message-ID: <E16513A01CAAFF40B65178C63CE45EEC1914CA3C@IRSMSX102.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.182]
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 19 Jun 2012 08:14:30 -0700
Subject: Weekly test report for 1.3M1 RC1 - consolidated
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
X-List-Received-Date: Mon, 18 Jun 2012 20:11:03 -0000
X-Groupsio-MsgNum: 7907
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_004_E16513A01CAAFF40B65178C63CE45EEC1914CA3CIRSMSX102gercor_"

--_004_E16513A01CAAFF40B65178C63CE45EEC1914CA3CIRSMSX102gercor_
Content-Type: multipart/alternative;
	boundary="_000_E16513A01CAAFF40B65178C63CE45EEC1914CA3CIRSMSX102gercor_"

--_000_E16513A01CAAFF40B65178C63CE45EEC1914CA3CIRSMSX102gercor_
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

Hello,

Here are the consolidated results for RC1 weekly testing:
Summary:

1.       The syslog daemon can't startup on all qemu images and real hardwa=
re.  The feature "Incremental RPM image generation" doesn't work with this =
build, report as bug 2617. This issue is common across all platforms

2.       A critical issue that is grub-efi-native fails due to help2man scr=
ipt which blocked all cases on FRI2, reported as bug 2527

3.       For Hob,  there are two minor issues: Incorrect total image size i=
n "View Package" page and the layer cannot be deleted in a special situatio=
n.

4.       For Core Build System there are the following bugs: 2571, 2572, 25=
89, 2590, 2617 and 2619 (none of them with target 1.3M1)

BLOCK

Critical bugs, more than 50% test cases are blocked

GOOD

Only Normal, Minor or Enhancement bugs, less than 10% test cases failed

BUGGY

Normal, Major and Critical bugs, more than 10% test cases failed

Laurentiu=1B$B!G=1B(Bs observation: there is a thin red line between buggy =
and good (as long as the reports are done by different persons)

Test Result Summary

Component

Target

Status

Comments

BSP

Beagleboard

BUGGY

Syslogd can=1B$B!G=1B(Bt startup

Routerstationpro

BUGGY

Syslogd can=1B$B!G=1B(Bt startup

Mpc8315e-rdb

BUGGY

Syslogd can=1B$B!G=1B(Bt startup

eMenlow

BUGGY

X server could not successful start up to the Desktop; syslog is not starte=
d by default in background on bsps

Blacksand

GOOD

syslog is not started by default in background on bsps

Crownbay-emgd

GOOD

syslog is not started by default in background on bsps

Sugarbay

GOOD

syslog is not started by default in background on bsps

FRI2-sato-sdk

BLOCK

grub-efi-native fails due to help2man script

HuronRiver-sato-sdk

GOOD

syslog is not started by default in background on bsps

Jasperforest-lsb

GOOD

Everything runs well

QEMU

qemuarm

BUGGY

Syslogd can=1B$B!G=1B(Bt startup

qemuppc

BUGGY

Syslogd can=1B$B!G=1B(Bt startup

qemumips

BUGGY

Syslogd can=1B$B!G=1B(Bt startup

qemux86

GOOD

syslog is not started by default in background on bsps

qemux86-64

GOOD

syslog is not started by default in background on bsps

Core build system

=1B$B!!=1B(B

BUGGY

three issues for multilib, do_rootfs failed for lib32-connman-gnome with ip=
k;no provider for lib32/lib64-lsbinitscripts;  failed dependency for util-l=
inux with multilib build;  For yocto-bsp/kernel tools, fail to build core-i=
mage-sato when add patch into the kernel; X can't start in sato image built=
 by yocto-bsp tool

HOB

=1B$B!!=1B(B

GOOD

2 minor issues

ADT

=1B$B!!=1B(B

GOOD

32bit kernel generated oprofile data file can not be read by remote 64bit o=
preport;Segmentation fault on qemuarm from /usr/lib/libust.so.0;


Detailed Test Result for each component

Target

Total TCs

Not Run

Passed

Failed

Not testable (Blocked)

Beagleboard Sato-SDK

42

0

40

2 (bug 2533)

0

Routerstationpro Sato-SDK

35

0

33

2 (bug 2533)

0

Mpc8315e-rdb Sato-SDK

38

0

36

2 (bug 2533)

0

eMenlow Sato-SDK

67

0

41

6 (bug 2507)

20 (bug 2507)

n450 Sato-SDK

66

0

64

2 (bug 2535)

0

Crownbay-Sato-SDK

67

0

65

2 (bug 2535)

0

FRI2 Sato-SDK

86

0

0

0

86 (bug 2527)

HuronRiver Sato-SDK

70

0

68

2 (bug 2535)

0

Sugarbay Sato-SDK

70

0

68

2 (bug 2535)

0

Jasperforest lsb-SDK

34

0

34

0

0

Qemuarm Sato

32

0

30

2 (bug 2533)

0

Qemuarm Sato-SDK

37

0

35

2 (bug 2533)

0

Qemumips Sato

32

0

30

2 (bug 2533)

0

Qemumips Sato-SDK

37

0

35

2 (bug 2533)

0

Qemuppc Sato

32

0

30

2 (bug 2533)

0

Qemuppc Sato-SDK

37

0

35

2 (bug 2533)

0

Qemux86-64 Sato

32

0

30

2 (bug 2535)

0

Qemux86-64 Sato-SDK

37

0

35

2 (bug 2535)

0

Qemux86 Sato

32

0

30

2 (bug 2535)

0

Qemux86 Sato-SDK

37

0

35

2 (bug 2535)

0

Core build system

32

0

24

7 (2571, 2572, 2589, 2590, 2617, 2619, 2559)

1 (bug 2589)

HOB

16

0

15

1 (bug 2613)

0

ADT

28

0

26

2 (bug 1452  2577)

0

Total

996



839

50

107





Commit Information
---------------------------------------
Tree/Branch: poky/master
Commit id: 7f017cab0b3e4d5a4fc356eccd8eb8429b0531d0

Meta branch: master

Commit id: bd00e28dd54b06a1f01f186be168d3af872f96d4


Component

Bug Number

Target Milestone

System & Core OS

System Usage

Bug 2535 syslog is not started by default in background on bsps

1.3 M2

Bug 2507 X server could not successful start up to the Desktop

1.3 M2

Bug 2509 The 'About' option with connman-properties doesn't display the pic=
ture.

1.3 M2

Bug 2508 Fotowall icons appear abnormal on qemumips sato-sdk images with ni=
ghtly build (20120523-2)

1.3 M2

Other

New! Bug 2527 grub-efi-native fails due to help2man script

=1B$B!!=1B(B

Core build system

Bug 2559 [yocto-bsp]X can't start in sato image built by yocto-bsp tool

1.3 M2

Bug 2587 [yocto-bsp]the default branch is not in remote branch

1.3 M2

Bug 2589 [yocto-kernel] fail to build core-image-sato when add patch into t=
he kernel

1.3 M3

Bug 2590 [multilib]do_rootfs failed for lib32-connman-gnome with ipk

1.3 M3

Bug 2571 [multilib] no provider for lib32/lib64-lsbinitscripts

1.3 M2

Bug 2572 [multilib] failed dependency for util-linux with multilib build

1.3 M2

New Bug 2617 Incremental RPM image generation fails

New Bug 2619 Archive work directory and export source package fails

ADT

Bug 1452 32bit kernel generated oprofile data file can not be read by remot=
e 64bit operation

1.3

Bug 2577 Segmentation fault on qemuarm from /usr/lib/libust.so.0

1.3

HOB

Bug 2576 [Hob2] wrong image profile selected after template load

1.3 M2

Bug 2581 [Hob2] 'HobNotebook' no attribute 'tabbar' when build failure

1.3 M2

New! Bug 2618[Hob2] Incorrect total image size in "View Package" page

=1B$B!!=1B(B

New! Bug 2613[Hob2] Delete layer failed

=1B$B!!=1B(B



Br,

Laurentiu Serban
QA Engineer
Open Source Technology Center
System Software Division Romania
Desk: +40 31 8604742
iNET: 88451042


--_000_E16513A01CAAFF40B65178C63CE45EEC1914CA3CIRSMSX102gercor_
Content-Type: text/html; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
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
	{font-family:Verdana;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:SimSun;}
@font-face
	{font-family:"\@SimSun";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
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
p.MsoPlainText, li.MsoPlainText, div.MsoPlainText
	{mso-style-priority:99;
	mso-style-link:"Plain Text Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.5pt;
	font-family:"Calibri","sans-serif";}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:SimSun;}
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
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:SimSun;}
span.PlainTextChar
	{mso-style-name:"Plain Text Char";
	mso-style-priority:99;
	mso-style-link:"Plain Text";
	font-family:"Calibri","sans-serif";}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:430589412;
	mso-list-type:hybrid;
	mso-list-template-ids:-188832140 1784160302 67698713 67698715 67698703 676=
98713 67698715 67698703 67698713 67698715;}
@list l0:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:.75in;
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
<p class=3D"MsoNormal">Here are the consolidated results for RC1 weekly tes=
ting:<o:p></o:p></p>
<p class=3D"MsoNormal">Summary:<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:.75in;text-indent:-.25in=
;mso-list:l0 level1 lfo1">
<![if !supportLists]><span style=3D"mso-list:Ignore">1.<span style=3D"font:=
7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]>The syslog daemon can't startup on all qemu images =
and real hardware.&nbsp; The feature &quot;Incremental RPM image generation=
&quot; doesn't work with this build, report as bug
<b>2617</b>. This issue is common across all platforms<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:.75in;text-indent:-.25in=
;mso-list:l0 level1 lfo1">
<![if !supportLists]><span style=3D"mso-list:Ignore">2.<span style=3D"font:=
7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]>A critical issue that is grub-efi-native fails due =
to help2man script which blocked all cases on FRI2, reported as bug
<b>2527</b><o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:.75in;text-indent:-.25in=
;mso-list:l0 level1 lfo1">
<![if !supportLists]><span style=3D"mso-list:Ignore">3.<span style=3D"font:=
7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]>For Hob, &nbsp;there are two minor issues: Incorrec=
t total image size in &quot;View Package&quot; page and the layer cannot be=
 deleted in a special situation.
<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:.75in;text-indent:-.25in=
;mso-list:l0 level1 lfo1">
<![if !supportLists]><span style=3D"mso-list:Ignore">4.<span style=3D"font:=
7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]>For Core Build System there are the following bugs:=
 2571, 2572, 2589, 2590, 2617 and 2619 (none of them with target 1.3M1)<o:p=
></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<table class=3D"MsoNormalTable" border=3D"0" cellpadding=3D"0">
<tbody>
<tr>
<td style=3D"background:red;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">BLOCK <span style=3D"font-size:12.0pt;font-family:Si=
mSun;color:black">
<o:p></o:p></span></p>
</td>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">Critical bugs, more than 50% test cases are blocked =
<span style=3D"font-size:12.0pt;font-family:SimSun;color:black">
<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"background:green;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">GOOD <span style=3D"font-size:12.0pt;font-family:Sim=
Sun;color:black">
<o:p></o:p></span></p>
</td>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">Only Normal, Minor or Enhancement bugs, less than 10=
% test cases failed
<span style=3D"font-size:12.0pt;font-family:SimSun;color:black"><o:p></o:p>=
</span></p>
</td>
</tr>
<tr>
<td style=3D"background:orange;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">BUGGY <span style=3D"font-size:12.0pt;font-family:Si=
mSun;color:black">
<o:p></o:p></span></p>
</td>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal">Normal, Major and Critical bugs, more than 10% test =
cases failed
<span style=3D"font-size:12.0pt;font-family:SimSun;color:black"><o:p></o:p>=
</span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10.0pt">Laurentiu=1B$B!G=
=1B(Bs observation:</span></i><span style=3D"font-size:10.0pt">
<i>there is a thin red line between buggy and good</i> <i>(as long as the r=
eports are done by different persons)</i><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:1.0in">&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; <o:p>
</o:p></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" width=3D"965" style=3D"width:724.0pt;margin-left:30.2pt;border-colla=
pse:collapse">
<tbody>
<tr style=3D"height:15.75pt">
<td width=3D"965" nowrap=3D"" colspan=3D"4" valign=3D"bottom" style=3D"widt=
h:724.0pt;border:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75=
pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">Test Result Summary</s=
pan></b><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&qu=
ot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></b></=
p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"189" nowrap=3D"" valign=3D"bottom" style=3D"width:141.5pt;bord=
er:solid black 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.=
75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">Component</span></b><b=
><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&q=
uot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"199" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><b><span style=3D"font-si=
ze:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&q=
uot;;color:black">Target</span></b><b><span style=3D"font-size:10.0pt;line-=
height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:blac=
k"><o:p></o:p></span></b></p>
</td>
<td width=3D"80" nowrap=3D"" valign=3D"bottom" style=3D"width:59.9pt;border=
-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:sol=
id black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><b><span style=3D"font-si=
ze:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&q=
uot;;color:black">Status</span></b><b><span style=3D"font-size:10.0pt;line-=
height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:blac=
k"><o:p></o:p></span></b></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><b><span style=3D"font-si=
ze:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&q=
uot;;color:black">Comments</span></b><b><span style=3D"font-size:10.0pt;lin=
e-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:bl=
ack"><o:p></o:p></span></b></p>
</td>
</tr>
<tr style=3D"height:24.75pt">
<td width=3D"189" nowrap=3D"" rowspan=3D"10" style=3D"width:141.5pt;border:=
solid black 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:24.75p=
t">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">BSP</span></b><b><span=
 style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&=
quot;sans-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"199" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Beagleboard</span><span style=3D"font-size:10.0pt;line-heigh=
t:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o=
:p></o:p></span></p>
</td>
<td width=3D"80" nowrap=3D"" style=3D"width:59.9pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;bac=
kground:#FFC000;padding:0in 5.4pt 0in 5.4pt;height:24.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">BUGGY</span><span style=3D"font-size:10.0pt;line-height:115%=
;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o=
:p></span></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Syslogd can=1B$B!G=1B(Bt startup</span><span style=3D"font-s=
ize:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:24.75pt">
<td width=3D"199" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Routerstationpro</span><span style=3D"font-size:10.0pt;line-=
height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:blac=
k"><o:p></o:p></span></p>
</td>
<td width=3D"80" nowrap=3D"" style=3D"width:59.9pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;bac=
kground:#FFC000;padding:0in 5.4pt 0in 5.4pt;height:24.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">BUGGY</span><span style=3D"font-size:10.0pt;line-height:115%=
;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o=
:p></span></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Syslogd can=1B$B!G=1B(Bt startup</span><span style=3D"font-s=
ize:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:17.9pt">
<td width=3D"199" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:17.9pt">
<p class=3D"MsoNormal" style=3D"line-height:115%">Mpc8315e-rdb<span style=
=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;s=
ans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"80" nowrap=3D"" style=3D"width:59.9pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;bac=
kground:#FFC000;padding:0in 5.4pt 0in 5.4pt;height:17.9pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">BUGGY</span><span style=3D"font-size:10.0pt;line-height:115%=
;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o=
:p></span></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:17.9pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Syslogd can=1B$B!G=1B(Bt startup</span><span style=3D"font-s=
ize:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:24.75pt">
<td width=3D"199" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">eMenlow</span><span style=3D"font-size:10.0pt;line-height:11=
5%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p><=
/o:p></span></p>
</td>
<td width=3D"80" nowrap=3D"" style=3D"width:59.9pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;bac=
kground:#FFC000;padding:0in 5.4pt 0in 5.4pt;height:24.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">BUGGY</span><span style=3D"font-size:10.0pt;line-height:115%=
;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o=
:p></span></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:24.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">X server could not successful start up to the Desktop; syslo=
g is not started by default in background on bsps</span><span style=3D"font=
-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-seri=
f&quot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"199" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Blacksand</span><span style=3D"font-size:10.0pt;line-height:=
115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p=
></o:p></span></p>
</td>
<td width=3D"80" nowrap=3D"" valign=3D"bottom" style=3D"width:59.9pt;border=
-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:sol=
id black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:15.75p=
t">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GOOD</span><span style=3D"font-size:10.0pt;line-height:115%;=
font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:=
p></span></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">syslog is not started by default in background on bsps</span=
><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&q=
uot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"199" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Crownbay-emgd</span><span style=3D"font-size:10.0pt;line-hei=
ght:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black">=
<o:p></o:p></span></p>
</td>
<td width=3D"80" nowrap=3D"" valign=3D"bottom" style=3D"width:59.9pt;border=
-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:sol=
id black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:15.75p=
t">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GOOD</span><span style=3D"font-size:10.0pt;line-height:115%;=
font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:=
p></span></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">syslog is not started by default in background on bsps</span=
><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&q=
uot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"199" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Sugarbay</span><span style=3D"font-size:10.0pt;line-height:1=
15%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p>=
</o:p></span></p>
</td>
<td width=3D"80" nowrap=3D"" valign=3D"bottom" style=3D"width:59.9pt;border=
-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:sol=
id black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:15.0pt=
">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GOOD</span><span style=3D"font-size:10.0pt;line-height:115%;=
font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:=
p></span></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">syslog is not started by default in background on bsps</span=
><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&q=
uot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"199" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">FRI2-sato-sdk</span><span style=3D"font-size:10.0pt;line-hei=
ght:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black">=
<o:p></o:p></span></p>
</td>
<td width=3D"80" nowrap=3D"" valign=3D"bottom" style=3D"width:59.9pt;border=
-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:sol=
id black 1.0pt;background:red;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">BLOCK</span><span style=3D"font-size:10.0pt;line-height:115%=
;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o=
:p></span></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">grub-efi-native fails due to help2man script
</span><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;A=
rial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"199" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">HuronRiver-sato-sdk</span><span style=3D"font-size:10.0pt;li=
ne-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:b=
lack"><o:p></o:p></span></p>
</td>
<td width=3D"80" nowrap=3D"" valign=3D"bottom" style=3D"width:59.9pt;border=
-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:sol=
id black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:15.0pt=
">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GOOD</span><span style=3D"font-size:10.0pt;line-height:115%;=
font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:=
p></span></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">syslog is not started by default in background on bsps</span=
><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&q=
uot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"199" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Jasperforest-lsb</span><span style=3D"font-size:10.0pt;line-=
height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:blac=
k"><o:p></o:p></span></p>
</td>
<td width=3D"80" nowrap=3D"" valign=3D"bottom" style=3D"width:59.9pt;border=
-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:sol=
id black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:15.0pt=
">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GOOD</span><span style=3D"font-size:10.0pt;line-height:115%;=
font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:=
p></span></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Everything runs well</span><span style=3D"font-size:10.0pt;l=
ine-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:=
black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"189" nowrap=3D"" rowspan=3D"5" style=3D"width:141.5pt;border:s=
olid black 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.75pt=
">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">QEMU</span></b><b><spa=
n style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,=
&quot;sans-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"199" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">qemuarm</span><span style=3D"font-size:10.0pt;line-height:11=
5%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p><=
/o:p></span></p>
</td>
<td width=3D"80" nowrap=3D"" style=3D"width:59.9pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;bac=
kground:#FFC000;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">BUGGY</span><span style=3D"font-size:10.0pt;line-height:115%=
;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o=
:p></span></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Syslogd can=1B$B!G=1B(Bt startup</span><span style=3D"font-s=
ize:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"199" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">qemuppc</span><span style=3D"font-size:10.0pt;line-height:11=
5%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p><=
/o:p></span></p>
</td>
<td width=3D"80" nowrap=3D"" style=3D"width:59.9pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;bac=
kground:#FFC000;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">BUGGY</span><span style=3D"font-size:10.0pt;line-height:115%=
;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o=
:p></span></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Syslogd can=1B$B!G=1B(Bt startup</span><span style=3D"font-s=
ize:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"199" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">qemumips</span><span style=3D"font-size:10.0pt;line-height:1=
15%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p>=
</o:p></span></p>
</td>
<td width=3D"80" nowrap=3D"" style=3D"width:59.9pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;bac=
kground:#FFC000;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">BUGGY</span><span style=3D"font-size:10.0pt;line-height:115%=
;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o=
:p></span></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Syslogd can=1B$B!G=1B(Bt startup</span><span style=3D"font-s=
ize:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"199" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">qemux86</span><span style=3D"font-size:10.0pt;line-height:11=
5%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p><=
/o:p></span></p>
</td>
<td width=3D"80" nowrap=3D"" valign=3D"bottom" style=3D"width:59.9pt;border=
-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:sol=
id black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:15.75p=
t">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GOOD</span><span style=3D"font-size:10.0pt;line-height:115%;=
font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:=
p></span></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">syslog is not started by default in background on bsps</span=
><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&q=
uot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"199" nowrap=3D"" valign=3D"bottom" style=3D"width:149.5pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">qemux86-64</span><span style=3D"font-size:10.0pt;line-height=
:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:=
p></o:p></span></p>
</td>
<td width=3D"80" nowrap=3D"" valign=3D"bottom" style=3D"width:59.9pt;border=
-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:sol=
id black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:15.0pt=
">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GOOD</span><span style=3D"font-size:10.0pt;line-height:115%;=
font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:=
p></span></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">syslog is not started by default in background on bsps</span=
><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&q=
uot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:51.75pt">
<td width=3D"189" nowrap=3D"" style=3D"width:141.5pt;border:solid black 1.0=
pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:51.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">Core build system</spa=
n></b><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"199" nowrap=3D"" style=3D"width:149.5pt;border-top:none;border=
-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;p=
adding:0in 5.4pt 0in 5.4pt;height:51.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-famil=
y:SimSun;color:black">=1B$B!!=1B(B</span><span style=3D"font-family:&quot;T=
imes New Roman&quot;,&quot;serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"80" nowrap=3D"" style=3D"width:59.9pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;bac=
kground:#FFC000;padding:0in 5.4pt 0in 5.4pt;height:51.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">BUGGY</span><span style=3D"font-size:10.0pt;line-height:115%=
;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o=
:p></span></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:51.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">three issues for multilib, do_rootfs failed for lib32-connma=
n-gnome with ipk;no provider for lib32/lib64-lsbinitscripts;&nbsp;
 failed dependency for util-linux with multilib build;&nbsp; For yocto-bsp/=
kernel tools, fail to build core-image-sato when add patch into the kernel;=
 X can't start in sato image built by yocto-bsp tool</span><span style=3D"f=
ont-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-s=
erif&quot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"189" nowrap=3D"" style=3D"width:141.5pt;border:solid black 1.0=
pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">HOB</span></b><b><span=
 style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&=
quot;sans-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"199" nowrap=3D"" style=3D"width:149.5pt;border-top:none;border=
-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;p=
adding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-famil=
y:SimSun;color:black">=1B$B!!=1B(B</span><span style=3D"font-family:&quot;T=
imes New Roman&quot;,&quot;serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"80" nowrap=3D"" style=3D"width:59.9pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;bac=
kground:#92D050;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GOOD</span><span style=3D"font-size:10.0pt;line-height:115%;=
font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:=
p></span></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">2 minor issues</span><span style=3D"font-size:10.0pt;line-he=
ight:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"=
><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:28.5pt">
<td width=3D"189" nowrap=3D"" style=3D"width:141.5pt;border:solid black 1.0=
pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:28.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">ADT</span></b><b><span=
 style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&=
quot;sans-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"199" nowrap=3D"" style=3D"width:149.5pt;border-top:none;border=
-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;p=
adding:0in 5.4pt 0in 5.4pt;height:28.5pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-famil=
y:SimSun;color:black">=1B$B!!=1B(B</span><span style=3D"font-family:&quot;T=
imes New Roman&quot;,&quot;serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"80" nowrap=3D"" valign=3D"bottom" style=3D"width:59.9pt;border=
-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:sol=
id black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:28.5pt=
">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GOOD</span><span style=3D"font-size:10.0pt;line-height:115%;=
font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:=
p></span></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:28.5pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">32bit kernel generated oprofile data file can not be read by=
 remote 64bit opreport;Segmentation fault on qemuarm from
 /usr/lib/libust.so.0;</span><span style=3D"font-size:10.0pt;line-height:11=
5%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p><=
/o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal" style=3D"margin-left:1.0in"><o:p>&nbsp;</o:p></p>
<table class=3D"MsoNormalTable" border=3D"1" cellpadding=3D"0">
<tbody>
<tr>
<td colspan=3D"6" valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Detailed Test Result for each component</b><span style=3D"font=
-size:12.0pt;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></=
span></p>
</td>
</tr>
<tr>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Target</b>
<span style=3D"font-size:12.0pt;line-height:115%;font-family:SimSun;color:b=
lack"><o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt;background:rg=
b(240, 240,
            240)">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Total TCs</b><span style=3D"font-size:12.0pt;line-height:115%;=
font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt;background:rg=
b(240, 240,
            240)">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Not Run</b><span style=3D"font-size:12.0pt;line-height:115%;fo=
nt-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt;background:rg=
b(240, 240,
            240)">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Passed</b><span style=3D"font-size:12.0pt;line-height:115%;fon=
t-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt;background:rg=
b(240, 240,
            240)">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Failed</b><span style=3D"font-size:12.0pt;line-height:115%;fon=
t-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td style=3D"background:#F0F0F0;padding:.75pt .75pt .75pt .75pt;background:=
rgb(240, 240,
            240)">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Not testable (Blocked)</b><span style=3D"font-size:12.0pt;line=
-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Beagleboard Sato-SDK</b><span style=3D"font-size:12.0pt;line-h=
eight:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">42<span style=3D"font-size:12.0pt;line-height:115%;font-family:Si=
mSun;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:12.0pt;line-height:115%;font-family:Sim=
Sun;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">40</span><span style=3D"font-size:12.=
0pt;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">2 (bug 2533)</span><span style=3D"font-=
size:12.0pt;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></s=
pan></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:12.0pt=
;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Routerstationpro Sato-SDK</b><span style=3D"font-size:12.0pt;l=
ine-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">35<span style=3D"font-size:12.0pt;line-height:115%;font-family:Si=
mSun;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:12.0pt;line-height:115%;font-family:Sim=
Sun;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">33</span><span style=3D"font-size:12.=
0pt;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">2 (bug 2533)</span><span style=3D"font-=
size:12.0pt;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></s=
pan></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:12.0pt=
;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Mpc8315e-rdb Sato-SDK</b><span style=3D"font-size:12.0pt;line-=
height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">38<span style=3D"font-size:12.0pt;line-height:115%;font-family:Si=
mSun;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:12.0pt;line-height:115%;font-family:Sim=
Sun;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">36</span><span style=3D"font-size:12.=
0pt;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">2 (bug 2533)</span><span style=3D"font-=
size:12.0pt;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></s=
pan></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:12.0pt=
;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>eMenlow Sato-SDK</b><b><span style=3D"font-size:10.5pt;line-he=
ight:115%"><o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">67<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></=
span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></s=
pan></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">41</span><span style=3D"font-size:10.=
5pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">6 (bug 2507)</span><span style=3D"font-=
size:10.5pt;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">20 (bug 2507)</span><span style=3D"font=
-size:10.5pt;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>n450 Sato-SDK</b><b><span style=3D"font-size:10.5pt;line-heigh=
t:115%"><o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">66<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></=
span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></s=
pan></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">64</span><span style=3D"font-size:10.=
5pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">2 (bug 2535)</span><span style=3D"font-=
size:10.5pt;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:10.5pt=
;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Crownbay-Sato-SDK</b><b><span style=3D"font-size:10.5pt;line-h=
eight:115%"><o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">67<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></=
span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></s=
pan></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">65</span><span style=3D"font-size:10.=
5pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">2 (bug 2535)</span><span style=3D"font-=
size:10.5pt;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:10.5pt=
;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>FRI2 Sato-SDK</b><b><span style=3D"font-size:10.5pt;line-heigh=
t:115%"><o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">86<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></=
span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></s=
pan></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">0</span><span style=3D"font-size:10.5=
pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:10.5pt=
;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">86 (bug 2527)</span><span style=3D"font=
-size:10.5pt;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>HuronRiver Sato-SDK</b><b><span style=3D"font-size:10.5pt;line=
-height:115%"><o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">70<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></=
span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></s=
pan></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">68</span><span style=3D"font-size:10.=
5pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">2 (bug 2535)</span><span style=3D"font-=
size:10.5pt;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:10.5pt=
;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Sugarbay Sato-SDK</b><b><span style=3D"font-size:10.5pt;line-h=
eight:115%"><o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">70<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></=
span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></s=
pan></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">68</span><span style=3D"font-size:10.=
5pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">2 (bug 2535)</span><span style=3D"font-=
size:10.5pt;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:10.5pt=
;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Jasperforest lsb-SDK</b><b><span style=3D"font-size:10.5pt;lin=
e-height:115%"><o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">34<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></=
span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></s=
pan></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">34</span><span style=3D"font-size:10.=
5pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:10.5pt=
;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:10.5pt=
;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Qemuarm Sato</b><span style=3D"font-size:12.0pt;line-height:11=
5%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">32<span style=3D"font-size:12.0pt;line-height:115%;font-family:Si=
mSun;color:black"><o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:12.0pt;line-height:115%;font-family:Sim=
Sun;color:black"><o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">30</span><span style=3D"font-size:12.=
0pt;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">2 (bug 2533)</span><span style=3D"font-=
size:12.0pt;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></s=
pan></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:12.0pt=
;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Qemuarm Sato-SDK</b><span style=3D"font-size:12.0pt;line-heigh=
t:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">37<span style=3D"font-size:12.0pt;line-height:115%;font-family:Si=
mSun;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:12.0pt;line-height:115%;font-family:Sim=
Sun;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">35</span><span style=3D"font-size:12.=
0pt;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">2 (bug 2533)</span><span style=3D"font-=
size:12.0pt;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></s=
pan></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:12.0pt=
;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Qemumips Sato</b><span style=3D"font-size:12.0pt;line-height:1=
15%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">32<span style=3D"font-size:12.0pt;line-height:115%;font-family:Si=
mSun;color:black"><o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:12.0pt;line-height:115%;font-family:Sim=
Sun;color:black"><o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">30</span><span style=3D"font-size:12.=
0pt;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">2 (bug 2533)</span><span style=3D"font-=
size:12.0pt;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></s=
pan></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:12.0pt=
;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Qemumips Sato-SDK</b><span style=3D"font-size:12.0pt;line-heig=
ht:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">37<span style=3D"font-size:12.0pt;line-height:115%;font-family:Si=
mSun;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:12.0pt;line-height:115%;font-family:Sim=
Sun;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">35</span><span style=3D"font-size:12.=
0pt;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">2 (bug 2533)</span><span style=3D"font-=
size:12.0pt;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></s=
pan></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:12.0pt=
;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Qemuppc Sato</b><span style=3D"font-size:12.0pt;line-height:11=
5%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">32<span style=3D"font-size:12.0pt;line-height:115%;font-family:Si=
mSun;color:black"><o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:12.0pt;line-height:115%;font-family:Sim=
Sun;color:black"><o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">30</span><span style=3D"font-size:12.=
0pt;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">2 (bug 2533)</span><span style=3D"font-=
size:12.0pt;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></s=
pan></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:12.0pt=
;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Qemuppc Sato-SDK</b><span style=3D"font-size:12.0pt;line-heigh=
t:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">37<span style=3D"font-size:12.0pt;line-height:115%;font-family:Si=
mSun;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:12.0pt;line-height:115%;font-family:Sim=
Sun;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">35</span><span style=3D"font-size:12.=
0pt;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">2 (bug 2533)</span><span style=3D"font-=
size:12.0pt;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></s=
pan></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:12.0pt=
;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Qemux86-64 Sato</b><b><span style=3D"font-size:10.5pt;line-hei=
ght:115%"><o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">32<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></=
span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></s=
pan></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">30</span><span style=3D"font-size:10.=
5pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">2 (bug 2535)</span><span style=3D"font-=
size:10.5pt;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:10.5pt=
;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Qemux86-64 Sato-SDK</b><b><span style=3D"font-size:10.5pt;line=
-height:115%"><o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">37<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></=
span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></s=
pan></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">35</span><span style=3D"font-size:10.=
5pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">2 (bug 2535)</span><span style=3D"font-=
size:10.5pt;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:10.5pt=
;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Qemux86 Sato</b><b><span style=3D"font-size:10.5pt;line-height=
:115%"><o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">32<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></=
span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></s=
pan></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">30</span><span style=3D"font-size:10.=
5pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">2 (bug 2535)</span><span style=3D"font-=
size:10.5pt;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:10.5pt=
;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Qemux86 Sato-SDK</b><b><span style=3D"font-size:10.5pt;line-he=
ight:115%"><o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">37<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></=
span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></s=
pan></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">35</span><span style=3D"font-size:10.=
5pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">2 (bug 2535)</span><span style=3D"font-=
size:10.5pt;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:10.5pt=
;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Core build system</b><b><span style=3D"font-size:10.5pt;line-h=
eight:115%"><o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">32<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></=
span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></s=
pan></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">24</span><span style=3D"font-size:10.=
5pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">7 (2571, 2572, 2589, 2590, 2617, 2619, =
2559)</span><span style=3D"font-size:10.5pt;line-height:115%;color:red"><o:=
p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">1 (bug 2589)</span><span style=3D"font-=
size:10.5pt;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:8.1pt">
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt;height:8.1pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>HOB</b><b><span style=3D"font-size:10.5pt;line-height:115%"><o=
:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt;height:8.1pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">16<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></=
span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt;height:8.1pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></s=
pan></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt;height:8.1pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">15</span><span style=3D"font-size:10.=
5pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt;height:8.1pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">1 (bug 2613)</span><span style=3D"font-=
size:10.5pt;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt;height:8.1pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:10.5pt=
;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>ADT</b><b><span style=3D"font-size:10.5pt;line-height:115%"><o=
:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">28<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></=
span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></s=
pan></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">26</span><span style=3D"font-size:10.=
5pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">2 (bug 1452&nbsp; 2577)</span><span sty=
le=3D"font-size:10.5pt;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">0</span><span style=3D"font-size:10.5pt=
;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Total</b><b><span style=3D"font-size:10.5pt;line-height:115%">=
<o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">996<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p><=
/span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.5pt;line-height:115%"><o:p>&nbsp;</o:=
p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">839</span><span style=3D"font-size:10=
.5pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">50</span><span style=3D"font-size:10.5p=
t;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">107</span><span style=3D"font-size:10.5=
pt;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal" style=3D"margin-left:1.0in"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText"><b>Commit Information<o:p></o:p></b></p>
<p class=3D"MsoNormal"><b>---------------------------------------&nbsp;<o:p=
></o:p></b></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none">Tree/Branch: poky/mast=
er<br>
Commit id: 7f017cab0b3e4d5a4fc356eccd8eb8429b0531d0<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"color:#=
1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">Meta branch=
: master<o:p></o:p></span></p>
<pre><span style=3D"font-size:10.5pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;">Commit id: bd00e28dd54b06a1f01f186be168d3af872f96d4<o:p><=
/o:p></span></pre>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><o:p>&nbsp;</o:p></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" width=3D"930" style=3D"width:697.75pt;margin-left:-.9pt;border-colla=
pse:collapse">
<tbody>
<tr style=3D"height:15.75pt">
<td width=3D"221" nowrap=3D"" colspan=3D"2" valign=3D"bottom" style=3D"widt=
h:166.0pt;border:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75=
pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">Component</span></b><b=
><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&q=
uot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"633" valign=3D"bottom" style=3D"width:474.8pt;border:solid bla=
ck 1.0pt;border-left:none;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">Bug Number</span></b><=
b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&=
quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:56.95pt;borde=
r:solid black 1.0pt;border-left:none;padding:0in 5.4pt 0in 5.4pt;height:15.=
75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><b><span style=3D"font-si=
ze:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&q=
uot;;color:black">Target Milestone</span></b><b><span style=3D"font-size:10=
.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;=
color:black"><o:p></o:p></span></b></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"125" nowrap=3D"" rowspan=3D"5" style=3D"width:93.45pt;border:s=
olid black 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.75pt=
">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">System &amp; Core OS</=
span></b><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&q=
uot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></b><=
/p>
</td>
<td width=3D"97" nowrap=3D"" rowspan=3D"4" style=3D"width:72.55pt;border-to=
p:none;border-left:none;border-bottom:solid black 1.0pt;border-right:solid =
black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">System Usage</span></b=
><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Aria=
l&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"633" nowrap=3D"" valign=3D"bottom" style=3D"width:474.8pt;padd=
ing:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Bug 2535 syslog is not started by default in background on b=
sps</span><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:56.95pt;borde=
r-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:so=
lid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">1.3 M2</span><span style=3D"font-size:10.0pt;line-height:115=
%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></=
o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"633" nowrap=3D"" valign=3D"bottom" style=3D"width:474.8pt;padd=
ing:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Bug 2507 X server could not successful start up to the Deskt=
op</span><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:56.95pt;borde=
r-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:so=
lid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">1.3 M2</span><span style=3D"font-size:10.0pt;line-height:115=
%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></=
o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"633" nowrap=3D"" valign=3D"bottom" style=3D"width:474.8pt;padd=
ing:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%">Bug 2509 The 'About' opti=
on with connman-properties doesn't display the picture.<span style=3D"font-=
size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif=
&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:56.95pt;borde=
r-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:so=
lid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">1.3 M2</span><span style=3D"font-size:10.0pt;line-height:115=
%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></=
o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"633" nowrap=3D"" valign=3D"bottom" style=3D"width:474.8pt;padd=
ing:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%">Bug 2508 Fotowall icons a=
ppear abnormal on qemumips sato-sdk images with nightly build (20120523-2)<=
span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quo=
t;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:56.95pt;borde=
r-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:so=
lid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">1.3 M2</span><span style=3D"font-size:10.0pt;line-height:115=
%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></=
o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"97" nowrap=3D"" style=3D"width:72.55pt;border-top:none;border-=
left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pa=
dding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">Other</span></b><b><sp=
an style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;=
,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"633" nowrap=3D"" valign=3D"bottom" style=3D"width:474.8pt;padd=
ing:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:red">New!</span><span style=3D"font-size:10.0pt;line-height:115%;fo=
nt-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"> Bug 2527 g=
rub-efi-native
 fails due to help2man script </span><span style=3D"font-size:10.0pt;line-h=
eight:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black=
"><o:p></o:p></span></p>
</td>
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:56.95pt;borde=
r-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:so=
lid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:SimSun;color:black">=1B$B!!=1B(B</span>=
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"221" nowrap=3D"" colspan=3D"2" rowspan=3D"8" style=3D"width:16=
6.0pt;border:solid black 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;=
height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">Core build system</spa=
n></b><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"633" nowrap=3D"" valign=3D"bottom" style=3D"width:474.8pt;padd=
ing:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Bug 2559 [yocto-bsp]X can't start in sato image built by yoc=
to-bsp tool</span><span style=3D"font-size:10.0pt;line-height:115%;font-fam=
ily:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span=
></p>
</td>
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:56.95pt;borde=
r-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:so=
lid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">1.3 M2</span><span style=3D"font-size:10.0pt;line-height:115=
%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></=
o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"633" nowrap=3D"" valign=3D"bottom" style=3D"width:474.8pt;padd=
ing:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Bug 2587 [yocto-bsp]the default branch is not in remote bran=
ch</span><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:56.95pt;borde=
r-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:so=
lid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">1.3 M2</span><span style=3D"font-size:10.0pt;line-height:115=
%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></=
o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"633" nowrap=3D"" valign=3D"bottom" style=3D"width:474.8pt;padd=
ing:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Bug 2589 [yocto-kernel] fail to build core-image-sato when a=
dd patch into the kernel</span><span style=3D"font-size:10.0pt;line-height:=
115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p=
></o:p></span></p>
</td>
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:56.95pt;borde=
r-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:so=
lid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">1.3 M3</span><span style=3D"font-size:10.0pt;line-height:115=
%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></=
o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"633" nowrap=3D"" valign=3D"bottom" style=3D"width:474.8pt;padd=
ing:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Bug 2590 [multilib]do_rootfs failed for lib32-connman-gnome =
with ipk</span><span style=3D"font-size:10.0pt;line-height:115%;font-family=
:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></=
p>
</td>
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:56.95pt;borde=
r-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:so=
lid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">1.3 M3</span><span style=3D"font-size:10.0pt;line-height:115=
%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></=
o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"633" nowrap=3D"" valign=3D"bottom" style=3D"width:474.8pt;padd=
ing:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Bug 2571 [multilib] no provider for lib32/lib64-lsbinitscrip=
ts
</span><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;A=
rial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:56.95pt;borde=
r-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:so=
lid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">1.3 M2</span><span style=3D"font-size:10.0pt;line-height:115=
%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></=
o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"633" nowrap=3D"" valign=3D"bottom" style=3D"width:474.8pt;padd=
ing:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Bug 2572 [multilib] failed dependency for util-linux with mu=
ltilib build</span><span style=3D"font-size:10.0pt;line-height:115%;font-fa=
mily:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></spa=
n></p>
</td>
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:56.95pt;borde=
r-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:so=
lid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">1.3 M2</span><span style=3D"font-size:10.0pt;line-height:115=
%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></=
o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"633" nowrap=3D"" valign=3D"bottom" style=3D"width:474.8pt;padd=
ing:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:red">New</span><span style=3D"font-size:10.0pt;line-height:115%;fon=
t-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"> Bug 2617 In=
cremental
 RPM image generation fails</span><span style=3D"font-size:10.0pt;line-heig=
ht:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><=
o:p></o:p></span></p>
</td>
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:56.95pt;borde=
r-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:so=
lid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"633" nowrap=3D"" valign=3D"bottom" style=3D"width:474.8pt;padd=
ing:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:red">New</span><span style=3D"font-size:10.0pt;line-height:115%;fon=
t-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"> Bug 2619 Ar=
chive
 work directory and export source package fails</span><span style=3D"font-s=
ize:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:56.95pt;borde=
r-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:so=
lid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"221" nowrap=3D"" colspan=3D"2" rowspan=3D"2" style=3D"width:16=
6.0pt;border-top:none;border-left:solid black 1.0pt;border-bottom:none;bord=
er-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">ADT</span></b><b><span=
 style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&=
quot;sans-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"633" valign=3D"bottom" style=3D"width:474.8pt;border:none;bord=
er-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Bug 1452 32bit kernel generated oprofile data file can not b=
e read by remote 64bit operation</span><span style=3D"font-size:10.0pt;line=
-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:bla=
ck"><o:p></o:p></span></p>
</td>
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:56.95pt;borde=
r:none;border-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15=
.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">1.3</span><span style=3D"font-size:10.0pt;line-height:115%;f=
ont-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p=
></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"633" valign=3D"bottom" style=3D"width:474.8pt;border:none;bord=
er-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Bug 2577 Segmentation fault on qemuarm from /usr/lib/libust.=
so.0</span><span style=3D"font-size:10.0pt;line-height:115%;font-family:&qu=
ot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:56.95pt;borde=
r:none;border-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15=
.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">1.3</span><span style=3D"font-size:10.0pt;line-height:115%;f=
ont-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p=
></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"221" nowrap=3D"" colspan=3D"2" rowspan=3D"4" style=3D"width:16=
6.0pt;border:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">HOB</span></b><b><span=
 style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&=
quot;sans-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"633" valign=3D"bottom" style=3D"width:474.8pt;border:none;bord=
er-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Bug 2576 [Hob2] wrong image profile selected after template =
load
</span><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;A=
rial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:56.95pt;borde=
r:none;border-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15=
.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">1.3 M2</span><span style=3D"font-size:10.0pt;line-height:115=
%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></=
o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"633" valign=3D"bottom" style=3D"width:474.8pt;border:none;bord=
er-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Bug 2581 [Hob2] 'HobNotebook' no attribute 'tabbar' when bui=
ld failure</span><span style=3D"font-size:10.0pt;line-height:115%;font-fami=
ly:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span>=
</p>
</td>
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:56.95pt;borde=
r:none;border-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15=
.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">1.3 M2</span><span style=3D"font-size:10.0pt;line-height:115=
%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></=
o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"633" valign=3D"bottom" style=3D"width:474.8pt;border:none;bord=
er-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:red">New!</span><span style=3D"font-size:10.0pt;line-height:115%;fo=
nt-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"> Bug 2618[H=
ob2]
 Incorrect total image size in &quot;View Package&quot; page</span><span st=
yle=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quo=
t;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:56.95pt;borde=
r:none;border-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15=
.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:SimSun;color:black">=1B$B!!=1B(B</span>=
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"633" valign=3D"bottom" style=3D"width:474.8pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:red">New!</span><span style=3D"font-size:10.0pt;line-height:115%;fo=
nt-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"> Bug 2613[H=
ob2]
 Delete layer failed </span><span style=3D"font-size:10.0pt;line-height:115=
%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></=
o:p></span></p>
</td>
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:56.95pt;borde=
r-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:so=
lid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:SimSun;color:black">=1B$B!!=1B(B</span>=
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Br,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:9.0pt;font-family:&quot;=
Verdana&quot;,&quot;sans-serif&quot;;color:#244061">Laurentiu Serban<o:p></=
o:p></span></b></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt;font-family:&quot;Ver=
dana&quot;,&quot;sans-serif&quot;;color:#244061">QA Engineer
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt;font-family:&quot;Ver=
dana&quot;,&quot;sans-serif&quot;;color:#244061">Open Source Technology Cen=
ter<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt;font-family:&quot;Ver=
dana&quot;,&quot;sans-serif&quot;;color:#1F497D">System Software Division R=
omania</span><span style=3D"color:#1F497D"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt;font-family:&quot;Ver=
dana&quot;,&quot;sans-serif&quot;;color:#244061">Desk: &#43;40 31 8604742</=
span><b><span style=3D"color:#244061"><o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt;font-family:&quot;Ver=
dana&quot;,&quot;sans-serif&quot;;color:#244061">iNET: 88451042<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_E16513A01CAAFF40B65178C63CE45EEC1914CA3CIRSMSX102gercor_--

--_004_E16513A01CAAFF40B65178C63CE45EEC1914CA3CIRSMSX102gercor_
Content-Type: application/oleobject;
	name="Yocto 1.3M1 RC1 detail_testreport_Weekly_consolidated.ods"
Content-Description: Yocto 1.3M1 RC1
 detail_testreport_Weekly_consolidated.ods
Content-Disposition: attachment;
	filename="Yocto 1.3M1 RC1 detail_testreport_Weekly_consolidated.ods";
	size=29811; creation-date="Mon, 18 Jun 2012 18:56:53 GMT";
	modification-date="Mon, 18 Jun 2012 20:10:24 GMT"
Content-Transfer-Encoding: base64

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

--_004_E16513A01CAAFF40B65178C63CE45EEC1914CA3CIRSMSX102gercor_--
