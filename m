Return-Path: <jiajun.xu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4CFCC4C8007E
	for <poky@pokylinux.org>; Tue, 15 Feb 2011 07:37:05 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 15 Feb 2011 05:37:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,474,1291622400"; 
	d="xml'?ods'72,48?png'72,48,150?scan'72,48,150,208,217,72,150,48";
	a="708022076"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by orsmga001.jf.intel.com with ESMTP; 15 Feb 2011 05:37:02 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Tue, 15 Feb 2011 21:37:02 +0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Tue, 15 Feb 2011 21:37:01 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Tue, 15 Feb 2011 21:37:00 +0800
From: "Xu, Jiajun" <jiajun.xu@intel.com>
To: "poky@pokylinux.org" <poky@pokylinux.org>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Tue, 15 Feb 2011 21:36:58 +0800
Thread-Topic: Weekly Test Report for Yocto Nightly 20110212 Build
Thread-Index: AcvNFWspoG7KpXh7S2SK6wv5+AjDfg==
Message-ID: <D5AB6E638E5A3E4B8F4406B113A5A19A33285BAF@shsmsx501.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Weekly Test Report for Yocto Nightly 20110212 Build
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
X-List-Received-Date: Tue, 15 Feb 2011 13:37:06 -0000
X-Groupsio-MsgNum: 3667
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_004_D5AB6E638E5A3E4B8F4406B113A5A19A33285BAFshsmsx501ccrcor_"

--_004_D5AB6E638E5A3E4B8F4406B113A5A19A33285BAFshsmsx501ccrcor_
Content-Type: multipart/alternative;
	boundary="_000_D5AB6E638E5A3E4B8F4406B113A5A19A33285BAFshsmsx501ccrcor_"

--_000_D5AB6E638E5A3E4B8F4406B113A5A19A33285BAFshsmsx501ccrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all,

       This is the weekly tet report for 20110212 build. SDK testing is res=
umed since autobuilder has copied -sato-sdk images to sharing folder. All q=
emu targets are covered. But for real hardware, only beagleboard image was =
built out successfully. Other real hardware images were all built failed. T=
here 3 new issues found with this build: 2 are for zypper command and 1 is =
for linux headers missed in ppc image.



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

4 (bug 705)

0

Qemux86-64 SDK

17

0

17

0

0

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

2 (bug 721)

0

Qemumips Sato

12

0

11

1 (bug 721)

0

Qemumips SDK

17

0

16

1 (bug 721)

0

Qemuppc Sato

11

0

10

1 (bug 722)

0

Qemuppc SDK

16

0

15

1 (bug 722)

0

Qemuarm Sato

12

0

12

0

0

Qemuarm SDK

17

0

17

0

0

Total

150

0

140

10

0


* You can check the detailed test result in attachment for each target.

** The failed/blocked case number is listed with failed cases' bug number.



Images
---------------------------------------

http://autobuilder.pokylinux.org/nightly/20110212-1/



Issue Summary
---------------------------------------

New Bugs:

1.     [zypper] search failure on qemuppc (nightly build 20110212-1)

http://bugzilla.pokylinux.org/show_bug.cgi?id=3D722

2.     [zypper] zypper segfault in qemux86-64 sdk image

http://bugzilla.pokylinux.org/show_bug.cgi?id=3D721

3.     Missing linux kernel header files sdk-images causes posixtestsuite t=
est to fail

http://bugzilla.pokylinux.org/show_bug.cgi?id=3D714



Old Open Bugs:

1.     [rpm/zypper] libmagic.so error when running rpm/zypper

http://bugzilla.pokylinux.org/show_bug.cgi?id=3D705

2.     qemumips shutdown cause host console warning

http://bugzilla.pokylinux.org/show_bug.cgi?id=3D322

3.     The bottom icons on Applications and All screen are cut-off in qemu

http://bugzilla.pokylinux.org/show_bug.cgi?id=3D658



Best Regards,

Jiajun

--_000_D5AB6E638E5A3E4B8F4406B113A5A19A33285BAFshsmsx501ccrcor_
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
	{mso-list-id:224682170;
	mso-list-type:hybrid;
	mso-list-template-ids:-11128028 -420938426 67698713 67698715 67698703 6769=
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
	{mso-list-id:1517424459;
	mso-list-type:hybrid;
	mso-list-template-ids:-1231518934 2081340428 67698713 67698715 67698703 67=
698713 67698715 67698703 67698713 67698715;}
@list l1:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:18.0pt;
	text-indent:-18.0pt;}
@list l2
	{mso-list-id:1589652811;
	mso-list-type:hybrid;
	mso-list-template-ids:-1645321260 185119308 67698713 67698715 67698703 676=
98713 67698715 67698703 67698713 67698715;}
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
sans-serif"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; This is the weekly tet re=
port for 20110212 build. SDK testing is resumed since autobuilder has copie=
d &#8211;sato-sdk images to sharing folder. All qemu targets are covered. B=
ut for real hardware, only beagleboard image was built out successfully. Ot=
her real hardware images were all built failed. There 3 new issues found wi=
th this build: 2 are for zypper command and 1 is for linux headers missed i=
n ppc image.<o:p></o:p></span></p><p class=3DMsoPlainText><span lang=3DEN-U=
S><o:p>&nbsp;</o:p></span></p><p class=3DMsoPlainText><b><span lang=3DEN-US=
 style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>Test Summary<o=
