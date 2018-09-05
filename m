Return-Path: <srinivasan.rns@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 350FAE00AB9; Tue,  4 Sep 2018 17:25:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_FONT_LOW_CONTRAST,
	HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.216.171 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (srinivasan.rns[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* 0.0 HTML_FONT_LOW_CONTRAST BODY: HTML font color similar or identical
	to *       background
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f171.google.com (mail-qt0-f171.google.com
	[209.85.216.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 353EEE00A38
	for <poky@yoctoproject.org>; Tue,  4 Sep 2018 17:24:59 -0700 (PDT)
Received: by mail-qt0-f171.google.com with SMTP id z8-v6so6178217qto.9
	for <poky@yoctoproject.org>; Tue, 04 Sep 2018 17:24:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=U8qT8dUBAM7XIKrcxFLBC5YEIHhMpuvdTaVgz46miBA=;
	b=X/rb1TcDM7Q4kueIlUzJrIuHWOdKSfvlPcxltRQ2gujvTrEV+UUliFOd0Avi0vLa5X
	MOSMb2udv1X7gdUKRS2R5bhLS1Gl/PgRiPiCNW8jnw3O0JoXn1jwrnnsToKkAjheqCyE
	7Tf55XfMrW1k0sw3lpG4r5sXCC3f6eHk5foPcJIpo35aDy9Xq3shrABz/78OrnXR75VW
	N1AouvDKfi3MYuXxBWAGFqVPfHYoqKUUOoSHpFPizQREW/FQ9tSR0BnYV+aCNLNtVid+
	6cPpDpk/1edlicaJxyeJQnNmSAR/ZfQmfm05PhvDSv+ELarBcG4/rgK5H2jWEso7IBYZ
	FAuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=U8qT8dUBAM7XIKrcxFLBC5YEIHhMpuvdTaVgz46miBA=;
	b=D205j5XwY8lipT0gygQIcqmX5ZF96MXUHy6uaooXssMC5wp8VOYq4QEzQdLmk2+evT
	XjLLUXarsZ1Yt7b+r3HjpRFYL/YzLQEj9JvBA2Nui5qNb7DSAFSTKPesqzBesllSWOzh
	1Pxtcheutm2lyHidSKJnpH0r7txugg/+MatFdM1HbgB8ny7sxBrVWZ5Rdt1NWSibMjNE
	DEJO/mmsvmoA9uLfC0Lu/yyFbtAJxR5JMe5H3IuzDfmJ3+HY+fDthGe2r/Jj3m9UzPXu
	j1x+az9o910pQcYRvSVRfPqzrn8Gfkr+YVXe+uDFFn7wR12ac5iatqm0BXCYkuA++1+3
	XDug==
X-Gm-Message-State: APzg51Dr0XV9ykUBbuMktVODpRpw3K1nq1F9UnlqLh4tvUkPTlu0IeHx
	qsH9N85/nLW4kUCqdbBomALN+8ir4JnNSMSl2FyUoA9y
X-Google-Smtp-Source: ANB0VdYonVv0k+gw6E4hKTu2ATxmGC+le9idZD4y+yAThFG+3LHXvbQ6aJMC5Zs7ytBmJO1TqV70+PI2rYXADoOP7Vs=
X-Received: by 2002:a0c:9251:: with SMTP id
	17-v6mr31685059qvz.239.1536107097873; 
	Tue, 04 Sep 2018 17:24:57 -0700 (PDT)
MIME-Version: 1.0
References: <CAFsTbWc+eexVUAbQ8OW7B3Ou1XRAwVe_kT5YeLQVo+wXBrThGg@mail.gmail.com>
In-Reply-To: <CAFsTbWc+eexVUAbQ8OW7B3Ou1XRAwVe_kT5YeLQVo+wXBrThGg@mail.gmail.com>
From: srinivasan <srinivasan.rns@gmail.com>
Date: Wed, 5 Sep 2018 05:54:45 +0530
Message-ID: <CAFsTbWfVpgPkgez+t+3B9+Bbww-ic215_sHdWjXij1TgK3Tp-g@mail.gmail.com>
To: poky@yoctoproject.org
Subject: Re: Adding new kernel to poky and compilation issues
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
X-List-Received-Date: Wed, 05 Sep 2018 00:25:12 -0000
Content-Type: multipart/alternative; boundary="000000000000e7e1b0057514cd60"

--000000000000e7e1b0057514cd60
Content-Type: text/plain; charset="UTF-8"

After changing from "*do_compile_ () {*" to "*do_compile() {*", in the
attached recipe file, Compilation started but got stuck  "*/bin/sh: 1: bc:
not found*

*make[1]: *** [include/generated/timeconst.h] Error 127*
*make: *** [prepare0] Error 2*
*make: *** Waiting for unfinished jobs...."*

*Even I tried installing "*sudo apt-get install bc"* but still the same
issue as above, Kindly do the needful in resolving the above issue as am
stuck with the same issue from past 4 days*

*References:*

*1. Ubuntu version used 14.04*

*2. Poky Distro version*

DISTRO = "poky"
DISTRO_NAME = "Poky (Yocto Project Reference Distro)"
DISTRO_VERSION = "2.5+snapshot-${DATE}"

*3.Logs:*

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
['/home/srinivasan/yocto_session_ws_2/poky/meta/recipes-devtools/libtool/libtool-native_2.4.6.bb:do_populate_sysroot',
'virtual:native:/home/srinivasan/yocto_session_ws_2/poky/meta/recipes-devtools/gnu-config/gnu-config_git.bb:do_populate_sysroot',
'virtual:native:/home/srinivasan/yocto_session_ws_2/poky/meta/recipes-devtools/autoconf/autoconf_2.69.bb:do_populate_sysroot',
'virtual:native:/home/srinivasan/yocto_session_ws_2/poky/meta/recipes-devtools/automake/automake_1.16.1.bb:
do_populate_sysroot']
NOTE: linux-srini-4.14-r1 do_prepare_recipe_sysroot: Installed into
sysroot: ['libtool-native', 'gnu-config-native', 'autoconf-native',
'automake-native', 'texinfo-dummy-native', 'quilt-native', 'm4-native']
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
+ cd
/home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/git

NOTE: linux-srini-4.14-r1 do_compile: make -j 4 mrproper
+ oe_runmake mrproper
+ oe_runmake_call mrproper
+ bbnote make -j 4 mrproper
+ [ -p
/home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/temp/fifo.7174
]
+ printf %b\0 bbnote make -j 4 mrproper
+ make -j 4 mrproper

  CLEAN   .config

+ oe_runmake defconfig
+ oe_runmake_call defconfig
+ bbnote make -j 4 defconfig

NOTE: linux-srini-4.14-r1 do_compile: make -j 4 defconfig
+ [ -p
/home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/temp/fifo.7174
]
+ printf %b\0 bbnote make -j 4 defconfig
+ make -j 4 defconfig

  HOSTCC  scripts/basic/fixdep

  HOSTCC  scripts/kconfig/conf.o

  SHIPPED scripts/kconfig/zconf.tab.c

  SHIPPED scripts/kconfig/zconf.lex.c

  HOSTCC  scripts/kconfig/zconf.tab.o

  HOSTLD  scripts/kconfig/conf

*** Default configuration is based on 'x86_64_defconfig'

#
# configuration written to .config
#

+ oe_runmake
+ oe_runmake_call
+ bbnote make -j 4
+ [ -p
NOTE: linux-srini-4.14-r1 do_compile: make -j 4
 /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/temp/fifo.7174
]
+ printf %b\0 bbnote make -j 4
+ make -j 4

scripts/kconfig/conf  --silentoldconfig Kconfig

  SYSTBL  arch/x86/entry/syscalls/../../include/generated/asm/syscalls_32.h

  SYSHDR
arch/x86/entry/syscalls/../../include/generated/asm/unistd_32_ia32.h

  SYSHDR
arch/x86/entry/syscalls/../../include/generated/asm/unistd_64_x32.h

  CHK     include/config/kernel.release

  SYSTBL  arch/x86/entry/syscalls/../../include/generated/asm/syscalls_64.h

  SYSHDR
arch/x86/entry/syscalls/../../include/generated/uapi/asm/unistd_32.h

  SYSHDR
arch/x86/entry/syscalls/../../include/generated/uapi/asm/unistd_64.h

  SYSHDR
arch/x86/entry/syscalls/../../include/generated/uapi/asm/unistd_x32.h

  CHK     include/generated/uapi/linux/version.h

  UPD     include/generated/uapi/linux/version.h

  UPD     include/config/kernel.release

  HOSTCC  arch/x86/tools/relocs_32.o

  HOSTCC  arch/x86/tools/relocs_64.o

  HOSTCC  arch/x86/tools/relocs_common.o

  WRAP    arch/x86/include/generated/asm/clkdev.h

  WRAP    arch/x86/include/generated/asm/dma-contiguous.h

  WRAP    arch/x86/include/generated/asm/early_ioremap.h

  WRAP    arch/x86/include/generated/asm/mcs_spinlock.h

  WRAP    arch/x86/include/generated/asm/mm-arch-hooks.h

  CHK     include/generated/utsrelease.h

  UPD     include/generated/utsrelease.h

  CC      scripts/mod/empty.o

  HOSTCC  scripts/mod/mk_elfconfig

  HOSTLD  arch/x86/tools/relocs

  CC      scripts/mod/devicetable-offsets.s

  MKELF   scripts/mod/elfconfig.h

  CHK     scripts/mod/devicetable-offsets.h

  UPD     scripts/mod/devicetable-offsets.h

  HOSTCC  scripts/mod/sumversion.o

  HOSTCC  scripts/selinux/genheaders/genheaders

  HOSTCC  scripts/selinux/mdp/mdp

  CC      kernel/bounds.s

  HOSTCC  scripts/kallsyms

  HOSTCC  scripts/mod/modpost.o

  CHK     include/generated/timeconst.h

*/bin/sh: 1: bc: not found*

*make[1]: *** [include/generated/timeconst.h] Error 127*
*make: *** [prepare0] Error 2*
*make: *** Waiting for unfinished jobs....*

  HOSTCC  scripts/pnmtologo

  HOSTCC  scripts/conmakehash

  HOSTCC  scripts/sortextable

  HOSTCC  scripts/mod/file2alias.o

  HOSTLD  scripts/mod/modpost

+ die oe_runmake failed
+ bbfatal_log oe_runmake failed
+ [ -p
/home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/temp/fifo.7174
]
+ printf %b\0 bbfatal_log oe_runmake failed
+ exit 1
+ bb_exit_handler
+ ret=1
+ echo WARNING: exit code 1 from a shell command.
WARNING: exit code 1 from a shell command.
+ exit 1

*ERROR: linux-srini-4.14-r1 do_compile: oe_runmake failed*
*ERROR: linux-srini-4.14-r1 do_compile: Function failed: do_compile (log
file is located at
/home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/temp/log.do_compile.7174)*
*ERROR: Logfile of failure stored in:
/home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/temp/log.do_compile.7174*
Log data follows:
| DEBUG: SITE files ['endian-little', 'bit-32', 'ix86-common',
'common-linux', 'common-glibc', 'i586-linux', 'common']
| DEBUG: Executing shell function do_compile
| + cd
/home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/build
| + do_compile
| + cd
/home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/git
|
| + cd
/home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/build
| + do_compile
| + cd
/home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/git
| NOTE: make -j 4 mrproper
| + oe_runmake mrproper
| + oe_runmake_call mrproper
| + bbnote make -j 4 mrproper
| + [ -p
/home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/temp/fifo.7174
]
| + printf %b\0 bbnote make -j 4 mrproper
| + make -j 4 mrproper
|
| + oe_runmake mrproper
| + oe_runmake_call mrproper
| + bbnote make -j 4 mrproper
| + [ -p
/home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/temp/fifo.7174
]
| + printf %b\0 bbnote make -j 4 mrproper
| + make -j 4 mrproper
|   CLEAN   .config
|
|   CLEAN   .config
| + oe_runmake defconfig
| + oe_runmake_call defconfig
| + bbnote make -j 4 defconfig
|
| + oe_runmake defconfig
| + oe_runmake_call defconfig
| + bbnote make -j 4 defconfig
| NOTE: make -j 4 defconfig
| + [ -p
/home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/temp/fifo.7174
]
| + printf %b\0 bbnote make -j 4 defconfig
| + make -j 4 defconfig
|
| + [ -p
/home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/temp/fifo.7174
]
| + printf %b\0 bbnote make -j 4 defconfig
| + make -j 4 defconfig
|   HOSTCC  scripts/basic/fixdep
|
|   HOSTCC  scripts/basic/fixdep
|   HOSTCC  scripts/kconfig/conf.o
|
|   HOSTCC  scripts/kconfig/conf.o
|   SHIPPED scripts/kconfig/zconf.tab.c
|
|   SHIPPED scripts/kconfig/zconf.tab.c
|   SHIPPED scripts/kconfig/zconf.lex.c
|
|   SHIPPED scripts/kconfig/zconf.lex.c
|   HOSTCC  scripts/kconfig/zconf.tab.o
|
|   HOSTCC  scripts/kconfig/zconf.tab.o
|   HOSTLD  scripts/kconfig/conf
|
|   HOSTLD  scripts/kconfig/conf
| *** Default configuration is based on 'x86_64_defconfig'
|
| *** Default configuration is based on 'x86_64_defconfig'
| #
| # configuration written to .config
| #
|
| #
| # configuration written to .config
| #
| + oe_runmake
| + oe_runmake_call
| + bbnote make -j 4
| + [ -p
| + oe_runmake
| + oe_runmake_call
| + bbnote make -j 4
| + [ -pNOTE: make -j 4
|
/home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/temp/fifo.7174
]
| + printf %b\0 bbnote make -j 4
| + make -j 4
|
|
/home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/temp/fifo.7174
]
| + printf %b\0 bbnote make -j 4
| + make -j 4
| scripts/kconfig/conf  --silentoldconfig Kconfig
|
| scripts/kconfig/conf  --silentoldconfig Kconfig
|   SYSTBL
arch/x86/entry/syscalls/../../include/generated/asm/syscalls_32.h
|
|   SYSTBL
arch/x86/entry/syscalls/../../include/generated/asm/syscalls_32.h
|   SYSHDR
arch/x86/entry/syscalls/../../include/generated/asm/unistd_32_ia32.h
|
|   SYSHDR
arch/x86/entry/syscalls/../../include/generated/asm/unistd_32_ia32.h
|   SYSHDR
arch/x86/entry/syscalls/../../include/generated/asm/unistd_64_x32.h
|
|   SYSHDR
arch/x86/entry/syscalls/../../include/generated/asm/unistd_64_x32.h
|   CHK     include/config/kernel.release
|
|   CHK     include/config/kernel.release
|   SYSTBL
arch/x86/entry/syscalls/../../include/generated/asm/syscalls_64.h
|
|   SYSTBL
arch/x86/entry/syscalls/../../include/generated/asm/syscalls_64.h
|   SYSHDR
arch/x86/entry/syscalls/../../include/generated/uapi/asm/unistd_32.h
|
|   SYSHDR
arch/x86/entry/syscalls/../../include/generated/uapi/asm/unistd_32.h
|   SYSHDR
arch/x86/entry/syscalls/../../include/generated/uapi/asm/unistd_64.h
|
|   SYSHDR
arch/x86/entry/syscalls/../../include/generated/uapi/asm/unistd_64.h
|   SYSHDR
arch/x86/entry/syscalls/../../include/generated/uapi/asm/unistd_x32.h
|
|   SYSHDR
arch/x86/entry/syscalls/../../include/generated/uapi/asm/unistd_x32.h
|   CHK     include/generated/uapi/linux/version.h
|
|   CHK     include/generated/uapi/linux/version.h
|   UPD     include/generated/uapi/linux/version.h
|
|   UPD     include/generated/uapi/linux/version.h
|   UPD     include/config/kernel.release
|
|   UPD     include/config/kernel.release
|   HOSTCC  arch/x86/tools/relocs_32.o
|
|   HOSTCC  arch/x86/tools/relocs_32.o
|   HOSTCC  arch/x86/tools/relocs_64.o
|
|   HOSTCC  arch/x86/tools/relocs_64.o
|   HOSTCC  arch/x86/tools/relocs_common.o
|
|   HOSTCC  arch/x86/tools/relocs_common.o
|   WRAP    arch/x86/include/generated/asm/clkdev.h
|
|   WRAP    arch/x86/include/generated/asm/clkdev.h
|   WRAP    arch/x86/include/generated/asm/dma-contiguous.h
|
|   WRAP    arch/x86/include/generated/asm/dma-contiguous.h
|   WRAP    arch/x86/include/generated/asm/early_ioremap.h
|
|   WRAP    arch/x86/include/generated/asm/early_ioremap.h
|   WRAP    arch/x86/include/generated/asm/mcs_spinlock.h
|
|   WRAP    arch/x86/include/generated/asm/mcs_spinlock.h
|   WRAP    arch/x86/include/generated/asm/mm-arch-hooks.h
|
|   WRAP    arch/x86/include/generated/asm/mm-arch-hooks.h
|   CHK     include/generated/utsrelease.h
|
|   CHK     include/generated/utsrelease.h
|   UPD     include/generated/utsrelease.h
|
|   UPD     include/generated/utsrelease.h
|   CC      scripts/mod/empty.o
|
|   CC      scripts/mod/empty.o
|   HOSTCC  scripts/mod/mk_elfconfig
|
|   HOSTCC  scripts/mod/mk_elfconfig
|   HOSTLD  arch/x86/tools/relocs
|
|   HOSTLD  arch/x86/tools/relocs
|   CC      scripts/mod/devicetable-offsets.s
|
|   CC      scripts/mod/devicetable-offsets.s
|   MKELF   scripts/mod/elfconfig.h
|
|   MKELF   scripts/mod/elfconfig.h
|   CHK     scripts/mod/devicetable-offsets.h
|
|   CHK     scripts/mod/devicetable-offsets.h
|   UPD     scripts/mod/devicetable-offsets.h
|
|   UPD     scripts/mod/devicetable-offsets.h
|   HOSTCC  scripts/mod/sumversion.o
|
|   HOSTCC  scripts/mod/sumversion.o
|   HOSTCC  scripts/selinux/genheaders/genheaders
|
|   HOSTCC  scripts/selinux/genheaders/genheaders
|   HOSTCC  scripts/selinux/mdp/mdp
|
|   HOSTCC  scripts/selinux/mdp/mdp
|   CC      kernel/bounds.s
|
|   CC      kernel/bounds.s
|   HOSTCC  scripts/kallsyms
|
|   HOSTCC  scripts/kallsyms
|   HOSTCC  scripts/mod/modpost.o
|
|   HOSTCC  scripts/mod/modpost.o
|   CHK     include/generated/timeconst.h
|
|   CHK     include/generated/timeconst.h
*| /bin/sh: 1: bc: not found*
*| *
*| /bin/sh: 1: bc: not found*
*| make[1]: *** [include/generated/timeconst.h] Error 127*
*| make: *** [prepare0] Error 2*
*| make: *** Waiting for unfinished jobs....*
*| *
*| make[1]: *** [include/generated/timeconst.h] Error 127*
*| make: *** [prepare0] Error 2*
*| make: *** Waiting for unfinished jobs....*
|   HOSTCC  scripts/pnmtologo
|
|   HOSTCC  scripts/pnmtologo
|   HOSTCC  scripts/conmakehash
|
|   HOSTCC  scripts/conmakehash
|   HOSTCC  scripts/sortextable
|
|   HOSTCC  scripts/sortextable
|   HOSTCC  scripts/mod/file2alias.o
|
|   HOSTCC  scripts/mod/file2alias.o
|   HOSTLD  scripts/mod/modpost
|
|   HOSTLD  scripts/mod/modpost
| + die oe_runmake failed
| + bbfatal_log oe_runmake failed
| + [ -p
/home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/temp/fifo.7174
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
/home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/temp/fifo.7174
]
| + printf %b\0 bbfatal_log oe_runmake failed
| + exit 1
| + bb_exit_handler
| + ret=1
| + echo WARNING: exit code 1 from a shell command.
| WARNING: exit code 1 from a shell command.
| + exit 1
*| ERROR: oe_runmake failed*
*| ERROR: Function failed: do_compile (log file is located at
/home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/temp/log.do_compile.7174)*
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

On Wed, Sep 5, 2018 at 5:11 AM srinivasan <srinivasan.rns@gmail.com> wrote:

> Dear Technical team,
>
> As am newbie to poky/yocto build system, I am facing the issue with the
> error log shown below, in adding the new kernel "
> git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git" with the
> branch "KBRANCH = "v4.14", I have built for "qemux86"
>
> Could you please do the needful in resolving the below error and get my
> kernel get successfully compiled, as am stuck with this from past few days
>
> *1. Ubuntu version used 14.04*
>
> *2. Poky Distro version*
>
> DISTRO = "poky"
> DISTRO_NAME = "Poky (Yocto Project Reference Distro)"
> DISTRO_VERSION = "2.5+snapshot-${DATE}"
>
> *3.Recipe file is attached.*
>
> *4. Logs*
> :~/yocto_session_ws_2/build$ bitbake virtual/kernel -v
> WARNING: Host distribution "ubuntu-14.04" has not been validated with this
> version of the build system; you may possibly experience unexpected
> failures. It is recommended that you use a tested distribution.
> Loading cache: 100%
> |###################################################################################################################################################|
> Time: 0:00:00
> Loaded 1266 entries from dependency cache.
> NOTE: selecting linux-srini to satisfy virtual/kernel due to
> PREFERRED_PROVIDERS
> NOTE: Resolving any missing task queue dependencies
> NOTE: selecting binutils-cross-i586 to satisfy
> virtual/i586-poky-linux-binutils due to PREFERRED_PROVIDERS
> NOTE: selecting pseudo-native to satisfy virtual/fakeroot-native due to
> PREFERRED_PROVIDERS
> NOTE: selecting linux-srini to satisfy runtime linux-srini due to
> PREFERRED_PROVIDER_virtual/kernel = linux-srini
> NOTE: selecting linux-srini to satisfy runtime linux-srini-dev due to
> PREFERRED_PROVIDER_virtual/kernel = linux-srini
> NOTE: selecting openssl-native to satisfy openssl-native due to
> PREFERRED_PROVIDERS
> NOTE: selecting pkgconfig-native to satisfy pkgconfig-native due to
> PREFERRED_PROVIDERS
>
> Build Configuration:
> BB_VERSION           = "1.39.1"
> BUILD_SYS            = "x86_64-linux"
> NATIVELSBSTRING      = "universal-4.8"
> TARGET_SYS           = "i586-poky-linux"
> MACHINE              = "qemux86"
> DISTRO               = "poky"
> DISTRO_VERSION       = "2.5+snapshot-20180904"
> TUNE_FEATURES        = "m32 i586"
> TARGET_FPU           = ""
> meta
> meta-poky
> meta-yocto-bsp       = "master:4434777705cf49300a7d2c9ca8fa3080d551d795"
>
> NOTE: Marking Active
> Tasks############################################################
>                                                                          |
> ETA:  0:00:00
> NOTE: Pruned 509 inactive tasks, 322
> left##############################################
>                                                         | ETA:  0:00:00
> NOTE: Assign Weightings
> NOTE: Compute totals (have 1
> endpoint(s))##############################################
>                                                                 | ETA:
> 0:00:00
> Initialising tasks: 100%
> |###############################################################################################################################################|
> Time: 0:00:00
> Sstate summary: Wanted 6 Found 1 Missed 5 Current 38 (16% match, 88%
> complete)
> NOTE: Executing SetScene Tasks
> + cd
> /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/sstate-install-populate_lic/
> + sstate_unpack_package
> + tar -xvzf
> /home/srinivasan/yocto_session_ws_2/build/sstate-cache/7f/sstate:linux-srini::4.14:r1::3:7ffa068910d303281a8c5c13f8661ae6_populate_lic.tgz
>
> license-destdir/
>
> license-destdir/linux-srini/
> license-destdir/linux-srini/recipeinfo
> license-destdir/linux-srini/generic_GPLv2
> license-destdir/linux-srini/COPYING
>
> + [ -w
> /home/srinivasan/yocto_session_ws_2/build/sstate-cache/7f/sstate:linux-srini::4.14:r1::3:7ffa068910d303281a8c5c13f8661ae6_populate_lic.tgz.siginfo
> ]
>
> + [ -h
> /home/srinivasan/yocto_session_ws_2/build/sstate-cache/7f/sstate:linux-srini::4.14:r1::3:7ffa068910d303281a8c5c13f8661ae6_populate_lic.tgz.siginfo
> ]
> + [ ! -w
> /home/srinivasan/yocto_session_ws_2/build/sstate-cache/7f/sstate:linux-srini::4.14:r1::3:7ffa068910d303281a8c5c13f8661ae6_populate_lic.tgz
> ]
> + touch --no-dereference
> /home/srinivasan/yocto_session_ws_2/build/sstate-cache/7f/sstate:linux-srini::4.14:r1::3:7ffa068910d303281a8c5c13f8661ae6_populate_lic.tgz
>
> + [ ! -w
> /home/srinivasan/yocto_session_ws_2/build/sstate-cache/7f/sstate:linux-srini::4.14:r1::3:7ffa068910d303281a8c5c13f8661ae6_populate_lic.tgz.sig
> ]
>
> + [ ! -w
> /home/srinivasan/yocto_session_ws_2/build/sstate-cache/7f/sstate:linux-srini::4.14:r1::3:7ffa068910d303281a8c5c13f8661ae6_populate_lic.tgz.siginfo
> ]
> + [ ! -e
> /home/srinivasan/yocto_session_ws_2/build/sstate-cache/7f/sstate:linux-srini::4.14:r1::3:7ffa068910d303281a8c5c13f8661ae6_populate_lic.tgz.siginfo
> ]
> + touch --no-dereference
> /home/srinivasan/yocto_session_ws_2/build/sstate-cache/7f/sstate:linux-srini::4.14:r1::3:7ffa068910d303281a8c5c13f8661ae6_populate_lic.tgz.siginfo
>
> + ret=0
> + trap  0
> + exit 0
>
> NOTE: Executing RunQueue Tasks
> NOTE: linux-srini-4.14-r1 do_fetch: Direct dependencies are []
> NOTE: linux-srini-4.14-r1 do_fetch: Installed into sysroot: []
> NOTE: linux-srini-4.14-r1 do_fetch: Skipping as already exists in sysroot:
> []
> NOTE: linux-srini-4.14-r1 do_prepare_recipe_sysroot: Direct dependencies
> are
> ['virtual:native:/home/srinivasan/yocto_session_ws_2/poky/meta/recipes-devtools/automake/automake_1.16.1.bb:do_populate_sysroot',
> '/home/srinivasan/yocto_session_ws_2/poky/meta/recipes-devtools/libtool/libtool-native_2.4.6.bb:do_populate_sysroot',
> 'virtual:native:/home/srinivasan/yocto_session_ws_2/poky/meta/recipes-devtools/gnu-config/gnu-config_git.bb:do_populate_sysroot',
> 'virtual:native:/home/srinivasan/yocto_session_ws_2/poky/meta/recipes-devtools/autoconf/autoconf_2.69.bb:
> do_populate_sysroot']
> NOTE: linux-srini-4.14-r1 do_prepare_recipe_sysroot: Installed into
> sysroot: ['automake-native', 'libtool-native', 'gnu-config-native',
> 'autoconf-native', 'quilt-native', 'm4-native', 'texinfo-dummy-native']
> NOTE: linux-srini-4.14-r1 do_prepare_recipe_sysroot: Skipping as already
> exists in sysroot: []
> NOTE: linux-srini-4.14-r1 do_patch: Direct dependencies are
> ['/home/srinivasan/yocto_session_ws_2/poky/meta/recipes-devtools/quilt/quilt-native_0.65.bb:
> do_populate_sysroot']
> NOTE: linux-srini-4.14-r1 do_patch: Installed into sysroot: []
> NOTE: linux-srini-4.14-r1 do_patch: Skipping as already exists in sysroot:
> ['quilt-native']
> + autotools_preconfigure
> + [ -n
> /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/configure.sstate
> -a -e
> /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/configure.sstate
> ]
> + ret=0
> + trap  0
> + exit 0
>
> + cd
> /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/build
> + do_configure
> + cd
> /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/git
> + git checkout bebc6082da0a9f5d47a1ea2edc099bf671058bd4
>
> Note: checking out 'bebc6082da0a9f5d47a1ea2edc099bf671058bd4'.
>
> You are in 'detached HEAD' state. You can look around, make experimental
> changes and commit them, and you can discard any commits you make in this
> state without impacting any branches by performing another checkout.
>
> If you want to create a new branch to retain commits you create, you may
> do so (now or later) by using -b with the checkout command again. Example:
>
>   git checkout -b new_branch_name
>
>
> HEAD is now at bebc608... Linux 4.14
>
> + sleep 5
>
> + [ -n x86_64_defconfig ]
> + [ -f
> /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/git/arch/x86/configs/x86_64_defconfig
> ]
> + [ -f
>  /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/defconfig
> ]
> + cp -f
> /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/git/arch/x86/configs/x86_64_defconfig
> /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/defconfig
>
> + cp -f
> /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/git/arch/x86/configs/x86_64_defconfig
> /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/git/defconfig
>
> + cp -f
> /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/git/arch/x86/configs/x86_64_defconfig
> /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/git/.config
>
> +
> sccs=/home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/defconfig
> + ret=0
> + trap  0
> + exit 0
>
> NOTE: linux-srini-4.14-r1 do_configure: Checking autotools environment for
> common misconfiguration
> NOTE: linux-srini-4.14-r1 do_configure: Checking configure output for
> unrecognised options
> + autotools_postconfigure
> + [ -n
> /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/configure.sstate
> ]
>
> + dirname
> /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/configure.sstate
>
> + mkdir -p
> /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1
>
> + echo fb691e35d382f04effc1c80328f97ff7
>
> + ret=0
> + trap  0
> + exit 0
>
> + cd
> /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/build
> + do_compile
> + autotools_do_compile
> + oe_runmake
> + oe_runmake_call
> + bbnote make -j 4
> + [ -p
> /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/temp/fifo.4343
> ]
>
> NOTE: linux-srini-4.14-r1 do_compile: make -j 4
> + printf %b\0 bbnote make -j 4
> + make -j 4
>
> *make: *** No targets specified and no makefile found.  Stop.*
>
> *ERROR: linux-srini-4.14-r1 do_compile: oe_runmake failed*
> *+ die oe_runmake failed*
> *+ bbfatal_log oe_runmake failed*
> + [ -p
> /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/temp/fifo.4343
> ]
> + printf %b\0 bbfatal_log oe_runmake failed
> + exit 1
> + bb_exit_handler
> + ret=1
> + echo WARNING: exit code 1 from a shell command.
> WARNING: exit code 1 from a shell command.
> + exit 1
>
> *ERROR: linux-srini-4.14-r1 do_compile: Function failed: do_compile (log
> file is located at
> /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/temp/log.do_compile.4343)*
> *ERROR: Logfile of failure stored in:
> /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/temp/log.do_compile.4343*
> Log data follows:
> | DEBUG: SITE files ['endian-little', 'bit-32', 'ix86-common',
> 'common-linux', 'common-glibc', 'i586-linux', 'common']
> | DEBUG: Executing shell function do_compile
> | + cd
> /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/build
> | + do_compile
> | + autotools_do_compile
> | + oe_runmake
> | + oe_runmake_call
> | + bbnote make -j 4
> | + [ -p
> /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/temp/fifo.4343
> ]
> |
> | + cd
> /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/build
> | + do_compile
> | + autotools_do_compile
> | + oe_runmake
> | + oe_runmake_call
> | + bbnote make -j 4
> | + [ -p
> /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/temp/fifo.4343
> ]
> | NOTE: make -j 4
> | + printf %b\0 bbnote make -j 4
> | + make -j 4
> |
> | + printf %b\0 bbnote make -j 4
> | + make -j 4
> | make: *** No targets specified and no makefile found.  Stop.
> |
> | make: *** No targets specified and no makefile found.  Stop.
> | ERROR: oe_runmake failed
> | + die oe_runmake failed
> | + bbfatal_log oe_runmake failed
> | + [ -p
> /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/temp/fifo.4343
> ]
> | + printf %b\0 bbfatal_log oe_runmake failed
> | + exit 1
> | + bb_exit_handler
> | + ret=1
> | + echo WARNING: exit code 1 from a shell command.
> | WARNING: exit code 1 from a shell command.
> | + exit 1
> |
> | + die oe_runmake failed
> | + bbfatal_log oe_runmake failed
> | + [ -p
> /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/temp/fifo.4343
> ]
> | + printf %b\0 bbfatal_log oe_runmake failed
> | + exit 1
> | + bb_exit_handler
> | + ret=1
> | + echo WARNING: exit code 1 from a shell command.
> | WARNING: exit code 1 from a shell command.
> | + exit 1
> *| ERROR: Function failed: do_compile (log file is located at
> /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/temp/log.do_compile.4343)*
> *ERROR: Task
> (/home/srinivasan/yocto_session_ws_2/poky/meta/recipes-kernel/linux/linux-srini_4.14.bb:do_compile)
> failed with exit code '1'*
> *NOTE: Tasks Summary: Attempted 312 tasks of which 306 didn't need to be
> rerun and 1 failed.*
>
> Summary: 1 task failed:
>
> /home/srinivasan/yocto_session_ws_2/poky/meta/recipes-kernel/linux/linux-srini_4.14.bb:
> do_compile
> Summary: There was 1 WARNING message shown.
> Summary: There were 2 ERROR messages shown, returning a non-zero exit code.
> srinivasan@srinivasan-UX305UA:~/yocto_session_ws_2/build$
>

--000000000000e7e1b0057514cd60
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:&quot;co=
mic sans ms&quot;,sans-serif"></div><div dir=3D"ltr"><div dir=3D"ltr"><div =
dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:&quot;comic s=
ans ms&quot;,sans-serif">After changing from &quot;<b>do_compile_ () {</b>&=
quot; to &quot;<b>do_compile() {</b>&quot;, in the attached recipe file, Co=
mpilation started but got stuck=C2=A0 &quot;<b>/bin/sh: 1: bc: not found</b=
></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif=
"><b><br></b></font></div><div class=3D"gmail_default"><font face=3D"comic =
sans ms, sans-serif"><b>make[1]: *** [include/generated/timeconst.h] Error =
127</b></font></div><div class=3D"gmail_default"><font face=3D"comic sans m=
s, sans-serif"><b>make: *** [prepare0] Error 2</b></font></div><div class=
=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"><b>make: *** Wa=
iting for unfinished jobs....&quot;</b></font></div><div class=3D"gmail_def=
ault"><font face=3D"comic sans ms, sans-serif"><b><br></b></font></div><div=
 class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"><b>Even I=
 tried installing &quot;</b></font><span style=3D"background-color:rgba(27,=
31,35,0.05);color:rgb(36,41,46);font-family:SFMono-Regular,Consolas,&quot;L=
iberation Mono&quot;,Menlo,Courier,monospace;font-size:11.9px">sudo apt-get=
 install bc&quot;</span><b style=3D"font-family:&quot;comic sans ms&quot;,s=
ans-serif">=C2=A0but still the same issue as above, Kindly do the needful i=
n resolving the above issue as am stuck with the same issue from past 4 day=
s</b></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-s=
erif"><b><br></b></font></div><div class=3D"gmail_default"><font face=3D"co=
mic sans ms, sans-serif"><b>References:</b></font></div><div class=3D"gmail=
_default"><font face=3D"comic sans ms, sans-serif"><b><br></b></font></div>=
<div class=3D"gmail_default"><div class=3D"gmail_default"><font face=3D"com=
ic sans ms, sans-serif"><b>1. Ubuntu version used 14.04</b></font></div><di=
v class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"><br></fo=
nt></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-ser=
if"><b>2. Poky Distro version</b></font></div><div class=3D"gmail_default">=
<font face=3D"comic sans ms, sans-serif"><br></font></div><div class=3D"gma=
il_default"><font face=3D"comic sans ms, sans-serif">DISTRO =3D &quot;poky&=
quot;</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms,=
 sans-serif">DISTRO_NAME =3D &quot;Poky (Yocto Project Reference Distro)&qu=
ot;</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, s=
ans-serif">DISTRO_VERSION =3D &quot;2.5+snapshot-${DATE}&quot;</font></div>=
</div><div class=3D"gmail_default" style=3D"font-family:&quot;comic sans ms=
&quot;,sans-serif"><br></div><div class=3D"gmail_default" style=3D"font-fam=
ily:&quot;comic sans ms&quot;,sans-serif"><b>3.Logs:</b></div><div class=3D=
"gmail_default" style=3D"font-family:&quot;comic sans ms&quot;,sans-serif">=
<br></div><div class=3D"gmail_default"><div class=3D"gmail_default"><font f=
ace=3D"comic sans ms, sans-serif">NOTE: Marking Active Tasks###############=
#############################################=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| ETA:=C2=A0 0:00:00</font></d=
iv><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">NO=
TE: Pruned 509 inactive tasks, 322 left####################################=
##########=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 | ETA:=C2=A0 0:00:00</font></div><div class=3D"gmail_default"><font fac=
e=3D"comic sans ms, sans-serif">NOTE: Assign Weightings</font></div><div cl=
ass=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">NOTE: Comput=
e totals (have 1 endpoint(s))##############################################=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | ETA:=
=C2=A0 0:00:00</font></div><div class=3D"gmail_default"><font face=3D"comic=
 sans ms, sans-serif">Initialising tasks: 100% |###########################=
###########################################################################=
#########################################| Time: 0:00:00</font></div><div c=
lass=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">Sstate summ=
ary: Wanted 6 Found 1 Missed 5 Current 38 (16% match, 88% complete)</font><=
/div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">=
NOTE: Executing SetScene Tasks</font></div><div class=3D"gmail_default"><fo=
nt face=3D"comic sans ms, sans-serif">+ cd /home/srinivasan/yocto_session_w=
s_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/sstate-install-popul=
ate_lic/</font></div><div class=3D"gmail_default"><font face=3D"comic sans =
ms, sans-serif">+ sstate_unpack_package</font></div><div class=3D"gmail_def=
ault"><font face=3D"comic sans ms, sans-serif">+ tar -xvzf /home/srinivasan=
/yocto_session_ws_2/build/sstate-cache/7f/sstate:linux-srini::4.14:r1::3:7f=
fa068910d303281a8c5c13f8661ae6_populate_lic.tgz</font></div><div class=3D"g=
mail_default"><font face=3D"comic sans ms, sans-serif"><br></font></div><di=
v class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">license-=
destdir/</font></div><div class=3D"gmail_default"><font face=3D"comic sans =
ms, sans-serif"><br></font></div><div class=3D"gmail_default"><font face=3D=
"comic sans ms, sans-serif">license-destdir/linux-srini/</font></div><div c=
lass=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">license-des=
tdir/linux-srini/recipeinfo</font></div><div class=3D"gmail_default"><font =
face=3D"comic sans ms, sans-serif">license-destdir/linux-srini/generic_GPLv=
2</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, san=
s-serif">license-destdir/linux-srini/COPYING</font></div><div class=3D"gmai=
l_default"><font face=3D"comic sans ms, sans-serif"><br></font></div><div c=
lass=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">+ [ -w /hom=
e/srinivasan/yocto_session_ws_2/build/sstate-cache/7f/sstate:linux-srini::4=
.14:r1::3:7ffa068910d303281a8c5c13f8661ae6_populate_lic.tgz.siginfo ]</font=
></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif=
">+ [ -h /home/srinivasan/yocto_session_ws_2/build/sstate-cache/7f/sstate:l=
inux-srini::4.14:r1::3:7ffa068910d303281a8c5c13f8661ae6_populate_lic.tgz.si=
ginfo ]</font></div><div class=3D"gmail_default"><font face=3D"comic sans m=
s, sans-serif">+ [ ! -w /home/srinivasan/yocto_session_ws_2/build/sstate-ca=
che/7f/sstate:linux-srini::4.14:r1::3:7ffa068910d303281a8c5c13f8661ae6_popu=
late_lic.tgz ]</font></div><div class=3D"gmail_default"><font face=3D"comic=
 sans ms, sans-serif">+ touch --no-dereference /home/srinivasan/yocto_sessi=
on_ws_2/build/sstate-cache/7f/sstate:linux-srini::4.14:r1::3:7ffa068910d303=
281a8c5c13f8661ae6_populate_lic.tgz</font></div><div class=3D"gmail_default=
"><font face=3D"comic sans ms, sans-serif"><br></font></div><div class=3D"g=
mail_default"><font face=3D"comic sans ms, sans-serif">+ [ ! -w /home/srini=
vasan/yocto_session_ws_2/build/sstate-cache/7f/sstate:linux-srini::4.14:r1:=
:3:7ffa068910d303281a8c5c13f8661ae6_populate_lic.tgz.sig ]</font></div><div=
 class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"><br></fon=
t></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-seri=
f">+ [ ! -w /home/srinivasan/yocto_session_ws_2/build/sstate-cache/7f/sstat=
e:linux-srini::4.14:r1::3:7ffa068910d303281a8c5c13f8661ae6_populate_lic.tgz=
.siginfo ]</font></div><div class=3D"gmail_default"><font face=3D"comic san=
s ms, sans-serif">+ [ ! -e /home/srinivasan/yocto_session_ws_2/build/sstate=
-cache/7f/sstate:linux-srini::4.14:r1::3:7ffa068910d303281a8c5c13f8661ae6_p=
opulate_lic.tgz.siginfo ]</font></div><div class=3D"gmail_default"><font fa=
ce=3D"comic sans ms, sans-serif">+ touch --no-dereference /home/srinivasan/=
yocto_session_ws_2/build/sstate-cache/7f/sstate:linux-srini::4.14:r1::3:7ff=
a068910d303281a8c5c13f8661ae6_populate_lic.tgz.siginfo</font></div><div cla=
ss=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"><br></font></=
div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">+=
 ret=3D0</font></div><div class=3D"gmail_default"><font face=3D"comic sans =
ms, sans-serif">+ trap=C2=A0 0</font></div><div class=3D"gmail_default"><fo=
nt face=3D"comic sans ms, sans-serif">+ exit 0</font></div><div class=3D"gm=
ail_default"><font face=3D"comic sans ms, sans-serif"><br></font></div><div=
 class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">NOTE: Exe=
cuting RunQueue Tasks</font></div><div class=3D"gmail_default"><font face=
=3D"comic sans ms, sans-serif">NOTE: linux-srini-4.14-r1 do_fetch: Direct d=
ependencies are []</font></div><div class=3D"gmail_default"><font face=3D"c=
omic sans ms, sans-serif">NOTE: linux-srini-4.14-r1 do_fetch: Installed int=
o sysroot: []</font></div><div class=3D"gmail_default"><font face=3D"comic =
sans ms, sans-serif">NOTE: linux-srini-4.14-r1 do_fetch: Skipping as alread=
y exists in sysroot: []</font></div><div class=3D"gmail_default"><font face=
=3D"comic sans ms, sans-serif">NOTE: linux-srini-4.14-r1 do_prepare_recipe_=
sysroot: Direct dependencies are [&#39;/home/srinivasan/yocto_session_ws_2/=
poky/meta/recipes-devtools/libtool/libtool-native_2.4.6.bb:do_populate_sysr=
oot&#39;, &#39;virtual:native:/home/srinivasan/yocto_session_ws_2/poky/meta=
/recipes-devtools/gnu-config/gnu-config_git.bb:do_populate_sysroot&#39;, &#=
39;virtual:native:/home/srinivasan/yocto_session_ws_2/poky/meta/recipes-dev=
tools/autoconf/autoconf_2.69.bb:do_populate_sysroot&#39;, &#39;virtual:nati=
ve:/home/srinivasan/yocto_session_ws_2/poky/meta/recipes-devtools/automake/=
automake_1.16.1.bb:do_populate_sysroot&#39;]</font></div><div class=3D"gmai=
l_default"><font face=3D"comic sans ms, sans-serif">NOTE: linux-srini-4.14-=
r1 do_prepare_recipe_sysroot: Installed into sysroot: [&#39;libtool-native&=
#39;, &#39;gnu-config-native&#39;, &#39;autoconf-native&#39;, &#39;automake=
-native&#39;, &#39;texinfo-dummy-native&#39;, &#39;quilt-native&#39;, &#39;=
m4-native&#39;]</font></div><div class=3D"gmail_default"><font face=3D"comi=
c sans ms, sans-serif">NOTE: linux-srini-4.14-r1 do_prepare_recipe_sysroot:=
 Skipping as already exists in sysroot: []</font></div><div class=3D"gmail_=
default"><font face=3D"comic sans ms, sans-serif">NOTE: linux-srini-4.14-r1=
 do_patch: Direct dependencies are [&#39;/home/srinivasan/yocto_session_ws_=
2/poky/meta/recipes-devtools/quilt/quilt-native_0.65.bb:do_populate_sysroot=
&#39;]</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms=
, sans-serif">NOTE: linux-srini-4.14-r1 do_patch: Installed into sysroot: [=
]</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, san=
s-serif">NOTE: linux-srini-4.14-r1 do_patch: Skipping as already exists in =
sysroot: [&#39;quilt-native&#39;]</font></div><div class=3D"gmail_default">=
<font face=3D"comic sans ms, sans-serif">+ autotools_preconfigure</font></d=
iv><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">+ =
[ -n /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/lin=
ux-srini/4.14-r1/configure.sstate -a -e /home/srinivasan/yocto_session_ws_2=
/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/configure.sstate ]</fon=
t></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-seri=
f">+ ret=3D0</font></div><div class=3D"gmail_default"><font face=3D"comic s=
ans ms, sans-serif">+ trap=C2=A0 0</font></div><div class=3D"gmail_default"=
><font face=3D"comic sans ms, sans-serif">+ exit 0</font></div><div class=
=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"><br></font></di=
v><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">+ c=
d /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-=
srini/4.14-r1/build</font></div><div class=3D"gmail_default"><font face=3D"=
comic sans ms, sans-serif">+ do_configure</font></div><div class=3D"gmail_d=
efault"><font face=3D"comic sans ms, sans-serif">+ cd /home/srinivasan/yoct=
o_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/git</font=
></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif=
"><br></font></div><div class=3D"gmail_default"><font face=3D"comic sans ms=
, sans-serif">+ git checkout bebc6082da0a9f5d47a1ea2edc099bf671058bd4</font=
></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif=
"><br></font></div><div class=3D"gmail_default"><font face=3D"comic sans ms=
, sans-serif">Note: checking out &#39;bebc6082da0a9f5d47a1ea2edc099bf671058=
bd4&#39;.</font></div><div class=3D"gmail_default"><font face=3D"comic sans=
 ms, sans-serif"><br></font></div><div class=3D"gmail_default"><font face=
=3D"comic sans ms, sans-serif">You are in &#39;detached HEAD&#39; state. Yo=
u can look around, make experimental</font></div><div class=3D"gmail_defaul=
t"><font face=3D"comic sans ms, sans-serif">changes and commit them, and yo=
u can discard any commits you make in this</font></div><div class=3D"gmail_=
default"><font face=3D"comic sans ms, sans-serif">state without impacting a=
ny branches by performing another checkout.</font></div><div class=3D"gmail=
_default"><font face=3D"comic sans ms, sans-serif"><br></font></div><div cl=
ass=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">If you want =
to create a new branch to retain commits you create, you may</font></div><d=
iv class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">do so (=
now or later) by using -b with the checkout command again. Example:</font><=
/div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">=
<br></font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, =
sans-serif">=C2=A0 git checkout -b new_branch_name</font></div><div class=
=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"><br></font></di=
v><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"><br=
></font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, san=
s-serif">HEAD is now at bebc608... Linux 4.14</font></div><div class=3D"gma=
il_default"><font face=3D"comic sans ms, sans-serif"><br></font></div><div =
class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">+ sleep 5<=
/font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-=
serif"><br></font></div><div class=3D"gmail_default"><font face=3D"comic sa=
ns ms, sans-serif">+ [ -n x86_64_defconfig ]</font></div><div class=3D"gmai=
l_default"><font face=3D"comic sans ms, sans-serif">+ [ -f /home/srinivasan=
/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/git/=
arch/x86/configs/x86_64_defconfig ]</font></div><div class=3D"gmail_default=
"><font face=3D"comic sans ms, sans-serif">+ [ -f /home/srinivasan/yocto_se=
ssion_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/defconfig ]</=
font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-s=
erif"><br></font></div><div class=3D"gmail_default"><font face=3D"comic san=
s ms, sans-serif">+ cp -f /home/srinivasan/yocto_session_ws_2/build/tmp/wor=
k/i586-poky-linux/linux-srini/4.14-r1/git/arch/x86/configs/x86_64_defconfig=
 /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-s=
rini/4.14-r1/defconfig</font></div><div class=3D"gmail_default"><font face=
=3D"comic sans ms, sans-serif"><br></font></div><div class=3D"gmail_default=
"><font face=3D"comic sans ms, sans-serif">+ cp -f /home/srinivasan/yocto_s=
ession_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/git/arch/x86=
/configs/x86_64_defconfig /home/srinivasan/yocto_session_ws_2/build/tmp/wor=
k/i586-poky-linux/linux-srini/4.14-r1/git/defconfig</font></div><div class=
=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"><br></font></di=
v><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">+ c=
p -f /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/lin=
ux-srini/4.14-r1/git/arch/x86/configs/x86_64_defconfig /home/srinivasan/yoc=
to_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/git/.con=
fig</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, s=
ans-serif"><br></font></div><div class=3D"gmail_default"><font face=3D"comi=
c sans ms, sans-serif">+ sccs=3D/home/srinivasan/yocto_session_ws_2/build/t=
mp/work/i586-poky-linux/linux-srini/4.14-r1/defconfig</font></div><div clas=
s=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">+ ret=3D0</fon=
t></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-seri=
f">+ trap=C2=A0 0</font></div><div class=3D"gmail_default"><font face=3D"co=
mic sans ms, sans-serif"><br></font></div><div class=3D"gmail_default"><fon=
t face=3D"comic sans ms, sans-serif">+ exit 0</font></div><div class=3D"gma=
il_default"><font face=3D"comic sans ms, sans-serif"><br></font></div><div =
class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">NOTE: linu=
x-srini-4.14-r1 do_configure: Checking autotools environment for common mis=
configuration</font></div><div class=3D"gmail_default"><font face=3D"comic =
sans ms, sans-serif">NOTE: linux-srini-4.14-r1 do_configure: Checking confi=
gure output for unrecognised options</font></div><div class=3D"gmail_defaul=
t"><font face=3D"comic sans ms, sans-serif">+ autotools_postconfigure</font=
></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif=
">+ [ -n /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux=
/linux-srini/4.14-r1/configure.sstate ]</font></div><div class=3D"gmail_def=
ault"><font face=3D"comic sans ms, sans-serif"><br></font></div><div class=
=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">+ dirname /home=
/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4=
.14-r1/configure.sstate</font></div><div class=3D"gmail_default"><font face=
=3D"comic sans ms, sans-serif"><br></font></div><div class=3D"gmail_default=
"><font face=3D"comic sans ms, sans-serif">+ mkdir -p /home/srinivasan/yoct=
o_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1</font></d=
iv><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"><b=
r></font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sa=
ns-serif">+ echo fb691e35d382f04effc1c80328f97ff7</font></div><div class=3D=
"gmail_default"><font face=3D"comic sans ms, sans-serif">+ ret=3D0</font></=
div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">+=
 trap=C2=A0 0</font></div><div class=3D"gmail_default"><font face=3D"comic =
