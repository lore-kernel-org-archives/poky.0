Return-Path: <jiajun.xu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 826C24C8007E
	for <poky@pokylinux.org>; Thu, 10 Feb 2011 02:28:50 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 10 Feb 2011 00:28:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,451,1291622400"; 
	d="xml'?ods'72,48?png'72,48,150?scan'72,48,150,208,217,72,150,48";
	a="886148832"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by fmsmga001.fm.intel.com with ESMTP; 10 Feb 2011 00:28:48 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 10 Feb 2011 16:27:41 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Thu, 10 Feb 2011 16:27:38 +0800
From: "Xu, Jiajun" <jiajun.xu@intel.com>
To: "poky@pokylinux.org" <poky@pokylinux.org>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Thu, 10 Feb 2011 16:27:38 +0800
Thread-Topic: Weekly Test Report for Yocto Nightly 20110206 Build
Thread-Index: AcvI/GCS9OL0z6MCR0urdWn7MCZfpw==
Message-ID: <D5AB6E638E5A3E4B8F4406B113A5A19A32F92942@shsmsx501.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Weekly Test Report for Yocto Nightly 20110206 Build
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
X-List-Received-Date: Thu, 10 Feb 2011 08:28:51 -0000
X-Groupsio-MsgNum: 3539
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_004_D5AB6E638E5A3E4B8F4406B113A5A19A32F92942shsmsx501ccrcor_"

--_004_D5AB6E638E5A3E4B8F4406B113A5A19A32F92942shsmsx501ccrcor_
Content-Type: multipart/alternative;
	boundary="_000_D5AB6E638E5A3E4B8F4406B113A5A19A32F92942shsmsx501ccrcor_"

--_000_D5AB6E638E5A3E4B8F4406B113A5A19A32F92942shsmsx501ccrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all,

       This is the weekly test report for 20110206 build. Because some targ=
ets were not built out successfully with this build(qemuppc, emenlow) and s=
dk images were not copied to sharing folder, only few targets were tested b=
y QA. There is only 1 new bug exposed. Rpm/zypper fails to run on netbook/b=
lacksand/qemux86-64 targets. There is no bug fixing with this build.



Test Summary
---------------------------------------
Target

Total TCs

Not Run

Passed

Failed

Not testable (Blocked)

Netbook Sato

22

0

18

4 (bug 705)

0

Blacksand Sato

22

0

19

5 (bug 607, bug 705)

0

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

Qemux86 Sato

12

0

12

0

0

Qemumips Sato

12

0

12

0

0

Qemuppc Sato

11

0

8

0

11

Qemuarm Sato

12

0

12

0

0

Total

110

0

96

13

11


* You can check the detailed test result in attachment for each target.

** The failed/blocked case number is listed with failed cases' bug number.



Images
---------------------------------------

http://autobuilder.pokylinux.org/nightly/20110114-1/



Issue Summary
---------------------------------------

New Bugs:

1.     [rpm/zypper] libmagic.so error when running rpm/zypper

http://bugzilla.pokylinux.org/show_bug.cgi?id=3D705



Old Open Bugs:

1.     [Blacksand] Some error information prompted when run dmesg command

http://bugzilla.pokylinux.org/show_bug.cgi?id=3D607

2.     qemumips shutdown cause host console warning

http://bugzilla.pokylinux.org/show_bug.cgi?id=3D322

3.     The bottom icons on Applications and All screen are cut-off in qemu

http://bugzilla.pokylinux.org/show_bug.cgi?id=3D658



Best Regards,

Jiajun

--_000_D5AB6E638E5A3E4B8F4406B113A5A19A32F92942shsmsx501ccrcor_
Content-Type: text/html; charset="us-ascii"
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
st=3D"&#1;" xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta http-equi=
v=3DContent-Type content=3D"text/html; charset=3Dus-ascii"><meta name=3DGen=
erator content=3D"Microsoft Word 12 (filtered medium)"><style><!--
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
	{mso-list-id:965815138;
	mso-list-type:hybrid;
	mso-list-template-ids:-209013534 611632016 67698713 67698715 67698703 6769=
8713 67698715 67698703 67698713 67698715;}
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
	mso-list-template-ids:-1645321260 185119308 67698713 67698715 67698703 676=
98713 67698715 67698703 67698713 67698715;}
@list l2:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:18.0pt;
	text-indent:-18.0pt;}
