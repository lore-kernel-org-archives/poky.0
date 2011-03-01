Return-Path: <lianhao.lu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 284004C80510
	for <poky@yoctoproject.org>; Tue,  1 Mar 2011 01:24:15 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 28 Feb 2011 23:24:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,246,1297065600"; 
	d="scan'208,217";a="662465430"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by fmsmga002.fm.intel.com with ESMTP; 28 Feb 2011 23:24:14 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Tue, 1 Mar 2011 15:23:24 +0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Tue, 1 Mar 2011 15:23:23 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi; Tue, 1 Mar 2011
	15:23:23 +0800
From: "Lu, Lianhao" <lianhao.lu@intel.com>
To: v sailaja <vsailub4u@gmail.com>, "Tian, Kevin" <kevin.tian@intel.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Tue, 1 Mar 2011 15:23:21 +0800
Thread-Topic: [poky] problems while building an image uasing poky
Thread-Index: AcvX2+HDZdROYmZlQliv2wd4yKhi/gABPLZw
Message-ID: <C10D3FB0CD45994C8A51FEC1227CE22F216C10F84F@shsmsx502.ccr.corp.intel.com>
References: <AANLkTin31iKNweKt-KET12gm6Fw4v4FJay+p1aE-ZkV_@mail.gmail.com>
	<625BA99ED14B2D499DC4E29D8138F15052FC80F00B@shsmsx502.ccr.corp.intel.com>
	<AANLkTin+4oP4eTeG120dceTMcNeYF4JF+RXQBxc6JD1u@mail.gmail.com>
	<AANLkTi=Sr0=P2--sYZZs6g2YD+KSJi4qfJK7A19PsJOO@mail.gmail.com>
	<625BA99ED14B2D499DC4E29D8138F15053E6AC8FB0@shsmsx502.ccr.corp.intel.com>
	<AANLkTikyHZDeOo0WQVKvkTfRPJCxTLnb6iM82np6NEuZ@mail.gmail.com>
	<C10D3FB0CD45994C8A51FEC1227CE22F216C10F601@shsmsx502.ccr.corp.intel.com>
	<AANLkTim8bguYXV+gJgZC+v1nNi7rTnsmvrYmxyAj6=3F@mail.gmail.com>
In-Reply-To: <AANLkTim8bguYXV+gJgZC+v1nNi7rTnsmvrYmxyAj6=3F@mail.gmail.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Subject: Re: problems while building an image uasing poky
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
X-List-Received-Date: Tue, 01 Mar 2011 07:24:15 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_C10D3FB0CD45994C8A51FEC1227CE22F216C10F84Fshsmsx502ccrc_"

--_000_C10D3FB0CD45994C8A51FEC1227CE22F216C10F84Fshsmsx502ccrc_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi SAI,

Please try the following to rebuild the krb5 to see if the rpm is generated=
:


-          bitbake krb5  -c cleanall

-          bitbake krb5

This should generate the rpm file under the directory of "tmp/deploy/rpm".

b.t.w. what's the value set to the variable PACKAGE_CLASSES in your conf/lo=
cal.conf?

Best Regards,
Lianhao Lu

From: v sailaja [mailto:vsailub4u@gmail.com]
Sent: Tuesday, March 01, 2011 2:43 PM
To: Lu, Lianhao; Tian, Kevin; poky@yoctoproject.org
Subject: Re: [poky] problems while building an image uasing poky


 Hi,


I tried to find out the krb5 rpm package file but it is not there in my pok=
y.

could you please tell me what to do now?


Hi SAI,

Could you make sure the krb5 rpm package file is generated and is in the pr=
oper subdirectory(corresponding to your target architecture) under "tmp/dep=
loy/rpm"?

Best Regards,
Lianhao

From: poky-bounces@yoctoproject.org<mailto:poky-bounces@yoctoproject.org> [=
mailto:poky-bounces@yoctoproject.org<mailto:poky-bounces@yoctoproject.org>]=
 On Behalf Of v sailaja
Sent: Monday, February 28, 2011 10:38 PM

