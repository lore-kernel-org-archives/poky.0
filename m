Return-Path: <cahoshing@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 488FD4C80FE5
	for <poky@yoctoproject.org>; Tue,  3 May 2011 23:19:58 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pzk10 with SMTP id 10so497034pzk.35
	for <poky@yoctoproject.org>; Tue, 03 May 2011 21:19:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:date:message-id:subject:from:to
	:content-type; bh=2jiBrzczHGKFW4WgqFp4+yXJanCxEcWmoqsPZrPw5IQ=;
	b=ophk4vyy7AqdDZ7z+hu7a5mCtBWBa57W1EVXRFdW7e0Cs6gMkE5w6vFu39G3Dmy5dp
	AbkhhooqcGI+BdkYjdcXH/rzFMg//vI1OkK1QWvzHw3i43bQVHWt/MPz9UZsfwWJJS+F
	LU6jmkwsN9U61VFZ3arYPyRpg/5aT9Jm+L9VE=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	b=VZ6HWvzhLrUrJs2NaPvDkGwSqVUA5He4iX5e+FzRa1LbjIbT6hPXSWuMKmkh3VQW/G
	ew12b+3F2l0Wlk7N/P/pmQN6t4/9z/JVw6URWjsOQrnKDOvB+51NxZjhIYXdqeYVltzB
	lK8iGHYJU3lkZzZ/xnjBHrurKLThFTrMvpsC8=
MIME-Version: 1.0
Received: by 10.142.143.8 with SMTP id q8mr389359wfd.32.1304482797721; Tue, 03
	May 2011 21:19:57 -0700 (PDT)
Received: by 10.143.158.19 with HTTP; Tue, 3 May 2011 21:19:57 -0700 (PDT)
Date: Wed, 4 May 2011 09:49:57 +0530
Message-ID: <BANLkTim0CS8a5Q1Mv-m=KDsBGTPNA3V6mQ@mail.gmail.com>
From: chinmaya hoshing <cahoshing@gmail.com>
To: poky@yoctoproject.org
Subject: Error in pulling nspr package
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
X-List-Received-Date: Wed, 04 May 2011 04:19:58 -0000
Content-Type: multipart/alternative; boundary=000e0cd3f872c61aef04a26b9127

--000e0cd3f872c61aef04a26b9127
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I am trying to port Poky to the "sandybridge platform" and  using the branch
"bernard" for "sugarbay" machine.
I am running Ubuntu 10.10 on 64 bit machine.
I am getting error for nspr package following is the error log:
NOTE: package nss-3.12.9-r2: task do_patch: Succeeded
ERROR: Function 'do_compile' failed (see
/home/sandybridge/poky/build/tmp/work/snb-poky-linux/nspr-4.8.7-r0/temp/log.do_compile.2326
for further information)
ERROR: Logfile of failure stored in:
/home/sandybridge/poky/build/tmp/work/snb-poky-linux/nspr-4.8.7-r0/temp/log.do_compile.2326
Log data follows:
| NOTE: make -j 4
| make -C config export
| make[1]: Entering directory
`/home/sandybridge/poky/build/tmp/work/snb-poky-linux/nspr-4.8.7-r0/nspr-4.8.7/mozilla/nsprpub/config'
| x86_64-poky-linux-gcc -m64
--sysroot=/home/sct/logi_sandybridge/poky/build/tmp/sysroots/sugarbay -m32
-o now.o -c     -fexpensive-optimizations -fomit-frame-pointer
-frename-registers -O2 -ggdb -feliminate-unused-debug-types -Wall -g
-fno-inline -fPIC  -UNDEBUG -DDEBUG_sct  -DDEBUG=1
-DHAVE_VISIBILITY_HIDDEN_ATTRIBUTE=1 -DHAVE_VISIBILITY_PRAGMA=1 -DXP_UNIX=1
-D_GNU_SOURCE=1 -DHAVE_FCNTL_FILE_LOCKING=1 -DLINUX=1 -Di386=1
-DHAVE_LCHOWN=1 -DHAVE_STRERROR=1 -D_REENTRANT=1  -DFORCE_PR_LOG
-D_PR_PTHREADS -UHAVE_CVAR_BUILT_ON_SEM   now.c
| In file included from
/home/sandybridge/poky/build/tmp/sysroots/sugarbay/usr/include/features.h:387:0,
|                  from
/home/sandybridge/poky/build/tmp/sysroots/sugarbay/usr/include/stdio.h:28,
|                  from now.c:38:
|
/home/sandybridge/poky/build/tmp/sysroots/sugarbay/usr/include/gnu/stubs.h:7:27:
fatal error: gnu/stubs-32.h: No such file or directory
| compilation terminated.
| make[1]: *** [now.o] Error 1
| make[1]: Leaving directory
`/home/sandybridge/poky/build/tmp/work/snb-poky-linux/nspr-4.8.7-r0/nspr-4.8.7/mozilla/nsprpub/config'
| make: *** [export] Error 2
| FATAL: oe_runmake failed
| ERROR: Function 'do_compile' failed (see
/home/sandybridge/poky/build/tmp/work/snb-poky-linux/nspr-4.8.7-r0/temp/log.do_compile.2326
for further information)
NOTE: package nspr-4.8.7-r0: task do_compile: Failed
ERROR: Task 3144 (/home/sandybridge/poky/meta/recipes-connectivity/mozilla/
nspr_4.8.7.bb, do_compile) failed with exit code '1'


