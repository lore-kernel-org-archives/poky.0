Return-Path: <joelzhou.ca@gmail.com>
Received: from mail-qw0-f48.google.com (mail-qw0-f48.google.com
	[209.85.216.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2ED5B4C800AA
	for <poky@yoctoproject.org>; Thu, 17 Feb 2011 10:50:34 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by qwe4 with SMTP id 4so2679530qwe.35
	for <poky@yoctoproject.org>; Thu, 17 Feb 2011 08:50:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:date:message-id:subject:from:to
	:content-type; bh=0Wvo/+Rps0qnrPMFU34I7rReYCh5ANL6tLtljOw8xi4=;
	b=g0jNY6M2HvarHzCTaVhZtjL1wcOIF4JT0MZVDqeimaFO7I4LBPZJ3v1sOx9lCsdZ55
	zQtPBlp1bNGno7jWzfaOZ05q+Tdj0NtFQtRHQglOhn2Tq0UVVAV7k3NzKcf+PuNcNphF
	kHQa+DqTYq3yVQ7jMJBL/YM+P2gXgpdyk+4BI=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	b=bvKudfVk8vNY1yS1hNyPXLY32pswY3p3A9sHZ3/MQHNdQYz8mErsFACjo/nH4KM3ln
	Eyb06rYf04qEhNKjUPMbXvrfs7PDJQtYpwsznxA72Jh6I22B9BA8EVHLxuG7Q7QlMox5
	ckSQW8xKvbNNTcXnXhddQyP7u0ahPiFHX59F0=
MIME-Version: 1.0
Received: by 10.224.20.8 with SMTP id d8mr2865157qab.144.1297961433858; Thu,
	17 Feb 2011 08:50:33 -0800 (PST)
Received: by 10.229.95.210 with HTTP; Thu, 17 Feb 2011 08:50:33 -0800 (PST)
Date: Thu, 17 Feb 2011 11:50:33 -0500
Message-ID: <AANLkTimQKtBs16zCjYMZ3JdLMjchRf8dSK1CuLUJscgv@mail.gmail.com>
From: Joel <joelzhou.ca@gmail.com>
To: poky@yoctoproject.org
Subject: Missing LIC_FILES_CHKSUM in external-csl-toolchain_2008q3-72.bb
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
X-List-Received-Date: Thu, 17 Feb 2011 16:50:34 -0000
Content-Type: multipart/alternative; boundary=0015175cba4032828d049c7d32c6

--0015175cba4032828d049c7d32c6
Content-Type: text/plain; charset=ISO-8859-1

Environment:
$ uname -a
Linux satcom-build1 2.6.35.4-rscloud #8 SMP Mon Sep 20 15:54:33 UTC 2010
x86_64 GNU/Linux

CodeSourcery toolchain-2008q3 was installed at:
        /usr/local/csl/arm-2008q3
build/conf/local.conf
        POKYMODE = "external-csl2008q3"
$ git log
commit 7e4c694c9f53ce9458e052adb918c45db88254dd
Author: Richard Purdie <richard.purdie@linuxfoundation.org>
Date:   Wed Feb 16 12:33:40 2011 +0000

1. ERROR:elf/ldd.bash.in missing
$ bitbake task-poky-boot
Log data follows:
        | sed: can't read
/srv/Sierra/poky/build/tmp/work/armv7a-none-linux-gnueabi/external-csl-toolchain-2008q3-72-r1/external-csl-toolchain-2008q3-72/elf/
ldd.bash.in: No such file or directory
        | ERROR: Function 'do_configure' failed (see
/srv/Sierra/poky/build/tmp/work/armv7a-none-linux-gnueabi/external-csl-toolchain-2008q3-72-r1/temp/log.do_configure.2231
for further information)
NOTE: package external-csl-toolchain-2008q3-72-r1: task do_configure: Failed
ERROR: '/srv/Sierra/poky/meta/recipes-core/meta/
external-csl-toolchain_2008q3-72.bb' failed

WORKAROUND:comment out do_configure_prepend in
poky/meta/classes/libc-package.bbclass
do_configure_prepend() {
-        sed -e "s#@BASH@#/bin/sh#" -i ${S}/elf/ldd.bash.in
+        #sed -e "s#@BASH@#/bin/sh#" -i ${S}/elf/ldd.bash.in
}

2.ERROR:LIC_FILES_CHKSUM missing
Log data follows:
| NOTE: Checking autotools environment for common misconfiguration
| ERROR: external-csl-toolchain: Recipe file does not have license file
information (LIC_FILES_CHKSUM)
| ERROR: Licensing Error: LIC_FILES_CHKSUM does not match, please fix
| ERROR: Function 'do_qa_configure' failed

WORKAROUND:add a blank MIT license file and LIC_FILES_CHKSUM in
external-csl-toolchain_2008q3-72.bb

meta/recipes-core/meta/external-csl-toolchain_2008q3-72.bb
        LICENSE = "MIT"
+        LIC_FILES_CHKSUM =
"file://MIT;md5=9583d27c8aa1fc328fa6a8e747c88940"

$ md5sum /srv/Sierra/poky/meta/recipes-core/meta/external-csl-toolchain/MIT
9583d27c8aa1fc328fa6a8e747c88940
 /srv/Sierra/poky/meta/recipes-core/meta/external-csl-toolchain/MIT

3.ERROR:LIC_FILES_CHKSUM points to invalid file
Log data follows:
| NOTE: Checking autotools environment for common misconfiguration
| ERROR: Function 'external-csl-toolchain: LIC_FILES_CHKSUM points to
invalid file: MIT' failed


Can anyone give me some advice for adding license file information for
recipe file?

Best regard,

Joel

--0015175cba4032828d049c7d32c6
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div>Environment:</div><div>$ uname -a</div><div>Linux satcom-build1 2.6.35=
.4-rscloud #8 SMP Mon Sep 20 15:54:33 UTC 2010 x86_64 GNU/Linux</div><div><=
br></div><div>CodeSourcery toolchain-2008q3 was installed at:</div><div>
=A0=A0 =A0 =A0 =A0/usr/local/csl/arm-2008q3</div><div>build/conf/local.conf=
</div><div>=A0=A0 =A0 =A0 =A0POKYMODE =3D &quot;external-csl2008q3&quot;</d=
iv><div>$ git log</div><div>commit 7e4c694c9f53ce9458e052adb918c45db88254dd=
</div><div>Author: Richard Purdie &lt;<a href=3D"mailto:richard.purdie@linu=
xfoundation.org">richard.purdie@linuxfoundation.org</a>&gt;</div>
<div>Date: =A0 Wed Feb 16 12:33:40 2011 +0000</div><div><br></div><div>1. E=
RROR:elf/<a href=3D"http://ldd.bash.in">ldd.bash.in</a> missing</div><div>$=
 bitbake task-poky-boot</div><div>Log data follows:</div><div>=A0=A0 =A0 =
=A0 =A0| sed: can&#39;t read /srv/Sierra/poky/build/tmp/work/armv7a-none-li=
nux-gnueabi/external-csl-toolchain-2008q3-72-r1/external-csl-toolchain-2008=
q3-72/elf/<a href=3D"http://ldd.bash.in">ldd.bash.in</a>: No such file or d=
irectory</div>
<div>=A0=A0 =A0 =A0 =A0| ERROR: Function &#39;do_configure&#39; failed (see=
 /srv/Sierra/poky/build/tmp/work/armv7a-none-linux-gnueabi/external-csl-too=
lchain-2008q3-72-r1/temp/log.do_configure.2231 for further information)</di=
v><div>
NOTE: package external-csl-toolchain-2008q3-72-r1: task do_configure: Faile=
d</div><div>ERROR: &#39;/srv/Sierra/poky/meta/recipes-core/meta/<a href=3D"=
http://external-csl-toolchain_2008q3-72.bb">external-csl-toolchain_2008q3-7=
2.bb</a>&#39; failed</div>
<div><br></div><div>WORKAROUND:comment out do_configure_prepend in poky/met=
a/classes/libc-package.bbclass</div><div>do_configure_prepend() {</div><div=
>- =A0 =A0 =A0 =A0sed -e &quot;s#@BASH@#/bin/sh#&quot; -i ${S}/elf/<a href=
=3D"http://ldd.bash.in">ldd.bash.in</a></div>
<div>+ =A0 =A0 =A0 =A0#sed -e &quot;s#@BASH@#/bin/sh#&quot; -i ${S}/elf/<a =
href=3D"http://ldd.bash.in">ldd.bash.in</a></div><div>}</div><div><br></div=
><div>2.ERROR:LIC_FILES_CHKSUM missing</div><div>Log data follows:</div><di=
v>| NOTE: Checking autotools environment for common misconfiguration</div>
<div>| ERROR: external-csl-toolchain: Recipe file does not have license fil=
e information (LIC_FILES_CHKSUM)</div><div>| ERROR: Licensing Error: LIC_FI=
LES_CHKSUM does not match, please fix</div><div>| ERROR: Function &#39;do_q=
a_configure&#39; failed</div>
<div><br></div><div>WORKAROUND:add a blank MIT license file and LIC_FILES_C=
HKSUM in <a href=3D"http://external-csl-toolchain_2008q3-72.bb">external-cs=
l-toolchain_2008q3-72.bb</a></div><div><br></div><div>meta/recipes-core/met=
a/<a href=3D"http://external-csl-toolchain_2008q3-72.bb">external-csl-toolc=
hain_2008q3-72.bb</a></div>
<div>=A0=A0 =A0 =A0 =A0LICENSE =3D &quot;MIT&quot;</div><div>+ =A0 =A0 =A0 =
=A0LIC_FILES_CHKSUM =3D &quot;file://MIT;md5=3D9583d27c8aa1fc328fa6a8e747c8=
8940&quot;</div><div><br></div><div>$ md5sum /srv/Sierra/poky/meta/recipes-=
core/meta/external-csl-toolchain/MIT</div>
<div>9583d27c8aa1fc328fa6a8e747c88940 =A0/srv/Sierra/poky/meta/recipes-core=
/meta/external-csl-toolchain/MIT</div><div><br></div><div>3.ERROR:LIC_FILES=
_CHKSUM points to invalid file</div><div>Log data follows:</div><div>| NOTE=
: Checking autotools environment for common misconfiguration</div>
<div>| ERROR: Function &#39;external-csl-toolchain: LIC_FILES_CHKSUM points=
 to invalid file: MIT&#39; failed</div><div><br></div><div><br></div><div>C=
an anyone give me some advice for adding license file information for recip=
e file?</div>
<div><br></div><div>Best regard,</div><div><br></div><div>Joel</div>

--0015175cba4032828d049c7d32c6--