:p></o:p></span></b></p><p class=3DMsoNormal><b><span lang=3DEN-US style=3D=
'font-size:10.0pt;font-family:"Arial","sans-serif"'>-----------------------=
----------------<o:p></o:p></span></b></p><table class=3DMsoNormalTable bor=
der=3D0 cellspacing=3D0 cellpadding=3D0 width=3D521 style=3D'width:390.6pt;=
margin-left:-1.15pt;border-collapse:collapse'><tr style=3D'height:39.0pt'><=
td width=3D131 nowrap style=3D'width:98.0pt;border:solid windowtext 1.0pt;p=
adding:0cm 5.4pt 0cm 5.4pt;height:39.0pt'><p class=3DMsoNormal align=3Dcent=
er style=3D'text-align:center'><b><span lang=3DEN-US style=3D'font-size:10.=
0pt;font-family:"Arial","sans-serif";color:black'>Target<o:p></o:p></span><=
/b></p></td><td width=3D72 style=3D'width:54.0pt;border:solid windowtext 1.=
0pt;border-left:none;padding:0cm 5.4pt 0cm 5.4pt;height:39.0pt'><p class=3D=
MsoNormal align=3Dcenter style=3D'text-align:center'><b><span lang=3DEN-US =
style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>Tot=
al TCs</span></b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"=
Arial","sans-serif";color:black'> <b><o:p></o:p></b></span></p></td><td wid=
th=3D72 style=3D'width:54.0pt;border:solid windowtext 1.0pt;border-left:non=
e;padding:0cm 5.4pt 0cm 5.4pt;height:39.0pt'><p class=3DMsoNormal align=3Dc=
enter style=3D'text-align:center'><b><span lang=3DEN-US style=3D'font-size:=
10.0pt;font-family:"Arial","sans-serif";color:black'>Not Run<o:p></o:p></sp=
an></b></p></td><td width=3D72 style=3D'width:54.0pt;border:solid windowtex=
t 1.0pt;border-left:none;padding:0cm 5.4pt 0cm 5.4pt;height:39.0pt'><p clas=
s=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b><span lang=3DEN=
-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'=
>Passed</span></b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:=
"Arial","sans-serif";color:black'> <b><o:p></o:p></b></span></p></td><td wi=
dth=3D89 style=3D'width:66.8pt;border:solid windowtext 1.0pt;border-left:no=
ne;padding:0cm 5.4pt 0cm 5.4pt;height:39.0pt'><p class=3DMsoNormal align=3D=
center style=3D'text-align:center'><b><span lang=3DEN-US style=3D'font-size=
:10.0pt;font-family:"Arial","sans-serif";color:black'>Failed</span></b><spa=
n lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";c=
olor:black'> <b><o:p></o:p></b></span></p></td><td width=3D85 style=3D'widt=
h:63.8pt;border:solid windowtext 1.0pt;border-left:none;padding:0cm 5.4pt 0=
cm 5.4pt;height:39.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-a=
lign:center'><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"A=
rial","sans-serif";color:black'>Not testable (Blocked)</span></b><span lang=
=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:b=
lack'> <b><o:p></o:p></b></span></p></td></tr><tr style=3D'height:15.0pt'><=
td width=3D131 style=3D'width:98.0pt;border:solid black 1.0pt;border-top:no=
ne;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3D=
center style=3D'text-align:center'><b><span lang=3DEN-US style=3D'font-size=
:10.0pt;font-family:"Arial","sans-serif";color:black'>BeagleBoard Sato<o:p>=
</o:p></span></b></p></td><td width=3D72 style=3D'width:54.0pt;border-top:n=
one;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:soli=
d windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt'><p class=3DMs=
oNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>7<o:p></=
o:p></span></p></td><td width=3D72 style=3D'width:54.0pt;border-top:none;bo=
rder-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt'><p class=3DMsoNorma=
l align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'fo=
nt-size:10.0pt;font-family:"Arial","sans-serif";color:black'>0<o:p></o:p></=
span></p></td><td width=3D72 style=3D'width:54.0pt;border-top:none;border-l=
eft:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext=
 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt'><p class=3DMsoNormal alig=
n=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-siz=
e:10.0pt;font-family:"Arial","sans-serif";color:#00B050'>7<o:p></o:p></span=
></p></td><td width=3D89 style=3D'width:66.8pt;border-top:none;border-left:=
none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0=
pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3D=
center style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10=
.0pt;font-family:"Arial","sans-serif";color:red'>0<o:p></o:p></span></p></t=
d><td width=3D85 style=3D'width:63.8pt;border-top:none;border-left:none;bor=
der-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;paddi=
ng:0cm 5.4pt 0cm 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dcenter s=
tyle=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;fon=
t-family:"Arial","sans-serif";color:red'>0<o:p></o:p></span></p></td></tr><=
tr style=3D'height:15.0pt'><td width=3D131 nowrap style=3D'width:98.0pt;bor=
der:solid windowtext 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;heig=
ht:15.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'>=
<b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-s=
erif";color:black'>Qemux86-64 Sato<o:p></o:p></span></b></p></td><td width=
=3D72 nowrap style=3D'width:54.0pt;border-top:none;border-left:none;border-=
bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0=
cm 5.4pt 0cm 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dcenter style=
=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-fa=
mily:"Arial","sans-serif";color:black'>12<o:p></o:p></span></p></td><td wid=
th=3D72 valign=3Dtop style=3D'width:54.0pt;border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:0cm 5.4pt 0cm 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dcent=
er style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt=
;font-family:"Arial","sans-serif";color:black'>0<o:p></o:p></span></p></td>=
<td width=3D72 valign=3Dtop style=3D'width:54.0pt;border-top:none;border-le=
ft:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext =
1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt'><p class=3DMsoNormal align=
=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size=
:10.0pt;font-family:"Arial","sans-serif";color:#00B050'>8<o:p></o:p></span>=
</p></td><td width=3D89 nowrap style=3D'width:66.8pt;border-top:none;border=
-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowte=
xt 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt'><p class=3DMsoNormal al=
ign=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-s=
ize:10.0pt;font-family:"Arial","sans-serif";color:red'>4 (bug 705)<o:p></o:=
p></span></p></td><td width=3D85 nowrap style=3D'width:63.8pt;border-top:no=
ne;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid=
 windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt'><p class=3DMso=
