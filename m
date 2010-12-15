Return-Path: <jiajun.xu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2B92E4C811AA
	for <poky@pokylinux.org>; Wed, 15 Dec 2010 09:57:24 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 15 Dec 2010 07:57:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,349,1288594800"; 
	d="xls'32?scan'32,208,217,32";a="868547364"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by fmsmga001.fm.intel.com with ESMTP; 15 Dec 2010 07:57:21 -0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 15 Dec 2010 23:57:19 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Wed, 15 Dec 2010 23:57:18 +0800
From: "Xu, Jiajun" <jiajun.xu@intel.com>
To: "poky@pokylinux.org" <poky@pokylinux.org>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Wed, 15 Dec 2010 23:57:16 +0800
Thread-Topic: Sanity Test Report for Yocto M2 20101211 Build
Thread-Index: AcuccL8SptfrikclQeitWfTfVWnmWA==
Message-ID: <D5AB6E638E5A3E4B8F4406B113A5A19A3189DCB7@shsmsx501.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 15 Dec 2010 10:57:34 -0600
Subject: Sanity Test Report for Yocto M2 20101211 Build
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
X-List-Received-Date: Wed, 15 Dec 2010 15:57:25 -0000
X-Groupsio-MsgNum: 1304
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_004_D5AB6E638E5A3E4B8F4406B113A5A19A3189DCB7shsmsx501ccrcor_"

--_004_D5AB6E638E5A3E4B8F4406B113A5A19A3189DCB7shsmsx501ccrcor_
Content-Type: multipart/alternative;
	boundary="_000_D5AB6E638E5A3E4B8F4406B113A5A19A3189DCB7shsmsx501ccrcor_"

--_000_D5AB6E638E5A3E4B8F4406B113A5A19A3189DCB7shsmsx501ccrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all,

       This is the Sanity Test Report for M2 20101211 build. QA finished sa=
nity+weekly test cases. Toolchain testing and qemuppc testing is blocked be=
cause there is no image built out. There are 3 new bugs exposed in this tes=
ting. Meanwhile, 5 old bugs caused some test cases failed/blocked in this t=
esting. Netbook/Blcaksand testing is blocked by an installation issue. Zypp=
er installation/removal issue still exists on mips and arm platforms.



Test Summary
---------------------------------------
Target

Total TCs

Not Run

Passed

Failed

Not testable (Blocked)

Poky build system

2

0

0

2 (bug 598, bug 599)

0

Netbook SDK

76

76

0

0

76 (bug 566)

eMenlow Minimal

27

12

15

0

0

Blacksand SDK

69

69

0

0

69 (bug 566)

Routerstationpro SDK

28

2

24

2 (bug 490)

0

Qemux86-64 Sato

19

7

12

0

0

Qemux86-64 SDK

26

10

16

0

0

Qemux86 Sato

19

7

12

0

0

Qemux86 SDK

26

10

16

0

0

Qemumips Sato

19

0

17

2 (bug 490)

0

Qemumips SDK

26

4

20

2 (bug 490)

0

Qemuppc Sato

17

17

0

0

17 (bug 585)

Qemuppc SDK

24

24

0

0

24 (bug 585)

Qemuarm Sato

19

0

16

3 (bug 489, bug 490, bug 491)

0

Qemuarm SDK

26

4

19

3 (bug 489, bug 490, bug 491)

0

Total

423

242

167

14

186


* You can check the detailed test result in attachment for each target.

** The failed/blocked case number is listed with failed cases' bug number.

*** The "Not Run" cases contains test cases, blocked by some critical bug, =
or the "Fullpass" test cases, which are not supposed to execute sanity test=
 cycle.



Images
---------------------------------------

http://autobuilder.pokylinux.org/nightly/20101211-2/



Issue Summary
---------------------------------------

New Bugs:

1.     [poky] kernel interactive build does not work via ssh

http://bugzilla.pokylinux.org/show_bug.cgi?id=3D598

2.     [poky] qemu running with KVM needs root permission

http://bugzilla.pokylinux.org/show_bug.cgi?id=3D599

3.     No mouse action response in X window with qemuarm images

http://bugzilla.pokylinux.org/show_bug.cgi?id=3D596



Old Open Bugs:

1.     [Netbook] Installer no response after loading from live image

http://bugzilla.pokylinux.org/show_bug.cgi?id=3D566

2.     PPC is failing to build

http://bugzilla.pokylinux.org/show_bug.cgi?id=3D585

3.     [zypper] uname -m and repo arch difference

http://bugzilla.pokylinux.org/show_bug.cgi?id=3D489

4.     [zypper] installation failure on arm

http://bugzilla.pokylinux.org/show_bug.cgi?id=3D490

5.     [zypper] package removal failure

http://bugzilla.pokylinux.org/show_bug.cgi?id=3D491





Best Regards,

Jiajun



--_000_D5AB6E638E5A3E4B8F4406B113A5A19A3189DCB7shsmsx501ccrcor_
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
	{mso-list-id:68891723;
	mso-list-type:hybrid;
	mso-list-template-ids:978209178 1747849196 67698713 67698715 67698703 6769=
8713 67698715 67698703 67698713 67698715;}
@list l0:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:18.0pt;
	text-indent:-18.0pt;}
