Return-Path: <praveen.vatt@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A839BE00963; Wed, 25 Mar 2015 22:42:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW, WEIRD_PORT autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (praveen.vatt[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.47 listed in list.dnswl.org]
	*  0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f47.google.com (mail-pa0-f47.google.com
	[209.85.220.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E00BE00960
	for <poky@yoctoproject.org>; Wed, 25 Mar 2015 22:42:51 -0700 (PDT)
Received: by padcy3 with SMTP id cy3so52617411pad.3
	for <poky@yoctoproject.org>; Wed, 25 Mar 2015 22:42:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=R0cSAc5xpSFIWUqpDeUzM4613hhdUu2VHfBLWhXIqGU=;
	b=kds5Mw140A4Gfob8rCtVmp3U75wSTdLN6xIT/olmMOVQvL67Xaw/9loipeLC8lAKPt
	JaV8VIKnNOKIdteACGKt05/pPRX1bDSz31hKx/dHplqxSYl9+K4XHqV7cawFQnCW+ml4
	E3+bcKd9ccDZeQmSWCvtEHzY0431qU7W/lzW0d1zlI30g1z70wPNbWXt3NzyxflJ4OeB
	OzPq+NCpvk/hO3f5yD3+nbFQq58jsgnKuVgDdstcme5qbAV4MHmaO3fMxGFY9TTxWihg
	Tcu7qTO7r4Y+8x5qUDvzsOZ0+kI0JmKx5159Hyif+Q/4vyTWIbRLeXiKU7WRFwB80IrI
	8l9g==
MIME-Version: 1.0
X-Received: by 10.68.198.65 with SMTP id ja1mr23266168pbc.143.1427348571435;
	Wed, 25 Mar 2015 22:42:51 -0700 (PDT)
Received: by 10.70.135.134 with HTTP; Wed, 25 Mar 2015 22:42:51 -0700 (PDT)
Date: Thu, 26 Mar 2015 11:12:51 +0530
Message-ID: <CA+pXca3qH6Ly0nb_M67PUhSyubt3BWiWLubh4mo9V=x=YZ_xtw@mail.gmail.com>
From: praveen vattipalli <praveen.vatt@gmail.com>
To: poky@yoctoproject.org
Subject: error while compiling fuse for beaglebone
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
X-List-Received-Date: Thu, 26 Mar 2015 05:42:55 -0000
Content-Type: multipart/alternative; boundary=047d7bd74daa923a4205122a7c37

--047d7bd74daa923a4205122a7c37
Content-Type: text/plain; charset=UTF-8

Hi,
I am trying to build fuse_2.8.6.bb  recipe for beaglebone using
*poky-dizzy-12.0.1*
I am using Ubuntu-12.04 32 bit machine. Target: Beagle bone. Before this I
have successfully build core-image-minimal image for Beaglebone


I even tried to create a patch

diff --git a/configure.in b/configure.in
index 9604d5e..f1dacd5 100644
--- a/configure.in
+++ b/configure.in
@@ -1,7 +1,8 @@
 AC_INIT(fuse, 2.8.6)
 AC_CONFIG_MACRO_DIR([m4])
 AC_CANONICAL_TARGET
-AM_INIT_AUTOMAKE
+AM_INIT_AUTOMAKE([foreign])
 AM_CONFIG_HEADER(include/config.h)
 AC_PROG_LIBTOOL
--
1.9.1

as mentioned in

http://www.yoctoproject.org/docs/1.7/ref-manual/ref-
manual.html#migration-1.7-autotools-class-changes  but for no use.

I even tried latest version fuse_2.9.2.bb

I am facing below error

praveenk@phytec:~/work/beaglebone/poky/build$ bitbake fuse

Log data follows:
| DEBUG: Executing python function sysroot_cleansstate
| DEBUG: Python function sysroot_cleansstate finished
| DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common', 'arm-32',
'common-linux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi', 'common']
| DEBUG: Executing shell function autotools_preconfigure
| DEBUG: Shell function autotools_preconfigure finished
| DEBUG: Executing python function autotools_copy_aclocals
| DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common', 'arm-32',
'common-linux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi', 'common']
| DEBUG: Python function autotools_copy_aclocals finished
| DEBUG: Executing shell function do_configure
| automake (GNU automake) 1.15
| Copyright (C) 2014 Free Software Foundation, Inc.
| License GPLv2+: GNU GPL version 2 or later <http://gnu.org/licenses/gpl-
2.0.html>
| This is free software: you are free to change and redistribute it.
| There is NO WARRANTY, to the extent permitted by law.
|
| Written by Tom Tromey <tromey@redhat.com>
| and Alexandre Duret-Lutz <adl@gnu.org>.
| AUTOV is 1
| NOTE: Executing ACLOCAL="aclocal
--system-acdir=/home/praveenk/work/beaglebone/poky/build/tmp/work/cortexa8hf-vfp-neon-poky-linux-gnueabi/fuse/2.9.2-r1/build/aclocal-copy/"
autoreconf --verbose --install --force --exclude=autopoint -I
/home/praveenk/work/beaglebone/poky/build/tmp/work/cortexa8hf-vfp-neon-poky-linux-gnueabi/fuse/2.9.2-r1/fuse-2.9.2/m4/
| autoreconf: Entering directory `.'
| autoreconf: configure.in: not using Gettext
| autoreconf: running: aclocal
--system-acdir=/home/praveenk/work/beaglebone/poky/build/tmp/work/cortexa8hf-vfp-neon-poky-linux-gnueabi/fuse/2.9.2-r1/build/aclocal-copy/
-I
/home/praveenk/work/beaglebone/poky/build/tmp/work/cortexa8hf-vfp-neon-poky-linux-gnueabi/fuse/2.9.2-r1/fuse-2.9.2/m4/
-I
/home/praveenk/work/beaglebone/poky/build/tmp/work/cortexa8hf-vfp-neon-poky-linux-gnueabi/fuse/2.9.2-r1/fuse-2.9.2/m4/
--force -I m4
| aclocal: warning: autoconf input should be named 'configure.ac', not '
configure.in'
| configure.in:72: warning: macro 'AM_ICONV' not found in library
| autoreconf: configure.in: tracing
| autoreconf: running: libtoolize --copy --force
| libtoolize: putting auxiliary files in '.'.
| libtoolize: copying file './ltmain.sh'
| libtoolize: putting macros in AC_CONFIG_MACRO_DIRS, 'm4'.
| libtoolize: copying file 'm4/libtool.m4'
| libtoolize: copying file 'm4/ltoptions.m4'
| libtoolize: copying file 'm4/ltsugar.m4'
| libtoolize: copying file 'm4/ltversion.m4'
| libtoolize: copying file 'm4/lt~obsolete.m4'
| aclocal: warning: autoconf input should be named 'configure.ac', not '
configure.in'
| configure.in:72: warning: macro 'AM_ICONV' not found in library
| autoreconf: running:
/home/praveenk/work/beaglebone/poky/build/tmp/sysroots/i686-linux/usr/bin/autoconf
--include=/home/praveenk/work/beaglebone/poky/build/tmp/work/cortexa8hf-vfp-neon-poky-linux-gnueabi/fuse/2.9.2-r1/fuse-2.9.2/m4/
--force
| configure.in:72: error: possibly undefined macro: AM_ICONV
| If this token and others are legitimate, please use m4_pattern_allow.
| See the Autoconf documentation.
| autoreconf:
/home/praveenk/work/beaglebone/poky/build/tmp/sysroots/i686-linux/usr/bin/autoconf
failed with exit status: 1
| ERROR: autoreconf execution failed.
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_configure (log file is located at
/home/praveenk/work/beaglebone/poky/build/tmp/work/cortexa8hf-vfp-neon-poky-linux-gnueabi/fuse/2.9.2-r1/temp/log.do_configure.26343)
ERROR: Task 5
(/home/praveenk/work/beaglebone/poky/meta/recipes-support/fuse/fuse_2.9.2.bb,
do_configure) failed with exit code '1'
NOTE: Tasks Summary: Attempted 434 tasks of which 429 didn't need to be
rerun and 1 failed.
No currently running tasks (434 of 442)

Summary: 1 task failed:
/home/praveenk/work/beaglebone/poky/meta/recipes-support/fuse/fuse_2.9.2.bb,
do_configure
Summary: There was 1 WARNING message shown.
Summary: There was 1 ERROR message shown, returning a non-zero exit code.
praveenk@phytec:~/work/beaglebone/poky/build$



Please any one help me  to resolve this.

Thanks
Praveen

--047d7bd74daa923a4205122a7c37
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div>I am trying to build=C2=A0<a href=3D"ht=
tp://fuse_2.8.6.bb">fuse_2.8.6.bb</a> =C2=A0recipe for beaglebone using <st=
rong>poky-dizzy-12.0.1</strong> </div><div>I am using Ubuntu-12.04 32 bit m=
achine. Target: Beagle bone. Before this=C2=A0I have successfully build cor=
e-image-minimal image for Beaglebone </div><div>=C2=A0</div><div>=C2=A0</di=
v><div>I even tried to create a patch </div><div>=C2=A0</div><div>diff --gi=
t a/<a href=3D"http://configure.in">configure.in</a> b/<a href=3D"http://co=
nfigure.in">configure.in</a><br>index 9604d5e..f1dacd5 100644<br>--- a/<a h=
ref=3D"http://configure.in">configure.in</a><br>+++ b/<a href=3D"http://con=
figure.in">configure.in</a><br>@@ -1,7 +1,8 @@<br>=C2=A0AC_INIT(fuse, 2.8.6=
)<br>=C2=A0AC_CONFIG_MACRO_DIR([m4])<br>=C2=A0AC_CANONICAL_TARGET<br>-AM_IN=
IT_AUTOMAKE<br>+AM_INIT_AUTOMAKE([foreign])<br>=C2=A0AM_CONFIG_HEADER(inclu=
de/config.h)</div><div>=C2=A0AC_PROG_LIBTOOL<br>--<br>1.9.1<br></div><div>=
=C2=A0</div><div>as mentioned in </div><div>=C2=A0</div><div><a href=3D"htt=
p://www.yoctoproject.org/docs/1.7/ref-manual/ref-manual.html#migration-1.7-=
autotools-class-changes" target=3D"_blank"><font color=3D"#0066cc">http://w=
ww.yoctoproject.org/</font><font color=3D"#0066cc">docs/1.7/ref-manual/ref-=
</font><font color=3D"#0066cc">manual.html#migration-1.7-</font><font color=
=3D"#0066cc">autotools-class-changes</font></a>=C2=A0 but for no use.</div>=
<div>=C2=A0</div><div><div>I even tried latest version <a href=3D"http://fu=
se_2.9.2.bb">fuse_2.9.2.bb</a></div></div><div>=C2=A0</div><div>I am facing=
 below error </div><div>=C2=A0</div><div>praveenk@phytec:~/work/beaglebone/=
poky/build$ bitbake fuse</div><div>=C2=A0</div><div>Log data follows:<br>| =
DEBUG: Executing python function sysroot_cleansstate<br>| DEBUG: Python fun=
ction sysroot_cleansstate finished<br>| DEBUG: SITE files [&#39;endian-litt=
le&#39;, &#39;bit-32&#39;, &#39;arm-common&#39;, &#39;arm-32&#39;, &#39;com=
mon-linux&#39;, &#39;common-glibc&#39;, &#39;arm-linux&#39;, &#39;arm-linux=
-gnueabi&#39;, &#39;common&#39;]<br>| DEBUG: Executing shell function autot=
ools_preconfigure<br>| DEBUG: Shell function autotools_preconfigure finishe=
d<br>| DEBUG: Executing python function autotools_copy_aclocals<br>| DEBUG:=
 SITE files [&#39;endian-little&#39;, &#39;bit-32&#39;, &#39;arm-common&#39=
;, &#39;arm-32&#39;, &#39;common-linux&#39;, &#39;common-glibc&#39;, &#39;a=
rm-linux&#39;, &#39;arm-linux-gnueabi&#39;, &#39;common&#39;]<br>| DEBUG: P=
ython function autotools_copy_aclocals finished<br>| DEBUG: Executing shell=
 function do_configure<br>| automake (GNU automake) 1.15<br>| Copyright (C)=
 2014 Free Software Foundation, Inc.<br>| License GPLv2+: GNU GPL version 2=
 or later &lt;<a href=3D"http://gnu.org/licenses/gpl-2.0.html" target=3D"_b=
lank"><font color=3D"#0066cc">http://gnu.org/licenses/gpl-</font><font colo=
r=3D"#0066cc">2.0.html</font></a>&gt;<br>| This is free software: you are f=
ree to change and redistribute it.<br>| There is NO WARRANTY, to the extent=
 permitted by law.<br>| <br>| Written by Tom Tromey &lt;<a href=3D"mailto:t=
romey@redhat.com" target=3D"_blank"><font color=3D"#0066cc">tromey@redhat.c=
om</font></a>&gt;<br>|        and Alexandre Duret-Lutz &lt;<a href=3D"mailt=
o:adl@gnu.org" target=3D"_blank"><font color=3D"#0066cc">adl@gnu.org</font>=
</a>&gt;.<br>| AUTOV is 1<br>| NOTE: Executing ACLOCAL=3D&quot;aclocal --sy=
stem-acdir=3D/home/praveenk/work/beaglebone/poky/build/tmp/work/cortexa8hf-=
vfp-neon-poky-linux-gnueabi/fuse/2.9.2-r1/build/aclocal-copy/&quot; autorec=
onf --verbose --install --force --exclude=3Dautopoint -I /home/praveenk/wor=
k/beaglebone/poky/build/tmp/work/cortexa8hf-vfp-neon-poky-linux-gnueabi/fus=
e/2.9.2-r1/fuse-2.9.2/m4/<br>| autoreconf: Entering directory `.&#39;<br>| =
autoreconf: <a href=3D"http://configure.in/" target=3D"_blank"><font color=
=3D"#0066cc">configure.in</font></a>: not using Gettext<br>| autoreconf: ru=
nning: aclocal --system-acdir=3D/home/praveenk/work/beaglebone/poky/build/t=
mp/work/cortexa8hf-vfp-neon-poky-linux-gnueabi/fuse/2.9.2-r1/build/aclocal-=
copy/ -I /home/praveenk/work/beaglebone/poky/build/tmp/work/cortexa8hf-vfp-=
neon-poky-linux-gnueabi/fuse/2.9.2-r1/fuse-2.9.2/m4/ -I /home/praveenk/work=
/beaglebone/poky/build/tmp/work/cortexa8hf-vfp-neon-poky-linux-gnueabi/fuse=
/2.9.2-r1/fuse-2.9.2/m4/ --force -I m4<br>| aclocal: warning: autoconf inpu=
t should be named &#39;<a href=3D"http://configure.ac/" target=3D"_blank"><=
font color=3D"#0066cc">configure.ac</font></a>&#39;, not &#39;<a href=3D"ht=
tp://configure.in/" target=3D"_blank"><font color=3D"#0066cc">configure.in<=
/font></a>&#39;<br>| <a href=3D"http://configure.in:72/" target=3D"_blank">=
<font color=3D"#0066cc">configure.in:72</font></a>: warning: macro &#39;AM_=
ICONV&#39; not found in library<br>| autoreconf: <a href=3D"http://configur=
e.in/" target=3D"_blank"><font color=3D"#0066cc">configure.in</font></a>: t=
racing<br>| autoreconf: running: libtoolize --copy --force<br>| libtoolize:=
 putting auxiliary files in &#39;.&#39;.<br>| libtoolize: copying file &#39=
;./ltmain.sh&#39;<br>| libtoolize: putting macros in AC_CONFIG_MACRO_DIRS, =
&#39;m4&#39;.<br>| libtoolize: copying file &#39;m4/libtool.m4&#39;<br>| li=
btoolize: copying file &#39;m4/ltoptions.m4&#39;<br>| libtoolize: copying f=
ile &#39;m4/ltsugar.m4&#39;<br>| libtoolize: copying file &#39;m4/ltversion=
.m4&#39;<br>| libtoolize: copying file &#39;m4/lt~obsolete.m4&#39;<br>| acl=
ocal: warning: autoconf input should be named &#39;<a href=3D"http://config=
ure.ac/" target=3D"_blank"><font color=3D"#0066cc">configure.ac</font></a>&=
#39;, not &#39;<a href=3D"http://configure.in/" target=3D"_blank"><font col=
or=3D"#0066cc">configure.in</font></a>&#39;<br>| <a href=3D"http://configur=
e.in:72/" target=3D"_blank"><font color=3D"#0066cc">configure.in:72</font><=
/a>: warning: macro &#39;AM_ICONV&#39; not found in library<br>| autoreconf=
: running: /home/praveenk/work/beaglebone/poky/build/tmp/sysroots/i686-linu=
x/usr/bin/autoconf --include=3D/home/praveenk/work/beaglebone/poky/build/tm=
p/work/cortexa8hf-vfp-neon-poky-linux-gnueabi/fuse/2.9.2-r1/fuse-2.9.2/m4/ =
--force<br>| <a href=3D"http://configure.in:72/" target=3D"_blank"><font co=
lor=3D"#0066cc">configure.in:72</font></a>: error: possibly undefined macro=
: AM_ICONV<br>|       If this token and others are legitimate, please use m=
4_pattern_allow.<br>|       See the Autoconf documentation.<br>| autoreconf=
: /home/praveenk/work/beaglebone/poky/build/tmp/sysroots/i686-linux/usr/bin=
/autoconf failed with exit status: 1<br>| ERROR: autoreconf execution faile=
d.<br>| WARNING: exit code 1 from a shell command.<br>| ERROR: Function fai=
led: do_configure (log file is located at /home/praveenk/work/beaglebone/po=
ky/build/tmp/work/cortexa8hf-vfp-neon-poky-linux-gnueabi/fuse/2.9.2-r1/temp=
/log.do_configure.26343)<br>ERROR: Task 5 (/home/praveenk/work/beaglebone/p=
oky/meta/recipes-support/fuse/<a href=3D"http://fuse_2.9.2.bb/" target=3D"_=
blank"><font color=3D"#0066cc">fuse_2.9.2.bb</font></a>, do_configure) fail=
ed with exit code &#39;1&#39;<br>NOTE: Tasks Summary: Attempted 434 tasks o=
f which 429 didn&#39;t need to be rerun and 1 failed.<br>No currently runni=
ng tasks (434 of 442)<br><br>Summary: 1 task failed:<br>  /home/praveenk/wo=
rk/beaglebone/poky/meta/recipes-support/fuse/<a href=3D"http://fuse_2.9.2.b=
b/" target=3D"_blank"><font color=3D"#0066cc">fuse_2.9.2.bb</font></a>, do_=
configure<br>Summary: There was 1 WARNING message shown.<br>Summary: There =
was 1 ERROR message shown, returning a non-zero exit code.<br>praveenk@phyt=
ec:~/work/beaglebone/poky/build$ </div><div>=C2=A0</div><div>=C2=A0</div><d=
iv>=C2=A0</div><div>Please any one help me =C2=A0to resolve this.</div><div=
>=C2=A0</div><div>Thanks </div><div>Praveen</div><div>=C2=A0</div><div>=C2=
=A0</div><div>=C2=A0</div><div>=C2=A0</div><div>=C2=A0</div></div>

--047d7bd74daa923a4205122a7c37--
