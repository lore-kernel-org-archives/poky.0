Return-Path: <jiajun.xu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9EBEF4C81062
	for <poky@pokylinux.org>; Fri, 24 Dec 2010 10:46:30 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 24 Dec 2010 08:46:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,224,1291622400"; 
	d="xml'?ods'72,48?png'72,48,150?scan'72,48,150,72,217,208,150,48";
	a="366234402"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by azsmga001.ch.intel.com with ESMTP; 24 Dec 2010 08:46:27 -0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Sat, 25 Dec 2010 00:46:25 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Sat, 25 Dec 2010 00:46:24 +0800
From: "Xu, Jiajun" <jiajun.xu@intel.com>
To: "poky@pokylinux.org" <poky@pokylinux.org>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Sat, 25 Dec 2010 00:46:22 +0800
Thread-Topic: Fullpass Test Report for Yocto M2 20101218 Build
Thread-Index: AcujihjCIuaDH2pxTG+IAhRLP+uNSg==
Message-ID: <D5AB6E638E5A3E4B8F4406B113A5A19A319A5838@shsmsx501.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 24 Dec 2010 10:48:26 -0600
Subject: Fullpass Test Report for Yocto M2 20101218 Build
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
X-List-Received-Date: Fri, 24 Dec 2010 16:46:32 -0000
X-Groupsio-MsgNum: 1736
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_004_D5AB6E638E5A3E4B8F4406B113A5A19A319A5838shsmsx501ccrcor_"

--_004_D5AB6E638E5A3E4B8F4406B113A5A19A319A5838shsmsx501ccrcor_
Content-Type: multipart/alternative;
	boundary="_000_D5AB6E638E5A3E4B8F4406B113A5A19A319A5838shsmsx501ccrcor_"

--_000_D5AB6E638E5A3E4B8F4406B113A5A19A319A5838shsmsx501ccrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all,

       This is the Fullpass Test Report for M2 20101218 build. QA finished =
testing for all target platforms. There are 3 new bugs found compared with =
sanity test for the same build. With the 6 bugs found in sanity testing, th=
ere are totally 9 bugs exposed with this build. 10 old open bugs still exis=
ts in this testing and cause some cases failure. And 3 bugs verified as fix=
ed. mpc8315e-rdb testing is BLOCKED because of no image built out. Toolchai=
n is found a link issue. Audio/Video cannot work on blacksand and netbook. =
Wifi cannot be enabled in connman.



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

