Return-Path: <Teemu.Keskinarkaus@Maximatecc.com>
Received: from mail1.bemta8.messagelabs.com (mail1.bemta8.messagelabs.com
	[216.82.243.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E492E01626
	for <poky@yoctoproject.org>; Tue,  1 Oct 2013 02:39:27 -0700 (PDT)
Received: from [216.82.241.132:16345] by server-3.bemta-8.messagelabs.com id
	70/D4-05770-B489A425; Tue, 01 Oct 2013 09:39:23 +0000
X-Env-Sender: Teemu.Keskinarkaus@Maximatecc.com
X-Msg-Ref: server-8.tower-45.messagelabs.com!1380620363!33488973!1
X-Originating-IP: [207.250.73.121]
X-StarScan-Received: 
X-StarScan-Version: 6.9.12; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 8778 invoked from network); 1 Oct 2013 09:39:23 -0000
Received: from unknown (HELO ammail.actuant.com) (207.250.73.121)
	by server-8.tower-45.messagelabs.com with AES128-SHA encrypted SMTP;
	1 Oct 2013 09:39:23 -0000
Received: from AMDTCEX12.actuant.pri ([fe80::1ff:ff4d:9ac5:22e8]) by
	AMDTCEX10.actuant.pri ([fe80::40f6:8682:1d1f:3805%17]) with mapi id
	14.02.0342.003; Tue, 1 Oct 2013 04:39:20 -0500
From: "Keskinarkaus, Teemu" <Teemu.Keskinarkaus@Maximatecc.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: Sudo binary missing suid - bit
Thread-Index: Ac6+iha8UingTYm6TAqUUCqFhvnGkA==
Date: Tue, 1 Oct 2013 09:39:18 +0000
Message-ID: <83DB4EC8FADD45428E3CC4E3664761FD09AAA0F4@AMDTCEX12.actuant.pri>
Accept-Language: fi-FI, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.0.10.100]
x-ems-proccessed: 52bwn4SPvyFdxH+yW9O0UA==
x-ems-stamp: f4sFzltdR7nML8c37VlVFw==
MIME-Version: 1.0
Subject: Sudo binary missing suid - bit
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
X-List-Received-Date: Tue, 01 Oct 2013 09:39:28 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_83DB4EC8FADD45428E3CC4E3664761FD09AAA0F4AMDTCEX12actuan_"

--_000_83DB4EC8FADD45428E3CC4E3664761FD09AAA0F4AMDTCEX12actuan_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I'm trying to get sudo - binary working in Yocto/Poky - based project. The =
binary is already on image, but for some reason it lacks the suid - bit and=
 thus does not work. If I add the suid - bit with root user the sudo starts=
 working as expected.

There is in sudo - recipe this line:  chmod 411 ${D}${bindir}/sudo

And the sudo - binary in sudo/1.8.6p7-r2/image/usr/bin has the right modes =
for binary, but when it gets installed to actual image the suid - bit is lo=
st.

Any idea how to fix that? Since the sudo is part of the poky I would though=
t it would work without too much of a hassle.

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

--_000_83DB4EC8FADD45428E3CC4E3664761FD09AAA0F4AMDTCEX12actuan_
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
<p class=3D"MsoNormal">I&#8217;m trying to get sudo &#8211; binary working =
in Yocto/Poky &#8211; based project. The binary is already on image, but fo=
r some reason it lacks the suid &#8211; bit and thus does not work. If I ad=
d the suid &#8211; bit with root user the sudo starts working as
 expected.</p>
<p class=3D"MsoNormal">&nbsp;</p>
<p class=3D"MsoNormal">There is in sudo &#8211; recipe this line:&nbsp; chm=
od 411 ${D}${bindir}/sudo</p>
<p class=3D"MsoNormal">&nbsp;</p>
<p class=3D"MsoNormal">And the sudo &#8211; binary in sudo/1.8.6p7-r2/image=
/usr/bin has the right modes for binary, but when it gets installed to actu=
al image the suid &#8211; bit is lost.</p>
<p class=3D"MsoNormal">&nbsp;</p>
<p class=3D"MsoNormal">Any idea how to fix that? Since the sudo is part of =
the poky I would thought it would work without too much of a hassle.</p>
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

--_000_83DB4EC8FADD45428E3CC4E3664761FD09AAA0F4AMDTCEX12actuan_--