@list l3
	{mso-list-id:1868592184;
	mso-list-type:hybrid;
	mso-list-template-ids:-947911630 -1685023894 67698713 67698715 67698703 67=
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
sans-serif"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; This is the weekly test r=
eport for 20110206 build. Because some targets were not built out successfu=
lly with this build(qemuppc, emenlow) and sdk images were not copied to sha=
ring folder, only few targets were tested by QA. There is only 1 new bug ex=
posed. Rpm/zypper fails to run on netbook/blacksand/qemux86-64 targets. The=
re is no bug fixing with this build.<o:p></o:p></span></p><p class=3DMsoPla=
inText><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoPlainTe=
xt><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","san=
s-serif"'>Test Summary<o:p></o:p></span></b></p><p class=3DMsoNormal><b><sp=
an lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'=
>---------------------------------------<o:p></o:p></span></b></p><table cl=
ass=3DMsoNormalTable border=3D0 cellspacing=3D0 cellpadding=3D0 width=3D589=
 style=3D'width:442.0pt;margin-left:-1.15pt;border-collapse:collapse'><tr s=
tyle=3D'height:39.0pt'><td width=3D159 nowrap style=3D'width:119.0pt;border=
:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:39.0pt'><p class=
=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b><span lang=3DEN-=
US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>=
Target<o:p></o:p></span></b></p></td><td width=3D72 style=3D'width:54.0pt;b=
order:solid windowtext 1.0pt;border-left:none;padding:0cm 5.4pt 0cm 5.4pt;h=
eight:39.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:cente=
r'><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","san=
s-serif";color:black'>Total TCs</span></b><span lang=3DEN-US style=3D'font-=
size:10.0pt;font-family:"Arial","sans-serif";color:black'> <b><o:p></o:p></=
b></span></p></td><td width=3D72 style=3D'width:54.0pt;border:solid windowt=
ext 1.0pt;border-left:none;padding:0cm 5.4pt 0cm 5.4pt;height:39.0pt'><p cl=
ass=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b><span lang=3D=
EN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:blac=
k'>Not Run<o:p></o:p></span></b></p></td><td width=3D72 style=3D'width:54.0=
pt;border:solid windowtext 1.0pt;border-left:none;padding:0cm 5.4pt 0cm 5.4=
pt;height:39.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:c=
enter'><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial",=
"sans-serif";color:black'>Passed</span></b><span lang=3DEN-US style=3D'font=
-size:10.0pt;font-family:"Arial","sans-serif";color:black'> <b><o:p></o:p><=
/b></span></p></td><td width=3D143 style=3D'width:107.0pt;border:solid wind=
owtext 1.0pt;border-left:none;padding:0cm 5.4pt 0cm 5.4pt;height:39.0pt'><p=
 class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b><span lang=
=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:b=
lack'>Failed</span></b><span lang=3DEN-US style=3D'font-size:10.0pt;font-fa=
mily:"Arial","sans-serif";color:black'> <b><o:p></o:p></b></span></p></td><=
td width=3D72 style=3D'width:54.0pt;border:solid windowtext 1.0pt;border-le=
ft:none;padding:0cm 5.4pt 0cm 5.4pt;height:39.0pt'><p class=3DMsoNormal ali=
gn=3Dcenter style=3D'text-align:center'><b><span lang=3DEN-US style=3D'font=
-size:10.0pt;font-family:"Arial","sans-serif";color:black'>Not testable (Bl=
ocked)</span></b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"=
Arial","sans-serif";color:black'> <b><o:p></o:p></b></span></p></td></tr><t=
r style=3D'height:14.25pt'><td width=3D159 nowrap style=3D'width:119.0pt;bo=
rder:solid windowtext 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;hei=
ght:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center=
'><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans=
-serif";color:black'>Netbook Sato<o:p></o:p></span></b></p></td><td width=
=3D72 style=3D'width:54.0pt;border-top:none;border-left:none;border-bottom:=
solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4p=
t 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'te=
xt-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"=
Arial","sans-serif";color:black'>22<o:p></o:p></span></p></td><td width=3D7=
2 style=3D'width:54.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0c=
m 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-a=
lign:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Aria=
l","sans-serif";color:black'>0<o:p></o:p></span></p></td><td width=3D72 sty=
le=3D'width:54.0pt;border-top:none;border-left:none;border-bottom:solid win=
dowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4=
pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:=
center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","s=
ans-serif";color:#00B050'>18<o:p></o:p></span></p></td><td width=3D143 styl=
e=3D'width:107.0pt;border-top:none;border-left:none;border-bottom:solid win=
dowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4=
pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:=
center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","s=
ans-serif";color:red'>4 (bug 705)<o:p></o:p></span></p></td><td width=3D72 =
style=3D'width:54.0pt;border-top:none;border-left:none;border-bottom:solid =
windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm =
5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-ali=
gn:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:SimSun;=
color:red'>0<o:p></o:p></span></p></td></tr><tr style=3D'height:26.25pt'><t=
d width=3D159 nowrap style=3D'width:119.0pt;border:solid windowtext 1.0pt;b=
order-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:26.25pt'><p class=3DMsoNo=
rmal align=3Dcenter style=3D'text-align:center'><b><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>Blacksan=
d Sato<o:p></o:p></span></b></p></td><td width=3D72 style=3D'width:54.0pt;b=
order-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border=
-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:26.25pt'><=
p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=
=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:b=
lack'>22<o:p></o:p></span></p></td><td width=3D72 style=3D'width:54.0pt;bor=
der-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-r=
ight:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:26.25pt'><p =
class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=3DE=
N-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black=
'>0<o:p></o:p></span></p></td><td width=3D72 style=3D'width:54.0pt;border-t=
op:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:=
solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:26.25pt'><p class=
=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US =
style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:#00B050'>1=
9<o:p></o:p></span></p></td><td width=3D143 style=3D'width:107.0pt;border-t=
op:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:=
solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:26.25pt'><p class=
=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US =
style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:red'>5 (bu=
g 607, bug 705)<o:p></o:p></span></p></td><td width=3D72 style=3D'width:54.=
0pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;b=
order-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:26.25=
pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span l=
ang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";colo=
r:red'>0<o:p></o:p></span></p></td></tr><tr style=3D'height:14.25pt'><td wi=
dth=3D159 style=3D'width:119.0pt;border:solid black 1.0pt;border-top:none;p=
adding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcen=
ter style=3D'text-align:center'><b><span lang=3DEN-US style=3D'font-size:10=
.0pt;font-family:"Arial","sans-serif";color:black'>BeagleBoard Sato<o:p></o=
:p></span></b></p></td><td width=3D72 style=3D'width:54.0pt;border-top:none=
;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid w=
indowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoN=
ormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>7<o:p></=
o:p></span></p></td><td width=3D72 style=3D'width:54.0pt;border-top:none;bo=
rder-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNorm=
al align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'f=
ont-size:10.0pt;font-family:"Arial","sans-serif";color:black'>0<o:p></o:p><=
/span></p></td><td width=3D72 style=3D'width:54.0pt;border-top:none;border-=
left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtex=
t 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal al=
ign=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-s=
ize:10.0pt;font-family:"Arial","sans-serif";color:#00B050'>7<o:p></o:p></sp=
an></p></td><td width=3D143 style=3D'width:107.0pt;border-top:none;border-l=
eft:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext=
 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal ali=
