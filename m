Return-Path: <srinivasan.rns@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5E8FDE00A38; Tue,  4 Sep 2018 16:41:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.216.179 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (srinivasan.rns[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f179.google.com (mail-qt0-f179.google.com
	[209.85.216.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F1F0E009D9
	for <poky@yoctoproject.org>; Tue,  4 Sep 2018 16:41:46 -0700 (PDT)
Received: by mail-qt0-f179.google.com with SMTP id d4-v6so6058732qtn.13
	for <poky@yoctoproject.org>; Tue, 04 Sep 2018 16:41:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=0HD9TiX1sAV5HzLhQIZiAZjnWpAWnFBgUKgKDKkEI04=;
	b=LrHqx0T/twIVsMCZp5xSSHscFNN+S/Mi3mpYeX3eW9FNrPEplWKESesK4eYewd6w8K
	+JoDGtf+wjZI0Av85v7A3Kokzj1FpWcvbL4Ws3JY/B17Y87PXX3vq/lnUlj4hLvZcc//
	Y/7TQCGnt359p66yYLrRCEDCfTh6BieDuGo7vf7ixEQIJ1wSqRBlrJWJSezTWLzQpuj2
	uWk1PklOdaZCJT8JKxmBESi/80AaWw7G3lHvChHMwM8c8hmJotVV8Z769zZkg/YFH777
	F5o9xhbqhB6Gd8L+X8q9ESCXs9QYmbCXXgRDDV0OIfJSmx/k02PF+yhQBtTy7O+AAtTA
	ZEvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=0HD9TiX1sAV5HzLhQIZiAZjnWpAWnFBgUKgKDKkEI04=;
	b=NdmhpxonEqAQ9NvKttd5qZN+Qvg8uRW0e89o49Toqnt+h2LXwYOKxsV9b1kKsUlhVV
	SY+sp7c95B+RfHicaptPc4gkXOs0sRORYwGlLcCJhE7SbjeRykW0812X9WqlKLLfYjHo
	95ri/od6taG/Z47KQghdJTxnqU/68vYMOycVgMAhNW1YHz11lilWV1NYzWViFGm4xIo2
	JdnOrWIF99xLdC820rbe1qhL+D5Ye0/NIm4mEYnejASIM43zoQbNRfJDq/bZbtAlvNh2
	c1cGOos4kpMl/Mriqmh9FjCK+mjgaRXlNXwQe5J7YBICEK9dI70QbqufG8qJEkyEg/Pk
	q9AA==
X-Gm-Message-State: APzg51BLrz4F/pRhomXZv+dGPvvSH4LvmqPRZrLvM5Qcp+I2ar6Da9bs
	ug+Qj1ctXPnUbwjg41kAHr4xIkriHaxvifDdC+ol5BBa
X-Google-Smtp-Source: ANB0VdYxPIkEKRLZm/Oz+wWATUbcziUruVIlb8dFPJui3J67XkLM++BwYTulhzChdLJK1GZ5t5f2MU6pelLGSOKJCfw=
X-Received: by 2002:ac8:22f2:: with SMTP id
	g47-v6mr33029759qta.105.1536104505760; 
	Tue, 04 Sep 2018 16:41:45 -0700 (PDT)
MIME-Version: 1.0
From: srinivasan <srinivasan.rns@gmail.com>
Date: Wed, 5 Sep 2018 05:11:34 +0530
Message-ID: <CAFsTbWc+eexVUAbQ8OW7B3Ou1XRAwVe_kT5YeLQVo+wXBrThGg@mail.gmail.com>
To: poky@yoctoproject.org
Subject: Adding new kernel to poky and compilation issues
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
X-List-Received-Date: Tue, 04 Sep 2018 23:41:49 -0000
X-Groupsio-MsgNum: 11382
Content-Type: multipart/mixed; boundary="00000000000067ca8c0575143349"

--00000000000067ca8c0575143349
Content-Type: multipart/alternative; boundary="00000000000067ca890575143347"

--00000000000067ca890575143347
Content-Type: text/plain; charset="UTF-8"

Dear Technical team,

As am newbie to poky/yocto build system, I am facing the issue with the
error log shown below, in adding the new kernel "
git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git" with the branch
"KBRANCH = "v4.14", I have built for "qemux86"

Could you please do the needful in resolving the below error and get my
kernel get successfully compiled, as am stuck with this from past few days

*1. Ubuntu version used 14.04*

*2. Poky Distro version*

DISTRO = "poky"
DISTRO_NAME = "Poky (Yocto Project Reference Distro)"
DISTRO_VERSION = "2.5+snapshot-${DATE}"

*3.Recipe file is attached.*

*4. Logs*
:~/yocto_session_ws_2/build$ bitbake virtual/kernel -v
WARNING: Host distribution "ubuntu-14.04" has not been validated with this
version of the build system; you may possibly experience unexpected
failures. It is recommended that you use a tested distribution.
Loading cache: 100%
|###################################################################################################################################################|
Time: 0:00:00
Loaded 1266 entries from dependency cache.
NOTE: selecting linux-srini to satisfy virtual/kernel due to
PREFERRED_PROVIDERS
NOTE: Resolving any missing task queue dependencies
NOTE: selecting binutils-cross-i586 to satisfy
virtual/i586-poky-linux-binutils due to PREFERRED_PROVIDERS
NOTE: selecting pseudo-native to satisfy virtual/fakeroot-native due to
PREFERRED_PROVIDERS
NOTE: selecting linux-srini to satisfy runtime linux-srini due to
PREFERRED_PROVIDER_virtual/kernel = linux-srini
NOTE: selecting linux-srini to satisfy runtime linux-srini-dev due to
PREFERRED_PROVIDER_virtual/kernel = linux-srini
NOTE: selecting openssl-native to satisfy openssl-native due to
PREFERRED_PROVIDERS
NOTE: selecting pkgconfig-native to satisfy pkgconfig-native due to
PREFERRED_PROVIDERS

Build Configuration:
BB_VERSION           = "1.39.1"
BUILD_SYS            = "x86_64-linux"
NATIVELSBSTRING      = "universal-4.8"
TARGET_SYS           = "i586-poky-linux"
MACHINE              = "qemux86"
DISTRO               = "poky"
DISTRO_VERSION       = "2.5+snapshot-20180904"
TUNE_FEATURES        = "m32 i586"
TARGET_FPU           = ""
meta
meta-poky
meta-yocto-bsp       = "master:4434777705cf49300a7d2c9ca8fa3080d551d795"

NOTE: Marking Active
Tasks############################################################
                                                                         |
ETA:  0:00:00
NOTE: Pruned 509 inactive tasks, 322
left##############################################
                                                        | ETA:  0:00:00
NOTE: Assign Weightings
NOTE: Compute totals (have 1
endpoint(s))##############################################
                                                                | ETA:
0:00:00
Initialising tasks: 100%
|###############################################################################################################################################|
Time: 0:00:00
Sstate summary: Wanted 6 Found 1 Missed 5 Current 38 (16% match, 88%
complete)
NOTE: Executing SetScene Tasks
+ cd
/home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/sstate-install-populate_lic/
+ sstate_unpack_package
+ tar -xvzf
/home/srinivasan/yocto_session_ws_2/build/sstate-cache/7f/sstate:linux-srini::4.14:r1::3:7ffa068910d303281a8c5c13f8661ae6_populate_lic.tgz

license-destdir/

license-destdir/linux-srini/
license-destdir/linux-srini/recipeinfo
license-destdir/linux-srini/generic_GPLv2
license-destdir/linux-srini/COPYING

+ [ -w
/home/srinivasan/yocto_session_ws_2/build/sstate-cache/7f/sstate:linux-srini::4.14:r1::3:7ffa068910d303281a8c5c13f8661ae6_populate_lic.tgz.siginfo
]

+ [ -h
/home/srinivasan/yocto_session_ws_2/build/sstate-cache/7f/sstate:linux-srini::4.14:r1::3:7ffa068910d303281a8c5c13f8661ae6_populate_lic.tgz.siginfo
]
+ [ ! -w
/home/srinivasan/yocto_session_ws_2/build/sstate-cache/7f/sstate:linux-srini::4.14:r1::3:7ffa068910d303281a8c5c13f8661ae6_populate_lic.tgz
]
+ touch --no-dereference
/home/srinivasan/yocto_session_ws_2/build/sstate-cache/7f/sstate:linux-srini::4.14:r1::3:7ffa068910d303281a8c5c13f8661ae6_populate_lic.tgz

+ [ ! -w
/home/srinivasan/yocto_session_ws_2/build/sstate-cache/7f/sstate:linux-srini::4.14:r1::3:7ffa068910d303281a8c5c13f8661ae6_populate_lic.tgz.sig
]

+ [ ! -w
/home/srinivasan/yocto_session_ws_2/build/sstate-cache/7f/sstate:linux-srini::4.14:r1::3:7ffa068910d303281a8c5c13f8661ae6_populate_lic.tgz.siginfo
]
+ [ ! -e
/home/srinivasan/yocto_session_ws_2/build/sstate-cache/7f/sstate:linux-srini::4.14:r1::3:7ffa068910d303281a8c5c13f8661ae6_populate_lic.tgz.siginfo
]
+ touch --no-dereference
/home/srinivasan/yocto_session_ws_2/build/sstate-cache/7f/sstate:linux-srini::4.14:r1::3:7ffa068910d303281a8c5c13f8661ae6_populate_lic.tgz.siginfo

+ ret=0
+ trap  0
+ exit 0

NOTE: Executing RunQueue Tasks
NOTE: linux-srini-4.14-r1 do_fetch: Direct dependencies are []
NOTE: linux-srini-4.14-r1 do_fetch: Installed into sysroot: []
NOTE: linux-srini-4.14-r1 do_fetch: Skipping as already exists in sysroot:
[]
NOTE: linux-srini-4.14-r1 do_prepare_recipe_sysroot: Direct dependencies
are
['virtual:native:/home/srinivasan/yocto_session_ws_2/poky/meta/recipes-devtools/automake/automake_1.16.1.bb:do_populate_sysroot',
'/home/srinivasan/yocto_session_ws_2/poky/meta/recipes-devtools/libtool/libtool-native_2.4.6.bb:do_populate_sysroot',
'virtual:native:/home/srinivasan/yocto_session_ws_2/poky/meta/recipes-devtools/gnu-config/gnu-config_git.bb:do_populate_sysroot',
'virtual:native:/home/srinivasan/yocto_session_ws_2/poky/meta/recipes-devtools/autoconf/autoconf_2.69.bb:
do_populate_sysroot']
NOTE: linux-srini-4.14-r1 do_prepare_recipe_sysroot: Installed into
sysroot: ['automake-native', 'libtool-native', 'gnu-config-native',
'autoconf-native', 'quilt-native', 'm4-native', 'texinfo-dummy-native']
NOTE: linux-srini-4.14-r1 do_prepare_recipe_sysroot: Skipping as already
exists in sysroot: []
NOTE: linux-srini-4.14-r1 do_patch: Direct dependencies are
['/home/srinivasan/yocto_session_ws_2/poky/meta/recipes-devtools/quilt/quilt-native_0.65.bb:
do_populate_sysroot']
NOTE: linux-srini-4.14-r1 do_patch: Installed into sysroot: []
NOTE: linux-srini-4.14-r1 do_patch: Skipping as already exists in sysroot:
['quilt-native']
+ autotools_preconfigure
+ [ -n
/home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/configure.sstate
-a -e
/home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/configure.sstate
]
+ ret=0
+ trap  0
+ exit 0

+ cd
/home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/build
+ do_configure
+ cd
/home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/git
+ git checkout bebc6082da0a9f5d47a1ea2edc099bf671058bd4

Note: checking out 'bebc6082da0a9f5d47a1ea2edc099bf671058bd4'.

You are in 'detached HEAD' state. You can look around, make experimental
changes and commit them, and you can discard any commits you make in this
state without impacting any branches by performing another checkout.

If you want to create a new branch to retain commits you create, you may
do so (now or later) by using -b with the checkout command again. Example:

  git checkout -b new_branch_name


HEAD is now at bebc608... Linux 4.14

+ sleep 5

+ [ -n x86_64_defconfig ]
+ [ -f
/home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/git/arch/x86/configs/x86_64_defconfig
]
+ [ -f
 /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/defconfig
]
+ cp -f
/home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/git/arch/x86/configs/x86_64_defconfig
/home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/defconfig

+ cp -f
/home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/git/arch/x86/configs/x86_64_defconfig
/home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/git/defconfig

+ cp -f
/home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/git/arch/x86/configs/x86_64_defconfig
/home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/git/.config

+
sccs=/home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/defconfig
+ ret=0
+ trap  0
+ exit 0

NOTE: linux-srini-4.14-r1 do_configure: Checking autotools environment for
common misconfiguration
NOTE: linux-srini-4.14-r1 do_configure: Checking configure output for
unrecognised options
+ autotools_postconfigure
+ [ -n
/home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/configure.sstate
]

+ dirname
/home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/configure.sstate

+ mkdir -p
/home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1

+ echo fb691e35d382f04effc1c80328f97ff7

+ ret=0
+ trap  0
+ exit 0

+ cd
/home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/build
+ do_compile
+ autotools_do_compile
+ oe_runmake
+ oe_runmake_call
+ bbnote make -j 4
+ [ -p
/home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/temp/fifo.4343
]

NOTE: linux-srini-4.14-r1 do_compile: make -j 4
+ printf %b\0 bbnote make -j 4
+ make -j 4

*make: *** No targets specified and no makefile found.  Stop.*

*ERROR: linux-srini-4.14-r1 do_compile: oe_runmake failed*
*+ die oe_runmake failed*
*+ bbfatal_log oe_runmake failed*
+ [ -p
/home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/temp/fifo.4343
]
+ printf %b\0 bbfatal_log oe_runmake failed
+ exit 1
+ bb_exit_handler
+ ret=1
+ echo WARNING: exit code 1 from a shell command.
WARNING: exit code 1 from a shell command.
+ exit 1

*ERROR: linux-srini-4.14-r1 do_compile: Function failed: do_compile (log
file is located at
/home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/temp/log.do_compile.4343)*
*ERROR: Logfile of failure stored in:
/home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/temp/log.do_compile.4343*
Log data follows:
| DEBUG: SITE files ['endian-little', 'bit-32', 'ix86-common',
'common-linux', 'common-glibc', 'i586-linux', 'common']
| DEBUG: Executing shell function do_compile
| + cd
/home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/build
| + do_compile
| + autotools_do_compile
| + oe_runmake
| + oe_runmake_call
| + bbnote make -j 4
| + [ -p
/home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/temp/fifo.4343
]
|
| + cd
/home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/build
| + do_compile
| + autotools_do_compile
| + oe_runmake
| + oe_runmake_call
| + bbnote make -j 4
| + [ -p
/home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/temp/fifo.4343
]
| NOTE: make -j 4
| + printf %b\0 bbnote make -j 4
| + make -j 4
|
| + printf %b\0 bbnote make -j 4
| + make -j 4
| make: *** No targets specified and no makefile found.  Stop.
|
| make: *** No targets specified and no makefile found.  Stop.
| ERROR: oe_runmake failed
| + die oe_runmake failed
| + bbfatal_log oe_runmake failed
| + [ -p
/home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/temp/fifo.4343
]
| + printf %b\0 bbfatal_log oe_runmake failed
| + exit 1
| + bb_exit_handler
| + ret=1
| + echo WARNING: exit code 1 from a shell command.
| WARNING: exit code 1 from a shell command.
| + exit 1
|
| + die oe_runmake failed
| + bbfatal_log oe_runmake failed
| + [ -p
/home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/temp/fifo.4343
]
| + printf %b\0 bbfatal_log oe_runmake failed
| + exit 1
| + bb_exit_handler
| + ret=1
| + echo WARNING: exit code 1 from a shell command.
| WARNING: exit code 1 from a shell command.
| + exit 1
*| ERROR: Function failed: do_compile (log file is located at
/home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/temp/log.do_compile.4343)*
*ERROR: Task
(/home/srinivasan/yocto_session_ws_2/poky/meta/recipes-kernel/linux/linux-srini_4.14.bb:do_compile)
failed with exit code '1'*
*NOTE: Tasks Summary: Attempted 312 tasks of which 306 didn't need to be
rerun and 1 failed.*

Summary: 1 task failed:

/home/srinivasan/yocto_session_ws_2/poky/meta/recipes-kernel/linux/linux-srini_4.14.bb:
do_compile
Summary: There was 1 WARNING message shown.
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.
srinivasan@srinivasan-UX305UA:~/yocto_session_ws_2/build$

--00000000000067ca890575143347
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default"><div class=
=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">Dear Technical =
team,</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms,=
 sans-serif"><br></font></div><div class=3D"gmail_default"><font face=3D"co=
mic sans ms, sans-serif">As am newbie to poky/yocto build system, I am faci=
ng the issue with the error log shown below, in adding the new kernel &quot=
;<a href=3D"http://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.g=
it">git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git</a>&quot; wi=
th the branch &quot;KBRANCH =3D &quot;v4.14&quot;, I have built for &quot;q=
emux86&quot;</font></div><div class=3D"gmail_default"><font face=3D"comic s=
ans ms, sans-serif"><br></font></div><div class=3D"gmail_default"><font fac=
e=3D"comic sans ms, sans-serif">Could you please do the needful in resolvin=
g the below error and get my kernel get successfully compiled, as am stuck =
with this from past few days</font></div><div class=3D"gmail_default"><font=
 face=3D"comic sans ms, sans-serif"><br></font></div><div class=3D"gmail_de=
fault"><font face=3D"comic sans ms, sans-serif"><b>1. Ubuntu version used 1=
4.04</b></font></div><div class=3D"gmail_default"><font face=3D"comic sans =
ms, sans-serif"><br></font></div><div class=3D"gmail_default"><font face=3D=
"comic sans ms, sans-serif"><b>2. Poky Distro version</b></font></div><div =
class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"><br></font=
></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif=
">DISTRO =3D &quot;poky&quot;</font></div><div class=3D"gmail_default"><fon=
t face=3D"comic sans ms, sans-serif">DISTRO_NAME =3D &quot;Poky (Yocto Proj=
ect Reference Distro)&quot;</font></div><div class=3D"gmail_default"><font =
face=3D"comic sans ms, sans-serif">DISTRO_VERSION =3D &quot;2.5+snapshot-${=
DATE}&quot;</font></div><div class=3D"gmail_default"><font face=3D"comic sa=
ns ms, sans-serif"><br></font></div><div class=3D"gmail_default"><font face=
=3D"comic sans ms, sans-serif"><b>3.Recipe file is attached.</b></font></di=
v><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"><br=
></font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, san=
s-serif"><b>4. Logs</b></font></div><div class=3D"gmail_default"><font face=
=3D"comic sans ms, sans-serif">:~/yocto_session_ws_2/build$ bitbake virtual=
/kernel -v=C2=A0</font></div><div class=3D"gmail_default"><font face=3D"com=
ic sans ms, sans-serif">WARNING: Host distribution &quot;ubuntu-14.04&quot;=
 has not been validated with this version of the build system; you may poss=
ibly experience unexpected failures. It is recommended that you use a teste=
d distribution.</font></div><div class=3D"gmail_default"><font face=3D"comi=
c sans ms, sans-serif">Loading cache: 100% |###############################=
###########################################################################=
#########################################| Time: 0:00:00</font></div><div c=
lass=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">Loaded 1266=
 entries from dependency cache.</font></div><div class=3D"gmail_default"><f=
ont face=3D"comic sans ms, sans-serif">NOTE: selecting linux-srini to satis=
fy virtual/kernel due to PREFERRED_PROVIDERS</font></div><div class=3D"gmai=
l_default"><font face=3D"comic sans ms, sans-serif">NOTE: Resolving any mis=
sing task queue dependencies</font></div><div class=3D"gmail_default"><font=
 face=3D"comic sans ms, sans-serif">NOTE: selecting binutils-cross-i586 to =
satisfy virtual/i586-poky-linux-binutils due to PREFERRED_PROVIDERS</font><=
/div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">=
NOTE: selecting pseudo-native to satisfy virtual/fakeroot-native due to PRE=
FERRED_PROVIDERS</font></div><div class=3D"gmail_default"><font face=3D"com=
ic sans ms, sans-serif">NOTE: selecting linux-srini to satisfy runtime linu=
x-srini due to PREFERRED_PROVIDER_virtual/kernel =3D linux-srini</font></di=
v><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">NOT=
E: selecting linux-srini to satisfy runtime linux-srini-dev due to PREFERRE=
D_PROVIDER_virtual/kernel =3D linux-srini</font></div><div class=3D"gmail_d=
efault"><font face=3D"comic sans ms, sans-serif">NOTE: selecting openssl-na=
tive to satisfy openssl-native due to PREFERRED_PROVIDERS</font></div><div =
class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">NOTE: sele=
cting pkgconfig-native to satisfy pkgconfig-native due to PREFERRED_PROVIDE=
RS</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sa=
ns-serif"><br></font></div><div class=3D"gmail_default"><font face=3D"comic=
 sans ms, sans-serif">Build Configuration:</font></div><div class=3D"gmail_=
default"><font face=3D"comic sans ms, sans-serif">BB_VERSION=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;1.39.1&quot;</font></div><div class=3D=
"gmail_default"><font face=3D"comic sans ms, sans-serif">BUILD_SYS=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;x86_64-linux&quot;</font></div=
><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">NATI=
VELSBSTRING=C2=A0 =C2=A0 =C2=A0 =3D &quot;universal-4.8&quot;</font></div><=
div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">TARGET=
_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;i586-poky-linux&quot=
;</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, san=
s-serif">MACHINE=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;=
qemux86&quot;</font></div><div class=3D"gmail_default"><font face=3D"comic =
sans ms, sans-serif">DISTRO=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0=3D &quot;poky&quot;</font></div><div class=3D"gmail_default"><font =
face=3D"comic sans ms, sans-serif">DISTRO_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=
=A0=3D &quot;2.5+snapshot-20180904&quot;</font></div><div class=3D"gmail_de=
fault"><font face=3D"comic sans ms, sans-serif">TUNE_FEATURES=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =3D &quot;m32 i586&quot;</font></div><div class=3D"gmail_defa=
ult"><font face=3D"comic sans ms, sans-serif">TARGET_FPU=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;&quot;</font></div><div class=3D"gmail_de=
fault"><font face=3D"comic sans ms, sans-serif">meta=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</font></div><div class=3D"gmail_d=
efault"><font face=3D"comic sans ms, sans-serif">meta-poky=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</font></div><div class=3D"gmail_default"><fo=
nt face=3D"comic sans ms, sans-serif">meta-yocto-bsp=C2=A0 =C2=A0 =C2=A0 =
=C2=A0=3D &quot;master:4434777705cf49300a7d2c9ca8fa3080d551d795&quot;</font=
></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif=
"><br></font></div><div class=3D"gmail_default"><font face=3D"comic sans ms=
, sans-serif">NOTE: Marking Active Tasks###################################=
#########################=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0| ETA:=C2=A0 0:00:00</font></div><div class=3D"gmai=
l_default"><font face=3D"comic sans ms, sans-serif">NOTE: Pruned 509 inacti=
ve tasks, 322 left##############################################=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | ETA:=C2=A0 0:00:0=
0</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, san=
s-serif">NOTE: Assign Weightings</font></div><div class=3D"gmail_default"><=
font face=3D"comic sans ms, sans-serif">NOTE: Compute totals (have 1 endpoi=
nt(s))##############################################=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | ETA:=C2=A0 0:00:00</font></=
div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">I=
nitialising tasks: 100% |##################################################=
###########################################################################=
##################| Time: 0:00:00</font></div><div class=3D"gmail_default">=
<font face=3D"comic sans ms, sans-serif">Sstate summary: Wanted 6 Found 1 M=
issed 5 Current 38 (16% match, 88% complete)</font></div><div class=3D"gmai=
l_default"><font face=3D"comic sans ms, sans-serif">NOTE: Executing SetScen=
e Tasks</font></div><div class=3D"gmail_default"><font face=3D"comic sans m=
s, sans-serif">+ cd /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586=
-poky-linux/linux-srini/4.14-r1/sstate-install-populate_lic/</font></div><d=
iv class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">+ sstat=
e_unpack_package</font></div><div class=3D"gmail_default"><font face=3D"com=
ic sans ms, sans-serif">+ tar -xvzf /home/srinivasan/yocto_session_ws_2/bui=
ld/sstate-cache/7f/sstate:linux-srini::4.14:r1::3:7ffa068910d303281a8c5c13f=
8661ae6_populate_lic.tgz</font></div><div class=3D"gmail_default"><font fac=
e=3D"comic sans ms, sans-serif"><br></font></div><div class=3D"gmail_defaul=
t"><font face=3D"comic sans ms, sans-serif">license-destdir/</font></div><d=
iv class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"><br></f=
ont></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-se=
rif">license-destdir/linux-srini/</font></div><div class=3D"gmail_default">=
<font face=3D"comic sans ms, sans-serif">license-destdir/linux-srini/recipe=
info</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, =
sans-serif">license-destdir/linux-srini/generic_GPLv2</font></div><div clas=
s=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">license-destdi=
r/linux-srini/COPYING</font></div><div class=3D"gmail_default"><font face=
=3D"comic sans ms, sans-serif"><br></font></div><div class=3D"gmail_default=
"><font face=3D"comic sans ms, sans-serif">+ [ -w /home/srinivasan/yocto_se=
ssion_ws_2/build/sstate-cache/7f/sstate:linux-srini::4.14:r1::3:7ffa068910d=
303281a8c5c13f8661ae6_populate_lic.tgz.siginfo ]</font></div><div class=3D"=
gmail_default"><font face=3D"comic sans ms, sans-serif"><br></font></div><d=
iv class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">+ [ -h =
/home/srinivasan/yocto_session_ws_2/build/sstate-cache/7f/sstate:linux-srin=
i::4.14:r1::3:7ffa068910d303281a8c5c13f8661ae6_populate_lic.tgz.siginfo ]</=
font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-s=
erif">+ [ ! -w /home/srinivasan/yocto_session_ws_2/build/sstate-cache/7f/ss=
tate:linux-srini::4.14:r1::3:7ffa068910d303281a8c5c13f8661ae6_populate_lic.=
tgz ]</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms,=
 sans-serif">+ touch --no-dereference /home/srinivasan/yocto_session_ws_2/b=
uild/sstate-cache/7f/sstate:linux-srini::4.14:r1::3:7ffa068910d303281a8c5c1=
3f8661ae6_populate_lic.tgz</font></div><div class=3D"gmail_default"><font f=
ace=3D"comic sans ms, sans-serif"><br></font></div><div class=3D"gmail_defa=
ult"><font face=3D"comic sans ms, sans-serif">+ [ ! -w /home/srinivasan/yoc=
to_session_ws_2/build/sstate-cache/7f/sstate:linux-srini::4.14:r1::3:7ffa06=
8910d303281a8c5c13f8661ae6_populate_lic.tgz.sig ]</font></div><div class=3D=
"gmail_default"><font face=3D"comic sans ms, sans-serif"><br></font></div><=
div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">+ [ ! =
-w /home/srinivasan/yocto_session_ws_2/build/sstate-cache/7f/sstate:linux-s=
rini::4.14:r1::3:7ffa068910d303281a8c5c13f8661ae6_populate_lic.tgz.siginfo =
]</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, san=
s-serif">+ [ ! -e /home/srinivasan/yocto_session_ws_2/build/sstate-cache/7f=
/sstate:linux-srini::4.14:r1::3:7ffa068910d303281a8c5c13f8661ae6_populate_l=
ic.tgz.siginfo ]</font></div><div class=3D"gmail_default"><font face=3D"com=
ic sans ms, sans-serif">+ touch --no-dereference /home/srinivasan/yocto_ses=
sion_ws_2/build/sstate-cache/7f/sstate:linux-srini::4.14:r1::3:7ffa068910d3=
03281a8c5c13f8661ae6_populate_lic.tgz.siginfo</font></div><div class=3D"gma=
il_default"><font face=3D"comic sans ms, sans-serif"><br></font></div><div =
class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">+ ret=3D0<=
/font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-=
serif">+ trap=C2=A0 0</font></div><div class=3D"gmail_default"><font face=
=3D"comic sans ms, sans-serif">+ exit 0</font></div><div class=3D"gmail_def=
ault"><font face=3D"comic sans ms, sans-serif"><br></font></div><div class=
=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">NOTE: Executing=
 RunQueue Tasks</font></div><div class=3D"gmail_default"><font face=3D"comi=