To: Tian, Kevin; poky@yoctoproject.org<mailto:poky@yoctoproject.org>
Subject: Re: [poky] problems while building an image uasing poky


Hi Kevin,


It resolved from the error:

mv: cannot stat `/home/sailaja/poky-chrome/build/tmp/work/core2-poky-linux/=
krb5-1.6.3-r6/image/usr/bin/ftp': No such file or directory

I find the ftp and built it but again its showing an error like

 Generating solve db for /home/sailaja/poky-chrome/build/tmp/deploy/rpm/ato=
m-pc...
|    total:               1      0.000000 MB      0.871674 secs
|    order:               1      0.000000 MB      0.090471 secs
|    fingerprint:       537      0.007286 MB      0.081155 secs
|    install:           278      0.000000 MB      0.179576 secs
|    dbadd:             278      0.000000 MB      0.081411 secs
|    dbget:            8678      1.128312 MB      0.016757 secs
|    dbput:            5035      2.213572 MB      0.020290 secs
|    readhdr:          2781      2.267168 MB      0.206626 secs
|    hdrload:        194461    256.103876 MB      1.118980 secs
|    hdrget:        3861605      0.000000 MB      6.181097 secs
| Processing krb5...
| Unable to find package krb5!
| ERROR: Task failed: ('function do_rootfs failed', '/home/sailaja/poky-chr=
ome/build/tmp/work/atom-pc-poky-linux/poky-image-minimal-akshat-1.0-r0/temp=
/log.do_rootfs.9313')
NOTE: package poky-image-minimal-akshat-1.0-r0: task do_rootfs: Failed
ERROR: Task 179 (/home/sailaja/poky-chrome/meta/recipes-core/images/poky-im=
age-minimal-akshat.bb<http://poky-image-minimal-akshat.bb>, do_rootfs) fail=
ed with 1
ERROR: '/home/sailaja/poky-chrome/meta/recipes-core/images/poky-image-minim=
al-akshat.bb<http://poky-image-minimal-akshat.bb>' failed



Any help would be greatly appreciated.


Thanks & Regards,
SAI

--_000_C10D3FB0CD45994C8A51FEC1227CE22F216C10F84Fshsmsx502ccrc_
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
st=3D"&#1;" xmlns=3D"http://www.w3.org/TR/REC-html40">

<head>
<meta http-equiv=3DContent-Type content=3D"text/html; charset=3Dus-ascii">
<meta name=3DGenerator content=3D"Microsoft Word 12 (filtered medium)">
<style>
<!--
 /* Font Definitions */
 @font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
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
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
 /* Style Definitions */
 p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin:0cm;
	margin-bottom:.0001pt;
	text-indent:21.0pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
span.EmailStyle17
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 90.0pt 72.0pt 90.0pt;}
div.WordSection1
	{page:WordSection1;}
 /* List Definitions */
 @list l0
	{mso-list-id:232132535;
	mso-list-type:hybrid;
	mso-list-template-ids:789721748 -936581078 67698691 67698693 67698689 6769=
8691 67698693 67698689 67698691 67698693;}
@list l0:level1
	{mso-level-start-at:2;
	mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:18.0pt;
	text-indent:-18.0pt;
	font-family:"Calibri","sans-serif";
	mso-fareast-font-family:SimSun;}
ol
	{margin-bottom:0cm;}
ul
	{margin-bottom:0cm;}
-->
</style>
<!--[if gte mso 9]><xml>
 <o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
 <o:shapelayout v:ext=3D"edit">
  <o:idmap v:ext=3D"edit" data=3D"1" />
 </o:shapelayout></xml><![endif]-->
</head>

<body lang=3DZH-CN link=3Dblue vlink=3Dpurple>

<div class=3DWordSection1>

<p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.5pt;font-fami=
ly:"Calibri","sans-serif";
color:#1F497D'>Hi SAI,<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.5pt;font-fami=
ly:"Calibri","sans-serif";
color:#1F497D'><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.5pt;font-fami=
ly:"Calibri","sans-serif";
color:#1F497D'>Please try the following to rebuild the krb5 to see if the r=
pm
is generated:<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.5pt;font-fami=
ly:"Calibri","sans-serif";
color:#1F497D'><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoListParagraph style=3D'margin-left:18.0pt;text-indent:-18.0pt=
;
mso-list:l0 level1 lfo1'><![if !supportLists]><span lang=3DEN-US
style=3D'font-size:10.5pt;font-family:"Calibri","sans-serif";color:#1F497D'=
><span
style=3D'mso-list:Ignore'>-<span style=3D'font:7.0pt "Times New Roman"'>&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span lang=3DEN-US style=3D'font-size:10.5pt=
;
font-family:"Calibri","sans-serif";color:#1F497D'>bitbake krb5 &nbsp;-c cle=
anall<o:p></o:p></span></p>

<p class=3DMsoListParagraph style=3D'margin-left:18.0pt;text-indent:-18.0pt=
;
mso-list:l0 level1 lfo1'><![if !supportLists]><span lang=3DEN-US
style=3D'font-size:10.5pt;font-family:"Calibri","sans-serif";color:#1F497D'=
><span
style=3D'mso-list:Ignore'>-<span style=3D'font:7.0pt "Times New Roman"'>&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span lang=3DEN-US style=3D'font-size:10.5pt=
;
font-family:"Calibri","sans-serif";color:#1F497D'>bitbake krb5<o:p></o:p></=
span></p>

<p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.5pt;font-fami=
ly:"Calibri","sans-serif";
color:#1F497D'><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.5pt;font-fami=
ly:"Calibri","sans-serif";
color:#1F497D'>This should generate the rpm file under the directory of &#8=
220;tmp/deploy/rpm&#8221;.
<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.5pt;font-fami=
ly:"Calibri","sans-serif";
color:#1F497D'><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.5pt;font-fami=
ly:"Calibri","sans-serif";
color:#1F497D'>b.t.w. what&#8217;s the value set to the variable PACKAGE_CL=
ASSES
in your conf/local.conf? <o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.5pt;font-fami=
ly:"Calibri","sans-serif";
color:#1F497D'><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.5pt;font-fami=
ly:"Calibri","sans-serif";
color:#1F497D'>Best Regards,<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.5pt;font-fami=
ly:"Calibri","sans-serif";
color:#1F497D'>Lianhao Lu<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.5pt;font-fami=
ly:"Calibri","sans-serif";
color:#1F497D'><o:p>&nbsp;</o:p></span></p>

<div style=3D'border:none;border-left:solid blue 1.5pt;padding:0cm 0cm 0cm =
4.0pt'>

<div>

<div style=3D'border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0cm =
0cm 0cm'>

<p class=3DMsoNormal><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-f=
amily:
"Tahoma","sans-serif"'>From:</span></b><span lang=3DEN-US style=3D'font-siz=
e:10.0pt;
font-family:"Tahoma","sans-serif"'> v sailaja [mailto:vsailub4u@gmail.com] =
<br>
<b>Sent:</b> Tuesday, March 01, 2011 2:43 PM<br>
<b>To:</b> Lu, Lianhao; Tian, Kevin; poky@yoctoproject.org<br>
<b>Subject:</b> Re: [poky] problems while building an image uasing poky<o:p=
></o:p></span></p>

</div>

</div>

<p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US><br>
</span><span lang=3DEN-US style=3D'font-size:13.5pt'>&nbsp;<span style=3D'c=
olor:#336666'>Hi,<br>
<br>
&nbsp;<br>
I tried to find out the<b> krb5 rpm package file</b> but<b> it is not there=
 in
my poky</b>.<br>
</span></span><span lang=3DEN-US style=3D'color:#336666'><br>
could you please tell me what to do now?</span><span lang=3DEN-US><br>
<br>
<br>
<o:p></o:p></span></p>

<div>

<div>

<div>

<p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt=
:auto;
text-align:justify;text-justify:inter-ideograph'><span lang=3DEN-US
style=3D'font-size:10.5pt;color:#1F497D'>Hi SAI,</span><span lang=3DEN-US><=
o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt=
:auto;
text-align:justify;text-justify:inter-ideograph'><span lang=3DEN-US
style=3D'font-size:10.5pt;color:#1F497D'>&nbsp;</span><span lang=3DEN-US><o=
:p></o:p></span></p>

<p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt=
:auto;
text-align:justify;text-justify:inter-ideograph'><span lang=3DEN-US
style=3D'font-size:10.5pt;color:#1F497D'>Could you make sure the krb5 rpm p=
ackage
file is generated and is in the proper subdirectory(corresponding to your
target architecture) under &#8220;tmp/deploy/rpm&#8221;?</span><span
lang=3DEN-US><o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt=
:auto;
text-align:justify;text-justify:inter-ideograph'><span lang=3DEN-US
style=3D'font-size:10.5pt;color:#1F497D'>&nbsp;</span><span lang=3DEN-US><o=
:p></o:p></span></p>

<p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt=
:auto;
text-align:justify;text-justify:inter-ideograph'><span lang=3DEN-US
style=3D'font-size:10.5pt;color:#1F497D'>Best Regards,</span><span lang=3DE=
N-US><o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt=
:auto;
text-align:justify;text-justify:inter-ideograph'><span lang=3DEN-US
style=3D'font-size:10.5pt;color:#1F497D'>Lianhao</span><span lang=3DEN-US><=
o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt=
:auto'><span
lang=3DEN-US style=3D'font-size:10.5pt;color:#1F497D'>&nbsp;</span><span
lang=3DEN-US><o:p></o:p></span></p>

<div style=3D'border:none;border-left:solid windowtext 1.5pt;padding:0cm 0c=
m 0cm 4.0pt;
border-color:-moz-use-text-color -moz-use-text-color -moz-use-text-color bl=
ue'>

<div>

<div style=3D'border:none;border-top:solid windowtext 1.0pt;padding:3.0pt 0=
cm 0cm 0cm;
border-color:-moz-use-text-color -moz-use-text-color'>

<p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt=
:auto'><b><span
lang=3DEN-US style=3D'font-size:10.0pt'>From:</span></b><span lang=3DEN-US
style=3D'font-size:10.0pt'> <a href=3D"mailto:poky-bounces@yoctoproject.org=
"
target=3D"_blank">poky-bounces@yoctoproject.org</a> [mailto:<a
href=3D"mailto:poky-bounces@yoctoproject.org" target=3D"_blank">poky-bounce=
s@yoctoproject.org</a>]
<b>On Behalf Of </b>v sailaja<br>
<b>Sent:</b> Monday, February 28, 2011 10:38 PM<o:p></o:p></span></p>

<div>

<p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.0pt'><br>
<b>To:</b> Tian, Kevin; <a href=3D"mailto:poky@yoctoproject.org" target=3D"=
_blank">poky@yoctoproject.org</a><br>
<b>Subject:</b> Re: [poky] problems while building an image uasing poky<o:p=
></o:p></span></p>

</div>

</div>

</div>

<p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt=
:auto'><span
lang=3DEN-US>&nbsp;<o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;margin-bottom:12.0pt'=
><span
lang=3DEN-US><o:p>&nbsp;</o:p></span></p>

<div>

<div>

<p class=3DMsoNormal><span lang=3DEN-US>Hi Kevin,<br>
<br>
<br>
It resolved from the error:<o:p></o:p></span></p>

</div>

</div>

<div>

<div>

<p class=3DMsoNormal style=3D'margin-bottom:12.0pt'><span lang=3DEN-US
style=3D'font-size:13.5pt'><br>
mv: cannot stat
`/home/sailaja/poky-chrome/build/tmp/work/core2-poky-linux/krb5-1.6.3-r6/im=
age/usr/bin/ftp':
No such file or directory</span><span lang=3DEN-US> <br>
<br>
I find the ftp and built it but again its showing an error like<br>
<br>
&nbsp;Generating solve db for /home/sailaja/poky-chrome/build/tmp/deploy/rp=
m/atom-pc...<br>
|&nbsp;&nbsp;&nbsp;
total:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0.000000 MB&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
0.871674 secs<br>
|&nbsp;&nbsp;&nbsp;
order:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0.000000 MB&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
0.090471 secs<br>
|&nbsp;&nbsp;&nbsp; fingerprint:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
537&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0.007286 MB&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
0.081155 secs<br>
|&nbsp;&nbsp;&nbsp; install:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;
278&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0.000000 MB&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
0.179576 secs<br>
|&nbsp;&nbsp;&nbsp;
dbadd:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;
278&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0.000000 MB&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
0.081411 secs<br>
|&nbsp;&nbsp;&nbsp;
dbget:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
8678&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1.128312 MB&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;
0.016757 secs<br>
|&nbsp;&nbsp;&nbsp;
dbput:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
5035&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2.213572 MB&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;
0.020290 secs<br>
|&nbsp;&nbsp;&nbsp; readhdr:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;
2781&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2.267168 MB&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;
0.206626 secs<br>
|&nbsp;&nbsp;&nbsp; hdrload:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
194461&nbsp;&nbsp;&nbsp; 256.103876 MB&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1.1189=
80
secs<br>
|&nbsp;&nbsp;&nbsp; hdrget:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
3861605&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0.000000 MB&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;
6.181097 secs<br>
| <b>Processing krb5...<br>
| Unable to find package krb5!<br>
| ERROR: Task failed: ('function do_rootfs failed',
'/home/sailaja/poky-chrome/build/tmp/work/atom-pc-poky-linux/poky-image-min=
imal-akshat-1.0-r0/temp/log.do_rootfs.9313')<br>
NOTE: package poky-image-minimal-akshat-1.0-r0: task do_rootfs: Failed</b><=
br>
ERROR: Task 179 (/home/sailaja/poky-chrome/meta/recipes-core/images/<a
href=3D"http://poky-image-minimal-akshat.bb" target=3D"_blank">poky-image-m=
inimal-akshat.bb</a>,
do_rootfs) failed with 1<br>
ERROR: '/home/sailaja/poky-chrome/meta/recipes-core/images/<a
href=3D"http://poky-image-minimal-akshat.bb" target=3D"_blank">poky-image-m=
inimal-akshat.bb</a>'
failed<br>
<br>
<br>
<br>
Any help would be greatly appreciated.<br>
<br>
<br>
<o:p></o:p></span></p>

</div>

</div>

<div>

<blockquote style=3D'border:none;border-left:solid windowtext 1.0pt;padding=
:0cm 0cm 0cm 6.0pt;
margin-left:4.8pt;margin-top:5.0pt;margin-right:0cm;margin-bottom:5.0pt;
border-color:-moz-use-text-color -moz-use-text-color -moz-use-text-color rg=
b(204, 204, 204)'>

<div>

<div>

<div style=3D'border:none;border-left:solid windowtext 1.5pt;padding:0cm 0c=
m 0cm 4.0pt;
border-color:-moz-use-text-color -moz-use-text-color -moz-use-text-color bl=
ue'>

<div>

<div>

<div>

<blockquote style=3D'border:none;border-left:solid windowtext 1.0pt;padding=
:0cm 0cm 0cm 6.0pt;
margin-left:4.8pt;margin-top:5.0pt;margin-right:0cm;margin-bottom:5.0pt'>

<div>

<div>

<div>

<div>

<div>

<div style=3D'border:none;border-left:solid windowtext 1.5pt;padding:0cm 0c=
m 0cm 4.0pt;
border-color:-moz-use-text-color -moz-use-text-color -moz-use-text-color bl=
ue'>

<div>

<div>

<p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;margin-bottom:12.0pt;
margin-left:63.3pt'><span lang=3DEN-US>Thanks &amp; Regards,<br>
SAI<o:p></o:p></span></p>

</div>

</div>

</div>

</div>

</div>

</div>

</div>

</div>

</blockquote>

</div>

</div>

</div>

</div>

</div>

</div>

</blockquote>

</div>

</div>

</div>

</div>

</div>

</div>

</div>

</body>

</html>

--_000_C10D3FB0CD45994C8A51FEC1227CE22F216C10F84Fshsmsx502ccrc_--