gn=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-si=
ze:10.0pt;font-family:"Arial","sans-serif";color:red'>0<o:p></o:p></span></=
p></td><td width=3D72 style=3D'width:54.0pt;border-top:none;border-left:non=
e;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;=
padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dce=
nter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0=
pt;font-family:"Arial","sans-serif";color:red'>0<o:p></o:p></span></p></td>=
</tr><tr style=3D'height:14.25pt'><td width=3D159 nowrap style=3D'width:119=
.0pt;border:solid windowtext 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.=
4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align=
:center'><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial=
","sans-serif";color:black'>Qemux86-64 Sato<o:p></o:p></span></b></p></td><=
td width=3D72 nowrap style=3D'width:54.0pt;border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcen=
ter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0p=
t;font-family:"Arial","sans-serif";color:black'>12<o:p></o:p></span></p></t=
d><td width=3D72 valign=3Dtop style=3D'width:54.0pt;border-top:none;border-=
left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtex=
t 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal al=
ign=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-s=
ize:10.0pt;font-family:"Arial","sans-serif";color:black'>0<o:p></o:p></span=
></p></td><td width=3D72 valign=3Dtop style=3D'width:54.0pt;border-top:none=
;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid w=
indowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoN=
ormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:#00B050'>8<o:p>=
</o:p></span></p></td><td width=3D143 nowrap style=3D'width:107.0pt;border-=
top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right=
:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p clas=
s=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US=
 style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:red'>4 (b=