c sans ms, sans-serif">NOTE: linux-srini-4.14-r1 do_fetch: Direct dependenc=
ies are []</font></div><div class=3D"gmail_default"><font face=3D"comic san=
s ms, sans-serif">NOTE: linux-srini-4.14-r1 do_fetch: Installed into sysroo=
t: []</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms,=
 sans-serif">NOTE: linux-srini-4.14-r1 do_fetch: Skipping as already exists=
 in sysroot: []</font></div><div class=3D"gmail_default"><font face=3D"comi=
c sans ms, sans-serif">NOTE: linux-srini-4.14-r1 do_prepare_recipe_sysroot:=
 Direct dependencies are [&#39;virtual:native:/home/srinivasan/yocto_sessio=
n_ws_2/poky/meta/recipes-devtools/automake/automake_1.16.1.bb:do_populate_s=
ysroot&#39;, &#39;/home/srinivasan/yocto_session_ws_2/poky/meta/recipes-dev=
tools/libtool/libtool-native_2.4.6.bb:do_populate_sysroot&#39;, &#39;virtua=
l:native:/home/srinivasan/yocto_session_ws_2/poky/meta/recipes-devtools/gnu=
-config/gnu-config_git.bb:do_populate_sysroot&#39;, &#39;virtual:native:/ho=
me/srinivasan/yocto_session_ws_2/poky/meta/recipes-devtools/autoconf/autoco=
nf_2.69.bb:do_populate_sysroot&#39;]</font></div><div class=3D"gmail_defaul=
t"><font face=3D"comic sans ms, sans-serif">NOTE: linux-srini-4.14-r1 do_pr=
epare_recipe_sysroot: Installed into sysroot: [&#39;automake-native&#39;, &=
#39;libtool-native&#39;, &#39;gnu-config-native&#39;, &#39;autoconf-native&=
#39;, &#39;quilt-native&#39;, &#39;m4-native&#39;, &#39;texinfo-dummy-nativ=
e&#39;]</font></div><div class=3D"gmail_default"><font face=3D"comic sans m=
s, sans-serif">NOTE: linux-srini-4.14-r1 do_prepare_recipe_sysroot: Skippin=
g as already exists in sysroot: []</font></div><div class=3D"gmail_default"=
><font face=3D"comic sans ms, sans-serif">NOTE: linux-srini-4.14-r1 do_patc=
h: Direct dependencies are [&#39;/home/srinivasan/yocto_session_ws_2/poky/m=
eta/recipes-devtools/quilt/quilt-native_0.65.bb:do_populate_sysroot&#39;]</=
font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-s=
erif">NOTE: linux-srini-4.14-r1 do_patch: Installed into sysroot: []</font>=
</div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"=
>NOTE: linux-srini-4.14-r1 do_patch: Skipping as already exists in sysroot:=
 [&#39;quilt-native&#39;]</font></div><div class=3D"gmail_default"><font fa=
ce=3D"comic sans ms, sans-serif">+ autotools_preconfigure</font></div><div =
class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">+ [ -n /ho=
me/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini=
/4.14-r1/configure.sstate -a -e /home/srinivasan/yocto_session_ws_2/build/t=
mp/work/i586-poky-linux/linux-srini/4.14-r1/configure.sstate ]</font></div>=
<div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">+ ret=
=3D0</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, =
sans-serif">+ trap=C2=A0 0</font></div><div class=3D"gmail_default"><font f=
ace=3D"comic sans ms, sans-serif">+ exit 0</font></div><div class=3D"gmail_=
default"><font face=3D"comic sans ms, sans-serif"><br></font></div><div cla=
ss=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">+ cd /home/sr=
inivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14=
-r1/build</font></div><div class=3D"gmail_default"><font face=3D"comic sans=
 ms, sans-serif">+ do_configure</font></div><div class=3D"gmail_default"><f=
ont face=3D"comic sans ms, sans-serif">+ cd /home/srinivasan/yocto_session_=
ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/git</font></div><di=
v class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">+ git ch=
eckout bebc6082da0a9f5d47a1ea2edc099bf671058bd4</font></div><div class=3D"g=
mail_default"><font face=3D"comic sans ms, sans-serif"><br></font></div><di=
v class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">Note: ch=
ecking out &#39;bebc6082da0a9f5d47a1ea2edc099bf671058bd4&#39;.</font></div>=
<div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"><br><=
/font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-=
serif">You are in &#39;detached HEAD&#39; state. You can look around, make =
experimental</font></div><div class=3D"gmail_default"><font face=3D"comic s=
ans ms, sans-serif">changes and commit them, and you can discard any commit=
s you make in this</font></div><div class=3D"gmail_default"><font face=3D"c=
omic sans ms, sans-serif">state without impacting any branches by performin=
g another checkout.</font></div><div class=3D"gmail_default"><font face=3D"=
comic sans ms, sans-serif"><br></font></div><div class=3D"gmail_default"><f=
ont face=3D"comic sans ms, sans-serif">If you want to create a new branch t=
o retain commits you create, you may</font></div><div class=3D"gmail_defaul=
t"><font face=3D"comic sans ms, sans-serif">do so (now or later) by using -=
b with the checkout command again. Example:</font></div><div class=3D"gmail=
_default"><font face=3D"comic sans ms, sans-serif"><br></font></div><div cl=
ass=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">=C2=A0 git c=
heckout -b new_branch_name</font></div><div class=3D"gmail_default"><font f=
ace=3D"comic sans ms, sans-serif"><br></font></div><div class=3D"gmail_defa=
ult"><font face=3D"comic sans ms, sans-serif"><br></font></div><div class=
=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">HEAD is now at =
bebc608... Linux 4.14</font></div><div class=3D"gmail_default"><font face=
=3D"comic sans ms, sans-serif"><br></font></div><div class=3D"gmail_default=
"><font face=3D"comic sans ms, sans-serif">+ sleep 5</font></div><div class=
=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"><br></font></di=
v><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">+ [=
 -n x86_64_defconfig ]</font></div><div class=3D"gmail_default"><font face=
=3D"comic sans ms, sans-serif">+ [ -f /home/srinivasan/yocto_session_ws_2/b=
uild/tmp/work/i586-poky-linux/linux-srini/4.14-r1/git/arch/x86/configs/x86_=
64_defconfig ]</font></div><div class=3D"gmail_default"><font face=3D"comic=
 sans ms, sans-serif">+ [ -f</font></div><div class=3D"gmail_default"><font=
 face=3D"comic sans ms, sans-serif">=C2=A0/home/srinivasan/yocto_session_ws=
_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/defconfig ]</font></d=
iv><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">+ =
cp -f /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/li=
nux-srini/4.14-r1/git/arch/x86/configs/x86_64_defconfig /home/srinivasan/yo=
cto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/defconf=
ig</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sa=
ns-serif"><br></font></div><div class=3D"gmail_default"><font face=3D"comic=
 sans ms, sans-serif">+ cp -f /home/srinivasan/yocto_session_ws_2/build/tmp=
/work/i586-poky-linux/linux-srini/4.14-r1/git/arch/x86/configs/x86_64_defco=
nfig /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/lin=
ux-srini/4.14-r1/git/defconfig</font></div><div class=3D"gmail_default"><fo=
nt face=3D"comic sans ms, sans-serif"><br></font></div><div class=3D"gmail_=
default"><font face=3D"comic sans ms, sans-serif">+ cp -f /home/srinivasan/=
yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/git/a=
rch/x86/configs/x86_64_defconfig /home/srinivasan/yocto_session_ws_2/build/=
tmp/work/i586-poky-linux/linux-srini/4.14-r1/git/.config</font></div><div c=
lass=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"><br></font>=
</div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"=
>+ sccs=3D/home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linu=
x/linux-srini/4.14-r1/defconfig</font></div><div class=3D"gmail_default"><f=
ont face=3D"comic sans ms, sans-serif">+ ret=3D0</font></div><div class=3D"=
gmail_default"><font face=3D"comic sans ms, sans-serif">+ trap=C2=A0 0</fon=
t></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-seri=
f">+ exit 0</font></div><div class=3D"gmail_default"><font face=3D"comic sa=
ns ms, sans-serif"><br></font></div><div class=3D"gmail_default"><font face=
=3D"comic sans ms, sans-serif">NOTE: linux-srini-4.14-r1 do_configure: Chec=
king autotools environment for common misconfiguration</font></div><div cla=
ss=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">NOTE: linux-s=
rini-4.14-r1 do_configure: Checking configure output for unrecognised optio=
ns</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sa=
ns-serif">+ autotools_postconfigure</font></div><div class=3D"gmail_default=
"><font face=3D"comic sans ms, sans-serif">+ [ -n /home/srinivasan/yocto_se=
ssion_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/configure.sst=
ate ]</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms,=
 sans-serif"><br></font></div><div class=3D"gmail_default"><font face=3D"co=
