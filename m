Return-Path: <Teemu.Keskinarkaus@Maximatecc.com>
Received: from mail1.bemta8.messagelabs.com (mail1.bemta8.messagelabs.com
	[216.82.243.203])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3DEB0E0078B
	for <poky@yoctoproject.org>; Tue,  3 Dec 2013 22:34:52 -0800 (PST)
Received: from [216.82.241.132:19233] by server-11.bemta-8.messagelabs.com id
	A0/58-07272-B0DCE925; Wed, 04 Dec 2013 06:34:51 +0000
X-Env-Sender: Teemu.Keskinarkaus@Maximatecc.com
X-Msg-Ref: server-10.tower-45.messagelabs.com!1386138890!27609892!1
X-Originating-IP: [207.250.73.122]
X-StarScan-Received: 
X-StarScan-Version: 6.9.16; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 12730 invoked from network); 4 Dec 2013 06:34:50 -0000
Received: from unknown (HELO ammail.actuant.com) (207.250.73.122)
	by server-10.tower-45.messagelabs.com with AES128-SHA encrypted SMTP;
	4 Dec 2013 06:34:50 -0000
Received: from AMDTCEX12.actuant.pri ([fe80::1ff:ff4d:9ac5:22e8]) by
	AMDTCEX11.actuant.pri ([fe80::f86b:7a40:d71b:bb92%21]) with mapi id
	14.02.0342.003; Wed, 4 Dec 2013 00:34:49 -0600
From: "Keskinarkaus, Teemu" <Teemu.Keskinarkaus@Maximatecc.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: Source package with wrong directory in it
Thread-Index: Ac7wub8cE7kaXauISaKRi46xE6OZEA==
Date: Wed, 4 Dec 2013 06:34:49 +0000
Message-ID: <83DB4EC8FADD45428E3CC4E3664761FD129FEFC2@AMDTCEX12.actuant.pri>
Accept-Language: fi-FI, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.0.10.100]
x-ems-proccessed: 52bwn4SPvyFdxH+yW9O0UA==
x-ems-stamp: ZdaTKMxnnWRa5qDUbfuKsQ==
MIME-Version: 1.0
Subject: Source package with wrong directory in it
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
X-List-Received-Date: Wed, 04 Dec 2013 06:34:55 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_83DB4EC8FADD45428E3CC4E3664761FD129FEFC2AMDTCEX12actuan_"

--_000_83DB4EC8FADD45428E3CC4E3664761FD129FEFC2AMDTCEX12actuan_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

This might be another user issue and not poky issue itself, but hopefully s=
omeone could help me here.

Usually when I download source package and unpack it will unpack itself to =
in directory name-version (eg. program-1.2.3) and yocto also assumes so. We=
ll, I have managed to find one program that doesn't have the version part o=
f the directory name and haven't been able to redirect the yocto/poky to us=
e that program-directory without version to build the program.

Is there a way to do that within the recipe and not needing to touch the cl=
ass-files? And this is program that's not originally in yocto so it's .bb a=
nd not .bbappend - file.

And I don't want to start repacking the software or trying to convince the =
author to rename the package since there might be other similar sources as =
well.

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

--_000_83DB4EC8FADD45428E3CC4E3664761FD129FEFC2AMDTCEX12actuan_
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
<p class=3D"MsoNormal">This might be another user issue and not poky issue =
itself, but hopefully someone could help me here.</p>
<p class=3D"MsoNormal">&nbsp;</p>
<p class=3D"MsoNormal">Usually when I download source package and unpack it=
 will unpack itself to in directory name-version (eg. program-1.2.3) and yo=
cto also assumes so. Well, I have managed to find one program that doesn&#8=
217;t have the version part of the directory
 name and haven&#8217;t been able to redirect the yocto/poky to use that pr=
ogram-directory without version to build the program.
</p>
<p class=3D"MsoNormal">&nbsp;</p>
<p class=3D"MsoNormal">Is there a way to do that within the recipe and not =
needing to touch the class-files? And this is program that&#8217;s not orig=
inally in yocto so it&#8217;s .bb and not .bbappend &#8211; file.</p>
<p class=3D"MsoNormal">&nbsp;</p>
<p class=3D"MsoNormal">And I don&#8217;t want to start repacking the softwa=
re or trying to convince the author to rename the package since there might=
 be other similar sources as well.</p>
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

--_000_83DB4EC8FADD45428E3CC4E3664761FD129FEFC2AMDTCEX12actuan_--