ug 705)<o:p></o:p></span></p></td><td width=3D72 nowrap style=3D'width:54.0=
pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;bo=
rder-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25p=
t'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span la=
ng=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color=
:red'>0<o:p></o:p></span></p></td></tr><tr style=3D'height:14.25pt'><td wid=
th=3D159 nowrap style=3D'width:119.0pt;border:solid windowtext 1.0pt;border=
-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal =
align=3Dcenter style=3D'text-align:center'><b><span lang=3DEN-US style=3D'f=
ont-size:10.0pt;font-family:"Arial","sans-serif";color:black'>Qemux86 Sato<=
o:p></o:p></span></b></p></td><td width=3D72 nowrap style=3D'width:54.0pt;b=
order-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border=
-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><=
p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=
=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:b=
lack'>12<o:p></o:p></span></p></td><td width=3D72 valign=3Dtop style=3D'wid=
th:54.0pt;border-top:none;border-left:none;border-bottom:solid windowtext 1=
.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height=
:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><=
span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif=
";color:black'>0<o:p></o:p></span></p></td><td width=3D72 valign=3Dtop styl=
e=3D'width:54.0pt;border-top:none;border-left:none;border-bottom:solid wind=
owtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4p=
t;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:c=
enter'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sa=
ns-serif";color:#00B050'>12<o:p></o:p></span></p></td><td width=3D143 nowra=
p style=3D'width:107.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0=
cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-=
align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Ari=
al","sans-serif";color:red'>0<o:p></o:p></span></p></td><td width=3D72 nowr=
ap style=3D'width:54.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0=
cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-=
align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Ari=
al","sans-serif";color:red'>0<o:p></o:p></span></p></td></tr><tr style=3D'h=
eight:14.25pt'><td width=3D159 nowrap style=3D'width:119.0pt;border:solid w=
indowtext 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'=
><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b><span l=
ang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";colo=
r:black'>Qemumips Sato<o:p></o:p></span></b></p></td><td width=3D72 nowrap =
style=3D'width:54.0pt;border-top:none;border-left:none;border-bottom:solid =
windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm =
5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-ali=
gn:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial"=
,"sans-serif";color:black'>12<o:p></o:p></span></p></td><td width=3D72 nowr=
ap style=3D'width:54.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0=
cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-=
align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Ari=
al","sans-serif";color:black'>0<o:p></o:p></span></p></td><td width=3D72 no=
wrap style=3D'width:54.0pt;border-top:none;border-left:none;border-bottom:s=
olid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt=
 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'tex=
t-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"A=
rial","sans-serif";color:#00B050'>12<o:p></o:p></span></p></td><td width=3D=
143 nowrap style=3D'width:107.0pt;border-top:none;border-left:none;border-b=
ottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0c=
m 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=
=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-fa=
mily:"Arial","sans-serif";color:red'>0<o:p></o:p></span></p></td><td width=
=3D72 nowrap style=3D'width:54.0pt;border-top:none;border-left:none;border-=
bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0=
cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter styl=
e=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-f=
amily:"Arial","sans-serif";color:red'>0<o:p></o:p></span></p></td></tr><tr =
style=3D'height:14.25pt'><td width=3D159 nowrap style=3D'width:119.0pt;bord=
er:solid windowtext 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;heigh=
t:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'>=
<b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-s=
erif";color:black'>Qemuppc Sato<o:p></o:p></span></b></p></td><td width=3D7=
2 nowrap style=3D'width:54.0pt;border-top:none;border-left:none;border-bott=
om:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5=
.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D=
'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-famil=
y:"Arial","sans-serif";color:black'>11<o:p></o:p></span></p></td><td width=
=3D72 nowrap style=3D'width:54.0pt;border-top:none;border-left:none;border-=
bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0=
cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter styl=
e=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-f=
amily:"Arial","sans-serif";color:black'>0<o:p></o:p></span></p></td><td wid=
th=3D72 nowrap style=3D'width:54.0pt;border-top:none;border-left:none;borde=
r-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding=
:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter st=
yle=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font=
-family:"Arial","sans-serif";color:#00B050'>8<o:p></o:p></span></p></td><td=
 width=3D143 nowrap style=3D'width:107.0pt;border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcen=
ter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0p=
t;font-family:"Arial","sans-serif";color:red'>0<o:p></o:p></span></p></td><=
td width=3D72 nowrap style=3D'width:54.0pt;border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcen=
ter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0p=
t;font-family:"Arial","sans-serif";color:red'>11<o:p></o:p></span></p></td>=
</tr><tr style=3D'height:14.25pt'><td width=3D159 nowrap style=3D'width:119=
.0pt;border:solid windowtext 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.=
4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align=
:center'><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial=
","sans-serif";color:black'>Qemuarm Sato<o:p></o:p></span></b></p></td><td =
width=3D72 nowrap style=3D'width:54.0pt;border-top:none;border-left:none;bo=
rder-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padd=
ing:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter=
 style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;f=
