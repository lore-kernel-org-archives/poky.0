Return-Path: <Paul.Ourada@Covidien.com>
Received: from mx01no.tycohealthcare.com (mx01no.tycohealthcare.com
	[216.75.208.72])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6F0764C80332
	for <poky@yoctoproject.org>; Mon, 25 Jul 2011 16:59:23 -0500 (CDT)
X-IronPort-AV: E=Sophos;i="4.67,265,1309752000"; 
	d="scan'208,217";a="277520680"
Received: from unknown (HELO tamans-bh02.thcg.net) ([10.80.3.108])
	by mx01no.tycohealthcare.com with ESMTP; 25 Jul 2011 17:59:10 -0400
Received: from TAMANS-HT100V.thcg.net ([10.80.9.28]) by tamans-bh02.thcg.net
	with Microsoft SMTPSVC(6.0.3790.4675); 
	Mon, 25 Jul 2011 17:59:11 -0400
Received: from TAMANS-MB100V.thcg.net ([169.254.8.245]) by
	TAMANS-HT100V.thcg.net ([10.80.9.28]) with mapi id 14.01.0289.001;
	Mon, 25 Jul 2011 17:59:10 -0400
From: "Ourada, Paul" <Paul.Ourada@Covidien.com>
To: Poky Project <poky@yoctoproject.org>
Thread-Topic: RedHat Network Config
Thread-Index: AcxLFhS1ZDcN1NaASWuIdQ8nHBo+5A==
Date: Mon, 25 Jul 2011 21:59:10 +0000
Message-ID: <4D9E0AFD9C2FCC428A8EAADA898F5B2DFDFA@TAMANS-MB100V.thcg.net>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.80.12.29]
MIME-Version: 1.0
X-OriginalArrivalTime: 25 Jul 2011 21:59:11.0012 (UTC)
	FILETIME=[15917640:01CC4B16]
Subject: RedHat Network Config
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
X-List-Received-Date: Mon, 25 Jul 2011 21:59:24 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_4D9E0AFD9C2FCC428A8EAADA898F5B2DFDFATAMANSMB100Vthcgnet_"

--_000_4D9E0AFD9C2FCC428A8EAADA898F5B2DFDFATAMANSMB100Vthcgnet_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I'm trying to set up what on Ubuntu would be the /etc/network/interfaces fi=
le for the qemu, and/or PXE boot configurations that my team is likely to u=
se for development. However, my company's IS department is asking us to emb=
race RedHat Linux for standardization purposes. I'm seeing that RedHat has =
a whole 'nuther idea about network configuration. Here's what the Poky Linu=
x Handbook suggests for Ubuntu:


allow-hotplug tap0
iface tap0 inet static
    address 192.168.7.200
    netmask 255.255.255.0
    network 192.168.7.0
    post-up iptables -A POSTROUTING -t nat -j MASQUERADE -s 192.168.7.0/24
    post-up echo 1 > /proc/sys/net/ipv4/ip_forward
    post-up iptables -P FORWARD ACCEPT
Where/how do I set this up for RedHat? Any ideas out there?

Thanks,

Paul E. Ourada
Sr. Principal Software Engineer
Covidien, Energy-based Devices
5920 Longbow Drive
Boulder, CO 80301
paul.ourada@covidien.com<mailto:paul.ourada@covidien.com>
www.covidien.com<mailto:paul.ourada@covidien.com>
Main: 303-530-2300
Ofc: 303-581-6940
Fax: 303-581-6741


--_000_4D9E0AFD9C2FCC428A8EAADA898F5B2DFDFATAMANSMB100Vthcgnet_
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
p
	{mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
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
<p class=3D"MsoNormal">I&#8217;m trying to set up what on Ubuntu would be t=
he /etc/network/interfaces file for the qemu, and/or PXE boot configuration=
s that my team is likely to use for development. However, my company&#8217;=
s IS department is asking us to embrace RedHat
 Linux for standardization purposes. I&#8217;m seeing that RedHat has a who=
le &#8216;nuther idea about network configuration. Here&#8217;s what the Po=
ky Linux Handbook suggests for Ubuntu:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p style=3D"mso-margin-top-alt:15.95pt;margin-right:0in;margin-bottom:15.95=
pt;margin-left:.5in;background:white">
<span lang=3D"EN" style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,&q=
uot;sans-serif&quot;;color:#333333">allow-hotplug tap0<br>
iface tap0 inet static<br>
&nbsp;&nbsp;&nbsp; address 192.168.7.200<br>
&nbsp;&nbsp;&nbsp; netmask 255.255.255.0<br>
&nbsp;&nbsp;&nbsp; network 192.168.7.0<br>
&nbsp;&nbsp;&nbsp; post-up iptables -A POSTROUTING -t nat -j MASQUERADE -s =
192.168.7.0/24<br>
&nbsp;&nbsp;&nbsp; post-up echo 1 &gt; /proc/sys/net/ipv4/ip_forward<br>
&nbsp;&nbsp;&nbsp; post-up iptables -P FORWARD ACCEPT<o:p></o:p></span></p>
<p class=3D"MsoNormal">Where/how do I set this up for RedHat? Any ideas out=
 there?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;">Paul E. Ourada<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;">Sr. Principal Software Engineer<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;">Covidien, Energy-based Devices<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;">5920 Longbow Drive<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;">Boulder, CO 80301<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;"><a href=3D"mailto:paul.ourada@covidien.co=
m"><span style=3D"color:blue">paul.ourada@covidien.com</span></a><o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;"><a href=3D"mailto:paul.ourada@covidien.co=
m"><span style=3D"color:blue">www.covidien.com</span></a><o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;">Main: 303-530-2300<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;">Ofc: 303-581-6940<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;">Fax: 303-581-6741<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_4D9E0AFD9C2FCC428A8EAADA898F5B2DFDFATAMANSMB100Vthcgnet_--