mic sans ms, sans-serif">+ dirname /home/srinivasan/yocto_session_ws_2/buil=
d/tmp/work/i586-poky-linux/linux-srini/4.14-r1/configure.sstate</font></div=
><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"><br>=
</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans=
-serif">+ mkdir -p /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-=
poky-linux/linux-srini/4.14-r1</font></div><div class=3D"gmail_default"><fo=
nt face=3D"comic sans ms, sans-serif"><br></font></div><div class=3D"gmail_=
default"><font face=3D"comic sans ms, sans-serif">+ echo fb691e35d382f04eff=
c1c80328f97ff7</font></div><div class=3D"gmail_default"><font face=3D"comic=
 sans ms, sans-serif"><br></font></div><div class=3D"gmail_default"><font f=
ace=3D"comic sans ms, sans-serif">+ ret=3D0</font></div><div class=3D"gmail=
_default"><font face=3D"comic sans ms, sans-serif">+ trap=C2=A0 0</font></d=
iv><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">+ =
exit 0</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms=
, sans-serif"><br></font></div><div class=3D"gmail_default"><font face=3D"c=
omic sans ms, sans-serif">+ cd /home/srinivasan/yocto_session_ws_2/build/tm=
p/work/i586-poky-linux/linux-srini/4.14-r1/build</font></div><div class=3D"=
gmail_default"><font face=3D"comic sans ms, sans-serif">+ do_compile</font>=
</div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"=
>+ autotools_do_compile</font></div><div class=3D"gmail_default"><font face=
=3D"comic sans ms, sans-serif">+ oe_runmake</font></div><div class=3D"gmail=
_default"><font face=3D"comic sans ms, sans-serif">+ oe_runmake_call</font>=
</div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"=
>+ bbnote make -j 4</font></div><div class=3D"gmail_default"><font face=3D"=
comic sans ms, sans-serif">+ [ -p /home/srinivasan/yocto_session_ws_2/build=
/tmp/work/i586-poky-linux/linux-srini/4.14-r1/temp/fifo.4343 ]</font></div>=
<div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"><br><=
/font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-=
serif">NOTE: linux-srini-4.14-r1 do_compile: make -j 4</font></div><div cla=
ss=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">+ printf %b\0=
 bbnote make -j 4</font></div><div class=3D"gmail_default"><font face=3D"co=
