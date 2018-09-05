Return-Path: <srinivasan.rns@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2DFD7E00A6B; Tue,  4 Sep 2018 17:32:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_FONT_LOW_CONTRAST,
	HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (srinivasan.rns[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.194 listed in list.dnswl.org]
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
Received: from mail-qt0-f194.google.com (mail-qt0-f194.google.com
	[209.85.216.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D42BBE00A39;
	Tue,  4 Sep 2018 17:32:24 -0700 (PDT)
Received: by mail-qt0-f194.google.com with SMTP id t5-v6so6219671qtn.3;
	Tue, 04 Sep 2018 17:32:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=FJzIKuKN3aYt9XSafxRLdBagCRpfzy1JALIBsxsn6Hk=;
	b=nmjQ7U68xqW5/ceEzPvC24n/NqN1r8K+vH9tYuAHdTcFHUAzzpZQoDKrNMvNWbGK51
	tXwAbcuOThphKhMpXnTxqXBscYqdRHU+HZ+qhKA3e3ByOe/1fZFXgGarQzuJfN0fSRhf
	hwT57sUHABfYpQy9uQqKjmfBynHiexzjGK6nws5gdPoivA2k/M/0m7BueGDStuoPzziN
	+qtpgWRcxxFCwo41HjCier6W2q5RSzoH7JbfExfAF/TjpvusOJjuaijfDMNQnbM6nCTc
	wtwDd4I85EBd+euOZdwvoFrrUAgChkrU8FhjTUyZWdnS30EFK2eOFDmCFevieK/+BqIZ
	R/mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=FJzIKuKN3aYt9XSafxRLdBagCRpfzy1JALIBsxsn6Hk=;
	b=Wdx4xfh36iJt2kIvuhDo/z3HF3gvSYXxRevOIvvx/x7sWgil7ya+njcqEws7SUQEMJ
	9eWfq8tHTQF25Jt+4HBFDhdLWXxdKef7rjS0ePhKYVJYz+WKssAZm+aQaTsCMOwQyeld
	wCM3YTz0K7++bY4wBwW6Gy5/tcsZvgk9L694wmMvDaUZPxL4zbPY4YG0wmBPlPaVuTGM
	d73sPh8TwjsLKiLMUfBqgt0Q58ecpOjbzTE7a/5r5bQ1vP8A0SkBuddVn1oqXhWwWecK
	dCcYA3exf8Lzqo2jeZQrS/idWwdIfMIgUenpdj5BXoHu/AGyUQn4k2lQ2gV22A9RRrBH
	zwaA==
X-Gm-Message-State: APzg51Cye7eZIgKzwy2CFdbQHDX4u70Pc+vqDsDlPQ+UriQj+9Hxp+wZ
	8rq3cZk9GJ8HRG4n8j4dWTJW15SVzZzULO7Z0q+aWx0V
X-Google-Smtp-Source: ANB0VdYdYiC/nH8ZDW4JUzOXvLo5/MAGE6+N566k79776e7s/+1btwcyA9O6feeEThIvkY8n6lmEvAhtWUXgpgGZ31g=
X-Received: by 2002:a0c:d7c3:: with SMTP id
	g3-v6mr30997686qvj.85.1536107543622; 
	Tue, 04 Sep 2018 17:32:23 -0700 (PDT)
MIME-Version: 1.0
From: srinivasan <srinivasan.rns@gmail.com>
Date: Wed, 5 Sep 2018 06:02:11 +0530
Message-ID: <CAFsTbWdWMce5h_MBbNiUgsJ+Pcdu=V3jJqf6StSFxJ0d82Z6WQ@mail.gmail.com>
To: yocto-bsp@yoctoproject.org, yocto-builds@yoctoproject.org, 
	meta-intel@yoctoproject.org, linux-yocto@yoctoproject.org, 
	poky@yoctoproject.org, yocto-infrastructure@yoctoproject.org
Subject: Yocto kernel compilation issues
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
X-List-Received-Date: Wed, 05 Sep 2018 00:32:27 -0000
X-Groupsio-MsgNum: 11384
Content-Type: multipart/mixed; boundary="0000000000007a180b057514e88d"

--0000000000007a180b057514e88d
Content-Type: multipart/alternative; boundary="0000000000007a180a057514e88b"

--0000000000007a180a057514e88b
Content-Type: text/plain; charset="UTF-8"

srinivasan <srinivasan.rns@gmail.com>
5:55 AM (4 minutes ago)
to *yocto-infrastructure*
After changing from "*do_compile_ () {*" to "*do_compile() {*", in the
attached recipe file, Compilation started but got stuck  "*/bin/sh: 1: bc:
not found*

*make[1]: *** [include/generated/timeconst.h] Error 127*
*make: *** [prepare0] Error 2*
*make: *** Waiting for unfinished jobs...."*

*Even I tried installing "*sudo apt-get install bc"* but still the same
issue as above, Kindly do the needful in resolving the above issue as am
stuck with the same issue from past 4 days*

*And I am even able to build kernel independently before integrating into
yocto project*

*References:*

*1. Ubuntu version used 14.04*

*2. Poky Distro version*

DISTRO = "poky"
DISTRO_NAME = "Poky (Yocto Project Reference Distro)"
DISTRO_VERSION = "2.5+snapshot-${DATE}"

*3.Logs:*

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

--0000000000007a180a057514e88b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:comic sa=
ns ms,sans-serif"><div class=3D"gmail-gE gmail-iv gmail-gt" style=3D"paddin=
g:20px 0px 0px;font-size:12.8px;font-family:Roboto,RobotoDraft,Helvetica,Ar=
ial,sans-serif"><br class=3D"gmail-Apple-interchange-newline"><table cellpa=
dding=3D"0" class=3D"gmail-cf gmail-gJ" style=3D"border-collapse:collapse;m=
argin-top:0px;width:auto;font-size:0.875rem;letter-spacing:0.2px;display:bl=
ock"><tbody style=3D"display:block"><tr class=3D"gmail-acZ" style=3D"height=
:auto;display:flex"><td class=3D"gmail-gF gmail-gK" style=3D"white-space:no=
wrap;padding:0px;vertical-align:top;width:989.531px;line-height:20px;displa=
y:block;max-height:20px"><table cellpadding=3D"0" class=3D"gmail-cf gmail-i=
x" style=3D"border-collapse:collapse;table-layout:fixed;width:989px"><tbody=
><tr><td class=3D"gmail-c2" style=3D"display:flex"><h3 class=3D"gmail-iw" s=
tyle=3D"overflow:hidden;max-width:92%;font-size:0.75rem;font-weight:inherit=
;margin:inherit;letter-spacing:0.3px;color:rgb(95,99,104);line-height:20px"=
><span name=3D"srinivasan" class=3D"gmail-gD" style=3D"color:rgb(32,33,36);=
font-size:0.875rem;font-weight:bold;display:inline;vertical-align:top;lette=
r-spacing:0.2px;line-height:20px">srinivasan</span>=C2=A0<span class=3D"gma=
il-go" style=3D"vertical-align:top;color:rgb(85,85,85)">&lt;<a href=3D"mail=
to:srinivasan.rns@gmail.com">srinivasan.rns@gmail.com</a>&gt;</span></h3></=
td></tr></tbody></table></td><td class=3D"gmail-gH gmail-bAk" style=3D"text=
-align:right;white-space:nowrap;vertical-align:top;display:block;max-height=
:20px"><div class=3D"gmail-gK" style=3D"padding:0px;display:flex"><span id=
=3D"gmail-:1dc" class=3D"gmail-g3" title=3D"Sep 5, 2018, 5:55 AM" alt=3D"Se=
p 5, 2018, 5:55 AM" style=3D"vertical-align:top;margin:0px;font-size:0.75re=
m;letter-spacing:0.3px;color:rgb(95,99,104);display:block;line-height:20px"=
>5:55 AM (4 minutes ago)</span><div class=3D"gmail-zd gmail-bi4" title=3D"N=
ot starred" tabindex=3D"0" style=3D"display:inline-block;height:20px;margin=
-left:20px;outline:0px"><span class=3D"gmail-T-KT" style=3D"display:inline-=
flex;height:20px;text-align:center;width:20px;padding:0px;margin:0px;border=
:none;outline:none"></span></div></div></td><td class=3D"gmail-gH" style=3D=
"text-align:right;white-space:nowrap;vertical-align:top;display:flex"></td>=
<td class=3D"gmail-gH gmail-acX gmail-bAm" rowspan=3D"2" style=3D"text-alig=
n:right;white-space:nowrap;vertical-align:top;display:block;max-height:20px=
"><div class=3D"gmail-T-I gmail-J-J5-Ji gmail-T-I-Js-IF gmail-aaq gmail-T-I=
-ax7 gmail-L3" tabindex=3D"0" style=3D"display:inline-flex;border-radius:2p=
x 0px 0px 2px;font-size:0.875rem;text-align:center;margin:0px 0px 0px 20px;=
height:20px;line-height:18px;min-width:0px;outline:none;padding:0px;backgro=
und:transparent;color:rgb(68,68,68);border:none"><img class=3D"gmail-hB gma=
il-T-I-J3" src=3D"https://mail.google.com/mail/u/0/images/cleardot.gif" alt=
=3D"" style=3D"background: url(&quot;https://www.gstatic.com/images/icons/m=
aterial/system/1x/reply_black_20dp.png&quot;) 50% 50% / 20px no-repeat; hei=
ght: 20px; margin: 0px; vertical-align: middle; width: 20px; opacity: 0.54;=
 display: inline-block; padding: 0px; transition-duration: 0.15s; transitio=
n-timing-function: cubic-bezier(0.4, 0, 0.2, 1); transition-delay: initial;=
 transition-property: opacity;"></div><div id=3D"gmail-:1a8" class=3D"gmail=
-T-I gmail-J-J5-Ji gmail-T-I-Js-Gs gmail-aap gmail-T-I-awG gmail-T-I-ax7 gm=
ail-L3" tabindex=3D"0" style=3D"display:inline-flex;border-radius:0px 2px 2=
px 0px;font-size:0.875rem;text-align:center;margin:0px 0px 0px 20px;height:=
20px;line-height:18px;min-width:0px;outline:none;padding:0px;background:tra=
nsparent;color:rgb(68,68,68);border:none"><img class=3D"gmail-hA gmail-T-I-=
J3" src=3D"https://mail.google.com/mail/u/0/images/cleardot.gif" alt=3D"" s=
tyle=3D"background: url(&quot;https://www.gstatic.com/images/icons/material=
/system/1x/more_vert_black_20dp.png&quot;) 50% 50% / 20px no-repeat; height=
: 20px; width: 20px; margin: 0px; vertical-align: middle; opacity: 0.54; di=
splay: inline-block; padding: 0px; transition-duration: 0.15s; transition-t=
iming-function: cubic-bezier(0.4, 0, 0.2, 1); transition-delay: initial; tr=
ansition-property: opacity;"></div></td></tr><tr class=3D"gmail-acZ gmail-x=
D" style=3D"height:auto;display:flex"><td colspan=3D"3"><table cellpadding=
=3D"0" class=3D"gmail-cf gmail-adz" style=3D"border-collapse:collapse;table=
-layout:fixed;white-space:nowrap;width:1248px"><tbody><tr><td class=3D"gmai=
l-ady" style=3D"overflow:visible;text-overflow:ellipsis;display:flex;line-h=
eight:20px"><div class=3D"gmail-iw gmail-ajw" style=3D"overflow:hidden;max-=
width:92%;display:inline-block"><span class=3D"gmail-hb" style=3D"vertical-=
align:top;color:rgb(95,99,104);font-size:0.75rem;letter-spacing:0.3px;line-=
height:20px">to=C2=A0<b><span dir=3D"ltr" name=3D"yocto-infrastructure" cla=
ss=3D"gmail-g2 gmail-ac2" style=3D"color:rgb(34,34,34);font-weight:normal;v=
ertical-align:top">yocto-infrastructure</span></b></span></div><div class=
=3D"gmail-ajy" tabindex=3D"0" style=3D"display:inline-flex;margin-left:4px;=
vertical-align:top;border:none;outline:none"><img class=3D"gmail-ajz" id=3D=
"gmail-:1a7" src=3D"https://mail.google.com/mail/u/0/images/cleardot.gif" a=
lt=3D"" style=3D"background: url(&quot;https://www.gstatic.com/images/icons=
/material/system/1x/arrow_drop_down_black_20dp.png&quot;) 50% 50% / 20px no=
-repeat; cursor: pointer; padding: 0px; vertical-align: baseline; height: 2=
0px; width: 20px; border: none; margin: 0px 0px 0px auto; right: 0px; top: =
0px; display: flex; opacity: 0.54;"></div></td></tr></tbody></table></td></=
tr></tbody></table></div><div id=3D"gmail-:1cm" style=3D"font-family:Roboto=
,RobotoDraft,Helvetica,Arial,sans-serif;font-size:medium"><div class=3D"gma=
il-qQVYZb"></div><div class=3D"gmail-utdU2e"></div><div class=3D"gmail-btm"=
></div></div><div class=3D"gmail-" style=3D"font-family:Roboto,RobotoDraft,=
Helvetica,Arial,sans-serif;font-size:medium"><div class=3D"gmail-aHl" style=
=3D""></div><div id=3D"gmail-:1a6" tabindex=3D"-1"></div><div id=3D"gmail-:=
1co" class=3D"gmail-ii gmail-gt" style=3D"font-size:12.8px;direction:ltr;ma=
rgin:8px 0px 0px;padding:0px"><div id=3D"gmail-:1cn" class=3D"gmail-a3s gma=
il-aXjCH" style=3D"overflow:hidden;font-variant-numeric:normal;font-variant=
-east-asian:normal;font-stretch:normal;font-size:small;line-height:1.5;font=
-family:Arial,Helvetica,sans-serif"><div dir=3D"ltr"><div class=3D"gmail_de=
fault" style=3D"font-family:&quot;comic sans ms&quot;,sans-serif"><div clas=
s=3D"gmail_default gmail-adM"></div><div dir=3D"ltr" style=3D"font-family:A=
rial,Helvetica,sans-serif"><div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"=
gmail_default" style=3D"font-family:&quot;comic sans ms&quot;,sans-serif">A=
fter changing from &quot;<b>do_compile_ () {</b>&quot; to &quot;<b>do_compi=
le() {</b>&quot;, in the attached recipe file, Compilation started but got =
stuck=C2=A0 &quot;<b>/bin/sh: 1: bc: not found</b></div><div class=3D"gmail=
_default"><font face=3D"comic sans ms, sans-serif"><b><br></b></font></div>=
<div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"><b>ma=
ke[1]: *** [include/generated/timeconst.h] Error 127</b></font></div><div c=
lass=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"><b>make: **=
* [prepare0] Error 2</b></font></div><div class=3D"gmail_default"><font fac=
e=3D"comic sans ms, sans-serif"><b>make: *** Waiting for unfinished jobs...=
.&quot;</b></font></div><div class=3D"gmail_default"><font face=3D"comic sa=
ns ms, sans-serif"><b><br></b></font></div><div class=3D"gmail_default"><fo=
nt face=3D"comic sans ms, sans-serif"><b>Even I tried installing &quot;</b>=
</font><span style=3D"background-color:rgba(27,31,35,0.05);color:rgb(36,41,=
46);font-family:SFMono-Regular,Consolas,&quot;Liberation Mono&quot;,Menlo,C=
ourier,monospace;font-size:11.9px">sudo apt-get install bc&quot;</span><b s=
tyle=3D"font-family:&quot;comic sans ms&quot;,sans-serif">=C2=A0but still t=
he same issue as above, Kindly do the needful in resolving the above issue =
as am stuck with the same issue from past 4 days</b></div><div class=3D"gma=
il_default"><font face=3D"comic sans ms, sans-serif"><b><br></b></font></di=
v><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"><b>=
And I am even able to build kernel independently before integrating into yo=
cto project</b></font></div><div class=3D"gmail_default"><font face=3D"comi=
c sans ms, sans-serif"><b><br></b></font></div><div class=3D"gmail_default"=
><font face=3D"comic sans ms, sans-serif"><b>References:</b></font></div><s=
pan class=3D"gmail-im" style=3D"color:rgb(80,0,80)"><div class=3D"gmail_def=
ault"><font face=3D"comic sans ms, sans-serif"><b><br></b></font></div><div=
 class=3D"gmail_default"><div class=3D"gmail_default"><font face=3D"comic s=
ans ms, sans-serif"><b>1. Ubuntu version used 14.04</b></font></div><div cl=
ass=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"><br></font><=
/div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">=
<b>2. Poky Distro version</b></font></div><div class=3D"gmail_default"><fon=
t face=3D"comic sans ms, sans-serif"><br></font></div><div class=3D"gmail_d=
efault"><font face=3D"comic sans ms, sans-serif">DISTRO =3D &quot;poky&quot=
;</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, san=
s-serif">DISTRO_NAME =3D &quot;Poky (Yocto Project Reference Distro)&quot;<=
/font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-=
serif">DISTRO_VERSION =3D &quot;2.5+snapshot-${DATE}&quot;</font></div></di=
v><div class=3D"gmail_default" style=3D"font-family:&quot;comic sans ms&quo=
t;,sans-serif"><br></div></span><div class=3D"gmail_default" style=3D"font-=
family:&quot;comic sans ms&quot;,sans-serif"><b>3.Logs:</b></div><div class=
=3D"gmail_default" style=3D"font-family:&quot;comic sans ms&quot;,sans-seri=
f"><br></div><div class=3D"gmail_default"><div><div class=3D"gmail-adm" sty=
le=3D"margin:5px 0px"><div id=3D"gmail-q_1003" class=3D"gmail-ajR gmail-h4"=
 style=3D"background-color:rgb(232,234,237);border:none;clear:both;line-hei=
ght:6px;outline:none;width:24px;color:rgb(80,0,80);font-size:11px;border-ra=
dius:5.5px"><div class=3D"gmail-ajT" style=3D"background:url(&quot;https://=
www.gstatic.com/images/icons/material/system/1x/more_horiz_black_20dp.png&q=
uot;) 50% 50%/20px no-repeat;height:11px;opacity:0.54;width:24px"></div></d=
iv></div></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sa=
ns-serif">NOTE: linux-srini-4.14-r1 do_prepare_recipe_sysroot: Direct depen=
dencies are [&#39;/home/srinivasan/yocto_session_ws_2/poky/meta/recipes-dev=
tools/libtool/libtool-native_2.4.6.bb:do_populate_sysroot&#39;, &#39;virtua=
l:native:/home/srinivasan/yocto_session_ws_2/poky/meta/recipes-devtools/gnu=
-config/gnu-config_git.bb:do_populate_sysroot&#39;, &#39;virtual:native:/ho=
me/srinivasan/yocto_session_ws_2/poky/meta/recipes-devtools/autoconf/autoco=
nf_2.69.bb:do_populate_sysroot&#39;, &#39;virtual:native:/home/srinivasan/y=
octo_session_ws_2/poky/meta/recipes-devtools/automake/automake_1.16.1.bb:do=
_populate_sysroot&#39;]</font></div><div class=3D"gmail_default"><font face=
=3D"comic sans ms, sans-serif">NOTE: linux-srini-4.14-r1 do_prepare_recipe_=
sysroot: Installed into sysroot: [&#39;libtool-native&#39;, &#39;gnu-config=
-native&#39;, &#39;autoconf-native&#39;, &#39;automake-native&#39;, &#39;te=
xinfo-dummy-native&#39;, &#39;quilt-native&#39;, &#39;m4-native&#39;]</font=
></div><div><div class=3D"gmail-adm" style=3D"margin:5px 0px"><div id=3D"gm=
ail-q_1001" class=3D"gmail-ajR gmail-h4" style=3D"background-color:rgb(232,=
234,237);border:none;clear:both;line-height:6px;outline:none;width:24px;col=
or:rgb(80,0,80);font-size:11px;border-radius:5.5px"><div class=3D"gmail-ajT=
" style=3D"background:url(&quot;https://www.gstatic.com/images/icons/materi=
al/system/1x/more_horiz_black_20dp.png&quot;) 50% 50%/20px no-repeat;height=
:11px;opacity:0.54;width:24px"></div></div></div></div><div class=3D"gmail_=
default"><font face=3D"comic sans ms, sans-serif">+ cd /home/srinivasan/yoc=
to_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/git</fon=
t></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-seri=
f"><br></font></div><div class=3D"gmail_default"><font face=3D"comic sans m=
s, sans-serif">NOTE: linux-srini-4.14-r1 do_compile: make -j 4 mrproper</fo=
nt></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-ser=
if">+ oe_runmake mrproper</font></div><div class=3D"gmail_default"><font fa=
ce=3D"comic sans ms, sans-serif">+ oe_runmake_call mrproper</font></div><di=
v class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">+ bbnote=
 make -j 4 mrproper</font></div><div class=3D"gmail_default"><font face=3D"=
comic sans ms, sans-serif">+ [ -p /home/srinivasan/yocto_session_ws_2/build=
/tmp/work/i586-poky-linux/linux-srini/4.14-r1/temp/fifo.7174 ]</font></div>=
<div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">+ pri=
ntf %b\0 bbnote make -j 4 mrproper</font></div><div class=3D"gmail_default"=
><font face=3D"comic sans ms, sans-serif">+ make -j 4 mrproper</font></div>=
<div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"><br><=
/font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-=
serif">=C2=A0 CLEAN=C2=A0 =C2=A0.config</font></div><div class=3D"gmail_def=
ault"><font face=3D"comic sans ms, sans-serif"><br></font></div><div class=
=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">+ oe_runmake de=
fconfig</font></div><div class=3D"gmail_default"><font face=3D"comic sans m=
s, sans-serif">+ oe_runmake_call defconfig</font></div><div class=3D"gmail_=
default"><font face=3D"comic sans ms, sans-serif">+ bbnote make -j 4 defcon=
fig</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, s=
ans-serif"><br></font></div><div class=3D"gmail_default"><font face=3D"comi=
c sans ms, sans-serif">NOTE: linux-srini-4.14-r1 do_compile: make -j 4 defc=
onfig</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms,=
 sans-serif">+ [ -p /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586=
-poky-linux/linux-srini/4.14-r1/temp/fifo.7174 ]</font></div><div class=3D"=
gmail_default"><font face=3D"comic sans ms, sans-serif">+ printf %b\0 bbnot=
e make -j 4 defconfig</font></div><div class=3D"gmail_default"><font face=
=3D"comic sans ms, sans-serif">+ make -j 4 defconfig</font></div><div class=
=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"><br></font></di=
v><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">=C2=
=A0 HOSTCC=C2=A0 scripts/basic/fixdep</font></div><div class=3D"gmail_defau=
lt"><font face=3D"comic sans ms, sans-serif"><br></font></div><div class=3D=
"gmail_default"><font face=3D"comic sans ms, sans-serif">=C2=A0 HOSTCC=C2=
=A0 scripts/kconfig/conf.o</font></div><div class=3D"gmail_default"><font f=
ace=3D"comic sans ms, sans-serif"><br></font></div><div class=3D"gmail_defa=
ult"><font face=3D"comic sans ms, sans-serif">=C2=A0 SHIPPED scripts/kconfi=
g/zconf.tab.c</font></div><div class=3D"gmail_default"><font face=3D"comic =
sans ms, sans-serif"><br></font></div><div class=3D"gmail_default"><font fa=
ce=3D"comic sans ms, sans-serif">=C2=A0 SHIPPED scripts/kconfig/zconf.lex.c=
</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans=
-serif"><br></font></div><div class=3D"gmail_default"><font face=3D"comic s=
ans ms, sans-serif">=C2=A0 HOSTCC=C2=A0 scripts/kconfig/zconf.tab.o</font><=
/div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">=
<br></font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, =
sans-serif">=C2=A0 HOSTLD=C2=A0 scripts/kconfig/conf</font></div><div class=
=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"><br></font></di=
v><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">***=
 Default configuration is based on &#39;x86_64_defconfig&#39;</font></div><=
div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"><br></=
font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-s=
erif">#</font></div><div class=3D"gmail_default"><font face=3D"comic sans m=
s, sans-serif"># configuration written to .config</font></div><div class=3D=
"gmail_default"><font face=3D"comic sans ms, sans-serif">#</font></div><spa=
n class=3D"gmail-im" style=3D"color:rgb(80,0,80)"><div class=3D"gmail_defau=
lt"><font face=3D"comic sans ms, sans-serif"><br></font></div><div class=3D=
"gmail_default"><font face=3D"comic sans ms, sans-serif">+ oe_runmake</font=
></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif=
">+ oe_runmake_call</font></div><div class=3D"gmail_default"><font face=3D"=
comic sans ms, sans-serif">+ bbnote make -j 4</font></div><div class=3D"gma=
il_default"><font face=3D"comic sans ms, sans-serif">+ [ -p</font></div><di=
v class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">NOTE: li=
nux-srini-4.14-r1 do_compile: make -j 4</font></div></span><div class=3D"gm=
ail_default"><font face=3D"comic sans ms, sans-serif">=C2=A0/home/srinivasa=
n/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/tem=
p/fifo.7174 ]</font></div><span class=3D"gmail-im" style=3D"color:rgb(80,0,=
80)"><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">=
+ printf %b\0 bbnote make -j 4</font></div><div class=3D"gmail_default"><fo=
nt face=3D"comic sans ms, sans-serif">+ make -j 4</font></div><div class=3D=
"gmail_default"><font face=3D"comic sans ms, sans-serif"><br></font></div><=
/span><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"=
>scripts/kconfig/conf=C2=A0 --silentoldconfig Kconfig</font></div><div clas=
s=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"><br></font></d=
iv><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">=
=C2=A0 SYSTBL=C2=A0 arch/x86/entry/syscalls/../../include/generated/asm/sys=
calls_32.h</font></div><div class=3D"gmail_default"><font face=3D"comic san=
s ms, sans-serif"><br></font></div><div class=3D"gmail_default"><font face=
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
LD=C2=A0 scripts/mod/modpost</font></div><span class=3D"gmail-im" style=3D"=
color:rgb(80,0,80)"><div class=3D"gmail_default"><font face=3D"comic sans m=
s, sans-serif"><br></font></div><div class=3D"gmail_default"><font face=3D"=
comic sans ms, sans-serif">+ die oe_runmake failed</font></div><div class=
=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">+ bbfatal_log o=
e_runmake failed</font></div></span><div class=3D"gmail_default"><font face=
=3D"comic sans ms, sans-serif">+ [ -p /home/srinivasan/yocto_session_ws_2/b=
uild/tmp/work/i586-poky-linux/linux-srini/4.14-r1/temp/fifo.7174 ]</font></=
div><span class=3D"gmail-im" style=3D"color:rgb(80,0,80)"><div class=3D"gma=
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
ss=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"><br></font></=
div></span><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-s=
erif"><b>ERROR: linux-srini-4.14-r1 do_compile: oe_runmake failed</b></font=
></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif=
"><b>ERROR: linux-srini-4.14-r1 do_compile: Function failed: do_compile (lo=
g file is located at /home/srinivasan/yocto_session_ws_2/build/tmp/work/i58=
6-poky-linux/linux-srini/4.14-r1/temp/log.do_compile.7174)</b></font></div>=
<div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"><b>ER=
ROR: Logfile of failure stored in: /home/srinivasan/yocto_session_ws_2/buil=
d/tmp/work/i586-poky-linux/linux-srini/4.14-r1/temp/log.do_compile.7174</b>=
</font></div><span class=3D"gmail-im" style=3D"color:rgb(80,0,80)"><div cla=
ss=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">Log data foll=
ows:</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, =
sans-serif">| DEBUG: SITE files [&#39;endian-little&#39;, &#39;bit-32&#39;,=
 &#39;ix86-common&#39;, &#39;common-linux&#39;, &#39;common-glibc&#39;, &#3=
