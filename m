Return-Path: <laurentiu.serban@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B1DAE01304
	for <poky@pokylinux.org>; Wed, 20 Jun 2012 11:58:39 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 20 Jun 2012 11:58:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; 
	d="xml'?ods'72,48?scan'72,48,208,217,72,48";a="168137415"
Received: from irsmsx101.ger.corp.intel.com ([163.33.3.153])
	by fmsmga001.fm.intel.com with ESMTP; 20 Jun 2012 11:58:17 -0700
Received: from irsmsx104.ger.corp.intel.com (163.33.3.159) by
	IRSMSX101.ger.corp.intel.com (163.33.3.153) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Wed, 20 Jun 2012 19:58:13 +0100
Received: from irsmsx102.ger.corp.intel.com ([169.254.2.176]) by
	IRSMSX104.ger.corp.intel.com ([169.254.5.70]) with mapi id
	14.01.0355.002; Wed, 20 Jun 2012 19:58:12 +0100
From: "Serban, Laurentiu" <laurentiu.serban@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "poky@pokylinux.org"
	<poky@pokylinux.org>
Thread-Topic: Fullpass Test Report for Yocto 1.3_M1 20120613 Build
Thread-Index: Ac1PFp8RRbIU4W2MTHGiRWcS5D/Aow==
Date: Wed, 20 Jun 2012 18:58:12 +0000
Message-ID: <E16513A01CAAFF40B65178C63CE45EEC1914DA6F@IRSMSX102.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.180]
MIME-Version: 1.0
Cc: "Purdie, Richard" <richard.purdie@intel.com>, "Wold,
	Saul" <saul.wold@intel.com>
Subject: Fullpass Test Report for Yocto 1.3_M1 20120613 Build
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
X-List-Received-Date: Wed, 20 Jun 2012 18:58:40 -0000
X-Groupsio-MsgNum: 7911
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_004_E16513A01CAAFF40B65178C63CE45EEC1914DA6FIRSMSX102gercor_"

--_004_E16513A01CAAFF40B65178C63CE45EEC1914DA6FIRSMSX102gercor_
Content-Type: multipart/alternative;
	boundary="_000_E16513A01CAAFF40B65178C63CE45EEC1914DA6FIRSMSX102gercor_"

--_000_E16513A01CAAFF40B65178C63CE45EEC1914DA6FIRSMSX102gercor_
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

Hello all,

This is the Fullpass test report for Yocto 1.3 M1 20120613 build on meta-in=
tel platform. QA found one critical issue that is grub-efi-native fails due=
 to help2man script which blocked all cases on FRI2, reported as bug 2527. =