mic sans ms, sans-serif">+ make -j 4</font></div><div class=3D"gmail_defaul=
t"><font face=3D"comic sans ms, sans-serif"><br></font></div><div class=3D"=
gmail_default"><font face=3D"comic sans ms, sans-serif"><b>make: *** No tar=
gets specified and no makefile found.=C2=A0 Stop.</b></font></div><div clas=
s=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"><b><br></b></f=
ont></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-se=
rif"><b>ERROR: linux-srini-4.14-r1 do_compile: oe_runmake failed</b></font>=
</div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"=
><b>+ die oe_runmake failed</b></font></div><div class=3D"gmail_default"><f=
ont face=3D"comic sans ms, sans-serif"><b>+ bbfatal_log oe_runmake failed</=
b></font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sa=
ns-serif">+ [ -p /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-po=
ky-linux/linux-srini/4.14-r1/temp/fifo.4343 ]</font></div><div class=3D"gma=
il_default"><font face=3D"comic sans ms, sans-serif">+ printf %b\0 bbfatal_=
log oe_runmake failed</font></div><div class=3D"gmail_default"><font face=
=3D"comic sans ms, sans-serif">+ exit 1</font></div><div class=3D"gmail_def=
ault"><font face=3D"comic sans ms, sans-serif">+ bb_exit_handler</font></di=
v><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">+ r=
et=3D1</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms=
, sans-serif">+ echo WARNING: exit code 1 from a shell command.</font></div=
><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">WARN=
ING: exit code 1 from a shell command.</font></div><div class=3D"gmail_defa=
ult"><font face=3D"comic sans ms, sans-serif">+ exit 1</font></div><div cla=
ss=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"><b><br></b></=
font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-s=
erif"><b>ERROR: linux-srini-4.14-r1 do_compile: Function failed: do_compile=
 (log file is located at /home/srinivasan/yocto_session_ws_2/build/tmp/work=
/i586-poky-linux/linux-srini/4.14-r1/temp/log.do_compile.4343)</b></font></=
div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"><=
b>ERROR: Logfile of failure stored in: /home/srinivasan/yocto_session_ws_2/=
build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/temp/log.do_compile.4343=
</b></font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, =
sans-serif">Log data follows:</font></div><div class=3D"gmail_default"><fon=
t face=3D"comic sans ms, sans-serif">| DEBUG: SITE files [&#39;endian-littl=
e&#39;, &#39;bit-32&#39;, &#39;ix86-common&#39;, &#39;common-linux&#39;, &#=
39;common-glibc&#39;, &#39;i586-linux&#39;, &#39;common&#39;]</font></div><=
div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">| DEBU=
G: Executing shell function do_compile</font></div><div class=3D"gmail_defa=
ult"><font face=3D"comic sans ms, sans-serif">| + cd /home/srinivasan/yocto=
_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/build</fon=
t></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-seri=
f">| + do_compile</font></div><div class=3D"gmail_default"><font face=3D"co=
mic sans ms, sans-serif">| + autotools_do_compile</font></div><div class=3D=
"gmail_default"><font face=3D"comic sans ms, sans-serif">| + oe_runmake</fo=
nt></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-ser=
if">| + oe_runmake_call</font></div><div class=3D"gmail_default"><font face=
=3D"comic sans ms, sans-serif">| + bbnote make -j 4</font></div><div class=
=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">| + [ -p /home/=
srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.=
14-r1/temp/fifo.4343 ]</font></div><div class=3D"gmail_default"><font face=
=3D"comic sans ms, sans-serif">|=C2=A0</font></div><div class=3D"gmail_defa=
ult"><font face=3D"comic sans ms, sans-serif">| + cd /home/srinivasan/yocto=
_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/build</fon=
t></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-seri=
f">| + do_compile</font></div><div class=3D"gmail_default"><font face=3D"co=
mic sans ms, sans-serif">| + autotools_do_compile</font></div><div class=3D=
"gmail_default"><font face=3D"comic sans ms, sans-serif">| + oe_runmake</fo=
nt></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-ser=
if">| + oe_runmake_call</font></div><div class=3D"gmail_default"><font face=
=3D"comic sans ms, sans-serif">| + bbnote make -j 4</font></div><div class=
=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">| + [ -p /home/=
srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.=
14-r1/temp/fifo.4343 ]</font></div><div class=3D"gmail_default"><font face=
=3D"comic sans ms, sans-serif">| NOTE: make -j 4</font></div><div class=3D"=
gmail_default"><font face=3D"comic sans ms, sans-serif">| + printf %b\0 bbn=
ote make -j 4</font></div><div class=3D"gmail_default"><font face=3D"comic =
sans ms, sans-serif">| + make -j 4</font></div><div class=3D"gmail_default"=
><font face=3D"comic sans ms, sans-serif">|=C2=A0</font></div><div class=3D=
"gmail_default"><font face=3D"comic sans ms, sans-serif">| + printf %b\0 bb=
note make -j 4</font></div><div class=3D"gmail_default"><font face=3D"comic=
 sans ms, sans-serif">| + make -j 4</font></div><div class=3D"gmail_default=
