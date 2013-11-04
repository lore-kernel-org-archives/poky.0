Return-Path: <Teemu.Keskinarkaus@Maximatecc.com>
Received: from mail1.bemta12.messagelabs.com (mail1.bemta12.messagelabs.com
	[216.82.251.6])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C8BEE0178A
	for <poky@yoctoproject.org>; Sun,  3 Nov 2013 23:31:32 -0800 (PST)
Received: from [216.82.249.131:10157] by server-6.bemta-12.messagelabs.com id
	37/C3-09064-35D47725; Mon, 04 Nov 2013 07:31:31 +0000
X-Env-Sender: Teemu.Keskinarkaus@Maximatecc.com
X-Msg-Ref: server-15.tower-28.messagelabs.com!1383550290!23822961!1
X-Originating-IP: [207.250.73.122]
X-StarScan-Received: 
X-StarScan-Version: 6.9.12; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 8107 invoked from network); 4 Nov 2013 07:31:30 -0000
Received: from unknown (HELO ammail.actuant.com) (207.250.73.122)
	by server-15.tower-28.messagelabs.com with AES128-SHA encrypted SMTP;
	4 Nov 2013 07:31:30 -0000
Received: from AMDTCEX12.actuant.pri ([fe80::1ff:ff4d:9ac5:22e8]) by
	AMDTCEX11.actuant.pri ([fe80::f86b:7a40:d71b:bb92%21]) with mapi id
	14.02.0342.003; Mon, 4 Nov 2013 01:31:28 -0600
From: "Keskinarkaus, Teemu" <Teemu.Keskinarkaus@Maximatecc.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: RT-patch for Yocto-kernel
Thread-Index: Ac7ZJ+9ZI9obZ9SHTMOKYyEEofiHyQ==
Date: Mon, 4 Nov 2013 07:31:27 +0000
Message-ID: <83DB4EC8FADD45428E3CC4E3664761FD09C38EAD@AMDTCEX12.actuant.pri>
Accept-Language: fi-FI, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.0.10.100]
x-ems-proccessed: 52bwn4SPvyFdxH+yW9O0UA==
x-ems-stamp: vgdikqz4APrn+HV5/o0Cpg==
MIME-Version: 1.0
Subject: RT-patch for Yocto-kernel
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
X-List-Received-Date: Mon, 04 Nov 2013 07:31:36 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_83DB4EC8FADD45428E3CC4E3664761FD09C38EADAMDTCEX12actuan_"

--_000_83DB4EC8FADD45428E3CC4E3664761FD09C38EADAMDTCEX12actuan_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

In our system we want to use Full RT - kernel configuration. I learned that=
 Yocto/Poky Preempt - rt is actually just low latency configuration and not=
 the real Full RT as the name falsely suggests. Anyway, that's not the prob=
lem after I found it.

There is a patch in the kernel.org that adds the Full RT support for the ke=
rnel. Unfortunately it doesn't work right away in Yocto kernel. We use emen=
low variant of the kernel.

So I compiled the system and then fixed the patch by applying it to kernel =
sources in build-directory. Then added the  patch to kernel .bbappend file =
so that it would be applied during compilation time.  Or so I thought.

Now when I try to compile the system do_patch - state for linux-yocto-rt - =
fails.

Log data follows:
| DEBUG: Executing shell function do_patch
| Deleted branch meta-temp (was 37fdb0c).
| [INFO] validating against known patches  (emenlow-preempt-rt-meta)
Context reduced to (2/2) to apply fragment at 385    ] (\)(88 %))
error: patch failed: drivers/net/ethernet/ti/cpsw.c:374(/)(92 %)%)
| error: drivers/net/ethernet/ti/cpsw.c: patch does not apply
| Context reduced to (1/1) to apply fragment at 1050
| error: patch failed: include/linux/preempt.h:107
| error: include/linux/preempt.h: patch does not apply
| error: patch failed: kernel/sched/core.c:1477
| error: kernel/sched/core.c: patch does not apply
| ERROR. could not update git tree
| ERROR. Could not apply patches for emenlow.
|        Patch failures can be resolved in the devshell (bitbake -c devshel=
l linux-yocto-rt)

