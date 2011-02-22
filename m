Return-Path: <jiajun.xu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9EDB64C80A79
	for <poky@pokylinux.org>; Tue, 22 Feb 2011 08:35:35 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 22 Feb 2011 06:35:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,206,1297065600"; 
	d="xml'?ods'72,48?png'72,48,150?scan'72,48,150,208,217,72,150,48";
	a="605311856"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by orsmga002.jf.intel.com with ESMTP; 22 Feb 2011 06:35:28 -0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Tue, 22 Feb 2011 22:35:09 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Tue, 22 Feb 2011 22:35:06 +0800
From: "Xu, Jiajun" <jiajun.xu@intel.com>
To: "poky@pokylinux.org" <poky@pokylinux.org>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Tue, 22 Feb 2011 22:35:03 +0800
Thread-Topic: Weekly Test Report for Yocto Nightly 20110217 Build
Thread-Index: AcvSna/1f1Io6ifMQ4S8Ovvd4RERCA==
Message-ID: <D5AB6E638E5A3E4B8F4406B113A5A19A333AD46F@shsmsx501.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Weekly Test Report for Yocto Nightly 20110217 Build
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
X-List-Received-Date: Tue, 22 Feb 2011 14:35:36 -0000
X-Groupsio-MsgNum: 3838
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_004_D5AB6E638E5A3E4B8F4406B113A5A19A333AD46Fshsmsx501ccrcor_"

--_004_D5AB6E638E5A3E4B8F4406B113A5A19A333AD46Fshsmsx501ccrcor_
Content-Type: multipart/alternative;
	boundary="_000_D5AB6E638E5A3E4B8F4406B113A5A19A333AD46Fshsmsx501ccrcor_"

--_000_D5AB6E638E5A3E4B8F4406B113A5A19A333AD46Fshsmsx501ccrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all,

       This is the weekly test report for 20110217 build. There are 3 new b=
ugs found with this build. Toolchain testing is BLOCK because there is no t=
arball built out. atom-pc/emenlow/routerstationpro fails to build on autobu=
ilder. Only beagleboard sato is tested. Zypper does not work well on most p=
latforms, 3 open bugs for it now. The libmagic.so error with rpm command is=
 fixed with this build.



Test Summary
---------------------------------------
Target

Total TCs

Not Run

Passed

Failed

Not testable (Blocked)

BeagleBoard Sato

7

0

7

0

0

Qemux86-64 Sato

12

0

8

1 (bug 721)

0

Qemux86-64 SDK

17

0

14

1 (bug 721)

2

Qemux86 Sato

12

0

12

0

0

Qemux86 SDK

17

0

15

0

2

Qemumips Sato

12

0

11

1 (bug 721)

0

Qemumips SDK

17

0

14

1 (bug 721)

2

Qemuppc Sato

11

0

10

1 (bug 722)

0

Qemuppc SDK

16

0

13

1 (bug 722)

2

Qemuarm Sato

12

0

12

0

0

Qemuarm SDK

17

0

15

0

2

Total

150

0

131

6

10


* You can check the detailed test result in attachment for each target.

** The failed/blocked case number is listed with failed cases' bug number.



Images
---------------------------------------

http://autobuilder.pokylinux.org/nightly/20110217-1/



Issue Summary
---------------------------------------

New Bugs:

1.     do_rootfs fail on autobuilder for emenlow(20110217)

http://bugzilla.pokylinux.org/show_bug.cgi?id=3D745

2.     [sysroot] atom-pc/routerstationpro fails to buid during do_configure

http://bugzilla.pokylinux.org/show_bug.cgi?id=3D744

3.     [qemuarm]zypper search package warning in sato image: no '/usr/bin/u=
uidgen'

http://bugzilla.pokylinux.org/show_bug.cgi?id=3D749



Old Open Bugs:

1.     [zypper] search failure on qemuppc (nightly build 20110212-1)

http://bugzilla.pokylinux.org/show_bug.cgi?id=3D722

2.     [zypper] zypper segfault in qemux86-64 sdk image

http://bugzilla.pokylinux.org/show_bug.cgi?id=3D721

3.     qemumips shutdown cause host console warning

http://bugzilla.pokylinux.org/show_bug.cgi?id=3D322

4.     The bottom icons on Applications and All screen are cut-off in qemu

http://bugzilla.pokylinux.org/show_bug.cgi?id=3D658



Verified Fixed Bugs:

1.     [rpm/zypper] libmagic.so error when running rpm/zypper

http://bugzilla.pokylinux.org/show_bug.cgi?id=3D705





Best Regards,

Jiajun

--_000_D5AB6E638E5A3E4B8F4406B113A5A19A333AD46Fshsmsx501ccrcor_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:x=3D"urn:schemas-microsoft-com:office:excel" xmlns:m=3D"http://schema=
s.microsoft.com/office/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html=
40"><head><meta http-equiv=3DContent-Type content=3D"text/html; charset=3Du=
s-ascii"><meta name=3DGenerator content=3D"Microsoft Word 12 (filtered medi=
um)"><style><!--
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
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
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
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:10.5pt;
	font-family:"Calibri","sans-serif";}
span.PlainTextChar
	{mso-style-name:"Plain Text Char";
	mso-style-priority:99;
	mso-style-link:"Plain Text";
	font-family:"Calibri","sans-serif";}
.MsoChpDefault
	{mso-style-type:export-only;}
/* Page Definitions */
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 90.0pt 72.0pt 90.0pt;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:995960899;
	mso-list-type:hybrid;
	mso-list-template-ids:-2146788602 -1004737148 67698713 67698715 67698703 6=
7698713 67698715 67698703 67698713 67698715;}
@list l0:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:18.0pt;
	text-indent:-18.0pt;}