sans ms, sans-serif">+ exit 0</font></div><div class=3D"gmail_default"><fon=
t face=3D"comic sans ms, sans-serif"><br></font></div><div class=3D"gmail_d=
efault"><font face=3D"comic sans ms, sans-serif">+ cd /home/srinivasan/yoct=
o_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/build</fo=
nt></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-ser=
if">+ do_compile</font></div><div class=3D"gmail_default"><font face=3D"com=
ic sans ms, sans-serif">+ cd /home/srinivasan/yocto_session_ws_2/build/tmp/=
work/i586-poky-linux/linux-srini/4.14-r1/git</font></div><div class=3D"gmai=
l_default"><font face=3D"comic sans ms, sans-serif"><br></font></div><div c=
lass=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">NOTE: linux=
-srini-4.14-r1 do_compile: make -j 4 mrproper</font></div><div class=3D"gma=
il_default"><font face=3D"comic sans ms, sans-serif">+ oe_runmake mrproper<=
/font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-=
serif">+ oe_runmake_call mrproper</font></div><div class=3D"gmail_default">=
<font face=3D"comic sans ms, sans-serif">+ bbnote make -j 4 mrproper</font>=
</div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"=
>+ [ -p /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/=
linux-srini/4.14-r1/temp/fifo.7174 ]</font></div><div class=3D"gmail_defaul=
t"><font face=3D"comic sans ms, sans-serif">+ printf %b\0 bbnote make -j 4 =
mrproper</font></div><div class=3D"gmail_default"><font face=3D"comic sans =
ms, sans-serif">+ make -j 4 mrproper</font></div><div class=3D"gmail_defaul=
t"><font face=3D"comic sans ms, sans-serif"><br></font></div><div class=3D"=
gmail_default"><font face=3D"comic sans ms, sans-serif">=C2=A0 CLEAN=C2=A0 =
=C2=A0.config</font></div><div class=3D"gmail_default"><font face=3D"comic =
sans ms, sans-serif"><br></font></div><div class=3D"gmail_default"><font fa=
ce=3D"comic sans ms, sans-serif">+ oe_runmake defconfig</font></div><div cl=
ass=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">+ oe_runmake=
_call defconfig</font></div><div class=3D"gmail_default"><font face=3D"comi=
c sans ms, sans-serif">+ bbnote make -j 4 defconfig</font></div><div class=
=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"><br></font></di=
v><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">NOT=
E: linux-srini-4.14-r1 do_compile: make -j 4 defconfig</font></div><div cla=
ss=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">+ [ -p /home/=
srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.=
14-r1/temp/fifo.7174 ]</font></div><div class=3D"gmail_default"><font face=
=3D"comic sans ms, sans-serif">+ printf %b\0 bbnote make -j 4 defconfig</fo=
nt></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-ser=
if">+ make -j 4 defconfig</font></div><div class=3D"gmail_default"><font fa=
ce=3D"comic sans ms, sans-serif"><br></font></div><div class=3D"gmail_defau=
lt"><font face=3D"comic sans ms, sans-serif">=C2=A0 HOSTCC=C2=A0 scripts/ba=
sic/fixdep</font></div><div class=3D"gmail_default"><font face=3D"comic san=
s ms, sans-serif"><br></font></div><div class=3D"gmail_default"><font face=
=3D"comic sans ms, sans-serif">=C2=A0 HOSTCC=C2=A0 scripts/kconfig/conf.o</=
font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-s=
erif"><br></font></div><div class=3D"gmail_default"><font face=3D"comic san=
s ms, sans-serif">=C2=A0 SHIPPED scripts/kconfig/zconf.tab.c</font></div><d=
iv class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"><br></f=
ont></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-se=
rif">=C2=A0 SHIPPED scripts/kconfig/zconf.lex.c</font></div><div class=3D"g=
mail_default"><font face=3D"comic sans ms, sans-serif"><br></font></div><di=
v class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">=C2=A0 H=
OSTCC=C2=A0 scripts/kconfig/zconf.tab.o</font></div><div class=3D"gmail_def=
ault"><font face=3D"comic sans ms, sans-serif"><br></font></div><div class=
=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">=C2=A0 HOSTLD=
=C2=A0 scripts/kconfig/conf</font></div><div class=3D"gmail_default"><font =
face=3D"comic sans ms, sans-serif"><br></font></div><div class=3D"gmail_def=
ault"><font face=3D"comic sans ms, sans-serif">*** Default configuration is=
 based on &#39;x86_64_defconfig&#39;</font></div><div class=3D"gmail_defaul=