9;i586-linux&#39;, &#39;common&#39;]</font></div><div class=3D"gmail_defaul=
t"><font face=3D"comic sans ms, sans-serif">| DEBUG: Executing shell functi=
on do_compile</font></div><div class=3D"gmail_default"><font face=3D"comic =
sans ms, sans-serif">| + cd /home/srinivasan/yocto_session_ws_2/build/tmp/w=
ork/i586-poky-linux/linux-srini/4.14-r1/build</font></div><div class=3D"gma=
il_default"><font face=3D"comic sans ms, sans-serif">| + do_compile</font><=
/div></span><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-=
serif">| + cd /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-=
linux/linux-srini/4.14-r1/git</font></div><span class=3D"gmail-im" style=3D=
"color:rgb(80,0,80)"><div class=3D"gmail_default"><font face=3D"comic sans =
ms, sans-serif">|=C2=A0</font></div><div class=3D"gmail_default"><font face=
=3D"comic sans ms, sans-serif">| + cd /home/srinivasan/yocto_session_ws_2/b=
uild/tmp/work/i586-poky-linux/linux-srini/4.14-r1/build</font></div><div cl=
ass=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">| + do_compi=
le</font></div></span><div class=3D"gmail_default"><font face=3D"comic sans=
 ms, sans-serif">| + cd /home/srinivasan/yocto_session_ws_2/build/tmp/work/=