"><font face=3D"comic sans ms, sans-serif">| make: *** No targets specified=
 and no makefile found.=C2=A0 Stop.</font></div><div class=3D"gmail_default=
"><font face=3D"comic sans ms, sans-serif">|=C2=A0</font></div><div class=
=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">| make: *** No =
targets specified and no makefile found.=C2=A0 Stop.</font></div><div class=
=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">| ERROR: oe_run=
make failed</font></div><div class=3D"gmail_default"><font face=3D"comic sa=
ns ms, sans-serif">| + die oe_runmake failed</font></div><div class=3D"gmai=
l_default"><font face=3D"comic sans ms, sans-serif">| + bbfatal_log oe_runm=
ake failed</font></div><div class=3D"gmail_default"><font face=3D"comic san=
s ms, sans-serif">| + [ -p /home/srinivasan/yocto_session_ws_2/build/tmp/wo=
rk/i586-poky-linux/linux-srini/4.14-r1/temp/fifo.4343 ]</font></div><div cl=
ass=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">| + printf %=
b\0 bbfatal_log oe_runmake failed</font></div><div class=3D"gmail_default">=
<font face=3D"comic sans ms, sans-serif">| + exit 1</font></div><div class=
=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">| + bb_exit_han=
dler</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, =
sans-serif">| + ret=3D1</font></div><div class=3D"gmail_default"><font face=
=3D"comic sans ms, sans-serif">| + echo WARNING: exit code 1 from a shell c=
ommand.</font></div><div class=3D"gmail_default"><font face=3D"comic sans m=
s, sans-serif">| WARNING: exit code 1 from a shell command.</font></div><di=
v class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">| + exit=
 1</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sa=