Can you help me to find the solution

Chinmaya

--000e0cd3f872c61aef04a26b9127
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><meta http-equiv=3D"content-type" content=3D"text/html; ch=
arset=3Dutf-8"><span class=3D"Apple-style-span" style=3D"border-collapse: c=
ollapse; font-family: arial, sans-serif; font-size: 13px; ">Hi,<br><br>I am=
 trying=A0<span>to</span>=A0port Poky=A0<span>to</span>=A0the &quot;sandybr=
idge platform&quot; and=A0 using the branch &quot;bernard&quot; for &quot;s=
ugarbay&quot; machine.<br>
I am running Ubuntu 10.10 on 64 bit machine.</span><div><span class=3D"Appl=
e-style-span" style=3D"border-collapse: collapse; font-family: arial, sans-=
serif; font-size: 13px; ">I am getting error for nspr package following is =
the error log:</span></div>
<div><span class=3D"Apple-style-span" style=3D"border-collapse: collapse; f=
ont-family: arial, sans-serif; font-size: 13px; "><div>NOTE: package nss-3.=
12.9-r2: task do_patch: Succeeded</div><div>ERROR: Function &#39;do_compile=
&#39; failed (see /home/sandybridge/poky/build/tmp/work/snb-poky-linux/nspr=
-4.8.7-r0/temp/log.do_compile.2326 for further information)</div>
<div>ERROR: Logfile of failure stored in: /home/sandybridge/poky/build/tmp/=
work/snb-poky-linux/nspr-4.8.7-r0/temp/log.do_compile.2326</div><div>Log da=
ta follows:</div><div>| NOTE: make -j 4</div><div>| make -C config export</=
div>
<div>| make[1]: Entering directory `/home/sandybridge/poky/build/tmp/work/s=
nb-poky-linux/nspr-4.8.7-r0/nspr-4.8.7/mozilla/nsprpub/config&#39;</div><di=
v>| x86_64-poky-linux-gcc -m64 --sysroot=3D/home/sct/logi_sandybridge/poky/=
build/tmp/sysroots/sugarbay -m32 -o now.o -c =A0 =A0 -fexpensive-optimizati=
ons -fomit-frame-pointer -frename-registers -O2 -ggdb -feliminate-unused-de=
bug-types -Wall -g -fno-inline -fPIC =A0-UNDEBUG -DDEBUG_sct =A0-DDEBUG=3D1=
 -DHAVE_VISIBILITY_HIDDEN_ATTRIBUTE=3D1 -DHAVE_VISIBILITY_PRAGMA=3D1 -DXP_U=
NIX=3D1 -D_GNU_SOURCE=3D1 -DHAVE_FCNTL_FILE_LOCKING=3D1 -DLINUX=3D1 -Di386=
=3D1 -DHAVE_LCHOWN=3D1 -DHAVE_STRERROR=3D1 -D_REENTRANT=3D1 =A0-DFORCE_PR_L=
OG -D_PR_PTHREADS -UHAVE_CVAR_BUILT_ON_SEM =A0 now.c</div>
<div>| In file included from /home/sandybridge/poky/build/tmp/sysroots/suga=
rbay/usr/include/features.h:387:0,</div><div>| =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0from /home/sandybridge/poky/build/tmp/sysroots/sugarbay/usr/include/=
stdio.h:28,</div>
<div>| =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0from now.c:38:</div><div>| /home/=
sandybridge/poky/build/tmp/sysroots/sugarbay/usr/include/gnu/stubs.h:7:27: =
fatal error: gnu/stubs-32.h: No such file or directory</div><div>| compilat=
ion terminated.</div>
<div>| make[1]: *** [now.o] Error 1</div><div>| make[1]: Leaving directory =
`/home/sandybridge/poky/build/tmp/work/snb-poky-linux/nspr-4.8.7-r0/nspr-4.=
8.7/mozilla/nsprpub/config&#39;</div><div>| make: *** [export] Error 2</div=
>
<div>| FATAL: oe_runmake failed</div><div>| ERROR: Function &#39;do_compile=
&#39; failed (see /home/sandybridge/poky/build/tmp/work/snb-poky-linux/nspr=
-4.8.7-r0/temp/log.do_compile.2326 for further information)</div><div>NOTE:=
 package nspr-4.8.7-r0: task do_compile: Failed</div>
<div>ERROR: Task 3144 (/home/sandybridge/poky/meta/recipes-connectivity/moz=
illa/<a href=3D"http://nspr_4.8.7.bb">nspr_4.8.7.bb</a>, do_compile) failed=
 with exit code &#39;1&#39;</div><div><br></div><div><br></div><div>Can you=
 help me to find the solution</div>
<div><br></div><div>Chinmaya</div></span></div></div>

--000e0cd3f872c61aef04a26b9127--