Normal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:red'>0<o:p></o:=
p></span></p></td></tr><tr style=3D'height:15.0pt'><td width=3D131 nowrap s=
tyle=3D'width:98.0pt;border:solid windowtext 1.0pt;border-top:none;padding:=
0cm 5.4pt 0cm 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dcenter styl=
e=3D'text-align:center'><b><span lang=3DEN-US style=3D'font-size:10.0pt;fon=
t-family:"Arial","sans-serif";color:black'>Qemux86-64 SDK<o:p></o:p></span>=
</b></p></td><td width=3D72 nowrap style=3D'width:54.0pt;border-top:none;bo=
rder-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt'><p class=3DMsoNorma=
l align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'fo=
nt-size:10.0pt;font-family:"Arial","sans-serif";color:black'>17<o:p></o:p><=
/span></p></td><td width=3D72 valign=3Dtop style=3D'width:54.0pt;border-top=
:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:so=
lid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt'><p class=3D=
MsoNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US sty=
le=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>0<o:p>=
</o:p></span></p></td><td width=3D72 valign=3Dtop style=3D'width:54.0pt;bor=
der-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-r=
ight:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt'><p c=
lass=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN=
-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:#00B05=
0'>17<o:p></o:p></span></p></td><td width=3D89 nowrap style=3D'width:66.8pt=
;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;bord=
er-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt'>=
<p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=
=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:r=
ed'>0<o:p></o:p></span></p></td><td width=3D85 nowrap style=3D'width:63.8pt=
;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;bord=
er-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt'>=
<p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=
=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:r=
ed'>0<o:p></o:p></span></p></td></tr><tr style=3D'height:15.0pt'><td width=
=3D131 nowrap style=3D'width:98.0pt;border:solid windowtext 1.0pt;border-to=
p:none;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt'><p class=3DMsoNormal alig=
n=3Dcenter style=3D'text-align:center'><b><span lang=3DEN-US style=3D'font-=
size:10.0pt;font-family:"Arial","sans-serif";color:black'>Qemux86 Sato<o:p>=
</o:p></span></b></p></td><td width=3D72 nowrap style=3D'width:54.0pt;borde=
r-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-rig=
ht:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt'><p cla=
ss=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-U=
S style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>1=
2<o:p></o:p></span></p></td><td width=3D72 valign=3Dtop style=3D'width:54.0=
pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;bo=
rder-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt=
'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:=
black'>0<o:p></o:p></span></p></td><td width=3D72 valign=3Dtop style=3D'wid=
th:54.0pt;border-top:none;border-left:none;border-bottom:solid windowtext 1=
.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height=
:15.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><s=
pan lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"=
;color:#00B050'>12<o:p></o:p></span></p></td><td width=3D89 nowrap style=3D=
'width:66.8pt;border-top:none;border-left:none;border-bottom:solid windowte=
xt 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;he=
ight:15.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center=
'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-se=
rif";color:red'>0<o:p></o:p></span></p></td><td width=3D85 nowrap style=3D'=
width:63.8pt;border-top:none;border-left:none;border-bottom:solid windowtex=
t 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;hei=
ght:15.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'=
><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-ser=
if";color:red'>0<o:p></o:p></span></p></td></tr><tr style=3D'height:15.0pt'=
><td width=3D131 nowrap style=3D'width:98.0pt;border:solid windowtext 1.0pt=
;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt'><p class=3DMsoN=
ormal align=3Dcenter style=3D'text-align:center'><b><span lang=3DEN-US styl=
e=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>Qemux86=
 SDK<o:p></o:p></span></b></p></td><td width=3D72 nowrap style=3D'width:54.=
0pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;b=
order-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0p=
t'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span la=
ng=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color=
:black'>17<o:p></o:p></span></p></td><td width=3D72 valign=3Dtop style=3D'w=
idth:54.0pt;border-top:none;border-left:none;border-bottom:solid windowtext=
 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;heig=
ht:15.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'>=
<span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-seri=
f";color:black'>0<o:p></o:p></span></p></td><td width=3D72 valign=3Dtop sty=
le=3D'width:54.0pt;border-top:none;border-left:none;border-bottom:solid win=
dowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4=
pt;height:15.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:c=
enter'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sa=
ns-serif";color:#00B050'>15<o:p></o:p></span></p></td><td width=3D89 nowrap=
 style=3D'width:66.8pt;border-top:none;border-left:none;border-bottom:solid=
 windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm=
 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-ali=
gn:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial"=
,"sans-serif";color:red'>2 (bug 721)<o:p></o:p></span></p></td><td width=3D=
85 nowrap style=3D'width:63.8pt;border-top:none;border-left:none;border-bot=
tom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm =
5.4pt 0cm 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dcenter style=3D=
'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-famil=
y:"Arial","sans-serif";color:red'>0<o:p></o:p></span></p></td></tr><tr styl=
e=3D'height:15.0pt'><td width=3D131 nowrap style=3D'width:98.0pt;border:sol=
id windowtext 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:15.0=
pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b><spa=
n lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";c=
olor:black'>Qemumips Sato<o:p></o:p></span></b></p></td><td width=3D72 nowr=
ap style=3D'width:54.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0=
cm 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-a=
lign:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Aria=
l","sans-serif";color:black'>12<o:p></o:p></span></p></td><td width=3D72 no=
wrap style=3D'width:54.0pt;border-top:none;border-left:none;border-bottom:s=
olid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt=
 0cm 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text=