ns-serif">|=C2=A0</font></div><div class=3D"gmail_default"><font face=3D"co=
mic sans ms, sans-serif">| + die oe_runmake failed</font></div><div class=
=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">| + bbfatal_log=
 oe_runmake failed</font></div><div class=3D"gmail_default"><font face=3D"c=
omic sans ms, sans-serif">| + [ -p /home/srinivasan/yocto_session_ws_2/buil=
d/tmp/work/i586-poky-linux/linux-srini/4.14-r1/temp/fifo.4343 ]</font></div=
><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">| + =
printf %b\0 bbfatal_log oe_runmake failed</font></div><div class=3D"gmail_d=
efault"><font face=3D"comic sans ms, sans-serif">| + exit 1</font></div><di=
v class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">| + bb_e=
xit_handler</font></div><div class=3D"gmail_default"><font face=3D"comic sa=
ns ms, sans-serif">| + ret=3D1</font></div><div class=3D"gmail_default"><fo=
nt face=3D"comic sans ms, sans-serif">| + echo WARNING: exit code 1 from a =
shell command.</font></div><div class=3D"gmail_default"><font face=3D"comic=
 sans ms, sans-serif">| WARNING: exit code 1 from a shell command.</font></=
div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=
 + exit 1</font></div><div class=3D"gmail_default"><font face=3D"comic sans=
 ms, sans-serif"><b>| ERROR: Function failed: do_compile (log file is locat=
ed at /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/li=
nux-srini/4.14-r1/temp/log.do_compile.4343)</b></font></div><div class=3D"g=
mail_default"><font face=3D"comic sans ms, sans-serif"><b>ERROR: Task (/hom=
e/srinivasan/yocto_session_ws_2/poky/meta/recipes-kernel/linux/linux-srini_=
4.14.bb:do_compile) failed with exit code &#39;1&#39;</b></font></div><div =
class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"><b>NOTE: T=
asks Summary: Attempted 312 tasks of which 306 didn&#39;t need to be rerun =
and 1 failed.</b></font></div><div class=3D"gmail_default"><font face=3D"co=
mic sans ms, sans-serif"><br></font></div><div class=3D"gmail_default"><fon=
t face=3D"comic sans ms, sans-serif">Summary: 1 task failed:</font></div><d=
iv class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">=C2=A0 =
/home/srinivasan/yocto_session_ws_2/poky/meta/recipes-kernel/linux/linux-sr=
ini_4.14.bb:do_compile</font></div><div class=3D"gmail_default"><font face=
=3D"comic sans ms, sans-serif">Summary: There was 1 WARNING message shown.<=
/font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-=
serif">Summary: There were 2 ERROR messages shown, returning a non-zero exi=
t code.</font></div><div class=3D"gmail_default"><font face=3D"comic sans m=
s, sans-serif">srinivasan@srinivasan-UX305UA:~/yocto_session_ws_2/build$=C2=
=A0</font></div></div></div></div>