t"><font face=3D"comic sans ms, sans-serif"><br></font></div><div class=3D"=
gmail_default"><font face=3D"comic sans ms, sans-serif">#</font></div><div =
class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"># configur=
ation written to .config</font></div><div class=3D"gmail_default"><font fac=
e=3D"comic sans ms, sans-serif">#</font></div><div class=3D"gmail_default">=
<font face=3D"comic sans ms, sans-serif"><br></font></div><div class=3D"gma=
il_default"><font face=3D"comic sans ms, sans-serif">+ oe_runmake</font></d=
iv><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">+ =
oe_runmake_call</font></div><div class=3D"gmail_default"><font face=3D"comi=
c sans ms, sans-serif">+ bbnote make -j 4</font></div><div class=3D"gmail_d=
efault"><font face=3D"comic sans ms, sans-serif">+ [ -p</font></div><div cl=
ass=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">NOTE: linux-=
srini-4.14-r1 do_compile: make -j 4</font></div><div class=3D"gmail_default=
"><font face=3D"comic sans ms, sans-serif">=C2=A0/home/srinivasan/yocto_ses=
sion_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/temp/fifo.7174=
 ]</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sa=
ns-serif">+ printf %b\0 bbnote make -j 4</font></div><div class=3D"gmail_de=
fault"><font face=3D"comic sans ms, sans-serif">+ make -j 4</font></div><di=
v class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"><br></fo=
nt></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-ser=
if">scripts/kconfig/conf=C2=A0 --silentoldconfig Kconfig</font></div><div c=
lass=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"><br></font>=
</div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"=
>=C2=A0 SYSTBL=C2=A0 arch/x86/entry/syscalls/../../include/generated/asm/sy=
scalls_32.h</font></div><div class=3D"gmail_default"><font face=3D"comic sa=
ns ms, sans-serif"><br></font></div><div class=3D"gmail_default"><font face=
=3D"comic sans ms, sans-serif">=C2=A0 SYSHDR=C2=A0 arch/x86/entry/syscalls/=
../../include/generated/asm/unistd_32_ia32.h</font></div><div class=3D"gmai=
l_default"><font face=3D"comic sans ms, sans-serif"><br></font></div><div c=
lass=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">=C2=A0 SYSH=
DR=C2=A0 arch/x86/entry/syscalls/../../include/generated/asm/unistd_64_x32.=
h</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, san=
s-serif"><br></font></div><div class=3D"gmail_default"><font face=3D"comic =
sans ms, sans-serif">=C2=A0 CHK=C2=A0 =C2=A0 =C2=A0include/config/kernel.re=
lease</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms,=
 sans-serif"><br></font></div><div class=3D"gmail_default"><font face=3D"co=