-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Ar=
ial","sans-serif";color:black'>0<o:p></o:p></span></p></td><td width=3D72 n=
owrap style=3D'width:54.0pt;border-top:none;border-left:none;border-bottom:=
solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4p=
t 0cm 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'tex=
t-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"A=
rial","sans-serif";color:#00B050'>11<o:p></o:p></span></p></td><td width=3D=
89 nowrap style=3D'width:66.8pt;border-top:none;border-left:none;border-bot=
tom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm =
5.4pt 0cm 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dcenter style=3D=
'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-famil=
y:"Arial","sans-serif";color:red'>1 (bug 721)<o:p></o:p></span></p></td><td=
 width=3D85 nowrap style=3D'width:63.8pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pad=
ding:0cm 5.4pt 0cm 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dcenter=
 style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;f=
ont-family:"Arial","sans-serif";color:red'>0<o:p></o:p></span></p></td></tr=
><tr style=3D'height:15.0pt'><td width=3D131 nowrap style=3D'width:98.0pt;b=
order:solid windowtext 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;he=
ight:15.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center=
'><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans=
-serif";color:black'>Qemumips SDK<o:p></o:p></span></b></p></td><td width=
=3D72 nowrap style=3D'width:54.0pt;border-top:none;border-left:none;border-=
bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0=
cm 5.4pt 0cm 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dcenter style=
=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-fa=
mily:"Arial","sans-serif";color:black'>17<o:p></o:p></span></p></td><td wid=
th=3D72 nowrap style=3D'width:54.0pt;border-top:none;border-left:none;borde=
r-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding=
:0cm 5.4pt 0cm 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dcenter sty=
le=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-=
family:"Arial","sans-serif";color:black'>0<o:p></o:p></span></p></td><td wi=
dth=3D72 nowrap style=3D'width:54.0pt;border-top:none;border-left:none;bord=
er-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;paddin=
g:0cm 5.4pt 0cm 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dcenter st=
yle=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font=
-family:"Arial","sans-serif";color:#00B050'>16<o:p></o:p></span></p></td><t=
d width=3D89 nowrap style=3D'width:66.8pt;border-top:none;border-left:none;=
border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pa=
dding:0cm 5.4pt 0cm 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dcente=
r style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;=
font-family:"Arial","sans-serif";color:red'>1 (bug 721)<o:p></o:p></span></=
p></td><td width=3D85 nowrap style=3D'width:63.8pt;border-top:none;border-l=
eft:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext=
 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt'><p class=3DMsoNormal alig=
n=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-siz=
e:10.0pt;font-family:"Arial","sans-serif";color:red'>0<o:p></o:p></span></p=
></td></tr><tr style=3D'height:15.0pt'><td width=3D131 nowrap style=3D'widt=
h:98.0pt;border:solid windowtext 1.0pt;border-top:none;padding:0cm 5.4pt 0c=
m 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-al=
ign:center'><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Ar=
ial","sans-serif";color:black'>Qemuppc Sato<o:p></o:p></span></b></p></td><=
td width=3D72 nowrap style=3D'width:54.0pt;border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:0cm 5.4pt 0cm 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dcent=
er style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt=
;font-family:"Arial","sans-serif";color:black'>11<o:p></o:p></span></p></td=
><td width=3D72 nowrap style=3D'width:54.0pt;border-top:none;border-left:no=
ne;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt=
;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dce=
nter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0=
pt;font-family:"Arial","sans-serif";color:black'>0<o:p></o:p></span></p></t=
d><td width=3D72 nowrap style=3D'width:54.0pt;border-top:none;border-left:n=
one;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0p=
t;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dc=
enter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.=
0pt;font-family:"Arial","sans-serif";color:#00B050'>10<o:p></o:p></span></p=
></td><td width=3D89 nowrap style=3D'width:66.8pt;border-top:none;border-le=
ft:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext =
1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt'><p class=3DMsoNormal align=
=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size=
:10.0pt;font-family:"Arial","sans-serif";color:red'>1 (bug 722)<o:p></o:p><=
/span></p></td><td width=3D85 nowrap style=3D'width:63.8pt;border-top:none;=
border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid wi=
ndowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt'><p class=3DMsoNor=
mal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'=
font-size:10.0pt;font-family:"Arial","sans-serif";color:red'>0<o:p></o:p></=
span></p></td></tr><tr style=3D'height:15.0pt'><td width=3D131 nowrap style=
=3D'width:98.0pt;border:solid windowtext 1.0pt;border-top:none;padding:0cm =
5.4pt 0cm 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dcenter style=3D=
'text-align:center'><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-fa=
mily:"Arial","sans-serif";color:black'>Qemuppc SDK<o:p></o:p></span></b></p=
></td><td width=3D72 nowrap style=3D'width:54.0pt;border-top:none;border-le=
ft:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext =
1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt'><p class=3DMsoNormal align=
=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size=
:10.0pt;font-family:"Arial","sans-serif";color:black'>16<o:p></o:p></span><=
/p></td><td width=3D72 nowrap style=3D'width:54.0pt;border-top:none;border-=
left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtex=
t 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt'><p class=3DMsoNormal ali=
gn=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-si=
ze:10.0pt;font-family:"Arial","sans-serif";color:black'>0<o:p></o:p></span>=
</p></td><td width=3D72 nowrap style=3D'width:54.0pt;border-top:none;border=
-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowte=
xt 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt'><p class=3DMsoNormal al=
ign=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-s=
ize:10.0pt;font-family:"Arial","sans-serif";color:#00B050'>15<o:p></o:p></s=
pan></p></td><td width=3D89 nowrap style=3D'width:66.8pt;border-top:none;bo=
rder-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt'><p class=3DMsoNorma=
l align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'fo=
nt-size:10.0pt;font-family:"Arial","sans-serif";color:red'>1 (bug 722)<o:p>=
</o:p></span></p></td><td width=3D85 nowrap style=3D'width:63.8pt;border-to=
p:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:s=
olid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt'><p class=
=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US =
style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:red'>0<o:p=
></o:p></span></p></td></tr><tr style=3D'height:15.0pt'><td width=3D131 now=
rap style=3D'width:98.0pt;border:solid windowtext 1.0pt;border-top:none;pad=
ding:0cm 5.4pt 0cm 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dcenter=
 style=3D'text-align:center'><b><span lang=3DEN-US style=3D'font-size:10.0p=