@list l1
	{mso-list-id:1517424459;
	mso-list-type:hybrid;
	mso-list-template-ids:-1231518934 2081340428 67698713 67698715 67698703 67=
698713 67698715 67698703 67698713 67698715;}
@list l1:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:18.0pt;
	text-indent:-18.0pt;}
@list l1:level2
	{mso-level-tab-stop:72.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l1:level3
	{mso-level-tab-stop:108.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l1:level4
	{mso-level-tab-stop:144.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l1:level5
	{mso-level-tab-stop:180.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l1:level6
	{mso-level-tab-stop:216.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l1:level7
	{mso-level-tab-stop:252.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l1:level8
	{mso-level-tab-stop:288.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l1:level9
	{mso-level-tab-stop:324.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l2
	{mso-list-id:1589652811;
	mso-list-type:hybrid;
	mso-list-template-ids:521298976 185119308 67698713 67698715 67698703 67698=
713 67698715 67698703 67698713 67698715;}
@list l2:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:18.0pt;
	text-indent:-18.0pt;}
@list l2:level2
	{mso-level-tab-stop:72.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l2:level3
	{mso-level-tab-stop:108.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l2:level4
	{mso-level-tab-stop:144.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l2:level5
	{mso-level-tab-stop:180.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l2:level6
	{mso-level-tab-stop:216.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l2:level7
	{mso-level-tab-stop:252.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l2:level8
	{mso-level-tab-stop:288.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l2:level9
	{mso-level-tab-stop:324.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l3
	{mso-list-id:1693648462;
	mso-list-type:hybrid;
	mso-list-template-ids:1160517818 -578887752 67698713 67698715 67698703 676=
98713 67698715 67698703 67698713 67698715;}
@list l3:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:18.0pt;
	text-indent:-18.0pt;}
ol
	{margin-bottom:0cm;}
ul
	{margin-bottom:0cm;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DZH-CN link=3Dblue vli=
nk=3Dpurple style=3D'text-justify-trim:punctuation'><div class=3DWordSectio=
n1><p class=3DMsoPlainText><span lang=3DEN-US style=3D'font-size:10.0pt;fon=
t-family:"Arial","sans-serif"'>Hi all,<o:p></o:p></span></p><p class=3DMsoP=
lainText><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","=
sans-serif"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; This is the weekly test r=
eport for 20110217 build. There are 3 new bugs found with this build. Toolc=
hain testing is BLOCK because there is no tarball built out. atom-pc/emenlo=
w/routerstationpro fails to build on autobuilder. Only beagleboard sato is =
tested. Zypper does not work well on most platforms, 3 open bugs for it now=
. The libmagic.so error with rpm command is fixed with this build.<o:p></o:=
p></span></p><p class=3DMsoPlainText><span lang=3DEN-US><o:p>&nbsp;</o:p></=
span></p><p class=3DMsoPlainText><b><span lang=3DEN-US style=3D'font-size:1=
0.0pt;font-family:"Arial","sans-serif"'>Test Summary<o:p></o:p></span></b><=
/p><p class=3DMsoNormal><b><span lang=3DEN-US style=3D'font-size:10.0pt;fon=
t-family:"Arial","sans-serif"'>---------------------------------------<o:p>=
</o:p></span></b></p><table class=3DMsoNormalTable border=3D0 cellspacing=
=3D0 cellpadding=3D0 width=3D505 style=3D'width:379.0pt;margin-left:-1.15pt=
;border-collapse:collapse'><tr style=3D'height:39.0pt'><td width=3D127 nowr=
ap style=3D'width:95.0pt;border:solid windowtext 1.0pt;padding:0cm 5.4pt 0c=
m 5.4pt;height:39.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-al=
ign:center'><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Ar=
ial","sans-serif";color:black'>Target<o:p></o:p></span></b></p></td><td wid=
th=3D72 style=3D'width:54.0pt;border:solid windowtext 1.0pt;border-left:non=
e;padding:0cm 5.4pt 0cm 5.4pt;height:39.0pt'><p class=3DMsoNormal align=3Dc=
enter style=3D'text-align:center'><b><span lang=3DEN-US style=3D'font-size:=
10.0pt;font-family:"Arial","sans-serif";color:black'>Total TCs</span></b><s=
pan lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"=
;color:black'> <b><o:p></o:p></b></span></p></td><td width=3D72 style=3D'wi=
dth:54.0pt;border:solid windowtext 1.0pt;border-left:none;padding:0cm 5.4pt=
 0cm 5.4pt;height:39.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text=
-align:center'><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:=
"Arial","sans-serif";color:black'>Not Run<o:p></o:p></span></b></p></td><td=
 width=3D72 style=3D'width:54.0pt;border:solid windowtext 1.0pt;border-left=
:none;padding:0cm 5.4pt 0cm 5.4pt;height:39.0pt'><p class=3DMsoNormal align=
=3Dcenter style=3D'text-align:center'><b><span lang=3DEN-US style=3D'font-s=
ize:10.0pt;font-family:"Arial","sans-serif";color:black'>Passed</span></b><=
span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif=
";color:black'> <b><o:p></o:p></b></span></p></td><td width=3D91 style=3D'w=
idth:68.0pt;border:solid windowtext 1.0pt;border-left:none;padding:0cm 5.4p=
t 0cm 5.4pt;height:39.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'tex=
t-align:center'><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family=
:"Arial","sans-serif";color:black'>Failed</span></b><span lang=3DEN-US styl=
e=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'> <b><o:=
p></o:p></b></span></p></td><td width=3D72 style=3D'width:54.0pt;border:sol=
id windowtext 1.0pt;border-left:none;padding:0cm 5.4pt 0cm 5.4pt;height:39.=
0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b><sp=
an lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";=
color:black'>Not testable (Blocked)</span></b><span lang=3DEN-US style=3D'f=
ont-size:10.0pt;font-family:"Arial","sans-serif";color:black'> <b><o:p></o:=
p></b></span></p></td></tr><tr style=3D'height:26.25pt'><td width=3D127 sty=
le=3D'width:95.0pt;border:solid black 1.0pt;border-top:none;padding:0cm 5.4=
pt 0cm 5.4pt;height:26.25pt'><p class=3DMsoNormal align=3Dcenter style=3D't=
ext-align:center'><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-fami=
ly:"Arial","sans-serif";color:black'>BeagleBoard Sato<o:p></o:p></span></b>=
</p></td><td width=3D72 style=3D'width:54.0pt;border-top:none;border-left:n=
one;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0p=
t;padding:0cm 5.4pt 0cm 5.4pt;height:26.25pt'><p class=3DMsoNormal align=3D=
center style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10=
.0pt;font-family:"Arial","sans-serif";color:black'>7<o:p></o:p></span></p><=
/td><td width=3D72 style=3D'width:54.0pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pad=
ding:0cm 5.4pt 0cm 5.4pt;height:26.25pt'><p class=3DMsoNormal align=3Dcente=
r style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;=
font-family:"Arial","sans-serif";color:black'>0<o:p></o:p></span></p></td><=
td width=3D72 style=3D'width:54.0pt;border-top:none;border-left:none;border=
-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:=
0cm 5.4pt 0cm 5.4pt;height:26.25pt'><p class=3DMsoNormal align=3Dcenter sty=
le=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-=
family:"Arial","sans-serif";color:#00B050'>7<o:p></o:p></span></p></td><td =
width=3D91 style=3D'width:68.0pt;border-top:none;border-left:none;border-bo=
ttom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm=
 5.4pt 0cm 5.4pt;height:26.25pt'><p class=3DMsoNormal align=3Dcenter style=
=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-fa=
mily:"Arial","sans-serif";color:red'>0<o:p></o:p></span></p></td><td width=
=3D72 style=3D'width:54.0pt;border-top:none;border-left:none;border-bottom:=
solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4p=
t 0cm 5.4pt;height:26.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'te=
xt-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"=
Arial","sans-serif";color:red'>0<o:p></o:p></span></p></td></tr><tr style=
=3D'height:14.25pt'><td width=3D127 nowrap style=3D'width:95.0pt;border:sol=
id windowtext 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:14.2=
5pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b><sp=
an lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";=
color:black'>Qemux86-64 Sato<o:p></o:p></span></b></p></td><td width=3D72 n=
owrap style=3D'width:54.0pt;border-top:none;border-left:none;border-bottom:=
solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4p=
t 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'te=
xt-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"=
Arial","sans-serif";color:black'>12<o:p></o:p></span></p></td><td width=3D7=
2 valign=3Dtop style=3D'width:54.0pt;border-top:none;border-left:none;borde=
r-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding=
:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter st=
yle=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font=
-family:"Arial","sans-serif";color:black'>0<o:p></o:p></span></p></td><td w=
idth=3D72 valign=3Dtop style=3D'width:54.0pt;border-top:none;border-left:no=
ne;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt=
;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dc=
enter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.=
0pt;font-family:"Arial","sans-serif";color:#00B050'>8<o:p></o:p></span></p>=
</td><td width=3D91 nowrap style=3D'width:68.0pt;border-top:none;border-lef=
t:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1=
.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=
=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size=
:10.0pt;font-family:"Arial","sans-serif";color:red'>1 (bug 721)<o:p></o:p><=
/span></p></td><td width=3D72 nowrap style=3D'width:54.0pt;border-top:none;=
border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid wi=
ndowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNo=
rmal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D=
'font-size:10.0pt;font-family:"Arial","sans-serif";color:red'>0<o:p></o:p><=
/span></p></td></tr><tr style=3D'height:14.25pt'><td width=3D127 nowrap sty=
le=3D'width:95.0pt;border:solid windowtext 1.0pt;border-top:none;padding:0c=
m 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=
=3D'text-align:center'><b><span lang=3DEN-US style=3D'font-size:10.0pt;font=
-family:"Arial","sans-serif";color:black'>Qemux86-64 SDK<o:p></o:p></span><=
/b></p></td><td width=3D72 nowrap style=3D'width:54.0pt;border-top:none;bor=
der-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windo=
wtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNorma=
l align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'fo=
nt-size:10.0pt;font-family:"Arial","sans-serif";color:black'>17<o:p></o:p><=
/span></p></td><td width=3D72 valign=3Dtop style=3D'width:54.0pt;border-top=
:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:so=
lid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=
=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US =
style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>0<o=
:p></o:p></span></p></td><td width=3D72 valign=3Dtop style=3D'width:54.0pt;=
border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;borde=
r-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>=
<p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=
=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:#=
00B050'>14<o:p></o:p></span></p></td><td width=3D91 nowrap style=3D'width:6=
8.0pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt=
;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.=
25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span=
 lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";co=
lor:red'>1 (bug 721)<o:p></o:p></span></p></td><td width=3D72 nowrap style=
=3D'width:54.0pt;border-top:none;border-left:none;border-bottom:solid windo=
wtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt=
;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:ce=
nter'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","san=
s-serif";color:red'>2<o:p></o:p></span></p></td></tr><tr style=3D'height:14=
.25pt'><td width=3D127 nowrap style=3D'width:95.0pt;border:solid windowtext=
 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=
=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b><span lang=3DEN-=
US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>=
Qemux86 Sato<o:p></o:p></span></b></p></td><td width=3D72 nowrap style=3D'w=
idth:54.0pt;border-top:none;border-left:none;border-bottom:solid windowtext=
 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;heig=
ht:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'=
><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-ser=
if";color:black'>12<o:p></o:p></span></p></td><td width=3D72 valign=3Dtop s=
tyle=3D'width:54.0pt;border-top:none;border-left:none;border-bottom:solid w=
indowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5=
.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-alig=
n:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial",=
"sans-serif";color:black'>0<o:p></o:p></span></p></td><td width=3D72 valign=
=3Dtop style=3D'width:54.0pt;border-top:none;border-left:none;border-bottom=
:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4=
pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D't=
ext-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:=
"Arial","sans-serif";color:#00B050'>12<o:p></o:p></span></p></td><td width=
=3D91 nowrap style=3D'width:68.0pt;border-top:none;border-left:none;border-=
bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0=
cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter styl=
e=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-f=
amily:"Arial","sans-serif";color:red'>0<o:p></o:p></span></p></td><td width=
=3D72 nowrap style=3D'width:54.0pt;border-top:none;border-left:none;border-=
bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0=
cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter styl=
e=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-f=
amily:"Arial","sans-serif";color:red'>0<o:p></o:p></span></p></td></tr><tr =
style=3D'height:14.25pt'><td width=3D127 nowrap style=3D'width:95.0pt;borde=
r:solid windowtext 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height=
:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><=
b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-se=
rif";color:black'>Qemux86 SDK<o:p></o:p></span></b></p></td><td width=3D72 =
nowrap style=3D'width:54.0pt;border-top:none;border-left:none;border-bottom=
:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4=
pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D't=
ext-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:=
"Arial","sans-serif";color:black'>17<o:p></o:p></span></p></td><td width=3D=
72 valign=3Dtop style=3D'width:54.0pt;border-top:none;border-left:none;bord=
er-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;paddin=
g:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter s=
tyle=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;fon=
t-family:"Arial","sans-serif";color:black'>0<o:p></o:p></span></p></td><td =
width=3D72 valign=3Dtop style=3D'width:54.0pt;border-top:none;border-left:n=
one;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0p=
t;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3D=
center style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10=
.0pt;font-family:"Arial","sans-serif";color:#00B050'>15<o:p></o:p></span></=
p></td><td width=3D91 nowrap style=3D'width:68.0pt;border-top:none;border-l=
eft:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext=
 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal ali=
gn=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-si=
ze:10.0pt;font-family:"Arial","sans-serif";color:red'>0<o:p></o:p></span></=
p></td><td width=3D72 nowrap style=3D'width:54.0pt;border-top:none;border-l=
eft:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext=
 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal ali=
gn=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-si=
ze:10.0pt;font-family:"Arial","sans-serif";color:red'>2<o:p></o:p></span></=
p></td></tr><tr style=3D'height:14.25pt'><td width=3D127 nowrap style=3D'wi=
dth:95.0pt;border:solid windowtext 1.0pt;border-top:none;padding:0cm 5.4pt =
0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text=
-align:center'><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:=
"Arial","sans-serif";color:black'>Qemumips Sato<o:p></o:p></span></b></p></=
td><td width=3D72 nowrap style=3D'width:54.0pt;border-top:none;border-left:=
none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0=
pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=
=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size=
:10.0pt;font-family:"Arial","sans-serif";color:black'>12<o:p></o:p></span><=
/p></td><td width=3D72 nowrap style=3D'width:54.0pt;border-top:none;border-=
left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtex=
t 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal al=
ign=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-s=
ize:10.0pt;font-family:"Arial","sans-serif";color:black'>0<o:p></o:p></span=
></p></td><td width=3D72 nowrap style=3D'width:54.0pt;border-top:none;borde=
r-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowt=
ext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal =
align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'font=
-size:10.0pt;font-family:"Arial","sans-serif";color:#00B050'>11<o:p></o:p><=
/span></p></td><td width=3D91 nowrap style=3D'width:68.0pt;border-top:none;=
border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid wi=
ndowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNo=
rmal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D=
'font-size:10.0pt;font-family:"Arial","sans-serif";color:red'>1 (bug 721)<o=
:p></o:p></span></p></td><td width=3D72 nowrap style=3D'width:54.0pt;border=
-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-righ=
t:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p cla=
ss=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-U=
S style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:red'>0<o=
:p></o:p></span></p></td></tr><tr style=3D'height:14.25pt'><td width=3D127 =
nowrap style=3D'width:95.0pt;border:solid windowtext 1.0pt;border-top:none;=
padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dce=
nter style=3D'text-align:center'><b><span lang=3DEN-US style=3D'font-size:1=
0.0pt;font-family:"Arial","sans-serif";color:black'>Qemumips SDK<o:p></o:p>=
</span></b></p></td><td width=3D72 nowrap style=3D'width:54.0pt;border-top:=
none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:sol=
id windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3D=
MsoNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US sty=
le=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>17<o:p=
></o:p></span></p></td><td width=3D72 nowrap style=3D'width:54.0pt;border-t=
op:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:=
solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=
=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US =
style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>0<o=
:p></o:p></span></p></td><td width=3D72 nowrap style=3D'width:54.0pt;border=
-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-righ=
t:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p cla=
ss=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-U=
S style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:#00B050'=
>14<o:p></o:p></span></p></td><td width=3D91 nowrap style=3D'width:68.0pt;b=
order-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border=
-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><=
p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=
=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:r=
ed'>1 (bug 721)<o:p></o:p></span></p></td><td width=3D72 nowrap style=3D'wi=
dth:54.0pt;border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;heigh=
t:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'>=
<span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-seri=
f";color:red'>2<o:p></o:p></span></p></td></tr><tr style=3D'height:14.25pt'=
><td width=3D127 nowrap style=3D'width:95.0pt;border:solid windowtext 1.0pt=
;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMso=
Normal align=3Dcenter style=3D'text-align:center'><b><span lang=3DEN-US sty=
le=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>Qemupp=
c Sato<o:p></o:p></span></b></p></td><td width=3D72 nowrap style=3D'width:5=
4.0pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt=
;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.=
25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span=
 lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";co=
lor:black'>11<o:p></o:p></span></p></td><td width=3D72 nowrap style=3D'widt=
h:54.0pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.=
0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:=
14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><s=
pan lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"=
;color:black'>0<o:p></o:p></span></p></td><td width=3D72 nowrap style=3D'wi=
dth:54.0pt;border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;heigh=
t:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'>=
<span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-seri=
f";color:#00B050'>10<o:p></o:p></span></p></td><td width=3D91 nowrap style=
=3D'width:68.0pt;border-top:none;border-left:none;border-bottom:solid windo=
wtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt=
;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:ce=
nter'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","san=
s-serif";color:red'>1 (bug 722)<o:p></o:p></span></p></td><td width=3D72 no=
wrap style=3D'width:54.0pt;border-top:none;border-left:none;border-bottom:s=
olid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt=
 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'tex=
t-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"A=
rial","sans-serif";color:red'>0<o:p></o:p></span></p></td></tr><tr style=3D=
'height:14.25pt'><td width=3D127 nowrap style=3D'width:95.0pt;border:solid =
windowtext 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt=
'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b><span =
lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";col=
or:black'>Qemuppc SDK<o:p></o:p></span></b></p></td><td width=3D72 nowrap s=
tyle=3D'width:54.0pt;border-top:none;border-left:none;border-bottom:solid w=
indowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5=
.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-alig=
n:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial",=
"sans-serif";color:black'>16<o:p></o:p></span></p></td><td width=3D72 nowra=
p style=3D'width:54.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0c=
m 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-a=
lign:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Aria=
l","sans-serif";color:black'>0<o:p></o:p></span></p></td><td width=3D72 now=
rap style=3D'width:54.0pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt =
0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text=
-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Ar=
ial","sans-serif";color:#00B050'>13<o:p></o:p></span></p></td><td width=3D9=
1 nowrap style=3D'width:68.0pt;border-top:none;border-left:none;border-bott=
om:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5=
.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D=
'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-famil=
y:"Arial","sans-serif";color:red'>1 (bug 722)<o:p></o:p></span></p></td><td=
 width=3D72 nowrap style=3D'width:54.0pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pad=
ding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcente=
r style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;=
font-family:"Arial","sans-serif";color:red'>2<o:p></o:p></span></p></td></t=
r><tr style=3D'height:14.25pt'><td width=3D127 nowrap style=3D'width:95.0pt=
;border:solid windowtext 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;=
height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:cen=
ter'><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","s=
ans-serif";color:black'>Qemuarm Sato<o:p></o:p></span></b></p></td><td widt=
h=3D72 nowrap style=3D'width:54.0pt;border-top:none;border-left:none;border=
-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:=
0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter sty=
le=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-=
family:"Arial","sans-serif";color:black'>12<o:p></o:p></span></p></td><td w=
idth=3D72 nowrap style=3D'width:54.0pt;border-top:none;border-left:none;bor=
der-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;paddi=
ng:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter =
style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;fo=
nt-family:"Arial","sans-serif";color:black'>0<o:p></o:p></span></p></td><td=
 width=3D72 nowrap style=3D'width:54.0pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pad=
ding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcente=
r style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;=
font-family:"Arial","sans-serif";color:#00B050'>12<o:p></o:p></span></p></t=
d><td width=3D91 nowrap style=3D'width:68.0pt;border-top:none;border-left:n=
one;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0p=
t;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3D=
center style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10=
.0pt;font-family:"Arial","sans-serif";color:red'>0<o:p></o:p></span></p></t=
d><td width=3D72 nowrap style=3D'width:54.0pt;border-top:none;border-left:n=
one;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0p=
t;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3D=
center style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10=
.0pt;font-family:"Arial","sans-serif";color:red'>0<o:p></o:p></span></p></t=
d></tr><tr style=3D'height:14.25pt'><td width=3D127 nowrap style=3D'width:9=
5.0pt;border:solid windowtext 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5=
.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-alig=
n:center'><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Aria=
l","sans-serif";color:black'>Qemuarm SDK<o:p></o:p></span></b></p></td><td =
width=3D72 nowrap style=3D'width:54.0pt;border-top:none;border-left:none;bo=
rder-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padd=
ing:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter=
 style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;f=
ont-family:"Arial","sans-serif";color:black'>17<o:p></o:p></span></p></td><=
td width=3D72 nowrap style=3D'width:54.0pt;border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcen=
ter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0p=
t;font-family:"Arial","sans-serif";color:black'>0<o:p></o:p></span></p></td=
><td width=3D72 nowrap style=3D'width:54.0pt;border-top:none;border-left:no=
ne;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt=
;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dc=
enter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.=
0pt;font-family:"Arial","sans-serif";color:#00B050'>15<o:p></o:p></span></p=
></td><td width=3D91 nowrap style=3D'width:68.0pt;border-top:none;border-le=
ft:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext =
1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal alig=
n=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-siz=
e:10.0pt;font-family:"Arial","sans-serif";color:red'>0<o:p></o:p></span></p=
></td><td width=3D72 nowrap style=3D'width:54.0pt;border-top:none;border-le=
ft:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext =
1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal alig=
n=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-siz=
e:10.0pt;font-family:"Arial","sans-serif";color:red'>2<o:p></o:p></span></p=
></td></tr><tr style=3D'height:14.25pt'><td width=3D127 nowrap style=3D'wid=
th:95.0pt;border:solid windowtext 1.0pt;border-top:none;padding:0cm 5.4pt 0=
cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-=
align:center'><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"=
Arial","sans-serif";color:black'>Total<o:p></o:p></span></b></p></td><td wi=
dth=3D72 nowrap style=3D'width:54.0pt;border-top:none;border-left:none;bord=
er-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;paddin=
g:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter s=
tyle=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;fon=
t-family:"Arial","sans-serif";color:black'>150<o:p></o:p></span></p></td><t=
d width=3D72 nowrap style=3D'width:54.0pt;border-top:none;border-left:none;=
border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pa=
dding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcent=
er style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt=
;font-family:"Arial","sans-serif";color:black'>0<o:p></o:p></span></p></td>=
<td width=3D72 nowrap style=3D'width:54.0pt;border-top:none;border-left:non=
e;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;=
padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dce=
nter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0=
pt;font-family:"Arial","sans-serif";color:black'>131<o:p></o:p></span></p><=
/td><td width=3D91 nowrap style=3D'width:68.0pt;border-top:none;border-left=
:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.=
0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=
=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size=
:10.0pt;font-family:"Arial","sans-serif";color:red'>6<o:p></o:p></span></p>=
</td><td width=3D72 nowrap style=3D'width:54.0pt;border-top:none;border-lef=
t:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1=
.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=
=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size=
:10.0pt;font-family:"Arial","sans-serif";color:red'>10<o:p></o:p></span></p=
></td></tr></table><p class=3DMsoPlainText><span lang=3DEN-US style=3D'font=
-size:10.0pt;font-family:"Arial","sans-serif"'>* You can check the detailed=
 test result in attachment for each target.</span><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'><o:p></o:p></span></=
p><p class=3DMsoPlainText><span lang=3DEN-US style=3D'font-size:10.0pt;font=
-family:"Arial","sans-serif"'>** The failed/blocked case number is listed w=
ith failed cases&#8217; bug number.<o:p></o:p></span></p><p class=3DMsoPlai=
nText><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoPlainTex=
t><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans=
-serif"'>Images<o:p></o:p></span></b></p><p class=3DMsoNormal><b><span lang=
=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>------=
---------------------------------<o:p></o:p></span></b></p><p class=3DMsoPl=
ainText><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","s=
ans-serif"'>http://autobuilder.pokylinux.org/nightly/20110217-1/<o:p></o:p>=
</span></p><p class=3DMsoPlainText><span lang=3DEN-US><o:p>&nbsp;</o:p></sp=
an></p><p class=3DMsoPlainText><b><span lang=3DEN-US style=3D'font-size:10.=
0pt;font-family:"Arial","sans-serif"'>Issue Summary<o:p></o:p></span></b></=
p><p class=3DMsoNormal><b><span lang=3DEN-US style=3D'font-size:10.0pt;font=
-family:"Arial","sans-serif"'>---------------------------------------<o:p><=
/o:p></span></b></p><p class=3DMsoPlainText><b><span lang=3DEN-US style=3D'=
font-size:10.0pt;font-family:"Arial","sans-serif"'>New Bugs:<o:p></o:p></sp=
an></b></p><p class=3DMsoPlainText style=3D'margin-left:18.0pt;text-indent:=
-18.0pt;mso-list:l3 level1 lfo3'><![if !supportLists]><span lang=3DEN-US st=
yle=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'><span style=3D'ms=
o-list:Ignore'>1.<span style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&=
nbsp;&nbsp; </span></span></span><![endif]><span lang=3DEN-US style=3D'font=
-size:10.0pt;font-family:"Arial","sans-serif"'>do_rootfs fail on autobuilde=
r for emenlow(20110217)<o:p></o:p></span></p><p class=3DMsoPlainText style=
=3D'margin-left:18.0pt'><span lang=3DEN-US style=3D'font-size:10.0pt;font-f=
amily:"Arial","sans-serif"'><a href=3D"http://bugzilla.pokylinux.org/show_b=
ug.cgi?id=3D745">http://bugzilla.pokylinux.org/show_bug.cgi?id=3D745</a><o:=
p></o:p></span></p><p class=3DMsoPlainText style=3D'margin-left:18.0pt;text=
-indent:-18.0pt;mso-list:l3 level1 lfo3'><![if !supportLists]><span lang=3D=
EN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'><span sty=
le=3D'mso-list:Ignore'>2.<span style=3D'font:7.0pt "Times New Roman"'>&nbsp=
;&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>[sysroot] atom-pc/ro=
uterstationpro fails to buid during do_configure<o:p></o:p></span></p><p cl=
ass=3DMsoPlainText style=3D'margin-left:18.0pt'><span lang=3DEN-US style=3D=
'font-size:10.0pt;font-family:"Arial","sans-serif"'><a href=3D"http://bugzi=
lla.pokylinux.org/show_bug.cgi?id=3D744">http://bugzilla.pokylinux.org/show=
_bug.cgi?id=3D744</a><o:p></o:p></span></p><p class=3DMsoPlainText style=3D=
'margin-left:18.0pt;text-indent:-18.0pt;mso-list:l3 level1 lfo3'><![if !sup=
portLists]><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial"=
,"sans-serif"'><span style=3D'mso-list:Ignore'>3.<span style=3D'font:7.0pt =
"Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><![endif]>=
<span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-seri=
f"'>[qemuarm]zypper search package warning in sato image: no '/usr/bin/uuid=
gen'<o:p></o:p></span></p><p class=3DMsoPlainText style=3D'margin-left:18.0=
pt'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-=
serif"'>http://bugzilla.pokylinux.org/show_bug.cgi?id=3D749<o:p></o:p></spa=
n></p><p class=3DMsoPlainText><span lang=3DEN-US style=3D'font-size:10.0pt;=
font-family:"Arial","sans-serif"'><o:p>&nbsp;</o:p></span></p><p class=3DMs=
oPlainText><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Ari=
al","sans-serif"'>Old Open Bugs:<o:p></o:p></span></b></p><p class=3DMsoPla=
inText style=3D'margin-left:18.0pt;text-indent:-18.0pt;mso-list:l2 level1 l=
fo1'><![if !supportLists]><span lang=3DEN-US style=3D'font-size:10.0pt;font=
-family:"Arial","sans-serif"'><span style=3D'mso-list:Ignore'>1.<span style=
=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp; </span></span></=
span><![endif]><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Ar=
ial","sans-serif"'>[zypper] search failure on qemuppc (nightly build 201102=
12-1)<o:p></o:p></span></p><p class=3DMsoPlainText style=3D'margin-left:18.=
0pt'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans=
-serif"'><a href=3D"http://bugzilla.pokylinux.org/show_bug.cgi?id=3D722">ht=
tp://bugzilla.pokylinux.org/show_bug.cgi?id=3D722</a><o:p></o:p></span></p>=
<p class=3DMsoPlainText style=3D'margin-left:18.0pt;text-indent:-18.0pt;mso=
-list:l2 level1 lfo1'><![if !supportLists]><span lang=3DEN-US style=3D'font=
-size:10.0pt;font-family:"Arial","sans-serif"'><span style=3D'mso-list:Igno=
re'>2.<span style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;=
 </span></span></span><![endif]><span lang=3DEN-US style=3D'font-size:10.0p=
t;font-family:"Arial","sans-serif"'>[zypper] zypper segfault in qemux86-64 =
sdk image<o:p></o:p></span></p><p class=3DMsoPlainText style=3D'margin-left=
:18.0pt'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","=
sans-serif"'><a href=3D"http://bugzilla.pokylinux.org/show_bug.cgi?id=3D721=
">http://bugzilla.pokylinux.org/show_bug.cgi?id=3D721</a><o:p></o:p></span>=
</p><p class=3DMsoPlainText style=3D'margin-left:18.0pt;text-indent:-18.0pt=
;mso-list:l2 level1 lfo1'><![if !supportLists]><span lang=3DEN-US style=3D'=
font-size:10.0pt;font-family:"Arial","sans-serif"'><span style=3D'mso-list:=
Ignore'>3.<span style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&n=
bsp; </span></span></span><![endif]><span lang=3DEN-US style=3D'font-size:1=
0.0pt;font-family:"Arial","sans-serif"'>qemumips shutdown cause host consol=
e warning <o:p></o:p></span></p><p class=3DMsoPlainText style=3D'margin-lef=
t:18.0pt'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial",=
"sans-serif"'><a href=3D"http://bugzilla.pokylinux.org/show_bug.cgi?id=3D32=
2">http://bugzilla.pokylinux.org/show_bug.cgi?id=3D322</a><o:p></o:p></span=
></p><p class=3DMsoPlainText style=3D'margin-left:18.0pt;text-indent:-18.0p=
t;mso-list:l2 level1 lfo1'><![if !supportLists]><span lang=3DEN-US style=3D=
'font-size:10.0pt;font-family:"Arial","sans-serif"'><span style=3D'mso-list=
:Ignore'>4.<span style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&=
nbsp; </span></span></span><![endif]><span lang=3DEN-US style=3D'font-size:=
10.0pt;font-family:"Arial","sans-serif"'>The bottom icons on Applications a=
nd All screen are cut-off in qemu<o:p></o:p></span></p><p class=3DMsoPlainT=
ext style=3D'margin-left:18.0pt'><span lang=3DEN-US style=3D'font-size:10.0=
pt;font-family:"Arial","sans-serif"'><a href=3D"http://bugzilla.pokylinux.o=
rg/show_bug.cgi?id=3D658">http://bugzilla.pokylinux.org/show_bug.cgi?id=3D6=
58</a><o:p></o:p></span></p><p class=3DMsoPlainText><span lang=3DEN-US><o:p=
>&nbsp;</o:p></span></p><p class=3DMsoPlainText><b><span lang=3DEN-US>Verif=
ied Fixed Bugs:<o:p></o:p></span></b></p><p class=3DMsoPlainText style=3D'm=
argin-left:18.0pt;text-indent:-18.0pt;mso-list:l0 level1 lfo5'><![if !suppo=
rtLists]><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","=
sans-serif"'><span style=3D'mso-list:Ignore'>1.<span style=3D'font:7.0pt "T=
imes New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><s=
pan lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"=
'>[rpm/zypper] libmagic.so error when running rpm/zypper<o:p></o:p></span><=
/p><p class=3DMsoPlainText style=3D'margin-left:18.0pt'><span lang=3DEN-US =
style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'><a href=3D"http=
://bugzilla.pokylinux.org/show_bug.cgi?id=3D705">http://bugzilla.pokylinux.=
org/show_bug.cgi?id=3D705</a><o:p></o:p></span></p><p class=3DMsoPlainText>=
<span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoPlainText><spa=
n lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoPlainText><span la=
ng=3DEN-US>Best Regards,<o:p></o:p></span></p><p class=3DMsoPlainText><span=
 lang=3DEN-US>Jiajun<o:p></o:p></span></p></div></body></html>=

--_000_D5AB6E638E5A3E4B8F4406B113A5A19A333AD46Fshsmsx501ccrcor_--

--_004_D5AB6E638E5A3E4B8F4406B113A5A19A333AD46Fshsmsx501ccrcor_
Content-Type: application/oleobject;
	name="weekly-detail-testresult-20110217.ods"
Content-Description: weekly-detail-testresult-20110217.ods
Content-Disposition: attachment;
	filename="weekly-detail-testresult-20110217.ods"; size=20487;
	creation-date="Tue, 22 Feb 2011 16:11:26 GMT";
	modification-date="Tue, 22 Feb 2011 16:49:31 GMT"
Content-Transfer-Encoding: base64

UEsDBBQAAAgAAC9GVj6FbDmKLgAAAC4AAAAIAAAAbWltZXR5cGVhcHBsaWNhdGlvbi92bmQub2Fz
aXMub3BlbmRvY3VtZW50LnNwcmVhZHNoZWV0UEsDBBQAAAgAAC9GVj4AAAAAAAAAAAAAAAAaAAAA
Q29uZmlndXJhdGlvbnMyL3N0YXR1c2Jhci9QSwMEFAAICAgAL0ZWPgAAAAAAAAAAAAAAACcAAABD
b25maWd1cmF0aW9uczIvYWNjZWxlcmF0b3IvY3VycmVudC54bWwDAFBLBwgAAAAAAgAAAAAAAABQ
SwMEFAAACAAAL0ZWPgAAAAAAAAAAAAAAABgAAABDb25maWd1cmF0aW9uczIvZmxvYXRlci9QSwME
FAAACAAAL0ZWPgAAAAAAAAAAAAAAABoAAABDb25maWd1cmF0aW9uczIvcG9wdXBtZW51L1BLAwQU
AAAIAAAvRlY+AAAAAAAAAAAAAAAAHAAAAENvbmZpZ3VyYXRpb25zMi9wcm9ncmVzc2Jhci9QSwME
FAAACAAAL0ZWPgAAAAAAAAAAAAAAABgAAABDb25maWd1cmF0aW9uczIvbWVudWJhci9QSwMEFAAA
CAAAL0ZWPgAAAAAAAAAAAAAAABgAAABDb25maWd1cmF0aW9uczIvdG9vbGJhci9QSwMEFAAACAAA
L0ZWPgAAAAAAAAAAAAAAAB8AAABDb25maWd1cmF0aW9uczIvaW1hZ2VzL0JpdG1hcHMvUEsDBBQA
CAgIAC9GVj4AAAAAAAAAAAAAAAALAAAAY29udGVudC54bWztXd2yqzaavZ+noHaq5qbL24B/ts2c
fbqmuytdXZN0deckqczVlDbINtmAaIG3j/MKcznvMW8wbzPzHiOwjY0NtsCAsVm5SLJBSJ+0lj59
kpbkT7//6jrKB+WBzbzXJ+1ZfVKoZzLL9uavTz/9+G1v8vT7z//0ic1mtkkNi5lLl3phz2ReKP6r
iK+9wNi8fX1acs9gJLADwyMuDYzQNJhPvd1XxmFqIy5r8yQI147053Hiw69D+jWU/ThKm/qWvMmX
HCc+/NriZCX7cZRWNOrh5zMm+/HXwOnNmGh11yehfWTFV8f23l+fFmHoG/3+arV6Xg2eGZ/3tel0
2o/fJgabSTp/yZ04lWX2qUOjwoK+9qz1d2ldGhJZ+6K0hyZ5S/eNcummISE5QdXnNBBJRHUjYspl
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
dHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB4bWxuczpkYz0iaHR0cDovL3B1cmwub3JnL2Rj
L2VsZW1lbnRzLzEuMS8iIHhtbG5zOm1ldGE9InVybjpvYXNpczpuYW1lczp0YzpvcGVuZG9jdW1l
bnQ6eG1sbnM6bWV0YToxLjAiIHhtbG5zOm9vbz0iaHR0cDovL29wZW5vZmZpY2Uub3JnLzIwMDQv
b2ZmaWNlIiB4bWxuczpncmRkbD0iaHR0cDovL3d3dy53My5vcmcvMjAwMy9nL2RhdGEtdmlldyMi
IG9mZmljZTp2ZXJzaW9uPSIxLjIiIGdyZGRsOnRyYW5zZm9ybWF0aW9uPSJodHRwOi8vZG9jcy5v
YXNpcy1vcGVuLm9yZy9vZmZpY2UvMS4yL3hzbHQvb2RmMnJkZi54c2wiPjxvZmZpY2U6bWV0YT48
bWV0YTppbml0aWFsLWNyZWF0b3I+TWFydGluIEhhdmxhdDwvbWV0YTppbml0aWFsLWNyZWF0b3I+
PGRjOnRpdGxlPlRlc3RMaW5rPC9kYzp0aXRsZT48ZGM6ZGF0ZT4yMDExLTAyLTIyVDE2OjQ5OjMx
LjEwPC9kYzpkYXRlPjxtZXRhOmdlbmVyYXRvcj5PcGVuT2ZmaWNlLm9yZy8zLjIkV2luMzIgT3Bl
bk9mZmljZS5vcmdfcHJvamVjdC8zMjBtMTgkQnVpbGQtOTUwMjwvbWV0YTpnZW5lcmF0b3I+PG1l
dGE6ZWRpdGluZy1kdXJhdGlvbj5QVDAySDI1TTM0UzwvbWV0YTplZGl0aW5nLWR1cmF0aW9uPjxt
ZXRhOmVkaXRpbmctY3ljbGVzPjEyPC9tZXRhOmVkaXRpbmctY3ljbGVzPjxtZXRhOmRvY3VtZW50
LXN0YXRpc3RpYyBtZXRhOnRhYmxlLWNvdW50PSIxMSIgbWV0YTpjZWxsLWNvdW50PSI2MjAiIG1l
dGE6b2JqZWN0LWNvdW50PSIwIi8+PG1ldGE6dXNlci1kZWZpbmVkIG1ldGE6bmFtZT0iY29weXJp
Z2h0Ij5HTlU8L21ldGE6dXNlci1kZWZpbmVkPjxtZXRhOnVzZXItZGVmaW5lZCBtZXRhOm5hbWU9
InJvYm90cyI+Tk9GT0xMT1c8L21ldGE6dXNlci1kZWZpbmVkPjwvb2ZmaWNlOm1ldGE+PC9vZmZp
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
bWxQSwUGAAAAAA8ADwDuAwAAA0wAAAAA

--_004_D5AB6E638E5A3E4B8F4406B113A5A19A333AD46Fshsmsx501ccrcor_--