i586-poky-linux/linux-srini/4.14-r1/git</font></div><div class=3D"gmail_def=
ault"><font face=3D"comic sans ms, sans-serif">| NOTE: make -j 4 mrproper</=
font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-s=
erif">| + oe_runmake mrproper</font></div><div class=3D"gmail_default"><fon=
t face=3D"comic sans ms, sans-serif">| + oe_runmake_call mrproper</font></d=
iv><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">| =
+ bbnote make -j 4 mrproper</font></div><div class=3D"gmail_default"><font =
face=3D"comic sans ms, sans-serif">| + [ -p /home/srinivasan/yocto_session_=
ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/temp/fifo.7174 ]</f=
ont></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-se=
rif">| + printf %b\0 bbnote make -j 4 mrproper</font></div><div class=3D"gm=
ail_default"><font face=3D"comic sans ms, sans-serif">| + make -j 4 mrprope=
r</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, san=
s-serif">|=C2=A0</font></div><div class=3D"gmail_default"><font face=3D"com=
ic sans ms, sans-serif">| + oe_runmake mrproper</font></div><div class=3D"g=
mail_default"><font face=3D"comic sans ms, sans-serif">| + oe_runmake_call =
mrproper</font></div><div class=3D"gmail_default"><font face=3D"comic sans =
ms, sans-serif">| + bbnote make -j 4 mrproper</font></div><div class=3D"gma=
il_default"><font face=3D"comic sans ms, sans-serif">| + [ -p /home/sriniva=
san/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/t=
emp/fifo.7174 ]</font></div><div class=3D"gmail_default"><font face=3D"comi=
c sans ms, sans-serif">| + printf %b\0 bbnote make -j 4 mrproper</font></di=
v><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">| +=
 make -j 4 mrproper</font></div><div class=3D"gmail_default"><font face=3D"=
