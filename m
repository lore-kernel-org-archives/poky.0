Return-Path: <lianhao.lu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4645D4C800A4
	for <poky@yoctoproject.org>; Tue,  1 Mar 2011 22:45:17 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 01 Mar 2011 20:45:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,251,1297065600"; 
	d="scan'208,217";a="608073447"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by orsmga002.jf.intel.com with ESMTP; 01 Mar 2011 20:45:16 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 2 Mar 2011 12:45:11 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi; Wed, 2 Mar 2011
	12:45:10 +0800
From: "Lu, Lianhao" <lianhao.lu@intel.com>
To: v sailaja <vsailub4u@gmail.com>, "Tian, Kevin" <kevin.tian@intel.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Wed, 2 Mar 2011 12:45:08 +0800
Thread-Topic: got error while trying to pull the krb5 package into poky
Thread-Index: AcvX/d93vb8uT3HqTYaOF9b6qq70ngAgp9zw
Message-ID: <C10D3FB0CD45994C8A51FEC1227CE22F216C10FCA3@shsmsx502.ccr.corp.intel.com>
References: <AANLkTi=CVPBSLQ_8345OrL_YKde=Mf3bqrxRZru75vSR@mail.gmail.com>
In-Reply-To: <AANLkTi=CVPBSLQ_8345OrL_YKde=Mf3bqrxRZru75vSR@mail.gmail.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Subject: Re: got error while trying to pull the krb5 package into poky
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
X-List-Received-Date: Wed, 02 Mar 2011 04:45:18 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_C10D3FB0CD45994C8A51FEC1227CE22F216C10FCA3shsmsx502ccrc_"

--_000_C10D3FB0CD45994C8A51FEC1227CE22F216C10FCA3shsmsx502ccrc_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi SAI,

Does the "bitbake krb5" succeed? If it does, the rpm file it generated shou=
ld be  under the directory tmp/deploy/rpm/core2 if you set MACHINE to atom-=
pc in conf/local.conf. Or you may check at the directory "/home/sailaja/pok=
y-chrome/build/tmp/work/core2-poky-linux/krb5-1.6.3-r6/deploy-rpms", the RP=
M file is actually created here and later gets copied to tmp/deploy/rpm.

Best Regards,
Lianhao

From: v sailaja [mailto:vsailub4u@gmail.com]
Sent: Tuesday, March 01, 2011 6:46 PM
To: Lu, Lianhao; Tian, Kevin; poky@yoctoproject.org
Subject: got error while trying to pull the krb5 package into poky

Hi,

I tried with the following


              bitbake krb5  -c cleanall
              bitbake krb5
But again I am getting the same error and krb5 rpm file is not generated at=
  tmp/deploy/rpm.


 The value is

PACKAGE_CLASSES ?=3D "package_rpm package_ipk"


error:
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
age-minimal-akshat.bb<http://poky-image-minimal-akshat.bb/>, do_rootfs) fai=
led with 1
ERROR: '/home/sailaja/poky-chrome/meta/recipes-core/images/poky-image-minim=
al-akshat.bb<http://poky-image-minimal-akshat.bb/>' failed



Please help me in finding the solution.
Any help  would be greatly apprecited.

Thanks & Regards,
SAI







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



--_000_C10D3FB0CD45994C8A51FEC1227CE22F216C10FCA3shsmsx502ccrc_
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
p
	{mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
span.EmailStyle18
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
color:#1F497D'>Does the &#8220;bitbake krb5&#8221; succeed? If it does, the=
 rpm
file it generated should be &nbsp;under the directory tmp/deploy/rpm/core2 =
if
you set MACHINE to atom-pc in conf/local.conf. Or you may check at the
directory &#8220;/home/sailaja/poky-chrome/build/tmp/work/core2-poky-linux/=
krb5-1.6.3-r6/deploy-rpms&#8221;,
the RPM file is actually created here and later gets copied to tmp/deploy/r=
pm.<o:p></o:p></span></p>

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
font-family:"Tahoma","sans-serif"'> v sailaja [mailto:vsailub4u@gmail.com] =
<br>
<b>Sent:</b> Tuesday, March 01, 2011 6:46 PM<br>
<b>To:</b> Lu, Lianhao; Tian, Kevin; poky@yoctoproject.org<br>
<b>Subject:</b> got error while trying to pull the krb5 package into poky<o=
:p></o:p></span></p>

</div>

</div>

<p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal style=3D'margin-bottom:12.0pt'><span lang=3DEN-US
style=3D'color:#336666'>Hi,<br>
<br>
I tried with the following <br>
</span><span lang=3DEN-US style=3D'font-size:7.0pt;color:#336666'>&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><span lang=3DEN-US style=3D'font-size:10.5pt;color:#336666'><br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
bitbake krb5 &nbsp;-c cleanall &nbsp; <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
bitbake krb5</span><span lang=3DEN-US style=3D'color:#336666'><br>
But again I am getting the same error and krb5 rpm file is not generated
at&nbsp; tmp/deploy/rpm.</span><span lang=3DEN-US><br>
<span style=3D'color:#336666'><br>
<br>
&nbsp;The value is </span><br>
<br>
<b><span style=3D'color:#339999'>PACKAGE_CLASSES ?=3D &quot;package_rpm
package_ipk&quot;</span></b><br>
<br>
<b><br>
error:</b><br>
<span style=3D'color:#336666'>&nbsp;Generating solve db for
/home/sailaja/poky-chrome/build/tmp/deploy/rpm/atom-pc...<br>
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
|&nbsp;&nbsp;&nbsp;
install:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
href=3D"http://poky-image-minimal-akshat.bb/" target=3D"_blank">poky-image-=
minimal-akshat.bb</a>,
do_rootfs) failed with 1<br>
ERROR: '/home/sailaja/poky-chrome/meta/recipes-core/images/<a
href=3D"http://poky-image-minimal-akshat.bb/" target=3D"_blank">poky-image-=
minimal-akshat.bb</a>'
failed<br>
</span><br>
<br>
<br>
<span style=3D'color:#336666'>Please help me in finding the solution.<br>
Any help&nbsp; would be greatly apprecited.<br>
<br>
Thanks &amp; Regards,<br>
SAI</span><br>
<br>
<br>
<span style=3D'color:#339999'><br>
</span><br>
<br>
<br>
<o:p></o:p></span></p>

