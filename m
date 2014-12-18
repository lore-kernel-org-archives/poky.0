Return-Path: <matti.kaasinen@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1E6CAE00897; Thu, 18 Dec 2014 01:43:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (matti.kaasinen[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f193.google.com (mail-lb0-f193.google.com
	[209.85.217.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C6E6E002A6
	for <poky@yoctoproject.org>; Thu, 18 Dec 2014 01:43:40 -0800 (PST)
Received: by mail-lb0-f193.google.com with SMTP id 10so171025lbg.8
	for <poky@yoctoproject.org>; Thu, 18 Dec 2014 01:43:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=nkgL7EKpyNJfqXGOn7K1ZEl0KahKsRGah7cB8SJ2j64=;
	b=zm66bwv8lgUxGqueQTPGgpcNGR80XU7MKQB+ZfODY6Zh8UCkH4QQ6aYmXd2YT1JN0D
	5a/m8AKzm3lCZIqZEcRKTBcN3LfKfLhHAPCG+QPoqtLPW23lTvRqoJ6gCvaPvClGFTAU
	bwBs6xNmOSniTuoyS7TsiVtSS29PAZCNx7/RQsBMm1rKacztnFuMpvPWziQ7thVluMtT
	TTLpAGBqwmZmAVrftL0OMTp1S7EOxKUox9w3J5PXjCLkW7rStTvCRS+yZ24mFmnIPyi+
	eY70ggxwAMAcjE5OeNDro8U+YrrY3jN0ZTb+y98YDurtDf4eyCmARzT3oLTQQckG680E
	zT3A==
MIME-Version: 1.0
X-Received: by 10.152.30.6 with SMTP id o6mr1278842lah.64.1418895819177; Thu,
	18 Dec 2014 01:43:39 -0800 (PST)
Received: by 10.25.154.18 with HTTP; Thu, 18 Dec 2014 01:43:39 -0800 (PST)
In-Reply-To: <CADnUhn1ExKeMJ7GysgxbyJK5V21dp+SCXnm24LJ=SVHaf0crKw@mail.gmail.com>
References: <CADnUhn1ExKeMJ7GysgxbyJK5V21dp+SCXnm24LJ=SVHaf0crKw@mail.gmail.com>
Date: Thu, 18 Dec 2014 11:43:39 +0200
Message-ID: <CADnUhn1M89hy9O5gT3Hf=66NYnp-DPiT8h0H7sD6BVB=K+y67Q@mail.gmail.com>
From: matti kaasinen <matti.kaasinen@gmail.com>
To: poky@yoctoproject.org
Subject: Re: bitbake core-image-sato fails
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
X-List-Received-Date: Thu, 18 Dec 2014 09:43:49 -0000
Content-Type: multipart/alternative; boundary=089e0160b4544683f3050a7a6d31

--089e0160b4544683f3050a7a6d31
Content-Type: text/plain; charset=UTF-8

Hi!
I replaced chrpath.bbclass with the latest one. This resolved the original
problem. Then bitbake proceeded until:
ERROR: Function failed: do_compile (log file is located at
/TMPDIR/work/armv7a-vfp-neon-poky-linux-gnueabi/e2fsprogs/1.42.8-r0/temp/log.do_compile.25157)
ERROR: Logfile of failure stored in:
/TMPDIR/work/armv7a-vfp-neon-poky-linux-gnueabi/e2fsprogs/1.42.8-r0/temp/log.do_compile.25157

I tried also with dizzy - only difference was that e2fsprogs version
changed to 1.42.9-r0.

What might go wrong? Whole error log below:
Log data follows:
| DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common',
'common-linux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi', 'common']
| DEBUG: Executing shell function do_compile
| NOTE: make -j 8
| cd ./util ; make subst
| make[1]: Entering directory
`/TMPDIR/work/armv7a-vfp-neon-poky-linux-gnueabi/e2fsprogs/1.42.9-r0/build/util'
| gcc  -c
/TMPDIR/work/armv7a-vfp-neon-poky-linux-gnueabi/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/util/subst.c
-o subst.o
| gcc   -o subst subst.o
| make[1]: Leaving directory
`/TMPDIR/work/armv7a-vfp-neon-poky-linux-gnueabi/e2fsprogs/1.42.9-r0/build/util'
| make[1]: Entering directory
`/TMPDIR/work/armv7a-vfp-neon-poky-linux-gnueabi/e2fsprogs/1.42.9-r0/build'
| make[1]: `util/subst.conf' is up to date.
| make[1]: Leaving directory
`/TMPDIR/work/armv7a-vfp-neon-poky-linux-gnueabi/e2fsprogs/1.42.9-r0/build'
| make[1]: Entering directory
`/TMPDIR/work/armv7a-vfp-neon-poky-linux-gnueabi/e2fsprogs/1.42.9-r0/build'
| make[1]: `lib/config.h' is up to date.
| make[1]: Leaving directory
`/TMPDIR/work/armv7a-vfp-neon-poky-linux-gnueabi/e2fsprogs/1.42.9-r0/build'
| make[1]: Entering directory
`/TMPDIR/work/armv7a-vfp-neon-poky-linux-gnueabi/e2fsprogs/1.42.9-r0/build'
| ./util/subst -f ./util/subst.conf
/TMPDIR/work/armv7a-vfp-neon-poky-linux-gnueabi/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/
dirpaths.h.in lib/dirpaths.h
| make[1]: Leaving directory
`/TMPDIR/work/armv7a-vfp-neon-poky-linux-gnueabi/e2fsprogs/1.42.9-r0/build'
| make[1]: Entering directory
`/TMPDIR/work/armv7a-vfp-neon-poky-linux-gnueabi/e2fsprogs/1.42.9-r0/build'
| cd .; CONFIG_FILES=./lib/ext2fs/ext2_types.h ./config.status
| config.status: creating ./lib/ext2fs/ext2_types.h
| config.status: creating lib/config.h
| config.status: lib/config.h is unchanged
| config.status: executing po-directories commands
| make[1]: Leaving directory
`/TMPDIR/work/armv7a-vfp-neon-poky-linux-gnueabi/e2fsprogs/1.42.9-r0/build'
| make[1]: Entering directory
`/TMPDIR/work/armv7a-vfp-neon-poky-linux-gnueabi/e2fsprogs/1.42.9-r0/build'
| cd .; CONFIG_FILES=./lib/blkid/blkid_types.h ./config.status
| config.status: creating ./lib/blkid/blkid_types.h
| config.status: creating lib/config.h
| config.status: lib/config.h is unchanged
| config.status: executing po-directories commands
| make[1]: Leaving directory
`/TMPDIR/work/armv7a-vfp-neon-poky-linux-gnueabi/e2fsprogs/1.42.9-r0/build'
| make[1]: Entering directory
`/TMPDIR/work/armv7a-vfp-neon-poky-linux-gnueabi/e2fsprogs/1.42.9-r0/build'
| cd .; CONFIG_FILES=./lib/uuid/uuid_types.h ./config.status
| config.status: creating ./lib/uuid/uuid_types.h
| config.status: creating lib/config.h
| config.status: lib/config.h is unchanged
| config.status: executing po-directories commands
| make[1]: Leaving directory
`/TMPDIR/work/armv7a-vfp-neon-poky-linux-gnueabi/e2fsprogs/1.42.9-r0/build'
| make[1]: Entering directory
`/TMPDIR/work/armv7a-vfp-neon-poky-linux-gnueabi/e2fsprogs/1.42.9-r0/build/lib/et'
| ../../util/subst -f ../../util/subst.conf
/TMPDIR/work/armv7a-vfp-neon-poky-linux-gnueabi/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/et/
compile_et.sh.in compile_et
| /bin/chmod +x compile_et
| make[1]: Leaving directory
`/TMPDIR/work/armv7a-vfp-neon-poky-linux-gnueabi/e2fsprogs/1.42.9-r0/build/lib/et'
| make[1]: Entering directory
`/TMPDIR/work/armv7a-vfp-neon-poky-linux-gnueabi/e2fsprogs/1.42.9-r0/build/lib/ext2fs'
| ../../util/subst -f ../../util/subst.conf
/TMPDIR/work/armv7a-vfp-neon-poky-linux-gnueabi/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/ext2fs/
ext2_err.et.in ext2_err.et
| ../et/compile_et --build-tree ext2_err.et
| chmod: ext2_err.h: new permissions are r--rw-r--, not r--r--r--
| chmod: ext2_err.c: new permissions are r--rw-r--, not r--r--r--
| make[1]: *** [ext2_err.h] Error 1
| make[1]: Leaving directory
`/TMPDIR/work/armv7a-vfp-neon-poky-linux-gnueabi/e2fsprogs/1.42.9-r0/build/lib/ext2fs'
| make: *** [subs] Error 2
| ERROR: oe_runmake failed
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_compile (log file is located at
/TMPDIR/work/armv7a-vfp-neon-poky-linux-gnueabi/e2fsprogs/1.42.9-r0/temp/log.do_compile.25157)
ERROR: Task 1008 (/yocto/poky/meta/recipes-devtools/e2fsprogs/
e2fsprogs_1.42.9.bb, do_compile) failed with exit code '1'


2014-12-12 8:46 GMT+02:00 matti kaasinen <matti.kaasinen@gmail.com>:
>
> Hi!
>
> I get following error message when trying to run :
> bitbake core-image-sato
> from scratch.
>
> ---------- snip -----------
> ERROR: libxml-parser-perl-native: chrpath command failed with exit code 7:
> /TMPDIR/work/x86_64-linux/libxml-parser-perl-native/2.41-r3/sysroot-destdir/TMPDIR/sysroots/x86_64-linux/usr/lib/perl-native/perl/5.14.3/auto/XML/Parser/Expat/Expat.so:
> RPATH=/TMPDIR/sysroots/x86_64-linux/usr/lib
> new rpath '$ORIGIN/../../../../../../../../../usr/lib' too large; maximum
> length 37
>
> ERROR: Function failed
> ERROR: Logfile of failure stored in:
> /TMPDIR/work/x86_64-linux/libxml-parser-perl-native/2.41-r3/temp/log.do_populate_sysroot.2122
> ERROR: Task 3021 (virtual:native:/yocto/poky/meta/recipes-devtools/perl/
> libxml-parser-perl_2.41.bb, do_populate_sysroot) failed with exit code '1'
> ---------- snip -----------
>
> This seems pretty much the same as in:
>
> http://lists.openembedded.org/pipermail/openembedded-core/2012-August/067002.html
> at Aug 17, 2012
>
> My settings are
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
> *:BB_VERSION        = "1.20.0"BUILD_SYS         =
> "x86_64-linux"NATIVELSBSTRING   = "Ubuntu-14.04"TARGET_SYS        =
> "arm-poky-linux-gnueabi"MACHINE           = "pengwyn"DISTRO            =
> "poky"DISTRO_VERSION    = "1.5.1"TUNE_FEATURES     = "armv7a vfp
> neon"TARGET_FPU        = "vfp-neon"meta              meta-yocto
> meta-yocto-bsp    =
> "(nobranch):b626e109e83384558f45dc2e30e7caec677ce1db"meta-ti           =
> "(nobranch):ceb91a69d1b647a8d35874f3ad2bc7c03063b92c"meta-pengwyn      =
> "(nobranch):4423abf8eb802befb147e28376045dcdce860d13"*
>
> *Cheers,*
>
> *Matti*
>
>

--089e0160b4544683f3050a7a6d31
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hi!<br>I replaced chrpath.bbclass with the lates=
t one. This resolved the original problem. Then bitbake proceeded until:<br=
>ERROR: Function failed: do_compile (log file is located at /TMPDIR/work/ar=
mv7a-vfp-neon-poky-linux-gnueabi/e2fsprogs/1.42.8-r0/temp/log.do_compile.25=
157)<br>ERROR: Logfile of failure stored in: /TMPDIR/work/armv7a-vfp-neon-p=
oky-linux-gnueabi/e2fsprogs/1.42.8-r0/temp/log.do_compile.25157<br><br></di=
v>I tried also with dizzy - only difference was that e2fsprogs version chan=
ged to 1.42.9-r0.<br><br></div>What might go wrong? Whole error log below:<=
br><div><div>Log data follows:<br>| DEBUG: SITE files [&#39;endian-little&#=
39;, &#39;bit-32&#39;, &#39;arm-common&#39;, &#39;common-linux&#39;, &#39;c=
ommon-glibc&#39;, &#39;arm-linux&#39;, &#39;arm-linux-gnueabi&#39;, &#39;co=
mmon&#39;]<br>| DEBUG: Executing shell function do_compile<br>| NOTE: make =
-j 8<br>| cd ./util ; make subst<br>| make[1]: Entering directory `/TMPDIR/=
work/armv7a-vfp-neon-poky-linux-gnueabi/e2fsprogs/1.42.9-r0/build/util&#39;=
<br>| gcc=C2=A0 -c=C2=A0 /TMPDIR/work/armv7a-vfp-neon-poky-linux-gnueabi/e2=
fsprogs/1.42.9-r0/e2fsprogs-1.42.9/util/subst.c -o subst.o<br>| gcc=C2=A0=
=C2=A0 -o subst subst.o<br>| make[1]: Leaving directory `/TMPDIR/work/armv7=
a-vfp-neon-poky-linux-gnueabi/e2fsprogs/1.42.9-r0/build/util&#39;<br>| make=
[1]: Entering directory `/TMPDIR/work/armv7a-vfp-neon-poky-linux-gnueabi/e2=
fsprogs/1.42.9-r0/build&#39;<br>| make[1]: `util/subst.conf&#39; is up to d=
ate.<br>| make[1]: Leaving directory `/TMPDIR/work/armv7a-vfp-neon-poky-lin=
ux-gnueabi/e2fsprogs/1.42.9-r0/build&#39;<br>| make[1]: Entering directory =
`/TMPDIR/work/armv7a-vfp-neon-poky-linux-gnueabi/e2fsprogs/1.42.9-r0/build&=
#39;<br>| make[1]: `lib/config.h&#39; is up to date.<br>| make[1]: Leaving =
directory `/TMPDIR/work/armv7a-vfp-neon-poky-linux-gnueabi/e2fsprogs/1.42.9=
-r0/build&#39;<br>| make[1]: Entering directory `/TMPDIR/work/armv7a-vfp-ne=
on-poky-linux-gnueabi/e2fsprogs/1.42.9-r0/build&#39;<br>| ./util/subst -f .=
/util/subst.conf /TMPDIR/work/armv7a-vfp-neon-poky-linux-gnueabi/e2fsprogs/=
1.42.9-r0/e2fsprogs-1.42.9/lib/<a href=3D"http://dirpaths.h.in">dirpaths.h.=
in</a> lib/dirpaths.h<br>| make[1]: Leaving directory `/TMPDIR/work/armv7a-=
vfp-neon-poky-linux-gnueabi/e2fsprogs/1.42.9-r0/build&#39;<br>| make[1]: En=
tering directory `/TMPDIR/work/armv7a-vfp-neon-poky-linux-gnueabi/e2fsprogs=
/1.42.9-r0/build&#39;<br>| cd .; CONFIG_FILES=3D./lib/ext2fs/ext2_types.h .=
/config.status<br>| config.status: creating ./lib/ext2fs/ext2_types.h<br>| =
config.status: creating lib/config.h<br>| config.status: lib/config.h is un=
changed<br>| config.status: executing po-directories commands<br>| make[1]:=
 Leaving directory `/TMPDIR/work/armv7a-vfp-neon-poky-linux-gnueabi/e2fspro=
gs/1.42.9-r0/build&#39;<br>| make[1]: Entering directory `/TMPDIR/work/armv=
7a-vfp-neon-poky-linux-gnueabi/e2fsprogs/1.42.9-r0/build&#39;<br>| cd .; CO=
NFIG_FILES=3D./lib/blkid/blkid_types.h ./config.status<br>| config.status: =
creating ./lib/blkid/blkid_types.h<br>| config.status: creating lib/config.=
h<br>| config.status: lib/config.h is unchanged<br>| config.status: executi=
ng po-directories commands<br>| make[1]: Leaving directory `/TMPDIR/work/ar=
mv7a-vfp-neon-poky-linux-gnueabi/e2fsprogs/1.42.9-r0/build&#39;<br>| make[1=
]: Entering directory `/TMPDIR/work/armv7a-vfp-neon-poky-linux-gnueabi/e2fs=
progs/1.42.9-r0/build&#39;<br>| cd .; CONFIG_FILES=3D./lib/uuid/uuid_types.=
h ./config.status<br>| config.status: creating ./lib/uuid/uuid_types.h<br>|=
 config.status: creating lib/config.h<br>| config.status: lib/config.h is u=
nchanged<br>| config.status: executing po-directories commands<br>| make[1]=
: Leaving directory `/TMPDIR/work/armv7a-vfp-neon-poky-linux-gnueabi/e2fspr=
ogs/1.42.9-r0/build&#39;<br>| make[1]: Entering directory `/TMPDIR/work/arm=
v7a-vfp-neon-poky-linux-gnueabi/e2fsprogs/1.42.9-r0/build/lib/et&#39;<br>| =
../../util/subst -f ../../util/subst.conf /TMPDIR/work/armv7a-vfp-neon-poky=
-linux-gnueabi/e2fsprogs/1.42.9-r0/e2fsprogs-1.42.9/lib/et/<a href=3D"http:=
//compile_et.sh.in">compile_et.sh.in</a> compile_et<br>| /bin/chmod +x comp=
ile_et<br>| make[1]: Leaving directory `/TMPDIR/work/armv7a-vfp-neon-poky-l=
inux-gnueabi/e2fsprogs/1.42.9-r0/build/lib/et&#39;<br>| make[1]: Entering d=
irectory `/TMPDIR/work/armv7a-vfp-neon-poky-linux-gnueabi/e2fsprogs/1.42.9-=
r0/build/lib/ext2fs&#39;<br>| ../../util/subst -f ../../util/subst.conf /TM=
PDIR/work/armv7a-vfp-neon-poky-linux-gnueabi/e2fsprogs/1.42.9-r0/e2fsprogs-=
1.42.9/lib/ext2fs/<a href=3D"http://ext2_err.et.in">ext2_err.et.in</a> <a h=
ref=3D"http://ext2_err.et">ext2_err.et</a><br>| ../et/compile_et --build-tr=
ee <a href=3D"http://ext2_err.et">ext2_err.et</a><br>| chmod: ext2_err.h: n=
ew permissions are r--rw-r--, not r--r--r--<br>| chmod: ext2_err.c: new per=
missions are r--rw-r--, not r--r--r--<br>| make[1]: *** [ext2_err.h] Error =
1<br>| make[1]: Leaving directory `/TMPDIR/work/armv7a-vfp-neon-poky-linux-=
gnueabi/e2fsprogs/1.42.9-r0/build/lib/ext2fs&#39;<br>| make: *** [subs] Err=
or 2<br>| ERROR: oe_runmake failed<br>| WARNING: exit code 1 from a shell c=
ommand.<br>| ERROR: Function failed: do_compile (log file is located at /TM=
PDIR/work/armv7a-vfp-neon-poky-linux-gnueabi/e2fsprogs/1.42.9-r0/temp/log.d=
o_compile.25157)<br>ERROR: Task 1008 (/yocto/poky/meta/recipes-devtools/e2f=
sprogs/<a href=3D"http://e2fsprogs_1.42.9.bb">e2fsprogs_1.42.9.bb</a>, do_c=
ompile) failed with exit code &#39;1&#39;<br><br></div></div></div><div cla=
ss=3D"gmail_extra"><br><div class=3D"gmail_quote">2014-12-12 8:46 GMT+02:00=
 matti kaasinen <span dir=3D"ltr">&lt;<a href=3D"mailto:matti.kaasinen@gmai=
l.com" target=3D"_blank">matti.kaasinen@gmail.com</a>&gt;</span>:<blockquot=
e class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc sol=
id;padding-left:1ex"><div dir=3D"ltr"><div><div>Hi!<br><br></div>I get foll=
owing error message when trying to run :<br>bitbake core-image-sato <br>fro=
m scratch.<br><br>---------- snip -----------
<br>ERROR: libxml-parser-perl-native: chrpath command failed with exit code=
 7:<br>/TMPDIR/work/x86_64-linux/libxml-parser-perl-native/2.41-r3/sysroot-=
destdir/TMPDIR/sysroots/x86_64-linux/usr/lib/perl-native/perl/5.14.3/auto/X=
ML/Parser/Expat/Expat.so: RPATH=3D/TMPDIR/sysroots/x86_64-linux/usr/lib<br>=
new rpath &#39;$ORIGIN/../../../../../../../../../usr/lib&#39; too large; m=
aximum length 37<br><br>ERROR: Function failed<br>ERROR: Logfile of failure=
 stored in: /TMPDIR/work/x86_64-linux/libxml-parser-perl-native/2.41-r3/tem=
p/log.do_populate_sysroot.2122<br>ERROR: Task 3021 (virtual:native:/yocto/p=
oky/meta/recipes-devtools/perl/<a href=3D"http://libxml-parser-perl_2.41.bb=
" target=3D"_blank">libxml-parser-perl_2.41.bb</a>, do_populate_sysroot) fa=
iled with exit code &#39;1&#39;<br>---------- snip -----------
<br><br></div>This seems pretty much the same as in:<br><div><a href=3D"htt=
p://lists.openembedded.org/pipermail/openembedded-core/2012-August/067002.h=
tml" target=3D"_blank">http://lists.openembedded.org/pipermail/openembedded=
-core/2012-August/067002.html</a><br></div><div>at Aug 17, 2012<br><br></di=
v><div>My settings are<i>:<br>BB_VERSION=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 =3D &quot;1.20.0&quot;<br>BUILD_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 =3D &quot;x86_64-linux&quot;<br>NATIVELSBSTRING=C2=A0=C2=
=A0 =3D &quot;Ubuntu-14.04&quot;<br>TARGET_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 =3D &quot;arm-poky-linux-gnueabi&quot;<br>MACHINE=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;pengwyn&quot;=
<br>DISTRO=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 =3D &quot;poky&quot;<br>DISTRO_VERSION=C2=A0=C2=A0=C2=A0 =3D &quot;1.5.=
1&quot;<br>TUNE_FEATURES=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;armv7a vfp neon&=
quot;<br>TARGET_FPU=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;vfp=
-neon&quot;<br>meta=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 <br>meta-yocto=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 <br>meta-yocto-bsp=C2=A0=C2=A0=C2=A0 =3D &quot;(nobranch):b626e109e8=
3384558f45dc2e30e7caec677ce1db&quot;<br>meta-ti=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;(nobranch):ceb91a69d1b647a8d358=
74f3ad2bc7c03063b92c&quot;<br>meta-pengwyn=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
=3D &quot;(nobranch):4423abf8eb802befb147e28376045dcdce860d13&quot;<br><br>=
</i></div><div><i>Cheers,<br></i></div><div><i>Matti<br></i></div><div><i><=
br></i></div></div>
</blockquote></div></div>

--089e0160b4544683f3050a7a6d31--