comic sans ms, sans-serif">|=C2=A0 =C2=A0CLEAN=C2=A0 =C2=A0.config</font></=
div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=
=C2=A0</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms=
, sans-serif">|=C2=A0 =C2=A0CLEAN=C2=A0 =C2=A0.config</font></div><div clas=
s=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">| + oe_runmake=
 defconfig</font></div><div class=3D"gmail_default"><font face=3D"comic san=
s ms, sans-serif">| + oe_runmake_call defconfig</font></div><div class=3D"g=
mail_default"><font face=3D"comic sans ms, sans-serif">| + bbnote make -j 4=
 defconfig</font></div><div class=3D"gmail_default"><font face=3D"comic san=
s ms, sans-serif">|=C2=A0</font></div><div class=3D"gmail_default"><font fa=
ce=3D"comic sans ms, sans-serif">| + oe_runmake defconfig</font></div><div =
class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">| + oe_run=
make_call defconfig</font></div><div class=3D"gmail_default"><font face=3D"=
comic sans ms, sans-serif">| + bbnote make -j 4 defconfig</font></div><div =
class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">| NOTE: ma=
ke -j 4 defconfig</font></div><div class=3D"gmail_default"><font face=3D"co=
mic sans ms, sans-serif">| + [ -p /home/srinivasan/yocto_session_ws_2/build=
/tmp/work/i586-poky-linux/linux-srini/4.14-r1/temp/fifo.7174 ]</font></div>=
<div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">| + p=
rintf %b\0 bbnote make -j 4 defconfig</font></div><div class=3D"gmail_defau=
lt"><font face=3D"comic sans ms, sans-serif">| + make -j 4 defconfig</font>=
</div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"=
>|=C2=A0</font></div><div class=3D"gmail_default"><font face=3D"comic sans =
ms, sans-serif">| + [ -p /home/srinivasan/yocto_session_ws_2/build/tmp/work=
/i586-poky-linux/linux-srini/4.14-r1/temp/fifo.7174 ]</font></div><div clas=
s=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">| + printf %b\=
0 bbnote make -j 4 defconfig</font></div><div class=3D"gmail_default"><font=
 face=3D"comic sans ms, sans-serif">| + make -j 4 defconfig</font></div><di=