ont-family:"Arial","sans-serif";color:black'>12<o:p></o:p></span></p></td><=
td width=3D72 nowrap style=3D'width:54.0pt;border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcen=
ter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0p=
t;font-family:"Arial","sans-serif";color:black'>0<o:p></o:p></span></p></td=
><td width=3D72 nowrap style=3D'width:54.0pt;border-top:none;border-left:no=
ne;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt=
;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dc=
enter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.=
0pt;font-family:"Arial","sans-serif";color:#00B050'>12<o:p></o:p></span></p=
></td><td width=3D143 nowrap style=3D'width:107.0pt;border-top:none;border-=
left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtex=
t 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal al=
ign=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-s=
ize:10.0pt;font-family:"Arial","sans-serif";color:red'>0<o:p></o:p></span><=
/p></td><td width=3D72 nowrap style=3D'width:54.0pt;border-top:none;border-=
left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtex=
t 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal al=
ign=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-s=
ize:10.0pt;font-family:"Arial","sans-serif";color:red'>0<o:p></o:p></span><=
/p></td></tr><tr style=3D'height:14.25pt'><td width=3D159 nowrap style=3D'w=
idth:119.0pt;border:solid windowtext 1.0pt;border-top:none;padding:0cm 5.4p=
t 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'te=
xt-align:center'><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-famil=
y:"Arial","sans-serif";color:black'>Total<o:p></o:p></span></b></p></td><td=
 width=3D72 nowrap style=3D'width:54.0pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pad=
ding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcente=
r style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;=
font-family:"Arial","sans-serif";color:black'>110<o:p></o:p></span></p></td=
><td width=3D72 nowrap style=3D'width:54.0pt;border-top:none;border-left:no=
ne;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt=
;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dc=
enter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.=
0pt;font-family:"Arial","sans-serif";color:black'>0<o:p></o:p></span></p></=
td><td width=3D72 nowrap style=3D'width:54.0pt;border-top:none;border-left:=
none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0=
pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=
=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size=
:10.0pt;font-family:"Arial","sans-serif";color:black'>96<o:p></o:p></span><=
/p></td><td width=3D143 nowrap style=3D'width:107.0pt;border-top:none;borde=
r-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowt=
ext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal =
align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'font=
-size:10.0pt;font-family:"Arial","sans-serif";color:red'>13<o:p></o:p></spa=
n></p></td><td width=3D72 nowrap style=3D'width:54.0pt;border-top:none;bord=
er-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid window=
text 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal=
 align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'fon=
t-size:10.0pt;font-family:"Arial","sans-serif";color:red'>11<o:p></o:p></sp=
an></p></td></tr></table><p class=3DMsoPlainText><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>* You can check the =
detailed test result in attachment for each target.<o:p></o:p></span></p><p=
 class=3DMsoPlainText><span lang=3DEN-US style=3D'font-size:10.0pt;font-fam=
