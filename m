Return-Path: <Teemu.Keskinarkaus@Maximatecc.com>
Received: from mail1.bemta8.messagelabs.com (mail1.bemta8.messagelabs.com
	[216.82.243.207])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DBFC4E01405
	for <poky@yoctoproject.org>; Tue, 13 Aug 2013 04:06:20 -0700 (PDT)
Received: from [216.82.241.196:24801] by server-15.bemta-8.messagelabs.com id
	0F/4B-14220-B231A025; Tue, 13 Aug 2013 11:06:19 +0000
X-Env-Sender: Teemu.Keskinarkaus@Maximatecc.com
X-Msg-Ref: server-7.tower-46.messagelabs.com!1376391978!31497751!1
X-Originating-IP: [207.250.73.122]
X-StarScan-Received: 
X-StarScan-Version: 6.9.11; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 26257 invoked from network); 13 Aug 2013 11:06:18 -0000
Received: from unknown (HELO ammail.actuant.com) (207.250.73.122)
	by server-7.tower-46.messagelabs.com with AES128-SHA encrypted SMTP;
	13 Aug 2013 11:06:18 -0000
Received: from AMDTCEX12.actuant.pri ([fe80::1ff:ff4d:9ac5:22e8]) by
	AMDTCEX11.actuant.pri ([fe80::f86b:7a40:d71b:bb92%21]) with mapi id
	14.02.0342.003; Tue, 13 Aug 2013 06:06:15 -0500
From: "Keskinarkaus, Teemu" <Teemu.Keskinarkaus@Maximatecc.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: QT/Webkit in Poky
Thread-Index: Ac6YEswvxJnI4neEQUeFphFj0JBHzQ==
Date: Tue, 13 Aug 2013 11:06:14 +0000
Message-ID: <83DB4EC8FADD45428E3CC4E3664761FD09A89D47@AMDTCEX12.actuant.pri>
Accept-Language: fi-FI, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.0.10.100]
x-ems-proccessed: 52bwn4SPvyFdxH+yW9O0UA==
x-ems-stamp: OqCgXxkyP0PKON4CiJqybw==
MIME-Version: 1.0
Subject: QT/Webkit in Poky
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
X-List-Received-Date: Tue, 13 Aug 2013 11:06:25 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_83DB4EC8FADD45428E3CC4E3664761FD09A89D47AMDTCEX12actuan_"

--_000_83DB4EC8FADD45428E3CC4E3664761FD09A89D47AMDTCEX12actuan_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I'm trying to compile poky with QT/Webkit support. I get the normal qt4 com=
piled and installed just fine. I have created custom image that has qt4-pkg=
s as image feature.

I added -webkit to my own qt4-x11-free_4.8.4.bbappend file and also tried m=
odifying the original qt4-x11-free_4.8.4.bb - file and added -webkit to QT_=
CONFIG_FLAGS.

What I found that for some reason the Webkit gets compiled and installed to=
:  build/tmp/sysroot/myplatform/usr/lib - directory, but not to actual sysr=
oot where the hddimg - is created from. No errors are given and I couldn't =
see in logs any reason why it's not working.

I'm using quite recent poky version.

What is proper way to enable webkit and is there something else that is nee=
ded to done to get it installed correctly to the image?

Teemu Keskinarkaus



________________________________

Actuant Corporation Email Notice

This message is intended only for the use of the Addressee and may contain =
information that is PRIVILEGED and/or CONFIDENTIAL.
This email is intended only for the personal and confidential use of the re=
cipient(s) named above. If the reader of this email is not an intended reci=
pient, you have received this email in error and any review, dissemination,=
 distribution or copying is strictly prohibited.
If you have received this email in error, please notify the sender immediat=
ely by return mail and permanently delete the copy you received.

Thank you.

--_000_83DB4EC8FADD45428E3CC4E3664761FD09A89D47AMDTCEX12actuan_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<style>
<!--
@font-face
	{font-family:Calibri}
@font-face
	{font-family:"Century Gothic"}
@font-face
	{font-family:Georgia}
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif"}
a:link, span.MsoHyperlink
	{color:blue;
	text-decoration:underline}
a:visited, span.MsoHyperlinkFollowed
	{color:purple;
	text-decoration:underline}
span.EmailStyle17
	{font-family:"Calibri","sans-serif";
	color:windowtext}
.MsoChpDefault
	{font-family:"Calibri","sans-serif"}
@page WordSection1
	{margin:70.85pt 2.0cm 70.85pt 2.0cm}
div.WordSection1
	{}
-->
</style>
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi,</p>
<p class=3D"MsoNormal">&nbsp;</p>
<p class=3D"MsoNormal">I&#8217;m trying to compile poky with QT/Webkit supp=
ort. I get the normal qt4 compiled and installed just fine. I have created =
custom image that has qt4-pkgs as image feature.</p>
<p class=3D"MsoNormal">&nbsp;</p>
<p class=3D"MsoNormal">I added &#8211;webkit to my own qt4-x11-free_4.8.4.b=
bappend file and also tried modifying the original qt4-x11-free_4.8.4.bb &#=
8211; file and added &#8211;webkit to QT_CONFIG_FLAGS.</p>
<p class=3D"MsoNormal">&nbsp;</p>
<p class=3D"MsoNormal">What I found that for some reason the Webkit gets co=
mpiled and installed to: &nbsp;build/tmp/sysroot/myplatform/usr/lib &#8211;=
 directory, but not to actual sysroot where the hddimg &#8211; is created f=
rom. No errors are given and I couldn&#8217;t see in logs
 any reason why it&#8217;s not working.</p>
<p class=3D"MsoNormal">&nbsp;</p>
<p class=3D"MsoNormal">I&#8217;m using quite recent poky version.</p>
<p class=3D"MsoNormal">&nbsp;</p>
<p class=3D"MsoNormal">What is proper way to enable webkit and is there som=
ething else that is needed to done to get it installed correctly to the ima=
ge?</p>
<p class=3D"MsoNormal">&nbsp;</p>
<p class=3D"MsoNormal" style=3D"line-height:9.0pt"><b><span style=3D"font-s=
ize:10.0pt; font-family:&quot;Century Gothic&quot;,&quot;sans-serif&quot;">=
Teemu Keskinarkaus<br>
<br>
</span></b></p>
<p class=3D"MsoNormal">&nbsp;</p>
</div>
<br>
<hr>
<font face=3D"Arial" color=3D"Black" size=3D"1"><br>
Actuant Corporation Email Notice<br>
<br>
This message is intended only for the use of the Addressee and may contain =
information that is PRIVILEGED and/or CONFIDENTIAL.<br>
This email is intended only for the personal and confidential use of the re=
cipient(s) named above. If the reader of this email is not an intended reci=
pient, you have received this email in error and any review, dissemination,=
 distribution or copying is strictly
 prohibited.<br>
If you have received this email in error, please notify the sender immediat=
ely by return mail and permanently delete the copy you received.<br>
<br>
Thank you.<br>
</font>
</body>
</html>

--_000_83DB4EC8FADD45428E3CC4E3664761FD09A89D47AMDTCEX12actuan_--