v class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0 =
=C2=A0HOSTCC=C2=A0 scripts/basic/fixdep</font></div><div class=3D"gmail_def=
ault"><font face=3D"comic sans ms, sans-serif">|=C2=A0</font></div><div cla=
ss=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=
=A0HOSTCC=C2=A0 scripts/basic/fixdep</font></div><div class=3D"gmail_defaul=
t"><font face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0HOSTCC=C2=A0 scri=
pts/kconfig/conf.o</font></div><div class=3D"gmail_default"><font face=3D"c=
omic sans ms, sans-serif">|=C2=A0</font></div><div class=3D"gmail_default">=
<font face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0HOSTCC=C2=A0 scripts=
/kconfig/conf.o</font></div><div class=3D"gmail_default"><font face=3D"comi=
c sans ms, sans-serif">|=C2=A0 =C2=A0SHIPPED scripts/kconfig/zconf.tab.c</f=
ont></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-se=
rif">|=C2=A0</font></div><div class=3D"gmail_default"><font face=3D"comic s=
ans ms, sans-serif">|=C2=A0 =C2=A0SHIPPED scripts/kconfig/zconf.tab.c</font=
></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif=
">|=C2=A0 =C2=A0SHIPPED scripts/kconfig/zconf.lex.c</font></div><div class=
=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0</font><=
/div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">=
|=C2=A0 =C2=A0SHIPPED scripts/kconfig/zconf.lex.c</font></div><div class=3D=
"gmail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0HOST=
CC=C2=A0 scripts/kconfig/zconf.tab.o</font></div><div class=3D"gmail_defaul=
t"><font face=3D"comic sans ms, sans-serif">|=C2=A0</font></div><div class=
=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0H=
OSTCC=C2=A0 scripts/kconfig/zconf.tab.o</font></div><div class=3D"gmail_def=
ault"><font face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0HOSTLD=C2=A0 s=
cripts/kconfig/conf</font></div><div class=3D"gmail_default"><font face=3D"=
comic sans ms, sans-serif">|=C2=A0</font></div><div class=3D"gmail_default"=
><font face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0HOSTLD=C2=A0 script=
s/kconfig/conf</font></div><div class=3D"gmail_default"><font face=3D"comic=
 sans ms, sans-serif">| *** Default configuration is based on &#39;x86_64_d=
efconfig&#39;</font></div><div class=3D"gmail_default"><font face=3D"comic =
sans ms, sans-serif">|=C2=A0</font></div><div class=3D"gmail_default"><font=
 face=3D"comic sans ms, sans-serif">| *** Default configuration is based on=
 &#39;x86_64_defconfig&#39;</font></div><div class=3D"gmail_default"><font =
face=3D"comic sans ms, sans-serif">| #</font></div><div class=3D"gmail_defa=
ult"><font face=3D"comic sans ms, sans-serif">| # configuration written to =
.config</font></div><div class=3D"gmail_default"><font face=3D"comic sans m=
s, sans-serif">| #</font></div><div class=3D"gmail_default"><font face=3D"c=
omic sans ms, sans-serif">|=C2=A0</font></div><div class=3D"gmail_default">=
<font face=3D"comic sans ms, sans-serif">| #</font></div><div class=3D"gmai=
l_default"><font face=3D"comic sans ms, sans-serif">| # configuration writt=
en to .config</font></div><div class=3D"gmail_default"><font face=3D"comic =
sans ms, sans-serif">| #</font></div><span class=3D"gmail-im" style=3D"colo=
r:rgb(80,0,80)"><div class=3D"gmail_default"><font face=3D"comic sans ms, s=
ans-serif">| + oe_runmake</font></div><div class=3D"gmail_default"><font fa=
ce=3D"comic sans ms, sans-serif">| + oe_runmake_call</font></div><div class=
=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">| + bbnote make=
 -j 4</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms,=
 sans-serif">| + [ -p</font></div><div class=3D"gmail_default"><font face=
