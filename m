Return-Path: <lianhao.lu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 34BFD4C803D6
	for <poky@yoctoproject.org>; Tue, 15 Mar 2011 04:10:11 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 15 Mar 2011 02:10:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,321,1297065600"; 
	d="scan'208,217";a="897361941"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by fmsmga001.fm.intel.com with ESMTP; 15 Mar 2011 02:10:07 -0700
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Tue, 15 Mar 2011 17:09:32 +0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Tue, 15 Mar 2011 17:09:32 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Tue, 15 Mar 2011 17:09:31 +0800
From: "Lu, Lianhao" <lianhao.lu@intel.com>
To: embedded.yogesh <embedded.yogesh@gmail.com>, "poky@yoctoproject.org"
	<poky@yoctoproject.org>
Date: Tue, 15 Mar 2011 17:09:29 +0800
Thread-Topic: [poky] Problem while generating rootfs with package_ipk
Thread-Index: AcviCKJOzpN0ID/BQDSNR/pMUfq0/wA4oavA
Message-ID: <C10D3FB0CD45994C8A51FEC1227CE22F218AD10FA0@shsmsx502.ccr.corp.intel.com>
References: <4D7DA763.7030907@gmail.com>
In-Reply-To: <4D7DA763.7030907@gmail.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Subject: Re: Problem while generating rootfs with package_ipk
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
X-List-Received-Date: Tue, 15 Mar 2011 09:10:11 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_C10D3FB0CD45994C8A51FEC1227CE22F218AD10FA0shsmsx502ccrc_"

--_000_C10D3FB0CD45994C8A51FEC1227CE22F218AD10FA0shsmsx502ccrc_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Yogesh,

There is rootfs_ipk bug(http://bugzilla.pokylinux.org/show_bug.cgi?id=3D870=
), but your problem seems irrelevant. I don't think the poky-image-minimal =
includes libxss1 packages, have you added anything into poky-image-minimal?

Best Regards,
Lianhao

From: poky-bounces@yoctoproject.org [mailto:poky-bounces@yoctoproject.org] =
On Behalf Of embedded.yogesh
Sent: Monday, March 14, 2011 1:28 PM
To: poky@yoctoproject.org
Subject: [poky] Problem while generating rootfs with package_ipk

Hi,

While generating rootfs with

MACHINE ?=3D "atom-pc"
PACKAGE_CLASSES ?=3D "package_ipk"
Host machine "Linux xxx-desktop 2.6.32-28-generic-pae #55-Ubuntu SMP Mon Ja=
n 10 22:34:08 UTC 2011 i686 GNU/Linux"

Got following error :-

| Configuring xhost.

| Configuring wireless-tools.

| Configuring libxss1.

| Collected errors:

|  * extract_archive: Cannot create symlink from ./var/log to 'volatile/log=
': File exists.

|  * extract_archive: Cannot create symlink from ./var/cache to 'volatile/c=
ache': File exists.

|  * extract_archive: Cannot create symlink from ./var/run to 'volatile/run=
': File exists.

| + '[' '!' -z '' ']'

| + export D=3D/home/ylal/logi/poky/build/tmp/work/atom-pc-poky-linux/poky-=
image-minimal-logi-1.0-r0/rootfs

| + D=3D/home/ylal/logi/poky/build/tmp/work/atom-pc-poky-linux/poky-image-m=
inimal-logi-1.0-r0/rootfs

| + export OFFLINE_ROOT=3D/home/ylal/logi/poky-chrome/build/tmp/work/atom-p=
c-poky-linux/poky-image-minimal-logi-1.0-r0/rootfs

| + OFFLINE_ROOT=3D/home/ylal/logi/poky/build/tmp/work/atom-pc-poky-linux/p=
oky-image-minimal-logi-1.0-r0/rootfs

| + export IPKG_OFFLINE_ROOT=3D/home/ylal/logi/poky/build/tmp/work/atom-pc-=
poky-linux/poky-image-minimal-logi-1.0-r0/rootfs

| + IPKG_OFFLINE_ROOT=3D/home/ylal/logi/poky/build/tmp/work/atom-pc-poky-li=
nux/poky-image-minimal-logi-1.0-r0/rootfs

| + export OPKG_OFFLINE_ROOT=3D/home/ylal/logi/poky/build/tmp/work/atom-pc-=
poky-linux/poky-image-minimal-logi-1.0-r0/rootfs

| + OPKG_OFFLINE_ROOT=3D/home/ylal/logi/poky/build/tmp/work/atom-pc-poky-li=
nux/poky-image-minimal-logi-1.0-r0/rootfs

| + ipk_insert_feed_uris

| + echo 'Building from feeds activated!'

| Building from feeds activated!

Thanks
Yogesh

--_000_C10D3FB0CD45994C8A51FEC1227CE22F218AD10FA0shsmsx502ccrc_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">

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
	font-family:"Times New Roman","serif";
	color:black;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";
	color:black;}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:"Courier New";
	color:black;}
span.EmailStyle19
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

<body bgcolor=3Dwhite lang=3DZH-CN link=3Dblue vlink=3Dpurple>

<div class=3DWordSection1>

<div>