--00000000000067ca890575143347--

--00000000000067ca8c0575143349
Content-Type: application/octet-stream; name="linux-srini_4.14.bb"
Content-Disposition: attachment; filename="linux-srini_4.14.bb"
Content-Transfer-Encoding: base64
Content-ID: <f_jlocu8tj0>
X-Attachment-Id: f_jlocu8tj0

U1VNTUFSWSA9ICJEdW1teSBMaW51eCBrZXJuZWwiCkRFU0NSSVBUSU9OID0gIkR1bW15IExpbnV4
IGtlcm5lbCwgdG8gYmUgc2VsZWN0ZWQgYXMgdGhlIHByZWZlcnJlZCBcCnByb3ZpZGVyIGZvciB2
aXJ0dWFsL2tlcm5lbCB0byBzYXRpc2Z5IGRlcGVuZGVuY2llcyBmb3Igc2l0dWF0aW9ucyBcCndo
ZXJlIHlvdSB3aXNoIHRvIGJ1aWxkIHRoZSBrZXJuZWwgZXh0ZXJuYWxseSBmcm9tIHRoZSBidWls
ZCBzeXN0ZW0uIgpTRUNUSU9OID0gImtlcm5lbCIKCkxJQ0VOU0UgPSAiR1BMdjIiCkxJQ19GSUxF
U19DSEtTVU0gPSAiZmlsZTovL0NPUFlJTkc7bWQ1PWQ3ODEwZmFiNzQ4N2ZiMGFhZDMyN2I3NmYx
YmU3Y2Q3IgoKCgpQQUNLQUdFU19EWU5BTUlDICs9ICJea2VybmVsLW1vZHVsZS0uKiIKUEFDS0FH
RVNfRFlOQU1JQyArPSAiXmtlcm5lbC1pbWFnZS0uKiIKUEFDS0FHRVNfRFlOQU1JQyArPSAiXmtl
cm5lbC1maXJtd2FyZS0uKiIKClBBQ0tBR0VTICs9ICJrZXJuZWwtbW9kdWxlcyBrZXJuZWwtdm1s
aW51eCIKRklMRVNfa2VybmVsLW1vZHVsZXMgPSAiIgpBTExPV19FTVBUWV9rZXJuZWwtbW9kdWxl
cyA9ICIxIgpERVNDUklQVElPTl9rZXJuZWwtbW9kdWxlcyA9ICJLZXJuZWwgbW9kdWxlcyBtZXRh
IHBhY2thZ2UiCkZJTEVTX2tlcm5lbC12bWxpbnV4ID0gIiIKQUxMT1dfRU1QVFlfa2VybmVsLXZt
bGludXggPSAiMSIKREVTQ1JJUFRJT05fa2VybmVsLXZtbGludXggPSAiS2VybmVsIHZtbGludXgg
bWV0YSBwYWNrYWdlIgoKCklOSElCSVRfREVGQVVMVF9ERVBTID0gIjEiCgpQUk9WSURFUyArPSAi
dmlydHVhbC9rZXJuZWwiCkNPTVBBVElCTEVfTUFDSElORSA9ICJxZW11eDg2IgpTUkNSRVY9ImJl
YmM2MDgyZGEwYTlmNWQ0N2ExZWEyZWRjMDk5YmY2NzEwNThiZDQiCgoKUFIgPSAicjEiCgpLQlJB
TkNIID0gInY0LjE0IgpTUkNfVVJJID0gImdpdDovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGlu
dXgva2VybmVsL2dpdC90b3J2YWxkcy9saW51eC5naXQ7cHJvdG9jb2w9Z2l0O25vY2hlY2tvdXQ9
MTtuYW1lPW1hY2hpbmUiCiNTUkNfVVJJICs9ICJmaWxlOi8vQ09QWUlORy5HUEwiCgpTID0gIiR7
V09SS0RJUn0vZ2l0IgoKS0JVSUxEX0RFRkNPTkZJRyA9ICJ4ODZfNjRfZGVmY29uZmlnIgoKQVJD
SCA9ICJ4ODYiCgppbmhlcml0IGJhc2UKaW5oZXJpdCBhdXRvdG9vbHMKCmRvX2tlcm5lbF9jaGVj
a291dCgpIHsKCglzb3VyY2VfZGlyPWBlY2hvICR7U30gYAoJc291cmNlX3dvcmtkaXI9IiR7V09S
S0RJUn0vZ2l0IgoJY2QgJHtTfQoKCgkjIENyZWF0ZSBhIHdvcmtpbmcgdHJlZSBjb3B5IG9mIHRo
ZSBrZXJuZWwgYnkgY2hlY2tpbmcgb3V0IGEgYnJhbmNoCgoJIyBjaGVja291dCBhbmQgY2xvYmJl
ciBhbnkgdW5pbXBvcnRhbnQgZmlsZXMKCWdpdCBjaGVja291dCAtZiAke0tCUkFOQ0h9CglzbGVl
cCA1Cn0KZG9fa2VybmVsX2NoZWNrb3V0W2RpcnNdID0gIiR7U30iCgphZGR0YXNrIGtlcm5lbF9j
aGVja291dCBiZWZvcmUgZG9fcG9wdWxhdGVfbGljIGFmdGVyIGRvX3VucGFjawoKZG9fY29uZmln
dXJlKCkgewoJY2QgJHtTfQoJZ2l0IGNoZWNrb3V0ICAke1NSQ1JFVn0KCXNsZWVwIDUKCWlmIFsg
LW4gIiR7S0JVSUxEX0RFRkNPTkZJR30iIF07IHRoZW4KCQlpZiBbIC1mICIke1N9L2FyY2gvJHtB
UkNIfS9jb25maWdzLyR7S0JVSUxEX0RFRkNPTkZJR30iIF07IHRoZW4KCQkJaWYgWyAtZiAiJHtX
T1JLRElSfS9kZWZjb25maWciIF07IHRoZW4KCQkJCSMgSWYgdGhlIHR3byBkZWZjb25maWcncyBh
cmUgZGlmZmVyZW50LCB3YXJuIHRoYXQgd2UgZGlkbid0IG92ZXJ3cml0ZSB0aGUKCQkJCSMgb25l
IGFscmVhZHkgcGxhY2VkIGluIFdPUktESVIgYnkgdGhlIGZldGNoZXIuCgkJCQljbXAgIiR7V09S
S0RJUn0vZGVmY29uZmlnIiAiJHtTfS9hcmNoLyR7QVJDSH0vY29uZmlncy8ke0tCVUlMRF9ERUZD
T05GSUd9IgoJCQkJaWYgWyAkPyAtbmUgMCBdOyB0aGVuCgkJCQkJYmJ3YXJuICJkZWZjb25maWcg
ZGV0ZWN0ZWQgaW4gV09SS0RJUi4gJHtLQlVJTERfREVGQ09ORklHfSBza2lwcGVkIgoJCQkJZWxz
ZQoJCQkJCWNwIC1mICR7U30vYXJjaC8ke0FSQ0h9L2NvbmZpZ3MvJHtLQlVJTERfREVGQ09ORklH
fSAke1dPUktESVJ9L2RlZmNvbmZpZwoJCQkJZmkKCQkJZWxzZQoJCQkJY3AgLWYgJHtTfS9hcmNo
LyR7QVJDSH0vY29uZmlncy8ke0tCVUlMRF9ERUZDT05GSUd9ICR7V09SS0RJUn0vZGVmY29uZmln
CgkJCQljcCAtZiAke1N9L2FyY2gvJHtBUkNIfS9jb25maWdzLyR7S0JVSUxEX0RFRkNPTkZJR30g
JHtTfS9kZWZjb25maWcKCQkJCWNwIC1mICR7U30vYXJjaC8ke0FSQ0h9L2NvbmZpZ3MvJHtLQlVJ
TERfREVGQ09ORklHfSAke1N9Ly5jb25maWcKCQkJZmkKCQkJc2Njcz0iJHtXT1JLRElSfS9kZWZj
b25maWciCgkJZWxzZQoJCQliYmZhdGFsICJBIEtCVUlMRF9ERUZDT05GSUcgJyR7S0JVSUxEX0RF
RkNPTkZJR30nIHdhcyBzcGVjaWZpZWQsIGJ1dCBub3QgcHJlc2VudCBpbiB0aGUgc291cmNlIHRy
ZWUiCgkJZmkKCWZpCn0KCmRvX2NvbXBpbGVfICgpIHsKCWNkICR7U30KCW9lX3J1bm1ha2UgbXJw
cm9wZXIKCW9lX3J1bm1ha2UgZGVmY29uZmlnCglvZV9ydW5tYWtlIAp9CgoKCgpkb19zaGFyZWRf
d29ya2RpciAoKSB7ICAgCgk6Cn0KCmRvX2luc3RhbGwoKSB7Cgk6Cn0KCmRvX2J1bmRsZV9pbml0
cmFtZnMoKSB7Cgk6Cn0KCmRvX2RlcGxveSgpIHsKCToKfQoKYWRkdGFzayBjb25maWd1cmUgYWZ0
ZXIgZG9fcG9wdWxhdGVfbGljCgphZGR0YXNrIGJ1bmRsZV9pbml0cmFtZnMgYWZ0ZXIgZG9faW5z
dGFsbCBiZWZvcmUgZG9fZGVwbG95CmFkZHRhc2sgZGVwbG95IGFmdGVyIGRvX2luc3RhbGwKYWRk
dGFzayBzaGFyZWRfd29ya2RpciBhZnRlciBkb19jb21waWxlIGJlZm9yZSBkb19pbnN0YWxsCg==