=3D"comic sans ms, sans-serif">| + oe_runmake</font></div><div class=3D"gma=
il_default"><font face=3D"comic sans ms, sans-serif">| + oe_runmake_call</f=
ont></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-se=
rif">| + bbnote make -j 4</font></div></span><div class=3D"gmail_default"><=
font face=3D"comic sans ms, sans-serif">| + [ -pNOTE: make -j 4</font></div=
><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=C2=
=A0 /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linu=
x-srini/4.14-r1/temp/fifo.7174 ]</font></div><span class=3D"gmail-im" style=
=3D"color:rgb(80,0,80)"><div class=3D"gmail_default"><font face=3D"comic sa=
ns ms, sans-serif">| + printf %b\0 bbnote make -j 4</font></div><div class=
=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">| + make -j 4</=
font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-s=
erif">|=C2=A0</font></div></span><div class=3D"gmail_default"><font face=3D=
"comic sans ms, sans-serif">|=C2=A0 /home/srinivasan/yocto_session_ws_2/bui=
ld/tmp/work/i586-poky-linux/linux-srini/4.14-r1/temp/fifo.7174 ]</font></di=
v><span class=3D"gmail-im" style=3D"color:rgb(80,0,80)"><div class=3D"gmail=
_default"><font face=3D"comic sans ms, sans-serif">| + printf %b\0 bbnote m=
ake -j 4</font></div><div class=3D"gmail_default"><font face=3D"comic sans =
ms, sans-serif">| + make -j 4</font></div></span><div class=3D"gmail_defaul=
t"><font face=3D"comic sans ms, sans-serif">| scripts/kconfig/conf=C2=A0 --=
silentoldconfig Kconfig</font></div><div class=3D"gmail_default"><font face=
=3D"comic sans ms, sans-serif">|=C2=A0</font></div><div class=3D"gmail_defa=
ult"><font face=3D"comic sans ms, sans-serif">| scripts/kconfig/conf=C2=A0 =
--silentoldconfig Kconfig</font></div><div class=3D"gmail_default"><font fa=
ce=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0SYSTBL=C2=A0 arch/x86/entry/=
syscalls/../../include/generated/asm/syscalls_32.h</font></div><div class=
=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0</font><=
/div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">=
|=C2=A0 =C2=A0SYSTBL=C2=A0 arch/x86/entry/syscalls/../../include/generated/=
asm/syscalls_32.h</font></div><div class=3D"gmail_default"><font face=3D"co=
mic sans ms, sans-serif">|=C2=A0 =C2=A0SYSHDR=C2=A0 arch/x86/entry/syscalls=
/../../include/generated/asm/unistd_32_ia32.h</font></div><div class=3D"gma=
il_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0</font></div><d=
iv class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0=
 =C2=A0SYSHDR=C2=A0 arch/x86/entry/syscalls/../../include/generated/asm/uni=
std_32_ia32.h</font></div><div class=3D"gmail_default"><font face=3D"comic =
sans ms, sans-serif">|=C2=A0 =C2=A0SYSHDR=C2=A0 arch/x86/entry/syscalls/../=
../include/generated/asm/unistd_64_x32.h</font></div><div class=3D"gmail_de=
fault"><font face=3D"comic sans ms, sans-serif">|=C2=A0</font></div><div cl=
ass=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=
=A0SYSHDR=C2=A0 arch/x86/entry/syscalls/../../include/generated/asm/unistd_=
64_x32.h</font></div><div class=3D"gmail_default"><font face=3D"comic sans =
ms, sans-serif">|=C2=A0 =C2=A0CHK=C2=A0 =C2=A0 =C2=A0include/config/kernel.=
release</font></div><div class=3D"gmail_default"><font face=3D"comic sans m=
s, sans-serif">|=C2=A0</font></div><div class=3D"gmail_default"><font face=
=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0CHK=C2=A0 =C2=A0 =C2=A0include=
/config/kernel.release</font></div><div class=3D"gmail_default"><font face=
=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0SYSTBL=C2=A0 arch/x86/entry/sy=
scalls/../../include/generated/asm/syscalls_64.h</font></div><div class=3D"=
gmail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0</font></div=
><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=C2=
=A0 =C2=A0SYSTBL=C2=A0 arch/x86/entry/syscalls/../../include/generated/asm/=
syscalls_64.h</font></div><div class=3D"gmail_default"><font face=3D"comic =
sans ms, sans-serif">|=C2=A0 =C2=A0SYSHDR=C2=A0 arch/x86/entry/syscalls/../=
../include/generated/uapi/asm/unistd_32.h</font></div><div class=3D"gmail_d=
efault"><font face=3D"comic sans ms, sans-serif">|=C2=A0</font></div><div c=
lass=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=
=A0SYSHDR=C2=A0 arch/x86/entry/syscalls/../../include/generated/uapi/asm/un=
istd_32.h</font></div><div class=3D"gmail_default"><font face=3D"comic sans=
 ms, sans-serif">|=C2=A0 =C2=A0SYSHDR=C2=A0 arch/x86/entry/syscalls/../../i=
nclude/generated/uapi/asm/unistd_64.h</font></div><div class=3D"gmail_defau=
lt"><font face=3D"comic sans ms, sans-serif">|=C2=A0</font></div><div class=
=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0S=
YSHDR=C2=A0 arch/x86/entry/syscalls/../../include/generated/uapi/asm/unistd=
_64.h</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms,=
 sans-serif">|=C2=A0 =C2=A0SYSHDR=C2=A0 arch/x86/entry/syscalls/../../inclu=
de/generated/uapi/asm/unistd_x32.h</font></div><div class=3D"gmail_default"=
><font face=3D"comic sans ms, sans-serif">|=C2=A0</font></div><div class=3D=
"gmail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0SYSH=
DR=C2=A0 arch/x86/entry/syscalls/../../include/generated/uapi/asm/unistd_x3=
2.h</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, s=
ans-serif">|=C2=A0 =C2=A0CHK=C2=A0 =C2=A0 =C2=A0include/generated/uapi/linu=
x/version.h</font></div><div class=3D"gmail_default"><font face=3D"comic sa=
ns ms, sans-serif">|=C2=A0</font></div><div class=3D"gmail_default"><font f=
ace=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0CHK=C2=A0 =C2=A0 =C2=A0incl=
ude/generated/uapi/linux/version.h</font></div><div class=3D"gmail_default"=
><font face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0UPD=C2=A0 =C2=A0 =
=C2=A0include/generated/uapi/linux/version.h</font></div><div class=3D"gmai=
l_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0</font></div><di=
v class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0 =
=C2=A0UPD=C2=A0 =C2=A0 =C2=A0include/generated/uapi/linux/version.h</font><=
/div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">=
|=C2=A0 =C2=A0UPD=C2=A0 =C2=A0 =C2=A0include/config/kernel.release</font></=
div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=
=C2=A0</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms=
, sans-serif">|=C2=A0 =C2=A0UPD=C2=A0 =C2=A0 =C2=A0include/config/kernel.re=
lease</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms,=
 sans-serif">|=C2=A0 =C2=A0HOSTCC=C2=A0 arch/x86/tools/relocs_32.o</font></=
div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=
=C2=A0</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms=
, sans-serif">|=C2=A0 =C2=A0HOSTCC=C2=A0 arch/x86/tools/relocs_32.o</font><=
/div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">=
|=C2=A0 =C2=A0HOSTCC=C2=A0 arch/x86/tools/relocs_64.o</font></div><div clas=
s=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0</font>=
</div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"=
>|=C2=A0 =C2=A0HOSTCC=C2=A0 arch/x86/tools/relocs_64.o</font></div><div cla=
ss=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=
=A0HOSTCC=C2=A0 arch/x86/tools/relocs_common.o</font></div><div class=3D"gm=
ail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0</font></div><=
div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=C2=
=A0 =C2=A0HOSTCC=C2=A0 arch/x86/tools/relocs_common.o</font></div><div clas=
s=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0=
WRAP=C2=A0 =C2=A0 arch/x86/include/generated/asm/clkdev.h</font></div><div =
class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0</f=
ont></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-se=
rif">|=C2=A0 =C2=A0WRAP=C2=A0 =C2=A0 arch/x86/include/generated/asm/clkdev.=
h</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, san=
s-serif">|=C2=A0 =C2=A0WRAP=C2=A0 =C2=A0 arch/x86/include/generated/asm/dma=
-contiguous.h</font></div><div class=3D"gmail_default"><font face=3D"comic =
sans ms, sans-serif">|=C2=A0</font></div><div class=3D"gmail_default"><font=
 face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0WRAP=C2=A0 =C2=A0 arch/x8=
