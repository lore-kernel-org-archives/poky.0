Return-Path: <laurentiu.serban@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7F06CE0044A
	for <poky@pokylinux.org>; Mon, 11 Jun 2012 10:53:28 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 11 Jun 2012 10:52:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; 
	d="xml'?ods'72,48?scan'72,48,72,48,208,217";a="110812555"
Received: from irsmsx101.ger.corp.intel.com ([163.33.3.153])
	by AZSMGA002.ch.intel.com with ESMTP; 11 Jun 2012 10:52:14 -0700
Received: from irsmsx104.ger.corp.intel.com (163.33.3.159) by
	IRSMSX101.ger.corp.intel.com (163.33.3.153) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Mon, 11 Jun 2012 18:52:13 +0100
Received: from irsmsx102.ger.corp.intel.com ([169.254.2.178]) by
	IRSMSX104.ger.corp.intel.com ([169.254.5.248]) with mapi id
	14.01.0355.002; Mon, 11 Jun 2012 18:52:13 +0100
From: "Serban, Laurentiu" <laurentiu.serban@intel.com>
To: "'poky@pokylinux.org'" <'poky@pokylinux.org'>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: Weekly Test Report for Yocto 1.3_M1 20120606 Build 
Thread-Index: Ac1H+XXT1DORqABASYWQt4rKFX/c2A==
Date: Mon, 11 Jun 2012 17:52:12 +0000
Message-ID: <E16513A01CAAFF40B65178C63CE45EEC19143DFC@IRSMSX102.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.181]
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 11 Jun 2012 13:28:42 -0700
Subject: Weekly Test Report for Yocto 1.3_M1 20120606 Build
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
X-List-Received-Date: Mon, 11 Jun 2012 17:53:30 -0000
X-Groupsio-MsgNum: 7833
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_004_E16513A01CAAFF40B65178C63CE45EEC19143DFCIRSMSX102gercor_"

--_004_E16513A01CAAFF40B65178C63CE45EEC19143DFCIRSMSX102gercor_
Content-Type: multipart/alternative;
	boundary="_000_E16513A01CAAFF40B65178C63CE45EEC19143DFCIRSMSX102gercor_"

--_000_E16513A01CAAFF40B65178C63CE45EEC19143DFCIRSMSX102gercor_
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

This is the weekly test report for Yocto 1.3 20120606 build. We find some m=
eta-intel BSPs failed to build with "Weekly build 1.3_M1 Week 4", one is fo=
r connman-gnome and another is for gst-ffmpeg, Due to the issue, QA testing=
 against Sugarbay/eMenlow/Crownbay/FRI2/Huron River is blocked. The 2 bugs =
we reported for these build error are bug 2561 and 2562. Otherwise, Hob rep=
orts "no attribute __dummy_image__", which is reported as bug 2574 and shou=
ld be fixed in latest master. Another minor issue for Hob is that Incorrect=
 image shown when loading template file, bug 2576. For ADT, we found two is=
sues that are Segmentation fault on qemuarm from /usr/lib/libust.so.0 and  =
ADT-Installer failed if the folder /opt/poky/1.2+snapshot exist. There are =
also two issues on Core Build System. Other features perform well.



Many thanks to Hongna, Jiajun and Yi for the help.

Test Summary:
---------------------------------------

Test Result Summary

Component

Target

Status

Comments

BSP

eMenlow

BLOCK

connman-gnome do_configure fail on autobuilder for several BSPs

Blacksand

GOOD

syslog is not started by default in background on bsps

Crownbay-emgd

BLOCK

connman-gnome do_configure fail on autobuilder for several BSPs

Sugarbay

BLOCK

connman-gnome do_configure fail on autobuilder for several BSPs

Fish River Island

BLOCK

connman-gnome do_configure fail on autobuilder for several BSPs

HuronRiver-sato-sdk

BLOCK

connman-gnome do_configure fail on autobuilder for several BSPs

Jasperforest-lsb

GOOD

Everything runs well

Beagleboard

GOOD

Everything runs well

Routerstationpro

GOOD

Everything runs well

Mpc8315e-rdb

GOOD

Everything runs well

QEMU

qemux86

GOOD

Everything runs well

qemux86-64

GOOD

Everything runs well

qemuarm

GOOD

Everything runs well

qemuppc

GOOD

Everything runs well

qemumips

GOOD

Everything runs well

ADT