2 (bug #598, #599)

0

Netbook SDK

74

0

52

22 (bug #491, #498, #603, #616, #615, #172, #169)

0

eMenlow Minimal

27

0

16

11 (bug #608, #503)

0

Blacksand SDK

65

0

48

17 (bug #607, #491, #498, #613, #615, #616, #172, #169)

0

Routerstationpro SDK

28

0

24

4 (bug #169, #172, #490)

0

BeagleBoard Sato

11

0

11

0

0

BeagleBoard SDK

16

0

14

2 (bug #169, #172)

0

Mpc8315e-rdb SDK

28

28

0

0

28 (bug #610)

Qemux86-64 Sato

19

0

19

0

0

Qemux86-64 SDK

26

0

24

2 (bug #169, #172)

0

Qemux86 Sato

19

0

19

0

0

Qemux86 SDK

26

0

24

2 (bug #169, #172)

0

Qemumips Sato

19

0

17

2 (bug #490)

0

Qemumips SDK

26

0

20

6 (bug #169, #172, #490, #604)

0

Qemuppc Sato

17

0

11

6 (bug #443)

0

Qemuppc SDK

24

0

14

10 (bug #169, #172, #443, #604)

0

Qemuarm Sato

19

0

16

3 (bug #489, #490, #491)

0

Qemuarm SDK

26

0

19

7 (bug #169, #172, #489, #490, #491, #604)

0

Total

472

28

348

96

28


* You can check the detailed test result in attachment for each target.

** The failed/blocked case number is listed with failed cases' bug number.



Images
---------------------------------------

http://autobuilder.pokylinux.org/milestone/20101218-1/



Issue Summary
---------------------------------------

New Bugs:

1.     [multimedia] No sound from machine when playing audio files

http://bugzilla.pokylinux.org/show_bug.cgi?id=3D616

2.     [multimedia] video player reports error when open video files

http://bugzilla.pokylinux.org/show_bug.cgi?id=3D615

3.     [Blacksand]system cannot enter S3 standby mode

http://bugzilla.pokylinux.org/show_bug.cgi?id=3D613

4.     no rootfs and dtb file in qemumpc8315e-rdb milestone build

http://bugzilla.pokylinux.org/show_bug.cgi?id=3D610

5.     [RouterStation] The timestamp of new file created under /home/root d=
oesn't correct after adjusting the time

http://bugzilla.pokylinux.org/show_bug.cgi?id=3D609

6.     [rpm/zypper] remove_packaging_data_files makes rpm/zypper install/re=
move not work in minimal image

http://bugzilla.pokylinux.org/show_bug.cgi?id=3D608

7.     [Blacksand] Some error information prompted when run dmesg command

http://bugzilla.pokylinux.org/show_bug.cgi?id=3D607

8.     [toolchain]Build c program failed with arm toolchain

http://bugzilla.pokylinux.org/show_bug.cgi?id=3D604

9.     [Netbook]Connection preferences did not enable wireless networks

http://bugzilla.pokylinux.org/show_bug.cgi?id=3D603



Old Open Bugs:

1.     [zypper] uname -m and repo arch difference

http://bugzilla.pokylinux.org/show_bug.cgi?id=3D489

2.     [zypper] installation failure on arm

http://bugzilla.pokylinux.org/show_bug.cgi?id=3D490

3.     [zypper] package removal failure

http://bugzilla.pokylinux.org/show_bug.cgi?id=3D491

4.     zypper encounter segfault when startup with qemuppc

http://bugzilla.pokylinux.org/show_bug.cgi?id=3D443

5.     qemumips shutdown cause host console warning

http://bugzilla.pokylinux.org/show_bug.cgi?id=3D322

6.     [poky] kernel interactive build does not work via ssh

http://bugzilla.pokylinux.org/show_bug.cgi?id=3D598

7.     [poky] qemu running with KVM needs root permission

http://bugzilla.pokylinux.org/show_bug.cgi?id=3D599

8.     [LTP] LTP default test suite cannot fully pass

http://bugzilla.pokylinux.org/show_bug.cgi?id=3D169

9.     [POSIX] POSIX default test suite cannot fully pass

http://bugzilla.pokylinux.org/show_bug.cgi?id=3D172

10.  [emenlow] system cannot enter S3 standby mode

http://bugzilla.pokylinux.org/show_bug.cgi?id=3D503



Verified Fixed Bugs:

1.     [Netbook] Installer no response after loading from live image

http://bugzilla.pokylinux.org/show_bug.cgi?id=3D566

2.     PPC is failing to build

http://bugzilla.pokylinux.org/show_bug.cgi?id=3D585

3.     [Netbook]In S3 mode,system reboot automatically when try resume back

http://bugzilla.pokylinux.org/show_bug.cgi?id=3D502



Best Regards,

Jiajun

--_000_D5AB6E638E5A3E4B8F4406B113A5A19A319A5838shsmsx501ccrcor_
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
	{mso-list-id:59600875;
	mso-list-type:hybrid;
	mso-list-template-ids:-1744638734 -1010503572 67698713 67698715 67698703 6=
7698713 67698715 67698703 67698713 67698715;}
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
	{mso-list-id:612322206;
	mso-list-type:hybrid;
	mso-list-template-ids:-11128028 -420938426 67698713 67698715 67698703 6769=
8713 67698715 67698703 67698713 67698715;}
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
	{mso-list-id:1841964040;
	mso-list-type:hybrid;
	mso-list-template-ids:529457922 1075864276 67698713 67698715 67698703 6769=
8713 67698715 67698703 67698713 67698715;}
@list l3:level1
	{mso-level-start-at:6;
	mso-level-tab-stop:none;
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
sans-serif"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; This is the Fullpass Test=
 Report for M2 20101218 build. QA finished testing for all target platforms=
. There are 3 new bugs found compared with sanity test for the same build. =
With the 6 bugs found in sanity testing, there are totally 9 bugs exposed w=
ith this build. 10 old open bugs still exists in this testing and cause som=
e cases failure. And 3 bugs verified as fixed. mpc8315e-rdb testing is BLOC=
KED because of no image built out. Toolchain is found a link issue. Audio/V=
ideo cannot work on blacksand and netbook. Wifi cannot be enabled in connma=
n. <o:p></o:p></span></p><p class=3DMsoPlainText><span lang=3DEN-US><o:p>&n=
bsp;</o:p></span></p><p class=3DMsoPlainText><b><span lang=3DEN-US style=3D=
'font-size:10.0pt;font-family:"Arial","sans-serif"'>Test Summary<o:p></o:p>=
</span></b></p><p class=3DMsoNormal><b><span lang=3DEN-US style=3D'font-siz=
e:10.0pt;font-family:"Arial","sans-serif"'>--------------------------------=
-------<o:p></o:p></span></b></p><table class=3DMsoNormalTable border=3D0 c=
ellspacing=3D0 cellpadding=3D0 width=3D808 style=3D'width:606.0pt;margin-le=
ft:-1.15pt;border-collapse:collapse'><tr style=3D'height:26.25pt'><td width=
=3D181 nowrap style=3D'width:136.0pt;border:solid windowtext 1.0pt;padding:=
0cm 5.4pt 0cm 5.4pt;height:26.25pt'><p class=3DMsoNormal align=3Dcenter sty=
le=3D'text-align:center'><b><span lang=3DEN-US style=3D'font-size:10.0pt;fo=
nt-family:"Arial","sans-serif";color:black'>Target<o:p></o:p></span></b></p=
></td><td width=3D72 style=3D'width:54.0pt;border:solid windowtext 1.0pt;bo=
rder-left:none;padding:0cm 5.4pt 0cm 5.4pt;height:26.25pt'><p class=3DMsoNo=
rmal align=3Dcenter style=3D'text-align:center'><b><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>Total TC=
s</span></b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial=
","sans-serif";color:black'> <b><o:p></o:p></b></span></p></td><td width=3D=
72 style=3D'width:54.0pt;border:solid windowtext 1.0pt;border-left:none;pad=
ding:0cm 5.4pt 0cm 5.4pt;height:26.25pt'><p class=3DMsoNormal align=3Dcente=
r style=3D'text-align:center'><b><span lang=3DEN-US style=3D'font-size:10.0=
pt;font-family:"Arial","sans-serif";color:black'>Not Run<o:p></o:p></span><=
/b></p></td><td width=3D72 style=3D'width:54.0pt;border:solid windowtext 1.=
0pt;border-left:none;padding:0cm 5.4pt 0cm 5.4pt;height:26.25pt'><p class=
=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b><span lang=3DEN-=
US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>=
Passed</span></b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"=
Arial","sans-serif";color:black'> <b><o:p></o:p></b></span></p></td><td wid=
th=3D312 style=3D'width:234.0pt;border:solid windowtext 1.0pt;border-left:n=
one;padding:0cm 5.4pt 0cm 5.4pt;height:26.25pt'><p class=3DMsoNormal align=
=3Dcenter style=3D'text-align:center'><b><span lang=3DEN-US style=3D'font-s=
ize:10.0pt;font-family:"Arial","sans-serif";color:black'>Failed</span></b><=
span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif=
";color:black'> <b><o:p></o:p></b></span></p></td><td width=3D99 style=3D'w=
idth:74.0pt;border:solid windowtext 1.0pt;border-left:none;padding:0cm 5.4p=
t 0cm 5.4pt;height:26.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'te=
xt-align:center'><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-famil=
y:"Arial","sans-serif";color:black'>Not testable (Blocked)</span></b><span =
lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";col=
or:black'> <b><o:p></o:p></b></span></p></td></tr><tr style=3D'height:13.5p=
t'><td width=3D181 nowrap style=3D'width:136.0pt;border:solid windowtext 1.=
0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:13.5pt'><p class=3DM=
soNormal align=3Dcenter style=3D'text-align:center'><b><span lang=3DEN-US s=
tyle=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>Poky=
 build system<o:p></o:p></span></b></p></td><td width=3D72 style=3D'width:5=
4.0pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt=
;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:13.=
5pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span =
lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";col=
or:black'>2<o:p></o:p></span></p></td><td width=3D72 style=3D'width:54.0pt;=
border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;borde=
r-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:13.5pt'><=
p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=
=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:b=
lack'>0<o:p></o:p></span></p></td><td width=3D72 style=3D'width:54.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:13.5pt'><p cl=
ass=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-=
US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:#00B050=
'>0<o:p></o:p></span></p></td><td width=3D312 style=3D'width:234.0pt;border=
-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-righ=
t:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:13.5pt'><p clas=
s=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US=
 style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:red'>2 (b=
ug #598, #599)<o:p></o:p></span></p></td><td width=3D99 style=3D'width:74.0=
pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;bo=
rder-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:13.5pt=
'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:=
red'>0<o:p></o:p></span></p></td></tr><tr style=3D'height:13.5pt'><td width=
=3D181 nowrap style=3D'width:136.0pt;border:solid windowtext 1.0pt;border-t=
op:none;padding:0cm 5.4pt 0cm 5.4pt;height:13.5pt'><p class=3DMsoNormal ali=
gn=3Dcenter style=3D'text-align:center'><b><span lang=3DEN-US style=3D'font=
-size:10.0pt;font-family:"Arial","sans-serif";color:black'>Netbook SDK<o:p>=
</o:p></span></b></p></td><td width=3D72 style=3D'width:54.0pt;border-top:n=
one;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:soli=
d windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:13.5pt'><p class=3DMs=
oNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>74<o:p><=
/o:p></span></p></td><td width=3D72 style=3D'width:54.0pt;border-top:none;b=
order-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid win=
dowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:13.5pt'><p class=3DMsoNorm=
al align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'f=
ont-size:10.0pt;font-family:"Arial","sans-serif";color:black'>0<o:p></o:p><=
/span></p></td><td width=3D72 style=3D'width:54.0pt;border-top:none;border-=
left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtex=
t 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:13.5pt'><p class=3DMsoNormal ali=
gn=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-si=
ze:10.0pt;font-family:"Arial","sans-serif";color:#00B050'>52<o:p></o:p></sp=
an></p></td><td width=3D312 style=3D'width:234.0pt;border-top:none;border-l=
eft:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext=
 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:13.5pt'><p class=3DMsoNormal alig=
n=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-siz=
e:10.0pt;font-family:"Arial","sans-serif";color:red'>22 (bug #491, #498, #6=
03, #616, #615, #172, #169)<o:p></o:p></span></p></td><td width=3D99 style=
=3D'width:74.0pt;border-top:none;border-left:none;border-bottom:solid windo=
wtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt=
;height:13.5pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:cen=
ter'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans=
-serif";color:red'>0<o:p></o:p></span></p></td></tr><tr style=3D'height:13.=
5pt'><td width=3D181 nowrap style=3D'width:136.0pt;border:solid windowtext =
1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:13.5pt'><p class=
=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b><span lang=3DEN-=
US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>=
eMenlow Minimal<o:p></o:p></span></b></p></td><td width=3D72 style=3D'width=
:54.0pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0=
pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:1=
3.5pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><spa=
n lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";c=
olor:black'>27<o:p></o:p></span></p></td><td width=3D72 style=3D'width:54.0=
pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;bo=
rder-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:13.5pt=
'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:=
black'>0<o:p></o:p></span></p></td><td width=3D72 style=3D'width:54.0pt;bor=
der-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-r=
ight:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:13.5pt'><p c=
lass=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN=
-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:#00B05=
0'>16<o:p></o:p></span></p></td><td width=3D312 style=3D'width:234.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:13.5pt'><p cl=
ass=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-=
US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:red'>11=
 (bug #608, #503)<o:p></o:p></span></p></td><td width=3D99 style=3D'width:7=
4.0pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt=
;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:13.=
5pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span =
lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";col=
or:red'>0<o:p></o:p></span></p></td></tr><tr style=3D'height:26.25pt'><td w=
idth=3D181 nowrap style=3D'width:136.0pt;border:solid windowtext 1.0pt;bord=
er-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:26.25pt'><p class=3DMsoNorma=
l align=3Dcenter style=3D'text-align:center'><b><span lang=3DEN-US style=3D=
'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>Blacksand S=
DK<o:p></o:p></span></b></p></td><td width=3D72 style=3D'width:54.0pt;borde=
r-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-rig=
ht:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:26.25pt'><p cl=
ass=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-=
US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>=
65<o:p></o:p></span></p></td><td width=3D72 style=3D'width:54.0pt;border-to=
p:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:s=
olid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:26.25pt'><p class=
=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US =
style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>0<o=
:p></o:p></span></p></td><td width=3D72 style=3D'width:54.0pt;border-top:no=
ne;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid=
 windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:26.25pt'><p class=3DMs=
oNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:#00B050'>48<o:p=
></o:p></span></p></td><td width=3D312 style=3D'width:234.0pt;border-top:no=
ne;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid=
 windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:26.25pt'><p class=3DMs=
oNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:red'>17 (bug #6=
07, #491, #498, #613, #615, #616, #172, #169)<o:p></o:p></span></p></td><td=
 width=3D99 style=3D'width:74.0pt;border-top:none;border-left:none;border-b=
ottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0c=
m 5.4pt 0cm 5.4pt;height:26.25pt'><p class=3DMsoNormal align=3Dcenter style=
=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-fa=
mily:"Arial","sans-serif";color:red'>0<o:p></o:p></span></p></td></tr><tr s=
tyle=3D'height:13.5pt'><td width=3D181 nowrap style=3D'width:136.0pt;border=
:solid windowtext 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:=
13.5pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b>=
<span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-seri=
f";color:black'>Routerstationpro SDK<o:p></o:p></span></b></p></td><td widt=
h=3D72 style=3D'width:54.0pt;border-top:none;border-left:none;border-bottom=
:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4=
pt 0cm 5.4pt;height:13.5pt'><p class=3DMsoNormal align=3Dcenter style=3D'te=
xt-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"=
Arial","sans-serif";color:black'>28<o:p></o:p></span></p></td><td width=3D7=
2 style=3D'width:54.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0c=
m 5.4pt;height:13.5pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-al=
ign:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial=
","sans-serif";color:black'>0<o:p></o:p></span></p></td><td width=3D72 styl=
e=3D'width:54.0pt;border-top:none;border-left:none;border-bottom:solid wind=
owtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4p=
t;height:13.5pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:ce=
nter'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","san=
s-serif";color:#00B050'>24<o:p></o:p></span></p></td><td width=3D312 style=
=3D'width:234.0pt;border-top:none;border-left:none;border-bottom:solid wind=
owtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4p=
t;height:13.5pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:ce=
nter'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","san=
s-serif";color:red'>4 (bug #169, #172, #490)<o:p></o:p></span></p></td><td =
width=3D99 style=3D'width:74.0pt;border-top:none;border-left:none;border-bo=
ttom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm=
 5.4pt 0cm 5.4pt;height:13.5pt'><p class=3DMsoNormal align=3Dcenter style=
=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-fa=
mily:"Arial","sans-serif";color:red'>0<o:p></o:p></span></p></td></tr><tr s=
tyle=3D'height:13.5pt'><td width=3D181 style=3D'width:136.0pt;border:solid =
black 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:13.5pt'><p c=
lass=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b><span lang=
=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:b=
lack'>BeagleBoard Sato<o:p></o:p></span></b></p></td><td width=3D72 style=
=3D'width:54.0pt;border-top:none;border-left:none;border-bottom:solid windo=
wtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt=
;height:13.5pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:cen=
ter'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans=
-serif";color:black'>11<o:p></o:p></span></p></td><td width=3D72 style=3D'w=
idth:54.0pt;border-top:none;border-left:none;border-bottom:solid windowtext=
 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;heig=
ht:13.5pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'>=
<span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-seri=
f";color:black'>0<o:p></o:p></span></p></td><td width=3D72 style=3D'width:5=
4.0pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt=
;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:13.=
5pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span =
lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";col=
or:#00B050'>11<o:p></o:p></span></p></td><td width=3D312 style=3D'width:234=
.0pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;=
border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:13.5=
pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span l=
ang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";colo=
r:red'>0<o:p></o:p></span></p></td><td width=3D99 style=3D'width:74.0pt;bor=
der-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-r=
ight:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:13.5pt'><p c=
lass=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN=
-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:red'>0=
<o:p></o:p></span></p></td></tr><tr style=3D'height:13.5pt'><td width=3D181=
 style=3D'width:136.0pt;border:solid black 1.0pt;border-top:none;padding:0c=
m 5.4pt 0cm 5.4pt;height:13.5pt'><p class=3DMsoNormal align=3Dcenter style=
=3D'text-align:center'><b><span lang=3DEN-US style=3D'font-size:10.0pt;font=
-family:"Arial","sans-serif";color:black'>BeagleBoard SDK<o:p></o:p></span>=
</b></p></td><td width=3D72 style=3D'width:54.0pt;border-top:none;border-le=
ft:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext =
1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:13.5pt'><p class=3DMsoNormal align=
=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size=
:10.0pt;font-family:"Arial","sans-serif";color:black'>16<o:p></o:p></span><=
/p></td><td width=3D72 style=3D'width:54.0pt;border-top:none;border-left:no=
ne;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt=
;padding:0cm 5.4pt 0cm 5.4pt;height:13.5pt'><p class=3DMsoNormal align=3Dce=
nter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0=
pt;font-family:"Arial","sans-serif";color:black'>0<o:p></o:p></span></p></t=
d><td width=3D72 style=3D'width:54.0pt;border-top:none;border-left:none;bor=
der-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;paddi=
ng:0cm 5.4pt 0cm 5.4pt;height:13.5pt'><p class=3DMsoNormal align=3Dcenter s=
tyle=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;fon=
t-family:"Arial","sans-serif";color:#00B050'>14<o:p></o:p></span></p></td><=
td width=3D312 style=3D'width:234.0pt;border-top:none;border-left:none;bord=
er-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;paddin=
g:0cm 5.4pt 0cm 5.4pt;height:13.5pt'><p class=3DMsoNormal align=3Dcenter st=
yle=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font=
-family:"Arial","sans-serif";color:red'>2 (bug #169, #172)<o:p></o:p></span=
></p></td><td width=3D99 style=3D'width:74.0pt;border-top:none;border-left:=
none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0=
pt;padding:0cm 5.4pt 0cm 5.4pt;height:13.5pt'><p class=3DMsoNormal align=3D=
center style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10=
.0pt;font-family:"Arial","sans-serif";color:red'>0<o:p></o:p></span></p></t=
d></tr><tr style=3D'height:13.5pt'><td width=3D181 style=3D'width:136.0pt;b=
order:solid black 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:=
13.5pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b>=
<span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-seri=
f";color:black'>Mpc8315e-rdb SDK<o:p></o:p></span></b></p></td><td width=3D=
72 style=3D'width:54.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0=
cm 5.4pt;height:13.5pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-a=
lign:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Aria=
l","sans-serif";color:black'>28<o:p></o:p></span></p></td><td width=3D72 st=
yle=3D'width:54.0pt;border-top:none;border-left:none;border-bottom:solid wi=
ndowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.=
4pt;height:13.5pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:=
center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","s=
ans-serif";color:black'>28<o:p></o:p></span></p></td><td width=3D72 style=
=3D'width:54.0pt;border-top:none;border-left:none;border-bottom:solid windo=
wtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt=
;height:13.5pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:cen=
ter'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans=
-serif";color:#00B050'>0<o:p></o:p></span></p></td><td width=3D312 style=3D=
'width:234.0pt;border-top:none;border-left:none;border-bottom:solid windowt=
ext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;h=
eight:13.5pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:cente=
r'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-s=
erif";color:red'>0<o:p></o:p></span></p></td><td width=3D99 style=3D'width:=
74.0pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0p=
t;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:13=
.5pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span=
 lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";co=
lor:red'>28 (bug #610)<o:p></o:p></span></p></td></tr><tr style=3D'height:1=
3.5pt'><td width=3D181 nowrap style=3D'width:136.0pt;border:solid windowtex=
t 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:13.5pt'><p class=
=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b><span lang=3DEN-=
US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>=
Qemux86-64 Sato<o:p></o:p></span></b></p></td><td width=3D72 nowrap style=
=3D'width:54.0pt;border-top:none;border-left:none;border-bottom:solid windo=
wtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt=
;height:13.5pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:cen=
ter'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans=
-serif";color:black'>19<o:p></o:p></span></p></td><td width=3D72 valign=3Dt=
op style=3D'width:54.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0=
cm 5.4pt;height:13.5pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-a=
lign:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Aria=
l","sans-serif";color:black'>0<o:p></o:p></span></p></td><td width=3D72 val=
ign=3Dtop style=3D'width:54.0pt;border-top:none;border-left:none;border-bot=
tom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm =
5.4pt 0cm 5.4pt;height:13.5pt'><p class=3DMsoNormal align=3Dcenter style=3D=
'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-famil=
y:"Arial","sans-serif";color:#00B050'>19<o:p></o:p></span></p></td><td widt=
h=3D312 nowrap style=3D'width:234.0pt;border-top:none;border-left:none;bord=
er-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;paddin=
g:0cm 5.4pt 0cm 5.4pt;height:13.5pt'><p class=3DMsoNormal align=3Dcenter st=
yle=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font=
-family:"Arial","sans-serif";color:red'>0<o:p></o:p></span></p></td><td wid=
th=3D99 nowrap style=3D'width:74.0pt;border-top:none;border-left:none;borde=
r-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding=
:0cm 5.4pt 0cm 5.4pt;height:13.5pt'><p class=3DMsoNormal align=3Dcenter sty=
le=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-=
family:"Arial","sans-serif";color:red'>0<o:p></o:p></span></p></td></tr><tr=
 style=3D'height:13.5pt'><td width=3D181 nowrap style=3D'width:136.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;heigh=
t:13.5pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><=
b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-se=
rif";color:black'>Qemux86-64 SDK<o:p></o:p></span></b></p></td><td width=3D=
72 nowrap style=3D'width:54.0pt;border-top:none;border-left:none;border-bot=
tom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm =
5.4pt 0cm 5.4pt;height:13.5pt'><p class=3DMsoNormal align=3Dcenter style=3D=
'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-famil=
y:"Arial","sans-serif";color:black'>26<o:p></o:p></span></p></td><td width=
=3D72 valign=3Dtop style=3D'width:54.0pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pad=
ding:0cm 5.4pt 0cm 5.4pt;height:13.5pt'><p class=3DMsoNormal align=3Dcenter=
 style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;f=
ont-family:"Arial","sans-serif";color:black'>0<o:p></o:p></span></p></td><t=
d width=3D72 valign=3Dtop style=3D'width:54.0pt;border-top:none;border-left=
:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.=
0pt;padding:0cm 5.4pt 0cm 5.4pt;height:13.5pt'><p class=3DMsoNormal align=
=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size=
:10.0pt;font-family:"Arial","sans-serif";color:#00B050'>24<o:p></o:p></span=
></p></td><td width=3D312 nowrap style=3D'width:234.0pt;border-top:none;bor=
der-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windo=
wtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:13.5pt'><p class=3DMsoNormal=
 align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'fon=
t-size:10.0pt;font-family:"Arial","sans-serif";color:red'>2 (bug #169, #172=
)<o:p></o:p></span></p></td><td width=3D99 nowrap style=3D'width:74.0pt;bor=
der-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-r=
ight:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:13.5pt'><p c=
lass=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN=
-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:red'>0=
<o:p></o:p></span></p></td></tr><tr style=3D'height:13.5pt'><td width=3D181=
 nowrap style=3D'width:136.0pt;border:solid windowtext 1.0pt;border-top:non=
e;padding:0cm 5.4pt 0cm 5.4pt;height:13.5pt'><p class=3DMsoNormal align=3Dc=
enter style=3D'text-align:center'><b><span lang=3DEN-US style=3D'font-size:=
10.0pt;font-family:"Arial","sans-serif";color:black'>Qemux86 Sato<o:p></o:p=
></span></b></p></td><td width=3D72 nowrap style=3D'width:54.0pt;border-top=
:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:so=
lid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:13.5pt'><p class=3D=
MsoNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US sty=
le=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>19<o:p=
></o:p></span></p></td><td width=3D72 valign=3Dtop style=3D'width:54.0pt;bo=
rder-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-=
right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:13.5pt'><p =
class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=3DE=
N-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black=
'>0<o:p></o:p></span></p></td><td width=3D72 valign=3Dtop style=3D'width:54=
.0pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;=
border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:13.5=
pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span l=
ang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";colo=
r:#00B050'>19<o:p></o:p></span></p></td><td width=3D312 nowrap style=3D'wid=
th:234.0pt;border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;heigh=
t:13.5pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><=
span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif=
";color:red'>0<o:p></o:p></span></p></td><td width=3D99 nowrap style=3D'wid=
th:74.0pt;border-top:none;border-left:none;border-bottom:solid windowtext 1=
.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height=
:13.5pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><s=
pan lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"=
;color:red'>0<o:p></o:p></span></p></td></tr><tr style=3D'height:13.5pt'><t=
d width=3D181 nowrap style=3D'width:136.0pt;border:solid windowtext 1.0pt;b=
order-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:13.5pt'><p class=3DMsoNor=
mal align=3Dcenter style=3D'text-align:center'><b><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>Qemux86 =
SDK<o:p></o:p></span></b></p></td><td width=3D72 nowrap style=3D'width:54.0=
pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;bo=
rder-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:13.5pt=
'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:=
black'>26<o:p></o:p></span></p></td><td width=3D72 valign=3Dtop style=3D'wi=
dth:54.0pt;border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;heigh=
t:13.5pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><=
span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif=
";color:black'>0<o:p></o:p></span></p></td><td width=3D72 valign=3Dtop styl=
e=3D'width:54.0pt;border-top:none;border-left:none;border-bottom:solid wind=
owtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4p=
t;height:13.5pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:ce=
nter'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","san=
s-serif";color:#00B050'>24<o:p></o:p></span></p></td><td width=3D312 nowrap=
 style=3D'width:234.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0c=
m 5.4pt;height:13.5pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-al=
ign:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial=
","sans-serif";color:red'>2 (bug #169, #172)<o:p></o:p></span></p></td><td =
width=3D99 valign=3Dtop style=3D'width:74.0pt;border-top:none;border-left:n=
one;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0p=
t;padding:0cm 5.4pt 0cm 5.4pt;height:13.5pt'><p class=3DMsoNormal align=3Dc=
enter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.=
0pt;font-family:"Arial","sans-serif";color:red'>0<o:p></o:p></span></p></td=
></tr><tr style=3D'height:13.5pt'><td width=3D181 nowrap style=3D'width:136=
.0pt;border:solid windowtext 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.=
4pt;height:13.5pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:=
center'><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial"=
,"sans-serif";color:black'>Qemumips Sato<o:p></o:p></span></b></p></td><td =
width=3D72 nowrap style=3D'width:54.0pt;border-top:none;border-left:none;bo=
rder-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padd=
ing:0cm 5.4pt 0cm 5.4pt;height:13.5pt'><p class=3DMsoNormal align=3Dcenter =
style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;fo=
nt-family:"Arial","sans-serif";color:black'>19<o:p></o:p></span></p></td><t=
d width=3D72 nowrap style=3D'width:54.0pt;border-top:none;border-left:none;=
border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pa=
dding:0cm 5.4pt 0cm 5.4pt;height:13.5pt'><p class=3DMsoNormal align=3Dcente=
r style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;=
font-family:"Arial","sans-serif";color:black'>0<o:p></o:p></span></p></td><=
td width=3D72 nowrap style=3D'width:54.0pt;border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:0cm 5.4pt 0cm 5.4pt;height:13.5pt'><p class=3DMsoNormal align=3Dcent=
er style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt=
;font-family:"Arial","sans-serif";color:#00B050'>17<o:p></o:p></span></p></=
td><td width=3D312 nowrap style=3D'width:234.0pt;border-top:none;border-lef=
t:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1=
.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:13.5pt'><p class=3DMsoNormal align=
=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size=
:10.0pt;font-family:"Arial","sans-serif";color:red'>2 (bug #490)<o:p></o:p>=
</span></p></td><td width=3D99 nowrap style=3D'width:74.0pt;border-top:none=
;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid w=
indowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:13.5pt'><p class=3DMsoNo=
rmal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D=
'font-size:10.0pt;font-family:"Arial","sans-serif";color:red'>0<o:p></o:p><=
/span></p></td></tr><tr style=3D'height:13.5pt'><td width=3D181 nowrap styl=
e=3D'width:136.0pt;border:solid windowtext 1.0pt;border-top:none;padding:0c=
m 5.4pt 0cm 5.4pt;height:13.5pt'><p class=3DMsoNormal align=3Dcenter style=
=3D'text-align:center'><b><span lang=3DEN-US style=3D'font-size:10.0pt;font=
-family:"Arial","sans-serif";color:black'>Qemumips SDK<o:p></o:p></span></b=
></p></td><td width=3D72 nowrap style=3D'width:54.0pt;border-top:none;borde=
r-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowt=
ext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:13.5pt'><p class=3DMsoNormal a=
lign=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-=
size:10.0pt;font-family:"Arial","sans-serif";color:black'>26<o:p></o:p></sp=
an></p></td><td width=3D72 nowrap style=3D'width:54.0pt;border-top:none;bor=
der-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windo=
wtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:13.5pt'><p class=3DMsoNormal=
 align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'fon=
t-size:10.0pt;font-family:"Arial","sans-serif";color:black'>0<o:p></o:p></s=
pan></p></td><td width=3D72 nowrap style=3D'width:54.0pt;border-top:none;bo=
rder-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:13.5pt'><p class=3DMsoNorma=
l align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'fo=
nt-size:10.0pt;font-family:"Arial","sans-serif";color:#00B050'>20<o:p></o:p=
></span></p></td><td width=3D312 nowrap style=3D'width:234.0pt;border-top:n=
one;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:soli=
d windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:13.5pt'><p class=3DMs=
oNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:red'>6 (bug #16=
9, #172, #490, #604)<o:p></o:p></span></p></td><td width=3D99 nowrap style=
=3D'width:74.0pt;border-top:none;border-left:none;border-bottom:solid windo=
wtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt=
;height:13.5pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:cen=
ter'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans=
-serif";color:red'>0<o:p></o:p></span></p></td></tr><tr style=3D'height:13.=
5pt'><td width=3D181 nowrap style=3D'width:136.0pt;border:solid windowtext =
1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:13.5pt'><p class=
=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b><span lang=3DEN-=
US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>=
Qemuppc Sato<o:p></o:p></span></b></p></td><td width=3D72 nowrap style=3D'w=
idth:54.0pt;border-top:none;border-left:none;border-bottom:solid windowtext=
 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;heig=
ht:13.5pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'>=
<span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-seri=
f";color:black'>17<o:p></o:p></span></p></td><td width=3D72 nowrap style=3D=
'width:54.0pt;border-top:none;border-left:none;border-bottom:solid windowte=
xt 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;he=
ight:13.5pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center=
'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-se=
rif";color:black'>0<o:p></o:p></span></p></td><td width=3D72 nowrap style=
=3D'width:54.0pt;border-top:none;border-left:none;border-bottom:solid windo=
wtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt=
;height:13.5pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:cen=
ter'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans=
-serif";color:#00B050'>11<o:p></o:p></span></p></td><td width=3D312 nowrap =
style=3D'width:234.0pt;border-top:none;border-left:none;border-bottom:solid=
 windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm=
 5.4pt;height:13.5pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-ali=
gn:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial"=
,"sans-serif";color:red'>6 (bug #443)<o:p></o:p></span></p></td><td width=
=3D99 nowrap style=3D'width:74.0pt;border-top:none;border-left:none;border-=
bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0=
cm 5.4pt 0cm 5.4pt;height:13.5pt'><p class=3DMsoNormal align=3Dcenter style=
=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-fa=
mily:"Arial","sans-serif";color:red'>0<o:p></o:p></span></p></td></tr><tr s=
tyle=3D'height:13.5pt'><td width=3D181 nowrap style=3D'width:136.0pt;border=
:solid windowtext 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:=
13.5pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b>=
<span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-seri=
f";color:black'>Qemuppc SDK<o:p></o:p></span></b></p></td><td width=3D72 no=
wrap style=3D'width:54.0pt;border-top:none;border-left:none;border-bottom:s=
olid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt=
 0cm 5.4pt;height:13.5pt'><p class=3DMsoNormal align=3Dcenter style=3D'text=
-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Ar=
ial","sans-serif";color:black'>24<o:p></o:p></span></p></td><td width=3D72 =
nowrap style=3D'width:54.0pt;border-top:none;border-left:none;border-bottom=
:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4=
pt 0cm 5.4pt;height:13.5pt'><p class=3DMsoNormal align=3Dcenter style=3D'te=
xt-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"=
Arial","sans-serif";color:black'>0<o:p></o:p></span></p></td><td width=3D72=
 nowrap style=3D'width:54.0pt;border-top:none;border-left:none;border-botto=
m:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.=
4pt 0cm 5.4pt;height:13.5pt'><p class=3DMsoNormal align=3Dcenter style=3D't=
ext-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:=
"Arial","sans-serif";color:#00B050'>14<o:p></o:p></span></p></td><td width=
=3D312 nowrap style=3D'width:234.0pt;border-top:none;border-left:none;borde=
r-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding=
:0cm 5.4pt 0cm 5.4pt;height:13.5pt'><p class=3DMsoNormal align=3Dcenter sty=
le=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-=
family:"Arial","sans-serif";color:red'>10 (bug #169, #172, #443, #604)<o:p>=
</o:p></span></p></td><td width=3D99 nowrap style=3D'width:74.0pt;border-to=
p:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:s=
olid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:13.5pt'><p class=
=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US =
style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:red'>0<o:p=
></o:p></span></p></td></tr><tr style=3D'height:13.5pt'><td width=3D181 now=
rap style=3D'width:136.0pt;border:solid windowtext 1.0pt;border-top:none;pa=
dding:0cm 5.4pt 0cm 5.4pt;height:13.5pt'><p class=3DMsoNormal align=3Dcente=
r style=3D'text-align:center'><b><span lang=3DEN-US style=3D'font-size:10.0=
pt;font-family:"Arial","sans-serif";color:black'>Qemuarm Sato<o:p></o:p></s=
pan></b></p></td><td width=3D72 nowrap style=3D'width:54.0pt;border-top:non=
e;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid =
windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:13.5pt'><p class=3DMsoN=
ormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>19<o:p><=
/o:p></span></p></td><td width=3D72 nowrap style=3D'width:54.0pt;border-top=
:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:so=
lid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:13.5pt'><p class=3D=
MsoNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US sty=
le=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>0<o:p>=
</o:p></span></p></td><td width=3D72 nowrap style=3D'width:54.0pt;border-to=
p:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:s=
olid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:13.5pt'><p class=
=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US =
style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:#00B050'>1=
6<o:p></o:p></span></p></td><td width=3D312 nowrap style=3D'width:234.0pt;b=
order-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border=
-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:13.5pt'><p=
 class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=3D=
EN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:red'=
>3 (bug #489, #490, #491)<o:p></o:p></span></p></td><td width=3D99 nowrap s=
tyle=3D'width:74.0pt;border-top:none;border-left:none;border-bottom:solid w=
indowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5=
.4pt;height:13.5pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align=
:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","=
sans-serif";color:red'>0<o:p></o:p></span></p></td></tr><tr style=3D'height=
:13.5pt'><td width=3D181 nowrap style=3D'width:136.0pt;border:solid windowt=
ext 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:13.5pt'><p cla=
ss=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b><span lang=3DE=
N-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black=
'>Qemuarm SDK<o:p></o:p></span></b></p></td><td width=3D72 nowrap style=3D'=
width:54.0pt;border-top:none;border-left:none;border-bottom:solid windowtex=
t 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;hei=
ght:13.5pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'=
><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-ser=
if";color:black'>26<o:p></o:p></span></p></td><td width=3D72 nowrap style=
=3D'width:54.0pt;border-top:none;border-left:none;border-bottom:solid windo=
wtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt=
;height:13.5pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:cen=
ter'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans=
-serif";color:black'>0<o:p></o:p></span></p></td><td width=3D72 nowrap styl=
e=3D'width:54.0pt;border-top:none;border-left:none;border-bottom:solid wind=
owtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4p=
t;height:13.5pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:ce=
nter'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","san=
s-serif";color:#00B050'>19<o:p></o:p></span></p></td><td width=3D312 nowrap=
 style=3D'width:234.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0c=
m 5.4pt;height:13.5pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-al=
ign:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial=
","sans-serif";color:red'>7 (bug #169, #172, #489, #490, #491, #604)<o:p></=
o:p></span></p></td><td width=3D99 nowrap style=3D'width:74.0pt;border-top:=
none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:sol=
id windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:13.5pt'><p class=3DM=
soNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US styl=
e=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:red'>0<o:p></o=
:p></span></p></td></tr><tr style=3D'height:13.5pt'><td width=3D181 nowrap =
style=3D'width:136.0pt;border:solid windowtext 1.0pt;border-top:none;paddin=
g:0cm 5.4pt 0cm 5.4pt;height:13.5pt'><p class=3DMsoNormal align=3Dcenter st=
yle=3D'text-align:center'><b><span lang=3DEN-US style=3D'font-size:10.0pt;f=
ont-family:"Arial","sans-serif";color:black'>Total<o:p></o:p></span></b></p=
></td><td width=3D72 nowrap style=3D'width:54.0pt;border-top:none;border-le=
ft:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext =
1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:13.5pt'><p class=3DMsoNormal align=
=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size=
:10.0pt;font-family:"Arial","sans-serif";color:black'>472<o:p></o:p></span>=
</p></td><td width=3D72 nowrap style=3D'width:54.0pt;border-top:none;border=
-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowte=
xt 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:13.5pt'><p class=3DMsoNormal al=
ign=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-s=
ize:10.0pt;font-family:"Arial","sans-serif";color:black'>28<o:p></o:p></spa=
n></p></td><td width=3D72 nowrap style=3D'width:54.0pt;border-top:none;bord=
er-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid window=
text 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:13.5pt'><p class=3DMsoNormal =
align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'font=
-size:10.0pt;font-family:"Arial","sans-serif";color:black'>348<o:p></o:p></=
span></p></td><td width=3D312 nowrap style=3D'width:234.0pt;border-top:none=
;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid w=
indowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:13.5pt'><p class=3DMsoNo=
rmal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D=
'font-size:10.0pt;font-family:"Arial","sans-serif";color:red'>96<o:p></o:p>=
</span></p></td><td width=3D99 nowrap style=3D'width:74.0pt;border-top:none=
;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid w=
indowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:13.5pt'><p class=3DMsoNo=
rmal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D=
'font-size:10.0pt;font-family:"Arial","sans-serif";color:red'>28<o:p></o:p>=
</span></p></td></tr></table><p class=3DMsoPlainText><span lang=3DEN-US sty=
le=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>* You can check th=
e detailed test result in attachment for each target.<o:p></o:p></span></p>=
<p class=3DMsoPlainText><span lang=3DEN-US style=3D'font-size:10.0pt;font-f=
amily:"Arial","sans-serif"'>** The failed/blocked case number is listed wit=
h failed cases&#8217; bug number.<o:p></o:p></span></p><p class=3DMsoPlainT=
ext><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoPlainText>=
<b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-s=
erif"'>Images<o:p></o:p></span></b></p><p class=3DMsoNormal><b><span lang=
=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>------=
---------------------------------<o:p></o:p></span></b></p><p class=3DMsoPl=
ainText><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","s=
ans-serif"'><a href=3D"http://autobuilder.pokylinux.org/milestone/20101218-=
1/">http://autobuilder.pokylinux.org/milestone/20101218-1/</a><o:p></o:p></=
span></p><p class=3DMsoPlainText><span lang=3DEN-US><o:p>&nbsp;</o:p></span=
></p><p class=3DMsoPlainText><b><span lang=3DEN-US style=3D'font-size:10.0p=
t;font-family:"Arial","sans-serif"'>Issue Summary<o:p></o:p></span></b></p>=
<p class=3DMsoNormal><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-f=
amily:"Arial","sans-serif"'>---------------------------------------<o:p></o=
:p></span></b></p><p class=3DMsoPlainText><b><span lang=3DEN-US style=3D'fo=
nt-size:10.0pt;font-family:"Arial","sans-serif"'>New Bugs:<o:p></o:p></span=
></b></p><p class=3DMsoPlainText style=3D'margin-left:18.0pt;text-indent:-1=
8.0pt;mso-list:l2 level1 lfo1'><![if !supportLists]><span lang=3DEN-US styl=
e=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'><span style=3D'mso-=
list:Ignore'>1.<span style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nb=
sp;&nbsp; </span></span></span><![endif]><span lang=3DEN-US style=3D'font-s=
ize:10.0pt;font-family:"Arial","sans-serif"'>[multimedia] No sound from mac=
hine when playing audio files<o:p></o:p></span></p><p class=3DMsoPlainText =
style=3D'margin-left:18.0pt'><span lang=3DEN-US style=3D'font-size:10.0pt;f=
ont-family:"Arial","sans-serif"'><a href=3D"http://bugzilla.pokylinux.org/s=
how_bug.cgi?id=3D616">http://bugzilla.pokylinux.org/show_bug.cgi?id=3D616</=
a><o:p></o:p></span></p><p class=3DMsoPlainText style=3D'margin-left:18.0pt=
;text-indent:-18.0pt;mso-list:l2 level1 lfo1'><![if !supportLists]><span la=
ng=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'><spa=
n style=3D'mso-list:Ignore'>2.<span style=3D'font:7.0pt "Times New Roman"'>=
&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><span lang=3DEN-US =
style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>[multimedia] vi=
deo player reports error when open video files<o:p></o:p></span></p><p clas=
s=3DMsoPlainText style=3D'margin-left:18.0pt'><span lang=3DEN-US style=3D'f=
ont-size:10.0pt;font-family:"Arial","sans-serif"'><a href=3D"http://bugzill=
a.pokylinux.org/show_bug.cgi?id=3D615">http://bugzilla.pokylinux.org/show_b=
ug.cgi?id=3D615</a><o:p></o:p></span></p><p class=3DMsoPlainText style=3D'm=
argin-left:18.0pt;text-indent:-18.0pt;mso-list:l2 level1 lfo1'><![if !suppo=
rtLists]><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","=
sans-serif"'><span style=3D'mso-list:Ignore'>3.<span style=3D'font:7.0pt "T=
imes New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><s=
pan lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"=
'>[Blacksand]system cannot enter S3 standby mode<o:p></o:p></span></p><p cl=
ass=3DMsoPlainText style=3D'margin-left:18.0pt'><span lang=3DEN-US style=3D=
'font-size:10.0pt;font-family:"Arial","sans-serif"'>http://bugzilla.pokylin=
ux.org/show_bug.cgi?id=3D613<o:p></o:p></span></p><p class=3DMsoPlainText s=
tyle=3D'margin-left:18.0pt;text-indent:-18.0pt;mso-list:l2 level1 lfo1'><![=
if !supportLists]><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:=
"Arial","sans-serif"'><span style=3D'mso-list:Ignore'>4.<span style=3D'font=
:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><![=
endif]><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sa=
ns-serif"'>no rootfs and dtb file in qemumpc8315e-rdb milestone build<o:p><=
/o:p></span></p><p class=3DMsoPlainText style=3D'margin-left:18.0pt'><span =
lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'><a=
 href=3D"http://bugzilla.pokylinux.org/show_bug.cgi?id=3D610">http://bugzil=
la.pokylinux.org/show_bug.cgi?id=3D610</a><o:p></o:p></span></p><p class=3D=
MsoPlainText style=3D'margin-left:18.0pt;text-indent:-18.0pt;mso-list:l2 le=
vel1 lfo1'><![if !supportLists]><span lang=3DEN-US style=3D'font-size:10.0p=
t;font-family:"Arial","sans-serif"'><span style=3D'mso-list:Ignore'>5.<span=
 style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp; </span></s=
pan></span><![endif]><span lang=3DEN-US style=3D'font-size:10.0pt;font-fami=
ly:"Arial","sans-serif"'>[RouterStation] The timestamp of new file created =
under /home/root doesn't correct after adjusting the time<o:p></o:p></span>=
</p><p class=3DMsoPlainText style=3D'margin-left:18.0pt'><span lang=3DEN-US=
 style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'><a href=3D"htt=
p://bugzilla.pokylinux.org/show_bug.cgi?id=3D609">http://bugzilla.pokylinux=
.org/show_bug.cgi?id=3D609</a><o:p></o:p></span></p><p class=3DMsoPlainText=
 style=3D'margin-left:18.0pt;text-indent:-18.0pt;mso-list:l2 level1 lfo1'><=
![if !supportLists]><span lang=3DEN-US style=3D'font-size:10.0pt;font-famil=
y:"Arial","sans-serif"'><span style=3D'mso-list:Ignore'>6.<span style=3D'fo=
nt:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><=
![endif]><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","=
sans-serif"'>[rpm/zypper] remove_packaging_data_files makes rpm/zypper inst=
all/remove not work in minimal image<o:p></o:p></span></p><p class=3DMsoPla=
inText style=3D'margin-left:18.0pt'><span lang=3DEN-US style=3D'font-size:1=
0.0pt;font-family:"Arial","sans-serif"'><a href=3D"http://bugzilla.pokylinu=
x.org/show_bug.cgi?id=3D608">http://bugzilla.pokylinux.org/show_bug.cgi?id=
=3D608</a><o:p></o:p></span></p><p class=3DMsoPlainText style=3D'margin-lef=
t:18.0pt;text-indent:-18.0pt;mso-list:l2 level1 lfo1'><![if !supportLists]>=
<span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-seri=
f"'><span style=3D'mso-list:Ignore'>7.<span style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><span lang=
=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>[Black=
sand] Some error information prompted when run dmesg command<o:p></o:p></sp=
an></p><p class=3DMsoPlainText style=3D'margin-left:18.0pt'><span lang=3DEN=
-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'><a href=3D"=
http://bugzilla.pokylinux.org/show_bug.cgi?id=3D607">http://bugzilla.pokyli=
nux.org/show_bug.cgi?id=3D607</a><o:p></o:p></span></p><p class=3DMsoPlainT=
ext style=3D'margin-left:18.0pt;text-indent:-18.0pt;mso-list:l2 level1 lfo1=
'><![if !supportLists]><span lang=3DEN-US style=3D'font-size:10.0pt;font-fa=
mily:"Arial","sans-serif"'><span style=3D'mso-list:Ignore'>8.<span style=3D=
'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp; </span></span></spa=
n><![endif]><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial=
","sans-serif"'>[toolchain]Build c program failed with arm toolchain<o:p></=
o:p></span></p><p class=3DMsoPlainText style=3D'margin-left:18.0pt'><span l=
ang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'><a =
href=3D"http://bugzilla.pokylinux.org/show_bug.cgi?id=3D604">http://bugzill=
a.pokylinux.org/show_bug.cgi?id=3D604</a><o:p></o:p></span></p><p class=3DM=
soPlainText style=3D'margin-left:18.0pt;text-indent:-18.0pt;mso-list:l2 lev=
el1 lfo1'><![if !supportLists]><span lang=3DEN-US style=3D'font-size:10.0pt=
;font-family:"Arial","sans-serif"'><span style=3D'mso-list:Ignore'>9.<span =
style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp; </span></sp=
an></span><![endif]><span lang=3DEN-US style=3D'font-size:10.0pt;font-famil=
y:"Arial","sans-serif"'>[Netbook]Connection preferences did not enable wire=
less networks<o:p></o:p></span></p><p class=3DMsoPlainText style=3D'margin-=
left:18.0pt'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Aria=
l","sans-serif"'><a href=3D"http://bugzilla.pokylinux.org/show_bug.cgi?id=
=3D603">http://bugzilla.pokylinux.org/show_bug.cgi?id=3D603</a><o:p></o:p><=
/span></p><p class=3DMsoPlainText><span lang=3DEN-US style=3D'font-size:10.=
0pt;font-family:"Arial","sans-serif"'><o:p>&nbsp;</o:p></span></p><p class=
=3DMsoPlainText><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family=
:"Arial","sans-serif"'>Old Open Bugs:<o:p></o:p></span></b></p><p class=3DM=
soPlainText style=3D'margin-left:18.0pt;text-indent:-18.0pt;mso-list:l1 lev=
el1 lfo2'><![if !supportLists]><span lang=3DEN-US style=3D'font-size:10.0pt=
;font-family:"Arial","sans-serif"'><span style=3D'mso-list:Ignore'>1.<span =
style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp; </span></sp=
an></span><![endif]><span lang=3DEN-US style=3D'font-size:10.0pt;font-famil=
y:"Arial","sans-serif"'>[zypper] uname -m and repo arch difference<o:p></o:=
p></span></p><p class=3DMsoPlainText style=3D'margin-left:18.0pt'><span lan=
g=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'><a hr=
ef=3D"http://bugzilla.pokylinux.org/show_bug.cgi?id=3D489">http://bugzilla.=
pokylinux.org/show_bug.cgi?id=3D489</a><o:p></o:p></span></p><p class=3DMso=
PlainText style=3D'margin-left:18.0pt;text-indent:-18.0pt;mso-list:l1 level=
1 lfo2'><![if !supportLists]><span lang=3DEN-US style=3D'font-size:10.0pt;f=
ont-family:"Arial","sans-serif"'><span style=3D'mso-list:Ignore'>2.<span st=
yle=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp; </span></span=
></span><![endif]><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:=
"Arial","sans-serif"'>[zypper] installation failure on arm<o:p></o:p></span=
></p><p class=3DMsoPlainText style=3D'margin-left:18.0pt'><span lang=3DEN-U=
S style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'><a href=3D"ht=
tp://bugzilla.pokylinux.org/show_bug.cgi?id=3D490">http://bugzilla.pokylinu=
x.org/show_bug.cgi?id=3D490</a><o:p></o:p></span></p><p class=3DMsoPlainTex=
t style=3D'margin-left:18.0pt;text-indent:-18.0pt;mso-list:l1 level1 lfo2'>=
<![if !supportLists]><span lang=3DEN-US style=3D'font-size:10.0pt;font-fami=
ly:"Arial","sans-serif"'><span style=3D'mso-list:Ignore'>3.<span style=3D'f=
ont:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span>=
<![endif]><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial",=
"sans-serif"'>[zypper] package removal failure<o:p></o:p></span></p><p clas=
s=3DMsoPlainText style=3D'margin-left:18.0pt'><span lang=3DEN-US style=3D'f=
ont-size:10.0pt;font-family:"Arial","sans-serif"'><a href=3D"http://bugzill=
a.pokylinux.org/show_bug.cgi?id=3D491">http://bugzilla.pokylinux.org/show_b=
ug.cgi?id=3D491</a><o:p></o:p></span></p><p class=3DMsoPlainText style=3D'm=
argin-left:18.0pt;text-indent:-18.0pt;mso-list:l1 level1 lfo2'><![if !suppo=
rtLists]><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","=
sans-serif"'><span style=3D'mso-list:Ignore'>4.<span style=3D'font:7.0pt "T=
imes New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><s=
pan lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"=
'>zypper encounter segfault when startup with qemuppc<o:p></o:p></span></p>=
<p class=3DMsoPlainText style=3D'margin-left:18.0pt'><span lang=3DEN-US sty=
le=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'><a href=3D"http://=
bugzilla.pokylinux.org/show_bug.cgi?id=3D443">http://bugzilla.pokylinux.org=
/show_bug.cgi?id=3D443</a><o:p></o:p></span></p><p class=3DMsoPlainText sty=
le=3D'margin-left:18.0pt;text-indent:-18.0pt;mso-list:l1 level1 lfo2'><![if=
 !supportLists]><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"A=
rial","sans-serif"'><span style=3D'mso-list:Ignore'>5.<span style=3D'font:7=
.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><![en=
dif]><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans=
-serif"'>qemumips shutdown cause host console warning<o:p></o:p></span></p>=
<p class=3DMsoPlainText style=3D'margin-left:18.0pt'><span lang=3DEN-US sty=
le=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'><a href=3D"http://=
bugzilla.pokylinux.org/show_bug.cgi?id=3D322">http://bugzilla.pokylinux.org=
/show_bug.cgi?id=3D322</a><o:p></o:p></span></p><p class=3DMsoPlainText sty=
le=3D'margin-left:18.0pt;text-indent:-18.0pt;mso-list:l3 level1 lfo3'><![if=
 !supportLists]><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"A=
rial","sans-serif"'><span style=3D'mso-list:Ignore'>6.<span style=3D'font:7=
.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><![en=
dif]><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans=
-serif"'>[poky] kernel interactive build does not work via ssh<o:p></o:p></=
span></p><p class=3DMsoPlainText style=3D'text-indent:18.0pt'><span lang=3D=
EN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'><a href=
=3D"http://bugzilla.pokylinux.org/show_bug.cgi?id=3D598">http://bugzilla.po=
kylinux.org/show_bug.cgi?id=3D598</a><o:p></o:p></span></p><p class=3DMsoPl=
ainText style=3D'margin-left:18.0pt;text-indent:-18.0pt;mso-list:l3 level1 =
lfo3'><![if !supportLists]><span lang=3DEN-US style=3D'font-size:10.0pt;fon=
t-family:"Arial","sans-serif"'><span style=3D'mso-list:Ignore'>7.<span styl=
e=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp; </span></span><=
/span><![endif]><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"A=
rial","sans-serif"'>[poky] qemu running with KVM needs root permission<o:p>=
</o:p></span></p><p class=3DMsoPlainText style=3D'text-indent:18.0pt'><span=
 lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'><=
a href=3D"http://bugzilla.pokylinux.org/show_bug.cgi?id=3D599">http://bugzi=
lla.pokylinux.org/show_bug.cgi?id=3D599</a><o:p></o:p></span></p><p class=
=3DMsoPlainText style=3D'margin-left:18.0pt;text-indent:-18.0pt;mso-list:l3=
 level1 lfo3'><![if !supportLists]><span lang=3DEN-US style=3D'font-size:10=
.0pt;font-family:"Arial","sans-serif"'><span style=3D'mso-list:Ignore'>8.<s=
pan style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp; </span>=
</span></span><![endif]><span lang=3DEN-US style=3D'font-size:10.0pt;font-f=
amily:"Arial","sans-serif"'>[LTP] LTP default test suite cannot fully pass<=
o:p></o:p></span></p><p class=3DMsoPlainText style=3D'text-indent:18.0pt'><=
span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif=
"'>http://bugzilla.pokylinux.org/show_bug.cgi?id=3D169<o:p></o:p></span></p=
><p class=3DMsoPlainText style=3D'margin-left:18.0pt;text-indent:-18.0pt;ms=
o-list:l3 level1 lfo3'><![if !supportLists]><span lang=3DEN-US style=3D'fon=
t-size:10.0pt;font-family:"Arial","sans-serif"'><span style=3D'mso-list:Ign=
ore'>9.<span style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp=
; </span></span></span><![endif]><span lang=3DEN-US style=3D'font-size:10.0=
pt;font-family:"Arial","sans-serif"'>[POSIX] POSIX default test suite canno=
t fully pass <o:p></o:p></span></p><p class=3DMsoPlainText style=3D'text-in=
dent:18.0pt'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Aria=
l","sans-serif"'><a href=3D"http://bugzilla.pokylinux.org/show_bug.cgi?id=
=3D172">http://bugzilla.pokylinux.org/show_bug.cgi?id=3D172</a><o:p></o:p><=
/span></p><p class=3DMsoPlainText style=3D'margin-left:18.0pt;text-indent:-=
18.0pt;mso-list:l3 level1 lfo3'><![if !supportLists]><span lang=3DEN-US sty=
le=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'><span style=3D'mso=
-list:Ignore'>10.<span style=3D'font:7.0pt "Times New Roman"'>&nbsp; </span=
></span></span><![endif]><span lang=3DEN-US style=3D'font-size:10.0pt;font-=
family:"Arial","sans-serif"'>[emenlow] system cannot enter S3 standby mode<=
o:p></o:p></span></p><p class=3DMsoPlainText style=3D'margin-left:18.0pt'><=
span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif=
"'>http://bugzilla.pokylinux.org/show_bug.cgi?id=3D503<o:p></o:p></span></p=
><p class=3DMsoPlainText><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoPlainText><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-f=
amily:"Arial","sans-serif"'>Verified Fixed Bugs:<o:p></o:p></span></b></p><=
p class=3DMsoPlainText style=3D'margin-left:18.0pt;text-indent:-18.0pt;mso-=
list:l0 level1 lfo4'><![if !supportLists]><span lang=3DEN-US style=3D'font-=
size:10.0pt;font-family:"Arial","sans-serif"'><span style=3D'mso-list:Ignor=
e'>1.<span style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp; =
</span></span></span><![endif]><span lang=3DEN-US style=3D'font-size:10.0pt=
;font-family:"Arial","sans-serif"'>[Netbook] Installer no response after lo=
ading from live image<o:p></o:p></span></p><p class=3DMsoPlainText style=3D=
'margin-left:18.0pt'><span lang=3DEN-US style=3D'font-size:10.0pt;font-fami=
ly:"Arial","sans-serif"'><a href=3D"http://bugzilla.pokylinux.org/show_bug.=
cgi?id=3D566">http://bugzilla.pokylinux.org/show_bug.cgi?id=3D566</a><o:p><=
/o:p></span></p><p class=3DMsoPlainText style=3D'margin-left:18.0pt;text-in=
dent:-18.0pt;mso-list:l0 level1 lfo4'><![if !supportLists]><span lang=3DEN-=
US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'><span style=
=3D'mso-list:Ignore'>2.<span style=3D'font:7.0pt "Times New Roman"'>&nbsp;&=
nbsp;&nbsp;&nbsp; </span></span></span><![endif]><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>PPC is failing to bu=
ild<o:p></o:p></span></p><p class=3DMsoPlainText style=3D'margin-left:18.0p=
t'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-s=
erif"'><a href=3D"http://bugzilla.pokylinux.org/show_bug.cgi?id=3D585">http=
://bugzilla.pokylinux.org/show_bug.cgi?id=3D585</a><o:p></o:p></span></p><p=
 class=3DMsoPlainText style=3D'margin-left:18.0pt;text-indent:-18.0pt;mso-l=
ist:l0 level1 lfo4'><![if !supportLists]><span lang=3DEN-US style=3D'font-s=
ize:10.0pt;font-family:"Arial","sans-serif"'><span style=3D'mso-list:Ignore=
'>3.<span style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp; <=
/span></span></span><![endif]><span lang=3DEN-US style=3D'font-size:10.0pt;=
font-family:"Arial","sans-serif"'>[Netbook]In S3 mode,system reboot automat=
ically when try resume back<o:p></o:p></span></p><p class=3DMsoPlainText st=
yle=3D'margin-left:18.0pt'><span lang=3DEN-US style=3D'font-size:10.0pt;fon=
t-family:"Arial","sans-serif"'>http://bugzilla.pokylinux.org/show_bug.cgi?i=
d=3D502<o:p></o:p></span></p><p class=3DMsoPlainText><span lang=3DEN-US><o:=
p>&nbsp;</o:p></span></p><p class=3DMsoPlainText><span lang=3DEN-US>Best Re=
gards,<o:p></o:p></span></p><p class=3DMsoPlainText><span lang=3DEN-US>Jiaj=
un<o:p></o:p></span></p></div></body></html>=

--_000_D5AB6E638E5A3E4B8F4406B113A5A19A319A5838shsmsx501ccrcor_--

--_004_D5AB6E638E5A3E4B8F4406B113A5A19A319A5838shsmsx501ccrcor_
Content-Type: application/oleobject; name="detail-testresult.ods"
Content-Description: detail-testresult.ods
Content-Disposition: attachment; filename="detail-testresult.ods"; size=23689;
	creation-date="Wed, 22 Dec 2010 11:13:31 GMT";
	modification-date="Sat, 25 Dec 2010 00:26:45 GMT"
Content-Transfer-Encoding: base64

UEsDBBQAAAgAAFaDmD2FbDmKLgAAAC4AAAAIAAAAbWltZXR5cGVhcHBsaWNhdGlvbi92bmQub2Fz
aXMub3BlbmRvY3VtZW50LnNwcmVhZHNoZWV0UEsDBBQAAAgAAFaDmD0AAAAAAAAAAAAAAAAaAAAA
Q29uZmlndXJhdGlvbnMyL3N0YXR1c2Jhci9QSwMEFAAICAgAVoOYPQAAAAAAAAAAAAAAACcAAABD
b25maWd1cmF0aW9uczIvYWNjZWxlcmF0b3IvY3VycmVudC54bWwDAFBLBwgAAAAAAgAAAAAAAABQ
SwMEFAAACAAAVoOYPQAAAAAAAAAAAAAAABgAAABDb25maWd1cmF0aW9uczIvZmxvYXRlci9QSwME
FAAACAAAVoOYPQAAAAAAAAAAAAAAABoAAABDb25maWd1cmF0aW9uczIvcG9wdXBtZW51L1BLAwQU
AAAIAABWg5g9AAAAAAAAAAAAAAAAHAAAAENvbmZpZ3VyYXRpb25zMi9wcm9ncmVzc2Jhci9QSwME
FAAACAAAVoOYPQAAAAAAAAAAAAAAABgAAABDb25maWd1cmF0aW9uczIvbWVudWJhci9QSwMEFAAA
CAAAVoOYPQAAAAAAAAAAAAAAABgAAABDb25maWd1cmF0aW9uczIvdG9vbGJhci9QSwMEFAAACAAA
VoOYPQAAAAAAAAAAAAAAAB8AAABDb25maWd1cmF0aW9uczIvaW1hZ2VzL0JpdG1hcHMvUEsDBBQA
CAgIAFaDmD0AAAAAAAAAAAAAAAALAAAAY29udGVudC54bWztnduS47aWpu/nKRC5Iya6o0IlkTqk
xHG5w65q76lwlZ2z067tuZpAkpBEiyRYPKQq/Qpz2e/RbzBvM/MeA1CHFJVSJsgkJVL43b1dLoki
FvF/XATAtRa++7dvvkfuWRS7PHh3ZbztXREW2Nxxg9m7q99/+6kzvvq37//Ld3w6dW1mOdxOfRYk
HZsHifiTiF8HsbX69t1VGgUWp7EbWwH1WWwltsVDFmx+Ze0ebWVtrT6JkwdP+efZwbu/Tti3RPXH
8tjcb+mdesvZwbu/diK6VP2xPFZ06u7Pp1z1x99irzPlotf9kCbunhXfPDdYvLuaJ0lodbvL5fLt
sv+WR7OuMZlMutm3W4Pt7XFhGnnZUY7dZR6TjcVd463R3Rzrs4Sq2ieP3TUpSP07Fil3DU3oE1XD
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
aHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgeG1sbnM6ZGM9Imh0dHA6Ly9wdXJsLm9yZy9k
Yy9lbGVtZW50cy8xLjEvIiB4bWxuczptZXRhPSJ1cm46b2FzaXM6bmFtZXM6dGM6b3BlbmRvY3Vt
ZW50OnhtbG5zOm1ldGE6MS4wIiB4bWxuczpvb289Imh0dHA6Ly9vcGVub2ZmaWNlLm9yZy8yMDA0
L29mZmljZSIgeG1sbnM6Z3JkZGw9Imh0dHA6Ly93d3cudzMub3JnLzIwMDMvZy9kYXRhLXZpZXcj
IiBvZmZpY2U6dmVyc2lvbj0iMS4yIiBncmRkbDp0cmFuc2Zvcm1hdGlvbj0iaHR0cDovL2RvY3Mu
b2FzaXMtb3Blbi5vcmcvb2ZmaWNlLzEuMi94c2x0L29kZjJyZGYueHNsIj48b2ZmaWNlOm1ldGE+
PG1ldGE6aW5pdGlhbC1jcmVhdG9yPk1hcnRpbiBIYXZsYXQ8L21ldGE6aW5pdGlhbC1jcmVhdG9y
PjxkYzp0aXRsZT5UZXN0TGluazwvZGM6dGl0bGU+PGRjOmRhdGU+MjAxMC0xMi0yNVQwMDoyNjo0
NS42ODwvZGM6ZGF0ZT48bWV0YTpnZW5lcmF0b3I+T3Blbk9mZmljZS5vcmcvMy4yJFdpbjMyIE9w
ZW5PZmZpY2Uub3JnX3Byb2plY3QvMzIwbTE4JEJ1aWxkLTk1MDI8L21ldGE6Z2VuZXJhdG9yPjxt
ZXRhOmVkaXRpbmctZHVyYXRpb24+UFQwMEgxM001M1M8L21ldGE6ZWRpdGluZy1kdXJhdGlvbj48
bWV0YTplZGl0aW5nLWN5Y2xlcz42PC9tZXRhOmVkaXRpbmctY3ljbGVzPjxtZXRhOmRvY3VtZW50
LXN0YXRpc3RpYyBtZXRhOnRhYmxlLWNvdW50PSIxOCIgbWV0YTpjZWxsLWNvdW50PSIxODU4IiBt
ZXRhOm9iamVjdC1jb3VudD0iMCIvPjxtZXRhOnVzZXItZGVmaW5lZCBtZXRhOm5hbWU9ImNvcHly
aWdodCI+R05VPC9tZXRhOnVzZXItZGVmaW5lZD48bWV0YTp1c2VyLWRlZmluZWQgbWV0YTpuYW1l
PSJyb2JvdHMiPk5PRk9MTE9XPC9tZXRhOnVzZXItZGVmaW5lZD48L29mZmljZTptZXRhPjwvb2Zm
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

--_004_D5AB6E638E5A3E4B8F4406B113A5A19A319A5838shsmsx501ccrcor_--