6/include/generated/asm/dma-contiguous.h</font></div><div class=3D"gmail_de=
fault"><font face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0WRAP=C2=A0 =
=C2=A0 arch/x86/include/generated/asm/early_ioremap.h</font></div><div clas=
s=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0</font>=
</div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"=
>|=C2=A0 =C2=A0WRAP=C2=A0 =C2=A0 arch/x86/include/generated/asm/early_iorem=
ap.h</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, =
sans-serif">|=C2=A0 =C2=A0WRAP=C2=A0 =C2=A0 arch/x86/include/generated/asm/=
mcs_spinlock.h</font></div><div class=3D"gmail_default"><font face=3D"comic=
 sans ms, sans-serif">|=C2=A0</font></div><div class=3D"gmail_default"><fon=
t face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0WRAP=C2=A0 =C2=A0 arch/x=
86/include/generated/asm/mcs_spinlock.h</font></div><div class=3D"gmail_def=
ault"><font face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0WRAP=C2=A0 =C2=
=A0 arch/x86/include/generated/asm/mm-arch-hooks.h</font></div><div class=
=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0</font><=
/div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">=
|=C2=A0 =C2=A0WRAP=C2=A0 =C2=A0 arch/x86/include/generated/asm/mm-arch-hook=
s.h</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, s=
ans-serif">|=C2=A0 =C2=A0CHK=C2=A0 =C2=A0 =C2=A0include/generated/utsreleas=
e.h</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, s=
ans-serif">|=C2=A0</font></div><div class=3D"gmail_default"><font face=3D"c=
omic sans ms, sans-serif">|=C2=A0 =C2=A0CHK=C2=A0 =C2=A0 =C2=A0include/gene=
rated/utsrelease.h</font></div><div class=3D"gmail_default"><font face=3D"c=
omic sans ms, sans-serif">|=C2=A0 =C2=A0UPD=C2=A0 =C2=A0 =C2=A0include/gene=
rated/utsrelease.h</font></div><div class=3D"gmail_default"><font face=3D"c=
omic sans ms, sans-serif">|=C2=A0</font></div><div class=3D"gmail_default">=
<font face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0UPD=C2=A0 =C2=A0 =C2=
=A0include/generated/utsrelease.h</font></div><div class=3D"gmail_default">=
<font face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0CC=C2=A0 =C2=A0 =C2=
=A0 scripts/mod/empty.o</font></div><div class=3D"gmail_default"><font face=
=3D"comic sans ms, sans-serif">|=C2=A0</font></div><div class=3D"gmail_defa=
ult"><font face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0CC=C2=A0 =C2=A0=
 =C2=A0 scripts/mod/empty.o</font></div><div class=3D"gmail_default"><font =
face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0HOSTCC=C2=A0 scripts/mod/m=
k_elfconfig</font></div><div class=3D"gmail_default"><font face=3D"comic sa=
ns ms, sans-serif">|=C2=A0</font></div><div class=3D"gmail_default"><font f=
ace=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0HOSTCC=C2=A0 scripts/mod/mk=
_elfconfig</font></div><div class=3D"gmail_default"><font face=3D"comic san=
s ms, sans-serif">|=C2=A0 =C2=A0HOSTLD=C2=A0 arch/x86/tools/relocs</font></=
div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=
=C2=A0</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms=
, sans-serif">|=C2=A0 =C2=A0HOSTLD=C2=A0 arch/x86/tools/relocs</font></div>=
<div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=C2=
=A0 =C2=A0CC=C2=A0 =C2=A0 =C2=A0 scripts/mod/devicetable-offsets.s</font></=
div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=
=C2=A0</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms=
, sans-serif">|=C2=A0 =C2=A0CC=C2=A0 =C2=A0 =C2=A0 scripts/mod/devicetable-=
offsets.s</font></div><div class=3D"gmail_default"><font face=3D"comic sans=
 ms, sans-serif">|=C2=A0 =C2=A0MKELF=C2=A0 =C2=A0scripts/mod/elfconfig.h</f=
ont></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-se=
rif">|=C2=A0</font></div><div class=3D"gmail_default"><font face=3D"comic s=
ans ms, sans-serif">|=C2=A0 =C2=A0MKELF=C2=A0 =C2=A0scripts/mod/elfconfig.h=
</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans=
-serif">|=C2=A0 =C2=A0CHK=C2=A0 =C2=A0 =C2=A0scripts/mod/devicetable-offset=
s.h</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, s=
ans-serif">|=C2=A0</font></div><div class=3D"gmail_default"><font face=3D"c=
omic sans ms, sans-serif">|=C2=A0 =C2=A0CHK=C2=A0 =C2=A0 =C2=A0scripts/mod/=
devicetable-offsets.h</font></div><div class=3D"gmail_default"><font face=
=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0UPD=C2=A0 =C2=A0 =C2=A0scripts=
/mod/devicetable-offsets.h</font></div><div class=3D"gmail_default"><font f=
ace=3D"comic sans ms, sans-serif">|=C2=A0</font></div><div class=3D"gmail_d=
efault"><font face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0UPD=C2=A0 =
=C2=A0 =C2=A0scripts/mod/devicetable-offsets.h</font></div><div class=3D"gm=
ail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0HOSTCC=
=C2=A0 scripts/mod/sumversion.o</font></div><div class=3D"gmail_default"><f=
ont face=3D"comic sans ms, sans-serif">|=C2=A0</font></div><div class=3D"gm=
ail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0HOSTCC=
=C2=A0 scripts/mod/sumversion.o</font></div><div class=3D"gmail_default"><f=
ont face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0HOSTCC=C2=A0 scripts/s=
elinux/genheaders/genheaders</font></div><div class=3D"gmail_default"><font=
 face=3D"comic sans ms, sans-serif">|=C2=A0</font></div><div class=3D"gmail=
_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0HOSTCC=C2=
=A0 scripts/selinux/genheaders/genheaders</font></div><div class=3D"gmail_d=
efault"><font face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0HOSTCC=C2=A0=
 scripts/selinux/mdp/mdp</font></div><div class=3D"gmail_default"><font fac=
e=3D"comic sans ms, sans-serif">|=C2=A0</font></div><div class=3D"gmail_def=
ault"><font face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0HOSTCC=C2=A0 s=
cripts/selinux/mdp/mdp</font></div><div class=3D"gmail_default"><font face=
=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0CC=C2=A0 =C2=A0 =C2=A0 kernel/=
bounds.s</font></div><div class=3D"gmail_default"><font face=3D"comic sans =
ms, sans-serif">|=C2=A0</font></div><div class=3D"gmail_default"><font face=
=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0CC=C2=A0 =C2=A0 =C2=A0 kernel/=
bounds.s</font></div><div class=3D"gmail_default"><font face=3D"comic sans =
ms, sans-serif">|=C2=A0 =C2=A0HOSTCC=C2=A0 scripts/kallsyms</font></div><di=
v class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0<=
/font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-=
serif">|=C2=A0 =C2=A0HOSTCC=C2=A0 scripts/kallsyms</font></div><div class=
=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0H=
OSTCC=C2=A0 scripts/mod/modpost.o</font></div><div class=3D"gmail_default">=
<font face=3D"comic sans ms, sans-serif">|=C2=A0</font></div><div class=3D"=
gmail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0HOSTC=
C=C2=A0 scripts/mod/modpost.o</font></div><div class=3D"gmail_default"><fon=
t face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0CHK=C2=A0 =C2=A0 =C2=A0i=
nclude/generated/timeconst.h</font></div><div class=3D"gmail_default"><font=
 face=3D"comic sans ms, sans-serif">|=C2=A0</font></div><div class=3D"gmail=
_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0CHK=C2=A0 =
=C2=A0 =C2=A0include/generated/timeconst.h</font></div><div class=3D"gmail_=
default"><font face=3D"comic sans ms, sans-serif"><b>| /bin/sh: 1: bc: not =
found</b></font></div><div class=3D"gmail_default"><font face=3D"comic sans=
 ms, sans-serif"><b>|=C2=A0</b></font></div><div class=3D"gmail_default"><f=