<p class=3DMsoNormal style=3D'text-align:justify;text-justify:inter-ideogra=
ph'><span
lang=3DEN-US style=3D'font-size:10.5pt;font-family:"Calibri","sans-serif";
color:#1F497D'>Hi Yogesh,<o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-align:justify;text-justify:inter-ideogra=
ph'><span
lang=3DEN-US style=3D'font-size:10.5pt;font-family:"Calibri","sans-serif";
color:#1F497D'><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal style=3D'text-align:justify;text-justify:inter-ideogra=
ph'><span
lang=3DEN-US style=3D'font-size:10.5pt;font-family:"Calibri","sans-serif";
color:#1F497D'>There is rootfs_ipk bug(</span><span lang=3DEN-US><a
href=3D"http://bugzilla.pokylinux.org/show_bug.cgi?id=3D870">http://bugzill=
a.pokylinux.org/show_bug.cgi?id=3D870</a>),
but your problem seems irrelevant. I don&#8217;t think the poky-image-minim=
al includes
libxss1 packages, have you added anything into poky-image-minimal?</span><s=
pan
lang=3DEN-US style=3D'font-size:10.5pt;font-family:"Calibri","sans-serif";
color:#1F497D'><o:p></o:p></span></p>

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

</div>

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
"Tahoma","sans-serif";color:windowtext'>From:</span></b><span lang=3DEN-US
style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif";color:windowtex=
t'>
poky-bounces@yoctoproject.org [mailto:poky-bounces@yoctoproject.org] <b>On
Behalf Of </b>embedded.yogesh<br>
<b>Sent:</b> Monday, March 14, 2011 1:28 PM<br>
<b>To:</b> poky@yoctoproject.org<br>
<b>Subject:</b> [poky] Problem while generating rootfs with package_ipk<o:p=
></o:p></span></p>

</div>

</div>

<p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal style=3D'margin-bottom:12.0pt'><span lang=3DEN-US>Hi,<=
br>
<br>
While generating rootfs with <br>
<br>
MACHINE ?=3D &quot;atom-pc&quot;<br>
<i>PACKAGE_CLASSES ?=3D &quot;package_ipk&quot;</i><br>
Host machine &quot;Linux xxx-desktop 2.6.32-28-generic-pae #55-Ubuntu SMP M=
on
Jan 10 22:34:08 UTC 2011 i686 GNU/Linux&quot;<br>
<br>
Got following error :-<o:p></o:p></span></p>

<pre><span lang=3DEN-US>| Configuring xhost.<o:p></o:p></span></pre><pre><s=
pan
lang=3DEN-US>| Configuring wireless-tools.<o:p></o:p></span></pre><pre><spa=
n
lang=3DEN-US>| Configuring libxss1.<o:p></o:p></span></pre><pre><span lang=
=3DEN-US>| Collected errors:<o:p></o:p></span></pre><pre><span
lang=3DEN-US>|&nbsp; * extract_archive: Cannot create symlink from ./var/lo=
g to 'volatile/log': File exists.<o:p></o:p></span></pre><pre><span
lang=3DEN-US>|&nbsp; * extract_archive: Cannot create symlink from ./var/ca=
che to 'volatile/cache': File exists.<o:p></o:p></span></pre><pre><span
lang=3DEN-US>|&nbsp; * extract_archive: Cannot create symlink from ./var/ru=
n to 'volatile/run': File exists.<o:p></o:p></span></pre><pre><span
lang=3DEN-US>| + '[' '!' -z '' ']'<o:p></o:p></span></pre><pre><span lang=
=3DEN-US>| + export D=3D/home/ylal/logi/poky/build/tmp/work/atom-pc-poky-li=
nux/poky-image-minimal-logi-1.0-r0/rootfs<o:p></o:p></span></pre><pre><span
lang=3DEN-US>| + D=3D/home/ylal/logi/poky/build/tmp/work/atom-pc-poky-linux=
/poky-image-minimal-logi-1.0-r0/rootfs<o:p></o:p></span></pre><pre><span
lang=3DEN-US>| + export OFFLINE_ROOT=3D/home/ylal/logi/poky-chrome/build/tm=
p/work/atom-pc-poky-linux/poky-image-minimal-logi-1.0-r0/rootfs<o:p></o:p><=
/span></pre><pre><span
lang=3DEN-US>| + OFFLINE_ROOT=3D/home/ylal/logi/poky/build/tmp/work/atom-pc=
-poky-linux/poky-image-minimal-logi-1.0-r0/rootfs<o:p></o:p></span></pre><p=
re><span
lang=3DEN-US>| + export IPKG_OFFLINE_ROOT=3D/home/ylal/logi/poky/build/tmp/=
work/atom-pc-poky-linux/poky-image-minimal-logi-1.0-r0/rootfs<o:p></o:p></s=
pan></pre><pre><span
lang=3DEN-US>| + IPKG_OFFLINE_ROOT=3D/home/ylal/logi/poky/build/tmp/work/at=
om-pc-poky-linux/poky-image-minimal-logi-1.0-r0/rootfs<o:p></o:p></span></p=
re><pre><span
lang=3DEN-US>| + export OPKG_OFFLINE_ROOT=3D/home/ylal/logi/poky/build/tmp/=
work/atom-pc-poky-linux/poky-image-minimal-logi-1.0-r0/rootfs<o:p></o:p></s=
pan></pre><pre><span
lang=3DEN-US>| + OPKG_OFFLINE_ROOT=3D/home/ylal/logi/poky/build/tmp/work/at=
om-pc-poky-linux/poky-image-minimal-logi-1.0-r0/rootfs<o:p></o:p></span></p=
re><pre><span
lang=3DEN-US>| + ipk_insert_feed_uris<o:p></o:p></span></pre><pre><span
lang=3DEN-US>| + echo 'Building from feeds activated!'<o:p></o:p></span></p=
re><pre><span
lang=3DEN-US>| Building from feeds activated!<o:p></o:p></span></pre>

<p class=3DMsoNormal><span lang=3DEN-US><br>
Thanks<br>
Yogesh<o:p></o:p></span></p>

</div>

</div>

</body>

</html>

--_000_C10D3FB0CD45994C8A51FEC1227CE22F218AD10FA0shsmsx502ccrc_--
