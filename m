Return-Path: <nicolas.wirth@speedgoat.ch>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57687C27C4F
	for <webhook@archiver.kernel.org>; Fri, 21 Jun 2024 11:49:20 +0000 (UTC)
Subject: Issue with Dynamic Linker and Python Dependency in Yocto SDK Setup
To: poky@lists.yoctoproject.org
From: "Nicolas Wirth" <nicolas.wirth@speedgoat.ch>
X-Originating-Location: Geneva, CH (213.55.244.78)
X-Originating-Platform: Windows Chrome 126
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 21 Jun 2024 04:49:16 -0700
Message-ID: <6txm.1718970556825135447.eRWi@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="JwkX4DVtboXjY4NRGrHZ"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 21 Jun 2024 11:49:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13384

--JwkX4DVtboXjY4NRGrHZ
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi everyone,

I'm currently facing an issue while setting up a Yocto SDK environment usin=
g the bitbake my-image -c populate_sdk command. The SDK needs to be deploye=
d on a machine that has no existing installations and lacks Python. To work=
 around this, I've modified SDK_PACKAGING_FUNC to "do_compile" instead of "=
create_shar" to directly obtain the source files.

However, when I try to set up the environment using the generated SDK, I en=
counter the following error related to the dynamic linker:

. /yocto-sdk/june-21-linux-x86/environment-setup-core2-64-poky-linux

$CC : no such file or directory: x86_64-poky-linux-gcc ...

which $CC : x86_64-poky-linux-gcc not found

ldd /yocto-sdk/june-21-linux-x86/sysroots/x86_64-pokysdk-linux/usr/bin/x86_=
64-poky-linux/x86_64-poky-linux-gcc linux-vdso.so.1 (0x00007ffca9731000) li=
bm.so.6 =3D> /lib/x86_64-linux-gnu/libm.so.6 (0x00007faf662c7000) libc.so.6=
 =3D> /lib/x86_64-linux-gnu/libc.so.6 (0x00007faf660e6000) /usr/local/oe-sd=
k-hardcoded-buildpath/sysroots/x86_64-pokysdk-linux/lib/ld-linux-x86-64.so.=
2 =3D> /lib64/ld-linux-x86-64.so.2 (0x00007faf663af000)

file /yocto-sdk/june-21-linux-x86/sysroots/x86_64-pokysdk-linux/usr/bin/x86=
_64-poky-linux/x86_64-poky-linux-gcc /yocto-sdk/june-21-linux-x86/sysroots/=
x86_64-pokysdk-linux/usr/bin/x86_64-poky-linux/x86_64-poky-linux-gcc: ELF 6=
4-bit LSB executable, x86-64, version 1 (SYSV), dynamically linked, interpr=
eter /usr/local/oe-sdk-hardcoded-buildpath/sysroots/x86_64-pokysdk-linux/li=
b/ld-linux-x86-64.so.2, BuildID[sha1]=3Dd5ac41fb03fc89ca348393a6e8734b6fc93=
ee561, for GNU/Linux 3.2.0, stripped

Since I don't have Python installed, I am unable to run relocate_sdk.py. Co=
uld someone please advise on how to resolve this issue or suggest alternati=
ve approaches to correctly set up the Yocto SDK environment without Python?

Best regards, Nicolas

--JwkX4DVtboXjY4NRGrHZ
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hi everyone,</p>
<p>I'm currently facing an issue while setting up a Yocto SDK environment u=
sing the <code>bitbake my-image -c populate_sdk</code> command. The SDK nee=
ds to be deployed on a machine that has no existing installations and lacks=
 Python. To work around this, I've modified <code>SDK_PACKAGING_FUNC</code>=
 to <code>"do_compile"</code> instead of <code>"create_shar"</code> to dire=
ctly obtain the source files.</p>
<p>However, when I try to set up the environment using the generated SDK, I=
 encounter the following error related to the dynamic linker:</p>
<div class=3D"dark bg-gray-950 rounded-md border-[0.5px] border-token-borde=
r-medium">
<div class=3D"overflow-y-auto p-4" dir=3D"ltr"><code class=3D"!whitespace-p=
re hljs language-bash"><span class=3D"hljs-variable">&nbsp;. /yocto-sdk/jun=
e-21-linux-x86/environment-setup-core2-64-poky-linux<br /><br />$CC</span>:=
 no such file or directory: x86_64-poky-linux-gcc ...
<br /><span class=3D"hljs-built_in"><br />which</span> <span class=3D"hljs-=
variable">$CC</span>: x86_64-poky-linux-gcc not found
<br /><br />ldd /yocto-sdk/june-21-linux-x86/sysroots/x86_64-pokysdk-linux/=
usr/bin/x86_64-poky-linux/x86_64-poky-linux-gcc
        linux-vdso.so.1 (0x00007ffca9731000)
        libm.so.6 =3D&gt; /lib/x86_64-linux-gnu/libm.so.6 (0x00007faf662c70=
00)
        libc.so.6 =3D&gt; /lib/x86_64-linux-gnu/libc.so.6 (0x00007faf660e60=
00)
        /usr/local/oe-sdk-hardcoded-buildpath/sysroots/x86_64-pokysdk-linux=
/lib/ld-linux-x86-64.so.2 =3D&gt; /lib64/ld-linux-x86-64.so.2 (0x00007faf66=
3af000)<br /><br />file /yocto-sdk/june-21-linux-x86/sysroots/x86_64-pokysd=
k-linux/usr/bin/x86_64-poky-linux/x86_64-poky-linux-gcc
/yocto-sdk/june-21-linux-x86/sysroots/x86_64-pokysdk-linux/usr/bin/x86_64-p=
oky-linux/x86_64-poky-linux-gcc: ELF 64-bit LSB executable, x86-64, version=
 1 (SYSV), dynamically linked, interpreter /usr/local/oe-sdk-hardcoded-buil=
dpath/sysroots/x86_64-pokysdk-linux/lib/ld-linux-x86-64.so.2, BuildID[sha1]=
=3Dd5ac41fb03fc89ca348393a6e8734b6fc93ee561, <span class=3D"hljs-keyword">f=
or</span> GNU/Linux 3.2.0, stripped
</code></div>
</div>
<p><br />Since I don't have Python installed, I am unable to run <code>relo=
cate_sdk.py</code>. Could someone please advise on how to resolve this issu=
e or suggest alternative approaches to correctly set up the Yocto SDK envir=
onment without Python?</p>
<p>Best regards, Nicolas</p>

--JwkX4DVtboXjY4NRGrHZ--