For Hob, we found two minor issues, they are Incorrect total image size in =
"View Package" page and can=1B$B!G=1B(Bt delete layer in special situation.=
 For core build system, self-hosted-image are still running, no new issue f=
ound till now, For Distribution Support, Yocto build on OpenSuse 12.1 64 bi=
t and  Ubuntu 12.04 64 bit could pass, but beecrypt-native failed to compil=
e on Fedora17(final) 64bit report as 2631.
Other features perform well and no new issue found except the syslog daemon=
 can't startup on qemux86/x86-64 and meta-intel platforms.
For Build performance, one qemux86 sato build on a Core i7 machine costs 95=
 minutes.

Many thanks to Hongna and Yi for the reports.

 =1B$B!!=1B(B

Critical bugs, more than 50% test cases are blocked

=1B$B!!=1B(B

Only Normal, Minor or Enhancement bugs, or less than 10% test cases failed

=1B$B!!=1B(B

Normal, Major and Critical bugs, and more than 10% test cases failed


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

Qemuarm

BUGGY

Syslogd can=1B$B!G=1B(Bt startup

Qemuppc

BUGGY

Syslogd can=1B$B!G=1B(Bt startup

Qemumips

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

Everything runs well

Compliance

GOOD

No regression issue with LTP and POSIX on sugarbay and n450

Stress

GOOD

Both Crashme and Helltest on Jasperforest could pass 24 hours stress testin=
g

Distribution Support

BUGGY

beecrypt-native failed to compile on Fedora17(final) 64bit

Power and Performance

GOOD

one qemux86 sato build on a Core i7 machine costs 115 minutes

ADT

=1B$B!!=1B(B

BUGGY

32bit kernel generated oprofile data file can not be read by remote 64bit o=
preport;Segmentation fault on qemuarm from /usr/lib/libust.so.0; glxgears b=
locked all clutter template cases.






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

51

3

36

11 (2571, 2572, 2589, 2590, 2617, 2619, 2559)

1 (bug 2589)

HOB

38

0

37

1 (bug 2613)

0

ADT

51

0

43

2 (bug 1452  2577)

6(bug 2543)

Compliance

2

0

2

0

0

Stress

2

0

2

0

0

Distribution Support

3

0

2

1(2631)

0

Total

1067

3

896

55

113




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

Distro

New! Bug 2631 beecrypt-native failed to compile on Fedora17(final) 64bit





Best regards,
Laurentiu Serban
QA Engineer
Open Source Technology Center
System Software Division Romania
Desk: +40 31 8604742
iNET: 88451042


--_000_E16513A01CAAFF40B65178C63CE45EEC1914DA6FIRSMSX102gercor_
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
	{font-family:"MS Gothic";
	panose-1:2 11 6 9 7 2 5 8 2 4;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:SimSun;}
@font-face
	{font-family:"\@MS Gothic";
	panose-1:2 11 6 9 7 2 5 8 2 4;}
@font-face
	{font-family:"\@SimSun";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:Verdana;
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
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal" style=3D"text-indent:10.5pt">Hello all,<o:p></o:p></=
p>
<p class=3D"MsoNormal" style=3D"text-indent:10.5pt"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:10.5pt">This is the Fullpass te=
st report for Yocto 1.3 M1 20120613 build on meta-intel platform<span style=
=3D"color:#1F497D">.
</span>QA found one critical issue that is grub-efi-native fails due to hel=
p2man script which blocked all cases on FRI2, reported as bug 2527. For Hob=
, we found two minor issues, they are Incorrect total image size in &quot;V=
iew Package&quot; page and can=1B$B!G=1B(Bt delete layer
 in special situation. For core build system, self-hosted-image are still r=
unning, no new issue found till now, For Distribution Support, Yocto build =
on OpenSuse 12.1 64 bit and &nbsp;Ubuntu 12.04 64 bit could pass, but beecr=
ypt-native failed to compile on Fedora17(final)
 64bit report as 2631.<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:10.5pt">Other features perform =
well and no new issue found except the syslog daemon can't startup on qemux=
86/x86-64 and meta-intel platforms.<span style=3D"color:#1F497D"><o:p></o:p=
></span></p>
<p class=3D"MsoNormal" style=3D"text-indent:10.0pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">For Build pe=
rformance, one qemux86 sato build on a Core i7 machine costs 95 minutes.<o:=
p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-indent:10.0pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;<=
/o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-indent:10.0pt"><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">Many thanks =
to Hongna and Yi for the reports.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" width=3D"671" style=3D"width:503.6pt;border-collapse:collapse">
<tbody>
<tr style=3D"height:14.25pt">
<td width=3D"168" nowrap=3D"" valign=3D"bottom" style=3D"width:125.8pt;back=
ground:red;padding:0in 5.4pt 0in 5.4pt;height:14.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">&nbsp;<span style=3D"font-size:10.0pt;line-height:115%;font-famil=
y:&quot;MS Gothic&quot;;color:black">=1B$B!!=1B(B</span><span style=3D"font=
-size:10.0pt;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></=
span></p>
</td>
<td width=3D"504" nowrap=3D"" valign=3D"bottom" style=3D"width:377.8pt;padd=
ing:0in 5.4pt 0in 5.4pt;height:14.25pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Critical bugs, more than 50% test cases are blocked</span><s=
pan style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot=
;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:14.25pt">
<td width=3D"168" nowrap=3D"" valign=3D"bottom" style=3D"width:125.8pt;back=
ground:#9BBB59;padding:0in 5.4pt 0in 5.4pt;height:14.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;MS Gothic&quot;;color:black">=1B$B!!=1B(B</span><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span><=
/p>
</td>
<td width=3D"504" nowrap=3D"" valign=3D"bottom" style=3D"width:377.8pt;padd=
ing:0in 5.4pt 0in 5.4pt;height:14.25pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Only Normal, Minor or Enhancement bugs, or less than 10% tes=
t cases failed</span><span style=3D"font-size:10.0pt;line-height:115%;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></s=
pan></p>
</td>
</tr>
<tr style=3D"height:14.25pt">
<td width=3D"168" nowrap=3D"" valign=3D"bottom" style=3D"width:125.8pt;back=
ground:#FFC000;padding:0in 5.4pt 0in 5.4pt;height:14.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;MS Gothic&quot;;color:black">=1B$B!!=1B(B</span><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:SimSun;color:black"><o:p></o:p></span><=
/p>
</td>
<td width=3D"504" nowrap=3D"" valign=3D"bottom" style=3D"width:377.8pt;padd=
ing:0in 5.4pt 0in 5.4pt;height:14.25pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Normal, Major and Critical bugs, and more than 10% test case=
s failed</span><span style=3D"font-size:10.0pt;line-height:115%;font-family=
:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></=
p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt"><o:p>&nbsp;</o:p></=
span></p>
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
;;color:black">Qemuarm</span><span style=3D"font-size:10.0pt;line-height:11=
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
;;color:black">Qemuppc</span><span style=3D"font-size:10.0pt;line-height:11=
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
;;color:black">Qemumips</span><span style=3D"font-size:10.0pt;line-height:1=
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
y:&quot;MS Gothic&quot;;color:black">=1B$B!!=1B(B</span><span style=3D"font=
-family:&quot;Times New Roman&quot;,&quot;serif&quot;;color:black"><o:p></o=
:p></span></p>
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
y:&quot;MS Gothic&quot;;color:black">=1B$B!!=1B(B</span><span style=3D"font=
-family:&quot;Times New Roman&quot;,&quot;serif&quot;;color:black"><o:p></o=
:p></span></p>
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
;;color:black">Everything runs well</span><span style=3D"font-size:10.0pt;l=
ine-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:=
black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"189" nowrap=3D"" style=3D"width:141.5pt;border:solid black 1.0=
pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">Compliance</span></b><=
b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&=
quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"199" nowrap=3D"" style=3D"width:149.5pt;border-top:none;border=
-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;p=
adding:0in 5.4pt 0in 5.4pt;height:15.75pt">
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
;;color:black">No regression issue with LTP and POSIX on sugarbay and n450<=
/span><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"189" nowrap=3D"" style=3D"width:141.5pt;border:solid black 1.0=
pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">Stress</span></b><b><s=
pan style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot=
;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"199" nowrap=3D"" style=3D"width:149.5pt;border-top:none;border=
-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;p=
adding:0in 5.4pt 0in 5.4pt;height:15.75pt">
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
;;color:black">Both Crashme and Helltest on Jasperforest could pass 24 hour=
s stress testing</span><span style=3D"font-size:10.0pt;line-height:115%;fon=
t-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p><=
/span></p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"189" nowrap=3D"" style=3D"width:141.5pt;border:solid black 1.0=
pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">Distribution Support</=
span></b><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&q=
uot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></b><=
/p>
</td>
<td width=3D"199" nowrap=3D"" style=3D"width:149.5pt;border-top:none;border=
-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;p=
adding:0in 5.4pt 0in 5.4pt;height:15.75pt">
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
;;color:black">beecrypt-native failed to compile on Fedora17(final) 64bit</=
span><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:28.5pt">
<td width=3D"189" nowrap=3D"" style=3D"width:141.5pt;border:solid black 1.0=
pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:28.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">Power and Performance<=
/span></b><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></b>=
</p>
</td>
<td width=3D"199" nowrap=3D"" style=3D"width:149.5pt;border-top:none;border=
-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;p=
adding:0in 5.4pt 0in 5.4pt;height:28.5pt">
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
;;color:black">one qemux86 sato build on a Core i7 machine costs 115 minute=
s</span><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;=
Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
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
y:&quot;MS Gothic&quot;;color:black">=1B$B!!=1B(B</span><span style=3D"font=
-family:&quot;Times New Roman&quot;,&quot;serif&quot;;color:black"><o:p></o=
:p></span></p>
</td>
<td width=3D"80" nowrap=3D"" valign=3D"bottom" style=3D"width:59.9pt;border=
-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:sol=
id black 1.0pt;background:#FFC000;padding:0in 5.4pt 0in 5.4pt;height:28.5pt=
">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">BUGGY</span><span style=3D"font-size:10.0pt;line-height:115%=
;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o=
:p></span></p>
</td>
<td width=3D"497" valign=3D"bottom" style=3D"width:373.1pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:28.5pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">32bit kernel generated oprofile data file can not be read by=
 remote 64bit opreport;Segmentation fault on qemuarm from
 /usr/lib/libust.so.0; glxgears blocked all clutter template cases.</span><=
span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quo=
t;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
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
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Total TCs</b><span style=3D"font-size:12.0pt;line-height:115%;=
font-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Not Run</b><span style=3D"font-size:12.0pt;line-height:115%;fo=
nt-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Passed</b><span style=3D"font-size:12.0pt;line-height:115%;fon=
t-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td style=3D"background:white;padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Failed</b><span style=3D"font-size:12.0pt;line-height:115%;fon=
t-family:SimSun;color:black"><o:p></o:p></span></p>
</td>
<td style=3D"background:#F0F0F0;padding:.75pt .75pt .75pt .75pt">
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
<p class=3D"MsoNormal" style=3D"line-height:115%">&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; 67<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></span=
></p>
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
ght:115%">51<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></=
span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">3<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></s=
pan></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">36</span><span style=3D"font-size:10.=
5pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">11 (2571, 2572, 2589, 2590, 2617, 2619,=
 2559)</span><span style=3D"font-size:10.5pt;line-height:115%;color:red"><o=
:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">1 (bug 2589)</span><span style=3D"font-=
size:10.5pt;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>HOB</b><b><span style=3D"font-size:10.5pt;line-height:115%"><o=
:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">38<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></=
span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></s=
pan></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">37</span><span style=3D"font-size:10.=
5pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">1 (bug 2613)</span><span style=3D"font-=
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
ght:115%"><b>ADT</b><b><span style=3D"font-size:10.5pt;line-height:115%"><o=
:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">51<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></=
span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></s=
pan></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">43</span><span style=3D"font-size:10.=
5pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">2 (bug 1452&nbsp; 2577)</span><span sty=
le=3D"font-size:10.5pt;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">6(bug 2543)</span><span style=3D"font-s=
ize:10.5pt;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Compliance</b><b><span style=3D"font-size:10.5pt;line-height:1=
15%"><o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">2<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></s=
pan></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></s=
pan></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">2</span><span style=3D"font-size:10.5=
pt;line-height:115%;color:green"><o:p></o:p></span></p>
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
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Stress</b><b><span style=3D"font-size:10.5pt;line-height:115%"=
><o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">2<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></s=
pan></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></s=
pan></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">2</span><span style=3D"font-size:10.5=
pt;line-height:115%;color:green"><o:p></o:p></span></p>
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
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b>Distribution Support</b><b><span style=3D"font-size:10.5pt;lin=
e-height:115%"><o:p></o:p></span></b></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">3<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></s=
pan></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">0<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></s=
pan></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">2</span><span style=3D"font-size:10.5=
pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">1(2631)</span><span style=3D"font-size:=
10.5pt;line-height:115%;color:red"><o:p></o:p></span></p>
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
ght:115%">1067<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p>=
</span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%">3<span style=3D"font-size:10.5pt;line-height:115%"><o:p></o:p></s=
pan></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:green">896</span><span style=3D"font-size:10=
.5pt;line-height:115%;color:green"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">55</span><span style=3D"font-size:10.5p=
t;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
<td valign=3D"top" style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><span style=3D"color:red">113</span><span style=3D"font-size:10.5=
pt;line-height:115%;color:red"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
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
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" width=3D"930" style=3D"width:697.8pt;margin-left:-.9pt;border-collap=
se:collapse">
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
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:57.0pt;border=
:solid black 1.0pt;border-left:none;padding:0in 5.4pt 0in 5.4pt;height:15.7=
5pt">
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
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:57.0pt;border=
-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:sol=
id black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
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
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:57.0pt;border=
-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:sol=
id black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
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
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:57.0pt;border=
-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:sol=
id black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
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
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:57.0pt;border=
-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:sol=
id black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
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
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:57.0pt;border=
-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:sol=
id black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;MS Gothic&quot;;color:black">=1B$=
B!!=1B(B</span><span style=3D"font-size:10.0pt;line-height:115%;font-family=
:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></=
p>
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
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:57.0pt;border=
-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:sol=
id black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
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
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:57.0pt;border=
-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:sol=
id black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
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
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:57.0pt;border=
-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:sol=
id black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
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
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:57.0pt;border=
-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:sol=
id black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
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
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:57.0pt;border=
-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:sol=
id black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
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
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:57.0pt;border=
-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:sol=
id black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
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
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:57.0pt;border=
-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:sol=
id black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
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
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:57.0pt;border=
-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:sol=
id black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
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
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:57.0pt;border=
:none;border-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.=
0pt">
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
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:57.0pt;border=
:none;border-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.=
75pt">
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
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:57.0pt;border=
:none;border-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.=
0pt">
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
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:57.0pt;border=
:none;border-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.=
0pt">
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
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:57.0pt;border=
:none;border-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.=
0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;MS Gothic&quot;;color:black">=1B$=
B!!=1B(B</span><span style=3D"font-size:10.0pt;line-height:115%;font-family=
:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></=
p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td width=3D"633" valign=3D"bottom" style=3D"width:474.8pt;border:none;bord=
er-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:red">New!</span><span style=3D"font-size:10.0pt;line-height:115%;fo=
nt-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"> Bug 2613[H=
ob2]
 Delete layer failed </span><span style=3D"font-size:10.0pt;line-height:115=
%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></=
o:p></span></p>
</td>
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:57.0pt;border=
:none;border-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.=
75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;MS Gothic&quot;;color:black">=1B$=
B!!=1B(B</span><span style=3D"font-size:10.0pt;line-height:115%;font-family=
:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></=
p>
</td>
</tr>
<tr style=3D"height:15.75pt">
<td colspan=3D"2" style=3D"border:solid black 1.0pt;border-top:none;padding=
:0in 0in 0in 0in;height:15.75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">Distro</span></b><b><s=
pan style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot=
;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"633" valign=3D"bottom" style=3D"width:474.8pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:red">New!</span><span style=3D"font-size:10.0pt;line-height:115%;fo=
nt-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"> Bug 2631 b=
eecrypt-native
 failed to compile on Fedora17(final) 64bit</span><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:red"><o:p></o:p></span></p>
</td>
<td width=3D"76" nowrap=3D"" valign=3D"bottom" style=3D"width:57.0pt;border=
-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:sol=
id black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.75pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:SimSun;color:black"><o:p>&nbsp;</o:p></=
span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Best regards,<o:p></o:p></p>
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

--_000_E16513A01CAAFF40B65178C63CE45EEC1914DA6FIRSMSX102gercor_--

--_004_E16513A01CAAFF40B65178C63CE45EEC1914DA6FIRSMSX102gercor_
Content-Type: application/oleobject;
	name="Yocto 1.3M1 RC1 detail_testreport_FullPass_consolidated.ods"
Content-Description: Yocto 1.3M1 RC1
 detail_testreport_FullPass_consolidated.ods
Content-Disposition: attachment;
	filename="Yocto 1.3M1 RC1 detail_testreport_FullPass_consolidated.ods";
	size=32261; creation-date="Wed, 20 Jun 2012 16:27:35 GMT";
	modification-date="Wed, 20 Jun 2012 18:56:37 GMT"
Content-Transfer-Encoding: base64

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

--_004_E16513A01CAAFF40B65178C63CE45EEC1914DA6FIRSMSX102gercor_--