t;font-family:"Arial","sans-serif";color:black'>Qemuarm Sato<o:p></o:p></sp=
an></b></p></td><td width=3D72 nowrap style=3D'width:54.0pt;border-top:none=
;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid w=
indowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt'><p class=3DMsoNo=
rmal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D=
'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>12<o:p></o:=
p></span></p></td><td width=3D72 nowrap style=3D'width:54.0pt;border-top:no=
ne;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid=
 windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt'><p class=3DMso=
Normal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>0<o:p></=
o:p></span></p></td><td width=3D72 nowrap style=3D'width:54.0pt;border-top:=
none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:sol=
id windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt'><p class=3DM=
soNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US styl=
e=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:#00B050'>12<o:=
p></o:p></span></p></td><td width=3D89 nowrap style=3D'width:66.8pt;border-=
top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right=
:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt'><p class=
=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US =
style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:red'>0<o:p=
></o:p></span></p></td><td width=3D85 nowrap style=3D'width:63.8pt;border-t=
op:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:=
solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt'><p class=
=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US =
style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:red'>0<o:p=
></o:p></span></p></td></tr><tr style=3D'height:15.0pt'><td width=3D131 now=
rap style=3D'width:98.0pt;border:solid windowtext 1.0pt;border-top:none;pad=
ding:0cm 5.4pt 0cm 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dcenter=
 style=3D'text-align:center'><b><span lang=3DEN-US style=3D'font-size:10.0p=
t;font-family:"Arial","sans-serif";color:black'>Qemuarm SDK<o:p></o:p></spa=
n></b></p></td><td width=3D72 nowrap style=3D'width:54.0pt;border-top:none;=
border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid wi=
ndowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt'><p class=3DMsoNor=
mal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'=
font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>17<o:p></o:p=
></span></p></td><td width=3D72 nowrap style=3D'width:54.0pt;border-top:non=
e;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid =
windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt'><p class=3DMsoN=
ormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>0<o:p></=
o:p></span></p></td><td width=3D72 nowrap style=3D'width:54.0pt;border-top:=
none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:sol=
id windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt'><p class=3DM=
soNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US styl=
e=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:#00B050'>17<o:=
p></o:p></span></p></td><td width=3D89 nowrap style=3D'width:66.8pt;border-=
top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right=
:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt'><p class=
=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US =
style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:red'>0<o:p=
></o:p></span></p></td><td width=3D85 nowrap style=3D'width:63.8pt;border-t=
op:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:=
solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt'><p class=
=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US =
style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:red'>0<o:p=
></o:p></span></p></td></tr><tr style=3D'height:15.0pt'><td width=3D131 now=
rap style=3D'width:98.0pt;border:solid windowtext 1.0pt;border-top:none;pad=
ding:0cm 5.4pt 0cm 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dcenter=
 style=3D'text-align:center'><b><span lang=3DEN-US style=3D'font-size:10.0p=
t;font-family:"Arial","sans-serif";color:black'>Total<o:p></o:p></span></b>=
</p></td><td width=3D72 nowrap style=3D'width:54.0pt;border-top:none;border=
-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowte=
xt 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt'><p class=3DMsoNormal al=
ign=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-s=
ize:10.0pt;font-family:"Arial","sans-serif";color:black'>150<o:p></o:p></sp=
an></p></td><td width=3D72 nowrap style=3D'width:54.0pt;border-top:none;bor=
der-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windo=
wtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt'><p class=3DMsoNormal=
 align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'fon=
t-size:10.0pt;font-family:"Arial","sans-serif";color:black'>0<o:p></o:p></s=
pan></p></td><td width=3D72 nowrap style=3D'width:54.0pt;border-top:none;bo=
rder-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt'><p class=3DMsoNorma=
l align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'fo=
nt-size:10.0pt;font-family:"Arial","sans-serif";color:black'>140<o:p></o:p>=
</span></p></td><td width=3D89 nowrap style=3D'width:66.8pt;border-top:none=
;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid w=
indowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt'><p class=3DMsoNo=
rmal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D=
'font-size:10.0pt;font-family:"Arial","sans-serif";color:red'>10<o:p></o:p>=
</span></p></td><td width=3D85 nowrap style=3D'width:63.8pt;border-top:none=
;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid w=
indowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt'><p class=3DMsoNo=
rmal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D=
'font-size:10.0pt;font-family:"Arial","sans-serif";color:red'>0<o:p></o:p><=
/span></p></td></tr></table><p class=3DMsoPlainText><span lang=3DEN-US styl=
e=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>* You can check the=
 detailed test result in attachment for each target.</span><span lang=3DEN-=