<div>

<blockquote style=3D'border:none;border-left:solid #CCCCCC 1.0pt;padding:0c=
m 0cm 0cm 6.0pt;
margin-left:4.8pt;margin-top:5.0pt;margin-right:0cm;margin-bottom:5.0pt'>

<p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p>

<div>

<div>

<p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt=
:auto;
margin-left:4.8pt'><span lang=3DEN-US style=3D'font-size:10.5pt;color:#1F49=
7D'>Hi
SAI,</span><span lang=3DEN-US><o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt=
:auto;
margin-left:4.8pt'><span lang=3DEN-US style=3D'font-size:10.5pt;color:#1F49=
7D'>&nbsp;</span><span
lang=3DEN-US><o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt=
:auto;
margin-left:4.8pt'><span lang=3DEN-US style=3D'font-size:10.5pt;color:#1F49=
7D'>Please
try the following to rebuild the krb5 to see if the rpm is generated:</span=
><span
lang=3DEN-US><o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt=
:auto;
margin-left:4.8pt'><span lang=3DEN-US style=3D'font-size:10.5pt;color:#1F49=
7D'>&nbsp;</span><span
lang=3DEN-US><o:p></o:p></span></p>

<p style=3D'margin-left:22.8pt'><span lang=3DEN-US style=3D'font-size:10.5p=
t;
color:#1F497D'>-</span><span lang=3DEN-US style=3D'font-size:7.0pt;color:#1=
F497D'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><span lang=3DEN-US style=3D'font-size:10.5pt;color:#1F497D'>bitbake =
krb5
&nbsp;-c cleanall</span><span lang=3DEN-US><o:p></o:p></span></p>

<p style=3D'margin-left:22.8pt'><span lang=3DEN-US style=3D'font-size:10.5p=
t;
color:#1F497D'>-</span><span lang=3DEN-US style=3D'font-size:7.0pt;color:#1=
F497D'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><span lang=3DEN-US style=3D'font-size:10.5pt;color:#1F497D'>bitbake =
krb5</span><span
lang=3DEN-US><o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt=
:auto;
margin-left:4.8pt'><span lang=3DEN-US style=3D'font-size:10.5pt;color:#1F49=
7D'>&nbsp;</span><span
lang=3DEN-US><o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt=
:auto;
margin-left:4.8pt'><span lang=3DEN-US style=3D'font-size:10.5pt;color:#1F49=
7D'>This
should generate the rpm file under the directory of
&#8220;tmp/deploy/rpm&#8221;. </span><span lang=3DEN-US><o:p></o:p></span><=
/p>

<p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt=
:auto;
margin-left:4.8pt'><span lang=3DEN-US style=3D'font-size:10.5pt;color:#1F49=
7D'>&nbsp;</span><span
lang=3DEN-US><o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt=
:auto;
margin-left:4.8pt'><span lang=3DEN-US style=3D'font-size:10.5pt;color:#1F49=
7D'>b.t.w.
what&#8217;s the value set to the variable PACKAGE_CLASSES in your
conf/local.conf? </span><span lang=3DEN-US><o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt=
:auto;
margin-left:4.8pt'><span lang=3DEN-US style=3D'font-size:10.5pt;color:#1F49=
7D'>&nbsp;</span><span
lang=3DEN-US><o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt=
:auto;
margin-left:4.8pt'><span lang=3DEN-US style=3D'font-size:10.5pt;color:#1F49=
7D'>Best
Regards,</span><span lang=3DEN-US><o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt=
:auto;
margin-left:4.8pt'><span lang=3DEN-US style=3D'font-size:10.5pt;color:#1F49=
7D'>Lianhao
Lu</span><span lang=3DEN-US><o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p>

</div>

</div>

</blockquote>

</div>

<p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p>

</div>

</div>

</body>

</html>

--_000_C10D3FB0CD45994C8A51FEC1227CE22F216C10FCA3shsmsx502ccrc_--