mic sans ms, sans-serif">=C2=A0 SYSTBL=C2=A0 arch/x86/entry/syscalls/../../=
include/generated/asm/syscalls_64.h</font></div><div class=3D"gmail_default=
"><font face=3D"comic sans ms, sans-serif"><br></font></div><div class=3D"g=
mail_default"><font face=3D"comic sans ms, sans-serif">=C2=A0 SYSHDR=C2=A0 =
arch/x86/entry/syscalls/../../include/generated/uapi/asm/unistd_32.h</font>=
</div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"=
><br></font></div><div class=3D"gmail_default"><font face=3D"comic sans ms,=
 sans-serif">=C2=A0 SYSHDR=C2=A0 arch/x86/entry/syscalls/../../include/gene=
rated/uapi/asm/unistd_64.h</font></div><div class=3D"gmail_default"><font f=
ace=3D"comic sans ms, sans-serif"><br></font></div><div class=3D"gmail_defa=
ult"><font face=3D"comic sans ms, sans-serif">=C2=A0 SYSHDR=C2=A0 arch/x86/=
entry/syscalls/../../include/generated/uapi/asm/unistd_x32.h</font></div><d=
iv class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"><br></f=
ont></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-se=
rif">=C2=A0 CHK=C2=A0 =C2=A0 =C2=A0include/generated/uapi/linux/version.h</=
font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-s=
erif"><br></font></div><div class=3D"gmail_default"><font face=3D"comic san=
s ms, sans-serif">=C2=A0 UPD=C2=A0 =C2=A0 =C2=A0include/generated/uapi/linu=
x/version.h</font></div><div class=3D"gmail_default"><font face=3D"comic sa=
ns ms, sans-serif"><br></font></div><div class=3D"gmail_default"><font face=
=3D"comic sans ms, sans-serif">=C2=A0 UPD=C2=A0 =C2=A0 =C2=A0include/config=
/kernel.release</font></div><div class=3D"gmail_default"><font face=3D"comi=
c sans ms, sans-serif"><br></font></div><div class=3D"gmail_default"><font =
face=3D"comic sans ms, sans-serif">=C2=A0 HOSTCC=C2=A0 arch/x86/tools/reloc=
s_32.o</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms=
, sans-serif"><br></font></div><div class=3D"gmail_default"><font face=3D"c=
omic sans ms, sans-serif">=C2=A0 HOSTCC=C2=A0 arch/x86/tools/relocs_64.o</f=
ont></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-se=
rif"><br></font></div><div class=3D"gmail_default"><font face=3D"comic sans=
 ms, sans-serif">=C2=A0 HOSTCC=C2=A0 arch/x86/tools/relocs_common.o</font><=
/div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">=
<br></font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, =
sans-serif">=C2=A0 WRAP=C2=A0 =C2=A0 arch/x86/include/generated/asm/clkdev.=
h</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, san=
s-serif"><br></font></div><div class=3D"gmail_default"><font face=3D"comic =
sans ms, sans-serif">=C2=A0 WRAP=C2=A0 =C2=A0 arch/x86/include/generated/as=
m/dma-contiguous.h</font></div><div class=3D"gmail_default"><font face=3D"c=
omic sans ms, sans-serif"><br></font></div><div class=3D"gmail_default"><fo=
nt face=3D"comic sans ms, sans-serif">=C2=A0 WRAP=C2=A0 =C2=A0 arch/x86/inc=
lude/generated/asm/early_ioremap.h</font></div><div class=3D"gmail_default"=
><font face=3D"comic sans ms, sans-serif"><br></font></div><div class=3D"gm=
ail_default"><font face=3D"comic sans ms, sans-serif">=C2=A0 WRAP=C2=A0 =C2=
=A0 arch/x86/include/generated/asm/mcs_spinlock.h</font></div><div class=3D=
"gmail_default"><font face=3D"comic sans ms, sans-serif"><br></font></div><=
div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">=C2=A0=
 WRAP=C2=A0 =C2=A0 arch/x86/include/generated/asm/mm-arch-hooks.h</font></d=
iv><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"><b=
r></font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sa=
ns-serif">=C2=A0 CHK=C2=A0 =C2=A0 =C2=A0include/generated/utsrelease.h</fon=
t></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-seri=
f"><br></font></div><div class=3D"gmail_default"><font face=3D"comic sans m=
s, sans-serif">=C2=A0 UPD=C2=A0 =C2=A0 =C2=A0include/generated/utsrelease.h=
</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans=
-serif"><br></font></div><div class=3D"gmail_default"><font face=3D"comic s=
ans ms, sans-serif">=C2=A0 CC=C2=A0 =C2=A0 =C2=A0 scripts/mod/empty.o</font=
></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif=
"><br></font></div><div class=3D"gmail_default"><font face=3D"comic sans ms=
, sans-serif">=C2=A0 HOSTCC=C2=A0 scripts/mod/mk_elfconfig</font></div><div=
 class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"><br></fon=
t></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-seri=
f">=C2=A0 HOSTLD=C2=A0 arch/x86/tools/relocs</font></div><div class=3D"gmai=
l_default"><font face=3D"comic sans ms, sans-serif"><br></font></div><div c=
lass=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">=C2=A0 CC=
=C2=A0 =C2=A0 =C2=A0 scripts/mod/devicetable-offsets.s</font></div><div cla=
ss=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"><br></font></=
div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">=
=C2=A0 MKELF=C2=A0 =C2=A0scripts/mod/elfconfig.h</font></div><div class=3D"=
gmail_default"><font face=3D"comic sans ms, sans-serif"><br></font></div><d=
iv class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">=C2=A0 =
CHK=C2=A0 =C2=A0 =C2=A0scripts/mod/devicetable-offsets.h</font></div><div c=
lass=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"><br></font>=
</div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"=
>=C2=A0 UPD=C2=A0 =C2=A0 =C2=A0scripts/mod/devicetable-offsets.h</font></di=
v><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"><br=
></font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, san=
s-serif">=C2=A0 HOSTCC=C2=A0 scripts/mod/sumversion.o</font></div><div clas=
s=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"><br></font></d=
iv><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">=
=C2=A0 HOSTCC=C2=A0 scripts/selinux/genheaders/genheaders</font></div><div =
class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"><br></font=
></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif=
">=C2=A0 HOSTCC=C2=A0 scripts/selinux/mdp/mdp</font></div><div class=3D"gma=
il_default"><font face=3D"comic sans ms, sans-serif"><br></font></div><div =
class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">=C2=A0 CC=
=C2=A0 =C2=A0 =C2=A0 kernel/bounds.s</font></div><div class=3D"gmail_defaul=
t"><font face=3D"comic sans ms, sans-serif"><br></font></div><div class=3D"=
gmail_default"><font face=3D"comic sans ms, sans-serif">=C2=A0 HOSTCC=C2=A0=
 scripts/kallsyms</font></div><div class=3D"gmail_default"><font face=3D"co=
mic sans ms, sans-serif"><br></font></div><div class=3D"gmail_default"><fon=
t face=3D"comic sans ms, sans-serif">=C2=A0 HOSTCC=C2=A0 scripts/mod/modpos=
t.o</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, s=
ans-serif"><br></font></div><div class=3D"gmail_default"><font face=3D"comi=
c sans ms, sans-serif">=C2=A0 CHK=C2=A0 =C2=A0 =C2=A0include/generated/time=
const.h</font></div><div class=3D"gmail_default"><font face=3D"comic sans m=
s, sans-serif"><b><br></b></font></div><div class=3D"gmail_default"><font f=
ace=3D"comic sans ms, sans-serif"><b>/bin/sh: 1: bc: not found</b></font></=
div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"><=
b><br></b></font></div><div class=3D"gmail_default"><font face=3D"comic san=
s ms, sans-serif"><b>make[1]: *** [include/generated/timeconst.h] Error 127=
</b></font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, =
sans-serif"><b>make: *** [prepare0] Error 2</b></font></div><div class=3D"g=
mail_default"><font face=3D"comic sans ms, sans-serif"><b>make: *** Waiting=
 for unfinished jobs....</b></font></div><div class=3D"gmail_default"><font=
 face=3D"comic sans ms, sans-serif"><br></font></div><div class=3D"gmail_de=