US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'><o:p></o:p><=
/span></p><p class=3DMsoPlainText><span lang=3DEN-US style=3D'font-size:10.=
0pt;font-family:"Arial","sans-serif"'>** The failed/blocked case number is =
listed with failed cases&#8217; bug number.<o:p></o:p></span></p><p class=
=3DMsoPlainText><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DM=
soPlainText><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Ar=
ial","sans-serif"'>Images<o:p></o:p></span></b></p><p class=3DMsoNormal><b>=
<span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-seri=
f"'>---------------------------------------<o:p></o:p></span></b></p><p cla=
ss=3DMsoPlainText><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:=
"Arial","sans-serif"'><a href=3D"http://autobuilder.pokylinux.org/nightly/2=
0110212-1/">http://autobuilder.pokylinux.org/nightly/20110212-1/</a><o:p></=
o:p></span></p><p class=3DMsoPlainText><span lang=3DEN-US><o:p>&nbsp;</o:p>=
</span></p><p class=3DMsoPlainText><b><span lang=3DEN-US style=3D'font-size=
:10.0pt;font-family:"Arial","sans-serif"'>Issue Summary<o:p></o:p></span></=
b></p><p class=3DMsoNormal><b><span lang=3DEN-US style=3D'font-size:10.0pt;=
font-family:"Arial","sans-serif"'>---------------------------------------<o=
:p></o:p></span></b></p><p class=3DMsoPlainText><b><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>New Bugs:<o:p></o:p>=
</span></b></p><p class=3DMsoPlainText style=3D'margin-left:18.0pt;text-ind=
ent:-18.0pt;mso-list:l2 level1 lfo1'><![if !supportLists]><span lang=3DEN-U=
S style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'><span style=
=3D'mso-list:Ignore'>1.<span style=3D'font:7.0pt "Times New Roman"'>&nbsp;&=
nbsp;&nbsp;&nbsp; </span></span></span><![endif]><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>[zypper] search fail=
ure on qemuppc (nightly build 20110212-1)<o:p></o:p></span></p><p class=3DM=
soPlainText style=3D'margin-left:18.0pt'><span lang=3DEN-US style=3D'font-s=
ize:10.0pt;font-family:"Arial","sans-serif"'>http://bugzilla.pokylinux.org/=
show_bug.cgi?id=3D722<o:p></o:p></span></p><p class=3DMsoPlainText style=3D=
'margin-left:18.0pt;text-indent:-18.0pt;mso-list:l2 level1 lfo1'><![if !sup=
portLists]><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial"=
,"sans-serif"'><span style=3D'mso-list:Ignore'>2.<span style=3D'font:7.0pt =
"Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><![endif]>=
<span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-seri=
f"'>[zypper] zypper segfault in qemux86-64 sdk image<o:p></o:p></span></p><=
p class=3DMsoPlainText style=3D'margin-left:18.0pt'><span lang=3DEN-US styl=
e=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'><a href=3D"http://b=
ugzilla.pokylinux.org/show_bug.cgi?id=3D721">http://bugzilla.pokylinux.org/=
show_bug.cgi?id=3D721</a><o:p></o:p></span></p><p class=3DMsoPlainText styl=
e=3D'margin-left:18.0pt;text-indent:-18.0pt;mso-list:l2 level1 lfo1'><![if =
!supportLists]><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Ar=
ial","sans-serif"'><span style=3D'mso-list:Ignore'>3.<span style=3D'font:7.=
0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><![end=
if]><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-=
serif"'>Missing linux kernel header files sdk-images causes posixtestsuite =
test to fail<o:p></o:p></span></p><p class=3DMsoPlainText style=3D'margin-l=
eft:18.0pt'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial=
","sans-serif"'>http://bugzilla.pokylinux.org/show_bug.cgi?id=3D714<o:p></o=
:p></span></p><p class=3DMsoPlainText><span lang=3DEN-US style=3D'font-size=
:10.0pt;font-family:"Arial","sans-serif"'><o:p>&nbsp;</o:p></span></p><p cl=
ass=3DMsoPlainText><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-fam=
ily:"Arial","sans-serif"'>Old Open Bugs:<o:p></o:p></span></b></p><p class=
=3DMsoPlainText style=3D'margin-left:18.0pt;text-indent:-18.0pt;mso-list:l1=
 level1 lfo4'><![if !supportLists]><span lang=3DEN-US style=3D'font-size:10=
.0pt;font-family:"Arial","sans-serif"'><span style=3D'mso-list:Ignore'>1.<s=
pan style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp; </span>=
</span></span><![endif]><span lang=3DEN-US style=3D'font-size:10.0pt;font-f=
amily:"Arial","sans-serif"'>[rpm/zypper] libmagic.so error when running rpm=
/zypper<o:p></o:p></span></p><p class=3DMsoPlainText style=3D'margin-left:1=
8.0pt'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sa=
ns-serif"'><a href=3D"http://bugzilla.pokylinux.org/show_bug.cgi?id=3D705">=
http://bugzilla.pokylinux.org/show_bug.cgi?id=3D705</a><o:p></o:p></span></=
p><p class=3DMsoPlainText style=3D'margin-left:18.0pt;text-indent:-18.0pt;m=
so-list:l1 level1 lfo4'><![if !supportLists]><span lang=3DEN-US style=3D'fo=
nt-size:10.0pt;font-family:"Arial","sans-serif"'><span style=3D'mso-list:Ig=
nore'>2.<span style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbs=
p; </span></span></span><![endif]><span lang=3DEN-US style=3D'font-size:10.=
0pt;font-family:"Arial","sans-serif"'>qemumips shutdown cause host console =
warning <o:p></o:p></span></p><p class=3DMsoPlainText style=3D'margin-left:=
18.0pt'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","s=
ans-serif"'><a href=3D"http://bugzilla.pokylinux.org/show_bug.cgi?id=3D322"=
>http://bugzilla.pokylinux.org/show_bug.cgi?id=3D322</a><o:p></o:p></span><=
/p><p class=3DMsoPlainText style=3D'margin-left:18.0pt;text-indent:-18.0pt;=
mso-list:l1 level1 lfo4'><![if !supportLists]><span lang=3DEN-US style=3D'f=
ont-size:10.0pt;font-family:"Arial","sans-serif"'><span style=3D'mso-list:I=
gnore'>3.<span style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nb=
sp; </span></span></span><![endif]><span lang=3DEN-US style=3D'font-size:10=
.0pt;font-family:"Arial","sans-serif"'>The bottom icons on Applications and=
 All screen are cut-off in qemu<o:p></o:p></span></p><p class=3DMsoPlainTex=