@list l0:level2
	{mso-level-tab-stop:72.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level3
	{mso-level-tab-stop:108.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level4
	{mso-level-tab-stop:144.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level5
	{mso-level-tab-stop:180.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level6
	{mso-level-tab-stop:216.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level7
	{mso-level-tab-stop:252.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level8
	{mso-level-tab-stop:288.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level9
	{mso-level-tab-stop:324.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l1
	{mso-list-id:465591260;
	mso-list-type:hybrid;
	mso-list-template-ids:-264993420 -354496054 67698713 67698715 67698703 676=
98713 67698715 67698703 67698713 67698715;}
@list l1:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:18.0pt;
	text-indent:-18.0pt;}
@list l2
	{mso-list-id:612322206;
	mso-list-type:hybrid;
	mso-list-template-ids:-11128028 -420938426 67698713 67698715 67698703 6769=
8713 67698715 67698703 67698713 67698715;}
@list l2:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:18.0pt;
	text-indent:-18.0pt;}
@list l3
	{mso-list-id:1971937489;
	mso-list-type:hybrid;
	mso-list-template-ids:1790877032 -1693275266 67698713 67698715 67698703 67=
698713 67698715 67698703 67698713 67698715;}
@list l3:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:18.0pt;
	text-indent:-18.0pt;}
@list l3:level2
	{mso-level-tab-stop:72.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l3:level3
	{mso-level-tab-stop:108.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l3:level4
	{mso-level-tab-stop:144.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l3:level5
	{mso-level-tab-stop:180.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l3:level6
	{mso-level-tab-stop:216.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l3:level7
	{mso-level-tab-stop:252.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l3:level8
	{mso-level-tab-stop:288.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l3:level9
	{mso-level-tab-stop:324.0pt;
	mso-level-number-position:left;
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
sans-serif"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; This is the Sanity Test R=
eport for M2 20101211 build. QA finished sanity+weekly test cases. Toolchai=
n testing and qemuppc testing is blocked because there is no image built ou=
t. There are 3 new bugs exposed in this testing. Meanwhile, 5 old bugs caus=
ed some test cases failed/blocked in this testing. Netbook/Blcaksand testin=
g is blocked by an installation issue. Zypper installation/removal issue st=
ill exists on mips and arm platforms.<o:p></o:p></span></p><p class=3DMsoPl=
ainText><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoPlainT=
ext><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sa=
ns-serif"'>Test Summary<o:p></o:p></span></b></p><p class=3DMsoNormal><b><s=
pan lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"=
'>---------------------------------------<o:p></o:p></span></b></p><table c=
lass=3DMsoNormalTable border=3D0 cellspacing=3D0 cellpadding=3D0 width=3D67=
9 style=3D'width:509.0pt;margin-left:-1.15pt;border-collapse:collapse'><tr =
style=3D'height:26.25pt'><td width=3D159 nowrap style=3D'width:119.0pt;bord=
er:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:26.25pt'><p cl=
ass=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b><span lang=3D=
EN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:blac=
k'>Target<o:p></o:p></span></b></p></td><td width=3D72 style=3D'width:54.0p=
t;border:solid windowtext 1.0pt;border-left:none;padding:0cm 5.4pt 0cm 5.4p=
t;height:26.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:c=
enter'><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial",=
"sans-serif";color:black'>Total TCs</span></b><span lang=3DEN-US style=3D'f=
ont-size:10.0pt;font-family:"Arial","sans-serif";color:black'> <b><o:p></o:=
p></b></span></p></td><td width=3D72 style=3D'width:54.0pt;border:solid win=
dowtext 1.0pt;border-left:none;padding:0cm 5.4pt 0cm 5.4pt;height:26.25pt'>=
<p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b><span la=
ng=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color=
:black'>Not Run<o:p></o:p></span></b></p></td><td width=3D72 style=3D'width=
:54.0pt;border:solid windowtext 1.0pt;border-left:none;padding:0cm 5.4pt 0c=
m 5.4pt;height:26.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-a=
lign:center'><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"A=
rial","sans-serif";color:black'>Passed</span></b><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'> <b><o:p=
></o:p></b></span></p></td><td width=3D197 style=3D'width:148.0pt;border:so=
lid windowtext 1.0pt;border-left:none;padding:0cm 5.4pt 0cm 5.4pt;height:26=
.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b><=
span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif=
";color:black'>Failed</span></b><span lang=3DEN-US style=3D'font-size:10.0p=
t;font-family:"Arial","sans-serif";color:black'> <b><o:p></o:p></b></span><=
/p></td><td width=3D107 style=3D'width:80.0pt;border:solid windowtext 1.0pt=
;border-left:none;padding:0cm 5.4pt 0cm 5.4pt;height:26.25pt'><p class=3DMs=
oNormal align=3Dcenter style=3D'text-align:center'><b><span lang=3DEN-US st=
yle=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>Not t=
estable (Blocked)</span></b><span lang=3DEN-US style=3D'font-size:10.0pt;fo=
nt-family:"Arial","sans-serif";color:black'> <b><o:p></o:p></b></span></p><=
/td></tr><tr style=3D'height:27.0pt'><td width=3D159 nowrap style=3D'width:=
119.0pt;border:solid windowtext 1.0pt;border-top:none;padding:0cm 5.4pt 0cm=
 5.4pt;height:27.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-ali=
gn:center'><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Ari=
al","sans-serif";color:black'>Poky build system<o:p></o:p></span></b></p></=
td><td width=3D72 style=3D'width:54.0pt;border-top:none;border-left:none;bo=
rder-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padd=
ing:0cm 5.4pt 0cm 5.4pt;height:27.0pt'><p class=3DMsoNormal align=3Dcenter =
style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;fo=
nt-family:"Arial","sans-serif"'>2<o:p></o:p></span></p></td><td width=3D72 =
style=3D'width:54.0pt;border-top:none;border-left:none;border-bottom:solid =
windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm =
5.4pt;height:27.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-alig=
n:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial",=
"sans-serif"'>0<o:p></o:p></span></p></td><td width=3D72 style=3D'width:54.=
0pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;b=
order-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:27.0p=
t'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span la=
ng=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color=
:#00B050'>0<o:p></o:p></span></p></td><td width=3D197 style=3D'width:148.0p=
t;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;bor=
der-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:27.0pt'=
><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=
=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:r=
ed'>2 (bug 598, bug 599)<o:p></o:p></span></p></td><td width=3D107 style=3D=
'width:80.0pt;border-top:none;border-left:none;border-bottom:solid windowte=
xt 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;he=
ight:27.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center=
'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-se=
rif";color:red'>0<o:p></o:p></span></p></td></tr><tr style=3D'height:14.25p=
t'><td width=3D159 nowrap style=3D'width:119.0pt;border:solid windowtext 1.=
0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3D=
MsoNormal align=3Dcenter style=3D'text-align:center'><b><span lang=3DEN-US =
style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>Net=
book SDK<o:p></o:p></span></b></p></td><td width=3D72 style=3D'width:54.0pt=
;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;bord=
er-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'=
><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=
=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>76<o:p=
></o:p></span></p></td><td width=3D72 style=3D'width:54.0pt;border-top:none=
;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid w=
indowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoN=
ormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>76<o:p></o:p></span>=
</p></td><td width=3D72 style=3D'width:54.0pt;border-top:none;border-left:n=
one;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0p=
t;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3D=
center style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10=
.0pt;font-family:"Arial","sans-serif";color:#00B050'>0<o:p></o:p></span></p=
></td><td width=3D197 style=3D'width:148.0pt;border-top:none;border-left:no=
ne;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt=
;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dc=
enter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.=
0pt;font-family:"Arial","sans-serif";color:red'>0<o:p></o:p></span></p></td=
><td width=3D107 style=3D'width:80.0pt;border-top:none;border-left:none;bor=
der-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;paddi=
ng:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter =
style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;fo=
nt-family:"Arial","sans-serif";color:red'>76 (bug 566)<o:p></o:p></span></p=
></td></tr><tr style=3D'height:14.25pt'><td width=3D159 nowrap style=3D'wid=
th:119.0pt;border:solid windowtext 1.0pt;border-top:none;padding:0cm 5.4pt =
0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text=
-align:center'><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:=
"Arial","sans-serif";color:black'>eMenlow Minimal<o:p></o:p></span></b></p>=
</td><td width=3D72 style=3D'width:54.0pt;border-top:none;border-left:none;=
border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pa=
dding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcent=
er style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt=
;font-family:"Arial","sans-serif"'>27<o:p></o:p></span></p></td><td width=
=3D72 style=3D'width:54.0pt;border-top:none;border-left:none;border-bottom:=
solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4p=
t 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'te=
xt-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"=
Arial","sans-serif"'>12<o:p></o:p></span></p></td><td width=3D72 style=3D'w=
idth:54.0pt;border-top:none;border-left:none;border-bottom:solid windowtext=
 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;heig=
ht:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'=
><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-ser=
if";color:#00B050'>15<o:p></o:p></span></p></td><td width=3D197 style=3D'wi=
dth:148.0pt;border-top:none;border-left:none;border-bottom:solid windowtext=
 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;heig=
ht:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'=
><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-ser=
if";color:red'>0<o:p></o:p></span></p></td><td width=3D107 style=3D'width:8=
0.0pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt=
;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.=
25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span=
 lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";co=
lor:red'>0<o:p></o:p></span></p></td></tr><tr style=3D'height:14.25pt'><td =
width=3D159 nowrap style=3D'width:119.0pt;border:solid windowtext 1.0pt;bor=
der-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNorm=
al align=3Dcenter style=3D'text-align:center'><b><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>Blacksan=
d SDK<o:p></o:p></span></b></p></td><td width=3D72 style=3D'width:54.0pt;bo=
rder-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-=
right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p=
 class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=3D=
EN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>69<o:p></=
o:p></span></p></td><td width=3D72 style=3D'width:54.0pt;border-top:none;bo=
rder-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNorm=
al align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'f=
ont-size:10.0pt;font-family:"Arial","sans-serif"'>69<o:p></o:p></span></p><=
/td><td width=3D72 style=3D'width:54.0pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pad=
ding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcente=
r style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;=
font-family:"Arial","sans-serif";color:#00B050'>0<o:p></o:p></span></p></td=
><td width=3D197 style=3D'width:148.0pt;border-top:none;border-left:none;bo=
rder-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padd=
ing:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter=
 style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;f=
ont-family:"Arial","sans-serif";color:red'>0<o:p></o:p></span></p></td><td =
width=3D107 style=3D'width:80.0pt;border-top:none;border-left:none;border-b=
ottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0c=
m 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=
=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-fa=
mily:"Arial","sans-serif";color:red'>69 (bug 566)<o:p></o:p></span></p></td=
></tr><tr style=3D'height:14.25pt'><td width=3D159 nowrap style=3D'width:11=
9.0pt;border:solid windowtext 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5=
.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-alig=
n:center'><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Aria=
l","sans-serif";color:black'>Routerstationpro SDK<o:p></o:p></span></b></p>=
</td><td width=3D72 style=3D'width:54.0pt;border-top:none;border-left:none;=
border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pa=
dding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcent=
er style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt=
;font-family:"Arial","sans-serif"'>28<o:p></o:p></span></p></td><td width=
=3D72 style=3D'width:54.0pt;border-top:none;border-left:none;border-bottom:=
solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4p=
t 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'te=
xt-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"=
Arial","sans-serif"'>2<o:p></o:p></span></p></td><td width=3D72 style=3D'wi=
dth:54.0pt;border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;heigh=
t:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'>=
<span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-seri=
f";color:#00B050'>24<o:p></o:p></span></p></td><td width=3D197 style=3D'wid=
th:148.0pt;border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;heigh=
t:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'>=
<span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-seri=
f";color:red'>2 (bug 490)<o:p></o:p></span></p></td><td width=3D107 style=
=3D'width:80.0pt;border-top:none;border-left:none;border-bottom:solid windo=
wtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt=
;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:ce=
nter'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","san=
s-serif";color:red'>0<o:p></o:p></span></p></td></tr><tr style=3D'height:14=
.25pt'><td width=3D159 nowrap style=3D'width:119.0pt;border:solid windowtex=
t 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p clas=
s=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b><span lang=3DEN=
-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'=
>Qemux86-64 Sato<o:p></o:p></span></b></p></td><td width=3D72 nowrap style=
=3D'width:54.0pt;border-top:none;border-left:none;border-bottom:solid windo=
wtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt=
;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:ce=
nter'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","san=
s-serif"'>19<o:p></o:p></span></p></td><td width=3D72 valign=3Dtop style=3D=
'width:54.0pt;border-top:none;border-left:none;border-bottom:solid windowte=
xt 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;he=
ight:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:cente=
r'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-s=
erif"'>7<o:p></o:p></span></p></td><td width=3D72 valign=3Dtop style=3D'wid=
th:54.0pt;border-top:none;border-left:none;border-bottom:solid windowtext 1=
.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height=
:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><=
span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif=
";color:#00B050'>12<o:p></o:p></span></p></td><td width=3D197 nowrap style=
=3D'width:148.0pt;border-top:none;border-left:none;border-bottom:solid wind=
owtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4p=
t;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:c=
enter'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sa=
ns-serif";color:red'>0<o:p></o:p></span></p></td><td width=3D107 nowrap sty=
le=3D'width:80.0pt;border-top:none;border-left:none;border-bottom:solid win=
dowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4=
pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:=
center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","s=
ans-serif";color:red'>0<o:p></o:p></span></p></td></tr><tr style=3D'height:=
14.25pt'><td width=3D159 nowrap style=3D'width:119.0pt;border:solid windowt=
ext 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p cl=
ass=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b><span lang=3D=
EN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:blac=
k'>Qemux86-64 SDK<o:p></o:p></span></b></p></td><td width=3D72 nowrap style=
=3D'width:54.0pt;border-top:none;border-left:none;border-bottom:solid windo=
wtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt=
;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:ce=
nter'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","san=
s-serif"'>26<o:p></o:p></span></p></td><td width=3D72 valign=3Dtop style=3D=
'width:54.0pt;border-top:none;border-left:none;border-bottom:solid windowte=
xt 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;he=
ight:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:cente=
r'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-s=
erif"'>10<o:p></o:p></span></p></td><td width=3D72 valign=3Dtop style=3D'wi=
dth:54.0pt;border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;heigh=
t:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'>=
<span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-seri=
f";color:#00B050'>16<o:p></o:p></span></p></td><td width=3D197 nowrap style=
=3D'width:148.0pt;border-top:none;border-left:none;border-bottom:solid wind=
owtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4p=
t;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:c=
enter'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sa=
ns-serif";color:red'>0<o:p></o:p></span></p></td><td width=3D107 nowrap sty=
le=3D'width:80.0pt;border-top:none;border-left:none;border-bottom:solid win=
dowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4=
pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:=
center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","s=
ans-serif";color:red'>0<o:p></o:p></span></p></td></tr><tr style=3D'height:=
14.25pt'><td width=3D159 nowrap style=3D'width:119.0pt;border:solid windowt=
ext 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p cl=
ass=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b><span lang=3D=
EN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:blac=
k'>Qemux86 Sato<o:p></o:p></span></b></p></td><td width=3D72 nowrap style=
=3D'width:54.0pt;border-top:none;border-left:none;border-bottom:solid windo=
wtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt=
;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:ce=
nter'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","san=
s-serif"'>19<o:p></o:p></span></p></td><td width=3D72 valign=3Dtop style=3D=
'width:54.0pt;border-top:none;border-left:none;border-bottom:solid windowte=
xt 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;he=
ight:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:cente=
r'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-s=
erif"'>7<o:p></o:p></span></p></td><td width=3D72 valign=3Dtop style=3D'wid=
th:54.0pt;border-top:none;border-left:none;border-bottom:solid windowtext 1=
.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height=
:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><=
span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif=
";color:#00B050'>12<o:p></o:p></span></p></td><td width=3D197 nowrap style=
=3D'width:148.0pt;border-top:none;border-left:none;border-bottom:solid wind=
owtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4p=
t;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:c=
enter'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sa=
ns-serif";color:red'>0<o:p></o:p></span></p></td><td width=3D107 nowrap sty=
le=3D'width:80.0pt;border-top:none;border-left:none;border-bottom:solid win=
dowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4=
pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:=
center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","s=
ans-serif";color:red'>0<o:p></o:p></span></p></td></tr><tr style=3D'height:=
14.25pt'><td width=3D159 nowrap style=3D'width:119.0pt;border:solid windowt=
ext 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p cl=
ass=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b><span lang=3D=
EN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:blac=
k'>Qemux86 SDK<o:p></o:p></span></b></p></td><td width=3D72 nowrap style=3D=
'width:54.0pt;border-top:none;border-left:none;border-bottom:solid windowte=
xt 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;he=
ight:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:cente=
r'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-s=
erif"'>26<o:p></o:p></span></p></td><td width=3D72 valign=3Dtop style=3D'wi=
dth:54.0pt;border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;heigh=
t:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'>=
<span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-seri=
f"'>10<o:p></o:p></span></p></td><td width=3D72 valign=3Dtop style=3D'width=
:54.0pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0=
pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:1=
4.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><sp=
an lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";=
color:#00B050'>16<o:p></o:p></span></p></td><td width=3D197 nowrap style=3D=
'width:148.0pt;border-top:none;border-left:none;border-bottom:solid windowt=
ext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;h=
eight:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:cent=
er'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-=
serif";color:red'>0<o:p></o:p></span></p></td><td width=3D107 valign=3Dtop =
style=3D'width:80.0pt;border-top:none;border-left:none;border-bottom:solid =
windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm =
5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-ali=
gn:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial"=
,"sans-serif";color:red'>0<o:p></o:p></span></p></td></tr><tr style=3D'heig=
ht:14.25pt'><td width=3D159 nowrap style=3D'width:119.0pt;border:solid wind=
owtext 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p=
 class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b><span lang=
=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:b=
lack'>Qemumips Sato<o:p></o:p></span></b></p></td><td width=3D72 nowrap sty=
le=3D'width:54.0pt;border-top:none;border-left:none;border-bottom:solid win=
dowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4=
pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:=
center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","s=
ans-serif"'>19<o:p></o:p></span></p></td><td width=3D72 nowrap style=3D'wid=
th:54.0pt;border-top:none;border-left:none;border-bottom:solid windowtext 1=
.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height=
:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><=
span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif=
"'>0<o:p></o:p></span></p></td><td width=3D72 nowrap style=3D'width:54.0pt;=
border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;borde=
r-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>=
<p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=
=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:#=
00B050'>17<o:p></o:p></span></p></td><td width=3D197 nowrap style=3D'width:=
148.0pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0=
pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:1=
4.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><sp=
an lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";=
color:red'>2 (bug 490)<o:p></o:p></span></p></td><td width=3D107 nowrap sty=
le=3D'width:80.0pt;border-top:none;border-left:none;border-bottom:solid win=
dowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4=
pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:=
center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","s=
ans-serif";color:red'>0<o:p></o:p></span></p></td></tr><tr style=3D'height:=
14.25pt'><td width=3D159 nowrap style=3D'width:119.0pt;border:solid windowt=
ext 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p cl=
ass=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b><span lang=3D=
EN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:blac=
k'>Qemumips SDK<o:p></o:p></span></b></p></td><td width=3D72 nowrap style=
=3D'width:54.0pt;border-top:none;border-left:none;border-bottom:solid windo=
wtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt=
;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:ce=
nter'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","san=
s-serif"'>26<o:p></o:p></span></p></td><td width=3D72 nowrap style=3D'width=
:54.0pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0=
pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:1=
4.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><sp=
an lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'=
>4<o:p></o:p></span></p></td><td width=3D72 nowrap style=3D'width:54.0pt;bo=
rder-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-=
right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p=
 class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=3D=
EN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:#00B=
050'>20<o:p></o:p></span></p></td><td width=3D197 nowrap style=3D'width:148=
.0pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;=
border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.2=
5pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span =
lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";col=
or:red'>2 (bug 490)<o:p></o:p></span></p></td><td width=3D107 nowrap style=
=3D'width:80.0pt;border-top:none;border-left:none;border-bottom:solid windo=
wtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt=
;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:ce=
nter'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","san=
s-serif";color:red'>0<o:p></o:p></span></p></td></tr><tr style=3D'height:14=
.25pt'><td width=3D159 nowrap style=3D'width:119.0pt;border:solid windowtex=
t 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p clas=
s=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b><span lang=3DEN=
-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'=
>Qemuppc Sato<o:p></o:p></span></b></p></td><td width=3D72 nowrap style=3D'=
width:54.0pt;border-top:none;border-left:none;border-bottom:solid windowtex=
t 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;hei=
ght:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center=
'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-se=
rif"'>17<o:p></o:p></span></p></td><td width=3D72 nowrap style=3D'width:54.=
0pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;b=
order-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25=
pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span l=
ang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>17<=
o:p></o:p></span></p></td><td width=3D72 nowrap style=3D'width:54.0pt;borde=
r-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-rig=
ht:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p cl=
ass=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-=
US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:#00B050=
'>0<o:p></o:p></span></p></td><td width=3D197 nowrap style=3D'width:148.0pt=
;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;bord=
er-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'=
><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=
=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:r=
ed'>0<o:p></o:p></span></p></td><td width=3D107 nowrap style=3D'width:80.0p=
t;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;bor=
der-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt=
'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:=
red'>17 (bug 585)<o:p></o:p></span></p></td></tr><tr style=3D'height:14.25p=
t'><td width=3D159 nowrap style=3D'width:119.0pt;border:solid windowtext 1.=
0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3D=
MsoNormal align=3Dcenter style=3D'text-align:center'><b><span lang=3DEN-US =
style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>Qem=
uppc SDK<o:p></o:p></span></b></p></td><td width=3D72 nowrap style=3D'width=
:54.0pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0=
pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:1=
4.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><sp=
an lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'=
>24<o:p></o:p></span></p></td><td width=3D72 nowrap style=3D'width:54.0pt;b=
order-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border=
-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><=
p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=
=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>24<o:p=
></o:p></span></p></td><td width=3D72 nowrap style=3D'width:54.0pt;border-t=
op:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:=
solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=
=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US =
style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:#00B050'>0=
<o:p></o:p></span></p></td><td width=3D197 nowrap style=3D'width:148.0pt;bo=
rder-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-=
right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p=
 class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=3D=
EN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:red'=
>0<o:p></o:p></span></p></td><td width=3D107 nowrap style=3D'width:80.0pt;b=
order-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border=
-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><=
p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=
=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:r=
ed'>24 (bug 585)<o:p></o:p></span></p></td></tr><tr style=3D'height:14.25pt=
'><td width=3D159 nowrap style=3D'width:119.0pt;border:solid windowtext 1.0=
pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DM=
soNormal align=3Dcenter style=3D'text-align:center'><b><span lang=3DEN-US s=
tyle=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>Qemu=
arm Sato<o:p></o:p></span></b></p></td><td width=3D72 nowrap style=3D'width=
:54.0pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0=
pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:1=
4.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><sp=
an lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'=
>19<o:p></o:p></span></p></td><td width=3D72 nowrap style=3D'width:54.0pt;b=
order-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border=
-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><=
p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=
=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>0<o:p>=
</o:p></span></p></td><td width=3D72 nowrap style=3D'width:54.0pt;border-to=
p:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:s=
olid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=
=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US =
style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:#00B050'>1=
6<o:p></o:p></span></p></td><td width=3D197 nowrap style=3D'width:148.0pt;b=
order-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border=
-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><=
p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=
=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:r=
ed'>3 (bug 489, bug 490, bug 491)<o:p></o:p></span></p></td><td width=3D107=
 nowrap style=3D'width:80.0pt;border-top:none;border-left:none;border-botto=
m:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.=
4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'=
text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family=
:"Arial","sans-serif";color:red'>0<o:p></o:p></span></p></td></tr><tr style=
=3D'height:14.25pt'><td width=3D159 nowrap style=3D'width:119.0pt;border:so=
lid windowtext 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:14.=
25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b><s=
pan lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"=
;color:black'>Qemuarm SDK<o:p></o:p></span></b></p></td><td width=3D72 nowr=
ap style=3D'width:54.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0=
cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-=
align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Ari=
al","sans-serif"'>26<o:p></o:p></span></p></td><td width=3D72 nowrap style=
=3D'width:54.0pt;border-top:none;border-left:none;border-bottom:solid windo=
wtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt=
;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:ce=
nter'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","san=
s-serif"'>4<o:p></o:p></span></p></td><td width=3D72 nowrap style=3D'width:=
54.0pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0p=
t;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14=
.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><spa=
n lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";c=
olor:#00B050'>19<o:p></o:p></span></p></td><td width=3D197 nowrap style=3D'=
width:148.0pt;border-top:none;border-left:none;border-bottom:solid windowte=
xt 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;he=
ight:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:cente=
r'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-s=
erif";color:red'>3 (bug 489, bug 490, bug 491)<o:p></o:p></span></p></td><t=
d width=3D107 nowrap style=3D'width:80.0pt;border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcen=
ter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0p=
t;font-family:"Arial","sans-serif";color:red'>0<o:p></o:p></span></p></td><=
/tr><tr style=3D'height:14.25pt'><td width=3D159 nowrap style=3D'width:119.=
0pt;border:solid windowtext 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4=
pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:=
center'><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial"=
,"sans-serif";color:black'>Total<o:p></o:p></span></b></p></td><td width=3D=
72 nowrap style=3D'width:54.0pt;border-top:none;border-left:none;border-bot=
tom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm =
5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=
=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-fa=
mily:"Arial","sans-serif";color:black'>423<o:p></o:p></span></p></td><td wi=
dth=3D72 nowrap style=3D'width:54.0pt;border-top:none;border-left:none;bord=
er-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;paddin=
g:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter s=
tyle=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;fon=
t-family:"Arial","sans-serif";color:black'>242<o:p></o:p></span></p></td><t=
d width=3D72 nowrap style=3D'width:54.0pt;border-top:none;border-left:none;=
border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pa=
dding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcent=
er style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt=
;font-family:"Arial","sans-serif";color:black'>167<o:p></o:p></span></p></t=
d><td width=3D197 nowrap style=3D'width:148.0pt;border-top:none;border-left=
:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.=
0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=
=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size=
:10.0pt;font-family:"Arial","sans-serif";color:black'>14<o:p></o:p></span><=
/p></td><td width=3D107 nowrap style=3D'width:80.0pt;border-top:none;border=
-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowte=
xt 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal a=
lign=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-=
size:10.0pt;font-family:"Arial","sans-serif";color:black'>186<o:p></o:p></s=
pan></p></td></tr></table><p class=3DMsoPlainText><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>* You can check the =
detailed test result in attachment for each target.<o:p></o:p></span></p><p=
 class=3DMsoPlainText><span lang=3DEN-US style=3D'font-size:10.0pt;font-fam=
ily:"Arial","sans-serif"'>** The failed/blocked case number is listed with =
failed cases&#8217; bug number.<o:p></o:p></span></p><p class=3DMsoPlainTex=
t><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-se=
rif"'>*** The &#8220;Not Run&#8221; cases contains test cases, blocked by s=
ome critical bug, or the &#8220;Fullpass&#8221; test cases, which are not s=
upposed to execute sanity test cycle.<o:p></o:p></span></p><p class=3DMsoPl=
ainText><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoPlainT=
ext><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sa=
ns-serif"'>Images<o:p></o:p></span></b></p><p class=3DMsoNormal><b><span la=
ng=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>----=
-----------------------------------<o:p></o:p></span></b></p><p class=3DMso=
PlainText><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial",=
"sans-serif"'><a href=3D"http://autobuilder.pokylinux.org/nightly/20101211-=
2/">http://autobuilder.pokylinux.org/nightly/20101211-2/</a><o:p></o:p></sp=
an></p><p class=3DMsoPlainText><span lang=3DEN-US><o:p>&nbsp;</o:p></span><=
/p><p class=3DMsoPlainText><b><span lang=3DEN-US style=3D'font-size:10.0pt;=
font-family:"Arial","sans-serif"'>Issue Summary<o:p></o:p></span></b></p><p=
 class=3DMsoNormal><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-fam=
ily:"Arial","sans-serif"'>---------------------------------------<o:p></o:p=
></span></b></p><p class=3DMsoPlainText><b><span lang=3DEN-US style=3D'font=
-size:10.0pt;font-family:"Arial","sans-serif"'>New Bugs:<o:p></o:p></span><=
/b></p><p class=3DMsoPlainText style=3D'margin-left:18.0pt;text-indent:-18.=
0pt;mso-list:l2 level1 lfo3'><![if !supportLists]><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'><span style=3D'mso-l=
ist:Ignore'>1.<span style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbs=
p;&nbsp; </span></span></span><![endif]><span lang=3DEN-US style=3D'font-si=
ze:10.0pt;font-family:"Arial","sans-serif"'>[poky] kernel interactive build=
 does not work via ssh<o:p></o:p></span></p><p class=3DMsoPlainText style=
=3D'text-indent:18.0pt'><span lang=3DEN-US style=3D'font-size:10.0pt;font-f=
amily:"Arial","sans-serif"'>http://bugzilla.pokylinux.org/show_bug.cgi?id=
=3D598<o:p></o:p></span></p><p class=3DMsoPlainText style=3D'margin-left:18=
.0pt;text-indent:-18.0pt;mso-list:l2 level1 lfo3'><![if !supportLists]><spa=
n lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>=
<span style=3D'mso-list:Ignore'>2.<span style=3D'font:7.0pt "Times New Roma=
n"'>&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><span lang=3DEN=
-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>[poky] qemu=
 running with KVM needs root permission<o:p></o:p></span></p><p class=3DMso=
PlainText style=3D'text-indent:18.0pt'><span lang=3DEN-US style=3D'font-siz=
e:10.0pt;font-family:"Arial","sans-serif"'><a href=3D"http://bugzilla.pokyl=
inux.org/show_bug.cgi?id=3D599">http://bugzilla.pokylinux.org/show_bug.cgi?=
id=3D599</a><o:p></o:p></span></p><p class=3DMsoPlainText style=3D'margin-l=
eft:18.0pt;text-indent:-18.0pt;mso-list:l2 level1 lfo3'><![if !supportLists=
]><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-se=
rif"'><span style=3D'mso-list:Ignore'>3.<span style=3D'font:7.0pt "Times Ne=
w Roman"'>&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><span lan=
g=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>No mo=
use action response in X window with qemuarm images<o:p></o:p></span></p><p=
 class=3DMsoPlainText style=3D'margin-left:18.0pt'><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>http://bugzilla.poky=
linux.org/show_bug.cgi?id=3D596<o:p></o:p></span></p><p class=3DMsoPlainTex=
t><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-se=
rif"'><o:p>&nbsp;</o:p></span></p><p class=3DMsoPlainText><b><span lang=3DE=
N-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>Old Open B=
ugs:<o:p></o:p></span></b></p><p class=3DMsoPlainText style=3D'margin-left:=
18.0pt;text-indent:-18.0pt;mso-list:l1 level1 lfo4'><![if !supportLists]><s=
pan lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"=
'><span style=3D'mso-list:Ignore'>1.<span style=3D'font:7.0pt "Times New Ro=
man"'>&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><span lang=3D=
EN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>[Netbook]=
 Installer no response after loading from live image<o:p></o:p></span></p><=
p class=3DMsoPlainText style=3D'margin-left:18.0pt'><span lang=3DEN-US styl=
e=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>http://bugzilla.pok=
ylinux.org/show_bug.cgi?id=3D566<o:p></o:p></span></p><p class=3DMsoPlainTe=
xt style=3D'margin-left:18.0pt;text-indent:-18.0pt;mso-list:l1 level1 lfo4'=
><![if !supportLists]><span lang=3DEN-US style=3D'font-size:10.0pt;font-fam=
ily:"Arial","sans-serif"'><span style=3D'mso-list:Ignore'>2.<span style=3D'=
font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span=
><![endif]><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial"=
,"sans-serif"'>PPC is failing to build<o:p></o:p></span></p><p class=3DMsoP=
lainText style=3D'margin-left:18.0pt'><span lang=3DEN-US style=3D'font-size=
:10.0pt;font-family:"Arial","sans-serif"'>http://bugzilla.pokylinux.org/sho=
w_bug.cgi?id=3D585<o:p></o:p></span></p><p class=3DMsoPlainText style=3D'ma=
rgin-left:18.0pt;text-indent:-18.0pt;mso-list:l1 level1 lfo4'><![if !suppor=
tLists]><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","s=
ans-serif"'><span style=3D'mso-list:Ignore'>3.<span style=3D'font:7.0pt "Ti=
mes New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><sp=
an lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'=
>[zypper] uname -m and repo arch difference<o:p></o:p></span></p><p class=
=3DMsoPlainText style=3D'margin-left:18.0pt'><span lang=3DEN-US style=3D'fo=
nt-size:10.0pt;font-family:"Arial","sans-serif"'><a href=3D"http://bugzilla=
.pokylinux.org/show_bug.cgi?id=3D489">http://bugzilla.pokylinux.org/show_bu=
g.cgi?id=3D489</a><o:p></o:p></span></p><p class=3DMsoPlainText style=3D'ma=
rgin-left:18.0pt;text-indent:-18.0pt;mso-list:l1 level1 lfo4'><![if !suppor=
tLists]><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","s=
ans-serif"'><span style=3D'mso-list:Ignore'>4.<span style=3D'font:7.0pt "Ti=
mes New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><sp=
an lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'=
>[zypper] installation failure on arm<o:p></o:p></span></p><p class=3DMsoPl=
ainText style=3D'margin-left:18.0pt'><span lang=3DEN-US style=3D'font-size:=
10.0pt;font-family:"Arial","sans-serif"'><a href=3D"http://bugzilla.pokylin=
ux.org/show_bug.cgi?id=3D490">http://bugzilla.pokylinux.org/show_bug.cgi?id=
=3D490</a><o:p></o:p></span></p><p class=3DMsoPlainText style=3D'margin-lef=
t:18.0pt;text-indent:-18.0pt;mso-list:l1 level1 lfo4'><![if !supportLists]>=
<span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-seri=
f"'><span style=3D'mso-list:Ignore'>5.<span style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><span lang=
=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>[zyppe=
r] package removal failure<o:p></o:p></span></p><p class=3DMsoPlainText sty=
le=3D'margin-left:18.0pt'><span lang=3DEN-US style=3D'font-size:10.0pt;font=
-family:"Arial","sans-serif"'>http://bugzilla.pokylinux.org/show_bug.cgi?id=
=3D491<o:p></o:p></span></p><p class=3DMsoPlainText><span lang=3DEN-US><o:p=
>&nbsp;</o:p></span></p><p class=3DMsoPlainText><span lang=3DEN-US><o:p>&nb=
sp;</o:p></span></p><p class=3DMsoPlainText><span lang=3DEN-US>Best Regards=
,<o:p></o:p></span></p><p class=3DMsoPlainText><span lang=3DEN-US>Jiajun<o:=
p></o:p></span></p><p class=3DMsoPlainText><span lang=3DEN-US><o:p>&nbsp;</=
o:p></span></p></div></body></html>=

--_000_D5AB6E638E5A3E4B8F4406B113A5A19A3189DCB7shsmsx501ccrcor_--

--_004_D5AB6E638E5A3E4B8F4406B113A5A19A3189DCB7shsmsx501ccrcor_
Content-Type: application/vnd.ms-excel; name="detail_testresult.xls"
Content-Description: detail_testresult.xls
Content-Disposition: attachment; filename="detail_testresult.xls"; size=52224;
	creation-date="Wed, 15 Dec 2010 23:35:05 GMT";
	modification-date="Wed, 15 Dec 2010 23:39:46 GMT"
Content-Transfer-Encoding: base64

0M8R4KGxGuEAAAAAAAAAAAAAAAAAAAAAPgADAP7/CQAGAAAAAAAAAAAAAAABAAAAAQAAAAAAAAAA
EAAAYQAAAAEAAAD+////AAAAAAAAAAD/////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////9
////ZAAAAAMAAAAEAAAABQAAAAYAAAAHAAAACAAAAAkAAAAKAAAACwAAAAwAAAANAAAADgAAAA8A
AAAQAAAAEQAAABIAAAATAAAAFAAAABUAAAAWAAAAFwAAABgAAAAZAAAAGgAAABsAAAAcAAAAHQAA
AB4AAAAfAAAAIAAAACEAAAAiAAAAIwAAACQAAAAlAAAAJgAAACcAAAAoAAAAKQAAACoAAAArAAAA
LAAAAC0AAAAuAAAALwAAADAAAAAxAAAAMgAAADMAAAA0AAAANQAAADYAAAA3AAAAOAAAADkAAAA6
AAAAOwAAADwAAAA9AAAAPgAAAD8AAABAAAAAQQAAAEIAAABDAAAARAAAAEUAAABGAAAARwAAAEgA
AABJAAAASgAAAEsAAABMAAAATQAAAE4AAABPAAAAUAAAAFEAAABSAAAAUwAAAFQAAABVAAAAVgAA
AFcAAABYAAAAWQAAAFoAAABbAAAAXAAAAF0AAABeAAAAXwAAAGAAAAD+/////v///2MAAAD+////
/v//////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////1IA
bwBvAHQAIABFAG4AdAByAHkAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAWAAUA//////////8CAAAAIAgCAAAAAADAAAAAAAAARgAAAACCarKlbZzLAQD9UE1unMsB
YgAAAEADAAAAAAAAVwBvAHIAawBiAG8AbwBrAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAABIAAgEEAAAA//////////8AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAACAAAAuLwAAAAAAAAFAFMAdQBtAG0AYQByAHkASQBuAGYAbwByAG0AYQB0
AGkAbwBuAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAKAACAQEAAAADAAAA/////wAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADQAAAAAAAAAAUARABvAGMAdQBtAGUAbgB0
AFMAdQBtAG0AYQByAHkASQBuAGYAbwByAG0AYQB0AGkAbwBuAAAAAAAAAAAAAAA4AAIB////////
////////AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAALgBAAAAAAAACQgQ
AAAGBQCqH80HwQABAAYEAADhAAIAsATBAAIAAADiAAAAXABwAAUAAGp4dTQ5ICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBCAAIAsARhAQIAAADAAQAAPQEWAAsA
CgAJAAgABwAGAAUABAADAAIAAQCcAAIAEAAZAAIAAAASAAIAAAATAAIAAACvAQIAAAC8AQIAAAA9
ABIAWAJZAetQYyQ4AAAAAAABADYDQAACAAAAjQACAAAAIgACAAAADgACAAEAtwECAAAA2gACAAAA
MQAUANwAAAAIAJABAAAAAIbKAgGLW1NPMQAUANwAAAAIAJABAAAAAIbKAgGLW1NPMQAUANwAAAAI
AJABAAAAAIbKAgGLW1NPMQAUANwAAAAIAJABAAAAAIbKAgGLW1NPMQAUANwAAAAIAJABAAAAAIbK
AgGLW1NPMQAUAGgBAQA+ALwCAAAAAIbKAgGLW1NPMQAUACwBAQA+ALwCAAAAAIbKAgGLW1NPMQAU
AAQBAQA+ALwCAAAAAIbKAgGLW1NPMQAUANwAAQA+ALwCAAAAAIbKAgGLW1NPMQAUANwAAAARAJAB
AAAAAIbKAgGLW1NPMQAUANwAAAAUAJABAAAAAIbKAgGLW1NPMQAUANwAAAA8AJABAAAAAIbKAgGL
W1NPMQAUANwAAAA+AJABAAAAAIbKAgGLW1NPMQAUANwAAQA/ALwCAAAAAIbKAgGLW1NPMQAUANwA
AQA0ALwCAAAAAIbKAgGLW1NPMQAUANwAAAA0AJABAAAAAIbKAgGLW1NPMQAUANwAAQAqALwCAAAA
AIbKAgGLW1NPMQAUANwAAAAKAJABAAAAAIbKAgGLW1NPMQAUANwAAgAXAJABAAAAAIbKAgGLW1NP
MQAUANwAAQAIALwCAAAAAIbKAgGLW1NPMQAUANwAAAAqAJABAAAAAIbKAgGLW1NPMQAoALsAAQAJ
ALwCAAAAAgDKDAFUAHIAZQBiAHUAYwBoAGUAdAAgAE0AUwAxABQAtAAAAP9/kAEAAAAAhsoCAYtb
U08xACgA8AAAAAgAkAEAAAACAMoMAVQAcgBlAGIAdQBjAGgAZQB0ACAATQBTADEAKADcAAAACACQ
AQAAAAIAygwBVAByAGUAYgB1AGMAaABlAHQAIABNAFMAMQAcAKAAAQAeALwCAAAAAgDKBgFUAGEA
aABvAG0AYQAxACgAxgAAAAgAkAEAAAACAMoMAVQAcgBlAGIAdQBjAGgAZQB0ACAATQBTADEAKADG
AAEAEQC8AgAAAAIAygwBVAByAGUAYgB1AGMAaABlAHQAIABNAFMAMQAoAMYAAAAXAJABAAAAAgDK
DAFUAHIAZQBiAHUAYwBoAGUAdAAgAE0AUwAxACgAxgABAAoAvAIAAAACAMoMAVQAcgBlAGIAdQBj
AGgAZQB0ACAATQBTAB4EKwAFABMAASIA5f8iACMALAAjACMAMAA7ACIA5f8iAFwALQAjACwAIwAj
ADAAHgQ1AAYAGAABIgDl/yIAIwAsACMAIwAwADsAWwBSAGUAZABdACIA5f8iAFwALQAjACwAIwAj
ADAAHgQ3AAcAGQABIgDl/yIAIwAsACMAIwAwAC4AMAAwADsAIgDl/yIAXAAtACMALAAjACMAMAAu
ADAAMAAeBEEACAAeAAEiAOX/IgAjACwAIwAjADAALgAwADAAOwBbAFIAZQBkAF0AIgDl/yIAXAAt
ACMALAAjACMAMAAuADAAMAAeBGkAKgAyAAFfACAAIgDl/yIAKgAgACMALAAjACMAMABfACAAOwBf
ACAAIgDl/yIAKgAgAFwALQAjACwAIwAjADAAXwAgADsAXwAgACIA5f8iACoAIAAiAC0AIgBfACAA
OwBfACAAQABfACAAHgQuACkAKQAAXyAqICMsIyMwXyA7XyAqIFwtIywjIzBfIDtfICogIi0iXyA7
XyBAXyAeBHkALAA6AAFfACAAIgDl/yIAKgAgACMALAAjACMAMAAuADAAMABfACAAOwBfACAAIgDl
/yIAKgAgAFwALQAjACwAIwAjADAALgAwADAAXwAgADsAXwAgACIA5f8iACoAIAAiAC0AIgA/AD8A
XwAgADsAXwAgAEAAXwAgAB4ENgArADEAAF8gKiAjLCMjMC4wMF8gO18gKiBcLSMsIyMwLjAwXyA7
XyAqICItIj8/XyA7XyBAXyAeBBoAFwAVAABcJCMsIyMwXyk7XChcJCMsIyMwXCkeBB8AGAAaAABc
JCMsIyMwXyk7W1JlZF1cKFwkIywjIzBcKR4EIAAZABsAAFwkIywjIzAuMDBfKTtcKFwkIywjIzAu
MDBcKR4EJQAaACAAAFwkIywjIzAuMDBfKTtbUmVkXVwoXCQjLCMjMC4wMFwp4AAUAAAAAAD1/xAA
AAAAAAAAAAAAAMAg4AAUAAEAAAD1/xAAAPQAAAAAAAAAAMAg4AAUAAEAAAD1/xAAAPQAAAAAAAAA
AMAg4AAUAAIAAAD1/xAAAPQAAAAAAAAAAMAg4AAUAAIAAAD1/xAAAPQAAAAAAAAAAMAg4AAUAAAA
AAD1/xAAAPQAAAAAAAAAAMAg4AAUAAAAAAD1/xAAAPQAAAAAAAAAAMAg4AAUAAAAAAD1/xAAAPQA
AAAAAAAAAMAg4AAUAAAAAAD1/xAAAPQAAAAAAAAAAMAg4AAUAAAAAAD1/xAAAPQAAAAAAAAAAMAg
4AAUAAAAAAD1/xAAAPQAAAAAAAAAAMAg4AAUAAAAAAD1/xAAAPQAAAAAAAAAAMAg4AAUAAAAAAD1
/xAAAPQAAAAAAAAAAMAg4AAUAAAAAAD1/xAAAPQAAAAAAAAAAMAg4AAUAAAAAAD1/xAAAPQAAAAA
AAAAAMAg4AAUAAAAAAABABAAAAAAAAAAAAAAAsAg4AAUAAUAAAD1/xAAALQAAAAAAAAABIkg4AAU
AAUAAAD1/xAAALQAAAAAAAAABK8g4AAUAAUAAAD1/xAAALQAAAAAAAAABJog4AAUAAUAAAD1/xAA
ALQAAAAAAAAABIkg4AAUAAUAAAD1/xAAALQAAAAAAAAABJsg4AAUAAUAAAD1/xAAALQAAAAAAAAA
BK8g4AAUAAUAAAD1/xAAALQAAAAAAAAABJYg4AAUAAUAAAD1/xAAALQAAAAAAAAABJ0g4AAUAAUA
AAD1/xAAALQAAAAAAAAABKsg4AAUAAUAAAD1/xAAALQAAAAAAAAABJYg4AAUAAUAAAD1/xAAALQA
AAAAAAAABKwg4AAUAAUAAAD1/xAAALQAAAAAAAAABK8g4AAUABUAAAD1/xAAALQAAAAAAAAABLEg
4AAUABUAAAD1/xAAALQAAAAAAAAABJ0g4AAUABUAAAD1/xAAALQAAAAAAAAABKsg4AAUABUAAAD1
/xAAALQAAAAAAAAABJYg4AAUABUAAAD1/xAAALQAAAAAAAAABLEg4AAUABUAAAD1/xAAALQAAAAA
AAAABK8g4AAUABUAAAD1/xAAALQAAAAAAAAABLEg4AAUABUAAAD1/xAAALQAAAAAAAAABIog4AAU
ABUAAAD1/xAAALQAAAAAAAAABLkg4AAUABUAAAD1/xAAALQAAAAAAAAABLYg4AAUABUAAAD1/xAA
ALQAAAAAAAAABLEg4AAUABUAAAD1/xAAALQAAAAAAAAABLUg4AAUAAsAAAD1/xAAALQAAAAAAAAA
BK0g4AAUAA8AAAD1/xAAAJQREZcLlwsABIkg4AAUABEAAAD1/xAAAJRmZr8fvx8ABLcg4AAUAAUA
KwD1/xAAAPgAAAAAAAAAAMAg4AAUAAUAKQD1/xAAAPgAAAAAAAAAAMAg4AAUAAUALAD1/xAAAPgA
AAAAAAAAAMAg4AAUAAUAKgD1/xAAAPgAAAAAAAAAAMAg4AAUABMAAAD1/xAAAPQAAAAAAAAAAMAg
4AAUAAoAAAD1/xAAALQAAAAAAAAABKog4AAUAAcAAAD1/xAAANQAUAAAgBgAAMAg4AAUAAgAAAD1
/xAAANQAUAAAAAsAAMAg4AAUAAkAAAD1/xAAANQAIAAAgBgAAMAg4AAUAAkAAAD1/xAAAPQAAAAA
AAAAAMAg4AAUAA0AAAD1/xAAAJQREZcLlwsABK8g4AAUABAAAAD1/xAAANQAYAAAABoAAMAg4AAU
AAwAAAD1/xAAALQAAAAAAAAABKsg4AAUAAUAAAD1/xAAAJwRERYLFgsABJog4AAUAA4AAAD1/xAA
AJQREb8fvx8ABIkg4AAUAAUACQD1/xAAAPgAAAAAAAAAAMAg4AAUAAYAAAD1/xAAAPQAAAAAAAAA
AMAg4AAUABQAAAD1/xAAANQAYQAAsRgAAMAg4AAUABIAAAD1/xAAAPQAAAAAAAAAAMAg4AAUABYA
AAABABEAAHgiIggECAQABgkE4AAUABgAAAABABAAAEgAAAAAAAAABgkE4AAUABkAAAABABgAAFgA
AAAAAAAABgkE4AAUABoAAAABAAoAAHghIQgWCBYABgkE4AAUABoAAAABAAoAAHggIQAWCBYABgkE
4AAUABoAAAABAAoAAHgQIQAECBYABgkE4AAUABsAAAABAAgAAHgBAAgAAAAABgkE4AAUABsAAAAB
AAgAAFgAAAAAAAAABgkE4AAUABwAAAABAAgAAHgQAAAEAAAABgkE4AAUAB0AAAABAAgAAHgQAAAE
AAAABgkE4AAUABsAAAABAAgAAHgBEAgAAAQABgkE4AAUABsAAAABAAgAAHgAEAAAAAQABgkE4AAU
AB0AAAABAAgAAHgQEAAEAAQABgkE4AAUABgAAAABABEAAHgREAgEAAQABgkE4AAUAB4AAAABAAgA
AHgQAAAEAAAABgkE4AAUAB4AAAABAAgAAHgQEAAEAAQABgkE4AAUABwAAAABAAgAAHgQEAAEAAQA
BgkEfAgUAHwIAAAAAAAAAAAAAAAATwAuuEHKfQgtAH0IAAAAAAAAAAAAAAAAAAAAAAIADQAUAAIA
AAAAAAD/LjAwXClfICoOAAUAAn0ILQB9CAAAAAAAAAAAAAAAAAEAAAACAA0AFAADAAAAAQAAAC4w
MFwpXyAqDgAFAAJ9CC0AfQgAAAAAAAAAAAAAAAACAAAAAgANABQAAwAAAAEAAAAuMDBcKV8gKg4A
BQACfQgtAH0IAAAAAAAAAAAAAAAAAwAAAAIADQAUAAMAAAABAAAALjAwXClfICoOAAUAAn0ILQB9
CAAAAAAAAAAAAAAAAAQAAAACAA0AFAADAAAAAQAAAC4wMFwpXyAqDgAFAAJ9CC0AfQgAAAAAAAAA
AAAAAAAFAAAAAgANABQAAgAAAAAAAP8uMDBcKV8gKg4ABQACfQgtAH0IAAAAAAAAAAAAAAAABgAA
AAIADQAUAAIAAAAAAAD/LjAwXClfICoOAAUAAn0ILQB9CAAAAAAAAAAAAAAAAAcAAAACAA0AFAAC
AAAAAAAA/y4wMFwpXyAqDgAFAAJ9CC0AfQgAAAAAAAAAAAAAAAAIAAAAAgANABQAAgAAAAAAAP8u
MDBcKV8gKg4ABQACfQgtAH0IAAAAAAAAAAAAAAAACQAAAAIADQAUAAIAAAAAAAD/LjAwXClfICoO
AAUAAn0ILQB9CAAAAAAAAAAAAAAAAAoAAAACAA0AFAACAAAAAAAA/y4wMFwpXyAqDgAFAAJ9CC0A
fQgAAAAAAAAAAAAAAAALAAAAAgANABQAAgAAAAAAAP8uMDBcKV8gKg4ABQACfQgtAH0IAAAAAAAA
AAAAAAAADAAAAAIADQAUAAIAAAAAAAD/LjAwXClfICoOAAUAAn0ILQB9CAAAAAAAAAAAAAAAAA0A
AAACAA0AFAACAAAAAAAA/y4wMFwpXyAqDgAFAAJ9CC0AfQgAAAAAAAAAAAAAAAAOAAAAAgANABQA
AgAAAAAAAP8uMDBcKV8gKg4ABQACfQgtAH0IAAAAAAAAAAAAAAAADwAAAAIADQAUAAIAAAAAAAD/
LjAwXClfICoOAAUAAn0ILQB9CAAAAAAAAAAAAAAAACsAAAACAA0AFAADAAAAAQAAAC4wMFwpXyAq
DgAFAAJ9CC0AfQgAAAAAAAAAAAAAAAAsAAAAAgANABQAAwAAAAEAAAAuMDBcKV8gKg4ABQACfQgt
AH0IAAAAAAAAAAAAAAAALQAAAAIADQAUAAMAAAABAAAALjAwXClfICoOAAUAAn0ILQB9CAAAAAAA
AAAAAAAAAC4AAAACAA0AFAADAAAAAQAAAC4wMFwpXyAqDgAFAAJ9CC0AfQgAAAAAAAAAAAAAAAA6
AAAAAgANABQAAwAAAAEAAAAuMDBcKV8gKg4ABQACfQgtAH0IAAAAAAAAAAAAAAAAOwAAAAIADQAU
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
ACMALAAjAH0IQQB9CAAAAAAAAAAAAAAAABEAAAADAA0AFAADAAAAAQAAAC4wMFwpXyAqDgAFAAIE
ABQAAwBlZgUAAAAtACMALAAjAH0IQQB9CAAAAAAAAAAAAAAAABcAAAADAA0AFAADAAAAAQAAAC4w
MFwpXyAqDgAFAAIEABQAAwDMTAUAAAAtACMALAAjAH0IQQB9CAAAAAAAAAAAAAAAAB0AAAADAA0A
FAADAAAAAAAAAC4wMFwpXyAqDgAFAAIEABQAAwAyMwUAAAAtACMALAAjAH0IQQB9CAAAAAAAAAAA
AAAAACQAAAADAA0AFAADAAAAAAAAAC4wMFwpXyAqDgAFAAIEABQAAwAAAAYAAAAtACMALAAjAH0I
QQB9CAAAAAAAAAAAAAAAABIAAAADAA0AFAADAAAAAQAAAC4wMFwpXyAqDgAFAAIEABQAAwBlZgYA
AAAtACMALAAjAH0IQQB9CAAAAAAAAAAAAAAAABgAAAADAA0AFAADAAAAAQAAAC4wMFwpXyAqDgAF
AAIEABQAAwDMTAYAAAAtACMALAAjAH0IQQB9CAAAAAAAAAAAAAAAAB4AAAADAA0AFAADAAAAAAAA
AC4wMFwpXyAqDgAFAAIEABQAAwAyMwYAAAAtACMALAAjAH0IQQB9CAAAAAAAAAAAAAAAACUAAAAD
AA0AFAADAAAAAAAAAC4wMFwpXyAqDgAFAAIEABQAAwAAAAcAAAAtACMALAAjAH0IQQB9CAAAAAAA
AAAAAAAAABMAAAADAA0AFAADAAAAAQAAAC4wMFwpXyAqDgAFAAIEABQAAwBlZgcAAAAtACMALAAj
AH0IQQB9CAAAAAAAAAAAAAAAABkAAAADAA0AFAADAAAAAQAAAC4wMFwpXyAqDgAFAAIEABQAAwDM
TAcAAAAtACMALAAjAH0IQQB9CAAAAAAAAAAAAAAAAB8AAAADAA0AFAADAAAAAAAAAC4wMFwpXyAq
DgAFAAIEABQAAwAyMwcAAAAtACMALAAjAH0IQQB9CAAAAAAAAAAAAAAAACYAAAADAA0AFAADAAAA
AAAAAC4wMFwpXyAqDgAFAAIEABQAAwAAAAgAAAAtACMALAAjAH0IQQB9CAAAAAAAAAAAAAAAABQA
AAADAA0AFAADAAAAAQAAAC4wMFwpXyAqDgAFAAIEABQAAwBlZggAAAAtACMALAAjAH0IQQB9CAAA
AAAAAAAAAAAAABoAAAADAA0AFAADAAAAAQAAAC4wMFwpXyAqDgAFAAIEABQAAwDMTAgAAAAtACMA
LAAjAH0IQQB9CAAAAAAAAAAAAAAAACAAAAADAA0AFAADAAAAAAAAAC4wMFwpXyAqDgAFAAIEABQA
AwAyMwgAAAAtACMALAAjAH0IQQB9CAAAAAAAAAAAAAAAACcAAAADAA0AFAADAAAAAAAAAC4wMFwp
XyAqDgAFAAIEABQAAwAAAAkAAAAtACMALAAjAH0IQQB9CAAAAAAAAAAAAAAAABUAAAADAA0AFAAD
AAAAAQAAAC4wMFwpXyAqDgAFAAIEABQAAwBlZgkAAAAtACMALAAjAH0IQQB9CAAAAAAAAAAAAAAA
ABsAAAADAA0AFAADAAAAAQAAAC4wMFwpXyAqDgAFAAIEABQAAwDMTAkAAAAtACMALAAjAH0IQQB9
CAAAAAAAAAAAAAAAACEAAAADAA0AFAADAAAAAAAAAC4wMFwpXyAqDgAFAAIEABQAAwAyMwkAAAAt
ACMALAAjAH0IoAB9CAAAAAAAAAAAAAAAAD4AAAAHAA0AFAACAAAA/////y4wMFwpXyAqBAAUAAIA
AADu7u7/MwkAAAAtACMFABQAAgAAAAAAAP8ABAAAACAAOwcAFAACAAAAAAAA/wCysrL/LQAiCAAU
AAIAAAAAAAD/ALKysv9fACAJABQAAgAAAAAAAP8AsrKy/wAAAAoAFAACAAAAAAAA/wAAAAAAAAAA
fQhQAH0IAAAAAAAAAAAAAAAAPwAAAAMADQAUAAIAAAAAAAD/LjAwXClfICoEABQAAgAAAO7u7v8z
CQAAAC0AIwUAFAACAAAAAAAA/wAEAAAAIAA7fQhQAH0IAAAAAAAAAAAAAAAAQAAAAAMADQAUAAIA
AAAAAAD/LjAwXClfICoEABQAAgAAAO7u7v8zCQAAAC0AIwUAFAACAAAAAAAA/wAEAAAAIAA7fQig
AH0IAAAAAAAAAAAAAAAAQQAAAAcADQAUAAIAAAAVQov/LjAwXClfICoEABQAAgAAAO7u7v8zCQAA
AC0AIwUAFAACAAAAAAAA/wAEAAAAIAA7BwAUAAIAAAAAAAD/ALKysv8tACIIABQAAgAAAJm76P8A
srKy/18AIAkAFAACAAAAAAAA/wCysrL/AAAACgAUAAIAAACZu+j/AAAAAAAAAAB9CIwAfQgAAAAA
AAAAAAAAAABCAAAABgANABQAAgAAABVCi/8uMDBcKV8gKgQAFAACAAAA7u7u/zMJAAAALQAjBQAU
AAIAAAAAAAD/AAQAAAAgADsHABQAAgAAAAAAAP8AsrKy/y0AIggAFAACAAAAmbvo/wCysrL/XwAg
CgAUAAIAAACZu+j/ALKysv8AAAB9CIwAfQgAAAAAAAAAAAAAAABDAAAABgANABQAAgAAABVCi/8u
MDBcKV8gKgQAFAACAAAA7u7u/zMJAAAALQAjBQAUAAIAAAAAAAD/AAQAAAAgADsHABQAAgAAAAAA
AP8AsrKy/y0AIggAFAACAAAAmbvo/wCysrL/XwAgCgAUAAIAAAAAAAD/ALKysv8AAAB9CGQAfQgA
AAAAAAAAAAAAAABEAAAABAANABQAAgAAAAAAAP8uMDBcKV8gKgQAFAACAAAA7u7u/zMJAAAALQAj
BQAUAAIAAAAAAAD/AAQAAAAgADsJABQAAgAAAAAAAP8AsrKy/y0AIn0IUAB9CAAAAAAAAAAAAAAA
AEUAAAADAA0AFAACAAAAAAAA/y4wMFwpXyAqBAAUAAIAAADu7u7/MwkAAAAtACMFABQAAgAAAAAA
AP8ABAAAACAAO30IZAB9CAAAAAAAAAAAAAAAAEYAAAAEAA0AFAACAAAAAIAA/y4wMFwpXyAqBAAU
AAIAAADu7u7/MwkAAAAtACMFABQAAgAAAAAAAP8ABAAAACAAOwoAFAACAAAAAAAA/wCysrL/LQAi
fQhkAH0IAAAAAAAAAAAAAAAARwAAAAQADQAUAAIAAACAgID/LjAwXClfICoEABQAAgAAAO7u7v8z
CQAAAC0AIwUAFAACAAAAAAAA/wAEAAAAIAA7CgAUAAIAAAAAAAD/ALKysv8tACJ9CHgAfQgAAAAA
AAAAAAAAAABIAAAABQANABQAAgAAAAAAAP8uMDBcKV8gKgQAFAACAAAA7u7u/zMJAAAALQAjBQAU
AAIAAAAAAAD/AAQAAAAgADsIABQAAgAAAAAAAP8AsrKy/y0AIgkAFAACAAAAAAAA/wCysrL/XwAg
fQhkAH0IAAAAAAAAAAAAAAAASQAAAAQADQAUAAIAAAAAAAD/LjAwXClfICoEABQAAgAAAO7u7v8z
CQAAAC0AIwUAFAACAAAAAAAA/wAEAAAAIAA7CAAUAAIAAAAAAAD/ALKysv8tACJ9CHgAfQgAAAAA
AAAAAAAAAABKAAAABQANABQAAgAAAICAgP8uMDBcKV8gKgQAFAACAAAA7u7u/zMJAAAALQAjBQAU
AAIAAAAAAAD/AAQAAAAgADsIABQAAgAAAAAAAP8AsrKy/y0AIgoAFAACAAAAAAAA/wCysrL/XwAg
fQiMAH0IAAAAAAAAAAAAAAAASwAAAAYADQAUAAIAAAAAAAD/LjAwXClfICoEABQAAgAAAO7u7v8z
CQAAAC0AIwUAFAACAAAAAAAA/wAEAAAAIAA7CAAUAAIAAAAAAAD/ALKysv8tACIJABQAAgAAAAAA
AP8AsrKy/18AIAoAFAACAAAAAAAA/wCysrL/AAAAfQhkAH0IAAAAAAAAAAAAAAAATAAAAAQADQAU
AAIAAAD/AAD/LjAwXClfICoEABQAAgAAAO7u7v8zCQAAAC0AIwUAFAACAAAAAAAA/wAEAAAAIAA7
CgAUAAIAAAAAAAD/ALKysv8tACJ9CHgAfQgAAAAAAAAAAAAAAABNAAAABQANABQAAgAAAP8AAP8u
MDBcKV8gKgQAFAACAAAA7u7u/zMJAAAALQAjBQAUAAIAAAAAAAD/AAQAAAAgADsIABQAAgAAAAAA
AP8AsrKy/y0AIgoAFAACAAAAAAAA/wCysrL/XwAgfQh4AH0IAAAAAAAAAAAAAAAATgAAAAUADQAU
AAIAAAAAgAD/LjAwXClfICoEABQAAgAAAO7u7v8zCQAAAC0AIwUAFAACAAAAAAAA/wAEAAAAIAA7
CAAUAAIAAAAAAAD/ALKysv8tACIKABQAAgAAAAAAAP8AsrKy/18AIJMCEgAQAA0AADIwJSAtIEFj
Y2VudDGSCE0AkggAAAAAAAAAAAAAAQQe/w0AMgAwACUAIAAtACAAQQBjAGMAZQBuAHQAMQAAAAMA
AQAMAAcEZWbb5fH/BQAMAAcBAAAAAAD/JQAFAAKTAhIAEQANAAAyMCUgLSBBY2NlbnQykghNAJII
AAAAAAAAAAAAAAEEIv8NADIAMAAlACAALQAgAEEAYwBjAGUAbgB0ADIAAAADAAEADAAHBWVm8t3c
/wUADAAHAQAAAAAA/yUABQACkwISABIADQAAMjAlIC0gQWNjZW50M5IITQCSCAAAAAAAAAAAAAAB
BCb/DQAyADAAJQAgAC0AIABBAGMAYwBlAG4AdAAzAAAAAwABAAwABwZlZurx3f8FAAwABwEAAAAA
AP8lAAUAApMCEgATAA0AADIwJSAtIEFjY2VudDSSCE0AkggAAAAAAAAAAAAAAQQq/w0AMgAwACUA
IAAtACAAQQBjAGMAZQBuAHQANAAAAAMAAQAMAAcHZWbl4Oz/BQAMAAcBAAAAAAD/JQAFAAKTAhIA
FAANAAAyMCUgLSBBY2NlbnQ1kghNAJIIAAAAAAAAAAAAAAEELv8NADIAMAAlACAALQAgAEEAYwBj
AGUAbgB0ADUAAAADAAEADAAHCGVm2+7z/wUADAAHAQAAAAAA/yUABQACkwISABUADQAAMjAlIC0g
QWNjZW50NpIITQCSCAAAAAAAAAAAAAABBDL/DQAyADAAJQAgAC0AIABBAGMAYwBlAG4AdAA2AAAA
AwABAAwABwllZv3p2f8FAAwABwEAAAAAAP8lAAUAApMCEgAWAA0AADQwJSAtIEFjY2VudDGSCE0A
kggAAAAAAAAAAAAAAQQf/w0ANAAwACUAIAAtACAAQQBjAGMAZQBuAHQAMQAAAAMAAQAMAAcEzEy4
zOT/BQAMAAcBAAAAAAD/JQAFAAKTAhIAFwANAAA0MCUgLSBBY2NlbnQykghNAJIIAAAAAAAAAAAA
AAEEI/8NADQAMAAlACAALQAgAEEAYwBjAGUAbgB0ADIAAAADAAEADAAHBcxM5rm4/wUADAAHAQAA
AAAA/yUABQACkwISABgADQAANDAlIC0gQWNjZW50M5IITQCSCAAAAAAAAAAAAAABBCf/DQA0ADAA
JQAgAC0AIABBAGMAYwBlAG4AdAAzAAAAAwABAAwABwbMTNfkvP8FAAwABwEAAAAAAP8lAAUAApMC
EgAZAA0AADQwJSAtIEFjY2VudDSSCE0AkggAAAAAAAAAAAAAAQQr/w0ANAAwACUAIAAtACAAQQBj
AGMAZQBuAHQANAAAAAMAAQAMAAcHzEzMwNr/BQAMAAcBAAAAAAD/JQAFAAKTAhIAGgANAAA0MCUg
LSBBY2NlbnQ1kghNAJIIAAAAAAAAAAAAAAEEL/8NADQAMAAlACAALQAgAEEAYwBjAGUAbgB0ADUA
AAADAAEADAAHCMxMtt3o/wUADAAHAQAAAAAA/yUABQACkwISABsADQAANDAlIC0gQWNjZW50NpII
TQCSCAAAAAAAAAAAAAABBDP/DQA0ADAAJQAgAC0AIABBAGMAYwBlAG4AdAA2AAAAAwABAAwABwnM
TPzVtP8FAAwABwEAAAAAAP8lAAUAApMCEgAcAA0AADYwJSAtIEFjY2VudDGSCE0AkggAAAAAAAAA
AAAAAQQg/w0ANgAwACUAIAAtACAAQQBjAGMAZQBuAHQAMQAAAAMAAQAMAAcEMjOVs9f/BQAMAAcA
AADH7cz/JQAFAAKTAhIAHQANAAA2MCUgLSBBY2NlbnQykghNAJIIAAAAAAAAAAAAAAEEJP8NADYA
MAAlACAALQAgAEEAYwBjAGUAbgB0ADIAAAADAAEADAAHBTIz2ZeV/wUADAAHAAAAx+3M/yUABQAC
kwISAB4ADQAANjAlIC0gQWNjZW50M5IITQCSCAAAAAAAAAAAAAABBCj/DQA2ADAAJQAgAC0AIABB
AGMAYwBlAG4AdAAzAAAAAwABAAwABwYyM8LWmv8FAAwABwAAAMftzP8lAAUAApMCEgAfAA0AADYw
JSAtIEFjY2VudDSSCE0AkggAAAAAAAAAAAAAAQQs/w0ANgAwACUAIAAtACAAQQBjAGMAZQBuAHQA
NAAAAAMAAQAMAAcHMjOyocf/BQAMAAcAAADH7cz/JQAFAAKTAhIAIAANAAA2MCUgLSBBY2NlbnQ1
kghNAJIIAAAAAAAAAAAAAAEEMP8NADYAMAAlACAALQAgAEEAYwBjAGUAbgB0ADUAAAADAAEADAAH
CDIzk83d/wUADAAHAAAAx+3M/yUABQACkwISACEADQAANjAlIC0gQWNjZW50NpIITQCSCAAAAAAA
AAAAAAABBDT/DQA2ADAAJQAgAC0AIABBAGMAYwBlAG4AdAA2AAAAAwABAAwABwkyM/rAkP8FAAwA
BwAAAMftzP8lAAUAApMCDAAiAAcAAEFjY2VudDGSCEEAkggAAAAAAAAAAAAAAQQd/wcAQQBjAGMA
ZQBuAHQAMQAAAAMAAQAMAAcEAABPgb3/BQAMAAcAAADH7cz/JQAFAAKTAgwAIwAHAABBY2NlbnQy
kghBAJIIAAAAAAAAAAAAAAEEIf8HAEEAYwBjAGUAbgB0ADIAAAADAAEADAAHBQAAwFBN/wUADAAH
AAAAx+3M/yUABQACkwIMACQABwAAQWNjZW50M5IIQQCSCAAAAAAAAAAAAAABBCX/BwBBAGMAYwBl
AG4AdAAzAAAAAwABAAwABwYAAJu7Wf8FAAwABwAAAMftzP8lAAUAApMCDAAlAAcAAEFjY2VudDSS
CEEAkggAAAAAAAAAAAAAAQQp/wcAQQBjAGMAZQBuAHQANAAAAAMAAQAMAAcHAACAZKL/BQAMAAcA
AADH7cz/JQAFAAKTAgwAJgAHAABBY2NlbnQ1kghBAJIIAAAAAAAAAAAAAAEELf8HAEEAYwBjAGUA
bgB0ADUAAAADAAEADAAHCAAAS6zG/wUADAAHAAAAx+3M/yUABQACkwIMACcABwAAQWNjZW50NpII
QQCSCAAAAAAAAAAAAAABBDH/BwBBAGMAYwBlAG4AdAA2AAAAAwABAAwABwkAAPeWRv8FAAwABwAA
AMftzP8lAAUAApMCCAAoAAMAAEJhZJIIOQCSCAAAAAAAAAAAAAABARv/AwBCAGEAZAAAAAMAAQAM
AAX/AAD/x87/BQAMAAX/AACcAAb/JQAFAAKTAhAAKQALAABDYWxjdWxhdGlvbpIIgQCSCAAAAAAA
AAAAAAABAhb/CwBDAGEAbABjAHUAbABhAHQAaQBvAG4AAAAHAAEADAAF/wAA8vLy/wUADAAF/wAA
+n0A/yUABQACBgAOAAX/AAB/f3//AQAHAA4ABf8AAH9/f/8BAAgADgAF/wAAf39//wEACQAOAAX/
AAB/f3//AQCTAg8AKgAKAABDaGVjayBDZWxskgh/AJIIAAAAAAAAAAAAAAECF/8KAEMAaABlAGMA
awAgAEMAZQBsAGwAAAAHAAEADAAF/wAApaWl/wUADAAHAAAAx+3M/yUABQACBgAOAAX/AAA/Pz//
BgAHAA4ABf8AAD8/P/8GAAgADgAF/wAAPz8//wYACQAOAAX/AAA/Pz//BgCTAgQAK4AD/5IIIACS
CAAAAAAAAAAAAAABBQP/BQBDAG8AbQBtAGEAAAAAAJMCBAAsgAb/kggoAJIIAAAAAAAAAAAAAAEF
Bv8JAEMAbwBtAG0AYQAgAFsAMABdAAAAAACTAgQALYAE/5IIJgCSCAAAAAAAAAAAAAABBQT/CABD
AHUAcgByAGUAbgBjAHkAAAAAAJMCBAAugAf/kgguAJIIAAAAAAAAAAAAAAEFB/8MAEMAdQByAHIA
ZQBuAGMAeQAgAFsAMABdAAAAAACTAhUALwAQAABFeHBsYW5hdG9yeSBUZXh0kghHAJIIAAAAAAAA
AAAAAAECNf8QAEUAeABwAGwAYQBuAGEAdABvAHIAeQAgAFQAZQB4AHQAAAACAAUADAAF/wAAf39/
/yUABQACkwIJADAABAAAR29vZJIIOwCSCAAAAAAAAAAAAAABARr/BABHAG8AbwBkAAAAAwABAAwA
Bf8AAMbvzv8FAAwABf8AAABhAP8lAAUAApMCDgAxAAkAAEhlYWRpbmcgMZIIRwCSCAAAAAAAAAAA
AAABAxD/CQBIAGUAYQBkAGkAbgBnACAAMQAAAAMABQAMAAcDAAAfSX3/JQAFAAIHAA4ABwQAAE+B
vf8FAJMCDgAyAAkAAEhlYWRpbmcgMpIIRwCSCAAAAAAAAAAAAAABAxH/CQBIAGUAYQBkAGkAbgBn
ACAAMgAAAAMABQAMAAcDAAAfSX3/JQAFAAIHAA4ABwT/P6jA3v8FAJMCDgAzAAkAAEhlYWRpbmcg
M5IIRwCSCAAAAAAAAAAAAAABAxL/CQBIAGUAYQBkAGkAbgBnACAAMwAAAAMABQAMAAcDAAAfSX3/
JQAFAAIHAA4ABwQyM5Wz1/8CAJMCDgA0AAkAAEhlYWRpbmcgNJIIOQCSCAAAAAAAAAAAAAABAxP/
CQBIAGUAYQBkAGkAbgBnACAANAAAAAIABQAMAAcDAAAfSX3/JQAFAAKTAgoANQAFAABJbnB1dJII
dQCSCAAAAAAAAAAAAAABAhT/BQBJAG4AcAB1AHQAAAAHAAEADAAF/wAA/8yZ/wUADAAF/wAAPz92
/yUABQACBgAOAAX/AAB/f3//AQAHAA4ABf8AAH9/f/8BAAgADgAF/wAAf39//wEACQAOAAX/AAB/
f3//AQCTAhAANgALAABMaW5rZWQgQ2VsbJIISwCSCAAAAAAAAAAAAAABAhj/CwBMAGkAbgBrAGUA
ZAAgAEMAZQBsAGwAAAADAAUADAAF/wAA+n0A/yUABQACBwAOAAX/AAD/gAH/BgCTAgwANwAHAABO
ZXV0cmFskghBAJIIAAAAAAAAAAAAAAEBHP8HAE4AZQB1AHQAcgBhAGwAAAADAAEADAAF/wAA/+uc
/wUADAAF/wAAnGUA/yUABQACkwIEAACAAP+SCDMAkggAAAAAAAAAAAAAAQEA/wYATgBvAHIAbQBh
AGwAAAACAAUADAAF/wAAAAAA/yUABQACkwIJADgABAAATm90ZZIIYgCSCAAAAAAAAAAAAAABAgr/
BABOAG8AdABlAAAABQABAAwABf8AAP//zP8GAA4ABf8AALKysv8BAAcADgAF/wAAsrKy/wEACAAO
AAX/AACysrL/AQAJAA4ABf8AALKysv8BAJMCCwA5AAYAAE91dHB1dJIIdwCSCAAAAAAAAAAAAAAB
AhX/BgBPAHUAdABwAHUAdAAAAAcAAQAMAAX/AADy8vL/BQAMAAX/AAA/Pz//JQAFAAIGAA4ABf8A
AD8/P/8BAAcADgAF/wAAPz8//wEACAAOAAX/AAA/Pz//AQAJAA4ABf8AAD8/P/8BAJMCBAA6gAX/
kggkAJIIAAAAAAAAAAAAAAEFBf8HAFAAZQByAGMAZQBuAHQAAAAAAJMCCgA7AAUAAFRpdGxlkggx
AJIIAAAAAAAAAAAAAAEDD/8FAFQAaQB0AGwAZQAAAAIABQAMAAcDAAAfSX3/JQAFAAGTAgoAPAAF
AABUb3RhbJIITQCSCAAAAAAAAAAAAAABAxn/BQBUAG8AdABhAGwAAAAEAAUADAAHAQAAAAAA/yUA
BQACBgAOAAcEAABPgb3/AQAHAA4ABwQAAE+Bvf8GAJMCEQA9AAwAAFdhcm5pbmcgVGV4dJIIPwCS
CAAAAAAAAAAAAAABAgv/DABXAGEAcgBuAGkAbgBnACAAVABlAHgAdAAAAAIABQAMAAX/AAD/AAD/
JQAFAAKOCFgAjggAAAAAAAAAAAAAkAAAABEAEQBUAGEAYgBsAGUAUwB0AHkAbABlAE0AZQBkAGkA
dQBtADkAUABpAHYAbwB0AFMAdAB5AGwAZQBMAGkAZwBoAHQAMQA2AGABAgAAAIUAFABeRAAAAAAM
AHFlbXVhcm0tc2F0b4UAEwDmSwAAAAALAHFlbXV4ODYtc2RrhQAXAC5VAAAAAA8AcWVtdXg4Ni02
NC1zYXRvhQAWALZcAAAAAA4AcWVtdXg4Ni02NC1zZGuFABMA/mUAAAAACwBxZW11YXJtLXNka4UA
FQBGbwAAAAANAHFlbXVtaXBzLXNhdG+FABQAznYAAAAADABxZW11bWlwcy1zZGuFABQAFoAAAAAA
DABxZW11eDg2LXNhdG+FABsAnocAAAAAEwByb3V0ZXN0YXRpb25wcm8tc2RrhQAMAGKRAAAAAAQA
cG9reYUAFwCqlAAAAAAPAGVNZW5sb3ctTWluaW1hbJoIGACaCAAAAAAAAAAAAAABAAAAAAAAAAIA
AACjCBAAowgAAAAAAAAAAAAAAAAAAIwABABWAFYAwQEIAMEBAAAd6wEA/AChCSoDAABIAAAAMQAA
VGVzdCBSZXBvcnQ6IFJlc3VsdHMgb2YgVGVzdCBDYXNlcyBmb3IgYWxsIEJ1aWxkcwwAAFRlc3Qg
UHJvamVjdAEAADoJAABUZXN0IFBsYW4KAABUZXN0IFN1aXRlCQAAVGVzdCBDYXNlGwAAWW9jdG8g
MS4wIE0yIGJ1aWxkIDIwMTAxMjExIQAAWW9jdG8gdjEuMCBNMiBUZXN0IFN1aXRlIC8gc3lzdGVt
LAAAVEMtMzI5Onp5cHBlciBjb21tYW5kIGluc3RhbGxlZCBhbmQgd29ya2FibGUGAABQYXNzZWQZ
AABUQy0zMzA6enlwcGVyIGhlbHAgc2VhcmNoHAAAVEMtMzMxOnp5cHBlciBzZWFyY2ggcGFja2Fn
ZRwAAFRDLTMzMjp6eXBwZXIgcmVtb3ZlIHBhY2thZ2UHAABOb3QgUnVuHQAAVEMtMzMzOnp5cHBl
ciBpbnN0YWxsIHBhY2thZ2UoAABUQy0zMzQ6enlwcGVyIGluc3RhbGwgZGVwZW5kZW5jeSBwYWNr
YWdlGwAAVEMtMzM1OmFkanVzdCBkYXRlIGFuZCB0aW1lIAAAVEMtMzM2OmJvb3QgYW5kIGluc3Rh
bGwgZnJvbSBVU0IbAABUQy0zMzc6Ym9vdCBmcm9tIHJ1bmxldmVsIDMZAABUQy0zNDM6bGl2ZSBi
b290IGZyb20gVVNCFAAAVEMtMzQ0OnJlYm9vdCBzeXN0ZW0WAABUQy0zNDY6c2h1dGRvd24gc3lz
dGVtHQAAVEMtMzQ4OnN5c3RlbSBkbWVzZyBsb2cgY2hlY2sQAABUQy0zNDk6dXNiIG1vdW50FQAA
VEMtMzUwOnVzYiByZWFkIGZpbGVzEQAAVEMtMzUxOnVzYiB1bW91bnQWAABUQy0zNTI6dXNiIHdy
aXRlIGZpbGVzGAAAVEMtMzUzOnJwbSBxdWVyeSBwYWNrYWdlGgAAVEMtMzU0OnJwbSBpbnN0YWxs
IHBhY2thZ2UZAABUQy0zNTU6cnBtIHJlbW92ZSBwYWNrYWdlJQAAVEMtMzU2OnJwbSBpbnN0YWxs
IGRlcGVuZGVuY3kgcGFja2FnZSwAAFlvY3RvIHYxLjAgTTIgVGVzdCBTdWl0ZSAvIHBlcmZvcm1h
bmNlL3Bvd2VyGwAAVEMtMzIyOmJvb3QgdGltZSBjb2xsZWN0aW9uFQAAVEMtMzIzOmRpc2sgZm9v
dHByaW50FwAAVEMtMzI0Om1lbW9yeSBmb290cHJpbnQOAABUQy0zMjY6c3RhbmRieUQAAFRDLTMy
NzpUZXN0IGlmIExBTiBkZXZpY2Ugd29ya3Mgd2VsbCBhZnRlciByZXN1bWUgZnJvbSBzdXNwZW5k
IHN0YXRlSAAAVEMtMzI4OlRlc3QgaWYgdXNiIGhpZCBkZXZpY2Ugd29ya3Mgd2VsbCBhZnRlciBy
ZXN1bWUgZnJvbSBzdXNwZW5kIHN0YXRlLAAAR2VuZXJhdGVkIGJ5IFRlc3RMaW5rIG9uIDE1LzEy
LzIwMTAgMjI6MjE6MTcfAABZb2N0byB2MS4wIE0yIFRlc3QgU3VpdGUgLyBwb2t5IQAAVEMtMzU5
Omtlcm5lbCBpbnRlcmFjdGl2ZSB0YXJnZXRzBgAARmFpbGVkHAAAVEMtMzYwOktWTSBlbmFibGVk
IHdpdGggcWVtdSwAAEdlbmVyYXRlZCBieSBUZXN0TGluayBvbiAxNS8xMi8yMDEwIDIyOjQ4OjQ5
HwAAVEMtMzQxOmcrKyBjb21waWxlIGluIHNkayBpbWFnZR8AAFRDLTM0MjpnY2MgY29tcGlsZSBp
biBzZGsgaW1hZ2UkAABUQy0zNDU6cnVuIGNvbW1hbmQgbWFrZSBpbiBzZGsgaW1hZ2UTAABUQy0z
MjU6cG93ZXJ0b3AgbG9nJwAAWW9jdG8gdjEuMCBNMiBUZXN0IFN1aXRlIC8gY29ubmVjdGl2aXR5
JgAAVEMtMzA1Om9ubHkgb25lIGNvbm5tYW5kIGluIGJhY2tncm91bmQgAABUQy0zMDY6Y29ubm1h
biBsYXVuY2ggYWZ0ZXIgYm9vdCIAAFRDLTMwNzpldGhlcm5ldCBlbmFibGVkIGluIGNvbm5tYW4X
AABUQy0zMDk6ZmlsZSBjb3B5IGJ5IHNjcBsAAFRDLTMxMDpyZW1vdGUgYWNjZXNzIGJ5IHNzaCEA
AFlvY3RvIHYxLjAgTTIgVGVzdCBTdWl0ZSAvIGtlcm5lbBwAAFRDLTI4MTpMVFAgc3Vic2V0IHRl
c3Qgc3VpdGUeAABUQy0yODI6UE9TSVggc3Vic2V0IHRlc3Qgc3VpdGUsAABHZW5lcmF0ZWQgYnkg
VGVzdExpbmsgb24gMTUvMTIvMjAxMCAyMjozNDo0OSwAAFRDLTMxOTpjb25ubWFuIG9mZmxpbmUg
bW9kZSBpbiBjb25ubWFuLWdub21lIwAAWW9jdG8gdjEuMCBNMiBUZXN0IFN1aXRlIC8gZ3JhcGhp
Y3MxAABUQy0yOTA6WCBzZXJ2ZXIgY2FuIHN0YXJ0IHVwIHdpdGggcnVubGV2ZWwgNSBib290LAAA
R2VuZXJhdGVkIGJ5IFRlc3RMaW5rIG9uIDE1LzEyLzIwMTAgMjI6Mjk6NDgkAABZb2N0byB2MS4w
IE0yIFRlc3QgU3VpdGUgLyB0b29sY2hhaW4xAABUQy0zMjA6ZysrIGZyb20gc2RrIHRvb2xjaGFp
biBjYW4gYnVpbGQgYyBwcm9ncmFtMQAAVEMtMzIxOmdjYyBmcm9tIHNkayB0b29sY2hhaW4gY2Fu
IGJ1aWxkIGMgcHJvZ3JhbSwAAEdlbmVyYXRlZCBieSBUZXN0TGluayBvbiAxNS8xMi8yMDEwIDIy
OjI1OjMxLAAAR2VuZXJhdGVkIGJ5IFRlc3RMaW5rIG9uIDE1LzEyLzIwMTAgMjI6MjQ6NTQsAABH
ZW5lcmF0ZWQgYnkgVGVzdExpbmsgb24gMTUvMTIvMjAxMCAyMjoyNDoxNywAAEdlbmVyYXRlZCBi
eSBUZXN0TGluayBvbiAxNS8xMi8yMDEwIDIyOjMzOjA2LAAAR2VuZXJhdGVkIGJ5IFRlc3RMaW5r
IG9uIDE1LzEyLzIwMTAgMjI6MzI6MjAsAABHZW5lcmF0ZWQgYnkgVGVzdExpbmsgb24gMTUvMTIv
MjAxMCAyMjozMTozNSwAAEdlbmVyYXRlZCBieSBUZXN0TGluayBvbiAxNS8xMi8yMDEwIDIyOjIz
OjI5/wBKAAgAHToAAAwAAADLOgAAugAAALI7AAChAQAAkDwAAH8CAACAPQAAbwMAAMQ+AACzBAAA
wD8AAK8FAADWQAAAxQYAADlCAAAoCAAAYwgWAGMIAAAAAAAAAAAAABYAAAAAAAAAAgCWCBAAlggA
AAAAAAAAAAAAQuUBAJsIEACbCAAAAAAAAAAAAAABAAAAjAgQAIwIAAAAAAAAAAAAAAAAAAAKAAAA
CQgQAAAGEACqH80HwQABAAYEAAALAhQAAAAAAAAAAAAYAAAAdEUAAEhLAAANAAIAAQAMAAIAZAAP
AAIAAQARAAIAAAAQAAgA/Knx0k1iUD9fAAIAAQAqAAIAAAArAAIAAACCAAIAAQCAAAgAAAAAAAAA
AAAlAgQAAABoAYEAAgDBBBQAAAAVAAAAgwACAAAAhAACAAAAJgAIAAAAAAAAAOg/JwAIAAAAAAAA
AOg/KAAIAAAAAAAAAPA/KQAIAAAAAAAAAPA/oQAiAAAAaAEBAAEAAQAEAELlAQAAAAAAAADgPwAA
AAAAAOA/b2acCCYAnAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAAAAABVAAIACAB9
AAwAAAAAAOAgPwACAAAAfQAMAAEAAQAAJD8AAgAAAH0ADAACAAIA4BY/AAIAAAB9AAwAAwAAAQAJ
PwAAAAAAAAIOAAAAAAAYAAAAAAADAAAACAIQAAAAAAADAHcBAAAAAAABDyAIAhAAAQAAAAMAaAEA
AAAAAAEPAAgCEAACAAAAAwBoAQAAAAAAAQ8ACAIQAAMAAAADAHcBAAAAAAABDyAIAhAABAAAAAMA
aAEAAAAAAAEPAAgCEAAFAAAAAwBoAQAAAAAAAQ8ACAIQAAYAAAADAGgBAAAAAAABDwAIAhAABwAA
AAMAaAEAAAAAAAEPAAgCEAAIAAAAAwBoAQAAAAAAAQ8ACAIQAAkAAAADAGgBAAAAAAABDwAIAhAA
CgAAAAMAaAEAAAAAAAEPAAgCEAALAAAAAwBoAQAAAAAAAQ8ACAIQAAwAAAADAGgBAAAAAAABDwAI
AhAADQAAAAMAaAEAAAAAAAEPAAgCEAAOAAAAAwBoAQAAAAAAAQ8ACAIQAA8AAAADAGgBAAAAAAAB
DwAIAhAAEAAAAAMAaAEAAAAAAAEPAAgCEAARAAAAAwBoAQAAAAAAAQ8ACAIQABIAAAADAGgBAAAA
AAABDwAIAhAAEwAAAAMAaAEAAAAAAAEPAAgCEAAUAAAAAwBoAQAAAAAAAQ8ACAIQABUAAAADAFgC
AAAAAAABDwAIAhAAFgAAAAMAWAIAAAAAAAEPAAgCEAAXAAAAAwBoAQAAAAAAAQ8A/QAKAAAAAAA+
AAAAAAD9AAoAAQAAAEAAAQAAAP0ACgABAAEAQAACAAAA/QAKAAIAAABAAAMAAAD9AAoAAgABAEAA
AgAAAP0ACgADAAAAQQAEAAAA/QAKAAMAAQBCAAUAAAD9AAoAAwACAEMABgAAAP0ACgAEAAAARAAH
AAAA/QAKAAQAAQBFAAgAAAD9AAoABAACAEYACQAAAP0ACgAFAAAARAAHAAAA/QAKAAUAAQBFAAoA
AAD9AAoABQACAEYACQAAAP0ACgAGAAAARAAHAAAA/QAKAAYAAQBFAAsAAAD9AAoABgACAEYACQAA
AP0ACgAHAAAARAAHAAAA/QAKAAcAAQBFAAwAAAD9AAoABwACAEwAKQAAAP0ACgAIAAAARAAHAAAA
/QAKAAgAAQBFAA4AAAD9AAoACAACAEwAKQAAAP0ACgAJAAAARAAHAAAA/QAKAAkAAQBFAA8AAAD9
AAoACQACAEwAKQAAAP0ACgAKAAAARAAHAAAA/QAKAAoAAQBFABUAAAD9AAoACgACAEYACQAAAP0A
CgALAAAARAAHAAAA/QAKAAsAAQBFABYAAAD9AAoACwACAEYACQAAAP0ACgAMAAAARAAHAAAA/QAK
AAwAAQBFABsAAAD9AAoADAACAEYACQAAAP0ACgANAAAARAAHAAAA/QAKAA0AAQBFABwAAAD9AAoA
DQACAEYACQAAAP0ACgAOAAAARAAHAAAA/QAKAA4AAQBFAB0AAAD9AAoADgACAEYACQAAAP0ACgAP
AAAARAAHAAAA/QAKAA8AAQBFAB4AAAD9AAoADwACAEYACQAAAP0ACgAQAAAARAAwAAAA/QAKABAA
AQBFADEAAAD9AAoAEAACAEYACQAAAP0ACgARAAAARAAwAAAA/QAKABEAAQBFADIAAAD9AAoAEQAC
AEYACQAAAP0ACgASAAAARAAwAAAA/QAKABIAAQBFADMAAAD9AAoAEgACAEYACQAAAP0ACgATAAAA
RAAwAAAA/QAKABMAAQBFADQAAAD9AAoAEwACAEYACQAAAP0ACgAUAAAARAAwAAAA/QAKABQAAQBF
ADUAAAD9AAoAFAACAEYACQAAAP0ACgAVAAAARAAwAAAA/QAKABUAAQBFADoAAAD9AAoAFQACAEYA
CQAAAP0ACgAWAAAASAA7AAAA/QAKABYAAQBJADwAAAD9AAoAFgACAE4ACQAAAP0ACgAXAAAASwBH
AAAA1wA0AHwFAADMAQ4AHAAcACoAKgAqACoAKgAqACoAKgAqACoAKgAqACoAKgAqACoAKgAqACoA
KgA+AhIAtAYAAAAAQAAAAAAAAAAAAAAAiwgQAIsIAAAAAAAAAAAAAAAAAgAdAA8AAwcAAQAAAAEA
BwAHAAEB7wAGABcANwAAAGcIFwBnCAAAAAAAAAAAAAACAAH/////A0QAAAoAAAAJCBAAAAYQAKof
zQfBAAEABgQAAAsCFAAAAAAAAAAAAB8AAAD8TAAAglQAAA0AAgABAAwAAgBkAA8AAgABABEAAgAA
ABAACAD8qfHSTWJQP18AAgABACoAAgAAACsAAgAAAIIAAgABAIAACAAAAAAAAAAAACUCBAAAAGgB
gQACAMEEFAAAABUAAACDAAIAAACEAAIAAAAmAAgAAAAAAAAA6D8nAAgAAAAAAAAA6D8oAAgAAAAA
AAAA8D8pAAgAAAAAAAAA8D+hACIAAABoAQEAAQABAAQAAgAB/wAAAAAAAOA/AAAAAAAA4D8AAJwI
JgCcCAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADAAAAAAAAAAAAFUAAgAIAH0ADAAAAAAA4CA/
AAIAAAB9AAwAAQABAAAkPwACAAAAfQAMAAIAAgDgFj8AAgAAAH0ADAADAAABAAk/AAAAAAAAAg4A
AAAAAB8AAAAAAAMAAAAIAhAAAAAAAAMAdwEAAAAAAAEPIAgCEAABAAAAAwBoAQAAAAAAAQ8ACAIQ
AAIAAAADAGgBAAAAAAABDwAIAhAAAwAAAAMAdwEAAAAAAAEPIAgCEAAEAAAAAwBoAQAAAAAAAQ8A
CAIQAAUAAAADAGgBAAAAAAABDwAIAhAABgAAAAMAaAEAAAAAAAEPAAgCEAAHAAAAAwBoAQAAAAAA
AQ8ACAIQAAgAAAADAGgBAAAAAAABDwAIAhAACQAAAAMAaAEAAAAAAAEPAAgCEAAKAAAAAwBoAQAA
AAAAAQ8ACAIQAAsAAAADAGgBAAAAAAABDwAIAhAADAAAAAMAaAEAAAAAAAEPAAgCEAANAAAAAwBo
AQAAAAAAAQ8ACAIQAA4AAAADAGgBAAAAAAABDwAIAhAADwAAAAMAaAEAAAAAAAEPAAgCEAAQAAAA
AwBoAQAAAAAAAQ8ACAIQABEAAAADAGgBAAAAAAABDwAIAhAAEgAAAAMAaAEAAAAAAAEPAAgCEAAT
AAAAAwBYAgAAAAAAAQ8ACAIQABQAAAADAFgCAAAAAAABDwAIAhAAFQAAAAMAaAEAAAAAAAEPAAgC
EAAWAAAAAwBoAQAAAAAAAQ8ACAIQABcAAAADAGgBAAAAAAABDwAIAhAAGAAAAAMAaAEAAAAAAAEP
AAgCEAAZAAAAAwBoAQAAAAAAAQ8ACAIQABoAAAADAFgCAAAAAAABDwAIAhAAGwAAAAMAWAIAAAAA
AAEPAAgCEAAcAAAAAwBoAQAAAAAAAQ8ACAIQAB0AAAADAGgBAAAAAAABDwAIAhAAHgAAAAMAaAEA
AAAAAAEPAP0ACgAAAAAAPgAAAAAA/QAKAAEAAABAAAEAAAD9AAoAAQABAEAAAgAAAP0ACgACAAAA
QAADAAAA/QAKAAIAAQBAAAIAAAD9AAoAAwAAAEEABAAAAP0ACgADAAEAQgAFAAAA/QAKAAMAAgBD
AAYAAAD9AAoABAAAAEQABwAAAP0ACgAEAAEARQAIAAAA/QAKAAQAAgBGAAkAAAD9AAoABQAAAEQA
BwAAAP0ACgAFAAEARQAKAAAA/QAKAAUAAgBGAAkAAAD9AAoABgAAAEQABwAAAP0ACgAGAAEARQAL
AAAA/QAKAAYAAgBGAAkAAAD9AAoABwAAAEQABwAAAP0ACgAHAAEARQAMAAAA/QAKAAcAAgBHAA0A
AAD9AAoACAAAAEQABwAAAP0ACgAIAAEARQAOAAAA/QAKAAgAAgBHAA0AAAD9AAoACQAAAEQABwAA
AP0ACgAJAAEARQAPAAAA/QAKAAkAAgBHAA0AAAD9AAoACgAAAEQABwAAAP0ACgAKAAEARQAsAAAA
/QAKAAoAAgBGAAkAAAD9AAoACwAAAEQABwAAAP0ACgALAAEARQAtAAAA/QAKAAsAAgBGAAkAAAD9
AAoADAAAAEQABwAAAP0ACgAMAAEARQAuAAAA/QAKAAwAAgBGAAkAAAD9AAoADQAAAEQABwAAAP0A
CgANAAEARQAVAAAA/QAKAA0AAgBGAAkAAAD9AAoADgAAAEQABwAAAP0ACgAOAAEARQAWAAAA/QAK
AA4AAgBGAAkAAAD9AAoADwAAAEQABwAAAP0ACgAPAAEARQAbAAAA/QAKAA8AAgBGAAkAAAD9AAoA
EAAAAEQABwAAAP0ACgAQAAEARQAcAAAA/QAKABAAAgBHAA0AAAD9AAoAEQAAAEQABwAAAP0ACgAR
AAEARQAdAAAA/QAKABEAAgBHAA0AAAD9AAoAEgAAAEQABwAAAP0ACgASAAEARQAeAAAA/QAKABIA
AgBHAA0AAAD9AAoAEwAAAEQAPgAAAP0ACgATAAEARQA/AAAA/QAKABMAAgBHAA0AAAD9AAoAFAAA
AEQAPgAAAP0ACgAUAAEARQBAAAAA/QAKABQAAgBHAA0AAAD9AAoAFQAAAEQAMAAAAP0ACgAVAAEA
RQAxAAAA/QAKABUAAgBGAAkAAAD9AAoAFgAAAEQAMAAAAP0ACgAWAAEARQAyAAAA/QAKABYAAgBG
AAkAAAD9AAoAFwAAAEQAMAAAAP0ACgAXAAEARQAzAAAA/QAKABcAAgBGAAkAAAD9AAoAGAAAAEQA
MAAAAP0ACgAYAAEARQA0AAAA/QAKABgAAgBGAAkAAAD9AAoAGQAAAEQAMAAAAP0ACgAZAAEARQA1
AAAA/QAKABkAAgBGAAkAAAD9AAoAGgAAAEQAMAAAAP0ACgAaAAEARQA6AAAA/QAKABoAAgBGAAkA
AAD9AAoAGwAAAEQAOwAAAP0ACgAbAAEARQA8AAAA/QAKABsAAgBGAAkAAAD9AAoAHAAAAEQANgAA
AP0ACgAcAAEARQA3AAAA/QAKABwAAgBHAA0AAAD9AAoAHQAAAEgANgAAAP0ACgAdAAEASQA4AAAA
/QAKAB0AAgBKAA0AAAD9AAoAHgAAAEsARgAAANcAQgAuBwAAWAIOABwAHAAqACoAKgAqACoAKgAq
ACoAKgAqACoAKgAqACoAKgAqACoAKgAqACoAKgAqACoAKgAqACoAKgA+AhIAtAAAAAAAQAAAAAAA
AAAAAAAAiwgQAIsIAAAAAAAAAAAAAAAAAgAdAA8AAwAAAAAAAAEAAAAAAAAA7wAGABcANwAAAGcI
FwBnCAAAAAAAAAAAAAACAAH/////A0QAAAoAAAAJCBAAAAYQAKofzQfBAAEABgQAAAsCFAAAAAAA
AAAAABgAAABEVgAAGFwAAA0AAgABAAwAAgBkAA8AAgABABEAAgAAABAACAD8qfHSTWJQP18AAgAB
ACoAAgAAACsAAgAAAIIAAgABAIAACAAAAAAAAAAAACUCBAAAAGgBgQACAMEEFAAAABUAAACDAAIA
AACEAAIAAAAmAAgAAAAAAAAA6D8nAAgAAAAAAAAA6D8oAAgAAAAAAAAA8D8pAAgAAAAAAAAA8D+h
ACIAAABoAQEAAQABAAQAAgAB/wAAAAAAAOA/AAAAAAAA4D8AAJwIJgCcCAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAADAAAAAAAAAAAAFUAAgAIAH0ADAAAAAAA4CA/AAIAAAB9AAwAAQABAAAkPwAC
AAAAfQAMAAIAAgDgFj8AAgAAAH0ADAADAAABAAk/AAAAAAAAAg4AAAAAABgAAAAAAAMAAAAIAhAA
AAAAAAMAdwEAAAAAAAEPIAgCEAABAAAAAwBoAQAAAAAAAQ8ACAIQAAIAAAADAGgBAAAAAAABDwAI
AhAAAwAAAAMAdwEAAAAAAAEPIAgCEAAEAAAAAwBoAQAAAAAAAQ8ACAIQAAUAAAADAGgBAAAAAAAB
DwAIAhAABgAAAAMAaAEAAAAAAAEPAAgCEAAHAAAAAwBoAQAAAAAAAQ8ACAIQAAgAAAADAGgBAAAA
AAABDwAIAhAACQAAAAMAaAEAAAAAAAEPAAgCEAAKAAAAAwBoAQAAAAAAAQ8ACAIQAAsAAAADAGgB
AAAAAAABDwAIAhAADAAAAAMAaAEAAAAAAAEPAAgCEAANAAAAAwBoAQAAAAAAAQ8ACAIQAA4AAAAD
AGgBAAAAAAABDwAIAhAADwAAAAMAaAEAAAAAAAEPAAgCEAAQAAAAAwBoAQAAAAAAAQ8ACAIQABEA
AAADAGgBAAAAAAABDwAIAhAAEgAAAAMAaAEAAAAAAAEPAAgCEAATAAAAAwBoAQAAAAAAAQ8ACAIQ
ABQAAAADAGgBAAAAAAABDwAIAhAAFQAAAAMAWAIAAAAAAAEPAAgCEAAWAAAAAwBYAgAAAAAAAQ8A
CAIQABcAAAADAGgBAAAAAAABDwD9AAoAAAAAAD4AAAAAAP0ACgABAAAAQAABAAAA/QAKAAEAAQBA
AAIAAAD9AAoAAgAAAEAAAwAAAP0ACgACAAEAQAACAAAA/QAKAAMAAABBAAQAAAD9AAoAAwABAEIA
BQAAAP0ACgADAAIAQwAGAAAA/QAKAAQAAABEAAcAAAD9AAoABAABAEUACAAAAP0ACgAEAAIARgAJ
AAAA/QAKAAUAAABEAAcAAAD9AAoABQABAEUACgAAAP0ACgAFAAIARgAJAAAA/QAKAAYAAABEAAcA
AAD9AAoABgABAEUACwAAAP0ACgAGAAIARgAJAAAA/QAKAAcAAABEAAcAAAD9AAoABwABAEUADAAA
AP0ACgAHAAIARwANAAAA/QAKAAgAAABEAAcAAAD9AAoACAABAEUADgAAAP0ACgAIAAIARwANAAAA
/QAKAAkAAABEAAcAAAD9AAoACQABAEUADwAAAP0ACgAJAAIARwANAAAA/QAKAAoAAABEAAcAAAD9
AAoACgABAEUAFQAAAP0ACgAKAAIARgAJAAAA/QAKAAsAAABEAAcAAAD9AAoACwABAEUAFgAAAP0A
CgALAAIARgAJAAAA/QAKAAwAAABEAAcAAAD9AAoADAABAEUAGwAAAP0ACgAMAAIARgAJAAAA/QAK
AA0AAABEAAcAAAD9AAoADQABAEUAHAAAAP0ACgANAAIARwANAAAA/QAKAA4AAABEAAcAAAD9AAoA
DgABAEUAHQAAAP0ACgAOAAIARwANAAAA/QAKAA8AAABEAAcAAAD9AAoADwABAEUAHgAAAP0ACgAP
AAIARwANAAAA/QAKABAAAABEADAAAAD9AAoAEAABAEUAMQAAAP0ACgAQAAIARgAJAAAA/QAKABEA
AABEADAAAAD9AAoAEQABAEUAMgAAAP0ACgARAAIARgAJAAAA/QAKABIAAABEADAAAAD9AAoAEgAB
AEUAMwAAAP0ACgASAAIARgAJAAAA/QAKABMAAABEADAAAAD9AAoAEwABAEUANAAAAP0ACgATAAIA
RgAJAAAA/QAKABQAAABEADAAAAD9AAoAFAABAEUANQAAAP0ACgAUAAIARgAJAAAA/QAKABUAAABE
ADAAAAD9AAoAFQABAEUAOgAAAP0ACgAVAAIARwANAAAA/QAKABYAAABIADsAAAD9AAoAFgABAEkA
PAAAAP0ACgAWAAIATgAJAAAA/QAKABcAAABLAEUAAADXADQAfAUAAMwBDgAcABwAKgAqACoAKgAq
ACoAKgAqACoAKgAqACoAKgAqACoAKgAqACoAKgAqAD4CEgC0AAAAAABAAAAAAAAAAAAAAACLCBAA
iwgAAAAAAAAAAAAAAAACAB0ADwADAAAAAAAAAQAAAAAAAADvAAYAFwA3AAAAZwgXAGcIAAAAAAAA
AAAAAAIAAf////8DRAAACgAAAAkIEAAABhAAqh/NB8EAAQAGBAAACwIUAAAAAAAAAAAAHwAAAMxd
AABSZQAADQACAAEADAACAGQADwACAAEAEQACAAAAEAAIAPyp8dJNYlA/XwACAAEAKgACAAAAKwAC
AAAAggACAAEAgAAIAAAAAAAAAAAAJQIEAAAAaAGBAAIAwQQUAAAAFQAAAIMAAgAAAIQAAgAAACYA
CAAAAAAAAADoPycACAAAAAAAAADoPygACAAAAAAAAADwPykACAAAAAAAAADwP6EAIgAAAGgBAQAB
AAEABAACAAH/AAAAAAAA4D8AAAAAAADgPwAAnAgmAJwIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAMAAAAAAAAAAAAVQACAAgAfQAMAAAAAADgID8AAgAAAH0ADAABAAEAACQ/AAIAAAB9AAwAAgAC
AOAWPwACAAAAfQAMAAMAAAEACT8AAAAAAAACDgAAAAAAHwAAAAAAAwAAAAgCEAAAAAAAAwB3AQAA
AAAAAQ8gCAIQAAEAAAADAGgBAAAAAAABDwAIAhAAAgAAAAMAaAEAAAAAAAEPAAgCEAADAAAAAwB3
AQAAAAAAAQ8gCAIQAAQAAAADAGgBAAAAAAABDwAIAhAABQAAAAMAaAEAAAAAAAEPAAgCEAAGAAAA
AwBoAQAAAAAAAQ8ACAIQAAcAAAADAGgBAAAAAAABDwAIAhAACAAAAAMAaAEAAAAAAAEPAAgCEAAJ
AAAAAwBoAQAAAAAAAQ8ACAIQAAoAAAADAGgBAAAAAAABDwAIAhAACwAAAAMAaAEAAAAAAAEPAAgC
EAAMAAAAAwBoAQAAAAAAAQ8ACAIQAA0AAAADAGgBAAAAAAABDwAIAhAADgAAAAMAaAEAAAAAAAEP
AAgCEAAPAAAAAwBoAQAAAAAAAQ8ACAIQABAAAAADAGgBAAAAAAABDwAIAhAAEQAAAAMAaAEAAAAA
AAEPAAgCEAASAAAAAwBoAQAAAAAAAQ8ACAIQABMAAAADAFgCAAAAAAABDwAIAhAAFAAAAAMAWAIA
AAAAAAEPAAgCEAAVAAAAAwBoAQAAAAAAAQ8ACAIQABYAAAADAGgBAAAAAAABDwAIAhAAFwAAAAMA
aAEAAAAAAAEPAAgCEAAYAAAAAwBoAQAAAAAAAQ8ACAIQABkAAAADAGgBAAAAAAABDwAIAhAAGgAA
AAMAWAIAAAAAAAEPAAgCEAAbAAAAAwBYAgAAAAAAAQ8ACAIQABwAAAADAGgBAAAAAAABDwAIAhAA
HQAAAAMAaAEAAAAAAAEPAAgCEAAeAAAAAwBoAQAAAAAAAQ8A/QAKAAAAAAA+AAAAAAD9AAoAAQAA
AEAAAQAAAP0ACgABAAEAQAACAAAA/QAKAAIAAABAAAMAAAD9AAoAAgABAEAAAgAAAP0ACgADAAAA
QQAEAAAA/QAKAAMAAQBCAAUAAAD9AAoAAwACAEMABgAAAP0ACgAEAAAARAAHAAAA/QAKAAQAAQBF
AAgAAAD9AAoABAACAEYACQAAAP0ACgAFAAAARAAHAAAA/QAKAAUAAQBFAAoAAAD9AAoABQACAEYA
CQAAAP0ACgAGAAAARAAHAAAA/QAKAAYAAQBFAAsAAAD9AAoABgACAEYACQAAAP0ACgAHAAAARAAH
AAAA/QAKAAcAAQBFAAwAAAD9AAoABwACAEcADQAAAP0ACgAIAAAARAAHAAAA/QAKAAgAAQBFAA4A
AAD9AAoACAACAEcADQAAAP0ACgAJAAAARAAHAAAA/QAKAAkAAQBFAA8AAAD9AAoACQACAEcADQAA
AP0ACgAKAAAARAAHAAAA/QAKAAoAAQBFACwAAAD9AAoACgACAEYACQAAAP0ACgALAAAARAAHAAAA
/QAKAAsAAQBFAC0AAAD9AAoACwACAEYACQAAAP0ACgAMAAAARAAHAAAA/QAKAAwAAQBFAC4AAAD9
AAoADAACAEYACQAAAP0ACgANAAAARAAHAAAA/QAKAA0AAQBFABUAAAD9AAoADQACAEYACQAAAP0A
CgAOAAAARAAHAAAA/QAKAA4AAQBFABYAAAD9AAoADgACAEYACQAAAP0ACgAPAAAARAAHAAAA/QAK
AA8AAQBFABsAAAD9AAoADwACAEYACQAAAP0ACgAQAAAARAAHAAAA/QAKABAAAQBFABwAAAD9AAoA
EAACAEcADQAAAP0ACgARAAAARAAHAAAA/QAKABEAAQBFAB0AAAD9AAoAEQACAEcADQAAAP0ACgAS
AAAARAAHAAAA/QAKABIAAQBFAB4AAAD9AAoAEgACAEcADQAAAP0ACgATAAAARAA+AAAA/QAKABMA
AQBFAD8AAAD9AAoAEwACAEcADQAAAP0ACgAUAAAARAA+AAAA/QAKABQAAQBFAEAAAAD9AAoAFAAC
AEcADQAAAP0ACgAVAAAARAAwAAAA/QAKABUAAQBFADEAAAD9AAoAFQACAEYACQAAAP0ACgAWAAAA
RAAwAAAA/QAKABYAAQBFADIAAAD9AAoAFgACAEYACQAAAP0ACgAXAAAARAAwAAAA/QAKABcAAQBF
ADMAAAD9AAoAFwACAEYACQAAAP0ACgAYAAAARAAwAAAA/QAKABgAAQBFADQAAAD9AAoAGAACAEYA
CQAAAP0ACgAZAAAARAAwAAAA/QAKABkAAQBFADUAAAD9AAoAGQACAEYACQAAAP0ACgAaAAAARAAw
AAAA/QAKABoAAQBFADoAAAD9AAoAGgACAEYACQAAAP0ACgAbAAAARAA7AAAA/QAKABsAAQBFADwA
AAD9AAoAGwACAEYACQAAAP0ACgAcAAAARAA2AAAA/QAKABwAAQBFADcAAAD9AAoAHAACAEcADQAA
AP0ACgAdAAAASAA2AAAA/QAKAB0AAQBJADgAAAD9AAoAHQACAEoADQAAAP0ACgAeAAAASwBEAAAA
1wBCAC4HAABYAg4AHAAcACoAKgAqACoAKgAqACoAKgAqACoAKgAqACoAKgAqACoAKgAqACoAKgAq
ACoAKgAqACoAKgAqAD4CEgC0AAAAAABAAAAAAAAAAAAAAACLCBAAiwgAAAAAAAAAAAAAAAACAB0A
DwADAAAAAAAAAQAAAAAAAADvAAYAFwA3AAAAZwgXAGcIAAAAAAAAAAAAAAIAAf////8DRAAACgAA
AAkIEAAABhAAqh/NB8EAAQAGBAAACwIUAAAAAAAAAAAAHwAAABRnAACabgAADQACAAEADAACAGQA
DwACAAEAEQACAAAAEAAIAPyp8dJNYlA/XwACAAEAKgACAAAAKwACAAAAggACAAEAgAAIAAAAAAAA
AAAAJQIEAAAAaAGBAAIAwQQUAAAAFQAAAIMAAgAAAIQAAgAAACYACAAAAAAAAADoPycACAAAAAAA
AADoPygACAAAAAAAAADwPykACAAAAAAAAADwP6EAIgAAAGgBAQABAAEABAACAAH/AAAAAAAA4D8A
AAAAAADgPwAAnAgmAJwIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAAAVQACAAgA
fQAMAAAAAADgID8AAgAAAH0ADAABAAEAACQ/AAIAAAB9AAwAAgACAOAWPwACAAAAfQAMAAMAAAEA
CT8AAAAAAAACDgAAAAAAHwAAAAAAAwAAAAgCEAAAAAAAAwB3AQAAAAAAAQ8gCAIQAAEAAAADAGgB
AAAAAAABDwAIAhAAAgAAAAMAaAEAAAAAAAEPAAgCEAADAAAAAwB3AQAAAAAAAQ8gCAIQAAQAAAAD
AGgBAAAAAAABDwAIAhAABQAAAAMAaAEAAAAAAAEPAAgCEAAGAAAAAwBoAQAAAAAAAQ8ACAIQAAcA
AAADAGgBAAAAAAABDwAIAhAACAAAAAMAaAEAAAAAAAEPAAgCEAAJAAAAAwBoAQAAAAAAAQ8ACAIQ
AAoAAAADAGgBAAAAAAABDwAIAhAACwAAAAMAaAEAAAAAAAEPAAgCEAAMAAAAAwBoAQAAAAAAAQ8A
CAIQAA0AAAADAGgBAAAAAAABDwAIAhAADgAAAAMAaAEAAAAAAAEPAAgCEAAPAAAAAwBoAQAAAAAA
AQ8ACAIQABAAAAADAGgBAAAAAAABDwAIAhAAEQAAAAMAaAEAAAAAAAEPAAgCEAASAAAAAwBoAQAA
AAAAAQ8ACAIQABMAAAADAFgCAAAAAAABDwAIAhAAFAAAAAMAWAIAAAAAAAEPAAgCEAAVAAAAAwBo
AQAAAAAAAQ8ACAIQABYAAAADAGgBAAAAAAABDwAIAhAAFwAAAAMAaAEAAAAAAAEPAAgCEAAYAAAA
AwBoAQAAAAAAAQ8ACAIQABkAAAADAGgBAAAAAAABDwAIAhAAGgAAAAMAWAIAAAAAAAEPAAgCEAAb
AAAAAwBYAgAAAAAAAQ8ACAIQABwAAAADAGgBAAAAAAABDwAIAhAAHQAAAAMAaAEAAAAAAAEPAAgC
EAAeAAAAAwBoAQAAAAAAAQ8A/QAKAAAAAAA+AAAAAAD9AAoAAQAAAEAAAQAAAP0ACgABAAEAQAAC
AAAA/QAKAAIAAABAAAMAAAD9AAoAAgABAEAAAgAAAP0ACgADAAAAQQAEAAAA/QAKAAMAAQBCAAUA
AAD9AAoAAwACAEMABgAAAP0ACgAEAAAARAAHAAAA/QAKAAQAAQBFAAgAAAD9AAoABAACAEYACQAA
AP0ACgAFAAAARAAHAAAA/QAKAAUAAQBFAAoAAAD9AAoABQACAEYACQAAAP0ACgAGAAAARAAHAAAA
/QAKAAYAAQBFAAsAAAD9AAoABgACAEYACQAAAP0ACgAHAAAARAAHAAAA/QAKAAcAAQBFAAwAAAD9
AAoABwACAEwAKQAAAP0ACgAIAAAARAAHAAAA/QAKAAgAAQBFAA4AAAD9AAoACAACAEwAKQAAAP0A
CgAJAAAARAAHAAAA/QAKAAkAAQBFAA8AAAD9AAoACQACAEwAKQAAAP0ACgAKAAAARAAHAAAA/QAK
AAoAAQBFACwAAAD9AAoACgACAEYACQAAAP0ACgALAAAARAAHAAAA/QAKAAsAAQBFAC0AAAD9AAoA
CwACAEYACQAAAP0ACgAMAAAARAAHAAAA/QAKAAwAAQBFAC4AAAD9AAoADAACAEYACQAAAP0ACgAN
AAAARAAHAAAA/QAKAA0AAQBFABUAAAD9AAoADQACAEYACQAAAP0ACgAOAAAARAAHAAAA/QAKAA4A
AQBFABYAAAD9AAoADgACAEYACQAAAP0ACgAPAAAARAAHAAAA/QAKAA8AAQBFABsAAAD9AAoADwAC
AEYACQAAAP0ACgAQAAAARAAHAAAA/QAKABAAAQBFABwAAAD9AAoAEAACAEYACQAAAP0ACgARAAAA
RAAHAAAA/QAKABEAAQBFAB0AAAD9AAoAEQACAEYACQAAAP0ACgASAAAARAAHAAAA/QAKABIAAQBF
AB4AAAD9AAoAEgACAEYACQAAAP0ACgATAAAARAA+AAAA/QAKABMAAQBFAD8AAAD9AAoAEwACAEcA
DQAAAP0ACgAUAAAARAA+AAAA/QAKABQAAQBFAEAAAAD9AAoAFAACAEcADQAAAP0ACgAVAAAARAAw
AAAA/QAKABUAAQBFADEAAAD9AAoAFQACAEYACQAAAP0ACgAWAAAARAAwAAAA/QAKABYAAQBFADIA
AAD9AAoAFgACAEYACQAAAP0ACgAXAAAARAAwAAAA/QAKABcAAQBFADMAAAD9AAoAFwACAEYACQAA
AP0ACgAYAAAARAAwAAAA/QAKABgAAQBFADQAAAD9AAoAGAACAEYACQAAAP0ACgAZAAAARAAwAAAA
/QAKABkAAQBFADUAAAD9AAoAGQACAEYACQAAAP0ACgAaAAAARAAwAAAA/QAKABoAAQBFADoAAAD9
AAoAGgACAEYACQAAAP0ACgAbAAAARAA7AAAA/QAKABsAAQBFADwAAAD9AAoAGwACAEYACQAAAP0A
CgAcAAAARAA2AAAA/QAKABwAAQBFADcAAAD9AAoAHAACAEcADQAAAP0ACgAdAAAASAA2AAAA/QAK
AB0AAQBJADgAAAD9AAoAHQACAEoADQAAAP0ACgAeAAAASwBDAAAA1wBCAC4HAABYAg4AHAAcACoA
KgAqACoAKgAqACoAKgAqACoAKgAqACoAKgAqACoAKgAqACoAKgAqACoAKgAqACoAKgAqAD4CEgC0
AAAAAABAAAAAAAAAAAAAAACLCBAAiwgAAAAAAAAAAAAAAAACAB0ADwADAAAAAAAAAQAAAAAAAADv
AAYAFwA3AAAAZwgXAGcIAAAAAAAAAAAAAAIAAf////8DRAAACgAAAAkIEAAABhAAqh/NB8EAAQAG
BAAACwIUAAAAAAAAAAAAGAAAAFxwAAAwdgAADQACAAEADAACAGQADwACAAEAEQACAAAAEAAIAPyp
8dJNYlA/XwACAAEAKgACAAAAKwACAAAAggACAAEAgAAIAAAAAAAAAAAAJQIEAAAAaAGBAAIAwQQU
AAAAFQAAAIMAAgAAAIQAAgAAACYACAAAAAAAAADoPycACAAAAAAAAADoPygACAAAAAAAAADwPykA
CAAAAAAAAADwP6EAIgAAAGgBAQABAAEABAACAAH/AAAAAAAA4D8AAAAAAADgPwAAnAgmAJwIAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAAAVQACAAgAfQAMAAAAAADgID8AAgAAAH0A
DAABAAEAACQ/AAIAAAB9AAwAAgACAOAWPwACAAAAfQAMAAMAAAEACT8AAAAAAAACDgAAAAAAGAAA
AAAAAwAAAAgCEAAAAAAAAwB3AQAAAAAAAQ8gCAIQAAEAAAADAGgBAAAAAAABDwAIAhAAAgAAAAMA
aAEAAAAAAAEPAAgCEAADAAAAAwB3AQAAAAAAAQ8gCAIQAAQAAAADAGgBAAAAAAABDwAIAhAABQAA
AAMAaAEAAAAAAAEPAAgCEAAGAAAAAwBoAQAAAAAAAQ8ACAIQAAcAAAADAGgBAAAAAAABDwAIAhAA
CAAAAAMAaAEAAAAAAAEPAAgCEAAJAAAAAwBoAQAAAAAAAQ8ACAIQAAoAAAADAGgBAAAAAAABDwAI
AhAACwAAAAMAaAEAAAAAAAEPAAgCEAAMAAAAAwBoAQAAAAAAAQ8ACAIQAA0AAAADAGgBAAAAAAAB
DwAIAhAADgAAAAMAaAEAAAAAAAEPAAgCEAAPAAAAAwBoAQAAAAAAAQ8ACAIQABAAAAADAGgBAAAA
AAABDwAIAhAAEQAAAAMAaAEAAAAAAAEPAAgCEAASAAAAAwBoAQAAAAAAAQ8ACAIQABMAAAADAGgB
AAAAAAABDwAIAhAAFAAAAAMAaAEAAAAAAAEPAAgCEAAVAAAAAwBYAgAAAAAAAQ8ACAIQABYAAAAD
AFgCAAAAAAABDwAIAhAAFwAAAAMAaAEAAAAAAAEPAP0ACgAAAAAAPgAAAAAA/QAKAAEAAABAAAEA
AAD9AAoAAQABAEAAAgAAAP0ACgACAAAAQAADAAAA/QAKAAIAAQBAAAIAAAD9AAoAAwAAAEEABAAA
AP0ACgADAAEAQgAFAAAA/QAKAAMAAgBDAAYAAAD9AAoABAAAAEQABwAAAP0ACgAEAAEARQAIAAAA
/QAKAAQAAgBGAAkAAAD9AAoABQAAAEQABwAAAP0ACgAFAAEARQAKAAAA/QAKAAUAAgBGAAkAAAD9
AAoABgAAAEQABwAAAP0ACgAGAAEARQALAAAA/QAKAAYAAgBGAAkAAAD9AAoABwAAAEQABwAAAP0A
CgAHAAEARQAMAAAA/QAKAAcAAgBGAAkAAAD9AAoACAAAAEQABwAAAP0ACgAIAAEARQAOAAAA/QAK
AAgAAgBMACkAAAD9AAoACQAAAEQABwAAAP0ACgAJAAEARQAPAAAA/QAKAAkAAgBMACkAAAD9AAoA
CgAAAEQABwAAAP0ACgAKAAEARQAVAAAA/QAKAAoAAgBGAAkAAAD9AAoACwAAAEQABwAAAP0ACgAL
AAEARQAWAAAA/QAKAAsAAgBGAAkAAAD9AAoADAAAAEQABwAAAP0ACgAMAAEARQAbAAAA/QAKAAwA
AgBGAAkAAAD9AAoADQAAAEQABwAAAP0ACgANAAEARQAcAAAA/QAKAA0AAgBGAAkAAAD9AAoADgAA
AEQABwAAAP0ACgAOAAEARQAdAAAA/QAKAA4AAgBGAAkAAAD9AAoADwAAAEQABwAAAP0ACgAPAAEA
RQAeAAAA/QAKAA8AAgBGAAkAAAD9AAoAEAAAAEQAMAAAAP0ACgAQAAEARQAxAAAA/QAKABAAAgBG
AAkAAAD9AAoAEQAAAEQAMAAAAP0ACgARAAEARQAyAAAA/QAKABEAAgBGAAkAAAD9AAoAEgAAAEQA
MAAAAP0ACgASAAEARQAzAAAA/QAKABIAAgBGAAkAAAD9AAoAEwAAAEQAMAAAAP0ACgATAAEARQA0
AAAA/QAKABMAAgBGAAkAAAD9AAoAFAAAAEQAMAAAAP0ACgAUAAEARQA1AAAA/QAKABQAAgBGAAkA
AAD9AAoAFQAAAEQAMAAAAP0ACgAVAAEARQA6AAAA/QAKABUAAgBGAAkAAAD9AAoAFgAAAEgAOwAA
AP0ACgAWAAEASQA8AAAA/QAKABYAAgBOAAkAAAD9AAoAFwAAAEsAQgAAANcANAB8BQAAzAEOABwA
HAAqACoAKgAqACoAKgAqACoAKgAqACoAKgAqACoAKgAqACoAKgAqACoAPgISALQAAAAAAEAAAAAA
AAAAAAAAAIsIEACLCAAAAAAAAAAAAAAAAAIAHQAPAAMAAAAAAAABAAAAAAAAAO8ABgAXADcAAABn
CBcAZwgAAAAAAAAAAAAAAgAB/////wNEAAAKAAAACQgQAAAGEACqH80HwQABAAYEAAALAhQAAAAA
AAAAAAAfAAAA5HcAAGp/AAANAAIAAQAMAAIAZAAPAAIAAQARAAIAAAAQAAgA/Knx0k1iUD9fAAIA
AQAqAAIAAAArAAIAAACCAAIAAQCAAAgAAAAAAAAAAAAlAgQAAABoAYEAAgDBBBQAAAAVAAAAgwAC
AAAAhAACAAAAJgAIAAAAAAAAAOg/JwAIAAAAAAAAAOg/KAAIAAAAAAAAAPA/KQAIAAAAAAAAAPA/
oQAiAAAAaAEBAAEAAQAEAAIAAf8AAAAAAADgPwAAAAAAAOA/AACcCCYAnAgAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAwAAAAAAAAAAABVAAIACAB9AAwAAAAAAOAgPwACAAAAfQAMAAEAAQAAJD8A
AgAAAH0ADAACAAIA4BY/AAIAAAB9AAwAAwAAAQAJPwAAAAAAAAIOAAAAAAAfAAAAAAADAAAACAIQ
AAAAAAADAHcBAAAAAAABDyAIAhAAAQAAAAMAaAEAAAAAAAEPAAgCEAACAAAAAwBoAQAAAAAAAQ8A
CAIQAAMAAAADAHcBAAAAAAABDyAIAhAABAAAAAMAaAEAAAAAAAEPAAgCEAAFAAAAAwBoAQAAAAAA
AQ8ACAIQAAYAAAADAGgBAAAAAAABDwAIAhAABwAAAAMAaAEAAAAAAAEPAAgCEAAIAAAAAwBoAQAA
AAAAAQ8ACAIQAAkAAAADAGgBAAAAAAABDwAIAhAACgAAAAMAaAEAAAAAAAEPAAgCEAALAAAAAwBo
AQAAAAAAAQ8ACAIQAAwAAAADAGgBAAAAAAABDwAIAhAADQAAAAMAaAEAAAAAAAEPAAgCEAAOAAAA
AwBoAQAAAAAAAQ8ACAIQAA8AAAADAGgBAAAAAAABDwAIAhAAEAAAAAMAaAEAAAAAAAEPAAgCEAAR
AAAAAwBoAQAAAAAAAQ8ACAIQABIAAAADAGgBAAAAAAABDwAIAhAAEwAAAAMAWAIAAAAAAAEPAAgC
EAAUAAAAAwBYAgAAAAAAAQ8ACAIQABUAAAADAGgBAAAAAAABDwAIAhAAFgAAAAMAaAEAAAAAAAEP
AAgCEAAXAAAAAwBoAQAAAAAAAQ8ACAIQABgAAAADAGgBAAAAAAABDwAIAhAAGQAAAAMAaAEAAAAA
AAEPAAgCEAAaAAAAAwBYAgAAAAAAAQ8ACAIQABsAAAADAFgCAAAAAAABDwAIAhAAHAAAAAMAaAEA
AAAAAAEPAAgCEAAdAAAAAwBoAQAAAAAAAQ8ACAIQAB4AAAADAGgBAAAAAAABDwD9AAoAAAAAAD4A
AAAAAP0ACgABAAAAQAABAAAA/QAKAAEAAQBAAAIAAAD9AAoAAgAAAEAAAwAAAP0ACgACAAEAQAAC
AAAA/QAKAAMAAABBAAQAAAD9AAoAAwABAEIABQAAAP0ACgADAAIAQwAGAAAA/QAKAAQAAABEAAcA
AAD9AAoABAABAEUACAAAAP0ACgAEAAIARgAJAAAA/QAKAAUAAABEAAcAAAD9AAoABQABAEUACgAA
AP0ACgAFAAIARgAJAAAA/QAKAAYAAABEAAcAAAD9AAoABgABAEUACwAAAP0ACgAGAAIARgAJAAAA
/QAKAAcAAABEAAcAAAD9AAoABwABAEUADAAAAP0ACgAHAAIARgAJAAAA/QAKAAgAAABEAAcAAAD9
AAoACAABAEUADgAAAP0ACgAIAAIATAApAAAA/QAKAAkAAABEAAcAAAD9AAoACQABAEUADwAAAP0A
CgAJAAIATAApAAAA/QAKAAoAAABEAAcAAAD9AAoACgABAEUALAAAAP0ACgAKAAIARgAJAAAA/QAK
AAsAAABEAAcAAAD9AAoACwABAEUALQAAAP0ACgALAAIARgAJAAAA/QAKAAwAAABEAAcAAAD9AAoA
DAABAEUALgAAAP0ACgAMAAIARgAJAAAA/QAKAA0AAABEAAcAAAD9AAoADQABAEUAFQAAAP0ACgAN
AAIARgAJAAAA/QAKAA4AAABEAAcAAAD9AAoADgABAEUAFgAAAP0ACgAOAAIARgAJAAAA/QAKAA8A
AABEAAcAAAD9AAoADwABAEUAGwAAAP0ACgAPAAIARgAJAAAA/QAKABAAAABEAAcAAAD9AAoAEAAB
AEUAHAAAAP0ACgAQAAIARgAJAAAA/QAKABEAAABEAAcAAAD9AAoAEQABAEUAHQAAAP0ACgARAAIA
RgAJAAAA/QAKABIAAABEAAcAAAD9AAoAEgABAEUAHgAAAP0ACgASAAIARgAJAAAA/QAKABMAAABE
AD4AAAD9AAoAEwABAEUAPwAAAP0ACgATAAIARwANAAAA/QAKABQAAABEAD4AAAD9AAoAFAABAEUA
QAAAAP0ACgAUAAIARwANAAAA/QAKABUAAABEADAAAAD9AAoAFQABAEUAMQAAAP0ACgAVAAIARgAJ
AAAA/QAKABYAAABEADAAAAD9AAoAFgABAEUAMgAAAP0ACgAWAAIARgAJAAAA/QAKABcAAABEADAA
AAD9AAoAFwABAEUAMwAAAP0ACgAXAAIARgAJAAAA/QAKABgAAABEADAAAAD9AAoAGAABAEUANAAA
AP0ACgAYAAIARgAJAAAA/QAKABkAAABEADAAAAD9AAoAGQABAEUANQAAAP0ACgAZAAIARgAJAAAA
/QAKABoAAABEADAAAAD9AAoAGgABAEUAOgAAAP0ACgAaAAIARgAJAAAA/QAKABsAAABEADsAAAD9
AAoAGwABAEUAPAAAAP0ACgAbAAIARgAJAAAA/QAKABwAAABEADYAAAD9AAoAHAABAEUANwAAAP0A
CgAcAAIARwANAAAA/QAKAB0AAABIADYAAAD9AAoAHQABAEkAOAAAAP0ACgAdAAIASgANAAAA/QAK
AB4AAABLAEEAAADXAEIALgcAAFgCDgAcABwAKgAqACoAKgAqACoAKgAqACoAKgAqACoAKgAqACoA
KgAqACoAKgAqACoAKgAqACoAKgAqACoAPgISALQAAAAAAEAAAAAAAAAAAAAAAIsIEACLCAAAAAAA
AAAAAAAAAAIAHQAPAAMAAAAAAAABAAAAAAAAAO8ABgAXADcAAABnCBcAZwgAAAAAAAAAAAAAAgAB
/////wNEAAAKAAAACQgQAAAGEACqH80HwQABAAYEAAALAhQAAAAAAAAAAAAYAAAALIEAAACHAAAN
AAIAAQAMAAIAZAAPAAIAAQARAAIAAAAQAAgA/Knx0k1iUD9fAAIAAQAqAAIAAAArAAIAAACCAAIA
AQCAAAgAAAAAAAAAAAAlAgQAAABoAYEAAgDBBBQAAAAVAAAAgwACAAAAhAACAAAAJgAIAAAAAAAA
AOg/JwAIAAAAAAAAAOg/KAAIAAAAAAAAAPA/KQAIAAAAAAAAAPA/oQAiAAAAaAEBAAEAAQAEAAIA
Af8AAAAAAADgPwAAAAAAAOA/AACcCCYAnAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAwAAAAA
AAAAAABVAAIACAB9AAwAAAAAAOAgPwACAAAAfQAMAAEAAQAAJD8AAgAAAH0ADAACAAIA4BY/AAIA
AAB9AAwAAwAAAQAJPwAAAAAAAAIOAAAAAAAYAAAAAAADAAAACAIQAAAAAAADAHcBAAAAAAABDyAI
AhAAAQAAAAMAaAEAAAAAAAEPAAgCEAACAAAAAwBoAQAAAAAAAQ8ACAIQAAMAAAADAHcBAAAAAAAB
DyAIAhAABAAAAAMAaAEAAAAAAAEPAAgCEAAFAAAAAwBoAQAAAAAAAQ8ACAIQAAYAAAADAGgBAAAA
AAABDwAIAhAABwAAAAMAaAEAAAAAAAEPAAgCEAAIAAAAAwBoAQAAAAAAAQ8ACAIQAAkAAAADAGgB
AAAAAAABDwAIAhAACgAAAAMAaAEAAAAAAAEPAAgCEAALAAAAAwBoAQAAAAAAAQ8ACAIQAAwAAAAD
AGgBAAAAAAABDwAIAhAADQAAAAMAaAEAAAAAAAEPAAgCEAAOAAAAAwBoAQAAAAAAAQ8ACAIQAA8A
AAADAGgBAAAAAAABDwAIAhAAEAAAAAMAaAEAAAAAAAEPAAgCEAARAAAAAwBoAQAAAAAAAQ8ACAIQ
ABIAAAADAGgBAAAAAAABDwAIAhAAEwAAAAMAaAEAAAAAAAEPAAgCEAAUAAAAAwBoAQAAAAAAAQ8A
CAIQABUAAAADAFgCAAAAAAABDwAIAhAAFgAAAAMAWAIAAAAAAAEPAAgCEAAXAAAAAwBoAQAAAAAA
AQ8A/QAKAAAAAAA+AAAAAAD9AAoAAQAAAEAAAQAAAP0ACgABAAEAQAACAAAA/QAKAAIAAABAAAMA
AAD9AAoAAgABAEAAAgAAAP0ACgADAAAAQQAEAAAA/QAKAAMAAQBCAAUAAAD9AAoAAwACAEMABgAA
AP0ACgAEAAAARAAHAAAA/QAKAAQAAQBFAAgAAAD9AAoABAACAEYACQAAAP0ACgAFAAAARAAHAAAA
/QAKAAUAAQBFAAoAAAD9AAoABQACAEYACQAAAP0ACgAGAAAARAAHAAAA/QAKAAYAAQBFAAsAAAD9
AAoABgACAEYACQAAAP0ACgAHAAAARAAHAAAA/QAKAAcAAQBFAAwAAAD9AAoABwACAEcADQAAAP0A
CgAIAAAARAAHAAAA/QAKAAgAAQBFAA4AAAD9AAoACAACAEcADQAAAP0ACgAJAAAARAAHAAAA/QAK
AAkAAQBFAA8AAAD9AAoACQACAEcADQAAAP0ACgAKAAAARAAHAAAA/QAKAAoAAQBFABUAAAD9AAoA
CgACAEYACQAAAP0ACgALAAAARAAHAAAA/QAKAAsAAQBFABYAAAD9AAoACwACAEYACQAAAP0ACgAM
AAAARAAHAAAA/QAKAAwAAQBFABsAAAD9AAoADAACAEYACQAAAP0ACgANAAAARAAHAAAA/QAKAA0A
AQBFABwAAAD9AAoADQACAEcADQAAAP0ACgAOAAAARAAHAAAA/QAKAA4AAQBFAB0AAAD9AAoADgAC
AEcADQAAAP0ACgAPAAAARAAHAAAA/QAKAA8AAQBFAB4AAAD9AAoADwACAEcADQAAAP0ACgAQAAAA
RAAwAAAA/QAKABAAAQBFADEAAAD9AAoAEAACAEYACQAAAP0ACgARAAAARAAwAAAA/QAKABEAAQBF
ADIAAAD9AAoAEQACAEYACQAAAP0ACgASAAAARAAwAAAA/QAKABIAAQBFADMAAAD9AAoAEgACAEYA
CQAAAP0ACgATAAAARAAwAAAA/QAKABMAAQBFADQAAAD9AAoAEwACAEYACQAAAP0ACgAUAAAARAAw
AAAA/QAKABQAAQBFADUAAAD9AAoAFAACAEYACQAAAP0ACgAVAAAARAAwAAAA/QAKABUAAQBFADoA
AAD9AAoAFQACAEcADQAAAP0ACgAWAAAASAA7AAAA/QAKABYAAQBJADwAAAD9AAoAFgACAE4ACQAA
AP0ACgAXAAAASwA9AAAA1wA0AHwFAADMAQ4AHAAcACoAKgAqACoAKgAqACoAKgAqACoAKgAqACoA
KgAqACoAKgAqACoAKgA+AhIAtAAAAAAAQAAAAAAAAAAAAAAAiwgQAIsIAAAAAAAAAAAAAAAAAgAd
AA8AAwAAAAAAAAEAAAAAAAAA7wAGABcANwAAAGcIFwBnCAAAAAAAAAAAAAACAAH/////A0QAAAoA
AAAJCBAAAAYQAKofzQfBAAEABgQAAAsCGAAAAAAAAAAAACEAAAC4iAAAiJAAAPKQAAANAAIAAQAM
AAIAZAAPAAIAAQARAAIAAAAQAAgA/Knx0k1iUD9fAAIAAQAqAAIAAAArAAIAAACCAAIAAQCAAAgA
AAAAAAAAAAAlAgQAAABoAYEAAgDBBBQAAAAVAAAAgwACAAAAhAACAAAAJgAIAAAAAAAAAOg/JwAI
AAAAAAAAAOg/KAAIAAAAAAAAAPA/KQAIAAAAAAAAAPA/oQAiAAAAaAEBAAEAAQAEAAIAAf8AAAAA
AADgPwAAAAAAAOA/AACcCCYAnAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAAAAABV
AAIACAB9AAwAAAABAAAkPwACAAAAfQAMAAIAAgDgFj8AAgAAAH0ADAADAAABAAk/AAAAAAAAAg4A
AAAAACEAAAAAAAMAAAAIAhAAAAAAAAMAdwEAAAAAAAEPIAgCEAABAAAAAwBoAQAAAAAAAQ8ACAIQ
AAIAAAADAGgBAAAAAAABDwAIAhAAAwAAAAMAdwEAAAAAAAEPIAgCEAAEAAAAAwBoAQAAAAAAAQ8A
CAIQAAUAAAADAGgBAAAAAAABDwAIAhAABgAAAAMAaAEAAAAAAAEPAAgCEAAHAAAAAwBoAQAAAAAA
AQ8ACAIQAAgAAAADAGgBAAAAAAABDwAIAhAACQAAAAMAaAEAAAAAAAEPAAgCEAAKAAAAAwBoAQAA
AAAAAQ8ACAIQAAsAAAADAGgBAAAAAAABDwAIAhAADAAAAAMAaAEAAAAAAAEPAAgCEAANAAAAAwBo
AQAAAAAAAQ8ACAIQAA4AAAADAGgBAAAAAAABDwAIAhAADwAAAAMAaAEAAAAAAAEPAAgCEAAQAAAA
AwBoAQAAAAAAAQ8ACAIQABEAAAADAGgBAAAAAAABDwAIAhAAEgAAAAMAaAEAAAAAAAEPAAgCEAAT
AAAAAwBoAQAAAAAAAQ8ACAIQABQAAAADAGgBAAAAAAABDwAIAhAAFQAAAAMAaAEAAAAAAAEPAAgC
EAAWAAAAAwBoAQAAAAAAAQ8ACAIQABcAAAADAGgBAAAAAAABDwAIAhAAGAAAAAMAaAEAAAAAAAEP
AAgCEAAZAAAAAwBoAQAAAAAAAQ8ACAIQABoAAAADAGgBAAAAAAABDwAIAhAAGwAAAAMAaAEAAAAA
AAEPAAgCEAAcAAAAAwBoAQAAAAAAAQ8ACAIQAB0AAAADAGgBAAAAAAABDwAIAhAAHgAAAAMAaAEA
AAAAAAEPAAgCEAAfAAAAAwBoAQAAAAAAAQ8A/QAKAAAAAAA+AAAAAAD9AAoAAQAAAEAAAQAAAP0A
CgABAAEAQAACAAAA/QAKAAIAAABAAAMAAAD9AAoAAgABAEAAAgAAAP0ACgADAAAAQQAEAAAA/QAK
AAMAAQBCAAUAAAD9AAoAAwACAEMABgAAAP0ACgAEAAAARAAHAAAA/QAKAAQAAQBFAAgAAAD9AAoA
BAACAEYACQAAAP0ACgAFAAAARAAHAAAA/QAKAAUAAQBFAAoAAAD9AAoABQACAEYACQAAAP0ACgAG
AAAARAAHAAAA/QAKAAYAAQBFAAsAAAD9AAoABgACAEYACQAAAP0ACgAHAAAARAAHAAAA/QAKAAcA
AQBFAAwAAAD9AAoABwACAEYACQAAAP0ACgAIAAAARAAHAAAA/QAKAAgAAQBFAA4AAAD9AAoACAAC
AEwAKQAAAP0ACgAJAAAARAAHAAAA/QAKAAkAAQBFAA8AAAD9AAoACQACAEwAKQAAAP0ACgAKAAAA
RAAHAAAA/QAKAAoAAQBFABAAAAD9AAoACgACAEYACQAAAP0ACgALAAAARAAHAAAA/QAKAAsAAQBF
ACwAAAD9AAoACwACAEYACQAAAP0ACgAMAAAARAAHAAAA/QAKAAwAAQBFAC0AAAD9AAoADAACAEYA
CQAAAP0ACgANAAAARAAHAAAA/QAKAA0AAQBFABQAAAD9AAoADQACAEYACQAAAP0ACgAOAAAARAAH
AAAA/QAKAA4AAQBFAC4AAAD9AAoADgACAEYACQAAAP0ACgAPAAAARAAHAAAA/QAKAA8AAQBFABUA
AAD9AAoADwACAEYACQAAAP0ACgAQAAAARAAHAAAA/QAKABAAAQBFABYAAAD9AAoAEAACAEYACQAA
AP0ACgARAAAARAAHAAAA/QAKABEAAQBFABsAAAD9AAoAEQACAEYACQAAAP0ACgASAAAARAAHAAAA
/QAKABIAAQBFABwAAAD9AAoAEgACAEYACQAAAP0ACgATAAAARAAHAAAA/QAKABMAAQBFAB0AAAD9
AAoAEwACAEYACQAAAP0ACgAUAAAARAAHAAAA/QAKABQAAQBFAB4AAAD9AAoAFAACAEYACQAAAP0A
CgAVAAAARAAfAAAA/QAKABUAAQBFACAAAAD9AAoAFQACAEYACQAAAP0ACgAWAAAARAAfAAAA/QAK
ABYAAQBFACEAAAD9AAoAFgACAEYACQAAAP0ACgAXAAAARAAfAAAA/QAKABcAAQBFACIAAAD9AAoA
FwACAEYACQAAAP0ACgAYAAAARAAfAAAA/QAKABgAAQBFAC8AAAD9AAoAGAACAEYACQAAAP0ACgAZ
AAAARAAwAAAA/QAKABkAAQBFADEAAAD9AAoAGQACAEYACQAAAP0ACgAaAAAARAAwAAAA/QAKABoA
AQBFADIAAAD9AAoAGgACAEYACQAAAP0ACgAbAAAARAAwAAAA/QAKABsAAQBFADMAAAD9AAoAGwAC
AEYACQAAAP0ACgAcAAAARAAwAAAA/QAKABwAAQBFADQAAAD9AAoAHAACAEYACQAAAP0ACgAdAAAA
RAAwAAAA/QAKAB0AAQBFADUAAAD9AAoAHQACAEYACQAAAP0ACgAeAAAARAA2AAAA/QAKAB4AAQBF
ADcAAAD9AAoAHgACAEcADQAAAP0ACgAfAAAASAA2AAAA/QAKAB8AAQBJADgAAAD9AAoAHwACAEoA
DQAAANcARACIBwAAbAIOABwAHAAqACoAKgAqACoAKgAqACoAKgAqACoAKgAqACoAKgAqACoAKgAq
ACoAKgAqACoAKgAqACoAKgAqAAgCEAAgAAAAAQBoAQAAAAAAAQ8A/QAKACAAAABLADkAAADXAAYA
IgAAAAAAPgISALQAAAAAAEAAAAAAAAAAAAAAAIsIEACLCAAAAAAAAAAAAAAAAAIAHQAPAAMRAAIA
AAABABEAEQACAu8ABgAXADcAAABnCBcAZwgAAAAAAAAAAAAAAgAB/////wNEAAAKAAAACQgQAAAG
EACqH80HwQABAAYEAAALAhQAAAAAAAAAAAAHAAAAeJIAAC6UAAANAAIAAQAMAAIAZAAPAAIAAQAR
AAIAAAAQAAgA/Knx0k1iUD9fAAIAAQAqAAIAAAArAAIAAACCAAIAAQCAAAgAAAAAAAAAAAAlAgQA
AABoAYEAAgDBBBQAAAAVAAAAgwACAAAAhAACAAAAJgAIAAAAAAAAAOg/JwAIAAAAAAAAAOg/KAAI
AAAAAAAAAPA/KQAIAAAAAAAAAPA/oQAiAAAAaAEBAAEAAQAEAAIAAf8AAAAAAADgPwAAAAAAAOA/
AACcCCYAnAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAAAAABVAAIACAB9AAwAAAAA
AMAaPwACAAAAfQAMAAEAAQDgGz8AAgAAAH0ADAACAAIA4BY/AAIAAAB9AAwAAwAAAQAJPwAAAAAA
AAIOAAAAAAAHAAAAAAADAAAACAIQAAAAAAADAHcBAAAAAAABDyAIAhAAAQAAAAMAaAEAAAAAAAEP
AAgCEAACAAAAAwBoAQAAAAAAAQ8ACAIQAAMAAAADAHcBAAAAAAABDyAIAhAABAAAAAMAaAEAAAAA
AAEPAAgCEAAFAAAAAwBoAQAAAAAAAQ8ACAIQAAYAAAADAGgBAAAAAAABDwD9AAoAAAAAAD4AAAAA
AP0ACgABAAAAQAABAAAA/QAKAAEAAQBAAAIAAAD9AAoAAgAAAEAAAwAAAP0ACgACAAEAQAACAAAA
/QAKAAMAAABBAAQAAAD9AAoAAwABAEIABQAAAP0ACgADAAIAQwAGAAAA/QAKAAQAAABEACcAAAD9
AAoABAABAEUAKAAAAP0ACgAEAAIATAApAAAA/QAKAAUAAABIACcAAAD9AAoABQABAEkAKgAAAP0A
CgAFAAIATQApAAAA/QAKAAYAAABLACsAAADXABIAXgEAAHgADgAcABwAKgAqACoAPgISALQAAAAA
AEAAAAAAAAAAAAAAAIsIEACLCAAAAAAAAAAAAAAAAAIAHQAPAAMAAAAAAAABAAAAAAAAAO8ABgAX
ADcAAABnCBcAZwgAAAAAAAAAAAAAAgAB/////wNEAAAKAAAACQgQAAAGEACqH80HwQABAAYEAAAL
AhQAAAAAAAAAAAAgAAAAVrQAAAq8AAANAAIAAQAMAAIAZAAPAAIAAQARAAIAAAAQAAgA/Knx0k1i
UD9fAAIAAQAqAAIAAAArAAIAAACCAAIAAQCAAAgAAAAAAAAAAAAlAgQAAABoAYEAAgDBBBQAAAAV
AAAAgwACAAAAhAACAAAAJgAIAAAAAAAAAOg/JwAIAAAAAAAAAOg/KAAIAAAAAAAAAPA/KQAIAAAA
AAAAAPA/TQCSHgAAUwBoAHoAMQAzAGoANABwAGIAbQBzAC4AcwBoAC4AaQBuAHQAZQBsAC4AYwBv
AG0AAAAAAAAAAAAAAAAAAAAAAAEEAAbcALQdQ/+ABwEACQCaCzQIZAABAA8AWAICAAIAWAIDAAAA
QQA0AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAABAAAAAgAAAB0BAAD/////AAAAAAAAAAAAAAAA
AAAAAERJTlUiAJAHzAnoE9EK5PQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAPgAAAAAAAAAA
AAAAAAACAAAAAAAAAAEAAAAFAAMABAADAAQAAwAEAAQABAAAAAYAAAAAAAAAAAABAAAAAAAAAAAA
AAAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAA
AAAAAAAAkAcAAFNNVEoAAAAAEACAB0gAUAAgAFUAbgBpAHYAZQByAHMAYQBsACAAUAByAGkAbgB0
AGkAbgBnACAAUABDAEwAIAA1AAAASW5wdXRCaW4ARk9STVNPVVJDRQBSRVNETEwAVW5pcmVzRExM
AEhQRG9jVUlTVUkAVHJ1ZQBFU1BSSVRTdXBwb3J0ZWQAVHJ1ZQBSZXNvbHV0aW9uADYwMGRwaQBQ
cmludFF1YWxpdHlHcm91cABQUUdyb3VwXzIARmFzdFJlcwAxYnBwAE9yaWVudGF0aW9uAFBPUlRS
QUlUAEhQT3JpZW50Um90YXRlMTgwAEZhbHNlAER1cGxleABWRVJUSUNBTABIUENvbG9yU21hcnQA
QXV0b21hdGljAEhQQ29sb3JTbWFydF9Db2xvck9wdGlvbnNfRWRnZUNvbnRyb2wATm9ybWFsAEhQ
Q29sb3JTbWFydF9Db2xvck9wdGlvbnNfUkdCQ29sb3IARGVmYXVsdChzUkdCKQBIUENvbG9yU21h
cnRfQ29sb3JPcHRpb25zX0hhbGZ0b25lAERldGFpbABIUENvbG9yU21hcnRfVGV4dF9OZXV0cmFs
R3JheXMAQmxhY2tPbmx5AEhQQ29sb3JTbWFydF9UZXh0X0hhbGZ0b25lAERldGFpbABIUENvbG9y
U21hcnRfR3JhcGhpY3NfTmV1dHJhbEdyYXlzAEJsYWNrT25seQBIUENvbG9yU21hcnRfR3JhcGhp
Y3NfSGFsZnRvbmUARGV0YWlsAEhQQ29sb3JTbWFydF9QaG90b19OZXV0cmFsR3JheXMANC1Db2xv
cgBIUENvbG9yU21hcnRfUGhvdG9fSGFsZnRvbmUARGV0YWlsAEhQUHJpbnRPbkJvdGhTaWRlc01h
bnVhbGx5AEZhbHNlAFBhcGVyU2l6ZQBBNABIUENvbnN1bWVyQ3VzdG9tUGFwZXIAVHJ1ZQBNZWRp
YVR5cGUAQVVUTwBDb2xsYXRlAE9GRgBPdXRwdXRCaW4AQXV0bwBIUE91dHB1dEJpbk9yaWVudGF0
aW9uAEZBQ0VVUABTdGFwbGluZwBOb25lAEhQU3RhcGxpbmdPcHBvc2VkAEZhbHNlAEVjb25vbW9k
ZQBGYWxzZQBUZXh0QXNCbGFjawBGYWxzZQBHcmFwaGljc01vZGUASFBHTDJNT0RFAEhQU21hcnRI
dWIASW5ldF9TSURfMjYzX0JJRF81MTRfSElEXzI2NQBIUERvY1Byb3BSZXNvdXJjZURhdGEAaHBj
aGwwODEuY2FiAEhQTWVkaWFUeXBlVHJlZXZpZXdQb3B1cABUcnVlAEhQQ29sb3JNb2RlAENPTE9S
X01PREUAQ29sb3JNb2RlADI0YnBwAFRUQXNCaXRtYXBzU2V0dGluZwBUVE1vZGVPdXRsaW5lAEhQ
UERMVHlwZQBQRExfUENMNQBIUE1heFJlc29sdXRpb24AUERNXzYwMERQSQBIUFBKTEVuY29kaW5n
AFVURjgASFBKb2JBY2NvdW50aW5nAEhQSk9CQUNDVF9KT0JBQ05UX0dST1VQTkFNRQBIUEJvcm5P
bkRhdGUASFBCT0QASFBDb2xvclBsYW5lAEhQQ1AASFBKb2JCeUpvYk92ZXJyaWRlAEpCSk8ASFBY
TUxGaWxlVXNlZABocGN1MDgxNS54bWwASFBTbWFydER1cGxleFNpbmdsZVBhZ2VKb2IAVHJ1ZQBI
UER1cGxpY2F0ZUpvYk5hbWVPdmVycmlkZQBTV0ZXAEVuaGFuY2VkUENMNUVuYWJsZQBUcnVlAER5
bmFtaWNSZW5kZXIAQVVUT0RFVklDRQBIUEVuYWJsZVJBV1Nwb29saW5nAFRydWUAUkdCQ29sb3IA
RGVmYXVsdC1zUkdCAEpSQ29uc3RyYWludHMASlJDSERGdWxsAEpSSERJbnN0YWxsZWQASlJIRE9m
ZgBKUkhETm90SW5zdGFsbGVkAEpSSERPZmYASFBOVXNlRGlmZkZpcnN0UGFnZUNob2ljZQBUUlVF
AEhQUGFnZUV4Y2VwdGlvbnNGaWxlAEhQQ1BFMDgxAEhQUGFnZUV4Y2VwdGlvbnNJbnRlcmZhY2UA
U2hvd1BhZ2VFeGNlcHRpb25zAEhQUGFnZUV4Y2VwdGlvbnNMb3dFbmQASFBQYWdlRXhjZXB0aW9u
c0xvd0VuZFZlcgBIUFBhZ2VFeGNlcHRpb25zAENvdmVySW5zZXJ0aW9uAEhQQmVzdEdsb3NzAERF
RkFVTFQAUFNBbGlnbm1lbnRGaWxlAEhQQ0xTMDgxAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAOgTAABJVVBIFAABAHic7ZrPbxJBFMffgjESY0pST1aTvejNJhoOVoxmuwyC1rgu1BKtMU3Z
GgwFw4+k9oQHY/wX+ifon+CFo2fj1Xht/Au86XdmZ+uyIBuNlRbehwxv5s2b2Rnmx2MG9ueJcsIp
nCWDJAkEQ4eApJa+PkFVFUse2EppUYbiSNHe6cwpoh8hZPmTsSXjMSLyd5j0mBrURPDoyT94LnO8
4PGfbSxqUY02qD7phjATQXopR8cDX9Hv9wdkmJS2qw7l9G6Ne07UD6WhmDNG20j56QTRHarQKlq4
NK5iZoq5gf2pSx34p23sUR3sVJt0c9KNYv4jib8sF95LDB0xIvnhEGYO4YIxHE+MsAlkMpTnfjhD
8nu9DAwTsIB5ci7uQMYwzFQzagsI+xmGYQ4HucRsnCna+lRh4vQrb0AaSJtUIg+yo9LPYMNMI3+y
zVa1/T119mxhzrQRttRsuQ+5pfQeUoJ2VOxo3qTl9BlazmyTVtELD71pUxZzvoTcy+hNGStDroEC
3h/CsoVedtXdYI129flb3hRn1frxyz9Fzi40QpW18XIhi5AlpSlDOpAurcHKUnH5hEcDraAxNdiI
L6Ok/IT9VRpufWAv0LsXaGmTXiLPU/2SNbjQ1NX4+JZZtEhgNEtKIz+TbfSmoUbxVw8ZZpA8Zsem
8hktzDATK8bD2t/A3KlDOxueQt5/yN8oRcUWK4uiIrQ+epdyGCF63xKVYc6H0710L2ijTddpXfn7
Jrx7C6Mn/X8ea17uEG3kxe3y6wOpK3QVGkEV1CxohRZVXBBztHkOT93l3xVmFv+bADPbpA7+q8PM
NkXHsnPuWq502yrbllNcyL7Pv8nsi1efv16bf5C9O1Sgtvfl9aXv4u3Fb0vv0jsfHWe5YAnXGVE1
wzAMwzAMwzAMwzDHgJ8E56CAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAoQAiAAkAZAABAAEAAQACAFgCWAIAAAAAAADgPwAA
AAAAAOA/AQCcCCYAnAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAwAAAAAAAAAAABVAAIACAB9
AAwAAAABAAAkPwACAAAAfQAMAAIAAgDgFj8AAgAAAH0ADAADAAABAAk/AAAAAAAAAg4AAAAAACAA
AAAAAAMAAAAIAhAAAAAAAAMAdwEAAAAAAAEPIAgCEAABAAAAAwBoAQAAAAAAAQ8ACAIQAAIAAAAD
AGgBAAAAAAABDwAIAhAAAwAAAAMAdwEAAAAAAAEPIAgCEAAEAAAAAwBoAQAAAAAAAQ8ACAIQAAUA
AAADAGgBAAAAAAABDwAIAhAABgAAAAMAaAEAAAAAAAEPAAgCEAAHAAAAAwBoAQAAAAAAAQ8ACAIQ
AAgAAAADAGgBAAAAAAABDwAIAhAACQAAAAMAaAEAAAAAAAEPAAgCEAAKAAAAAwBoAQAAAAAAAQ8A
CAIQAAsAAAADAGgBAAAAAAABDwAIAhAADAAAAAMAaAEAAAAAAAEPAAgCEAANAAAAAwBoAQAAAAAA
AQ8ACAIQAA4AAAADAGgBAAAAAAABDwAIAhAADwAAAAMAaAEAAAAAAAEPAAgCEAAQAAAAAwBoAQAA
AAAAAQ8ACAIQABEAAAADAGgBAAAAAAABDwAIAhAAEgAAAAMAaAEAAAAAAAEPAAgCEAATAAAAAwBo
AQAAAAAAAQ8ACAIQABQAAAADAGgBAAAAAAABDwAIAhAAFQAAAAMAaAEAAAAAAAEPAAgCEAAWAAAA
AwBoAQAAAAAAAQ8ACAIQABcAAAADAGgBAAAAAAABDwAIAhAAGAAAAAMAaAEAAAAAAAEPAAgCEAAZ
AAAAAwBoAQAAAAAAAQ8ACAIQABoAAAADAGgBAAAAAAABDwAIAhAAGwAAAAMAaAEAAAAAAAEPAAgC
EAAcAAAAAwBoAQAAAAAAAQ8ACAIQAB0AAAADAFgCAAAAAAABDwAIAhAAHgAAAAMAWAIAAAAAAAEP
AAgCEAAfAAAAAwBoAQAAAAAAAQ8A/QAKAAAAAAA+AAAAAAD9AAoAAQAAAEAAAQAAAP0ACgABAAEA
QAACAAAA/QAKAAIAAABAAAMAAAD9AAoAAgABAEAAAgAAAP0ACgADAAAAQQAEAAAA/QAKAAMAAQBC
AAUAAAD9AAoAAwACAEMABgAAAP0ACgAEAAAARAAHAAAA/QAKAAQAAQBFAAgAAAD9AAoABAACAEYA
CQAAAP0ACgAFAAAARAAHAAAA/QAKAAUAAQBFAAoAAAD9AAoABQACAEYACQAAAP0ACgAGAAAARAAH
AAAA/QAKAAYAAQBFAAsAAAD9AAoABgACAEYACQAAAP0ACgAHAAAARAAHAAAA/QAKAAcAAQBFAAwA
AAD9AAoABwACAEcADQAAAP0ACgAIAAAARAAHAAAA/QAKAAgAAQBFAA4AAAD9AAoACAACAEcADQAA
AP0ACgAJAAAARAAHAAAA/QAKAAkAAQBFAA8AAAD9AAoACQACAEcADQAAAP0ACgAKAAAARAAHAAAA
/QAKAAoAAQBFABAAAAD9AAoACgACAEYACQAAAP0ACgALAAAARAAHAAAA/QAKAAsAAQBFABEAAAD9
AAoACwACAEYACQAAAP0ACgAMAAAARAAHAAAA/QAKAAwAAQBFABIAAAD9AAoADAACAEYACQAAAP0A
CgANAAAARAAHAAAA/QAKAA0AAQBFABMAAAD9AAoADQACAEYACQAAAP0ACgAOAAAARAAHAAAA/QAK
AA4AAQBFABQAAAD9AAoADgACAEYACQAAAP0ACgAPAAAARAAHAAAA/QAKAA8AAQBFABUAAAD9AAoA
DwACAEYACQAAAP0ACgAQAAAARAAHAAAA/QAKABAAAQBFABYAAAD9AAoAEAACAEYACQAAAP0ACgAR
AAAARAAHAAAA/QAKABEAAQBFABcAAAD9AAoAEQACAEYACQAAAP0ACgASAAAARAAHAAAA/QAKABIA
AQBFABgAAAD9AAoAEgACAEYACQAAAP0ACgATAAAARAAHAAAA/QAKABMAAQBFABkAAAD9AAoAEwAC
AEYACQAAAP0ACgAUAAAARAAHAAAA/QAKABQAAQBFABoAAAD9AAoAFAACAEYACQAAAP0ACgAVAAAA
RAAHAAAA/QAKABUAAQBFABsAAAD9AAoAFQACAEYACQAAAP0ACgAWAAAARAAHAAAA/QAKABYAAQBF
ABwAAAD9AAoAFgACAEcADQAAAP0ACgAXAAAARAAHAAAA/QAKABcAAQBFAB0AAAD9AAoAFwACAEcA
DQAAAP0ACgAYAAAARAAHAAAA/QAKABgAAQBFAB4AAAD9AAoAGAACAEcADQAAAP0ACgAZAAAARAAf
AAAA/QAKABkAAQBFACAAAAD9AAoAGQACAEcADQAAAP0ACgAaAAAARAAfAAAA/QAKABoAAQBFACEA
AAD9AAoAGgACAEcADQAAAP0ACgAbAAAARAAfAAAA/QAKABsAAQBFACIAAAD9AAoAGwACAEcADQAA
AP0ACgAcAAAARAAfAAAA/QAKABwAAQBFACMAAAD9AAoAHAACAEcADQAAAP0ACgAdAAAARAAfAAAA
/QAKAB0AAQBFACQAAAD9AAoAHQACAEcADQAAAP0ACgAeAAAASAAfAAAA/QAKAB4AAQBJACUAAAD9
AAoAHgACAEoADQAAAP0ACgAfAAAASwAmAAAA1wBEAGwHAABsAg4AHAAcACoAKgAqACoAKgAqACoA
KgAqACoAKgAqACoAKgAqACoAKgAqACoAKgAqACoAKgAqACoAKgAqACoAPgISALQACAAAAEAAAAAA
AAAAAAAAAIsIEACLCAAAAAAAAAAAAAAAAAIAHQAPAAMaAAIAAAABABoAGgACAu8ABgAXADcAAABn
CBcAZwgAAAAAAAAAAAAAAgAB/////wNEAAAKAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAEAAAACAAAAAwAAAP7///8FAAAABgAAAAcAAAAIAAAACQAAAAoAAAD+
////DAAAAP7/////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////
/////////////////////v8AAAUBAgAAAAAAAAAAAAAAAAAAAAAAAQAAAOCFn/L5T2gQq5EIACsn
s9kwAAAAoAAAAAcAAAABAAAAQAAAAAQAAABIAAAACAAAAFgAAAASAAAAaAAAAAwAAACAAAAADQAA
AIwAAAATAAAAmAAAAAIAAACoAwAAHgAAAAgAAABqeHU0OQAAAB4AAAAIAAAAanh1NDkAAAAeAAAA
EAAAAE1pY3Jvc29mdCBFeGNlbABAAAAAgEzsUW2cywFAAAAAAM3bTG6cywEDAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP7/AAAFAQIAAAAAAAAA
AAAAAAAAAAAAAAEAAAAC1c3VnC4bEJOXCAArLPmuMAAAAIgBAAAJAAAAAQAAAFAAAAAPAAAAWAAA
ABcAAAB0AAAACwAAAHwAAAAQAAAAhAAAABMAAACMAAAAFgAAAJQAAAANAAAAnAAAAAwAAABlAQAA
AgAAAKgDAAAeAAAAFAAAAEludGVsIENvcnBvcmF0aW9uAAAAAwAAAAAADAALAAAAAAAAAAsAAAAA
AAAACwAAAAAAAAALAAAAAAAAAB4QAAALAAAADQAAAHFlbXVhcm0tc2F0bwAMAAAAcWVtdXg4Ni1z
ZGsAEAAAAHFlbXV4ODYtNjQtc2F0bwAPAAAAcWVtdXg4Ni02NC1zZGsADAAAAHFlbXVhcm0tc2Rr
AA4AAABxZW11bWlwcy1zYXRvAA0AAABxZW11bWlwcy1zZGsADQAAAHFlbXV4ODYtc2F0bwAUAAAA
cm91dGVzdGF0aW9ucHJvLXNkawAFAAAAcG9reQAQAAAAZU1lbmxvdy1NaW5pbWFsAAwQAAACAAAA
HgAAAAsAAABXb3Jrc2hlZXRzAAMAAAALAAAAAAAAAAAAAAABAP7/AwoAAP////8gCAIAAAAAAMAA
AAAAAABGJgAAAE1pY3Jvc29mdCBPZmZpY2UgRXhjZWwgMjAwMyBXb3Jrc2hlZXQABgAAAEJpZmY4
AA4AAABFeGNlbC5TaGVldC44APQ5snEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAEAQwBvAG0AcABPAGIAagAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAASAAIA////////////////AAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAACwAAAHIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////8AAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP//////
/////////wAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAA////////////////AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAA

--_004_D5AB6E638E5A3E4B8F4406B113A5A19A3189DCB7shsmsx501ccrcor_--
