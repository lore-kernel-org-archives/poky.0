Return-Path: <teddyxiong53@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C762DC3DA6E
	for <webhook@archiver.kernel.org>; Wed,  3 Jan 2024 12:27:34 +0000 (UTC)
Subject: Re: qemuarm64 use lib64 as multilib
To: poky@lists.yoctoproject.org
From: teddyxiong53@gmail.com
X-Originating-Location: Shenzhen, Guangdong, CN (183.238.223.226)
X-Originating-Platform: Windows Chrome 113
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 03 Jan 2024 04:27:24 -0800
References: <20231228212126346a51ea@mail.local>
In-Reply-To: <20231228212126346a51ea@mail.local>
Message-ID: <19798.1704284844567109905@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="s5pVnk4TnE6donlgl3Li"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 03 Jan 2024 12:27:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13242

--s5pVnk4TnE6donlgl3Li
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I have made it works with 64bit kernel and pure 32bit userspace

The solution is as below:
1. write a bbclass file for kernel and moduel recipe file to inherit.
```
PATH:prepend =3D "/toolchain/gcc/linux-x86/aarch64/gcc-arm-10.2-2020.11-x86=
_64-aarch64-none-linux-gnu/bin:"
export PATH
export UBOOT_ARCH =3D "arm64"
export ARCH =3D "arm64"
export CROSS_COMPILE =3D "aarch64-none-linux-gnu-"
export STRIP =3D "aarch64-none-linux-gnu-strip"
export OBJDUMP =3D "aarch64-none-linux-gnu-objdump"
export OBJCOPY =3D "aarch64-none-linux-gnu-objcopy"

KERNEL_CC =3D "aarch64-none-linux-gnu-gcc"
KERNEL_LD =3D "aarch64-none-linux-gnu-ld"
KERNEL_AR =3D "aarch64-none-linux-gnu-ar"

# do_package[noexec] =3D "1"
# do_package_write_ipk[noexec] =3D "1"
# do_packagedata[noexec] =3D "1"
do_package_qa[noexec] =3D "1"
```
2. Adjust the kernel and module compile command
3. Modify a little code in poky to adjust the toolchain name.=C2=A0kernel-m=
odule-split.bbclass
```
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cmd =3D "%sobjcopy -j .modinfo -=
O binary %s %s" % (d.getVar("HOST_PREFIX") or "", tmpkofile, tmpfile)
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cmd =3D "%sobjcopy -j .modinfo -=
O binary %s %s" % ("aarch64-none-linux-gnu-", tmpkofile, tmpfile)
```

--s5pVnk4TnE6donlgl3Li
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I have made it works with 64bit kernel and pure 32bit userspace<br /><br />=
The solution is as below:<br />1. write a bbclass file for kernel and modue=
l recipe file to inherit.<br />```<br />
<div style=3D"color: #383a42; background-color: #fafafa; font-family: Conso=
las, 'Courier New', monospace; line-height: 19px; white-space: pre;">
<div><span style=3D"color: #e45649;">PATH:prepend</span> =3D <span style=3D=
"color: #50a14f;">"/toolchain/gcc/linux-x86/aarch64/gcc-arm-10.2-2020.11-x8=
6_64-aarch64-none-linux-gnu/bin:"</span></div>
<div>export <span style=3D"color: #986801;">PATH</span></div>
<div>export <span style=3D"color: #986801;">UBOOT_ARCH</span>=3D<span style=
=3D"color: #50a14f;">"arm64"</span></div>
<div>export <span style=3D"color: #986801;">ARCH</span>=3D<span style=3D"co=
lor: #50a14f;">"arm64"</span></div>
<div>export <span style=3D"color: #986801;">CROSS_COMPILE</span>=3D<span st=
yle=3D"color: #50a14f;">"aarch64-none-linux-gnu-"</span></div>
<div>export <span style=3D"color: #986801;">STRIP</span>=3D<span style=3D"c=
olor: #50a14f;">"aarch64-none-linux-gnu-strip"</span></div>
<div>export <span style=3D"color: #986801;">OBJDUMP</span>=3D<span style=3D=
"color: #50a14f;">"aarch64-none-linux-gnu-objdump"</span></div>
<div>export <span style=3D"color: #986801;">OBJCOPY</span>=3D<span style=3D=
"color: #50a14f;">"aarch64-none-linux-gnu-objcopy"</span></div>
<br /><br />
<div><span style=3D"color: #e45649;">KERNEL_CC</span> =3D <span style=3D"co=
lor: #50a14f;">"aarch64-none-linux-gnu-gcc"</span></div>
<div><span style=3D"color: #e45649;">KERNEL_LD</span> =3D <span style=3D"co=
lor: #50a14f;">"aarch64-none-linux-gnu-ld"</span></div>
<div><span style=3D"color: #e45649;">KERNEL_AR</span> =3D <span style=3D"co=
lor: #50a14f;">"aarch64-none-linux-gnu-ar"</span></div>
<br />
<div><span style=3D"color: #a0a1a7; font-style: italic;"># do_package[noexe=
c] =3D "1"</span></div>
<div><span style=3D"color: #a0a1a7; font-style: italic;"># do_package_write=
_ipk[noexec] =3D "1"</span></div>
<div><span style=3D"color: #a0a1a7; font-style: italic;"># do_packagedata[n=
oexec] =3D "1"</span></div>
<div><span style=3D"color: #e45649;">do_package_qa[noexec]</span> =3D <span=
 style=3D"color: #50a14f;">"1"</span></div>
</div>
```<br />2. Adjust the kernel and module compile command&nbsp;<br />3. Modi=
fy a little code in poky to adjust the toolchain name.&nbsp;kernel-module-s=
plit.bbclass<br />```<br />
<div>-&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; cmd =3D "%sobjcopy -j .modi=
nfo -O binary %s %s" % (d.getVar("HOST_PREFIX") or "", tmpkofile, tmpfile)<=
/div>
<div>+&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; cmd =3D "%sobjcopy -j .modi=
nfo -O binary %s %s" % ("aarch64-none-linux-gnu-", tmpkofile, tmpfile)</div=
>
```

--s5pVnk4TnE6donlgl3Li--