t style=3D'margin-left:18.0pt'><span lang=3DEN-US style=3D'font-size:10.0pt=
;font-family:"Arial","sans-serif"'><a href=3D"http://bugzilla.pokylinux.org=
/show_bug.cgi?id=3D658">http://bugzilla.pokylinux.org/show_bug.cgi?id=3D658=
</a><o:p></o:p></span></p><p class=3DMsoPlainText><span lang=3DEN-US><o:p>&=
nbsp;</o:p></span></p><p class=3DMsoPlainText><span lang=3DEN-US>Best Regar=
ds,<o:p></o:p></span></p><p class=3DMsoPlainText><span lang=3DEN-US>Jiajun<=
o:p></o:p></span></p></div></body></html>=

--_000_D5AB6E638E5A3E4B8F4406B113A5A19A33285BAFshsmsx501ccrcor_--

--_004_D5AB6E638E5A3E4B8F4406B113A5A19A33285BAFshsmsx501ccrcor_
Content-Type: application/oleobject;
	name="weekly-detail-testresult-20110212.ods"
Content-Description: weekly-detail-testresult-20110212.ods
Content-Disposition: attachment;
	filename="weekly-detail-testresult-20110212.ods"; size=20288;
	creation-date="Tue, 15 Feb 2011 21:36:13 GMT";
	modification-date="Tue, 15 Feb 2011 21:36:13 GMT"
Content-Transfer-Encoding: base64