ont face=3D"comic sans ms, sans-serif"><b>| /bin/sh: 1: bc: not found</b></=
font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-s=
erif"><b>| make[1]: *** [include/generated/timeconst.h] Error 127</b></font=
></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif=
"><b>| make: *** [prepare0] Error 2</b></font></div><div class=3D"gmail_def=
ault"><font face=3D"comic sans ms, sans-serif"><b>| make: *** Waiting for u=
nfinished jobs....</b></font></div><div class=3D"gmail_default"><font face=
=3D"comic sans ms, sans-serif"><b>|=C2=A0</b></font></div><div class=3D"gma=
il_default"><font face=3D"comic sans ms, sans-serif"><b>| make[1]: *** [inc=
lude/generated/timeconst.h] Error 127</b></font></div><div class=3D"gmail_d=
efault"><font face=3D"comic sans ms, sans-serif"><b>| make: *** [prepare0] =
Error 2</b></font></div><div class=3D"gmail_default"><font face=3D"comic sa=
ns ms, sans-serif"><b>| make: *** Waiting for unfinished jobs....</b></font=
></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif=
">|=C2=A0 =C2=A0HOSTCC=C2=A0 scripts/pnmtologo</font></div><div class=3D"gm=
ail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0</font></div><=
div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=C2=
=A0 =C2=A0HOSTCC=C2=A0 scripts/pnmtologo</font></div><div class=3D"gmail_de=
fault"><font face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0HOSTCC=C2=A0 =
scripts/conmakehash</font></div><div class=3D"gmail_default"><font face=3D"=
comic sans ms, sans-serif">|=C2=A0</font></div><div class=3D"gmail_default"=
><font face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0HOSTCC=C2=A0 script=
s/conmakehash</font></div><div class=3D"gmail_default"><font face=3D"comic =
sans ms, sans-serif">|=C2=A0 =C2=A0HOSTCC=C2=A0 scripts/sortextable</font><=
/div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">=
|=C2=A0</font></div><div class=3D"gmail_default"><font face=3D"comic sans m=
s, sans-serif">|=C2=A0 =C2=A0HOSTCC=C2=A0 scripts/sortextable</font></div><=
div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=C2=
=A0 =C2=A0HOSTCC=C2=A0 scripts/mod/file2alias.o</font></div><div class=3D"g=
mail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0</font></div>=
<div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=C2=
=A0 =C2=A0HOSTCC=C2=A0 scripts/mod/file2alias.o</font></div><div class=3D"g=
mail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0HOSTLD=
=C2=A0 scripts/mod/modpost</font></div><div class=3D"gmail_default"><font f=
ace=3D"comic sans ms, sans-serif">|=C2=A0</font></div><div class=3D"gmail_d=
efault"><font face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0HOSTLD=C2=A0=
 scripts/mod/modpost</font></div><span class=3D"gmail-im" style=3D"color:rg=
b(80,0,80)"><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-=
serif">| + die oe_runmake failed</font></div><div class=3D"gmail_default"><=
font face=3D"comic sans ms, sans-serif">| + bbfatal_log oe_runmake failed</=
font></div></span><div class=3D"gmail_default"><font face=3D"comic sans ms,=
 sans-serif">| + [ -p /home/srinivasan/yocto_session_ws_2/build/tmp/work/i5=
86-poky-linux/linux-srini/4.14-r1/temp/fifo.7174 ]</font></div><span class=
=3D"gmail-im" style=3D"color:rgb(80,0,80)"><div class=3D"gmail_default"><fo=
nt face=3D"comic sans ms, sans-serif">| + printf %b\0 bbfatal_log oe_runmak=
e failed</font></div><div class=3D"gmail_default"><font face=3D"comic sans =
ms, sans-serif">| + exit 1</font></div><div class=3D"gmail_default"><font f=
ace=3D"comic sans ms, sans-serif">| + bb_exit_handler</font></div><div clas=
s=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">| + ret=3D1</f=
ont></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-se=
rif">| + echo WARNING: exit code 1 from a shell command.</font></div><div c=
lass=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">| WARNING: =
exit code 1 from a shell command.</font></div><div class=3D"gmail_default">=
<font face=3D"comic sans ms, sans-serif">| + exit 1</font></div><div class=
=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0</font><=
/div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">=
| + die oe_runmake failed</font></div><div class=3D"gmail_default"><font fa=
ce=3D"comic sans ms, sans-serif">| + bbfatal_log oe_runmake failed</font></=
div></span><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-s=
erif">| + [ -p /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky=
-linux/linux-srini/4.14-r1/temp/fifo.7174 ]</font></div><span class=3D"gmai=
l-im" style=3D"color:rgb(80,0,80)"><div class=3D"gmail_default"><font face=
=3D"comic sans ms, sans-serif">| + printf %b\0 bbfatal_log oe_runmake faile=
d</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, san=
s-serif">| + exit 1</font></div><div class=3D"gmail_default"><font face=3D"=
comic sans ms, sans-serif">| + bb_exit_handler</font></div><div class=3D"gm=
ail_default"><font face=3D"comic sans ms, sans-serif">| + ret=3D1</font></d=
iv><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">| =
+ echo WARNING: exit code 1 from a shell command.</font></div><div class=3D=
"gmail_default"><font face=3D"comic sans ms, sans-serif">| WARNING: exit co=
de 1 from a shell command.</font></div><div class=3D"gmail_default"><font f=
ace=3D"comic sans ms, sans-serif">| + exit 1</font></div></span><div class=
=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"><b>| ERROR: oe_=
runmake failed</b></font></div><div class=3D"gmail_default"><font face=3D"c=
omic sans ms, sans-serif"><b>| ERROR: Function failed: do_compile (log file=
 is located at /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky=
-linux/linux-srini/4.14-r1/temp/log.do_compile.7174)</b></font></div><span =
class=3D"gmail-im" style=3D"color:rgb(80,0,80)"><div class=3D"gmail_default=
"><font face=3D"comic sans ms, sans-serif"><b>ERROR: Task (/home/srinivasan=
/yocto_session_ws_2/poky/meta/recipes-kernel/linux/linux-srini_4.14.bb:do_c=
ompile) failed with exit code &#39;1&#39;</b></font></div><div class=3D"gma=
il_default"><font face=3D"comic sans ms, sans-serif"><b>NOTE: Tasks Summary=
: Attempted 312 tasks of which 306 didn&#39;t need to be rerun and 1 failed=
.</b></font></div><div class=3D"gmail_default"><font face=3D"comic sans ms,=
 sans-serif"><br></font></div><div class=3D"gmail_default"><font face=3D"co=
mic sans ms, sans-serif">Summary: 1 task failed:</font></div><div class=3D"=
gmail_default"><font face=3D"comic sans ms, sans-serif">=C2=A0 /home/sriniv=
asan/yocto_session_ws_2/poky/meta/recipes-kernel/linux/linux-srini_4.14.bb:=
do_compile</font></div><div class=3D"gmail_default"><font face=3D"comic san=
s ms, sans-serif">Summary: There was 1 WARNING message shown.</font></div><=
div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">Summar=
y: There were 2 ERROR messages shown, returning a non-zero exit code.</font=
></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif=
">srinivasan@srinivasan-UX305UA:~/yocto_session_ws_2/build$</font></div></s=
pan></div></div></div></div></div></div></div></div></div></div></div>

--0000000000007a180a057514e88b--

--0000000000007a180b057514e88d
Content-Type: application/octet-stream; name="linux-srini_4.14.bb"
Content-Disposition: attachment; filename="linux-srini_4.14.bb"
Content-Transfer-Encoding: base64
Content-ID: <f_jloepeez0>
X-Attachment-Id: f_jloepeez0

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

--0000000000007a180b057514e88d--
