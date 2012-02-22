Return-Path: <chang@altera.com>
Received: from TX2EHSOBE005.bigfish.com (tx2ehsobe001.messaging.microsoft.com
	[65.55.88.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4180FE0123C
	for <poky@yoctoproject.org>; Wed, 22 Feb 2012 00:00:57 -0800 (PST)
Received: from mail192-tx2-R.bigfish.com (10.9.14.243) by
	TX2EHSOBE005.bigfish.com (10.9.40.25) with Microsoft SMTP Server id
	14.1.225.23; Wed, 22 Feb 2012 08:00:51 +0000
Received: from mail192-tx2 (localhost [127.0.0.1])	by
	mail192-tx2-R.bigfish.com (Postfix) with ESMTP id 2AECC2A049B	for
	<poky@yoctoproject.org>; Wed, 22 Feb 2012 08:00:51 +0000 (UTC)
X-SpamScore: -8
X-BigFish: VS-8(zz217bLc85fh13fcMzz1202hz31iz8275bh8275dhz2fh2a8h668h839h)
X-Forefront-Antispam-Report: CIP:66.35.227.6; KIP:(null); UIP:(null); IPV:NLI;
	H:sj-smtp01.altera.com; RD:sj-smtp01.altera.com; EFVD:NLI
Received-SPF: pass (mail192-tx2: domain of altera.com designates 66.35.227.6
	as permitted sender) client-ip=66.35.227.6;
	envelope-from=chang@altera.com; helo=sj-smtp01.altera.com ;
	1.altera.com ; 
Received: from mail192-tx2 (localhost.localdomain [127.0.0.1]) by mail192-tx2
	(MessageSwitch) id 1329897649555799_7016;
	Wed, 22 Feb 2012 08:00:49 +0000 (UTC)
Received: from TX2EHSMHS007.bigfish.com (unknown [10.9.14.249])	by
	mail192-tx2.bigfish.com (Postfix) with ESMTP id 777DF3A0043	for
	<poky@yoctoproject.org>; Wed, 22 Feb 2012 08:00:49 +0000 (UTC)
Received: from sj-smtp01.altera.com (66.35.227.6) by TX2EHSMHS007.bigfish.com
	(10.9.99.107) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Wed, 22 Feb 2012 08:00:48 +0000
Received: from sj-mail01.altera.com ([137.57.1.6])	by sj-smtp01.altera.com
	(8.13.7+Sun/8.13.7) with ESMTP id q1M84LCp009750	for
	<poky@yoctoproject.org>; Wed, 22 Feb 2012 00:04:21 -0800 (PST)
Received: from sj-ithc02.altera.priv.altera.com
	(sj-ithc02.altera.priv.altera.com [137.57.245.21])	by
	sj-mail01.altera.com
	(8.13.7+Sun/8.13.7) with ESMTP id q1M80qU9000994	for
	<poky@yoctoproject.org>; Wed, 22 Feb 2012 00:00:52 -0800 (PST)
Received: from sj-itevmsg01.altera.priv.altera.com (137.57.216.86) by
	sj-ithc02.altera.priv.altera.com (137.57.245.21) with Microsoft SMTP
	Server (TLS) id 8.3.106.1; Wed, 22 Feb 2012 00:00:51 -0800
Received: from pg-ithc01.altera.priv.altera.com (137.57.105.42) by
	sj-itevmsg01.altera.priv.altera.com (137.57.216.86) with Microsoft SMTP
	Server (TLS) id 8.3.213.0; Wed, 22 Feb 2012 00:00:51 -0800
Received: from PG-ITMSG03.altera.priv.altera.com ([137.57.105.40]) by
	pg-ithc01.altera.priv.altera.com ([137.57.105.42]) with mapi;
	Wed, 22 Feb 2012 16:00:49 +0800
From: Chin Huat Ang <chang@altera.com>
To: "'poky@yoctoproject.org'" <poky@yoctoproject.org>
Date: Wed, 22 Feb 2012 16:00:48 +0800
Thread-Topic: Using non-distro gcc
Thread-Index: AczxOBZ5JuI5XnFxRx2VUKQRyo1FeQ==
Message-ID: <0BB3B561D7068A4E89FD8E9ABFB538BEB0B9F942C2@PG-ITMSG03.altera.priv.altera.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-OriginatorOrg: altera.com
Subject: Using non-distro gcc
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
X-List-Received-Date: Wed, 22 Feb 2012 08:00:57 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_0BB3B561D7068A4E89FD8E9ABFB538BEB0B9F942C2PGITMSG03alte_"

--_000_0BB3B561D7068A4E89FD8E9ABFB538BEB0B9F942C2PGITMSG03alte_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

My Centos 5.6's gcc is a bit outdated and I'm seeing compiler bugs when com=
piling elfutils-native. As such I've rolled my own gcc 4.5.3 with MPC/MPFR/=
GMP all installed to /opt, my intention is to make the new toolchain self-c=
ontained and reusable on other machines/distros.

The problem is that, in order to use this gcc I will need to set LD_LIBRARY=
_PATH so that it can picks up MPC/MPFR/GMP from /opt.

Poky seems to always build with pristine environment (i.e. no LD_LIBRARY_PA=
TH), so my new toolchain is unusable. This problem will not happen on distr=
o gcc as MPC et al are always installed in /usr/lib.

Is there a way to tell Poky to set LD_LIBRARY_PATH whenever it uses the non=
-distro toolchain? Or is it the right thing to do at all?

________________________________
Confidentiality Notice.
This message may contain information that is confidential or otherwise prot=
ected from disclosure. If you are not the intended recipient, you are hereb=
y notified that any use, disclosure, dissemination, distribution, or copyin=
g of this message, or any attachments, is strictly prohibited. If you have =
received this message in error, please advise the sender by reply e-mail, a=
nd delete the message and any attachments. Thank you.

--_000_0BB3B561D7068A4E89FD8E9ABFB538BEB0B9F942C2PGITMSG03alte_
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
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 12 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
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
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
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
<p class=3D"MsoNormal">My Centos 5.6&#8217;s gcc is a bit outdated and I&#8=
217;m seeing compiler bugs when compiling elfutils-native. As such I&#8217;=
ve rolled my own gcc 4.5.3 with MPC/MPFR/GMP all installed to /opt, my inte=
ntion is to make the new toolchain self-contained and
 reusable on other machines/distros.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The problem is that, in order to use this gcc I will=
 need to set LD_LIBRARY_PATH so that it can picks up MPC/MPFR/GMP from /opt=
.
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Poky seems to always build with pristine environment=
 (i.e. no LD_LIBRARY_PATH), so my new toolchain is unusable. This problem w=
ill not happen on distro gcc as MPC et al are always installed in /usr/lib.=
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Is there a way to tell Poky to set LD_LIBRARY_PATH w=
henever it uses the non-distro toolchain? Or is it the right thing to do at=
 all?<o:p></o:p></p>
</div>
<br>
<hr>
<font face=3D"Arial" color=3D"Black" size=3D"2">Confidentiality Notice.<br>
This message may contain information that is confidential or otherwise prot=
ected from disclosure. If you are not the intended recipient, you are hereb=
y notified that any use, disclosure, dissemination, distribution, or copyin=
g of this message, or any attachments,
 is strictly prohibited. If you have received this message in error, please=
 advise the sender by reply e-mail, and delete the message and any attachme=
nts. Thank you.<br>
</font>
</body>
</html>

--_000_0BB3B561D7068A4E89FD8E9ABFB538BEB0B9F942C2PGITMSG03alte_--