fault"><font face=3D"comic sans ms, sans-serif">=C2=A0 HOSTCC=C2=A0 scripts=
/pnmtologo</font></div><div class=3D"gmail_default"><font face=3D"comic san=
s ms, sans-serif"><br></font></div><div class=3D"gmail_default"><font face=
=3D"comic sans ms, sans-serif">=C2=A0 HOSTCC=C2=A0 scripts/conmakehash</fon=
t></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-seri=
f"><br></font></div><div class=3D"gmail_default"><font face=3D"comic sans m=
s, sans-serif">=C2=A0 HOSTCC=C2=A0 scripts/sortextable</font></div><div cla=
ss=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"><br></font></=
div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">=
=C2=A0 HOSTCC=C2=A0 scripts/mod/file2alias.o</font></div><div class=3D"gmai=
l_default"><font face=3D"comic sans ms, sans-serif"><br></font></div><div c=
lass=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">=C2=A0 HOST=
LD=C2=A0 scripts/mod/modpost</font></div><div class=3D"gmail_default"><font=
 face=3D"comic sans ms, sans-serif"><br></font></div><div class=3D"gmail_de=
fault"><font face=3D"comic sans ms, sans-serif">+ die oe_runmake failed</fo=
nt></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-ser=
if">+ bbfatal_log oe_runmake failed</font></div><div class=3D"gmail_default=
"><font face=3D"comic sans ms, sans-serif">+ [ -p /home/srinivasan/yocto_se=
ssion_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/temp/fifo.717=
4 ]</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, s=
ans-serif">+ printf %b\0 bbfatal_log oe_runmake failed</font></div><div cla=
ss=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">+ exit 1</fon=
t></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-seri=
f">+ bb_exit_handler</font></div><div class=3D"gmail_default"><font face=3D=
"comic sans ms, sans-serif">+ ret=3D1</font></div><div class=3D"gmail_defau=
lt"><font face=3D"comic sans ms, sans-serif">+ echo WARNING: exit code 1 fr=
om a shell command.</font></div><div class=3D"gmail_default"><font face=3D"=
comic sans ms, sans-serif">WARNING: exit code 1 from a shell command.</font=
></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif=
">+ exit 1</font></div><div class=3D"gmail_default"><font face=3D"comic san=
s ms, sans-serif"><br></font></div><div class=3D"gmail_default"><font face=
=3D"comic sans ms, sans-serif"><b>ERROR: linux-srini-4.14-r1 do_compile: oe=
_runmake failed</b></font></div><div class=3D"gmail_default"><font face=3D"=
comic sans ms, sans-serif"><b>ERROR: linux-srini-4.14-r1 do_compile: Functi=
on failed: do_compile (log file is located at /home/srinivasan/yocto_sessio=
n_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/temp/log.do_compi=
le.7174)</b></font></div><div class=3D"gmail_default"><font face=3D"comic s=
ans ms, sans-serif"><b>ERROR: Logfile of failure stored in: /home/srinivasa=
n/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/tem=
p/log.do_compile.7174</b></font></div><div class=3D"gmail_default"><font fa=
ce=3D"comic sans ms, sans-serif">Log data follows:</font></div><div class=
=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">| DEBUG: SITE f=
iles [&#39;endian-little&#39;, &#39;bit-32&#39;, &#39;ix86-common&#39;, &#3=
9;common-linux&#39;, &#39;common-glibc&#39;, &#39;i586-linux&#39;, &#39;com=
mon&#39;]</font></div><div class=3D"gmail_default"><font face=3D"comic sans=
 ms, sans-serif">| DEBUG: Executing shell function do_compile</font></div><=
div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">| + cd=
 /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-s=
rini/4.14-r1/build</font></div><div class=3D"gmail_default"><font face=3D"c=
omic sans ms, sans-serif">| + do_compile</font></div><div class=3D"gmail_de=
fault"><font face=3D"comic sans ms, sans-serif">| + cd /home/srinivasan/yoc=
to_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/git</fon=
t></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-seri=
f">|=C2=A0</font></div><div class=3D"gmail_default"><font face=3D"comic san=
s ms, sans-serif">| + cd /home/srinivasan/yocto_session_ws_2/build/tmp/work=
/i586-poky-linux/linux-srini/4.14-r1/build</font></div><div class=3D"gmail_=
default"><font face=3D"comic sans ms, sans-serif">| + do_compile</font></di=
v><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">| +=
 cd /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linu=
x-srini/4.14-r1/git</font></div><div class=3D"gmail_default"><font face=3D"=
comic sans ms, sans-serif">| NOTE: make -j 4 mrproper</font></div><div clas=
s=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">| + oe_runmake=
 mrproper</font></div><div class=3D"gmail_default"><font face=3D"comic sans=
 ms, sans-serif">| + oe_runmake_call mrproper</font></div><div class=3D"gma=
il_default"><font face=3D"comic sans ms, sans-serif">| + bbnote make -j 4 m=
rproper</font></div><div class=3D"gmail_default"><font face=3D"comic sans m=
s, sans-serif">| + [ -p /home/srinivasan/yocto_session_ws_2/build/tmp/work/=
i586-poky-linux/linux-srini/4.14-r1/temp/fifo.7174 ]</font></div><div class=
=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">| + printf %b\0=
 bbnote make -j 4 mrproper</font></div><div class=3D"gmail_default"><font f=
ace=3D"comic sans ms, sans-serif">| + make -j 4 mrproper</font></div><div c=
lass=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0</fo=
nt></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-ser=
if">| + oe_runmake mrproper</font></div><div class=3D"gmail_default"><font =
face=3D"comic sans ms, sans-serif">| + oe_runmake_call mrproper</font></div=
><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">| + =
bbnote make -j 4 mrproper</font></div><div class=3D"gmail_default"><font fa=
ce=3D"comic sans ms, sans-serif">| + [ -p /home/srinivasan/yocto_session_ws=
_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/temp/fifo.7174 ]</fon=
t></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-seri=
f">| + printf %b\0 bbnote make -j 4 mrproper</font></div><div class=3D"gmai=
l_default"><font face=3D"comic sans ms, sans-serif">| + make -j 4 mrproper<=
/font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-=
serif">|=C2=A0 =C2=A0CLEAN=C2=A0 =C2=A0.config</font></div><div class=3D"gm=
ail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0</font></div><=
div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=C2=
=A0 =C2=A0CLEAN=C2=A0 =C2=A0.config</font></div><div class=3D"gmail_default=
"><font face=3D"comic sans ms, sans-serif">| + oe_runmake defconfig</font><=
/div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">=
| + oe_runmake_call defconfig</font></div><div class=3D"gmail_default"><fon=
t face=3D"comic sans ms, sans-serif">| + bbnote make -j 4 defconfig</font><=
/div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">=
|=C2=A0</font></div><div class=3D"gmail_default"><font face=3D"comic sans m=
s, sans-serif">| + oe_runmake defconfig</font></div><div class=3D"gmail_def=
ault"><font face=3D"comic sans ms, sans-serif">| + oe_runmake_call defconfi=
g</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, san=
s-serif">| + bbnote make -j 4 defconfig</font></div><div class=3D"gmail_def=
ault"><font face=3D"comic sans ms, sans-serif">| NOTE: make -j 4 defconfig<=
/font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-=
serif">| + [ -p /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-pok=
y-linux/linux-srini/4.14-r1/temp/fifo.7174 ]</font></div><div class=3D"gmai=
l_default"><font face=3D"comic sans ms, sans-serif">| + printf %b\0 bbnote =
make -j 4 defconfig</font></div><div class=3D"gmail_default"><font face=3D"=
comic sans ms, sans-serif">| + make -j 4 defconfig</font></div><div class=
=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0</font><=
/div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">=
| + [ -p /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux=
/linux-srini/4.14-r1/temp/fifo.7174 ]</font></div><div class=3D"gmail_defau=
lt"><font face=3D"comic sans ms, sans-serif">| + printf %b\0 bbnote make -j=
 4 defconfig</font></div><div class=3D"gmail_default"><font face=3D"comic s=
ans ms, sans-serif">| + make -j 4 defconfig</font></div><div class=3D"gmail=
_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0HOSTCC=C2=
=A0 scripts/basic/fixdep</font></div><div class=3D"gmail_default"><font fac=
e=3D"comic sans ms, sans-serif">|=C2=A0</font></div><div class=3D"gmail_def=
ault"><font face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0HOSTCC=C2=A0 s=
cripts/basic/fixdep</font></div><div class=3D"gmail_default"><font face=3D"=
comic sans ms, sans-serif">|=C2=A0 =C2=A0HOSTCC=C2=A0 scripts/kconfig/conf.=
o</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, san=
s-serif">|=C2=A0</font></div><div class=3D"gmail_default"><font face=3D"com=
ic sans ms, sans-serif">|=C2=A0 =C2=A0HOSTCC=C2=A0 scripts/kconfig/conf.o</=
font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-s=
erif">|=C2=A0 =C2=A0SHIPPED scripts/kconfig/zconf.tab.c</font></div><div cl=
ass=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0</fon=
t></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-seri=
f">|=C2=A0 =C2=A0SHIPPED scripts/kconfig/zconf.tab.c</font></div><div class=
=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0S=
HIPPED scripts/kconfig/zconf.lex.c</font></div><div class=3D"gmail_default"=
><font face=3D"comic sans ms, sans-serif">|=C2=A0</font></div><div class=3D=
"gmail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0SHIP=
PED scripts/kconfig/zconf.lex.c</font></div><div class=3D"gmail_default"><f=
ont face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0HOSTCC=C2=A0 scripts/k=
config/zconf.tab.o</font></div><div class=3D"gmail_default"><font face=3D"c=
omic sans ms, sans-serif">|=C2=A0</font></div><div class=3D"gmail_default">=
<font face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0HOSTCC=C2=A0 scripts=
/kconfig/zconf.tab.o</font></div><div class=3D"gmail_default"><font face=3D=
"comic sans ms, sans-serif">|=C2=A0 =C2=A0HOSTLD=C2=A0 scripts/kconfig/conf=
</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans=
-serif">|=C2=A0</font></div><div class=3D"gmail_default"><font face=3D"comi=
c sans ms, sans-serif">|=C2=A0 =C2=A0HOSTLD=C2=A0 scripts/kconfig/conf</fon=
t></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-seri=
f">| *** Default configuration is based on &#39;x86_64_defconfig&#39;</font=
></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif=
">|=C2=A0</font></div><div class=3D"gmail_default"><font face=3D"comic sans=
 ms, sans-serif">| *** Default configuration is based on &#39;x86_64_defcon=
fig&#39;</font></div><div class=3D"gmail_default"><font face=3D"comic sans =
ms, sans-serif">| #</font></div><div class=3D"gmail_default"><font face=3D"=
comic sans ms, sans-serif">| # configuration written to .config</font></div=
><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">| #<=
/font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-=
serif">|=C2=A0</font></div><div class=3D"gmail_default"><font face=3D"comic=
 sans ms, sans-serif">| #</font></div><div class=3D"gmail_default"><font fa=
ce=3D"comic sans ms, sans-serif">| # configuration written to .config</font=
></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif=
">| #</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms,=
 sans-serif">| + oe_runmake</font></div><div class=3D"gmail_default"><font =
face=3D"comic sans ms, sans-serif">| + oe_runmake_call</font></div><div cla=
ss=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">| + bbnote ma=
ke -j 4</font></div><div class=3D"gmail_default"><font face=3D"comic sans m=
s, sans-serif">| + [ -p</font></div><div class=3D"gmail_default"><font face=
=3D"comic sans ms, sans-serif">| + oe_runmake</font></div><div class=3D"gma=
il_default"><font face=3D"comic sans ms, sans-serif">| + oe_runmake_call</f=
ont></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-se=
rif">| + bbnote make -j 4</font></div><div class=3D"gmail_default"><font fa=
ce=3D"comic sans ms, sans-serif">| + [ -pNOTE: make -j 4</font></div><div c=
lass=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0 /ho=
me/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini=
/4.14-r1/temp/fifo.7174 ]</font></div><div class=3D"gmail_default"><font fa=
ce=3D"comic sans ms, sans-serif">| + printf %b\0 bbnote make -j 4</font></d=
iv><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">| =
+ make -j 4</font></div><div class=3D"gmail_default"><font face=3D"comic sa=
ns ms, sans-serif">|=C2=A0</font></div><div class=3D"gmail_default"><font f=
ace=3D"comic sans ms, sans-serif">|=C2=A0 /home/srinivasan/yocto_session_ws=
_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/temp/fifo.7174 ]</fon=
t></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-seri=
f">| + printf %b\0 bbnote make -j 4</font></div><div class=3D"gmail_default=
"><font face=3D"comic sans ms, sans-serif">| + make -j 4</font></div><div c=
lass=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">| scripts/k=
config/conf=C2=A0 --silentoldconfig Kconfig</font></div><div class=3D"gmail=
_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0</font></div><div=
 class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">| scripts=
/kconfig/conf=C2=A0 --silentoldconfig Kconfig</font></div><div class=3D"gma=
il_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0SYSTBL=
=C2=A0 arch/x86/entry/syscalls/../../include/generated/asm/syscalls_32.h</f=
ont></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-se=
rif">|=C2=A0</font></div><div class=3D"gmail_default"><font face=3D"comic s=
ans ms, sans-serif">|=C2=A0 =C2=A0SYSTBL=C2=A0 arch/x86/entry/syscalls/../.=
./include/generated/asm/syscalls_32.h</font></div><div class=3D"gmail_defau=
lt"><font face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0SYSHDR=C2=A0 arc=
h/x86/entry/syscalls/../../include/generated/asm/unistd_32_ia32.h</font></d=
iv><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=
=C2=A0</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms=
, sans-serif">|=C2=A0 =C2=A0SYSHDR=C2=A0 arch/x86/entry/syscalls/../../incl=
ude/generated/asm/unistd_32_ia32.h</font></div><div class=3D"gmail_default"=
><font face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0SYSHDR=C2=A0 arch/x=
86/entry/syscalls/../../include/generated/asm/unistd_64_x32.h</font></div><=
div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=C2=
=A0</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, s=
ans-serif">|=C2=A0 =C2=A0SYSHDR=C2=A0 arch/x86/entry/syscalls/../../include=
/generated/asm/unistd_64_x32.h</font></div><div class=3D"gmail_default"><fo=
nt face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0CHK=C2=A0 =C2=A0 =C2=A0=
include/config/kernel.release</font></div><div class=3D"gmail_default"><fon=
t face=3D"comic sans ms, sans-serif">|=C2=A0</font></div><div class=3D"gmai=
l_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0CHK=C2=A0=
 =C2=A0 =C2=A0include/config/kernel.release</font></div><div class=3D"gmail=
_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0SYSTBL=C2=
=A0 arch/x86/entry/syscalls/../../include/generated/asm/syscalls_64.h</font=
></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif=
">|=C2=A0</font></div><div class=3D"gmail_default"><font face=3D"comic sans=
 ms, sans-serif">|=C2=A0 =C2=A0SYSTBL=C2=A0 arch/x86/entry/syscalls/../../i=
nclude/generated/asm/syscalls_64.h</font></div><div class=3D"gmail_default"=
><font face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0SYSHDR=C2=A0 arch/x=
86/entry/syscalls/../../include/generated/uapi/asm/unistd_32.h</font></div>=
<div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=C2=
=A0</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, s=
ans-serif">|=C2=A0 =C2=A0SYSHDR=C2=A0 arch/x86/entry/syscalls/../../include=
/generated/uapi/asm/unistd_32.h</font></div><div class=3D"gmail_default"><f=
ont face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0SYSHDR=C2=A0 arch/x86/=
entry/syscalls/../../include/generated/uapi/asm/unistd_64.h</font></div><di=
v class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0<=
/font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-=
serif">|=C2=A0 =C2=A0SYSHDR=C2=A0 arch/x86/entry/syscalls/../../include/gen=
erated/uapi/asm/unistd_64.h</font></div><div class=3D"gmail_default"><font =
face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0SYSHDR=C2=A0 arch/x86/entr=
y/syscalls/../../include/generated/uapi/asm/unistd_x32.h</font></div><div c=
lass=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0</fo=
nt></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-ser=
if">|=C2=A0 =C2=A0SYSHDR=C2=A0 arch/x86/entry/syscalls/../../include/genera=
ted/uapi/asm/unistd_x32.h</font></div><div class=3D"gmail_default"><font fa=
ce=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0CHK=C2=A0 =C2=A0 =C2=A0inclu=
de/generated/uapi/linux/version.h</font></div><div class=3D"gmail_default">=
<font face=3D"comic sans ms, sans-serif">|=C2=A0</font></div><div class=3D"=
gmail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0CHK=
=C2=A0 =C2=A0 =C2=A0include/generated/uapi/linux/version.h</font></div><div=
 class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0 =
