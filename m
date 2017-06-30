Return-Path: <i.hamlatzis@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C583FE00B2F; Fri, 30 Jun 2017 02:23:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (i.hamlatzis[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.170 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.170 listed in list.dnswl.org]
Received: from mail-qk0-f170.google.com (mail-qk0-f170.google.com
	[209.85.220.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29A51E00B18
	for <poky@yoctoproject.org>; Fri, 30 Jun 2017 02:23:38 -0700 (PDT)
Received: by mail-qk0-f170.google.com with SMTP id p21so96267769qke.3
	for <poky@yoctoproject.org>; Fri, 30 Jun 2017 02:23:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=6JzI9ZJi6i89UyUAt5wH5Kr9nenXnJWoHiGSRnoWbPI=;
	b=vS+X42v3Dz5a13mFaVOsUvXJXzDKKQUli31r3eO9ULdnFlI728SG/SwyIym3uK5v0L
	RD3vqnVVKvSoqQl9y2OPpX31jjb301zJE6tBBzNGll5VnOu8z7OyG3iRhwwBtmDnAYHs
	Esb47v/HzbzavZRwJ6JUspk3OS3Jt3VdkUA1zE4JNNrTGr+CDgzyBgdNPTWqzvYQiTyu
	FDYqSFnpfjT84Pce2BGeQD6Sx0qj4zCm2pxQ/TLcwZ1DuCE0w6yCjpq750jJ1tGal+MZ
	gl3L7Q3x9FJyIMUI6wIxEuTKWVwHL+4ZHadyYpkCPLTSdHqPpOCsSz9eUx6yzsMNlt7j
	+jYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=6JzI9ZJi6i89UyUAt5wH5Kr9nenXnJWoHiGSRnoWbPI=;
	b=Fk0iNFKuBnhWRNmaYVG3ma1m1FvaHQ1pAFnSUwQsdo4yzUHQNRN4Ui/HbGwSe0WlgH
	e+w1vVoeMani8b1mbMynYB2wjWlCOIfevo2DwKIqmEKAvFcrTOZuSvysBYmpeT9Xf8aZ
	zb/w8OPoAp6m8q0LIBi3ra8szTFAQwj78AsxFZL5VPnuuNfTbYhKgH3QKnr/plO295mp
	W7SrGL6py9x1uOSRmbSkTuZt2jQ5z92WW7Wj40dFKJOxHa2z5sro9rKvktz6u2p982Cn
	bLYwAbDzcXAX70DKhYRq65HWppuCPtFMYm/Tj8YYx1rzs4ntcz3FTtaz8dfzCKJhpc0M
	jg7Q==
X-Gm-Message-State: AIVw112HZBDoDRGuRHvzIybtfMt+qD0mg33aIbLvZSNCVmpi/TDUXQI8
	3aL6COC0WNmExFlK7ETuuypu3uQu5Qpd
X-Received: by 10.55.153.1 with SMTP id b1mr13318838qke.203.1498814617891;
	Fri, 30 Jun 2017 02:23:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.12.173.194 with HTTP; Fri, 30 Jun 2017 02:22:57 -0700 (PDT)
From: Iosif Hamlatzis <i.hamlatzis@gmail.com>
Date: Fri, 30 Jun 2017 12:22:57 +0300
Message-ID: <CAD2f6zV0u_hK0teYMi7F=Gsmf+ZSOVQ7aOZD8GMdzfmuKOuh7A@mail.gmail.com>
To: poky@yoctoproject.org
Subject: raspberry3 with yocto freezes
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
X-List-Received-Date: Fri, 30 Jun 2017 09:23:41 -0000
Content-Type: multipart/alternative; boundary="94eb2c07ed22e238b3055329f83a"

--94eb2c07ed22e238b3055329f83a
Content-Type: text/plain; charset="UTF-8"

Hello, I hope this mailing list is the correct one to ask a question
regarding yocto and creating an image for raspberry, if it's not I do
apologize and I would appreciate if you could redirect me to the correct
one.

It's several days now that I'm trying to create an image for my raspberry3
and although the process finishes with no problem, after burning the SD
card and booting the pi3 freezes showing 4 berries

I am using pyro branch for both yocto & raspberry.

My bblayers.conf is:
--------------------------------------------------------------------
LCONF_VERSION = "7"

# POKY_BBLAYERS_CONF_VERSION is increased each time build/conf/bblayers.conf
# changes incompatibly
POKY_BBLAYERS_CONF_VERSION = "2"

BBPATH = "${TOPDIR}"
BSPDIR := "${@os.path.abspath(os.path.dirname(d.getVar('FILE', True)) +
'/../..')}"

BBFILES ?= ""

BBLAYERS ?= " \
  ${BSPDIR}/meta \
  ${BSPDIR}/meta-poky \
  ${BSPDIR}/meta-yocto-bsp \
  ${BSPDIR}/meta-raspberrypi \
"
------------------------------------------------
and my local.conf is:
-----------------------------------------------------#

BB_NUMBER_THREADS ?= "${@oe.utils.cpu_count()}"
PARALLEL_MAKE ?= "-j ${@oe.utils.cpu_count()}"

MACHINE ?= "raspberrypi3"

DISTRO ?= "poky"

PACKAGE_CLASSES ?= "package_rpm"

EXTRA_IMAGE_FEATURES ?= "debug-tweaks"
EXTRA_IMAGE_FEATURES += "package-management"

USER_CLASSES ?= "buildstats image-mklibs image-prelink"

PATCHRESOLVE = "noop"

BB_DISKMON_DIRS = "\
    STOPTASKS,${TMPDIR},1G,100K \
    STOPTASKS,${DL_DIR},1G,100K \
    STOPTASKS,${SSTATE_DIR},1G,100K \
    STOPTASKS,/tmp,100M,100K \
    ABORT,${TMPDIR},100M,1K \
    ABORT,${DL_DIR},100M,1K \
    ABORT,${SSTATE_DIR},100M,1K \
    ABORT,/tmp,10M,1K"

PACKAGECONFIG_append_pn-qemu-native = " sdl"
PACKAGECONFIG_append_pn-nativesdk-qemu = " sdl"
#ASSUME_PROVIDED += "libsdl-native"

CONF_VERSION = "1"

PACKAGE_ARCH = "${MACHINE_ARCH}"

############################
## Raspberry specific

GPU_MEM = "256"
ENABLE_UART = "1"

## Raspberry specific
############################

--94eb2c07ed22e238b3055329f83a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello, I hope this mailing list is the correct one to ask =
a question regarding yocto and creating an image for raspberry, if it&#39;s=
 not I do apologize and I would appreciate if you could redirect me to the =
correct one.<div><br></div><div>It&#39;s several days now that I&#39;m tryi=
ng to create an image for my raspberry3 and although the process finishes w=
ith no problem, after burning the SD card and booting the pi3 freezes showi=
ng 4 berries</div><div><br></div><div>I am using pyro branch for both yocto=
 &amp; raspberry.</div><div><br></div><div>My bblayers.conf is:</div><div>-=
-------------------------------------------------------------------</div><d=
iv><div>LCONF_VERSION =3D &quot;7&quot;</div><div><br></div><div># POKY_BBL=
AYERS_CONF_VERSION is increased each time build/conf/bblayers.conf</div><di=
v># changes incompatibly</div><div>POKY_BBLAYERS_CONF_VERSION =3D &quot;2&q=
uot;</div><div><br></div><div>BBPATH =3D &quot;${TOPDIR}&quot;</div><div>BS=
PDIR :=3D &quot;${@os.path.abspath(os.path.dirname(d.getVar(&#39;FILE&#39;,=
 True)) + &#39;/../..&#39;)}&quot;</div><div><br></div><div>BBFILES ?=3D &q=
uot;&quot;</div><div><br></div><div>BBLAYERS ?=3D &quot; \</div><div>=C2=A0=
 ${BSPDIR}/meta \</div><div>=C2=A0 ${BSPDIR}/meta-poky \</div><div>=C2=A0 $=
{BSPDIR}/meta-yocto-bsp \</div><div>=C2=A0 ${BSPDIR}/meta-raspberrypi \</di=
v><div>&quot;</div></div><div>---------------------------------------------=
---</div><div>and my local.conf is:</div><div>-----------------------------=
------------------------#</div><div><br></div><div>BB_NUMBER_THREADS ?=3D &=
quot;${@oe.utils.cpu_count()}&quot;</div><div>PARALLEL_MAKE ?=3D &quot;-j $=
{@oe.utils.cpu_count()}&quot;</div><div><br></div><div>MACHINE ?=3D &quot;r=
aspberrypi3&quot;<br></div><div><br></div><div>DISTRO ?=3D &quot;poky&quot;=
</div><div><br></div><div>PACKAGE_CLASSES ?=3D &quot;package_rpm&quot;<br><=
/div><div><br></div><div>EXTRA_IMAGE_FEATURES ?=3D &quot;debug-tweaks&quot;=
<br></div><div>EXTRA_IMAGE_FEATURES +=3D &quot;package-management&quot;</di=
v><div><br></div><div>USER_CLASSES ?=3D &quot;buildstats image-mklibs image=
-prelink&quot;<br></div><div><br></div><div>PATCHRESOLVE =3D &quot;noop&quo=
t;<br></div><div><br></div><div>BB_DISKMON_DIRS =3D &quot;\<br></div><div>=
=C2=A0 =C2=A0 STOPTASKS,${TMPDIR},1G,100K \</div><div>=C2=A0 =C2=A0 STOPTAS=
KS,${DL_DIR},1G,100K \</div><div>=C2=A0 =C2=A0 STOPTASKS,${SSTATE_DIR},1G,1=
00K \</div><div>=C2=A0 =C2=A0 STOPTASKS,/tmp,100M,100K \</div><div>=C2=A0 =
=C2=A0 ABORT,${TMPDIR},100M,1K \</div><div>=C2=A0 =C2=A0 ABORT,${DL_DIR},10=
0M,1K \</div><div>=C2=A0 =C2=A0 ABORT,${SSTATE_DIR},100M,1K \</div><div>=C2=
=A0 =C2=A0 ABORT,/tmp,10M,1K&quot;</div><div><br></div><div>PACKAGECONFIG_a=
ppend_pn-qemu-native =3D &quot; sdl&quot;<br></div><div>PACKAGECONFIG_appen=
d_pn-nativesdk-qemu =3D &quot; sdl&quot;</div><div>#ASSUME_PROVIDED +=3D &q=
uot;libsdl-native&quot;</div><div><br></div><div>CONF_VERSION =3D &quot;1&q=
uot;<br></div><div><br></div><div>PACKAGE_ARCH =3D &quot;${MACHINE_ARCH}&qu=
ot;</div><div><br></div><div>############################</div><div>## Rasp=
berry specific</div><div><br></div><div>GPU_MEM =3D &quot;256&quot;</div><d=
iv>ENABLE_UART =3D &quot;1&quot;</div><div><br></div><div>## Raspberry spec=
ific<br></div><div>############################</div><div><br></div></div>

--94eb2c07ed22e238b3055329f83a--