ily:"Arial","sans-serif"'>** The failed/blocked case number is listed with =
failed cases&#8217; bug number.<o:p></o:p></span></p><p class=3DMsoPlainTex=
t><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoPlainText><b=
><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-ser=
if"'>Images<o:p></o:p></span></b></p><p class=3DMsoNormal><b><span lang=3DE=
N-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>----------=
-----------------------------<o:p></o:p></span></b></p><p class=3DMsoPlainT=
ext><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-=
serif"'><a href=3D"http://autobuilder.pokylinux.org/nightly/20110114-1/">ht=
tp://autobuilder.pokylinux.org/nightly/20110114-1/</a><o:p></o:p></span></p=
><p class=3DMsoPlainText><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoPlainText><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-f=
amily:"Arial","sans-serif"'>Issue Summary<o:p></o:p></span></b></p><p class=
=3DMsoNormal><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"A=
rial","sans-serif"'>---------------------------------------<o:p></o:p></spa=
n></b></p><p class=3DMsoPlainText><b><span lang=3DEN-US style=3D'font-size:=
10.0pt;font-family:"Arial","sans-serif"'>New Bugs:<o:p></o:p></span></b></p=
><p class=3DMsoPlainText style=3D'margin-left:18.0pt;text-indent:-18.0pt;ms=
o-list:l2 level1 lfo4'><![if !supportLists]><span lang=3DEN-US style=3D'fon=
t-size:10.0pt;font-family:"Arial","sans-serif"'><span style=3D'mso-list:Ign=
ore'>1.<span style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp=
; </span></span></span><![endif]><span lang=3DEN-US style=3D'font-size:10.0=
pt;font-family:"Arial","sans-serif"'>[rpm/zypper] libmagic.so error when ru=
nning rpm/zypper<o:p></o:p></span></p><p class=3DMsoPlainText style=3D'marg=
in-left:18.0pt'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"A=
rial","sans-serif"'>http://bugzilla.pokylinux.org/show_bug.cgi?id=3D705<o:p=
></o:p></span></p><p class=3DMsoPlainText><span lang=3DEN-US style=3D'font-=
size:10.0pt;font-family:"Arial","sans-serif"'><o:p>&nbsp;</o:p></span></p><=
p class=3DMsoPlainText><b><span lang=3DEN-US style=3D'font-size:10.0pt;font=
-family:"Arial","sans-serif"'>Old Open Bugs:<o:p></o:p></span></b></p><p cl=
ass=3DMsoPlainText style=3D'margin-left:18.0pt;text-indent:-18.0pt;mso-list=
:l0 level1 lfo2'><![if !supportLists]><span lang=3DEN-US style=3D'font-size=
:10.0pt;font-family:"Arial","sans-serif"'><span style=3D'mso-list:Ignore'>1=
.<span style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp; </sp=
an></span></span><![endif]><span lang=3DEN-US style=3D'font-size:10.0pt;fon=
t-family:"Arial","sans-serif"'>[Blacksand] Some error information prompted =
when run dmesg command<o:p></o:p></span></p><p class=3DMsoPlainText style=
=3D'margin-left:18.0pt'><span lang=3DEN-US style=3D'font-size:10.0pt;font-f=
amily:"Arial","sans-serif"'><a href=3D"http://bugzilla.pokylinux.org/show_b=
ug.cgi?id=3D607">http://bugzilla.pokylinux.org/show_bug.cgi?id=3D607</a><o:=
p></o:p></span></p><p class=3DMsoPlainText style=3D'margin-left:18.0pt;text=
-indent:-18.0pt;mso-list:l0 level1 lfo2'><![if !supportLists]><span lang=3D=
EN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'><span sty=
le=3D'mso-list:Ignore'>2.<span style=3D'font:7.0pt "Times New Roman"'>&nbsp=
;&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>qemumips shutdown ca=
use host console warning <o:p></o:p></span></p><p class=3DMsoPlainText styl=
e=3D'margin-left:18.0pt'><span lang=3DEN-US style=3D'font-size:10.0pt;font-=
family:"Arial","sans-serif"'><a href=3D"http://bugzilla.pokylinux.org/show_=
bug.cgi?id=3D322">http://bugzilla.pokylinux.org/show_bug.cgi?id=3D322</a><o=
:p></o:p></span></p><p class=3DMsoPlainText style=3D'margin-left:18.0pt;tex=
t-indent:-18.0pt;mso-list:l0 level1 lfo2'><![if !supportLists]><span lang=
=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'><span =
style=3D'mso-list:Ignore'>3.<span style=3D'font:7.0pt "Times New Roman"'>&n=
bsp;&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><span lang=3DEN-US st=
yle=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>The bottom icons =
on Applications and All screen are cut-off in qemu<o:p></o:p></span></p><p =
class=3DMsoPlainText style=3D'margin-left:18.0pt'><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>http://bugzilla.poky=
linux.org/show_bug.cgi?id=3D658<o:p></o:p></span></p><p class=3DMsoPlainTex=
t><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoPlainText><s=
pan lang=3DEN-US>Best Regards,<o:p></o:p></span></p><p class=3DMsoPlainText=
><span lang=3DEN-US>Jiajun<o:p></o:p></span></p></div></body></html>=

--_000_D5AB6E638E5A3E4B8F4406B113A5A19A32F92942shsmsx501ccrcor_--

--_004_D5AB6E638E5A3E4B8F4406B113A5A19A32F92942shsmsx501ccrcor_
Content-Type: application/oleobject;
	name="weekly-detail-testresult-20110206.ods"
Content-Description: weekly-detail-testresult-20110206.ods
Content-Disposition: attachment;
	filename="weekly-detail-testresult-20110206.ods"; size=19270;
	creation-date="Thu, 10 Feb 2011 15:59:21 GMT";
	modification-date="Thu, 10 Feb 2011 16:06:18 GMT"