=C2=A0UPD=C2=A0 =C2=A0 =C2=A0include/generated/uapi/linux/version.h</font><=
/div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">=
|=C2=A0</font></div><div class=3D"gmail_default"><font face=3D"comic sans m=
s, sans-serif">|=C2=A0 =C2=A0UPD=C2=A0 =C2=A0 =C2=A0include/generated/uapi/=
linux/version.h</font></div><div class=3D"gmail_default"><font face=3D"comi=
c sans ms, sans-serif">|=C2=A0 =C2=A0UPD=C2=A0 =C2=A0 =C2=A0include/config/=
kernel.release</font></div><div class=3D"gmail_default"><font face=3D"comic=
 sans ms, sans-serif">|=C2=A0</font></div><div class=3D"gmail_default"><fon=
t face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0UPD=C2=A0 =C2=A0 =C2=A0i=
nclude/config/kernel.release</font></div><div class=3D"gmail_default"><font=
 face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0HOSTCC=C2=A0 arch/x86/too=
ls/relocs_32.o</font></div><div class=3D"gmail_default"><font face=3D"comic=
 sans ms, sans-serif">|=C2=A0</font></div><div class=3D"gmail_default"><fon=
t face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0HOSTCC=C2=A0 arch/x86/to=
ols/relocs_32.o</font></div><div class=3D"gmail_default"><font face=3D"comi=
c sans ms, sans-serif">|=C2=A0 =C2=A0HOSTCC=C2=A0 arch/x86/tools/relocs_64.=
o</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, san=
s-serif">|=C2=A0</font></div><div class=3D"gmail_default"><font face=3D"com=
ic sans ms, sans-serif">|=C2=A0 =C2=A0HOSTCC=C2=A0 arch/x86/tools/relocs_64=
.o</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sa=
ns-serif">|=C2=A0 =C2=A0HOSTCC=C2=A0 arch/x86/tools/relocs_common.o</font><=
/div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">=
|=C2=A0</font></div><div class=3D"gmail_default"><font face=3D"comic sans m=
s, sans-serif">|=C2=A0 =C2=A0HOSTCC=C2=A0 arch/x86/tools/relocs_common.o</f=
ont></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-se=
rif">|=C2=A0 =C2=A0WRAP=C2=A0 =C2=A0 arch/x86/include/generated/asm/clkdev.=
h</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, san=
s-serif">|=C2=A0</font></div><div class=3D"gmail_default"><font face=3D"com=
ic sans ms, sans-serif">|=C2=A0 =C2=A0WRAP=C2=A0 =C2=A0 arch/x86/include/ge=
nerated/asm/clkdev.h</font></div><div class=3D"gmail_default"><font face=3D=
"comic sans ms, sans-serif">|=C2=A0 =C2=A0WRAP=C2=A0 =C2=A0 arch/x86/includ=
e/generated/asm/dma-contiguous.h</font></div><div class=3D"gmail_default"><=
font face=3D"comic sans ms, sans-serif">|=C2=A0</font></div><div class=3D"g=
mail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0WRAP=
=C2=A0 =C2=A0 arch/x86/include/generated/asm/dma-contiguous.h</font></div><=
div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=C2=
=A0 =C2=A0WRAP=C2=A0 =C2=A0 arch/x86/include/generated/asm/early_ioremap.h<=
/font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-=
serif">|=C2=A0</font></div><div class=3D"gmail_default"><font face=3D"comic=
 sans ms, sans-serif">|=C2=A0 =C2=A0WRAP=C2=A0 =C2=A0 arch/x86/include/gene=
rated/asm/early_ioremap.h</font></div><div class=3D"gmail_default"><font fa=
ce=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0WRAP=C2=A0 =C2=A0 arch/x86/i=
nclude/generated/asm/mcs_spinlock.h</font></div><div class=3D"gmail_default=
"><font face=3D"comic sans ms, sans-serif">|=C2=A0</font></div><div class=
=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0W=
RAP=C2=A0 =C2=A0 arch/x86/include/generated/asm/mcs_spinlock.h</font></div>=
<div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=C2=
=A0 =C2=A0WRAP=C2=A0 =C2=A0 arch/x86/include/generated/asm/mm-arch-hooks.h<=
/font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-=
serif">|=C2=A0</font></div><div class=3D"gmail_default"><font face=3D"comic=
 sans ms, sans-serif">|=C2=A0 =C2=A0WRAP=C2=A0 =C2=A0 arch/x86/include/gene=
rated/asm/mm-arch-hooks.h</font></div><div class=3D"gmail_default"><font fa=
ce=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0CHK=C2=A0 =C2=A0 =C2=A0inclu=
de/generated/utsrelease.h</font></div><div class=3D"gmail_default"><font fa=
ce=3D"comic sans ms, sans-serif">|=C2=A0</font></div><div class=3D"gmail_de=
fault"><font face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0CHK=C2=A0 =C2=
=A0 =C2=A0include/generated/utsrelease.h</font></div><div class=3D"gmail_de=
fault"><font face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0UPD=C2=A0 =C2=
=A0 =C2=A0include/generated/utsrelease.h</font></div><div class=3D"gmail_de=
fault"><font face=3D"comic sans ms, sans-serif">|=C2=A0</font></div><div cl=
ass=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=
=A0UPD=C2=A0 =C2=A0 =C2=A0include/generated/utsrelease.h</font></div><div c=
lass=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=
=A0CC=C2=A0 =C2=A0 =C2=A0 scripts/mod/empty.o</font></div><div class=3D"gma=
il_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0</font></div><d=
iv class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0=
 =C2=A0CC=C2=A0 =C2=A0 =C2=A0 scripts/mod/empty.o</font></div><div class=3D=
"gmail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0HOST=
CC=C2=A0 scripts/mod/mk_elfconfig</font></div><div class=3D"gmail_default">=
<font face=3D"comic sans ms, sans-serif">|=C2=A0</font></div><div class=3D"=
gmail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0HOSTC=
C=C2=A0 scripts/mod/mk_elfconfig</font></div><div class=3D"gmail_default"><=
font face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0HOSTLD=C2=A0 arch/x86=
/tools/relocs</font></div><div class=3D"gmail_default"><font face=3D"comic =
sans ms, sans-serif">|=C2=A0</font></div><div class=3D"gmail_default"><font=
 face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0HOSTLD=C2=A0 arch/x86/too=
ls/relocs</font></div><div class=3D"gmail_default"><font face=3D"comic sans=
 ms, sans-serif">|=C2=A0 =C2=A0CC=C2=A0 =C2=A0 =C2=A0 scripts/mod/devicetab=
le-offsets.s</font></div><div class=3D"gmail_default"><font face=3D"comic s=
ans ms, sans-serif">|=C2=A0</font></div><div class=3D"gmail_default"><font =
face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0CC=C2=A0 =C2=A0 =C2=A0 scr=
ipts/mod/devicetable-offsets.s</font></div><div class=3D"gmail_default"><fo=
nt face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0MKELF=C2=A0 =C2=A0scrip=
ts/mod/elfconfig.h</font></div><div class=3D"gmail_default"><font face=3D"c=
omic sans ms, sans-serif">|=C2=A0</font></div><div class=3D"gmail_default">=
<font face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0MKELF=C2=A0 =C2=A0sc=
ripts/mod/elfconfig.h</font></div><div class=3D"gmail_default"><font face=
=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0CHK=C2=A0 =C2=A0 =C2=A0scripts=
/mod/devicetable-offsets.h</font></div><div class=3D"gmail_default"><font f=
ace=3D"comic sans ms, sans-serif">|=C2=A0</font></div><div class=3D"gmail_d=
efault"><font face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0CHK=C2=A0 =
=C2=A0 =C2=A0scripts/mod/devicetable-offsets.h</font></div><div class=3D"gm=
ail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0UPD=C2=
=A0 =C2=A0 =C2=A0scripts/mod/devicetable-offsets.h</font></div><div class=
=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0</font><=
/div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">=
|=C2=A0 =C2=A0UPD=C2=A0 =C2=A0 =C2=A0scripts/mod/devicetable-offsets.h</fon=
t></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-seri=
f">|=C2=A0 =C2=A0HOSTCC=C2=A0 scripts/mod/sumversion.o</font></div><div cla=
ss=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0</font=
></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif=
">|=C2=A0 =C2=A0HOSTCC=C2=A0 scripts/mod/sumversion.o</font></div><div clas=
s=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0=
HOSTCC=C2=A0 scripts/selinux/genheaders/genheaders</font></div><div class=
=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0</font><=
/div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">=
|=C2=A0 =C2=A0HOSTCC=C2=A0 scripts/selinux/genheaders/genheaders</font></di=
v><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=
=C2=A0 =C2=A0HOSTCC=C2=A0 scripts/selinux/mdp/mdp</font></div><div class=3D=
"gmail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0</font></di=
v><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=
=C2=A0 =C2=A0HOSTCC=C2=A0 scripts/selinux/mdp/mdp</font></div><div class=3D=
"gmail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0CC=
=C2=A0 =C2=A0 =C2=A0 kernel/bounds.s</font></div><div class=3D"gmail_defaul=
t"><font face=3D"comic sans ms, sans-serif">|=C2=A0</font></div><div class=
=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0C=
C=C2=A0 =C2=A0 =C2=A0 kernel/bounds.s</font></div><div class=3D"gmail_defau=
lt"><font face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0HOSTCC=C2=A0 scr=
ipts/kallsyms</font></div><div class=3D"gmail_default"><font face=3D"comic =
sans ms, sans-serif">|=C2=A0</font></div><div class=3D"gmail_default"><font=
 face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0HOSTCC=C2=A0 scripts/kall=
syms</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, =
sans-serif">|=C2=A0 =C2=A0HOSTCC=C2=A0 scripts/mod/modpost.o</font></div><d=
iv class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0=
</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans=
-serif">|=C2=A0 =C2=A0HOSTCC=C2=A0 scripts/mod/modpost.o</font></div><div c=
lass=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=
=A0CHK=C2=A0 =C2=A0 =C2=A0include/generated/timeconst.h</font></div><div cl=
ass=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0</fon=
t></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-seri=
f">|=C2=A0 =C2=A0CHK=C2=A0 =C2=A0 =C2=A0include/generated/timeconst.h</font=
></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif=
"><b>| /bin/sh: 1: bc: not found</b></font></div><div class=3D"gmail_defaul=
t"><font face=3D"comic sans ms, sans-serif"><b>|=C2=A0</b></font></div><div=
 class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"><b>| /bin=
/sh: 1: bc: not found</b></font></div><div class=3D"gmail_default"><font fa=
ce=3D"comic sans ms, sans-serif"><b>| make[1]: *** [include/generated/timec=
onst.h] Error 127</b></font></div><div class=3D"gmail_default"><font face=
=3D"comic sans ms, sans-serif"><b>| make: *** [prepare0] Error 2</b></font>=
</div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"=
><b>| make: *** Waiting for unfinished jobs....</b></font></div><div class=
=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"><b>|=C2=A0</b><=
/font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-=
serif"><b>| make[1]: *** [include/generated/timeconst.h] Error 127</b></fon=
t></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-seri=
f"><b>| make: *** [prepare0] Error 2</b></font></div><div class=3D"gmail_de=
fault"><font face=3D"comic sans ms, sans-serif"><b>| make: *** Waiting for =
unfinished jobs....</b></font></div><div class=3D"gmail_default"><font face=
=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0HOSTCC=C2=A0 scripts/pnmtologo=
</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans=
-serif">|=C2=A0</font></div><div class=3D"gmail_default"><font face=3D"comi=
c sans ms, sans-serif">|=C2=A0 =C2=A0HOSTCC=C2=A0 scripts/pnmtologo</font><=
/div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">=
|=C2=A0 =C2=A0HOSTCC=C2=A0 scripts/conmakehash</font></div><div class=3D"gm=
ail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0</font></div><=
div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=C2=
=A0 =C2=A0HOSTCC=C2=A0 scripts/conmakehash</font></div><div class=3D"gmail_=
default"><font face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0HOSTCC=C2=
=A0 scripts/sortextable</font></div><div class=3D"gmail_default"><font face=
=3D"comic sans ms, sans-serif">|=C2=A0</font></div><div class=3D"gmail_defa=
ult"><font face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0HOSTCC=C2=A0 sc=
ripts/sortextable</font></div><div class=3D"gmail_default"><font face=3D"co=
mic sans ms, sans-serif">|=C2=A0 =C2=A0HOSTCC=C2=A0 scripts/mod/file2alias.=
o</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, san=
s-serif">|=C2=A0</font></div><div class=3D"gmail_default"><font face=3D"com=
ic sans ms, sans-serif">|=C2=A0 =C2=A0HOSTCC=C2=A0 scripts/mod/file2alias.o=
</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans=
-serif">|=C2=A0 =C2=A0HOSTLD=C2=A0 scripts/mod/modpost</font></div><div cla=
ss=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0</font=
></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif=
">|=C2=A0 =C2=A0HOSTLD=C2=A0 scripts/mod/modpost</font></div><div class=3D"=
gmail_default"><font face=3D"comic sans ms, sans-serif">| + die oe_runmake =
failed</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms=
, sans-serif">| + bbfatal_log oe_runmake failed</font></div><div class=3D"g=
mail_default"><font face=3D"comic sans ms, sans-serif">| + [ -p /home/srini=
vasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1=
/temp/fifo.7174 ]</font></div><div class=3D"gmail_default"><font face=3D"co=
mic sans ms, sans-serif">| + printf %b\0 bbfatal_log oe_runmake failed</fon=
t></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-seri=
f">| + exit 1</font></div><div class=3D"gmail_default"><font face=3D"comic =
sans ms, sans-serif">| + bb_exit_handler</font></div><div class=3D"gmail_de=
fault"><font face=3D"comic sans ms, sans-serif">| + ret=3D1</font></div><di=
v class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">| + echo=
 WARNING: exit code 1 from a shell command.</font></div><div class=3D"gmail=
_default"><font face=3D"comic sans ms, sans-serif">| WARNING: exit code 1 f=
rom a shell command.</font></div><div class=3D"gmail_default"><font face=3D=
"comic sans ms, sans-serif">| + exit 1</font></div><div class=3D"gmail_defa=
ult"><font face=3D"comic sans ms, sans-serif">|=C2=A0</font></div><div clas=
s=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">| + die oe_run=
make failed</font></div><div class=3D"gmail_default"><font face=3D"comic sa=
ns ms, sans-serif">| + bbfatal_log oe_runmake failed</font></div><div class=
=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">| + [ -p /home/=
srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.=
14-r1/temp/fifo.7174 ]</font></div><div class=3D"gmail_default"><font face=
=3D"comic sans ms, sans-serif">| + printf %b\0 bbfatal_log oe_runmake faile=
d</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, san=
s-serif">| + exit 1</font></div><div class=3D"gmail_default"><font face=3D"=
comic sans ms, sans-serif">| + bb_exit_handler</font></div><div class=3D"gm=
ail_default"><font face=3D"comic sans ms, sans-serif">| + ret=3D1</font></d=
iv><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">| =
+ echo WARNING: exit code 1 from a shell command.</font></div><div class=3D=
"gmail_default"><font face=3D"comic sans ms, sans-serif">| WARNING: exit co=
de 1 from a shell command.</font></div><div class=3D"gmail_default"><font f=
ace=3D"comic sans ms, sans-serif">| + exit 1</font></div><div class=3D"gmai=
l_default"><font face=3D"comic sans ms, sans-serif"><b>| ERROR: oe_runmake =
failed</b></font></div><div class=3D"gmail_default"><font face=3D"comic san=
s ms, sans-serif"><b>| ERROR: Function failed: do_compile (log file is loca=
ted at /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/l=
inux-srini/4.14-r1/temp/log.do_compile.7174)</b></font></div><div class=3D"=
gmail_default"><font face=3D"comic sans ms, sans-serif"><b>ERROR: Task (/ho=
me/srinivasan/yocto_session_ws_2/poky/meta/recipes-kernel/linux/linux-srini=
_4.14.bb:do_compile) failed with exit code &#39;1&#39;</b></font></div><div=
 class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"><b>NOTE: =
