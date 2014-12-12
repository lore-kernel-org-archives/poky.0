Return-Path: <matti.kaasinen@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A4033E00992; Thu, 11 Dec 2014 22:46:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.217.178 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (matti.kaasinen[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f178.google.com (mail-lb0-f178.google.com
	[209.85.217.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D739DE0083A
	for <poky@yoctoproject.org>; Thu, 11 Dec 2014 22:46:18 -0800 (PST)
Received: by mail-lb0-f178.google.com with SMTP id f15so6033210lbj.9
	for <poky@yoctoproject.org>; Thu, 11 Dec 2014 22:46:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=lsGE1DPLXLGK4OVY0fZq521QLZDG8tDlfQqSN0JX7vY=;
	b=ezyhrPnNSzDkBuBMk/dp5eHLYoQN0gsPkJ1aJSgpkqkuyTRG8wS04+n+Y639i3A4x+
	e1iZ2vAQ3KCMB6M67aIpQqJc53KpP6+TIf6KSUdd4afc6GZVXUtb8BUWX05ep4Px0Nh9
	piG405c75FaJE4HT4fSxSeD6XC37hOGzfhYTvl5gCOAxF1eNgJ/AuLDpqsUB44XS5PN8
	3uG7whLl28B62nIZ067XF3y4daiOV7RdweKnMZbisLAo6t+Oy9n9dmBe644zGoLkLtBp
	CssJjJ/8WRttsgA+uIyY6LL2DgXXLLqR4jCuFsYTj759mBmDSGr8jBzumtJAddHC8pjI
	0FXQ==
MIME-Version: 1.0
X-Received: by 10.152.23.38 with SMTP id j6mr6022092laf.81.1418366776850; Thu,
	11 Dec 2014 22:46:16 -0800 (PST)
Received: by 10.25.154.18 with HTTP; Thu, 11 Dec 2014 22:46:16 -0800 (PST)
Date: Fri, 12 Dec 2014 08:46:16 +0200
Message-ID: <CADnUhn1ExKeMJ7GysgxbyJK5V21dp+SCXnm24LJ=SVHaf0crKw@mail.gmail.com>
From: matti kaasinen <matti.kaasinen@gmail.com>
To: poky@yoctoproject.org, paul.eggleton@linux.intel.com
Subject: bitbake core-image-sato fails
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
X-List-Received-Date: Fri, 12 Dec 2014 06:46:26 -0000
Content-Type: multipart/alternative; boundary=089e0160b6f0e53da30509ff3fe6

--089e0160b6f0e53da30509ff3fe6
Content-Type: text/plain; charset=UTF-8

Hi!

I get following error message when trying to run :
bitbake core-image-sato
from scratch.

---------- snip -----------
ERROR: libxml-parser-perl-native: chrpath command failed with exit code 7:
/TMPDIR/work/x86_64-linux/libxml-parser-perl-native/2.41-r3/sysroot-destdir/TMPDIR/sysroots/x86_64-linux/usr/lib/perl-native/perl/5.14.3/auto/XML/Parser/Expat/Expat.so:
RPATH=/TMPDIR/sysroots/x86_64-linux/usr/lib
new rpath '$ORIGIN/../../../../../../../../../usr/lib' too large; maximum
length 37

ERROR: Function failed
ERROR: Logfile of failure stored in:
/TMPDIR/work/x86_64-linux/libxml-parser-perl-native/2.41-r3/temp/log.do_populate_sysroot.2122
ERROR: Task 3021 (virtual:native:/yocto/poky/meta/recipes-devtools/perl/
libxml-parser-perl_2.41.bb, do_populate_sysroot) failed with exit code '1'
---------- snip -----------

This seems pretty much the same as in:
http://lists.openembedded.org/pipermail/openembedded-core/2012-August/067002.html
at Aug 17, 2012

My settings are















*:BB_VERSION        = "1.20.0"BUILD_SYS         =
"x86_64-linux"NATIVELSBSTRING   = "Ubuntu-14.04"TARGET_SYS        =
"arm-poky-linux-gnueabi"MACHINE           = "pengwyn"DISTRO            =
"poky"DISTRO_VERSION    = "1.5.1"TUNE_FEATURES     = "armv7a vfp
neon"TARGET_FPU        = "vfp-neon"meta              meta-yocto
meta-yocto-bsp    =
"(nobranch):b626e109e83384558f45dc2e30e7caec677ce1db"meta-ti           =
"(nobranch):ceb91a69d1b647a8d35874f3ad2bc7c03063b92c"meta-pengwyn      =
"(nobranch):4423abf8eb802befb147e28376045dcdce860d13"*

*Cheers,*

*Matti*

--089e0160b6f0e53da30509ff3fe6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hi!<br><br></div>I get following error message w=
hen trying to run :<br>bitbake core-image-sato <br>from scratch.<br><br>---=
------- snip -----------
<br>ERROR: libxml-parser-perl-native: chrpath command failed with exit code=
 7:<br>/TMPDIR/work/x86_64-linux/libxml-parser-perl-native/2.41-r3/sysroot-=
destdir/TMPDIR/sysroots/x86_64-linux/usr/lib/perl-native/perl/5.14.3/auto/X=
ML/Parser/Expat/Expat.so: RPATH=3D/TMPDIR/sysroots/x86_64-linux/usr/lib<br>=
new rpath &#39;$ORIGIN/../../../../../../../../../usr/lib&#39; too large; m=
aximum length 37<br><br>ERROR: Function failed<br>ERROR: Logfile of failure=
 stored in: /TMPDIR/work/x86_64-linux/libxml-parser-perl-native/2.41-r3/tem=
p/log.do_populate_sysroot.2122<br>ERROR: Task 3021 (virtual:native:/yocto/p=
oky/meta/recipes-devtools/perl/<a href=3D"http://libxml-parser-perl_2.41.bb=
">libxml-parser-perl_2.41.bb</a>, do_populate_sysroot) failed with exit cod=
e &#39;1&#39;<br>---------- snip -----------
<br><br></div>This seems pretty much the same as in:<br><div><a href=3D"htt=
p://lists.openembedded.org/pipermail/openembedded-core/2012-August/067002.h=
tml">http://lists.openembedded.org/pipermail/openembedded-core/2012-August/=
067002.html</a><br></div><div>at Aug 17, 2012<br><br></div><div>My settings=
 are<i>:<br>BB_VERSION=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;=
1.20.0&quot;<br>BUILD_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
=3D &quot;x86_64-linux&quot;<br>NATIVELSBSTRING=C2=A0=C2=A0 =3D &quot;Ubunt=
u-14.04&quot;<br>TARGET_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &=
quot;arm-poky-linux-gnueabi&quot;<br>MACHINE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;pengwyn&quot;<br>DISTRO=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;poky&qu=
ot;<br>DISTRO_VERSION=C2=A0=C2=A0=C2=A0 =3D &quot;1.5.1&quot;<br>TUNE_FEATU=
RES=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;armv7a vfp neon&quot;<br>TARGET_FPU=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;vfp-neon&quot;<br>meta=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 <br>meta-yocto=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <br>meta-yocto=
-bsp=C2=A0=C2=A0=C2=A0 =3D &quot;(nobranch):b626e109e83384558f45dc2e30e7cae=
c677ce1db&quot;<br>meta-ti=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 =3D &quot;(nobranch):ceb91a69d1b647a8d35874f3ad2bc7c03063b92c&=
quot;<br>meta-pengwyn=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;(nobranch):44=
23abf8eb802befb147e28376045dcdce860d13&quot;<br><br></i></div><div><i>Cheer=
s,<br></i></div><div><i>Matti<br></i></div><div><i><br></i></div></div>

--089e0160b6f0e53da30509ff3fe6--
