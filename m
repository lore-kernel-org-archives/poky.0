Return-Path: <nicolas.wirth@speedgoat.ch>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 84FFEC001B0
	for <webhook@archiver.kernel.org>; Tue, 15 Aug 2023 09:45:41 +0000 (UTC)
Subject: GCC configuration issue: nanosleep does not seems to be available
To: poky@lists.yoctoproject.org
From: "Nicolas Wirth" <nicolas.wirth@speedgoat.ch>
X-Originating-Location: Baechli, Nidwalden, CH (146.4.107.86)
X-Originating-Platform: Windows Chrome 115
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 15 Aug 2023 02:45:40 -0700
Message-ID: <0mdv.1692092740280080896.9eNG@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="AsQPstgHjw3kaRJ7I0tO"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 15 Aug 2023 09:45:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13122

--AsQPstgHjw3kaRJ7I0tO
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello everyone,

I trust you're all doing well.

I've encountered a specific error while running my code, and I'm seeking as=
sistance to resolve it:

error: 'sleep_for' is not a member of 'std::this_thread'

51 | std::this_thread::sleep_for(std::chrono::milliseconds(500));

Based on my research, it appears that this issue is closely tied to the GCC=
 configuration. I've referred to the following discussions on Stack Overflo=
w for insight:
https://stackoverflow.com/questions/4438084/stdthis-threadsleep-for-and-gcc
https://stackoverflow.com/questions/12523122/what-is-glibcxx-use-nanosleep-=
all-about

I'm using the Yocto version Honister and the poky meta layer. I have found =
out that the recipe for gcc is under poky/meta/recipes-devtool/gcc. So my t=
hinking was to create a gcc_%.bbappend file and add the following code as a=
dvised in the topics linked before:
EXTRA_OECONF_BASE:append =3D " --enable-libstdccxx-time "

It did not remove the error. Out of despair, I also tried to edit the gcc_1=
1.2.0.bb file directly but it also did not fix the error.
gcc version =3D=C2=A011.2.0
g++ version =3D 11.2.0
glibc version =3D=C2=A0(GNU libc) 2.34

Does anyone have an input on my problem ?

(ps: it's my first time using this resource, I hope I've posted my question=
 in the right topic)

--AsQPstgHjw3kaRJ7I0tO
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hello everyone,</p>
<p>I trust you're all doing well.</p>
<p>I've encountered a specific error while running my code, and I'm seeking=
 assistance to resolve it:</p>
<p style=3D"line-height: 1.42857;">&nbsp; &nbsp; &nbsp; &nbsp;error: 'sleep=
_for' is not a member of 'std::this_thread'</p>
<p style=3D"line-height: 1.42857;">&nbsp; &nbsp; &nbsp; &nbsp;51 | std::thi=
s_thread::sleep_for(std::chrono::milliseconds(500));</p>
<div>Based on my research, it appears that this issue is closely tied to th=
e GCC configuration. I've referred to the following discussions on Stack Ov=
erflow for insight:<br /><a href=3D"https://stackoverflow.com/questions/443=
8084/stdthis-threadsleep-for-and-gcc" target=3D"_blank" rel=3D"noopener">ht=
tps://stackoverflow.com/questions/4438084/stdthis-threadsleep-for-and-gcc</=
a><br /><a href=3D"https://stackoverflow.com/questions/12523122/what-is-gli=
bcxx-use-nanosleep-all-about" target=3D"_blank" rel=3D"noopener">https://st=
ackoverflow.com/questions/12523122/what-is-glibcxx-use-nanosleep-all-about<=
/a><br /><br />I'm using the Yocto version Honister and the poky meta layer=
. I have found out that the recipe for gcc is under poky/meta/recipes-devto=
ol/gcc. So my thinking was to create a gcc_%.bbappend file and add the foll=
owing code as advised in the topics linked before:<br />
<div style=3D"background-color: #f5f5f5; font-family: 'JetBrains Mono', Con=
solas, 'Courier New', monospace; line-height: 19px; white-space: pre;"><spa=
n style=3D"color: #7a3e9d;">EXTRA_OECONF_BASE:append</span> <span style=3D"=
color: #777777;">=3D</span> <span style=3D"color: #777777;">"</span><span s=
tyle=3D"color: #448c27;"> --enable-libstdccxx-time</span><span style=3D"col=
or: #777777;">"</span></div>
<br />It did not remove the error. Out of despair, I also tried to edit the=
 gcc_11.2.0.bb file directly but it also did not fix the error.<br />gcc ve=
rsion =3D&nbsp;11.2.0<br />g++ version =3D 11.2.0<br />glibc version =3D&nb=
sp;(GNU libc) 2.34<br /><br />Does anyone have an input on my problem ?</di=
v>
<div><br />(ps: it's my first time using this resource, I hope I've posted =
my question in the right topic)</div>
<div>&nbsp;</div>

--AsQPstgHjw3kaRJ7I0tO--

