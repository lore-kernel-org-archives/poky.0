Return-Path: <lianhao.lu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9EC9C4C800A4
	for <poky@yoctoproject.org>; Mon, 28 Feb 2011 20:14:03 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 28 Feb 2011 18:14:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,245,1297065600"; 
	d="scan'208,217";a="714408736"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by orsmga001.jf.intel.com with ESMTP; 28 Feb 2011 18:14:02 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Tue, 1 Mar 2011 10:12:06 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi; Tue, 1 Mar 2011
	10:12:05 +0800
From: "Lu, Lianhao" <lianhao.lu@intel.com>
To: v sailaja <vsailub4u@gmail.com>, "Tian, Kevin" <kevin.tian@intel.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Tue, 1 Mar 2011 10:12:05 +0800
Thread-Topic: [poky] problems while building an image uasing poky
Thread-Index: AcvXVScyMBQKchaDTgG9z7wlQp962wAX0e0Q
Message-ID: <C10D3FB0CD45994C8A51FEC1227CE22F216C10F601@shsmsx502.ccr.corp.intel.com>
References: <AANLkTin31iKNweKt-KET12gm6Fw4v4FJay+p1aE-ZkV_@mail.gmail.com>
	<625BA99ED14B2D499DC4E29D8138F15052FC80F00B@shsmsx502.ccr.corp.intel.com>
	<AANLkTin+4oP4eTeG120dceTMcNeYF4JF+RXQBxc6JD1u@mail.gmail.com>
	<AANLkTi=Sr0=P2--sYZZs6g2YD+KSJi4qfJK7A19PsJOO@mail.gmail.com>
	<625BA99ED14B2D499DC4E29D8138F15053E6AC8FB0@shsmsx502.ccr.corp.intel.com>
	<AANLkTikyHZDeOo0WQVKvkTfRPJCxTLnb6iM82np6NEuZ@mail.gmail.com>
In-Reply-To: <AANLkTikyHZDeOo0WQVKvkTfRPJCxTLnb6iM82np6NEuZ@mail.gmail.com>
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
X-List-Received-Date: Tue, 01 Mar 2011 02:14:04 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_C10D3FB0CD45994C8A51FEC1227CE22F216C10F601shsmsx502ccrc_"

--_000_C10D3FB0CD45994C8A51FEC1227CE22F216C10F601shsmsx502ccrc_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi SAI,

Could you make sure the krb5 rpm pacakge file is generated and is in the pr=
oper subdirectory(corresponding to your target architecture) under "tmp/dep=
loy/rpm"?

Best Regards,
Lianhao

From: poky-bounces@yoctoproject.org [mailto:poky-bounces@yoctoproject.org] =
On Behalf Of v sailaja
Sent: Monday, February 28, 2011 10:38 PM
To: Tian, Kevin; poky@yoctoproject.org
Subject: Re: [poky] problems while building an image uasing poky


Hi Kevin,


I get resolved from the error:
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







--_000_C10D3FB0CD45994C8A51FEC1227CE22F216C10F601shsmsx502ccrc_
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

<p class=3DMsoNormal style=3D'text-align:justify;text-justify:inter-ideogra=
ph'><span
lang=3DEN-US style=3D'font-size:10.5pt;font-family:"Calibri","sans-serif";
color:#1F497D'>Hi SAI,<o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-align:justify;text-justify:inter-ideogra=
ph'><span
lang=3DEN-US style=3D'font-size:10.5pt;font-family:"Calibri","sans-serif";
color:#1F497D'><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal style=3D'text-align:justify;text-justify:inter-ideogra=
ph'><span
lang=3DEN-US style=3D'font-size:10.5pt;font-family:"Calibri","sans-serif";
color:#1F497D'>Could you make sure the krb5 rpm pacakge file is generated a=
nd is
in the proper subdirectory(corresponding to your target architecture) under=
 &#8220;tmp/deploy/rpm&#8221;?<o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-align:justify;text-justify:inter-ideogra=
ph'><span
lang=3DEN-US style=3D'font-size:10.5pt;font-family:"Calibri","sans-serif";
color:#1F497D'><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal style=3D'text-align:justify;text-justify:inter-ideogra=
ph'><span
lang=3DEN-US style=3D'font-size:10.5pt;font-family:"Calibri","sans-serif";
color:#1F497D'>Best Regards,<o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-align:justify;text-justify:inter-ideogra=
ph'><span
lang=3DEN-US style=3D'font-size:10.5pt;font-family:"Calibri","sans-serif";
color:#1F497D'>Lianhao<o:p></o:p></span></p>

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
font-family:"Tahoma","sans-serif"'> poky-bounces@yoctoproject.org
[mailto:poky-bounces@yoctoproject.org] <b>On Behalf Of </b>v sailaja<br>
<b>Sent:</b> Monday, February 28, 2011 10:38 PM<br>
<b>To:</b> Tian, Kevin; poky@yoctoproject.org<br>
<b>Subject:</b> Re: [poky] problems while building an image uasing poky<o:p=
></o:p></span></p>

</div>

</div>

<p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal style=3D'margin-bottom:12.0pt'><span lang=3DEN-US><br>
Hi Kevin,<br>
<br>
<br>
I get resolved from the error:</span><span lang=3DEN-US style=3D'font-size:=
13.5pt'><br>
mv: cannot stat `/home/sailaja/poky-chrome/build/tmp/work/core2-poky-linux/=
krb5-1.6.3-r6/image/usr/bin/ftp':
No such file or directory</span><span lang=3DEN-US> <br>
<br>
I find the ftp and built it but again its showing an error like<br>
<br>
&nbsp;Generating solve db for
/home/sailaja/poky-chrome/build/tmp/deploy/rpm/atom-pc...<br>
|&nbsp;&nbsp;&nbsp; total:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
|&nbsp;&nbsp;&nbsp;
install:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
278&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0.000000 MB&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
0.179576 secs<br>
|&nbsp;&nbsp;&nbsp; dbadd:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;
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
|&nbsp;&nbsp;&nbsp;
readhdr:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
href=3D"http://poky-image-minimal-akshat.bb">poky-image-minimal-akshat.bb</=
a>,
do_rootfs) failed with 1<br>
ERROR: '/home/sailaja/poky-chrome/meta/recipes-core/images/<a
href=3D"http://poky-image-minimal-akshat.bb">poky-image-minimal-akshat.bb</=
a>'
failed<br>
<br>
<br>
<br>
Any help would be greatly appreciated.<br>
<br>
<br>
<br>
<o:p></o:p></span></p>

<div>

<blockquote style=3D'border:none;border-left:solid #CCCCCC 1.0pt;padding:0c=
m 0cm 0cm 6.0pt;
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
margin-left:9.6pt'><span lang=3DEN-US>Thanks &amp; Regards,<br>
SAI<br>
<br>
<br>
<br>
<o:p></o:p></span></p>

</div>

</div>

</div>

</div>

</div>

</div>

<p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt=
:auto;
margin-left:9.6pt'><span lang=3DEN-US>&nbsp;<o:p></o:p></span></p>

</div>

</div>

</blockquote>

</div>

<p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt=
:auto;
margin-left:4.8pt'><span lang=3DEN-US>&nbsp;<o:p></o:p></span></p>

</div>

</div>

</div>

</div>

</div>

</blockquote>

</div>

<p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p>

</div>

</div>

</body>

</html>

--_000_C10D3FB0CD45994C8A51FEC1227CE22F216C10F601shsmsx502ccrc_--