Tasks Summary: Attempted 312 tasks of which 306 didn&#39;t need to be rerun=
 and 1 failed.</b></font></div><div class=3D"gmail_default"><font face=3D"c=
omic sans ms, sans-serif"><br></font></div><div class=3D"gmail_default"><fo=
nt face=3D"comic sans ms, sans-serif">Summary: 1 task failed:</font></div><=
div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">=C2=A0=
 /home/srinivasan/yocto_session_ws_2/poky/meta/recipes-kernel/linux/linux-s=
rini_4.14.bb:do_compile</font></div><div class=3D"gmail_default"><font face=
=3D"comic sans ms, sans-serif">Summary: There was 1 WARNING message shown.<=
/font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-=
serif">Summary: There were 2 ERROR messages shown, returning a non-zero exi=
t code.</font></div><div class=3D"gmail_default"><font face=3D"comic sans m=
s, sans-serif">srinivasan@srinivasan-UX305UA:~/yocto_session_ws_2/build$</f=
ont></div></div></div></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr">On Wed, Sep 5, 2018 at 5:11 AM srinivasan &lt;<a href=3D"mailto:sr=
inivasan.rns@gmail.com">srinivasan.rns@gmail.com</a>&gt; wrote:<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px =
#ccc solid;padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><div><div><f=
ont face=3D"comic sans ms, sans-serif">Dear Technical team,</font></div><di=
v><font face=3D"comic sans ms, sans-serif"><br></font></div><div><font face=
=3D"comic sans ms, sans-serif">As am newbie to poky/yocto build system, I a=
m facing the issue with the error log shown below, in adding the new kernel=
 &quot;<a href=3D"http://git.kernel.org/pub/scm/linux/kernel/git/torvalds/l=
inux.git" target=3D"_blank">git.kernel.org/pub/scm/linux/kernel/git/torvald=
s/linux.git</a>&quot; with the branch &quot;KBRANCH =3D &quot;v4.14&quot;, =
I have built for &quot;qemux86&quot;</font></div><div><font face=3D"comic s=
ans ms, sans-serif"><br></font></div><div><font face=3D"comic sans ms, sans=
-serif">Could you please do the needful in resolving the below error and ge=
t my kernel get successfully compiled, as am stuck with this from past few =
days</font></div><div><font face=3D"comic sans ms, sans-serif"><br></font><=
/div><div><font face=3D"comic sans ms, sans-serif"><b>1. Ubuntu version use=
d 14.04</b></font></div><div><font face=3D"comic sans ms, sans-serif"><br><=
/font></div><div><font face=3D"comic sans ms, sans-serif"><b>2. Poky Distro=
 version</b></font></div><div><font face=3D"comic sans ms, sans-serif"><br>=
</font></div><div><font face=3D"comic sans ms, sans-serif">DISTRO =3D &quot=
;poky&quot;</font></div><div><font face=3D"comic sans ms, sans-serif">DISTR=
O_NAME =3D &quot;Poky (Yocto Project Reference Distro)&quot;</font></div><d=
iv><font face=3D"comic sans ms, sans-serif">DISTRO_VERSION =3D &quot;2.5+sn=
apshot-${DATE}&quot;</font></div><div><font face=3D"comic sans ms, sans-ser=
if"><br></font></div><div><font face=3D"comic sans ms, sans-serif"><b>3.Rec=
ipe file is attached.</b></font></div><div><font face=3D"comic sans ms, san=
s-serif"><br></font></div><div><font face=3D"comic sans ms, sans-serif"><b>=
4. Logs</b></font></div><div><font face=3D"comic sans ms, sans-serif">:~/yo=
cto_session_ws_2/build$ bitbake virtual/kernel -v=C2=A0</font></div><div><f=
ont face=3D"comic sans ms, sans-serif">WARNING: Host distribution &quot;ubu=
ntu-14.04&quot; has not been validated with this version of the build syste=
m; you may possibly experience unexpected failures. It is recommended that =
you use a tested distribution.</font></div><div><font face=3D"comic sans ms=
, sans-serif">Loading cache: 100% |########################################=
###########################################################################=
################################| Time: 0:00:00</font></div><div><font face=
=3D"comic sans ms, sans-serif">Loaded 1266 entries from dependency cache.</=
font></div><div><font face=3D"comic sans ms, sans-serif">NOTE: selecting li=
nux-srini to satisfy virtual/kernel due to PREFERRED_PROVIDERS</font></div>=
<div><font face=3D"comic sans ms, sans-serif">NOTE: Resolving any missing t=
ask queue dependencies</font></div><div><font face=3D"comic sans ms, sans-s=
erif">NOTE: selecting binutils-cross-i586 to satisfy virtual/i586-poky-linu=
x-binutils due to PREFERRED_PROVIDERS</font></div><div><font face=3D"comic =
sans ms, sans-serif">NOTE: selecting pseudo-native to satisfy virtual/faker=
oot-native due to PREFERRED_PROVIDERS</font></div><div><font face=3D"comic =
sans ms, sans-serif">NOTE: selecting linux-srini to satisfy runtime linux-s=
rini due to PREFERRED_PROVIDER_virtual/kernel =3D linux-srini</font></div><=
div><font face=3D"comic sans ms, sans-serif">NOTE: selecting linux-srini to=
 satisfy runtime linux-srini-dev due to PREFERRED_PROVIDER_virtual/kernel =
=3D linux-srini</font></div><div><font face=3D"comic sans ms, sans-serif">N=
OTE: selecting openssl-native to satisfy openssl-native due to PREFERRED_PR=
OVIDERS</font></div><div><font face=3D"comic sans ms, sans-serif">NOTE: sel=
ecting pkgconfig-native to satisfy pkgconfig-native due to PREFERRED_PROVID=
ERS</font></div><div><font face=3D"comic sans ms, sans-serif"><br></font></=
div><div><font face=3D"comic sans ms, sans-serif">Build Configuration:</fon=
t></div><div><font face=3D"comic sans ms, sans-serif">BB_VERSION=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;1.39.1&quot;</font></div><div><fon=
t face=3D"comic sans ms, sans-serif">BUILD_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =3D &quot;x86_64-linux&quot;</font></div><div><font face=3D"c=
omic sans ms, sans-serif">NATIVELSBSTRING=C2=A0 =C2=A0 =C2=A0 =3D &quot;uni=
versal-4.8&quot;</font></div><div><font face=3D"comic sans ms, sans-serif">=
TARGET_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;i586-poky-linu=
x&quot;</font></div><div><font face=3D"comic sans ms, sans-serif">MACHINE=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;qemux86&quot;</f=
ont></div><div><font face=3D"comic sans ms, sans-serif">DISTRO=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;poky&quot;</font></div>=
<div><font face=3D"comic sans ms, sans-serif">DISTRO_VERSION=C2=A0 =C2=A0 =
=C2=A0 =C2=A0=3D &quot;2.5+snapshot-20180904&quot;</font></div><div><font f=
ace=3D"comic sans ms, sans-serif">TUNE_FEATURES=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=3D &quot;m32 i586&quot;</font></div><div><font face=3D"comic sans ms, sans=
-serif">TARGET_FPU=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;&quot;=
</font></div><div><font face=3D"comic sans ms, sans-serif">meta=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</font></div><div><font=
 face=3D"comic sans ms, sans-serif">meta-poky=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0=C2=A0</font></div><div><font face=3D"comic sans ms, sans-seri=
f">meta-yocto-bsp=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;master:4434777705cf49=
300a7d2c9ca8fa3080d551d795&quot;</font></div><div><font face=3D"comic sans =
ms, sans-serif"><br></font></div><div><font face=3D"comic sans ms, sans-ser=
if">NOTE: Marking Active Tasks#############################################=
###############=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0| ETA:=C2=A0 0:00:00</font></div><div><font face=3D"comic sans=
 ms, sans-serif">NOTE: Pruned 509 inactive tasks, 322 left#################=
#############################=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 | ETA:=C2=A0 0:00:00</font></div><div><font face=3D"co=
mic sans ms, sans-serif">NOTE: Assign Weightings</font></div><div><font fac=
e=3D"comic sans ms, sans-serif">NOTE: Compute totals (have 1 endpoint(s))##=
############################################=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | ETA:=C2=A0 0:00:00</font></div><div><f=
ont face=3D"comic sans ms, sans-serif">Initialising tasks: 100% |##########=
###########################################################################=
##########################################################| Time: 0:00:00</=
font></div><div><font face=3D"comic sans ms, sans-serif">Sstate summary: Wa=
nted 6 Found 1 Missed 5 Current 38 (16% match, 88% complete)</font></div><d=
iv><font face=3D"comic sans ms, sans-serif">NOTE: Executing SetScene Tasks<=
/font></div><div><font face=3D"comic sans ms, sans-serif">+ cd /home/sriniv=
asan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/=
sstate-install-populate_lic/</font></div><div><font face=3D"comic sans ms, =
sans-serif">+ sstate_unpack_package</font></div><div><font face=3D"comic sa=
ns ms, sans-serif">+ tar -xvzf /home/srinivasan/yocto_session_ws_2/build/ss=
tate-cache/7f/sstate:linux-srini::4.14:r1::3:7ffa068910d303281a8c5c13f8661a=
e6_populate_lic.tgz</font></div><div><font face=3D"comic sans ms, sans-seri=
f"><br></font></div><div><font face=3D"comic sans ms, sans-serif">license-d=
estdir/</font></div><div><font face=3D"comic sans ms, sans-serif"><br></fon=
t></div><div><font face=3D"comic sans ms, sans-serif">license-destdir/linux=
-srini/</font></div><div><font face=3D"comic sans ms, sans-serif">license-d=
estdir/linux-srini/recipeinfo</font></div><div><font face=3D"comic sans ms,=
 sans-serif">license-destdir/linux-srini/generic_GPLv2</font></div><div><fo=
nt face=3D"comic sans ms, sans-serif">license-destdir/linux-srini/COPYING</=
font></div><div><font face=3D"comic sans ms, sans-serif"><br></font></div><=
div><font face=3D"comic sans ms, sans-serif">+ [ -w /home/srinivasan/yocto_=
session_ws_2/build/sstate-cache/7f/sstate:linux-srini::4.14:r1::3:7ffa06891=
0d303281a8c5c13f8661ae6_populate_lic.tgz.siginfo ]</font></div><div><font f=
ace=3D"comic sans ms, sans-serif"><br></font></div><div><font face=3D"comic=
 sans ms, sans-serif">+ [ -h /home/srinivasan/yocto_session_ws_2/build/ssta=
te-cache/7f/sstate:linux-srini::4.14:r1::3:7ffa068910d303281a8c5c13f8661ae6=
_populate_lic.tgz.siginfo ]</font></div><div><font face=3D"comic sans ms, s=
ans-serif">+ [ ! -w /home/srinivasan/yocto_session_ws_2/build/sstate-cache/=
7f/sstate:linux-srini::4.14:r1::3:7ffa068910d303281a8c5c13f8661ae6_populate=
_lic.tgz ]</font></div><div><font face=3D"comic sans ms, sans-serif">+ touc=
h --no-dereference /home/srinivasan/yocto_session_ws_2/build/sstate-cache/7=
f/sstate:linux-srini::4.14:r1::3:7ffa068910d303281a8c5c13f8661ae6_populate_=
lic.tgz</font></div><div><font face=3D"comic sans ms, sans-serif"><br></fon=
t></div><div><font face=3D"comic sans ms, sans-serif">+ [ ! -w /home/sriniv=
asan/yocto_session_ws_2/build/sstate-cache/7f/sstate:linux-srini::4.14:r1::=
3:7ffa068910d303281a8c5c13f8661ae6_populate_lic.tgz.sig ]</font></div><div>=
<font face=3D"comic sans ms, sans-serif"><br></font></div><div><font face=
=3D"comic sans ms, sans-serif">+ [ ! -w /home/srinivasan/yocto_session_ws_2=
/build/sstate-cache/7f/sstate:linux-srini::4.14:r1::3:7ffa068910d303281a8c5=
c13f8661ae6_populate_lic.tgz.siginfo ]</font></div><div><font face=3D"comic=
 sans ms, sans-serif">+ [ ! -e /home/srinivasan/yocto_session_ws_2/build/ss=
tate-cache/7f/sstate:linux-srini::4.14:r1::3:7ffa068910d303281a8c5c13f8661a=
e6_populate_lic.tgz.siginfo ]</font></div><div><font face=3D"comic sans ms,=
 sans-serif">+ touch --no-dereference /home/srinivasan/yocto_session_ws_2/b=
uild/sstate-cache/7f/sstate:linux-srini::4.14:r1::3:7ffa068910d303281a8c5c1=
3f8661ae6_populate_lic.tgz.siginfo</font></div><div><font face=3D"comic san=
s ms, sans-serif"><br></font></div><div><font face=3D"comic sans ms, sans-s=
erif">+ ret=3D0</font></div><div><font face=3D"comic sans ms, sans-serif">+=
 trap=C2=A0 0</font></div><div><font face=3D"comic sans ms, sans-serif">+ e=