=1B$B!!=1B(B

GOOD

32bit kernel generated oprofile data file can not be read by remote 64bit o=
preport;Segmentation fault on qemuarm from /usr/lib/libust.so.0;

Core Build System

=1B$B!!=1B(B

BUGGY

Everything runs well except https://bugzilla.yoctoproject.org/show_bug.cgi?=
id=3D2363
and  https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2747



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

eMenlow Sato-SDK

66

0

0

0

66(bug 2562)

n450 Sato-SDK

64

0

63

1(bug 2535)

0

Crownbay-Sato-SDK

66

0

0

0

66(bug 2562)

Sugarbay Sato-SDK

69

0

0

0

69(bug 2562)

HuronRiver Sato-SDK

70

0

0

0

70(bug 2562)

Jasperforest lsb-SDK

32

0

32

0

0

Beagleboard Sato-SDK

40

0

40

0

0

Routerstationpro Sato-SDK

33

0

33

0

0

Mpc8315e-rdb Sato-SDK

36

0

36

0

0

Qemux86-64 Sato

30

0

30

0

0

Qemux86-64 Sato-SDK

35

0

35

0

0

Qemux86 Sato

30

0

30

0

0

Qemux86 Sato-SDK

35

0

35

0

0

Qemuarm Sato

30

0

30

0

0

Qemuarm Sato-SDK

35

0

35

0

0

Qemumips Sato

30

0

30

0

0

Qemumips Sato-SDK

35

0

35

0

0

Qemuppc Sato

30

0

30

0

0

Qemuppc Sato-SDK

35

0

35

0

0

ADT

27

0

24

3 (bug 1452  2577 2553)

0

Core Build System

13

0

11

2(2363, 2747)

0

Total

841

0

564

6

271


* You can check the detailed test result in attachment for each target.
** The failed/blocked case number is listed with failed cases=1B$B!G=1B(B b=
ug number.


Commit Information
---------------------------------------
Tree/Branch: poky/master
Commit id: 348da93e283b2b8454fd9cde80d4b17378e2a168
master:df8f55a919b3cc602ce1f1c51630c7edf6e36b55

Meta branch: master

Commit id: 8bc2fa135060e941bcbb4dcfb664e175a3eb871d

Issue summary
--------------------------------------
Component

Bug Number

Target Milestone

System & Core OS

System Usage

Bug 2508 Fotowall icons appear abnormal on qemumips sato-sdk images with ni=
ghtly build (20120523-2)

1.3 M2

Bug 2509 The 'About' option with connman-properties doesn't display the pic=
ture.

1.3 M2

Bug 2535 syslog is not started by default in background on bsps(Crownbay,N4=
50 etc)

1.3 M2

Other

New! Bug 2562 connman-gnome do_configure fail on autobuilder for several BS=
Ps

=1B$B!!=1B(B

New! Bug 2561 gst-ffmpeg do_configure failed on autobuilder for lsb build

=1B$B!!=1B(B

ADT

Bug 1452 32bit kernel generated oprofile data file can not be read by remot=
e 64bit operation

1.3

Bug 2068 Clutter run failed in qemux86/x86-64 using toolchain

1.3

Bug 2069 Clutter run failed in qemux86/qemux86_64 on ubuntu/opensuse/fedora=
.

1.2.1

Bug 2534 [Regression]Glxgears failed on qemux86/x86-64/arm/mips/ppc on Ubun=
tu 11.10 64bit

 --

New! Bug 2553 ADT-Installer failed if the folder /opt/poky/1.2+snapshot exi=
st

=1B$B!!=1B(B

New! Bug 2577 Segmentation fault on qemuarm from /usr/lib/libust.so.0

=1B$B!!=1B(B

HOB

New! Bug 2576 [Hob2] wrong image profile selected after template load

=1B$B!!=1B(B

New! Bug 2574 [Hob2] no attribute '__dummy_image__' for RecipeListModel

=1B$B!!=1B(B

Core Build System

Bug 2747 eglibc do_package_write_deb fails

1.2.1

Bug 2367 core-image-sato-sdk failed to do do_rootfs on fedora17 64bit

1.2


Laurentiu Serban
QA Engineer
Open Source Technology Center
System Software Division Romania
Desk: +40 31 8604742
iNET: 88451042


--_000_E16513A01CAAFF40B65178C63CE45EEC19143DFCIRSMSX102gercor_
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
	{font-family:"\@SimSun";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:SimSun;}
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
span.PlainTextChar
	{mso-style-name:"Plain Text Char";
	mso-style-priority:99;
	mso-style-link:"Plain Text";
	font-family:"Calibri","sans-serif";}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:SimSun;}
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
<p class=3D"MsoPlainText" style=3D"text-indent:10.5pt">This is the weekly t=
est report for Yocto 1.3 20120606 build. We find some meta-intel BSPs faile=
d to build with &quot;Weekly build 1.3_M1 Week 4&quot;, one is for connman-=
gnome and another is for gst-ffmpeg, Due to the
 issue, QA testing against Sugarbay/eMenlow/Crownbay/FRI2/Huron River is bl=
ocked. The 2 bugs we reported for these build error are bug 2561 and 2562. =
Otherwise, Hob reports &quot;no attribute __dummy_image__&quot;, which is r=
eported as bug 2574 and should be fixed in
 latest master. Another minor issue for Hob is that Incorrect image shown w=
hen loading template file, bug 2576. For ADT, we found two issues that are =
Segmentation fault on qemuarm from /usr/lib/libust.so.0 and&nbsp; ADT-Insta=
ller failed if the folder /opt/poky/1.2&#43;snapshot
 exist. There are also two issues on Core Build System. Other features perf=
orm well.<o:p></o:p></p>
<p class=3D"MsoPlainText" style=3D"text-indent:10.5pt"><o:p>&nbsp;</o:p></p=
>
<p class=3D"MsoPlainText" style=3D"text-indent:10.5pt">Many thanks to Hongn=
a, Jiajun and Yi for the help.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;">Test Summary:<o:p></o:p></span></b></p=
>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;">--------------------------------------=
-<o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt"><o:p>&nbsp;</o:p></=
span></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" width=3D"965" style=3D"width:724.05pt;margin-left:-.9pt;border-colla=
pse:collapse">
<tbody>
<tr style=3D"height:15.0pt">
<td width=3D"965" nowrap=3D"" colspan=3D"4" valign=3D"bottom" style=3D"widt=
h:724.05pt;border:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0=
pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">Test Result Summary</s=
pan></b><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&qu=
ot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></b></=
p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"132" nowrap=3D"" valign=3D"bottom" style=3D"width:99.0pt;borde=
r:solid black 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0=
pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><b><span style=3D"font-si=
ze:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&q=
uot;;color:black">Component</span></b><b><span style=3D"font-size:10.0pt;li=
ne-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:b=
lack"><o:p></o:p></span></b></p>
</td>
<td width=3D"216" nowrap=3D"" valign=3D"bottom" style=3D"width:162.3pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><b><span style=3D"font-si=
ze:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&q=
uot;;color:black">Target</span></b><b><span style=3D"font-size:10.0pt;line-=
height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:blac=
k"><o:p></o:p></span></b></p>
</td>
<td width=3D"82" nowrap=3D"" valign=3D"bottom" style=3D"width:.85in;border-=
top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:soli=
d black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><b><span style=3D"font-si=
ze:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&q=
uot;;color:black">Status</span></b><b><span style=3D"font-size:10.0pt;line-=
height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:blac=
k"><o:p></o:p></span></b></p>
</td>
<td width=3D"535" valign=3D"bottom" style=3D"width:401.55pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><b><span style=3D"font-si=
ze:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&q=
uot;;color:black">Comments</span></b><b><span style=3D"font-size:10.0pt;lin=
e-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:bl=
ack"><o:p></o:p></span></b></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"132" nowrap=3D"" rowspan=3D"10" style=3D"width:99.0pt;border:s=
olid black 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"=
>
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">BSP</span></b><b><span=
 style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&=
quot;sans-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"216" nowrap=3D"" valign=3D"bottom" style=3D"width:162.3pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">eMenlow</span><span style=3D"font-size:10.0pt;line-height:11=
5%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p><=
/o:p></span></p>
</td>
<td width=3D"82" nowrap=3D"" valign=3D"bottom" style=3D"width:.85in;border-=
top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:soli=
d black 1.0pt;background:red;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">BLOCK</span><span style=3D"font-size:10.0pt;line-height:115%=
;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o=
:p></span></p>
</td>
<td width=3D"535" valign=3D"bottom" style=3D"width:401.55pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">connman-gnome do_configure fail on autobuilder for several B=
SPs</span><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"216" nowrap=3D"" valign=3D"bottom" style=3D"width:162.3pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Blacksand</span><span style=3D"font-size:10.0pt;line-height:=
115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p=
></o:p></span></p>
</td>
<td width=3D"82" nowrap=3D"" valign=3D"bottom" style=3D"width:.85in;border-=
top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:soli=
d black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"=
>
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GOOD</span><span style=3D"font-size:10.0pt;line-height:115%;=
font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:=
p></span></p>
</td>
<td width=3D"535" valign=3D"bottom" style=3D"width:401.55pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">syslog is not started by default in background on bsps</span=
><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&q=
uot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"216" nowrap=3D"" valign=3D"bottom" style=3D"width:162.3pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Crownbay-emgd</span><span style=3D"font-size:10.0pt;line-hei=
ght:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black">=
<o:p></o:p></span></p>
</td>
<td width=3D"82" nowrap=3D"" valign=3D"bottom" style=3D"width:.85in;border-=
top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:soli=
d black 1.0pt;background:red;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">BLOCK</span><span style=3D"font-size:10.0pt;line-height:115%=
;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o=
:p></span></p>
</td>
<td width=3D"535" valign=3D"bottom" style=3D"width:401.55pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">connman-gnome do_configure fail on autobuilder for several B=
SPs</span><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"216" nowrap=3D"" valign=3D"bottom" style=3D"width:162.3pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Sugarbay</span><span style=3D"font-size:10.0pt;line-height:1=
15%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p>=
</o:p></span></p>
</td>
<td width=3D"82" nowrap=3D"" valign=3D"bottom" style=3D"width:.85in;border-=
top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:soli=
d black 1.0pt;background:red;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">BLOCK</span><span style=3D"font-size:10.0pt;line-height:115%=
;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o=
:p></span></p>
</td>
<td width=3D"535" valign=3D"bottom" style=3D"width:401.55pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">connman-gnome do_configure fail on autobuilder for several B=
SPs</span><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"216" nowrap=3D"" valign=3D"bottom" style=3D"width:162.3pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Fish River Island</span><span style=3D"font-size:10.0pt;line=
-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:bla=
ck"><o:p></o:p></span></p>
</td>
<td width=3D"82" nowrap=3D"" valign=3D"bottom" style=3D"width:.85in;border-=
top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:soli=
d black 1.0pt;background:red;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">BLOCK</span><span style=3D"font-size:10.0pt;line-height:115%=
;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o=
:p></span></p>
</td>
<td width=3D"535" valign=3D"bottom" style=3D"width:401.55pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">connman-gnome do_configure fail on autobuilder for several B=
SPs</span><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"216" nowrap=3D"" valign=3D"bottom" style=3D"width:162.3pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">HuronRiver-sato-sdk</span><span style=3D"font-size:10.0pt;li=
ne-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:b=
lack"><o:p></o:p></span></p>
</td>
<td width=3D"82" nowrap=3D"" valign=3D"bottom" style=3D"width:.85in;border-=
top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:soli=
d black 1.0pt;background:red;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">BLOCK</span><span style=3D"font-size:10.0pt;line-height:115%=
;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o=
:p></span></p>
</td>
<td width=3D"535" valign=3D"bottom" style=3D"width:401.55pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">connman-gnome do_configure fail on autobuilder for several B=
SPs</span><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"216" nowrap=3D"" valign=3D"bottom" style=3D"width:162.3pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Jasperforest-lsb</span><span style=3D"font-size:10.0pt;line-=
height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:blac=
k"><o:p></o:p></span></p>
</td>
<td width=3D"82" nowrap=3D"" valign=3D"bottom" style=3D"width:.85in;border-=
top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:soli=
d black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"=
>
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GOOD</span><span style=3D"font-size:10.0pt;line-height:115%;=
font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:=
p></span></p>
</td>
<td width=3D"535" valign=3D"bottom" style=3D"width:401.55pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Everything runs well</span><span style=3D"font-size:10.0pt;l=
ine-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:=
black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"216" nowrap=3D"" valign=3D"bottom" style=3D"width:162.3pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Beagleboard</span><span style=3D"font-size:10.0pt;line-heigh=
t:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o=
:p></o:p></span></p>
</td>
<td width=3D"82" nowrap=3D"" valign=3D"bottom" style=3D"width:.85in;border-=
top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:soli=
d black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"=
>
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GOOD</span><span style=3D"font-size:10.0pt;line-height:115%;=
font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:=
p></span></p>
</td>
<td width=3D"535" valign=3D"bottom" style=3D"width:401.55pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Everything runs well</span><span style=3D"font-size:10.0pt;l=
ine-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:=
black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"216" nowrap=3D"" valign=3D"bottom" style=3D"width:162.3pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Routerstationpro</span><span style=3D"font-size:10.0pt;line-=
height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:blac=
k"><o:p></o:p></span></p>
</td>
<td width=3D"82" nowrap=3D"" valign=3D"bottom" style=3D"width:.85in;border-=
top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:soli=
d black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"=
>
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GOOD</span><span style=3D"font-size:10.0pt;line-height:115%;=
font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:=
p></span></p>
</td>
<td width=3D"535" valign=3D"bottom" style=3D"width:401.55pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Everything runs well</span><span style=3D"font-size:10.0pt;l=
ine-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:=
black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"216" nowrap=3D"" valign=3D"bottom" style=3D"width:162.3pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Mpc8315e-rdb</span><span style=3D"font-size:10.0pt;line-heig=
ht:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><=
o:p></o:p></span></p>
</td>
<td width=3D"82" nowrap=3D"" valign=3D"bottom" style=3D"width:.85in;border-=
top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:soli=
d black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"=
>
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GOOD</span><span style=3D"font-size:10.0pt;line-height:115%;=
font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:=
p></span></p>
</td>
<td width=3D"535" valign=3D"bottom" style=3D"width:401.55pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Everything runs well</span><span style=3D"font-size:10.0pt;l=
ine-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:=
black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"132" nowrap=3D"" rowspan=3D"5" style=3D"width:99.0pt;border:so=
lid black 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">QEMU</span></b><b><spa=
n style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,=
&quot;sans-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"216" nowrap=3D"" valign=3D"bottom" style=3D"width:162.3pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">qemux86</span><span style=3D"font-size:10.0pt;line-height:11=
5%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p><=
/o:p></span></p>
</td>
<td width=3D"82" nowrap=3D"" valign=3D"bottom" style=3D"width:.85in;border-=
top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:soli=
d black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"=
>
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GOOD</span><span style=3D"font-size:10.0pt;line-height:115%;=
font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:=
p></span></p>
</td>
<td width=3D"535" valign=3D"bottom" style=3D"width:401.55pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Everything runs well</span><span style=3D"font-size:10.0pt;l=
ine-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:=
black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"216" nowrap=3D"" valign=3D"bottom" style=3D"width:162.3pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">qemux86-64</span><span style=3D"font-size:10.0pt;line-height=
:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:=
p></o:p></span></p>
</td>
<td width=3D"82" nowrap=3D"" valign=3D"bottom" style=3D"width:.85in;border-=
top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:soli=
d black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"=
>
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GOOD</span><span style=3D"font-size:10.0pt;line-height:115%;=
font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:=
p></span></p>
</td>
<td width=3D"535" valign=3D"bottom" style=3D"width:401.55pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Everything runs well</span><span style=3D"font-size:10.0pt;l=
ine-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:=
black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"216" nowrap=3D"" valign=3D"bottom" style=3D"width:162.3pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">qemuarm</span><span style=3D"font-size:10.0pt;line-height:11=
5%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p><=
/o:p></span></p>
</td>
<td width=3D"82" nowrap=3D"" valign=3D"bottom" style=3D"width:.85in;border-=
top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:soli=
d black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"=
>
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GOOD</span><span style=3D"font-size:10.0pt;line-height:115%;=
font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:=
p></span></p>
</td>
<td width=3D"535" valign=3D"bottom" style=3D"width:401.55pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Everything runs well</span><span style=3D"font-size:10.0pt;l=
ine-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:=
black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"216" nowrap=3D"" valign=3D"bottom" style=3D"width:162.3pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">qemuppc</span><span style=3D"font-size:10.0pt;line-height:11=
5%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p><=
/o:p></span></p>
</td>
<td width=3D"82" nowrap=3D"" valign=3D"bottom" style=3D"width:.85in;border-=
top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:soli=
d black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"=
>
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GOOD</span><span style=3D"font-size:10.0pt;line-height:115%;=
font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:=
p></span></p>
</td>
<td width=3D"535" valign=3D"bottom" style=3D"width:401.55pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Everything runs well</span><span style=3D"font-size:10.0pt;l=
ine-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:=
black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"216" nowrap=3D"" valign=3D"bottom" style=3D"width:162.3pt;bord=
er-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:s=
olid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">qemumips</span><span style=3D"font-size:10.0pt;line-height:1=
15%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p>=
</o:p></span></p>
</td>
<td width=3D"82" nowrap=3D"" valign=3D"bottom" style=3D"width:.85in;border-=
top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:soli=
d black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"=
>
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GOOD</span><span style=3D"font-size:10.0pt;line-height:115%;=
font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:=
p></span></p>
</td>
<td width=3D"535" valign=3D"bottom" style=3D"width:401.55pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Everything runs well</span><span style=3D"font-size:10.0pt;l=
ine-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:=
black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:28.5pt">
<td width=3D"132" nowrap=3D"" style=3D"width:99.0pt;border:solid black 1.0p=
t;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:28.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">ADT</span></b><b><span=
 style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&=
quot;sans-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"216" nowrap=3D"" style=3D"width:162.3pt;border-top:none;border=
-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;p=
adding:0in 5.4pt 0in 5.4pt;height:28.5pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-famil=
y:SimSun;color:black">=1B$B!!=1B(B</span><span style=3D"font-family:&quot;A=
rial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"82" nowrap=3D"" valign=3D"bottom" style=3D"width:.85in;border-=
top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:soli=
d black 1.0pt;background:#92D050;padding:0in 5.4pt 0in 5.4pt;height:28.5pt"=
>
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">GOOD</span><span style=3D"font-size:10.0pt;line-height:115%;=
font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:=
p></span></p>
</td>
<td width=3D"535" valign=3D"bottom" style=3D"width:401.55pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.0pt;padding:0in 5.4pt 0in 5.4pt;height:28.5pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">32bit kernel generated oprofile data file can not be read by=
 remote 64bit opreport;Segmentation fault on qemuarm from
 /usr/lib/libust.so.0;</span><span style=3D"font-size:10.0pt;line-height:11=
5%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p><=
/o:p></span></p>
</td>
</tr>
<tr style=3D"height:28.5pt">
<td width=3D"132" nowrap=3D"" style=3D"width:99.0pt;border:solid black 1.0p=
t;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:28.5pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:115%"><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;;color:black">Core Build System</spa=
n></b><b><span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"216" nowrap=3D"" style=3D"width:162.3pt;border-top:none;border=
-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;p=
adding:0in 5.4pt 0in 5.4pt;height:28.5pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-famil=
y:SimSun;color:black">=1B$B!!=1B(B</span><span style=3D"font-family:SimSun;=
color:black"><o:p></o:p></span></p>
</td>
<td width=3D"82" nowrap=3D"" valign=3D"bottom" style=3D"width:.85in;border-=
top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:soli=
d black 1.0pt;background:#FFC000;padding:0in 5.4pt 0in 5.4pt;height:28.5pt"=
>
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">BUGGY</span><span style=3D"font-size:10.0pt;line-height:115%=
;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o=
:p></span></p>
</td>
<td width=3D"535" valign=3D"bottom" style=3D"width:401.55pt;border-top:none=
;border-left:none;border-bottom:solid black 1.0pt;border-right:solid black =
1.0pt;padding:0in 5.4pt 0in 5.4pt;height:28.5pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;color:black">Everything runs well except
</span><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2363"=
>https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2363</a><o:p></o:p></p=
>
<p class=3D"MsoNormal" style=3D"line-height:115%">and &nbsp;<a href=3D"http=
s://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2747">https://bugzilla.yoct=
oproject.org/show_bug.cgi?id=3D2747</a>
<span style=3D"font-size:10.0pt;line-height:115%;font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;;color:black">
<o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt"><o:p>&nbsp;</o:p></=
span></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" width=3D"671" style=3D"width:503.6pt;border-collapse:collapse">
<tbody>
<tr style=3D"height:14.25pt">
<td width=3D"168" nowrap=3D"" valign=3D"bottom" style=3D"width:125.8pt;back=
ground:red;padding:0in 5.4pt 0in 5.4pt;height:14.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">&nbsp;<=
span style=3D"font-size:10.0pt;font-family:SimSun;color:black">=1B$B!!=1B(B=
</span><span style=3D"font-size:10.0pt;font-family:SimSun;color:black"><o:p=
></o:p></span></p>
</td>
<td width=3D"504" nowrap=3D"" valign=3D"bottom" style=3D"width:377.8pt;padd=
ing:0in 5.4pt 0in 5.4pt;height:14.25pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">Critical bugs, more than 50% =
test cases are blocked</span><span style=3D"font-size:10.0pt;font-family:&q=
uot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:14.25pt">
<td width=3D"168" nowrap=3D"" valign=3D"bottom" style=3D"width:125.8pt;back=
ground:#9BBB59;padding:0in 5.4pt 0in 5.4pt;height:14.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:SimSun;color:black">=1B$B!!=1B(B</span=
><span style=3D"font-size:10.0pt;font-family:SimSun;color:black"><o:p></o:p=
></span></p>
</td>
<td width=3D"504" nowrap=3D"" valign=3D"bottom" style=3D"width:377.8pt;padd=
ing:0in 5.4pt 0in 5.4pt;height:14.25pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">Only Normal, Minor or Enhance=
ment bugs, or less than 10% test cases failed</span><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black">=
<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:14.25pt">
<td width=3D"168" nowrap=3D"" valign=3D"bottom" style=3D"width:125.8pt;back=
ground:#FFC000;padding:0in 5.4pt 0in 5.4pt;height:14.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:SimSun;color:black">=1B$B!!=1B(B</span=
><span style=3D"font-size:10.0pt;font-family:SimSun;color:black"><o:p></o:p=
></span></p>
</td>
<td width=3D"504" nowrap=3D"" valign=3D"bottom" style=3D"width:377.8pt;padd=
ing:0in 5.4pt 0in 5.4pt;height:14.25pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">Normal, Major and Critical bu=
gs, and more than 10% test cases failed</span><span style=3D"font-size:10.0=
pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p><=
/o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt"><o:p>&nbsp;</o:p></=
span></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" width=3D"652" style=3D"width:489.0pt;margin-left:-.9pt;border-collap=
se:collapse">
<tbody>
<tr style=3D"height:15.0pt">
<td width=3D"652" nowrap=3D"" colspan=3D"6" valign=3D"bottom" style=3D"widt=
h:489.0pt;border:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0p=
t">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Detailed Test Result for each component</span></b><b><sp=
an style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif=
&quot;;color:black"><o:p></o:p></span></b></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"167" nowrap=3D"" style=3D"width:125.0pt;border:solid black 1.0=
pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Target</span></b><b><span style=3D"font-size:10.0pt;font=
-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></=
span></b></p>
</td>
<td width=3D"71" style=3D"width:53.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Total TCs</span></b><span style=3D"font-size:10.0pt;font=
-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black">
</span><b><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&qu=
ot;sans-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"63" style=3D"width:47.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Not Run</span></b><b><span style=3D"font-size:10.0pt;fon=
t-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p><=
/span></b></p>
</td>
<td width=3D"57" style=3D"width:43.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Passed</span></b><span style=3D"font-size:10.0pt;font-fa=
mily:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black">
</span><b><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&qu=
ot;sans-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5=
.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Failed</span></b><span style=3D"font-size:10.0pt;font-fa=
mily:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black">
</span><b><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&qu=
ot;sans-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
<td width=3D"161" valign=3D"bottom" style=3D"width:121.0pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Not testable (Blocked)</span></b><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black">
</span><b><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&qu=
ot;sans-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"167" nowrap=3D"" style=3D"width:125.0pt;border:solid black 1.0=
pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">eMenlow Sato-SDK</span></b><b><span style=3D"font-size:1=
0.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:=
p></o:p></span></b></p>
</td>
<td width=3D"71" style=3D"width:53.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">66</span><span style=3D"font-size:10.0pt;font-family:&quot;=
Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"63" style=3D"width:47.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">0</span><span style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"57" style=3D"width:43.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00B050">0</span><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;;color:#00B050"><o:p></o:p></span></p>
</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5=
.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:red"><o:p></o:p></span></p>
</td>
<td width=3D"161" valign=3D"bottom" style=3D"width:121.0pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">66(bug 2562)</span><span style=3D"font-size:10.0pt;font-famil=
y:&quot;Arial&quot;,&quot;sans-serif&quot;;color:red"><o:p></o:p></span></p=
>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"167" nowrap=3D"" style=3D"width:125.0pt;border:solid black 1.0=
pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">n450 Sato-SDK</span></b><b><span style=3D"font-size:10.0=
pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p><=
/o:p></span></b></p>
</td>
<td width=3D"71" style=3D"width:53.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">64</span><span style=3D"font-size:10.0pt;font-family:&quot;=
Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"63" style=3D"width:47.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">0</span><span style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"57" style=3D"width:43.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00B050">63</span><span style=3D"font-size:10.0pt;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:#00B050"><o:p></o:p></span></p>
</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5=
.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">1(bug 2535)</span><span style=3D"font-size:10.0pt;font-family=
:&quot;Arial&quot;,&quot;sans-serif&quot;;color:red"><o:p></o:p></span></p>
</td>
<td width=3D"161" valign=3D"bottom" style=3D"width:121.0pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:red"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"167" nowrap=3D"" style=3D"width:125.0pt;border:solid black 1.0=
pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Crownbay-Sato-SDK</span></b><b><span style=3D"font-size:=
10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o=
:p></o:p></span></b></p>
</td>
<td width=3D"71" style=3D"width:53.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">66</span><span style=3D"font-size:10.0pt;font-family:&quot;=
Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"63" style=3D"width:47.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">0</span><span style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"57" style=3D"width:43.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00B050">0</span><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;;color:#00B050"><o:p></o:p></span></p>
</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5=
.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:red"><o:p></o:p></span></p>
</td>
<td width=3D"161" valign=3D"bottom" style=3D"width:121.0pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">66(bug 2562)</span><span style=3D"font-size:10.0pt;font-famil=
y:&quot;Arial&quot;,&quot;sans-serif&quot;;color:red"><o:p></o:p></span></p=
>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"167" nowrap=3D"" style=3D"width:125.0pt;border:solid black 1.0=
pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Sugarbay Sato-SDK</span></b><b><span style=3D"font-size:=
10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o=
:p></o:p></span></b></p>
</td>
<td width=3D"71" style=3D"width:53.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">69</span><span style=3D"font-size:10.0pt;font-family:&quot;=
Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"63" style=3D"width:47.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">0</span><span style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"57" style=3D"width:43.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00B050">0</span><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;;color:#00B050"><o:p></o:p></span></p>
</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5=
.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:red"><o:p></o:p></span></p>
</td>
<td width=3D"161" valign=3D"bottom" style=3D"width:121.0pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">69(bug 2562)</span><span style=3D"font-size:10.0pt;font-famil=
y:&quot;Arial&quot;,&quot;sans-serif&quot;;color:red"><o:p></o:p></span></p=
>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"167" nowrap=3D"" style=3D"width:125.0pt;border:solid black 1.0=
pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">HuronRiver Sato-SDK</span></b><b><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black">=
<o:p></o:p></span></b></p>
</td>
<td width=3D"71" style=3D"width:53.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">70</span><span style=3D"font-size:10.0pt;font-family:&quot;=
Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"63" style=3D"width:47.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">0</span><span style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"57" style=3D"width:43.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00B050">0</span><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;;color:#00B050"><o:p></o:p></span></p>
</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5=
.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:red"><o:p></o:p></span></p>
</td>
<td width=3D"161" valign=3D"bottom" style=3D"width:121.0pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">70(bug 2562)</span><span style=3D"font-size:10.0pt;font-famil=
y:&quot;Arial&quot;,&quot;sans-serif&quot;;color:red"><o:p></o:p></span></p=
>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"167" nowrap=3D"" style=3D"width:125.0pt;border:solid black 1.0=
pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Jasperforest lsb-SDK</span></b><b><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"=
><o:p></o:p></span></b></p>
</td>
<td width=3D"71" style=3D"width:53.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">32</span><span style=3D"font-size:10.0pt;font-family:&quot;=
Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"63" style=3D"width:47.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">0</span><span style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"57" style=3D"width:43.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00B050">32</span><span style=3D"font-size:10.0pt;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:#00B050"><o:p></o:p></span></p>
</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5=
.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:red"><o:p></o:p></span></p>
</td>
<td width=3D"161" valign=3D"bottom" style=3D"width:121.0pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:red"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"167" nowrap=3D"" style=3D"width:125.0pt;border:solid black 1.0=
pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Beagleboard Sato-SDK</span></b><b><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"=
><o:p></o:p></span></b></p>
</td>
<td width=3D"71" style=3D"width:53.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">40</span><span style=3D"font-size:10.0pt;font-family:&quot;=
Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"63" style=3D"width:47.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">0</span><span style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"57" style=3D"width:43.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00B050">40</span><span style=3D"font-size:10.0pt;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:#00B050"><o:p></o:p></span></p>
</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5=
.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:red"><o:p></o:p></span></p>
</td>
<td width=3D"161" valign=3D"bottom" style=3D"width:121.0pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:red"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:26.25pt">
<td width=3D"167" style=3D"width:125.0pt;border:solid black 1.0pt;border-to=
p:none;padding:0in 5.4pt 0in 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Routerstationpro Sato-SDK</span></b><b><span style=3D"fo=
nt-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:b=
lack"><o:p></o:p></span></b></p>
</td>
<td width=3D"71" style=3D"width:53.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">33</span><span style=3D"font-size:10.0pt;font-family:&quot;=
Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"63" style=3D"width:47.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">0</span><span style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"57" style=3D"width:43.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00B050">33</span><span style=3D"font-size:10.0pt;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:#00B050"><o:p></o:p></span></p>
</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5=
.4pt 0in 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:red"><o:p></o:p></span></p>
</td>
<td width=3D"161" valign=3D"bottom" style=3D"width:121.0pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:red"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"167" style=3D"width:125.0pt;border:solid black 1.0pt;border-to=
p:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Mpc8315e-rdb Sato-SDK</span></b><b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black=
"><o:p></o:p></span></b></p>
</td>
<td width=3D"71" style=3D"width:53.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">36</span><span style=3D"font-size:10.0pt;font-family:&quot;=
Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"63" style=3D"width:47.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">0</span><span style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"57" style=3D"width:43.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00B050">36</span><span style=3D"font-size:10.0pt;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:#00B050"><o:p></o:p></span></p>
</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5=
.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:red"><o:p></o:p></span></p>
</td>
<td width=3D"161" valign=3D"bottom" style=3D"width:121.0pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:red"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"167" nowrap=3D"" style=3D"width:125.0pt;border:solid black 1.0=
pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Qemux86-64 Sato</span></b><b><span style=3D"font-size:10=
.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p=
></o:p></span></b></p>
</td>
<td width=3D"71" nowrap=3D"" style=3D"width:53.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">30</span><span style=3D"font-size:10.0pt;font-family:&quot;=
Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"63" style=3D"width:47.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">0</span><span style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"57" style=3D"width:43.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00B050">30</span><span style=3D"font-size:10.0pt;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:#00B050"><o:p></o:p></span></p>
</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5=
.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:red"><o:p></o:p></span></p>
</td>
<td width=3D"161" valign=3D"bottom" style=3D"width:121.0pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:red"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"167" nowrap=3D"" style=3D"width:125.0pt;border:solid black 1.0=
pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Qemux86-64 Sato-SDK</span></b><b><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black">=
<o:p></o:p></span></b></p>
</td>
<td width=3D"71" nowrap=3D"" style=3D"width:53.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">35</span><span style=3D"font-size:10.0pt;font-family:&quot;=
Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"63" style=3D"width:47.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">0</span><span style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"57" style=3D"width:43.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00B050">35</span><span style=3D"font-size:10.0pt;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:#00B050"><o:p></o:p></span></p>
</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5=
.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:red"><o:p></o:p></span></p>
</td>
<td width=3D"161" valign=3D"bottom" style=3D"width:121.0pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:red"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"167" nowrap=3D"" style=3D"width:125.0pt;border:solid black 1.0=
pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Qemux86 Sato</span></b><b><span style=3D"font-size:10.0p=
t;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></=
o:p></span></b></p>
</td>
<td width=3D"71" nowrap=3D"" style=3D"width:53.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">30</span><span style=3D"font-size:10.0pt;font-family:&quot;=
Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"63" style=3D"width:47.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">0</span><span style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"57" style=3D"width:43.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00B050">30</span><span style=3D"font-size:10.0pt;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:#00B050"><o:p></o:p></span></p>
</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5=
.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:red"><o:p></o:p></span></p>
</td>
<td width=3D"161" valign=3D"bottom" style=3D"width:121.0pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:red"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"167" nowrap=3D"" style=3D"width:125.0pt;border:solid black 1.0=
pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Qemux86 Sato-SDK</span></b><b><span style=3D"font-size:1=
0.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:=
p></o:p></span></b></p>
</td>
<td width=3D"71" nowrap=3D"" style=3D"width:53.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">35</span><span style=3D"font-size:10.0pt;font-family:&quot;=
Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"63" style=3D"width:47.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">0</span><span style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"57" style=3D"width:43.0pt;border-top:none;border-left:none;bor=
der-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5.4=
pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00B050">35</span><span style=3D"font-size:10.0pt;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:#00B050"><o:p></o:p></span></p>
</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5=
.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:red"><o:p></o:p></span></p>
</td>
<td width=3D"161" valign=3D"bottom" style=3D"width:121.0pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:red"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"167" nowrap=3D"" style=3D"width:125.0pt;border:solid black 1.0=
pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Qemuarm Sato</span></b><b><span style=3D"font-size:10.0p=
t;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></=
o:p></span></b></p>
</td>
<td width=3D"71" nowrap=3D"" style=3D"width:53.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">30</span><span style=3D"font-size:10.0pt;font-family:&quot;=
Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"63" nowrap=3D"" style=3D"width:47.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">0</span><span style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"57" nowrap=3D"" style=3D"width:43.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00B050">30</span><span style=3D"font-size:10.0pt;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:#00B050"><o:p></o:p></span></p>
</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5=
.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:red"><o:p></o:p></span></p>
</td>
<td width=3D"161" valign=3D"bottom" style=3D"width:121.0pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:red"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"167" nowrap=3D"" style=3D"width:125.0pt;border:solid black 1.0=
pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Qemuarm Sato-SDK</span></b><b><span style=3D"font-size:1=
0.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:=
p></o:p></span></b></p>
</td>
<td width=3D"71" nowrap=3D"" style=3D"width:53.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">35</span><span style=3D"font-size:10.0pt;font-family:&quot;=
Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"63" nowrap=3D"" style=3D"width:47.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">0</span><span style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"57" nowrap=3D"" style=3D"width:43.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00B050">35</span><span style=3D"font-size:10.0pt;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:#00B050"><o:p></o:p></span></p>
</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5=
.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:red"><o:p></o:p></span></p>
</td>
<td width=3D"161" valign=3D"bottom" style=3D"width:121.0pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:red"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"167" nowrap=3D"" style=3D"width:125.0pt;border:solid black 1.0=
pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Qemumips Sato</span></b><b><span style=3D"font-size:10.0=
pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p><=
/o:p></span></b></p>
</td>
<td width=3D"71" nowrap=3D"" style=3D"width:53.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">30</span><span style=3D"font-size:10.0pt;font-family:&quot;=
Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"63" nowrap=3D"" style=3D"width:47.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">0</span><span style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"57" nowrap=3D"" style=3D"width:43.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00B050">30</span><span style=3D"font-size:10.0pt;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:#00B050"><o:p></o:p></span></p>
</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5=
.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:red"><o:p></o:p></span></p>
</td>
<td width=3D"161" valign=3D"bottom" style=3D"width:121.0pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:red"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"167" nowrap=3D"" style=3D"width:125.0pt;border:solid black 1.0=
pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Qemumips Sato-SDK</span></b><b><span style=3D"font-size:=
10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o=
:p></o:p></span></b></p>
</td>
<td width=3D"71" nowrap=3D"" style=3D"width:53.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">35</span><span style=3D"font-size:10.0pt;font-family:&quot;=
Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"63" nowrap=3D"" style=3D"width:47.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">0</span><span style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"57" nowrap=3D"" style=3D"width:43.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00B050">35</span><span style=3D"font-size:10.0pt;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:#00B050"><o:p></o:p></span></p>
</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5=
.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:red"><o:p></o:p></span></p>
</td>
<td width=3D"161" valign=3D"bottom" style=3D"width:121.0pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:red"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"167" nowrap=3D"" style=3D"width:125.0pt;border:solid black 1.0=
pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Qemuppc Sato</span></b><b><span style=3D"font-size:10.0p=
t;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></=
o:p></span></b></p>
</td>
<td width=3D"71" nowrap=3D"" style=3D"width:53.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">30</span><span style=3D"font-size:10.0pt;font-family:&quot;=
Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"63" nowrap=3D"" style=3D"width:47.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">0</span><span style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"57" nowrap=3D"" style=3D"width:43.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00B050">30</span><span style=3D"font-size:10.0pt;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:#00B050"><o:p></o:p></span></p>
</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5=
.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:red"><o:p></o:p></span></p>
</td>
<td width=3D"161" valign=3D"bottom" style=3D"width:121.0pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:red"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"167" nowrap=3D"" style=3D"width:125.0pt;border:solid black 1.0=
pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Qemuppc Sato-SDK</span></b><b><span style=3D"font-size:1=
0.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:=
p></o:p></span></b></p>
</td>
<td width=3D"71" nowrap=3D"" style=3D"width:53.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">35</span><span style=3D"font-size:10.0pt;font-family:&quot;=
Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"63" nowrap=3D"" style=3D"width:47.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">0</span><span style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"57" nowrap=3D"" style=3D"width:43.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00B050">35</span><span style=3D"font-size:10.0pt;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:#00B050"><o:p></o:p></span></p>
</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5=
.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:red"><o:p></o:p></span></p>
</td>
<td width=3D"161" valign=3D"bottom" style=3D"width:121.0pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:red"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:26.25pt">
<td width=3D"167" nowrap=3D"" style=3D"width:125.0pt;border:solid black 1.0=
pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">ADT</span></b><b><span style=3D"font-size:10.0pt;font-fa=
mily:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></spa=
n></b></p>
</td>
<td width=3D"71" nowrap=3D"" style=3D"width:53.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0in 5.4pt 0in 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">27</span><span style=3D"font-size:10.0pt;font-family:&quot;=
Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"63" nowrap=3D"" style=3D"width:47.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0in 5.4pt 0in 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">0</span><span style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"57" nowrap=3D"" style=3D"width:43.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0in 5.4pt 0in 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00B050">24</span><span style=3D"font-size:10.0pt;font-family:&quo=
t;Arial&quot;,&quot;sans-serif&quot;;color:#00B050"><o:p></o:p></span></p>
</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5=
.4pt 0in 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">3 (bug 1452&nbsp; 2577 2553)</span><span style=3D"font-size:1=
0.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:red"><o:p>=
</o:p></span></p>
</td>
<td width=3D"161" valign=3D"bottom" style=3D"width:121.0pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0</span><span style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:red"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:26.25pt">
<td width=3D"167" nowrap=3D"" style=3D"width:125.0pt;border:solid black 1.0=
pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Core Build System<o:p></o:p></span></b></p>
</td>
<td width=3D"71" nowrap=3D"" style=3D"width:53.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0in 5.4pt 0in 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">13<o:p></o:p></span></p>
</td>
<td width=3D"63" nowrap=3D"" style=3D"width:47.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0in 5.4pt 0in 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">0<o:p></o:p></span></p>
</td>
<td width=3D"57" nowrap=3D"" style=3D"width:43.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0in 5.4pt 0in 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:#00B050">11<o:p></o:p></span></p>
</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5=
.4pt 0in 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">2(2363, 2747)<o:p></o:p></span></p>
</td>
<td width=3D"161" valign=3D"bottom" style=3D"width:121.0pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:26.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">0<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"167" nowrap=3D"" style=3D"width:125.0pt;border:solid black 1.0=
pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Total</span></b><b><span style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></s=
pan></b></p>
</td>
<td width=3D"71" nowrap=3D"" style=3D"width:53.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">841</span><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"63" nowrap=3D"" style=3D"width:47.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">0</span><span style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"57" nowrap=3D"" style=3D"width:43.0pt;border-top:none;border-l=
eft:none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;pad=
ding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:black">564</span><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"133" style=3D"width:100.0pt;border-top:none;border-left:none;b=
order-bottom:solid black 1.0pt;border-right:solid black 1.0pt;padding:0in 5=
.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">6</span><span style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:red"><o:p></o:p></span></p>
</td>
<td width=3D"161" valign=3D"bottom" style=3D"width:121.0pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quo=
t;;color:red">271</span><span style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,&quot;sans-serif&quot;;color:red"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal">* You can check the detailed test result in attachme=
nt for each target.<br>
** The failed/blocked case number is listed with failed cases=1B$B!G=1B(B b=
ug number.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText"><b>Commit Information<o:p></o:p></b></p>
<p class=3D"MsoNormal"><b>---------------------------------------&nbsp;<o:p=
></o:p></b></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none">Tree/Branch: poky/mast=
er<br>
Commit id: 348da93e283b2b8454fd9cde80d4b17378e2a168<o:p></o:p></p>
<p class=3D"MsoNormal">master:df8f55a919b3cc602ce1f1c51630c7edf6e36b55<span=
 style=3D"font-size:12.0pt;font-family:SimSun;color:black"><o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.5pt;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">Meta branch=
: master<o:p></o:p></span></p>
<pre><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;">Commit id: 8bc2fa135060e941bcbb4dcfb664e175a3eb871d<o:p></o=
:p></span></pre>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.5pt"><o:p>&nbsp;</o:p=
></span></b></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;">Issue summary</span></b><b><span style=
=3D"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><o:p></o:p></span=
></b></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;">--------------------------------------=
<o:p></o:p></span></b></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" width=3D"1013" style=3D"width:760.0pt;margin-left:-.9pt;border-colla=
pse:collapse">
<tbody>
<tr style=3D"height:15.0pt">
<td width=3D"221" nowrap=3D"" colspan=3D"2" valign=3D"bottom" style=3D"widt=
h:166.0pt;border:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0p=
t">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Component</span></b><b><span style=3D"font-size:10.0pt;f=
ont-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p=
></span></b></p>
</td>
<td width=3D"679" valign=3D"bottom" style=3D"width:509.0pt;border:solid bla=
ck 1.0pt;border-left:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Bug Number</span></b><b><span style=3D"font-size:10.0pt;=
font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:=
p></span></b></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r:solid black 1.0pt;border-left:none;padding:0in 5.4pt 0in 5.4pt;height:15.=
0pt">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;;color:black">Target Milestone</span></b=
><b><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;san=
s-serif&quot;;color:black"><o:p></o:p></span></b></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"125" nowrap=3D"" rowspan=3D"5" style=3D"width:93.45pt;border:s=
olid black 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt"=
>
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">System &amp; Core OS</span></b><b><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"=
><o:p></o:p></span></b></p>
</td>
<td width=3D"97" nowrap=3D"" rowspan=3D"3" style=3D"width:72.55pt;border-to=
p:none;border-left:none;border-bottom:solid black 1.0pt;border-right:solid =
black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">System Usage</span></b><b><span style=3D"font-size:10.0p=
t;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></=
o:p></span></b></p>
</td>
<td width=3D"679" nowrap=3D"" valign=3D"bottom" style=3D"width:509.0pt;padd=
ing:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">Bug 2508 Fotowall icons appea=
r abnormal on qemumips sato-sdk images with nightly build (20120523-2)</spa=
n><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-=
serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:so=
lid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">1.3 M2</span><span style=3D"f=
ont-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:=
black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"679" nowrap=3D"" valign=3D"bottom" style=3D"width:509.0pt;padd=
ing:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">Bug 2509 The 'About' option w=
ith connman-properties doesn't display the picture.</span><span style=3D"fo=
nt-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:b=
lack"><o:p></o:p></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:so=
lid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">1.3 M2</span><span style=3D"f=
ont-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:=
black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"679" nowrap=3D"" valign=3D"bottom" style=3D"width:509.0pt;padd=
ing:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">Bug 2535 syslog is not starte=
d by default in background on bsps(Crownbay,N450 etc)</span><span style=3D"=
font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color=
:black"><o:p></o:p></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:so=
lid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">1.3 M2</span><span style=3D"f=
ont-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:=
black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"97" nowrap=3D"" rowspan=3D"2" style=3D"width:72.55pt;border-to=
p:none;border-left:none;border-bottom:solid black 1.0pt;border-right:solid =
black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Other</span></b><b><span style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></s=
pan></b></p>
</td>
<td width=3D"679" nowrap=3D"" valign=3D"bottom" style=3D"width:509.0pt;padd=
ing:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:red">New!</span><span style=3D"font-=
size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:blac=
k"> Bug 2562 connman-gnome do_configure fail on autobuilder for several BSP=
s</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot=
;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:so=
lid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:SimSun;c=
olor:black">=1B$B!!=1B(B</span><span style=3D"font-size:10.0pt;font-family:=
&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p=
>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"679" nowrap=3D"" valign=3D"bottom" style=3D"width:509.0pt;padd=
ing:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:red">New!</span><span style=3D"font-=
size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:blac=
k"> Bug 2561 gst-ffmpeg do_configure failed on autobuilder for lsb build</s=
pan><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;san=
s-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r-top:none;border-left:solid black 1.0pt;border-bottom:none;border-right:so=
lid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:SimSun;c=
olor:black">=1B$B!!=1B(B</span><span style=3D"font-size:10.0pt;font-family:=
&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p=
>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"221" nowrap=3D"" colspan=3D"2" rowspan=3D"6" style=3D"width:16=
6.0pt;border:solid black 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;=
height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">ADT</span></b><b><span style=3D"font-size:10.0pt;font-fa=
mily:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></spa=
n></b></p>
</td>
<td width=3D"679" valign=3D"bottom" style=3D"width:509.0pt;border:none;bord=
er-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">Bug 1452 32bit kernel generat=
ed oprofile data file can not be read by remote 64bit operation</span><span=
 style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&q=
uot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r:none;border-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15=
.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">1.3</span><span style=3D"font=
-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:bla=
ck"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"679" valign=3D"bottom" style=3D"width:509.0pt;border:none;bord=
er-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">Bug 2068 Clutter run failed i=
n qemux86/x86-64 using toolchain</span><span style=3D"font-size:10.0pt;font=
-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></=
span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r:none;border-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15=
.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">1.3</span><span style=3D"font=
-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:bla=
ck"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"679" valign=3D"bottom" style=3D"width:509.0pt;border:none;bord=
er-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">Bug 2069 Clutter run failed i=
n qemux86/qemux86_64 on ubuntu/opensuse/fedora.
</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;=
sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r:none;border-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15=
.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">1.2.1</span><span style=3D"fo=
nt-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:b=
lack"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"679" valign=3D"bottom" style=3D"width:509.0pt;border:none;bord=
er-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">Bug 2534 [Regression]Glxgears=
 failed on qemux86/x86-64/arm/mips/ppc on Ubuntu 11.10 64bit
</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;=
sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r:none;border-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15=
.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">&nbsp;--</span><span style=3D=
"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;colo=
r:black"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"679" valign=3D"bottom" style=3D"width:509.0pt;border:none;bord=
er-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:red">New!</span><span style=3D"font-=
size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:blac=
k"> Bug 2553 ADT-Installer failed if the folder /opt/poky/1.2&#43;snapshot =
exist</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&=
quot;sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r:none;border-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15=
.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:SimSun;c=
olor:black">=1B$B!!=1B(B</span><span style=3D"font-size:10.0pt;font-family:=
&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p=
>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"679" valign=3D"bottom" style=3D"width:509.0pt;border:none;bord=
er-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:red">New!</span><span style=3D"font-=
size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:blac=
k"> Bug 2577 Segmentation fault on qemuarm from /usr/lib/libust.so.0</span>=
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r:none;border-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15=
.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:SimSun;c=
olor:black">=1B$B!!=1B(B</span><span style=3D"font-size:10.0pt;font-family:=
&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p=
>
</td>
</tr>
<tr style=3D"height:14.25pt">
<td width=3D"221" nowrap=3D"" colspan=3D"2" rowspan=3D"2" style=3D"width:16=
6.0pt;border:solid black 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;=
height:14.25pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">HOB</span></b><b><span style=3D"font-size:10.0pt;font-fa=
mily:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></spa=
n></b></p>
</td>
<td width=3D"679" valign=3D"bottom" style=3D"width:509.0pt;border:none;bord=
er-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:14.25pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:red">New!</span><span style=3D"font-=
size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:blac=
k"> Bug 2576 [Hob2] wrong image profile selected after template load
</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;=
sans-serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r:none;border-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:14=
.25pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:SimSun;c=
olor:black">=1B$B!!=1B(B</span><span style=3D"font-size:10.0pt;font-family:=
&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p=
>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"679" valign=3D"bottom" style=3D"width:509.0pt;border:none;bord=
er-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:red">New!</span><span style=3D"font-=
size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:blac=
k"> Bug 2574 [Hob2] no attribute '__dummy_image__' for RecipeListModel</spa=
n><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-=
serif&quot;;color:black"><o:p></o:p></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r:none;border-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15=
.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:SimSun;c=
olor:black">=1B$B!!=1B(B</span><span style=3D"font-size:10.0pt;font-family:=
&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p></o:p></span></p=
>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td colspan=3D"2" rowspan=3D"2" style=3D"border:solid black 1.0pt;border-to=
p:none;padding:0in 0in 0in 0in;height:15.0pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Core Build System<o:p></o:p></span></b></p>
</td>
<td width=3D"679" valign=3D"bottom" style=3D"width:509.0pt;border:none;bord=
er-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;">Bug 2747 eglibc do_package_write_deb fails<span style=3D"color:red"><o:p=
></o:p></span></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r:none;border-right:solid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15=
.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">1.2.1<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"679" valign=3D"bottom" style=3D"width:509.0pt;border-top:none;=
border-left:none;border-bottom:solid black 1.0pt;border-right:solid black 1=
.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal" style=3D"line-height:115%"><span style=3D"font-size:=
10.0pt;line-height:115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;">Bug 2367 core-image-sato-sdk failed to do do_rootfs on fedora17 64bit<o:=
p></o:p></span></p>
</td>
<td width=3D"113" nowrap=3D"" valign=3D"bottom" style=3D"width:85.0pt;borde=
r-top:none;border-left:none;border-bottom:solid black 1.0pt;border-right:so=
lid black 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;">1.2<span style=3D"color:black"><o:p></o:p=
></span></span></p>
</td>
</tr>
</tbody>
</table>
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

--_000_E16513A01CAAFF40B65178C63CE45EEC19143DFCIRSMSX102gercor_--

--_004_E16513A01CAAFF40B65178C63CE45EEC19143DFCIRSMSX102gercor_
Content-Type: application/oleobject;
	name="Yocto 20120606 Build_ detail_testreport_Weekly.ods"
Content-Description: Yocto 20120606 Build_ detail_testreport_Weekly.ods
Content-Disposition: attachment;
	filename="Yocto 20120606 Build_ detail_testreport_Weekly.ods"; size=28687;
	creation-date="Thu, 24 May 2012 07:57:55 GMT";
	modification-date="Mon, 11 Jun 2012 16:40:29 GMT"
Content-Transfer-Encoding: base64

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
AAAFAAUAIAEAANluAAAAAA==

--_004_E16513A01CAAFF40B65178C63CE45EEC19143DFCIRSMSX102gercor_--