--00000000000067ca8c0575143349
Content-Type: application/octet-stream; name="log.do_compile.4343"
Content-Disposition: attachment; filename="log.do_compile.4343"
Content-Transfer-Encoding: base64
Content-ID: <f_jlocu8ue1>
X-Attachment-Id: f_jlocu8ue1

REVCVUc6IFNJVEUgZmlsZXMgWydlbmRpYW4tbGl0dGxlJywgJ2JpdC0zMicsICdpeDg2LWNvbW1v
bicsICdjb21tb24tbGludXgnLCAnY29tbW9uLWdsaWJjJywgJ2k1ODYtbGludXgnLCAnY29tbW9u
J10KREVCVUc6IEV4ZWN1dGluZyBzaGVsbCBmdW5jdGlvbiBkb19jb21waWxlCisgY2QgL2hvbWUv
c3Jpbml2YXNhbi95b2N0b19zZXNzaW9uX3dzXzIvYnVpbGQvdG1wL3dvcmsvaTU4Ni1wb2t5LWxp
bnV4L2xpbnV4LXNyaW5pLzQuMTQtcjEvYnVpbGQKKyBkb19jb21waWxlCisgYXV0b3Rvb2xzX2Rv
X2NvbXBpbGUKKyBvZV9ydW5tYWtlCisgb2VfcnVubWFrZV9jYWxsCisgYmJub3RlIG1ha2UgLWog
NAorIFsgLXAgL2hvbWUvc3Jpbml2YXNhbi95b2N0b19zZXNzaW9uX3dzXzIvYnVpbGQvdG1wL3dv
cmsvaTU4Ni1wb2t5LWxpbnV4L2xpbnV4LXNyaW5pLzQuMTQtcjEvdGVtcC9maWZvLjQzNDMgXQoK
KyBjZCAvaG9tZS9zcmluaXZhc2FuL3lvY3RvX3Nlc3Npb25fd3NfMi9idWlsZC90bXAvd29yay9p
NTg2LXBva3ktbGludXgvbGludXgtc3JpbmkvNC4xNC1yMS9idWlsZAorIGRvX2NvbXBpbGUKKyBh
dXRvdG9vbHNfZG9fY29tcGlsZQorIG9lX3J1bm1ha2UKKyBvZV9ydW5tYWtlX2NhbGwKKyBiYm5v
dGUgbWFrZSAtaiA0CisgWyAtcCAvaG9tZS9zcmluaXZhc2FuL3lvY3RvX3Nlc3Npb25fd3NfMi9i
dWlsZC90bXAvd29yay9pNTg2LXBva3ktbGludXgvbGludXgtc3JpbmkvNC4xNC1yMS90ZW1wL2Zp
Zm8uNDM0MyBdCk5PVEU6IG1ha2UgLWogNAorIHByaW50ZiAlYlwwIGJibm90ZSBtYWtlIC1qIDQK
KyBtYWtlIC1qIDQKCisgcHJpbnRmICViXDAgYmJub3RlIG1ha2UgLWogNAorIG1ha2UgLWogNApt
YWtlOiAqKiogTm8gdGFyZ2V0cyBzcGVjaWZpZWQgYW5kIG5vIG1ha2VmaWxlIGZvdW5kLiAgU3Rv
cC4KCm1ha2U6ICoqKiBObyB0YXJnZXRzIHNwZWNpZmllZCBhbmQgbm8gbWFrZWZpbGUgZm91bmQu
ICBTdG9wLgpFUlJPUjogb2VfcnVubWFrZSBmYWlsZWQKKyBkaWUgb2VfcnVubWFrZSBmYWlsZWQK
KyBiYmZhdGFsX2xvZyBvZV9ydW5tYWtlIGZhaWxlZAorIFsgLXAgL2hvbWUvc3Jpbml2YXNhbi95
b2N0b19zZXNzaW9uX3dzXzIvYnVpbGQvdG1wL3dvcmsvaTU4Ni1wb2t5LWxpbnV4L2xpbnV4LXNy
aW5pLzQuMTQtcjEvdGVtcC9maWZvLjQzNDMgXQorIHByaW50ZiAlYlwwIGJiZmF0YWxfbG9nIG9l
X3J1bm1ha2UgZmFpbGVkCisgZXhpdCAxCisgYmJfZXhpdF9oYW5kbGVyCisgcmV0PTEKKyBlY2hv
IFdBUk5JTkc6IGV4aXQgY29kZSAxIGZyb20gYSBzaGVsbCBjb21tYW5kLgpXQVJOSU5HOiBleGl0
IGNvZGUgMSBmcm9tIGEgc2hlbGwgY29tbWFuZC4KKyBleGl0IDEKCisgZGllIG9lX3J1bm1ha2Ug
ZmFpbGVkCisgYmJmYXRhbF9sb2cgb2VfcnVubWFrZSBmYWlsZWQKKyBbIC1wIC9ob21lL3NyaW5p
dmFzYW4veW9jdG9fc2Vzc2lvbl93c18yL2J1aWxkL3RtcC93b3JrL2k1ODYtcG9reS1saW51eC9s
aW51eC1zcmluaS80LjE0LXIxL3RlbXAvZmlmby40MzQzIF0KKyBwcmludGYgJWJcMCBiYmZhdGFs
X2xvZyBvZV9ydW5tYWtlIGZhaWxlZAorIGV4aXQgMQorIGJiX2V4aXRfaGFuZGxlcgorIHJldD0x
CisgZWNobyBXQVJOSU5HOiBleGl0IGNvZGUgMSBmcm9tIGEgc2hlbGwgY29tbWFuZC4KV0FSTklO
RzogZXhpdCBjb2RlIDEgZnJvbSBhIHNoZWxsIGNvbW1hbmQuCisgZXhpdCAxCkVSUk9SOiBGdW5j
dGlvbiBmYWlsZWQ6IGRvX2NvbXBpbGUgKGxvZyBmaWxlIGlzIGxvY2F0ZWQgYXQgL2hvbWUvc3Jp
bml2YXNhbi95b2N0b19zZXNzaW9uX3dzXzIvYnVpbGQvdG1wL3dvcmsvaTU4Ni1wb2t5LWxpbnV4
L2xpbnV4LXNyaW5pLzQuMTQtcjEvdGVtcC9sb2cuZG9fY29tcGlsZS40MzQzKQo=

--00000000000067ca8c0575143349--