UEsDBBQAAAgAAIZsTz6FbDmKLgAAAC4AAAAIAAAAbWltZXR5cGVhcHBsaWNhdGlvbi92bmQub2Fz
aXMub3BlbmRvY3VtZW50LnNwcmVhZHNoZWV0UEsDBBQAAAgAAIZsTz4AAAAAAAAAAAAAAAAaAAAA
Q29uZmlndXJhdGlvbnMyL3N0YXR1c2Jhci9QSwMEFAAICAgAhmxPPgAAAAAAAAAAAAAAACcAAABD
b25maWd1cmF0aW9uczIvYWNjZWxlcmF0b3IvY3VycmVudC54bWwDAFBLBwgAAAAAAgAAAAAAAABQ
SwMEFAAACAAAhmxPPgAAAAAAAAAAAAAAABgAAABDb25maWd1cmF0aW9uczIvZmxvYXRlci9QSwME
FAAACAAAhmxPPgAAAAAAAAAAAAAAABoAAABDb25maWd1cmF0aW9uczIvcG9wdXBtZW51L1BLAwQU
AAAIAACGbE8+AAAAAAAAAAAAAAAAHAAAAENvbmZpZ3VyYXRpb25zMi9wcm9ncmVzc2Jhci9QSwME
FAAACAAAhmxPPgAAAAAAAAAAAAAAABgAAABDb25maWd1cmF0aW9uczIvbWVudWJhci9QSwMEFAAA
CAAAhmxPPgAAAAAAAAAAAAAAABgAAABDb25maWd1cmF0aW9uczIvdG9vbGJhci9QSwMEFAAACAAA
hmxPPgAAAAAAAAAAAAAAAB8AAABDb25maWd1cmF0aW9uczIvaW1hZ2VzL0JpdG1hcHMvUEsDBBQA
CAgIAIZsTz4AAAAAAAAAAAAAAAALAAAAY29udGVudC54bWztXd2SoziavZ+nILIj5mbCaYN/0vZW
1sRuT3TExHZNzHR1d/ReTShBtukExAhIp/sV9nLfY99g32bnPUaAjY0TbIEBY3PqoqoShPRJ5+jT
J+lI+emP77alvFHumcx5flAfBw8KdXRmmM7y+eGnH7/rTR/++Pl3n9hiYep0bjA9sKnj93Tm+OJf
RXztePP47fNDwJ05I57pzR1iU2/u63PmUmf31fww9TwqK37i+RtL+vMo8eHXPn33ZT8O06a+JS/y
JUeJD782OFnLfhymFY16+PmCyX787lm9BROtbrvEN4+seLdM5/X5YeX77rzfX6/Xj+vhI+PLvjqb
zfrR28RgPUnnBtyKUhl6n1o0LMzrq49qf5fWpj6RtS9Me2iSE9gvlEs3DfHJB1RdTj2RRFQ3JKZc
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
XFHoXzgT9jv3T4GC9iUerEGlZusJYOlYPTYCsi05ZNN6paXXtfImMluBaX+pIeyvr09md9di4JOa
J81mSJpN8TEb48NHpQtp4gC6ORBE1Z1MvhiQhUdWK/dcE+tb+P37+u5N24nWDjQdXSaseYxctNLW
raE4BRYWUtGsjRRdTnGKt5dkQTPFW4iuhLf4RaIYJdmZZfKFwiPf3uin9/BWeh+zofeJGPDT6y3T
17EWwGWX29Sk13rplKLaMwl+Bc2YdHHISHUoTvImKJttWJzy7SDg3PMzSgv/fL5dQpWktaWq91DZ
RAiSHHd5Z5UNMvh1HQuLBaqh9UrTZnbDIjGNs7+TBYQp9ezu7u5Grw5mI3ElSSupyNJNHCL8hB61
n2tteJpQufQ3zJbsw7pMzQwhrzBWU0GwKmVqpwp6zY+bXPs2u2W8w7NmzbPiPOKxxpoptKWzlZcp
HfFJUCRJP7+qOaIkqTTES11FOnsM3XrSo+fHnEjjjzPohjIxDG1iaoatztjP3//jdxOT/mHYmSaM
ePYjRShNLTCNqXUxNaxc8SYIlXU8GK4UvUjInzTNrq+LhOnYQfDH7HjHPn9jz78JY+fKMmyoYfdB
S9yPalmQVl3SRt8IY2tDgYhBlEKjiBe2yW1XQRifwdXkALqVsqsCto1a/O9Pf1NKMuTUlqyIzWpv
ic5TMCaLQVMW6c37pt78v+TM/g9QSwcIpmOimTgLAABlZwAAUEsDBBQAAAgAAIZsTz5DcH7IKwQA
ACsEAAAIAAAAbWV0YS54bWw8P3htbCB2ZXJzaW9uPSIxLjAiIGVuY29kaW5nPSJVVEYtOCI/Pgo8
b2ZmaWNlOmRvY3VtZW50LW1ldGEgeG1sbnM6b2ZmaWNlPSJ1cm46b2FzaXM6bmFtZXM6dGM6b3Bl
bmRvY3VtZW50OnhtbG5zOm9mZmljZToxLjAiIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9y
Zy8xOTk5L3hsaW5rIiB4bWxuczpkYz0iaHR0cDovL3B1cmwub3JnL2RjL2VsZW1lbnRzLzEuMS8i
IHhtbG5zOm1ldGE9InVybjpvYXNpczpuYW1lczp0YzpvcGVuZG9jdW1lbnQ6eG1sbnM6bWV0YTox
LjAiIHhtbG5zOm9vbz0iaHR0cDovL29wZW5vZmZpY2Uub3JnLzIwMDQvb2ZmaWNlIiB4bWxuczpn
cmRkbD0iaHR0cDovL3d3dy53My5vcmcvMjAwMy9nL2RhdGEtdmlldyMiIG9mZmljZTp2ZXJzaW9u
PSIxLjIiIGdyZGRsOnRyYW5zZm9ybWF0aW9uPSJodHRwOi8vZG9jcy5vYXNpcy1vcGVuLm9yZy9v
ZmZpY2UvMS4yL3hzbHQvb2RmMnJkZi54c2wiPjxvZmZpY2U6bWV0YT48bWV0YTppbml0aWFsLWNy
ZWF0b3I+TWFydGluIEhhdmxhdDwvbWV0YTppbml0aWFsLWNyZWF0b3I+PGRjOnRpdGxlPlRlc3RM
aW5rPC9kYzp0aXRsZT48ZGM6ZGF0ZT4yMDExLTAyLTE1VDIxOjM2OjEzLjI0PC9kYzpkYXRlPjxt
ZXRhOmdlbmVyYXRvcj5PcGVuT2ZmaWNlLm9yZy8zLjIkV2luMzIgT3Blbk9mZmljZS5vcmdfcHJv
amVjdC8zMjBtMTgkQnVpbGQtOTUwMjwvbWV0YTpnZW5lcmF0b3I+PG1ldGE6ZWRpdGluZy1kdXJh
dGlvbj5QVDAxSDQ3TTQ3UzwvbWV0YTplZGl0aW5nLWR1cmF0aW9uPjxtZXRhOmVkaXRpbmctY3lj
bGVzPjk8L21ldGE6ZWRpdGluZy1jeWNsZXM+PG1ldGE6ZG9jdW1lbnQtc3RhdGlzdGljIG1ldGE6
dGFibGUtY291bnQ9IjExIiBtZXRhOmNlbGwtY291bnQ9IjYxNiIgbWV0YTpvYmplY3QtY291bnQ9
IjAiLz48bWV0YTp1c2VyLWRlZmluZWQgbWV0YTpuYW1lPSJjb3B5cmlnaHQiPkdOVTwvbWV0YTp1
c2VyLWRlZmluZWQ+PG1ldGE6dXNlci1kZWZpbmVkIG1ldGE6bmFtZT0icm9ib3RzIj5OT0ZPTExP
VzwvbWV0YTp1c2VyLWRlZmluZWQ+PC9vZmZpY2U6bWV0YT48L29mZmljZTpkb2N1bWVudC1tZXRh
PlBLAwQUAAgICACGbE8+AAAAAAAAAAAAAAAAGAAAAFRodW1ibmFpbHMvdGh1bWJuYWlsLnBuZ4V4
VVRc0bJt4x4kSPAEaVyDBHfppnFJ8OAuAULjENylm+AW3D14cHcLBHeH4G6XnHPHG+/njbd/qnbt
uWTUqlqzaoepKMnhYJJhAgAAHJC8tNqLnAYAEADoiC+atOlYJwBAeQySltBwSzvSF6ouBhPalSwT
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

--_004_D5AB6E638E5A3E4B8F4406B113A5A19A33285BAFshsmsx501ccrcor_--