xit 0</font></div><div><font face=3D"comic sans ms, sans-serif"><br></font>=
</div><div><font face=3D"comic sans ms, sans-serif">NOTE: Executing RunQueu=
e Tasks</font></div><div><font face=3D"comic sans ms, sans-serif">NOTE: lin=
ux-srini-4.14-r1 do_fetch: Direct dependencies are []</font></div><div><fon=
t face=3D"comic sans ms, sans-serif">NOTE: linux-srini-4.14-r1 do_fetch: In=
stalled into sysroot: []</font></div><div><font face=3D"comic sans ms, sans=
-serif">NOTE: linux-srini-4.14-r1 do_fetch: Skipping as already exists in s=
ysroot: []</font></div><div><font face=3D"comic sans ms, sans-serif">NOTE: =
linux-srini-4.14-r1 do_prepare_recipe_sysroot: Direct dependencies are [&#3=
9;virtual:native:/home/srinivasan/yocto_session_ws_2/poky/meta/recipes-devt=
ools/automake/automake_1.16.1.bb:do_populate_sysroot&#39;, &#39;/home/srini=
vasan/yocto_session_ws_2/poky/meta/recipes-devtools/libtool/libtool-native_=
2.4.6.bb:do_populate_sysroot&#39;, &#39;virtual:native:/home/srinivasan/yoc=
to_session_ws_2/poky/meta/recipes-devtools/gnu-config/gnu-config_git.bb:do_=
populate_sysroot&#39;, &#39;virtual:native:/home/srinivasan/yocto_session_w=
s_2/poky/meta/recipes-devtools/autoconf/autoconf_2.69.bb:do_populate_sysroo=
t&#39;]</font></div><div><font face=3D"comic sans ms, sans-serif">NOTE: lin=
ux-srini-4.14-r1 do_prepare_recipe_sysroot: Installed into sysroot: [&#39;a=
utomake-native&#39;, &#39;libtool-native&#39;, &#39;gnu-config-native&#39;,=
 &#39;autoconf-native&#39;, &#39;quilt-native&#39;, &#39;m4-native&#39;, &#=
39;texinfo-dummy-native&#39;]</font></div><div><font face=3D"comic sans ms,=
 sans-serif">NOTE: linux-srini-4.14-r1 do_prepare_recipe_sysroot: Skipping =
as already exists in sysroot: []</font></div><div><font face=3D"comic sans =
ms, sans-serif">NOTE: linux-srini-4.14-r1 do_patch: Direct dependencies are=
 [&#39;/home/srinivasan/yocto_session_ws_2/poky/meta/recipes-devtools/quilt=
/quilt-native_0.65.bb:do_populate_sysroot&#39;]</font></div><div><font face=
=3D"comic sans ms, sans-serif">NOTE: linux-srini-4.14-r1 do_patch: Installe=
d into sysroot: []</font></div><div><font face=3D"comic sans ms, sans-serif=
">NOTE: linux-srini-4.14-r1 do_patch: Skipping as already exists in sysroot=
: [&#39;quilt-native&#39;]</font></div><div><font face=3D"comic sans ms, sa=
ns-serif">+ autotools_preconfigure</font></div><div><font face=3D"comic san=
s ms, sans-serif">+ [ -n /home/srinivasan/yocto_session_ws_2/build/tmp/work=
/i586-poky-linux/linux-srini/4.14-r1/configure.sstate -a -e /home/srinivasa=
n/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/con=
figure.sstate ]</font></div><div><font face=3D"comic sans ms, sans-serif">+=
 ret=3D0</font></div><div><font face=3D"comic sans ms, sans-serif">+ trap=
=C2=A0 0</font></div><div><font face=3D"comic sans ms, sans-serif">+ exit 0=
</font></div><div><font face=3D"comic sans ms, sans-serif"><br></font></div=
><div><font face=3D"comic sans ms, sans-serif">+ cd /home/srinivasan/yocto_=
session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/build</font=
></div><div><font face=3D"comic sans ms, sans-serif">+ do_configure</font><=
/div><div><font face=3D"comic sans ms, sans-serif">+ cd /home/srinivasan/yo=
cto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/git</fo=
nt></div><div><font face=3D"comic sans ms, sans-serif">+ git checkout bebc6=
082da0a9f5d47a1ea2edc099bf671058bd4</font></div><div><font face=3D"comic sa=
ns ms, sans-serif"><br></font></div><div><font face=3D"comic sans ms, sans-=
serif">Note: checking out &#39;bebc6082da0a9f5d47a1ea2edc099bf671058bd4&#39=
;.</font></div><div><font face=3D"comic sans ms, sans-serif"><br></font></d=
iv><div><font face=3D"comic sans ms, sans-serif">You are in &#39;detached H=
EAD&#39; state. You can look around, make experimental</font></div><div><fo=
nt face=3D"comic sans ms, sans-serif">changes and commit them, and you can =
discard any commits you make in this</font></div><div><font face=3D"comic s=
ans ms, sans-serif">state without impacting any branches by performing anot=
her checkout.</font></div><div><font face=3D"comic sans ms, sans-serif"><br=
></font></div><div><font face=3D"comic sans ms, sans-serif">If you want to =
create a new branch to retain commits you create, you may</font></div><div>=
<font face=3D"comic sans ms, sans-serif">do so (now or later) by using -b w=
ith the checkout command again. Example:</font></div><div><font face=3D"com=
ic sans ms, sans-serif"><br></font></div><div><font face=3D"comic sans ms, =
sans-serif">=C2=A0 git checkout -b new_branch_name</font></div><div><font f=
ace=3D"comic sans ms, sans-serif"><br></font></div><div><font face=3D"comic=
 sans ms, sans-serif"><br></font></div><div><font face=3D"comic sans ms, sa=
ns-serif">HEAD is now at bebc608... Linux 4.14</font></div><div><font face=
=3D"comic sans ms, sans-serif"><br></font></div><div><font face=3D"comic sa=
ns ms, sans-serif">+ sleep 5</font></div><div><font face=3D"comic sans ms, =
sans-serif"><br></font></div><div><font face=3D"comic sans ms, sans-serif">=
+ [ -n x86_64_defconfig ]</font></div><div><font face=3D"comic sans ms, san=
s-serif">+ [ -f /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-pok=
y-linux/linux-srini/4.14-r1/git/arch/x86/configs/x86_64_defconfig ]</font><=
/div><div><font face=3D"comic sans ms, sans-serif">+ [ -f</font></div><div>=
<font face=3D"comic sans ms, sans-serif">=C2=A0/home/srinivasan/yocto_sessi=
on_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/defconfig ]</fon=
t></div><div><font face=3D"comic sans ms, sans-serif">+ cp -f /home/sriniva=
san/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/g=
it/arch/x86/configs/x86_64_defconfig /home/srinivasan/yocto_session_ws_2/bu=
ild/tmp/work/i586-poky-linux/linux-srini/4.14-r1/defconfig</font></div><div=
><font face=3D"comic sans ms, sans-serif"><br></font></div><div><font face=
=3D"comic sans ms, sans-serif">+ cp -f /home/srinivasan/yocto_session_ws_2/=
build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/git/arch/x86/configs/x86=
_64_defconfig /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-=
linux/linux-srini/4.14-r1/git/defconfig</font></div><div><font face=3D"comi=
c sans ms, sans-serif"><br></font></div><div><font face=3D"comic sans ms, s=
ans-serif">+ cp -f /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-=
poky-linux/linux-srini/4.14-r1/git/arch/x86/configs/x86_64_defconfig /home/=
srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.=
14-r1/git/.config</font></div><div><font face=3D"comic sans ms, sans-serif"=
><br></font></div><div><font face=3D"comic sans ms, sans-serif">+ sccs=3D/h=
ome/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srin=
i/4.14-r1/defconfig</font></div><div><font face=3D"comic sans ms, sans-seri=
f">+ ret=3D0</font></div><div><font face=3D"comic sans ms, sans-serif">+ tr=
ap=C2=A0 0</font></div><div><font face=3D"comic sans ms, sans-serif">+ exit=
 0</font></div><div><font face=3D"comic sans ms, sans-serif"><br></font></d=
iv><div><font face=3D"comic sans ms, sans-serif">NOTE: linux-srini-4.14-r1 =
do_configure: Checking autotools environment for common misconfiguration</f=
ont></div><div><font face=3D"comic sans ms, sans-serif">NOTE: linux-srini-4=
.14-r1 do_configure: Checking configure output for unrecognised options</fo=
nt></div><div><font face=3D"comic sans ms, sans-serif">+ autotools_postconf=
igure</font></div><div><font face=3D"comic sans ms, sans-serif">+ [ -n /hom=
e/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/=
4.14-r1/configure.sstate ]</font></div><div><font face=3D"comic sans ms, sa=
ns-serif"><br></font></div><div><font face=3D"comic sans ms, sans-serif">+ =
dirname /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/=
linux-srini/4.14-r1/configure.sstate</font></div><div><font face=3D"comic s=
ans ms, sans-serif"><br></font></div><div><font face=3D"comic sans ms, sans=
-serif">+ mkdir -p /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-=
poky-linux/linux-srini/4.14-r1</font></div><div><font face=3D"comic sans ms=
, sans-serif"><br></font></div><div><font face=3D"comic sans ms, sans-serif=
">+ echo fb691e35d382f04effc1c80328f97ff7</font></div><div><font face=3D"co=
mic sans ms, sans-serif"><br></font></div><div><font face=3D"comic sans ms,=
 sans-serif">+ ret=3D0</font></div><div><font face=3D"comic sans ms, sans-s=
erif">+ trap=C2=A0 0</font></div><div><font face=3D"comic sans ms, sans-ser=
if">+ exit 0</font></div><div><font face=3D"comic sans ms, sans-serif"><br>=
</font></div><div><font face=3D"comic sans ms, sans-serif">+ cd /home/srini=
vasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1=
/build</font></div><div><font face=3D"comic sans ms, sans-serif">+ do_compi=
le</font></div><div><font face=3D"comic sans ms, sans-serif">+ autotools_do=
_compile</font></div><div><font face=3D"comic sans ms, sans-serif">+ oe_run=
make</font></div><div><font face=3D"comic sans ms, sans-serif">+ oe_runmake=
_call</font></div><div><font face=3D"comic sans ms, sans-serif">+ bbnote ma=
ke -j 4</font></div><div><font face=3D"comic sans ms, sans-serif">+ [ -p /h=
ome/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srin=
i/4.14-r1/temp/fifo.4343 ]</font></div><div><font face=3D"comic sans ms, sa=
ns-serif"><br></font></div><div><font face=3D"comic sans ms, sans-serif">NO=
TE: linux-srini-4.14-r1 do_compile: make -j 4</font></div><div><font face=
=3D"comic sans ms, sans-serif">+ printf %b\0 bbnote make -j 4</font></div><=
div><font face=3D"comic sans ms, sans-serif">+ make -j 4</font></div><div><=
font face=3D"comic sans ms, sans-serif"><br></font></div><div><font face=3D=
"comic sans ms, sans-serif"><b>make: *** No targets specified and no makefi=
le found.=C2=A0 Stop.</b></font></div><div><font face=3D"comic sans ms, san=
s-serif"><b><br></b></font></div><div><font face=3D"comic sans ms, sans-ser=
if"><b>ERROR: linux-srini-4.14-r1 do_compile: oe_runmake failed</b></font><=
/div><div><font face=3D"comic sans ms, sans-serif"><b>+ die oe_runmake fail=
ed</b></font></div><div><font face=3D"comic sans ms, sans-serif"><b>+ bbfat=
al_log oe_runmake failed</b></font></div><div><font face=3D"comic sans ms, =
sans-serif">+ [ -p /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-=
poky-linux/linux-srini/4.14-r1/temp/fifo.4343 ]</font></div><div><font face=
=3D"comic sans ms, sans-serif">+ printf %b\0 bbfatal_log oe_runmake failed<=
/font></div><div><font face=3D"comic sans ms, sans-serif">+ exit 1</font></=
div><div><font face=3D"comic sans ms, sans-serif">+ bb_exit_handler</font><=
/div><div><font face=3D"comic sans ms, sans-serif">+ ret=3D1</font></div><d=
iv><font face=3D"comic sans ms, sans-serif">+ echo WARNING: exit code 1 fro=
m a shell command.</font></div><div><font face=3D"comic sans ms, sans-serif=
">WARNING: exit code 1 from a shell command.</font></div><div><font face=3D=
"comic sans ms, sans-serif">+ exit 1</font></div><div><font face=3D"comic s=
ans ms, sans-serif"><b><br></b></font></div><div><font face=3D"comic sans m=
s, sans-serif"><b>ERROR: linux-srini-4.14-r1 do_compile: Function failed: d=
o_compile (log file is located at /home/srinivasan/yocto_session_ws_2/build=
/tmp/work/i586-poky-linux/linux-srini/4.14-r1/temp/log.do_compile.4343)</b>=
</font></div><div><font face=3D"comic sans ms, sans-serif"><b>ERROR: Logfil=
e of failure stored in: /home/srinivasan/yocto_session_ws_2/build/tmp/work/=
i586-poky-linux/linux-srini/4.14-r1/temp/log.do_compile.4343</b></font></di=
v><div><font face=3D"comic sans ms, sans-serif">Log data follows:</font></d=
iv><div><font face=3D"comic sans ms, sans-serif">| DEBUG: SITE files [&#39;=
endian-little&#39;, &#39;bit-32&#39;, &#39;ix86-common&#39;, &#39;common-li=
nux&#39;, &#39;common-glibc&#39;, &#39;i586-linux&#39;, &#39;common&#39;]</=
font></div><div><font face=3D"comic sans ms, sans-serif">| DEBUG: Executing=
 shell function do_compile</font></div><div><font face=3D"comic sans ms, sa=
ns-serif">| + cd /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-po=
ky-linux/linux-srini/4.14-r1/build</font></div><div><font face=3D"comic san=
s ms, sans-serif">| + do_compile</font></div><div><font face=3D"comic sans =
ms, sans-serif">| + autotools_do_compile</font></div><div><font face=3D"com=
ic sans ms, sans-serif">| + oe_runmake</font></div><div><font face=3D"comic=
 sans ms, sans-serif">| + oe_runmake_call</font></div><div><font face=3D"co=
mic sans ms, sans-serif">| + bbnote make -j 4</font></div><div><font face=
=3D"comic sans ms, sans-serif">| + [ -p /home/srinivasan/yocto_session_ws_2=
/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/temp/fifo.4343 ]</font>=
</div><div><font face=3D"comic sans ms, sans-serif">|=C2=A0</font></div><di=
v><font face=3D"comic sans ms, sans-serif">| + cd /home/srinivasan/yocto_se=
ssion_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/build</font><=
/div><div><font face=3D"comic sans ms, sans-serif">| + do_compile</font></d=
iv><div><font face=3D"comic sans ms, sans-serif">| + autotools_do_compile</=
font></div><div><font face=3D"comic sans ms, sans-serif">| + oe_runmake</fo=
nt></div><div><font face=3D"comic sans ms, sans-serif">| + oe_runmake_call<=
/font></div><div><font face=3D"comic sans ms, sans-serif">| + bbnote make -=
j 4</font></div><div><font face=3D"comic sans ms, sans-serif">| + [ -p /hom=
e/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/=
4.14-r1/temp/fifo.4343 ]</font></div><div><font face=3D"comic sans ms, sans=
-serif">| NOTE: make -j 4</font></div><div><font face=3D"comic sans ms, san=
s-serif">| + printf %b\0 bbnote make -j 4</font></div><div><font face=3D"co=
mic sans ms, sans-serif">| + make -j 4</font></div><div><font face=3D"comic=
 sans ms, sans-serif">|=C2=A0</font></div><div><font face=3D"comic sans ms,=
 sans-serif">| + printf %b\0 bbnote make -j 4</font></div><div><font face=
=3D"comic sans ms, sans-serif">| + make -j 4</font></div><div><font face=3D=
"comic sans ms, sans-serif">| make: *** No targets specified and no makefil=
e found.=C2=A0 Stop.</font></div><div><font face=3D"comic sans ms, sans-ser=
if">|=C2=A0</font></div><div><font face=3D"comic sans ms, sans-serif">| mak=
e: *** No targets specified and no makefile found.=C2=A0 Stop.</font></div>=
<div><font face=3D"comic sans ms, sans-serif">| ERROR: oe_runmake failed</f=
ont></div><div><font face=3D"comic sans ms, sans-serif">| + die oe_runmake =
failed</font></div><div><font face=3D"comic sans ms, sans-serif">| + bbfata=
l_log oe_runmake failed</font></div><div><font face=3D"comic sans ms, sans-=
serif">| + [ -p /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-pok=
y-linux/linux-srini/4.14-r1/temp/fifo.4343 ]</font></div><div><font face=3D=
"comic sans ms, sans-serif">| + printf %b\0 bbfatal_log oe_runmake failed</=
font></div><div><font face=3D"comic sans ms, sans-serif">| + exit 1</font><=
/div><div><font face=3D"comic sans ms, sans-serif">| + bb_exit_handler</fon=
t></div><div><font face=3D"comic sans ms, sans-serif">| + ret=3D1</font></d=
iv><div><font face=3D"comic sans ms, sans-serif">| + echo WARNING: exit cod=
e 1 from a shell command.</font></div><div><font face=3D"comic sans ms, san=
s-serif">| WARNING: exit code 1 from a shell command.</font></div><div><fon=
t face=3D"comic sans ms, sans-serif">| + exit 1</font></div><div><font face=
=3D"comic sans ms, sans-serif">|=C2=A0</font></div><div><font face=3D"comic=
 sans ms, sans-serif">| + die oe_runmake failed</font></div><div><font face=
=3D"comic sans ms, sans-serif">| + bbfatal_log oe_runmake failed</font></di=
v><div><font face=3D"comic sans ms, sans-serif">| + [ -p /home/srinivasan/y=
octo_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/temp/f=
ifo.4343 ]</font></div><div><font face=3D"comic sans ms, sans-serif">| + pr=
intf %b\0 bbfatal_log oe_runmake failed</font></div><div><font face=3D"comi=
c sans ms, sans-serif">| + exit 1</font></div><div><font face=3D"comic sans=
 ms, sans-serif">| + bb_exit_handler</font></div><div><font face=3D"comic s=
ans ms, sans-serif">| + ret=3D1</font></div><div><font face=3D"comic sans m=
s, sans-serif">| + echo WARNING: exit code 1 from a shell command.</font></=
div><div><font face=3D"comic sans ms, sans-serif">| WARNING: exit code 1 fr=
om a shell command.</font></div><div><font face=3D"comic sans ms, sans-seri=
f">| + exit 1</font></div><div><font face=3D"comic sans ms, sans-serif"><b>=
| ERROR: Function failed: do_compile (log file is located at /home/srinivas=
an/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/te=
mp/log.do_compile.4343)</b></font></div><div><font face=3D"comic sans ms, s=
ans-serif"><b>ERROR: Task (/home/srinivasan/yocto_session_ws_2/poky/meta/re=
cipes-kernel/linux/linux-srini_4.14.bb:do_compile) failed with exit code &#=
39;1&#39;</b></font></div><div><font face=3D"comic sans ms, sans-serif"><b>=
NOTE: Tasks Summary: Attempted 312 tasks of which 306 didn&#39;t need to be=
 rerun and 1 failed.</b></font></div><div><font face=3D"comic sans ms, sans=
-serif"><br></font></div><div><font face=3D"comic sans ms, sans-serif">Summ=
ary: 1 task failed:</font></div><div><font face=3D"comic sans ms, sans-seri=
f">=C2=A0 /home/srinivasan/yocto_session_ws_2/poky/meta/recipes-kernel/linu=
x/linux-srini_4.14.bb:do_compile</font></div><div><font face=3D"comic sans =
ms, sans-serif">Summary: There was 1 WARNING message shown.</font></div><di=
v><font face=3D"comic sans ms, sans-serif">Summary: There were 2 ERROR mess=
ages shown, returning a non-zero exit code.</font></div><div><font face=3D"=
comic sans ms, sans-serif">srinivasan@srinivasan-UX305UA:~/yocto_session_ws=
_2/build$=C2=A0</font></div></div></div></div>
</blockquote></div></div>

--000000000000e7e1b0057514cd60--