Content-Transfer-Encoding: base64

UEsDBBQAAAgAAMlASj6FbDmKLgAAAC4AAAAIAAAAbWltZXR5cGVhcHBsaWNhdGlvbi92bmQub2Fz
aXMub3BlbmRvY3VtZW50LnNwcmVhZHNoZWV0UEsDBBQAAAgAAMlASj4AAAAAAAAAAAAAAAAaAAAA
Q29uZmlndXJhdGlvbnMyL3N0YXR1c2Jhci9QSwMEFAAICAgAyUBKPgAAAAAAAAAAAAAAACcAAABD
b25maWd1cmF0aW9uczIvYWNjZWxlcmF0b3IvY3VycmVudC54bWwDAFBLBwgAAAAAAgAAAAAAAABQ
SwMEFAAACAAAyUBKPgAAAAAAAAAAAAAAABgAAABDb25maWd1cmF0aW9uczIvZmxvYXRlci9QSwME
FAAACAAAyUBKPgAAAAAAAAAAAAAAABoAAABDb25maWd1cmF0aW9uczIvcG9wdXBtZW51L1BLAwQU
AAAIAADJQEo+AAAAAAAAAAAAAAAAHAAAAENvbmZpZ3VyYXRpb25zMi9wcm9ncmVzc2Jhci9QSwME
FAAACAAAyUBKPgAAAAAAAAAAAAAAABgAAABDb25maWd1cmF0aW9uczIvbWVudWJhci9QSwMEFAAA
CAAAyUBKPgAAAAAAAAAAAAAAABgAAABDb25maWd1cmF0aW9uczIvdG9vbGJhci9QSwMEFAAACAAA
yUBKPgAAAAAAAAAAAAAAAB8AAABDb25maWd1cmF0aW9uczIvaW1hZ2VzL0JpdG1hcHMvUEsDBBQA
CAgIAMlASj4AAAAAAAAAAAAAAAALAAAAY29udGVudC54bWztXd2Sq7aWvp+noDpVc0fb4J+2mfQ+
NUkqU1MnO3UmnZ06czUlg2yTBsSRoL2dV5jLeY95g3mbOe9xJDAYusEWGDDYa1dq7xgJaUnr08eS
9Am+/dNX11HeMGU28Z4ftMfxg4I9k1i2t3l++PLrj+ri4U+f/ulbsl7bJjYsYoYu9gLVJF7A/1X4
3R4z4tTnh5B6BkHMZoaHXMyMwDSIj73kLiOb24jqiq+wYO9I3x5lzt4d4K+B7M0ib+5etJKvOcqc
vduiaCd7s8jLOzV7+5rI3vyVOeqa8F53fRTY76z46tje6/PDNgh8YzTa7XaPu8kjoZuRtlwuR1Fq
arCZ5vND6kS5LHOEHSwqYyPtURsleV0cIFn7RN6sSV7orjCV7hoUoA9e9SlmPAtvrgCmXEHZe3L4
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
r/9fcub/B1BLBwiMe9s/OQsAAGVnAABQSwMEFAAACAAAyUBKPoBiVCsrBAAAKwQAAAgAAABtZXRh
LnhtbDw/eG1sIHZlcnNpb249IjEuMCIgZW5jb2Rpbmc9IlVURi04Ij8+CjxvZmZpY2U6ZG9jdW1l
bnQtbWV0YSB4bWxuczpvZmZpY2U9InVybjpvYXNpczpuYW1lczp0YzpvcGVuZG9jdW1lbnQ6eG1s
bnM6b2ZmaWNlOjEuMCIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsi
IHhtbG5zOmRjPSJodHRwOi8vcHVybC5vcmcvZGMvZWxlbWVudHMvMS4xLyIgeG1sbnM6bWV0YT0i
dXJuOm9hc2lzOm5hbWVzOnRjOm9wZW5kb2N1bWVudDp4bWxuczptZXRhOjEuMCIgeG1sbnM6b29v
PSJodHRwOi8vb3Blbm9mZmljZS5vcmcvMjAwNC9vZmZpY2UiIHhtbG5zOmdyZGRsPSJodHRwOi8v
d3d3LnczLm9yZy8yMDAzL2cvZGF0YS12aWV3IyIgb2ZmaWNlOnZlcnNpb249IjEuMiIgZ3JkZGw6
dHJhbnNmb3JtYXRpb249Imh0dHA6Ly9kb2NzLm9hc2lzLW9wZW4ub3JnL29mZmljZS8xLjIveHNs
dC9vZGYycmRmLnhzbCI+PG9mZmljZTptZXRhPjxtZXRhOmluaXRpYWwtY3JlYXRvcj5NYXJ0aW4g
SGF2bGF0PC9tZXRhOmluaXRpYWwtY3JlYXRvcj48ZGM6dGl0bGU+VGVzdExpbms8L2RjOnRpdGxl
PjxkYzpkYXRlPjIwMTEtMDItMTBUMTY6MDY6MTcuODU8L2RjOmRhdGU+PG1ldGE6Z2VuZXJhdG9y
Pk9wZW5PZmZpY2Uub3JnLzMuMiRXaW4zMiBPcGVuT2ZmaWNlLm9yZ19wcm9qZWN0LzMyMG0xOCRC
dWlsZC05NTAyPC9tZXRhOmdlbmVyYXRvcj48bWV0YTplZGl0aW5nLWR1cmF0aW9uPlBUMDFINTRN
MjZTPC9tZXRhOmVkaXRpbmctZHVyYXRpb24+PG1ldGE6ZWRpdGluZy1jeWNsZXM+MTA8L21ldGE6
ZWRpdGluZy1jeWNsZXM+PG1ldGE6ZG9jdW1lbnQtc3RhdGlzdGljIG1ldGE6dGFibGUtY291bnQ9
IjciIG1ldGE6Y2VsbC1jb3VudD0iNDQyIiBtZXRhOm9iamVjdC1jb3VudD0iMCIvPjxtZXRhOnVz
ZXItZGVmaW5lZCBtZXRhOm5hbWU9ImNvcHlyaWdodCI+R05VPC9tZXRhOnVzZXItZGVmaW5lZD48
bWV0YTp1c2VyLWRlZmluZWQgbWV0YTpuYW1lPSJyb2JvdHMiPk5PRk9MTE9XPC9tZXRhOnVzZXIt
ZGVmaW5lZD48L29mZmljZTptZXRhPjwvb2ZmaWNlOmRvY3VtZW50LW1ldGE+UEsDBBQACAgIAMlA
Sj4AAAAAAAAAAAAAAAAYAAAAVGh1bWJuYWlscy90aHVtYm5haWwucG5ntXhlXFTft/4gUiKCDN0w
dCsgMHQM3dIIUjJ0DUgKSEjO0CUNfqUEpKWbYSSHkJQO6ZDOO9/7+3/uy//nvrnnzVnnrLX3OfvZ
z9r7WTtaR0uZ6AnNEwAAQKSqoqiHuQ8DAFgA/EcYK2/p3TIAQBegqiin75u9by5VU6NGQl++SMEk
yNwgKPgOy9hur6ubyH6V1LWQdqw5QLDWC+srrl4/O+53/MXbBwDLvcdd/mi5PyMl3p+PdlTPilse
1CfIsACM/cHBLoB8cqYgigqJO4IbmLeawoXS67m4V1G/nMgc95Pu9vCGKdvPPGBYD5xReU1Wn3Fv
zjxIKPzV6pbmpe/7iN7zQJfHieSLIkSozhDexoSXRokfXFcLUAz8aK/GXaJIoGR738ih+4zQJ3HJ
7/SSrbnCtgr5w0YP4BdxjiGPbO94lYrEzHWMxCvYOxBwZNmUq6Wkurmbt6zXnSQd3cULEx+GuT8p
/K5SMCw+vItae6FsDUMG6syG99AovFIgC6zBoJXKkvF6ds2Dm90lIWPAj+Gzc2JkQ4+66PsGdclH
DOAcBdTtszFrdxnQa+FXWyeUDs356tbwFpUPJ1Vs8+5j76X/gRgD81UAooBW3PxnIXlYO4BL6v8D
g0RmrboLknFgQXQ7lcRtq5NmU2AXOKfi92lpAfquce5Yueor1poKLzOutnkCMthfyKHxdveiGkRJ
F8lmsCx30Jo11KnaAQtyQ5abpXYVw+tuj5/wwXIDl76/tMS+AVI4zOdlVxF4buQuwkQGeYUvhg29
rtf3riIkrIN+zePg+GTS7jGoZT2vuDEr/iNm2Ai93x/1mWBrLxnc97i/jQ5Clz11FK0ps2okeTtj
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
AAAAAA==

--_004_D5AB6E638E5A3E4B8F4406B113A5A19A32F92942shsmsx501ccrcor_--