If I'm understanding that right it actually applied my patch before the eme=
nlow-patch and that's why it fails.

What's the proper way to make kernel patch that big or is there already Ful=
l RT - patch for emenlow kernel for yocto? We have smaller patches that don=
't collide with emmenlow patches and they work just fine.

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

--_000_83DB4EC8FADD45428E3CC4E3664761FD09C38EADAMDTCEX12actuan_
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
<p class=3D"MsoNormal">In our system we want to use Full RT &#8211; kernel =
configuration. I learned that Yocto/Poky Preempt &#8211; rt is actually jus=
t low latency configuration and not the real Full RT as the name falsely su=
ggests. Anyway, that&#8217;s not the problem after I
 found it.</p>
<p class=3D"MsoNormal">&nbsp;</p>
<p class=3D"MsoNormal">There is a patch in the kernel.org that adds the Ful=
l RT support for the kernel. Unfortunately it doesn&#8217;t work right away=
 in Yocto kernel. We use emenlow variant of the kernel.</p>
<p class=3D"MsoNormal">&nbsp;</p>
<p class=3D"MsoNormal">So I compiled the system and then fixed the patch by=
 applying it to kernel sources in build-directory. Then added the&nbsp; pat=
ch to kernel .bbappend file so that it would be applied during compilation =
time.&nbsp; Or so I thought.</p>
<p class=3D"MsoNormal">&nbsp;</p>
<p class=3D"MsoNormal">Now when I try to compile the system do_patch &#8211=
; state for linux-yocto-rt &#8211; fails.</p>
<p class=3D"MsoNormal">&nbsp;</p>
<p class=3D"MsoNormal">Log data follows:</p>
<p class=3D"MsoNormal">| DEBUG: Executing shell function do_patch</p>
<p class=3D"MsoNormal">| Deleted branch meta-temp (was 37fdb0c).</p>
<p class=3D"MsoNormal">| [INFO] validating against known patches&nbsp; (eme=
nlow-preempt-rt-meta)</p>
<p class=3D"MsoNormal">Context reduced to (2/2) to apply fragment at 385&nb=
sp;&nbsp;&nbsp; ] (\)(88 %))</p>
<p class=3D"MsoNormal">error: patch failed: drivers/net/ethernet/ti/cpsw.c:=
374(/)(92 %)%)</p>
<p class=3D"MsoNormal">| error: drivers/net/ethernet/ti/cpsw.c: patch does =
not apply</p>
<p class=3D"MsoNormal">| Context reduced to (1/1) to apply fragment at 1050=
</p>
<p class=3D"MsoNormal">| error: patch failed: include/linux/preempt.h:107</=
p>
<p class=3D"MsoNormal">| error: include/linux/preempt.h: patch does not app=
ly</p>
<p class=3D"MsoNormal">| error: patch failed: kernel/sched/core.c:1477</p>
<p class=3D"MsoNormal">| error: kernel/sched/core.c: patch does not apply</=
p>
<p class=3D"MsoNormal">| ERROR. could not update git tree</p>
<p class=3D"MsoNormal">| ERROR. Could not apply patches for emenlow.</p>
<p class=3D"MsoNormal">|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Patch fa=
ilures can be resolved in the devshell (bitbake -c devshell linux-yocto-rt)=
</p>
<p class=3D"MsoNormal">&nbsp;</p>
<p class=3D"MsoNormal">If I&#8217;m understanding that right it actually ap=
plied my patch before the emenlow-patch and that&#8217;s why it fails.</p>
<p class=3D"MsoNormal">&nbsp;</p>
<p class=3D"MsoNormal">What&#8217;s the proper way to make kernel patch tha=
t big or is there already Full RT &#8211; patch for emenlow kernel for yoct=
o? We have smaller patches that don&#8217;t collide with emmenlow patches a=
nd they work just fine.</p>
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

--_000_83DB4EC8FADD45428E3CC4E3664761FD09C38EADAMDTCEX12actuan_--
