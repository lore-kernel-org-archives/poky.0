Return-Path: <B38611@freescale.com>
Received: from db9outboundpool.messaging.microsoft.com
	(mail-db9lp0251.outbound.messaging.microsoft.com [213.199.154.251])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9077E0154E
	for <poky@yoctoproject.org>; Fri, 13 Sep 2013 01:03:44 -0700 (PDT)
Received: from mail214-db9-R.bigfish.com (10.174.16.243) by
	DB9EHSOBE031.bigfish.com (10.174.14.94) with Microsoft SMTP Server id
	14.1.225.22; Fri, 13 Sep 2013 08:03:44 +0000
Received: from mail214-db9 (localhost [127.0.0.1])	by
	mail214-db9-R.bigfish.com (Postfix) with ESMTP id E13511E014F	for
	<poky@yoctoproject.org>; Fri, 13 Sep 2013 08:03:43 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: 0
X-BigFish: VS0(zzc85fh4015Izz1f42h208ch1ee6h1de0h1fdah2073h1202h1e76h1d1ah1d2ah1fc6hzz1d7338h1de098h17326ah18c673h1c8fb4h1de097h186068h8275bh8275dhz2dh2a8h839h8e2h8e3hd25hf0ah1288h12a5h12bdh137ah1441h1504h1537h153bh15d0h162dh1631h1758h18e1h1946h19b5h1ad9h1b0ah1b2fh1bceh1fb3h1d0ch1d2eh1d3fh1dc1h1dfeh1dffh1e1dh1fe8h1ff5h20f0hbe9i1155h)
Received: from mail214-db9 (localhost.localdomain [127.0.0.1]) by mail214-db9
	(MessageSwitch) id 1379059421709523_11623;
	Fri, 13 Sep 2013 08:03:41 +0000 (UTC)
Received: from DB9EHSMHS003.bigfish.com (unknown [10.174.16.241])	by
	mail214-db9.bigfish.com (Postfix) with ESMTP id A9AB420005E	for
	<poky@yoctoproject.org>; Fri, 13 Sep 2013 08:03:41 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by DB9EHSMHS003.bigfish.com
	(10.174.14.13) with Microsoft SMTP Server (TLS) id 14.16.227.3;
	Fri, 13 Sep 2013 08:03:41 +0000
Received: from 039-SN2MPN1-022.039d.mgd.msft.net ([169.254.2.191]) by
	039-SN1MMR1-001.039d.mgd.msft.net ([10.84.1.13]) with mapi id
	14.03.0158.002; Fri, 13 Sep 2013 08:03:39 +0000
From: Duan Fugang-B38611 <B38611@freescale.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: Yacto rootfs: multi-touch message cannot handled by "close"
	button
Thread-Index: AQHOsFfBDMqqo7MiNUqlBGvGEi2H2g==
Date: Fri, 13 Sep 2013 08:03:39 +0000
Message-ID: <9848F2DB572E5649BA045B288BE08FBE016E14A7@039-SN2MPN1-022.039d.mgd.msft.net>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.192.242.233]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
X-FOPE-CONNECTOR: Id%0$Dn%*$RO%0$TLS%0$FQDN%$TlsDn%
Subject: Yacto rootfs: multi-touch message cannot handled by "close" button
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 13 Sep 2013 08:03:45 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_9848F2DB572E5649BA045B288BE08FBE016E14A7039SN2MPN102203_"

--_000_9848F2DB572E5649BA045B288BE08FBE016E14A7039SN2MPN102203_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi, all,

We use the X.Org X Server 1.14.0 + QT4.8.5 to do one demo, but I  catch one=
 issue: multi-touch message is not handled by "close" button.

I use egalax touchscreen for the multi-touch test.
After kernel up, evtest test the multi-touch message, all pass. Use xinput =
to do the test, also pass.

Open one QT app, all multi-touch message can be processed, but the window o=
f the app cannot be closed by click the "X" button in the right-up region.
I test GNOME destop with the same kernel,  any apps' window can be closed.

So, It is strange, maybe it is KDE issue for multi-touch ?
Current KDE is matchbox-window-manager.
Current multi-touch support messages:
root@imx6qsabresd:/# mtdev-test /dev/input/event0
supported mt events:
                                 ABS_MT_TOUCH_MAJOR
                                ABS_MT_WIDTH_MAJOR
                                ABS_MT_POSITION_X
                                ABS_MT_POSITION_Y
                                ABS_MT_TRACKING_ID



Any response is appreciative.

Thanks,
Andy






--_000_9848F2DB572E5649BA045B288BE08FBE016E14A7039SN2MPN102203_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 12 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
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
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.EmailStyle18
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle19
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle20
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle21
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle22
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle23
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle24
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle25
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.25in 1.0in 1.25in;}
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
<p class=3D"MsoNormal">Hi, all,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">We use the X.Org X Server 1.14.0 &#43; QT4.8.5 to do=
 one demo, but I &nbsp;catch one issue:
<span style=3D"color:#1F497D">multi-touch message is not handled by &#8220;=
close&#8221; button.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal">I use egalax touchscreen for the multi-touch test.<o=
:p></o:p></p>
<p class=3D"MsoNormal">After kernel up, evtest test the multi-touch message=
, all pass. Use xinput to do the test, also pass.<span style=3D"color:#1F49=
7D"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Open one QT app, all multi-touch message can be proc=
essed, but the window of the app cannot be closed by click the &#8220;X&#82=
21;
<span style=3D"color:#1F497D">button </span>in the right-up region.<o:p></o=
:p></p>
<p class=3D"MsoNormal">I test GNOME destop with the same kernel,&nbsp; any =
apps&#8217; window can be closed.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">So, It is strange, maybe it is KDE issue for multi-t=
ouch ?<o:p></o:p></p>
<p class=3D"MsoNormal">Current KDE is matchbox-window-manager.<o:p></o:p></=
p>
<p class=3D"MsoNormal">Current multi-touch support messages:<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in"><span style=3D"color:#1F4=
97D">root@imx6qsabresd:/# mtdev-test /dev/input/event0<o:p></o:p></span></p=
>
<p class=3D"MsoNormal" style=3D"margin-left:.5in;text-indent:.5in"><span st=
yle=3D"color:#1F497D">supported mt events:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">&nbsp; &nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp; &nbsp;ABS_MT_TOUCH_MAJOR<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">&nbsp;&nbsp; &nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp; ABS_MT_WIDTH_MAJOR<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">&nbsp;&nbsp; &nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp; ABS_MT_POSITION_X<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">&nbsp;&nbsp; &nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp; ABS_MT_POSITION_Y<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">&nbsp; &nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp; ABS_MT_TRACKING_ID<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal">Any response is appreciative.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Andy <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_9848F2DB572E5649BA045B288BE08FBE016E14A7039SN2MPN102203_--
