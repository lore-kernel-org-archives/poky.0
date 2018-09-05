Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3A384E00A64; Tue,  4 Sep 2018 18:42:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_FONT_LOW_CONTRAST,
	HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.222.195 listed in list.dnswl.org]
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
Received: from mail-qk1-f195.google.com (mail-qk1-f195.google.com
	[209.85.222.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8E5FE00A39;
	Tue,  4 Sep 2018 18:42:12 -0700 (PDT)
Received: by mail-qk1-f195.google.com with SMTP id g197-v6so3862148qke.5;
	Tue, 04 Sep 2018 18:42:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=YWf8HuKPBY6O4ekmtMaA+9wJOCM5XXnAlzZ1MTaQLFA=;
	b=eWB+H5OYlqSCv9ZRgJQPBHUuKdnpsZzH8XXvh9JFGLalPkzZwFIPOgrBtfo8szUSes
	IWmL7vNq1mHI4N+6ea7gGNRf8YKjMgKf8+43kCG5m8GGHQSJyuLUc+gAef8te0JtdB/C
	uyh2U4Z9vmjwA7PaAz9SoXBrJk9BynjqJWdKsdIa06dq8AHLJsGoKTIF5+DZfp9YZVou
	ERzQu1RS/W0GMheqQnZ1J5qFLpSICLh9zEsG8W5i/fni10uGpXepzYr1hIv+LyPetA4I
	AVVqo9Idb8eHk0Uy3FOp272rHjR9X9GNHfR5fC4zdYCrmhuc1HEucuD8Fh9njGuGDpp4
	ZAFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=YWf8HuKPBY6O4ekmtMaA+9wJOCM5XXnAlzZ1MTaQLFA=;
	b=ohTmjxcD/c/il+If6R/OSPP895r1Di+YlED1i2QqkEVpB3wc5T/dnZTjaYugoAii8e
	GuLg+LMQSrE9UbfObSsAQWXw2kivQP7h2DVAGpgz2ihnD+PVUM0pfyswOxrgv8nbSvE1
	d6yVGN+mEoJm+eZ8FMMTcdYraSj0xb0LLzoxp+BKl6La0AY3LsTiJ0FfhKTCZ+3V8osE
	58RS9VUhWVAszWS48NKY3BwMGSARQfW2yKqJdaeKd4jppOaBvgoKmskQBUAguHNDulET
	6ae3TKUcun6+P2MjsG0zpufhc+toQxrNoUgQ4JPm58NGICI9e7HyLkUkhzzsTaWcO63h
	n7Kw==
X-Gm-Message-State: APzg51D9PvY3zVTGP2tSI12U0ixsH4gekwvBw+4dHa22Y7d/5Xizjmh9
	VTWjDdb14GL3PD5b19pfP16Wn4DLh135lKaGbk0=
X-Google-Smtp-Source: ANB0Vdan3OqHG12szCZ+PTYLHcY9u204qn8LjlXxAQN9STrFDtgQ9A1ckpNwqfHSPTvxkPXr8tg5mmCu26gYCQQUsWE=
X-Received: by 2002:a37:a811:: with SMTP id
	r17-v6mr31161288qke.81.1536111731814; 
	Tue, 04 Sep 2018 18:42:11 -0700 (PDT)
MIME-Version: 1.0
References: <CAFsTbWdWMce5h_MBbNiUgsJ+Pcdu=V3jJqf6StSFxJ0d82Z6WQ@mail.gmail.com>
In-Reply-To: <CAFsTbWdWMce5h_MBbNiUgsJ+Pcdu=V3jJqf6StSFxJ0d82Z6WQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 4 Sep 2018 18:41:45 -0700
Message-ID: <CAMKF1sp7e_JZE68Cs29RC+jBRQUktj8C3-XfO_itQJT+ObQx=A@mail.gmail.com>
To: srinivasan.rns@gmail.com
Cc: yocto-bsp@yoctoproject.org,
	"Development list for the linux-yocto*.git Linux kernel repositories"
	<linux-yocto@yoctoproject.org>, yocto-infrastructure@yoctoproject.org,
	yocto-builds@yoctoproject.org, meta-intel@yoctoproject.org,
	poky@yoctoproject.org
Subject: Re: Yocto kernel compilation issues
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
X-List-Received-Date: Wed, 05 Sep 2018 01:42:15 -0000
Content-Type: multipart/alternative; boundary="0000000000001c3c10057515e294"

--0000000000001c3c10057515e294
Content-Type: text/plain; charset="UTF-8"

in your local.conf add

HOSTTOOLS += "bc"

see if that helps

On Tue, Sep 4, 2018 at 5:33 PM srinivasan <srinivasan.rns@gmail.com> wrote:

>
> srinivasan <srinivasan.rns@gmail.com>
> 5:55 AM (4 minutes ago)
> to *yocto-infrastructure*
> After changing from "*do_compile_ () {*" to "*do_compile() {*", in the
> attached recipe file, Compilation started but got stuck  "*/bin/sh: 1:
> bc: not found*
>
> *make[1]: *** [include/generated/timeconst.h] Error 127*
> *make: *** [prepare0] Error 2*
> *make: *** Waiting for unfinished jobs...."*
>
> *Even I tried installing "*sudo apt-get install bc"* but still the same
> issue as above, Kindly do the needful in resolving the above issue as am
> stuck with the same issue from past 4 days*
>
> *And I am even able to build kernel independently before integrating into
> yocto project*
>
> *References:*
>
> *1. Ubuntu version used 14.04*
>
> *2. Poky Distro version*
>
> DISTRO = "poky"
> DISTRO_NAME = "Poky (Yocto Project Reference Distro)"
> DISTRO_VERSION = "2.5+snapshot-${DATE}"
>
> *3.Logs:*
>
> NOTE: linux-srini-4.14-r1 do_prepare_recipe_sysroot: Direct dependencies
> are
> ['/home/srinivasan/yocto_session_ws_2/poky/meta/recipes-devtools/libtool/libtool-native_2.4.6.bb:do_populate_sysroot',
> 'virtual:native:/home/srinivasan/yocto_session_ws_2/poky/meta/recipes-devtools/gnu-config/gnu-config_git.bb:do_populate_sysroot',
> 'virtual:native:/home/srinivasan/yocto_session_ws_2/poky/meta/recipes-devtools/autoconf/autoconf_2.69.bb:do_populate_sysroot',
> 'virtual:native:/home/srinivasan/yocto_session_ws_2/poky/meta/recipes-devtools/automake/automake_1.16.1.bb:
> do_populate_sysroot']
> NOTE: linux-srini-4.14-r1 do_prepare_recipe_sysroot: Installed into
> sysroot: ['libtool-native', 'gnu-config-native', 'autoconf-native',
> 'automake-native', 'texinfo-dummy-native', 'quilt-native', 'm4-native']
> + cd
> /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/git
>
> NOTE: linux-srini-4.14-r1 do_compile: make -j 4 mrproper
> + oe_runmake mrproper
> + oe_runmake_call mrproper
> + bbnote make -j 4 mrproper
> + [ -p
> /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/temp/fifo.7174
> ]
> + printf %b\0 bbnote make -j 4 mrproper
> + make -j 4 mrproper
>
>   CLEAN   .config
>
> + oe_runmake defconfig
> + oe_runmake_call defconfig
> + bbnote make -j 4 defconfig
>
> NOTE: linux-srini-4.14-r1 do_compile: make -j 4 defconfig
> + [ -p
> /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/temp/fifo.7174
> ]
> + printf %b\0 bbnote make -j 4 defconfig
> + make -j 4 defconfig
>
>   HOSTCC  scripts/basic/fixdep
>
>   HOSTCC  scripts/kconfig/conf.o
>
>   SHIPPED scripts/kconfig/zconf.tab.c
>
>   SHIPPED scripts/kconfig/zconf.lex.c
>
>   HOSTCC  scripts/kconfig/zconf.tab.o
>
>   HOSTLD  scripts/kconfig/conf
>
> *** Default configuration is based on 'x86_64_defconfig'
>
> #
> # configuration written to .config
> #
>
> + oe_runmake
> + oe_runmake_call
> + bbnote make -j 4
> + [ -p
> NOTE: linux-srini-4.14-r1 do_compile: make -j 4
>  /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/temp/fifo.7174
> ]
> + printf %b\0 bbnote make -j 4
> + make -j 4
>
> scripts/kconfig/conf  --silentoldconfig Kconfig
>
>   SYSTBL  arch/x86/entry/syscalls/../../include/generated/asm/syscalls_32.h
>
>   SYSHDR
> arch/x86/entry/syscalls/../../include/generated/asm/unistd_32_ia32.h
>
>   SYSHDR
> arch/x86/entry/syscalls/../../include/generated/asm/unistd_64_x32.h
>
>   CHK     include/config/kernel.release
>
>   SYSTBL  arch/x86/entry/syscalls/../../include/generated/asm/syscalls_64.h
>
>   SYSHDR
> arch/x86/entry/syscalls/../../include/generated/uapi/asm/unistd_32.h
>
>   SYSHDR
> arch/x86/entry/syscalls/../../include/generated/uapi/asm/unistd_64.h
>
>   SYSHDR
> arch/x86/entry/syscalls/../../include/generated/uapi/asm/unistd_x32.h
>
>   CHK     include/generated/uapi/linux/version.h
>
>   UPD     include/generated/uapi/linux/version.h
>
>   UPD     include/config/kernel.release
>
>   HOSTCC  arch/x86/tools/relocs_32.o
>
>   HOSTCC  arch/x86/tools/relocs_64.o
>
>   HOSTCC  arch/x86/tools/relocs_common.o
>
>   WRAP    arch/x86/include/generated/asm/clkdev.h
>
>   WRAP    arch/x86/include/generated/asm/dma-contiguous.h
>
>   WRAP    arch/x86/include/generated/asm/early_ioremap.h
>
>   WRAP    arch/x86/include/generated/asm/mcs_spinlock.h
>
>   WRAP    arch/x86/include/generated/asm/mm-arch-hooks.h
>
>   CHK     include/generated/utsrelease.h
>
>   UPD     include/generated/utsrelease.h
>
>   CC      scripts/mod/empty.o
>
>   HOSTCC  scripts/mod/mk_elfconfig
>
>   HOSTLD  arch/x86/tools/relocs
>
>   CC      scripts/mod/devicetable-offsets.s
>
>   MKELF   scripts/mod/elfconfig.h
>
>   CHK     scripts/mod/devicetable-offsets.h
>
>   UPD     scripts/mod/devicetable-offsets.h
>
>   HOSTCC  scripts/mod/sumversion.o
>
>   HOSTCC  scripts/selinux/genheaders/genheaders
>
>   HOSTCC  scripts/selinux/mdp/mdp
>
>   CC      kernel/bounds.s
>
>   HOSTCC  scripts/kallsyms
>
>   HOSTCC  scripts/mod/modpost.o
>
>   CHK     include/generated/timeconst.h
>
> */bin/sh: 1: bc: not found*
>
> *make[1]: *** [include/generated/timeconst.h] Error 127*
> *make: *** [prepare0] Error 2*
> *make: *** Waiting for unfinished jobs....*
>
>   HOSTCC  scripts/pnmtologo
>
>   HOSTCC  scripts/conmakehash
>
>   HOSTCC  scripts/sortextable
>
>   HOSTCC  scripts/mod/file2alias.o
>
>   HOSTLD  scripts/mod/modpost
>
> + die oe_runmake failed
> + bbfatal_log oe_runmake failed
> + [ -p
> /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/temp/fifo.7174
> ]
> + printf %b\0 bbfatal_log oe_runmake failed
> + exit 1
> + bb_exit_handler
> + ret=1
> + echo WARNING: exit code 1 from a shell command.
> WARNING: exit code 1 from a shell command.
> + exit 1
>
> *ERROR: linux-srini-4.14-r1 do_compile: oe_runmake failed*
> *ERROR: linux-srini-4.14-r1 do_compile: Function failed: do_compile (log
> file is located at
> /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/temp/log.do_compile.7174)*
> *ERROR: Logfile of failure stored in:
> /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/temp/log.do_compile.7174*
> Log data follows:
> | DEBUG: SITE files ['endian-little', 'bit-32', 'ix86-common',
> 'common-linux', 'common-glibc', 'i586-linux', 'common']
> | DEBUG: Executing shell function do_compile
> | + cd
> /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/build
> | + do_compile
> | + cd
> /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/git
> |
> | + cd
> /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/build
> | + do_compile
> | + cd
> /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/git
> | NOTE: make -j 4 mrproper
> | + oe_runmake mrproper
> | + oe_runmake_call mrproper
> | + bbnote make -j 4 mrproper
> | + [ -p
> /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/temp/fifo.7174
> ]
> | + printf %b\0 bbnote make -j 4 mrproper
> | + make -j 4 mrproper
> |
> | + oe_runmake mrproper
> | + oe_runmake_call mrproper
> | + bbnote make -j 4 mrproper
> | + [ -p
> /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/temp/fifo.7174
> ]
> | + printf %b\0 bbnote make -j 4 mrproper
> | + make -j 4 mrproper
> |   CLEAN   .config
> |
> |   CLEAN   .config
> | + oe_runmake defconfig
> | + oe_runmake_call defconfig
> | + bbnote make -j 4 defconfig
> |
> | + oe_runmake defconfig
> | + oe_runmake_call defconfig
> | + bbnote make -j 4 defconfig
> | NOTE: make -j 4 defconfig
> | + [ -p
> /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/temp/fifo.7174
> ]
> | + printf %b\0 bbnote make -j 4 defconfig
> | + make -j 4 defconfig
> |
> | + [ -p
> /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/temp/fifo.7174
> ]
> | + printf %b\0 bbnote make -j 4 defconfig
> | + make -j 4 defconfig
> |   HOSTCC  scripts/basic/fixdep
> |
> |   HOSTCC  scripts/basic/fixdep
> |   HOSTCC  scripts/kconfig/conf.o
> |
> |   HOSTCC  scripts/kconfig/conf.o
> |   SHIPPED scripts/kconfig/zconf.tab.c
> |
> |   SHIPPED scripts/kconfig/zconf.tab.c
> |   SHIPPED scripts/kconfig/zconf.lex.c
> |
> |   SHIPPED scripts/kconfig/zconf.lex.c
> |   HOSTCC  scripts/kconfig/zconf.tab.o
> |
> |   HOSTCC  scripts/kconfig/zconf.tab.o
> |   HOSTLD  scripts/kconfig/conf
> |
> |   HOSTLD  scripts/kconfig/conf
> | *** Default configuration is based on 'x86_64_defconfig'
> |
> | *** Default configuration is based on 'x86_64_defconfig'
> | #
> | # configuration written to .config
> | #
> |
> | #
> | # configuration written to .config
> | #
> | + oe_runmake
> | + oe_runmake_call
> | + bbnote make -j 4
> | + [ -p
> | + oe_runmake
> | + oe_runmake_call
> | + bbnote make -j 4
> | + [ -pNOTE: make -j 4
> |
> /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/temp/fifo.7174
> ]
> | + printf %b\0 bbnote make -j 4
> | + make -j 4
> |
> |
> /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/temp/fifo.7174
> ]
> | + printf %b\0 bbnote make -j 4
> | + make -j 4
> | scripts/kconfig/conf  --silentoldconfig Kconfig
> |
> | scripts/kconfig/conf  --silentoldconfig Kconfig
> |   SYSTBL
> arch/x86/entry/syscalls/../../include/generated/asm/syscalls_32.h
> |
> |   SYSTBL
> arch/x86/entry/syscalls/../../include/generated/asm/syscalls_32.h
> |   SYSHDR
> arch/x86/entry/syscalls/../../include/generated/asm/unistd_32_ia32.h
> |
> |   SYSHDR
> arch/x86/entry/syscalls/../../include/generated/asm/unistd_32_ia32.h
> |   SYSHDR
> arch/x86/entry/syscalls/../../include/generated/asm/unistd_64_x32.h
> |
> |   SYSHDR
> arch/x86/entry/syscalls/../../include/generated/asm/unistd_64_x32.h
> |   CHK     include/config/kernel.release
> |
> |   CHK     include/config/kernel.release
> |   SYSTBL
> arch/x86/entry/syscalls/../../include/generated/asm/syscalls_64.h
> |
> |   SYSTBL
> arch/x86/entry/syscalls/../../include/generated/asm/syscalls_64.h
> |   SYSHDR
> arch/x86/entry/syscalls/../../include/generated/uapi/asm/unistd_32.h
> |
> |   SYSHDR
> arch/x86/entry/syscalls/../../include/generated/uapi/asm/unistd_32.h
> |   SYSHDR
> arch/x86/entry/syscalls/../../include/generated/uapi/asm/unistd_64.h
> |
> |   SYSHDR
> arch/x86/entry/syscalls/../../include/generated/uapi/asm/unistd_64.h
> |   SYSHDR
> arch/x86/entry/syscalls/../../include/generated/uapi/asm/unistd_x32.h
> |
> |   SYSHDR
> arch/x86/entry/syscalls/../../include/generated/uapi/asm/unistd_x32.h
> |   CHK     include/generated/uapi/linux/version.h
> |
> |   CHK     include/generated/uapi/linux/version.h
> |   UPD     include/generated/uapi/linux/version.h
> |
> |   UPD     include/generated/uapi/linux/version.h
> |   UPD     include/config/kernel.release
> |
> |   UPD     include/config/kernel.release
> |   HOSTCC  arch/x86/tools/relocs_32.o
> |
> |   HOSTCC  arch/x86/tools/relocs_32.o
> |   HOSTCC  arch/x86/tools/relocs_64.o
> |
> |   HOSTCC  arch/x86/tools/relocs_64.o
> |   HOSTCC  arch/x86/tools/relocs_common.o
> |
> |   HOSTCC  arch/x86/tools/relocs_common.o
> |   WRAP    arch/x86/include/generated/asm/clkdev.h
> |
> |   WRAP    arch/x86/include/generated/asm/clkdev.h
> |   WRAP    arch/x86/include/generated/asm/dma-contiguous.h
> |
> |   WRAP    arch/x86/include/generated/asm/dma-contiguous.h
> |   WRAP    arch/x86/include/generated/asm/early_ioremap.h
> |
> |   WRAP    arch/x86/include/generated/asm/early_ioremap.h
> |   WRAP    arch/x86/include/generated/asm/mcs_spinlock.h
> |
> |   WRAP    arch/x86/include/generated/asm/mcs_spinlock.h
> |   WRAP    arch/x86/include/generated/asm/mm-arch-hooks.h
> |
> |   WRAP    arch/x86/include/generated/asm/mm-arch-hooks.h
> |   CHK     include/generated/utsrelease.h
> |
> |   CHK     include/generated/utsrelease.h
> |   UPD     include/generated/utsrelease.h
> |
> |   UPD     include/generated/utsrelease.h
> |   CC      scripts/mod/empty.o
> |
> |   CC      scripts/mod/empty.o
> |   HOSTCC  scripts/mod/mk_elfconfig
> |
> |   HOSTCC  scripts/mod/mk_elfconfig
> |   HOSTLD  arch/x86/tools/relocs
> |
> |   HOSTLD  arch/x86/tools/relocs
> |   CC      scripts/mod/devicetable-offsets.s
> |
> |   CC      scripts/mod/devicetable-offsets.s
> |   MKELF   scripts/mod/elfconfig.h
> |
> |   MKELF   scripts/mod/elfconfig.h
> |   CHK     scripts/mod/devicetable-offsets.h
> |
> |   CHK     scripts/mod/devicetable-offsets.h
> |   UPD     scripts/mod/devicetable-offsets.h
> |
> |   UPD     scripts/mod/devicetable-offsets.h
> |   HOSTCC  scripts/mod/sumversion.o
> |
> |   HOSTCC  scripts/mod/sumversion.o
> |   HOSTCC  scripts/selinux/genheaders/genheaders
> |
> |   HOSTCC  scripts/selinux/genheaders/genheaders
> |   HOSTCC  scripts/selinux/mdp/mdp
> |
> |   HOSTCC  scripts/selinux/mdp/mdp
> |   CC      kernel/bounds.s
> |
> |   CC      kernel/bounds.s
> |   HOSTCC  scripts/kallsyms
> |
> |   HOSTCC  scripts/kallsyms
> |   HOSTCC  scripts/mod/modpost.o
> |
> |   HOSTCC  scripts/mod/modpost.o
> |   CHK     include/generated/timeconst.h
> |
> |   CHK     include/generated/timeconst.h
> *| /bin/sh: 1: bc: not found*
> *| *
> *| /bin/sh: 1: bc: not found*
> *| make[1]: *** [include/generated/timeconst.h] Error 127*
> *| make: *** [prepare0] Error 2*
> *| make: *** Waiting for unfinished jobs....*
> *| *
> *| make[1]: *** [include/generated/timeconst.h] Error 127*
> *| make: *** [prepare0] Error 2*
> *| make: *** Waiting for unfinished jobs....*
> |   HOSTCC  scripts/pnmtologo
> |
> |   HOSTCC  scripts/pnmtologo
> |   HOSTCC  scripts/conmakehash
> |
> |   HOSTCC  scripts/conmakehash
> |   HOSTCC  scripts/sortextable
> |
> |   HOSTCC  scripts/sortextable
> |   HOSTCC  scripts/mod/file2alias.o
> |
> |   HOSTCC  scripts/mod/file2alias.o
> |   HOSTLD  scripts/mod/modpost
> |
> |   HOSTLD  scripts/mod/modpost
> | + die oe_runmake failed
> | + bbfatal_log oe_runmake failed
> | + [ -p
> /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/temp/fifo.7174
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
> /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/temp/fifo.7174
> ]
> | + printf %b\0 bbfatal_log oe_runmake failed
> | + exit 1
> | + bb_exit_handler
> | + ret=1
> | + echo WARNING: exit code 1 from a shell command.
> | WARNING: exit code 1 from a shell command.
> | + exit 1
> *| ERROR: oe_runmake failed*
> *| ERROR: Function failed: do_compile (log file is located at
> /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/temp/log.do_compile.7174)*
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
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

--0000000000001c3c10057515e294
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:monospac=
e,monospace">in your local.conf add</div><div class=3D"gmail_default" style=
=3D"font-family:monospace,monospace"><br></div><div class=3D"gmail_default"=
 style=3D"font-family:monospace,monospace">HOSTTOOLS=C2=A0+=3D &quot;bc&quo=
t;</div><div class=3D"gmail_default" style=3D"font-family:monospace,monospa=
ce"><br></div><div class=3D"gmail_default" style=3D"font-family:monospace,m=
onospace">see if that helps</div></div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr">On Tue, Sep 4, 2018 at 5:33 PM srinivasan &lt;<a href=3D"mailto=
:srinivasan.rns@gmail.com">srinivasan.rns@gmail.com</a>&gt; wrote:<br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1=
px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_defaul=
t" style=3D"font-family:comic sans ms,sans-serif"><div class=3D"m_440199883=
8644016827gmail-gE m_4401998838644016827gmail-iv m_4401998838644016827gmail=
-gt" style=3D"padding:20px 0px 0px;font-size:12.8px;font-family:Roboto,Robo=
toDraft,Helvetica,Arial,sans-serif"><br class=3D"m_4401998838644016827gmail=
-Apple-interchange-newline"><table cellpadding=3D"0" class=3D"m_44019988386=
44016827gmail-cf m_4401998838644016827gmail-gJ" style=3D"border-collapse:co=
llapse;margin-top:0px;width:auto;font-size:0.875rem;letter-spacing:0.2px;di=
splay:block"><tbody style=3D"display:block"><tr class=3D"m_4401998838644016=
827gmail-acZ" style=3D"height:auto;display:flex"><td class=3D"m_44019988386=
44016827gmail-gF m_4401998838644016827gmail-gK" style=3D"white-space:nowrap=
;padding:0px;vertical-align:top;width:989.531px;line-height:20px;display:bl=
ock;max-height:20px"><table cellpadding=3D"0" class=3D"m_440199883864401682=
7gmail-cf m_4401998838644016827gmail-ix" style=3D"border-collapse:collapse;=
table-layout:fixed;width:989px"><tbody><tr><td class=3D"m_44019988386440168=
27gmail-c2" style=3D"display:flex"><h3 class=3D"m_4401998838644016827gmail-=
iw" style=3D"overflow:hidden;max-width:92%;font-size:0.75rem;font-weight:in=
herit;margin:inherit;letter-spacing:0.3px;color:rgb(95,99,104);line-height:=
20px"><span name=3D"srinivasan" class=3D"m_4401998838644016827gmail-gD" sty=
le=3D"color:rgb(32,33,36);font-size:0.875rem;font-weight:bold;display:inlin=
e;vertical-align:top;letter-spacing:0.2px;line-height:20px">srinivasan</spa=
n>=C2=A0<span class=3D"m_4401998838644016827gmail-go" style=3D"vertical-ali=
gn:top;color:rgb(85,85,85)">&lt;<a href=3D"mailto:srinivasan.rns@gmail.com"=
 target=3D"_blank">srinivasan.rns@gmail.com</a>&gt;</span></h3></td></tr></=
tbody></table></td><td class=3D"m_4401998838644016827gmail-gH m_44019988386=
44016827gmail-bAk" style=3D"text-align:right;white-space:nowrap;vertical-al=
ign:top;display:block;max-height:20px"><div class=3D"m_4401998838644016827g=
mail-gK" style=3D"padding:0px;display:flex"><span id=3D"m_44019988386440168=
27gmail-:1dc" class=3D"m_4401998838644016827gmail-g3" title=3D"Sep 5, 2018,=
 5:55 AM" alt=3D"Sep 5, 2018, 5:55 AM" style=3D"vertical-align:top;margin:0=
px;font-size:0.75rem;letter-spacing:0.3px;color:rgb(95,99,104);display:bloc=
k;line-height:20px">5:55 AM (4 minutes ago)</span><div class=3D"m_440199883=
8644016827gmail-zd m_4401998838644016827gmail-bi4" title=3D"Not starred" st=
yle=3D"display:inline-block;height:20px;margin-left:20px;outline:0px"><span=
 class=3D"m_4401998838644016827gmail-T-KT" style=3D"display:inline-flex;hei=
ght:20px;text-align:center;width:20px;padding:0px;margin:0px;border:none;ou=
tline:none"></span></div></div></td><td class=3D"m_4401998838644016827gmail=
-gH" style=3D"text-align:right;white-space:nowrap;vertical-align:top;displa=
y:flex"></td><td class=3D"m_4401998838644016827gmail-gH m_44019988386440168=
27gmail-acX m_4401998838644016827gmail-bAm" rowspan=3D"2" style=3D"text-ali=
gn:right;white-space:nowrap;vertical-align:top;display:block;max-height:20p=
x"><div class=3D"m_4401998838644016827gmail-T-I m_4401998838644016827gmail-=
J-J5-Ji m_4401998838644016827gmail-T-I-Js-IF m_4401998838644016827gmail-aaq=
 m_4401998838644016827gmail-T-I-ax7 m_4401998838644016827gmail-L3" style=3D=
"display:inline-flex;border-radius:2px 0px 0px 2px;font-size:0.875rem;text-=
align:center;margin:0px 0px 0px 20px;height:20px;line-height:18px;min-width=
:0px;outline:none;padding:0px;background:transparent;color:rgb(68,68,68);bo=
rder:none"><img class=3D"m_4401998838644016827gmail-hB m_440199883864401682=
7gmail-T-I-J3" src=3D"https://mail.google.com/mail/u/0/images/cleardot.gif"=
 alt=3D"" style=3D"background:url(&quot;https://ci5.googleusercontent.com/p=
roxy/9OYLoJXy0WBPP4j1DhYXDH39lV88KazEUrrboYKBsrkl8zEfcL7HAtboiaoSXxm2WQN-Es=
JWontmCi59m-u2MA-4BVKNacZ-WSOEXUEH2_Mmbd1wmqZri7WelggM5b41fKU=3Ds0-d-e1-ft#=
https://www.gstatic.com/images/icons/material/system/1x/reply_black_20dp.pn=
g&quot;) 50% 50%/20px no-repeat;height:20px;margin:0px;vertical-align:middl=
e;width:20px;opacity:0.54;display:inline-block;padding:0px"></div><div id=
=3D"m_4401998838644016827gmail-:1a8" class=3D"m_4401998838644016827gmail-T-=
I m_4401998838644016827gmail-J-J5-Ji m_4401998838644016827gmail-T-I-Js-Gs m=
_4401998838644016827gmail-aap m_4401998838644016827gmail-T-I-awG m_44019988=
38644016827gmail-T-I-ax7 m_4401998838644016827gmail-L3" style=3D"display:in=
line-flex;border-radius:0px 2px 2px 0px;font-size:0.875rem;text-align:cente=
r;margin:0px 0px 0px 20px;height:20px;line-height:18px;min-width:0px;outlin=
e:none;padding:0px;background:transparent;color:rgb(68,68,68);border:none">=
<img class=3D"m_4401998838644016827gmail-hA m_4401998838644016827gmail-T-I-=
J3" src=3D"https://mail.google.com/mail/u/0/images/cleardot.gif" alt=3D"" s=
tyle=3D"background:url(&quot;https://ci6.googleusercontent.com/proxy/aDXwBc=
PFt7tI6jTRMKF7wgEI1xaCGhgFemFZ-5LcBDQ6-2TT57MEn09o5_JV4mVWUAV0ZEUKjpExEG4Il=
vT-VuTpIZvI5qULN5j5-RNGN6Gm5rUCbFKkTqV3PkZCF0AodbaFAhy2=3Ds0-d-e1-ft#https:=
//www.gstatic.com/images/icons/material/system/1x/more_vert_black_20dp.png&=
quot;) 50% 50%/20px no-repeat;height:20px;width:20px;margin:0px;vertical-al=
ign:middle;opacity:0.54;display:inline-block;padding:0px"></div></td></tr><=
tr class=3D"m_4401998838644016827gmail-acZ m_4401998838644016827gmail-xD" s=
tyle=3D"height:auto;display:flex"><td colspan=3D"3"><table cellpadding=3D"0=
" class=3D"m_4401998838644016827gmail-cf m_4401998838644016827gmail-adz" st=
yle=3D"border-collapse:collapse;table-layout:fixed;white-space:nowrap;width=
:1248px"><tbody><tr><td class=3D"m_4401998838644016827gmail-ady" style=3D"o=
verflow:visible;text-overflow:ellipsis;display:flex;line-height:20px"><div =
class=3D"m_4401998838644016827gmail-iw m_4401998838644016827gmail-ajw" styl=
e=3D"overflow:hidden;max-width:92%;display:inline-block"><span class=3D"m_4=
401998838644016827gmail-hb" style=3D"vertical-align:top;color:rgb(95,99,104=
);font-size:0.75rem;letter-spacing:0.3px;line-height:20px">to=C2=A0<b><span=
 dir=3D"ltr" name=3D"yocto-infrastructure" class=3D"m_4401998838644016827gm=
ail-g2 m_4401998838644016827gmail-ac2" style=3D"color:rgb(34,34,34);font-we=
ight:normal;vertical-align:top">yocto-infrastructure</span></b></span></div=
><div class=3D"m_4401998838644016827gmail-ajy" style=3D"display:inline-flex=
;margin-left:4px;vertical-align:top;border:none;outline:none"><img class=3D=
"m_4401998838644016827gmail-ajz" id=3D"m_4401998838644016827gmail-:1a7" src=
=3D"https://mail.google.com/mail/u/0/images/cleardot.gif" alt=3D"" style=3D=
"background:url(&quot;https://ci5.googleusercontent.com/proxy/dufS3QIsqQK7c=
3rMmjhz9QMJ-6DrGiWotjXx6NCuGn0FWhAuq9c6rIg86OQ-7GOFhyWR8DCJr9y2d11N8fuEaIfl=
RR7M0VZ2MrekcamxX49eTHbtbuP0liTlGSoxMuqqYKb8wQ7F9-1ZMJhx=3Ds0-d-e1-ft#https=
://www.gstatic.com/images/icons/material/system/1x/arrow_drop_down_black_20=
dp.png&quot;) 50% 50%/20px no-repeat;padding:0px;vertical-align:baseline;he=
ight:20px;width:20px;border:none;margin:0px 0px 0px auto;display:flex;opaci=
ty:0.54"></div></td></tr></tbody></table></td></tr></tbody></table></div><d=
iv id=3D"m_4401998838644016827gmail-:1cm" style=3D"font-family:Roboto,Robot=
oDraft,Helvetica,Arial,sans-serif;font-size:medium"><div class=3D"m_4401998=
838644016827gmail-qQVYZb"></div><div class=3D"m_4401998838644016827gmail-ut=
dU2e"></div><div class=3D"m_4401998838644016827gmail-btm"></div></div><div =
class=3D"m_4401998838644016827gmail-" style=3D"font-family:Roboto,RobotoDra=
ft,Helvetica,Arial,sans-serif;font-size:medium"><div class=3D"m_44019988386=
44016827gmail-aHl"></div><div id=3D"m_4401998838644016827gmail-:1a6"></div>=
<div id=3D"m_4401998838644016827gmail-:1co" class=3D"m_4401998838644016827g=
mail-ii m_4401998838644016827gmail-gt" style=3D"font-size:12.8px;direction:=
ltr;margin:8px 0px 0px;padding:0px"><div id=3D"m_4401998838644016827gmail-:=
1cn" class=3D"m_4401998838644016827gmail-a3s m_4401998838644016827gmail-aXj=
CH" style=3D"overflow:hidden;font-variant-numeric:normal;font-variant-east-=
asian:normal;font-stretch:normal;font-size:small;line-height:1.5;font-famil=
y:Arial,Helvetica,sans-serif"><div dir=3D"ltr"><div class=3D"gmail_default"=
 style=3D"font-family:&quot;comic sans ms&quot;,sans-serif"><div class=3D"g=
mail_default m_4401998838644016827gmail-adM"></div><div dir=3D"ltr" style=
=3D"font-family:Arial,Helvetica,sans-serif"><div dir=3D"ltr"><div dir=3D"lt=
r"><div class=3D"gmail_default" style=3D"font-family:&quot;comic sans ms&qu=
ot;,sans-serif">After changing from &quot;<b>do_compile_ () {</b>&quot; to =
&quot;<b>do_compile() {</b>&quot;, in the attached recipe file, Compilation=
 started but got stuck=C2=A0 &quot;<b>/bin/sh: 1: bc: not found</b></div><d=
iv class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"><b><br>=
</b></font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, =
sans-serif"><b>make[1]: *** [include/generated/timeconst.h] Error 127</b></=
font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-s=
erif"><b>make: *** [prepare0] Error 2</b></font></div><div class=3D"gmail_d=
efault"><font face=3D"comic sans ms, sans-serif"><b>make: *** Waiting for u=
nfinished jobs....&quot;</b></font></div><div class=3D"gmail_default"><font=
 face=3D"comic sans ms, sans-serif"><b><br></b></font></div><div class=3D"g=
mail_default"><font face=3D"comic sans ms, sans-serif"><b>Even I tried inst=
alling &quot;</b></font><span style=3D"background-color:rgba(27,31,35,0.05)=
;color:rgb(36,41,46);font-family:SFMono-Regular,Consolas,&quot;Liberation M=
ono&quot;,Menlo,Courier,monospace;font-size:11.9px">sudo apt-get install bc=
&quot;</span><b style=3D"font-family:&quot;comic sans ms&quot;,sans-serif">=
=C2=A0but still the same issue as above, Kindly do the needful in resolving=
 the above issue as am stuck with the same issue from past 4 days</b></div>=
<div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"><b><b=
r></b></font></div><div class=3D"gmail_default"><font face=3D"comic sans ms=
, sans-serif"><b>And I am even able to build kernel independently before in=
tegrating into yocto project</b></font></div><div class=3D"gmail_default"><=
font face=3D"comic sans ms, sans-serif"><b><br></b></font></div><div class=
=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"><b>References:<=
/b></font></div><span class=3D"m_4401998838644016827gmail-im" style=3D"colo=
r:rgb(80,0,80)"><div class=3D"gmail_default"><font face=3D"comic sans ms, s=
ans-serif"><b><br></b></font></div><div class=3D"gmail_default"><div class=
=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"><b>1. Ubuntu ve=
rsion used 14.04</b></font></div><div class=3D"gmail_default"><font face=3D=
"comic sans ms, sans-serif"><br></font></div><div class=3D"gmail_default"><=
font face=3D"comic sans ms, sans-serif"><b>2. Poky Distro version</b></font=
></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif=
"><br></font></div><div class=3D"gmail_default"><font face=3D"comic sans ms=
, sans-serif">DISTRO =3D &quot;poky&quot;</font></div><div class=3D"gmail_d=
efault"><font face=3D"comic sans ms, sans-serif">DISTRO_NAME =3D &quot;Poky=
 (Yocto Project Reference Distro)&quot;</font></div><div class=3D"gmail_def=
ault"><font face=3D"comic sans ms, sans-serif">DISTRO_VERSION =3D &quot;2.5=
+snapshot-${DATE}&quot;</font></div></div><div class=3D"gmail_default" styl=
e=3D"font-family:&quot;comic sans ms&quot;,sans-serif"><br></div></span><di=
v class=3D"gmail_default" style=3D"font-family:&quot;comic sans ms&quot;,sa=
ns-serif"><b>3.Logs:</b></div><div class=3D"gmail_default" style=3D"font-fa=
mily:&quot;comic sans ms&quot;,sans-serif"><br></div><div class=3D"gmail_de=
fault"><div><div class=3D"m_4401998838644016827gmail-adm" style=3D"margin:5=
px 0px"><div id=3D"m_4401998838644016827gmail-q_1003" class=3D"m_4401998838=
644016827gmail-ajR m_4401998838644016827gmail-h4" style=3D"background-color=
:rgb(232,234,237);border:none;clear:both;line-height:6px;outline:none;width=
:24px;color:rgb(80,0,80);font-size:11px;border-radius:5.5px"><div class=3D"=
m_4401998838644016827gmail-ajT" style=3D"background:url(&quot;https://www.g=
static.com/images/icons/material/system/1x/more_horiz_black_20dp.png&quot;)=
 50% 50%/20px no-repeat;height:11px;opacity:0.54;width:24px"></div></div></=
div></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-se=
rif">NOTE: linux-srini-4.14-r1 do_prepare_recipe_sysroot: Direct dependenci=
es are [&#39;/home/srinivasan/yocto_session_ws_2/poky/meta/recipes-devtools=
/libtool/libtool-native_2.4.6.bb:do_populate_sysroot&#39;, &#39;virtual:nat=
ive:/home/srinivasan/yocto_session_ws_2/poky/meta/recipes-devtools/gnu-conf=
ig/gnu-config_git.bb:do_populate_sysroot&#39;, &#39;virtual:native:/home/sr=
inivasan/yocto_session_ws_2/poky/meta/recipes-devtools/autoconf/autoconf_2.=
69.bb:do_populate_sysroot&#39;, &#39;virtual:native:/home/srinivasan/yocto_=
session_ws_2/poky/meta/recipes-devtools/automake/automake_1.16.1.bb:do_popu=
late_sysroot&#39;]</font></div><div class=3D"gmail_default"><font face=3D"c=
omic sans ms, sans-serif">NOTE: linux-srini-4.14-r1 do_prepare_recipe_sysro=
ot: Installed into sysroot: [&#39;libtool-native&#39;, &#39;gnu-config-nati=
ve&#39;, &#39;autoconf-native&#39;, &#39;automake-native&#39;, &#39;texinfo=
-dummy-native&#39;, &#39;quilt-native&#39;, &#39;m4-native&#39;]</font></di=
v><div><div class=3D"m_4401998838644016827gmail-adm" style=3D"margin:5px 0p=
x"><div id=3D"m_4401998838644016827gmail-q_1001" class=3D"m_440199883864401=
6827gmail-ajR m_4401998838644016827gmail-h4" style=3D"background-color:rgb(=
232,234,237);border:none;clear:both;line-height:6px;outline:none;width:24px=
;color:rgb(80,0,80);font-size:11px;border-radius:5.5px"><div class=3D"m_440=
1998838644016827gmail-ajT" style=3D"background:url(&quot;https://www.gstati=
c.com/images/icons/material/system/1x/more_horiz_black_20dp.png&quot;) 50% =
50%/20px no-repeat;height:11px;opacity:0.54;width:24px"></div></div></div><=
/div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">=
+ cd /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/lin=
ux-srini/4.14-r1/git</font></div><div class=3D"gmail_default"><font face=3D=
"comic sans ms, sans-serif"><br></font></div><div class=3D"gmail_default"><=
font face=3D"comic sans ms, sans-serif">NOTE: linux-srini-4.14-r1 do_compil=
e: make -j 4 mrproper</font></div><div class=3D"gmail_default"><font face=
=3D"comic sans ms, sans-serif">+ oe_runmake mrproper</font></div><div class=
=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">+ oe_runmake_ca=
ll mrproper</font></div><div class=3D"gmail_default"><font face=3D"comic sa=
ns ms, sans-serif">+ bbnote make -j 4 mrproper</font></div><div class=3D"gm=
ail_default"><font face=3D"comic sans ms, sans-serif">+ [ -p /home/srinivas=
an/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/te=
mp/fifo.7174 ]</font></div><div class=3D"gmail_default"><font face=3D"comic=
 sans ms, sans-serif">+ printf %b\0 bbnote make -j 4 mrproper</font></div><=
div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">+ make=
 -j 4 mrproper</font></div><div class=3D"gmail_default"><font face=3D"comic=
 sans ms, sans-serif"><br></font></div><div class=3D"gmail_default"><font f=
ace=3D"comic sans ms, sans-serif">=C2=A0 CLEAN=C2=A0 =C2=A0.config</font></=
div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"><=
br></font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, s=
ans-serif">+ oe_runmake defconfig</font></div><div class=3D"gmail_default">=
<font face=3D"comic sans ms, sans-serif">+ oe_runmake_call defconfig</font>=
</div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"=
>+ bbnote make -j 4 defconfig</font></div><div class=3D"gmail_default"><fon=
t face=3D"comic sans ms, sans-serif"><br></font></div><div class=3D"gmail_d=
efault"><font face=3D"comic sans ms, sans-serif">NOTE: linux-srini-4.14-r1 =
do_compile: make -j 4 defconfig</font></div><div class=3D"gmail_default"><f=
ont face=3D"comic sans ms, sans-serif">+ [ -p /home/srinivasan/yocto_sessio=
n_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/temp/fifo.7174 ]<=
/font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-=
serif">+ printf %b\0 bbnote make -j 4 defconfig</font></div><div class=3D"g=
mail_default"><font face=3D"comic sans ms, sans-serif">+ make -j 4 defconfi=
g</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, san=
s-serif"><br></font></div><div class=3D"gmail_default"><font face=3D"comic =
sans ms, sans-serif">=C2=A0 HOSTCC=C2=A0 scripts/basic/fixdep</font></div><=
div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"><br></=
font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-s=
erif">=C2=A0 HOSTCC=C2=A0 scripts/kconfig/conf.o</font></div><div class=3D"=
gmail_default"><font face=3D"comic sans ms, sans-serif"><br></font></div><d=
iv class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">=C2=A0 =
SHIPPED scripts/kconfig/zconf.tab.c</font></div><div class=3D"gmail_default=
"><font face=3D"comic sans ms, sans-serif"><br></font></div><div class=3D"g=
mail_default"><font face=3D"comic sans ms, sans-serif">=C2=A0 SHIPPED scrip=
ts/kconfig/zconf.lex.c</font></div><div class=3D"gmail_default"><font face=
=3D"comic sans ms, sans-serif"><br></font></div><div class=3D"gmail_default=
"><font face=3D"comic sans ms, sans-serif">=C2=A0 HOSTCC=C2=A0 scripts/kcon=
fig/zconf.tab.o</font></div><div class=3D"gmail_default"><font face=3D"comi=
c sans ms, sans-serif"><br></font></div><div class=3D"gmail_default"><font =
face=3D"comic sans ms, sans-serif">=C2=A0 HOSTLD=C2=A0 scripts/kconfig/conf=
</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans=
-serif"><br></font></div><div class=3D"gmail_default"><font face=3D"comic s=
ans ms, sans-serif">*** Default configuration is based on &#39;x86_64_defco=
nfig&#39;</font></div><div class=3D"gmail_default"><font face=3D"comic sans=
 ms, sans-serif"><br></font></div><div class=3D"gmail_default"><font face=
=3D"comic sans ms, sans-serif">#</font></div><div class=3D"gmail_default"><=
font face=3D"comic sans ms, sans-serif"># configuration written to .config<=
/font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-=
serif">#</font></div><span class=3D"m_4401998838644016827gmail-im" style=3D=
"color:rgb(80,0,80)"><div class=3D"gmail_default"><font face=3D"comic sans =
ms, sans-serif"><br></font></div><div class=3D"gmail_default"><font face=3D=
"comic sans ms, sans-serif">+ oe_runmake</font></div><div class=3D"gmail_de=
fault"><font face=3D"comic sans ms, sans-serif">+ oe_runmake_call</font></d=
iv><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">+ =
bbnote make -j 4</font></div><div class=3D"gmail_default"><font face=3D"com=
ic sans ms, sans-serif">+ [ -p</font></div><div class=3D"gmail_default"><fo=
nt face=3D"comic sans ms, sans-serif">NOTE: linux-srini-4.14-r1 do_compile:=
 make -j 4</font></div></span><div class=3D"gmail_default"><font face=3D"co=
mic sans ms, sans-serif">=C2=A0/home/srinivasan/yocto_session_ws_2/build/tm=
p/work/i586-poky-linux/linux-srini/4.14-r1/temp/fifo.7174 ]</font></div><sp=
an class=3D"m_4401998838644016827gmail-im" style=3D"color:rgb(80,0,80)"><di=
v class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">+ printf=
 %b\0 bbnote make -j 4</font></div><div class=3D"gmail_default"><font face=
=3D"comic sans ms, sans-serif">+ make -j 4</font></div><div class=3D"gmail_=
default"><font face=3D"comic sans ms, sans-serif"><br></font></div></span><=
div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">script=
s/kconfig/conf=C2=A0 --silentoldconfig Kconfig</font></div><div class=3D"gm=
ail_default"><font face=3D"comic sans ms, sans-serif"><br></font></div><div=
 class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">=C2=A0 SY=
STBL=C2=A0 arch/x86/entry/syscalls/../../include/generated/asm/syscalls_32.=
h</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, san=
s-serif"><br></font></div><div class=3D"gmail_default"><font face=3D"comic =
sans ms, sans-serif">=C2=A0 SYSHDR=C2=A0 arch/x86/entry/syscalls/../../incl=
ude/generated/asm/unistd_32_ia32.h</font></div><div class=3D"gmail_default"=
><font face=3D"comic sans ms, sans-serif"><br></font></div><div class=3D"gm=
ail_default"><font face=3D"comic sans ms, sans-serif">=C2=A0 SYSHDR=C2=A0 a=
rch/x86/entry/syscalls/../../include/generated/asm/unistd_64_x32.h</font></=
div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"><=
br></font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, s=
ans-serif">=C2=A0 CHK=C2=A0 =C2=A0 =C2=A0include/config/kernel.release</fon=
t></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-seri=
f"><br></font></div><div class=3D"gmail_default"><font face=3D"comic sans m=
s, sans-serif">=C2=A0 SYSTBL=C2=A0 arch/x86/entry/syscalls/../../include/ge=
nerated/asm/syscalls_64.h</font></div><div class=3D"gmail_default"><font fa=
ce=3D"comic sans ms, sans-serif"><br></font></div><div class=3D"gmail_defau=
lt"><font face=3D"comic sans ms, sans-serif">=C2=A0 SYSHDR=C2=A0 arch/x86/e=
ntry/syscalls/../../include/generated/uapi/asm/unistd_32.h</font></div><div=
 class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"><br></fon=
t></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-seri=
f">=C2=A0 SYSHDR=C2=A0 arch/x86/entry/syscalls/../../include/generated/uapi=
/asm/unistd_64.h</font></div><div class=3D"gmail_default"><font face=3D"com=
ic sans ms, sans-serif"><br></font></div><div class=3D"gmail_default"><font=
 face=3D"comic sans ms, sans-serif">=C2=A0 SYSHDR=C2=A0 arch/x86/entry/sysc=
alls/../../include/generated/uapi/asm/unistd_x32.h</font></div><div class=
=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"><br></font></di=
v><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">=C2=
=A0 CHK=C2=A0 =C2=A0 =C2=A0include/generated/uapi/linux/version.h</font></d=
iv><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"><b=
r></font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sa=
ns-serif">=C2=A0 UPD=C2=A0 =C2=A0 =C2=A0include/generated/uapi/linux/versio=
n.h</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, s=
ans-serif"><br></font></div><div class=3D"gmail_default"><font face=3D"comi=
c sans ms, sans-serif">=C2=A0 UPD=C2=A0 =C2=A0 =C2=A0include/config/kernel.=
release</font></div><div class=3D"gmail_default"><font face=3D"comic sans m=
s, sans-serif"><br></font></div><div class=3D"gmail_default"><font face=3D"=
comic sans ms, sans-serif">=C2=A0 HOSTCC=C2=A0 arch/x86/tools/relocs_32.o</=
font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-s=
erif"><br></font></div><div class=3D"gmail_default"><font face=3D"comic san=
s ms, sans-serif">=C2=A0 HOSTCC=C2=A0 arch/x86/tools/relocs_64.o</font></di=
v><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"><br=
></font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, san=
s-serif">=C2=A0 HOSTCC=C2=A0 arch/x86/tools/relocs_common.o</font></div><di=
v class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"><br></fo=
nt></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-ser=
if">=C2=A0 WRAP=C2=A0 =C2=A0 arch/x86/include/generated/asm/clkdev.h</font>=
</div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"=
><br></font></div><div class=3D"gmail_default"><font face=3D"comic sans ms,=
 sans-serif">=C2=A0 WRAP=C2=A0 =C2=A0 arch/x86/include/generated/asm/dma-co=
ntiguous.h</font></div><div class=3D"gmail_default"><font face=3D"comic san=
s ms, sans-serif"><br></font></div><div class=3D"gmail_default"><font face=
=3D"comic sans ms, sans-serif">=C2=A0 WRAP=C2=A0 =C2=A0 arch/x86/include/ge=
nerated/asm/early_ioremap.h</font></div><div class=3D"gmail_default"><font =
face=3D"comic sans ms, sans-serif"><br></font></div><div class=3D"gmail_def=
ault"><font face=3D"comic sans ms, sans-serif">=C2=A0 WRAP=C2=A0 =C2=A0 arc=
h/x86/include/generated/asm/mcs_spinlock.h</font></div><div class=3D"gmail_=
default"><font face=3D"comic sans ms, sans-serif"><br></font></div><div cla=
ss=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">=C2=A0 WRAP=
=C2=A0 =C2=A0 arch/x86/include/generated/asm/mm-arch-hooks.h</font></div><d=
iv class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"><br></f=
ont></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-se=
rif">=C2=A0 CHK=C2=A0 =C2=A0 =C2=A0include/generated/utsrelease.h</font></d=
iv><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"><b=
r></font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sa=
ns-serif">=C2=A0 UPD=C2=A0 =C2=A0 =C2=A0include/generated/utsrelease.h</fon=
t></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-seri=
f"><br></font></div><div class=3D"gmail_default"><font face=3D"comic sans m=
s, sans-serif">=C2=A0 CC=C2=A0 =C2=A0 =C2=A0 scripts/mod/empty.o</font></di=
v><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"><br=
></font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, san=
s-serif">=C2=A0 HOSTCC=C2=A0 scripts/mod/mk_elfconfig</font></div><div clas=
s=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"><br></font></d=
iv><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">=
=C2=A0 HOSTLD=C2=A0 arch/x86/tools/relocs</font></div><div class=3D"gmail_d=
efault"><font face=3D"comic sans ms, sans-serif"><br></font></div><div clas=
s=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">=C2=A0 CC=C2=
=A0 =C2=A0 =C2=A0 scripts/mod/devicetable-offsets.s</font></div><div class=
=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"><br></font></di=
v><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">=C2=
=A0 MKELF=C2=A0 =C2=A0scripts/mod/elfconfig.h</font></div><div class=3D"gma=
il_default"><font face=3D"comic sans ms, sans-serif"><br></font></div><div =
class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">=C2=A0 CHK=
=C2=A0 =C2=A0 =C2=A0scripts/mod/devicetable-offsets.h</font></div><div clas=
s=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"><br></font></d=
iv><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">=
=C2=A0 UPD=C2=A0 =C2=A0 =C2=A0scripts/mod/devicetable-offsets.h</font></div=
><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"><br>=
</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans=
-serif">=C2=A0 HOSTCC=C2=A0 scripts/mod/sumversion.o</font></div><div class=
=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"><br></font></di=
v><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">=C2=
=A0 HOSTCC=C2=A0 scripts/selinux/genheaders/genheaders</font></div><div cla=
ss=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"><br></font></=
div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">=
=C2=A0 HOSTCC=C2=A0 scripts/selinux/mdp/mdp</font></div><div class=3D"gmail=
_default"><font face=3D"comic sans ms, sans-serif"><br></font></div><div cl=
ass=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">=C2=A0 CC=C2=
=A0 =C2=A0 =C2=A0 kernel/bounds.s</font></div><div class=3D"gmail_default">=
<font face=3D"comic sans ms, sans-serif"><br></font></div><div class=3D"gma=
il_default"><font face=3D"comic sans ms, sans-serif">=C2=A0 HOSTCC=C2=A0 sc=
ripts/kallsyms</font></div><div class=3D"gmail_default"><font face=3D"comic=
 sans ms, sans-serif"><br></font></div><div class=3D"gmail_default"><font f=
ace=3D"comic sans ms, sans-serif">=C2=A0 HOSTCC=C2=A0 scripts/mod/modpost.o=
</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans=
-serif"><br></font></div><div class=3D"gmail_default"><font face=3D"comic s=
ans ms, sans-serif">=C2=A0 CHK=C2=A0 =C2=A0 =C2=A0include/generated/timecon=
st.h</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, =
sans-serif"><b><br></b></font></div><div class=3D"gmail_default"><font face=
=3D"comic sans ms, sans-serif"><b>/bin/sh: 1: bc: not found</b></font></div=
><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"><b><=
br></b></font></div><div class=3D"gmail_default"><font face=3D"comic sans m=
s, sans-serif"><b>make[1]: *** [include/generated/timeconst.h] Error 127</b=
></font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, san=
s-serif"><b>make: *** [prepare0] Error 2</b></font></div><div class=3D"gmai=
l_default"><font face=3D"comic sans ms, sans-serif"><b>make: *** Waiting fo=
r unfinished jobs....</b></font></div><div class=3D"gmail_default"><font fa=
ce=3D"comic sans ms, sans-serif"><br></font></div><div class=3D"gmail_defau=
lt"><font face=3D"comic sans ms, sans-serif">=C2=A0 HOSTCC=C2=A0 scripts/pn=
mtologo</font></div><div class=3D"gmail_default"><font face=3D"comic sans m=
s, sans-serif"><br></font></div><div class=3D"gmail_default"><font face=3D"=
comic sans ms, sans-serif">=C2=A0 HOSTCC=C2=A0 scripts/conmakehash</font></=
div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"><=
br></font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, s=
ans-serif">=C2=A0 HOSTCC=C2=A0 scripts/sortextable</font></div><div class=
=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"><br></font></di=
v><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">=C2=
=A0 HOSTCC=C2=A0 scripts/mod/file2alias.o</font></div><div class=3D"gmail_d=
efault"><font face=3D"comic sans ms, sans-serif"><br></font></div><div clas=
s=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">=C2=A0 HOSTLD=
=C2=A0 scripts/mod/modpost</font></div><span class=3D"m_4401998838644016827=
gmail-im" style=3D"color:rgb(80,0,80)"><div class=3D"gmail_default"><font f=
ace=3D"comic sans ms, sans-serif"><br></font></div><div class=3D"gmail_defa=
ult"><font face=3D"comic sans ms, sans-serif">+ die oe_runmake failed</font=
></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif=
">+ bbfatal_log oe_runmake failed</font></div></span><div class=3D"gmail_de=
fault"><font face=3D"comic sans ms, sans-serif">+ [ -p /home/srinivasan/yoc=
to_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/temp/fif=
o.7174 ]</font></div><span class=3D"m_4401998838644016827gmail-im" style=3D=
"color:rgb(80,0,80)"><div class=3D"gmail_default"><font face=3D"comic sans =
ms, sans-serif">+ printf %b\0 bbfatal_log oe_runmake failed</font></div><di=
v class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">+ exit 1=
</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans=
-serif">+ bb_exit_handler</font></div><div class=3D"gmail_default"><font fa=
ce=3D"comic sans ms, sans-serif">+ ret=3D1</font></div><div class=3D"gmail_=
default"><font face=3D"comic sans ms, sans-serif">+ echo WARNING: exit code=
 1 from a shell command.</font></div><div class=3D"gmail_default"><font fac=
e=3D"comic sans ms, sans-serif">WARNING: exit code 1 from a shell command.<=
/font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-=
serif">+ exit 1</font></div><div class=3D"gmail_default"><font face=3D"comi=
c sans ms, sans-serif"><br></font></div></span><div class=3D"gmail_default"=
><font face=3D"comic sans ms, sans-serif"><b>ERROR: linux-srini-4.14-r1 do_=
compile: oe_runmake failed</b></font></div><div class=3D"gmail_default"><fo=
nt face=3D"comic sans ms, sans-serif"><b>ERROR: linux-srini-4.14-r1 do_comp=
ile: Function failed: do_compile (log file is located at /home/srinivasan/y=
octo_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/temp/l=
og.do_compile.7174)</b></font></div><div class=3D"gmail_default"><font face=
=3D"comic sans ms, sans-serif"><b>ERROR: Logfile of failure stored in: /hom=
e/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/=
4.14-r1/temp/log.do_compile.7174</b></font></div><span class=3D"m_440199883=
8644016827gmail-im" style=3D"color:rgb(80,0,80)"><div class=3D"gmail_defaul=
t"><font face=3D"comic sans ms, sans-serif">Log data follows:</font></div><=
div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">| DEBU=
G: SITE files [&#39;endian-little&#39;, &#39;bit-32&#39;, &#39;ix86-common&=
#39;, &#39;common-linux&#39;, &#39;common-glibc&#39;, &#39;i586-linux&#39;,=
 &#39;common&#39;]</font></div><div class=3D"gmail_default"><font face=3D"c=
omic sans ms, sans-serif">| DEBUG: Executing shell function do_compile</fon=
t></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-seri=
f">| + cd /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linu=
x/linux-srini/4.14-r1/build</font></div><div class=3D"gmail_default"><font =
face=3D"comic sans ms, sans-serif">| + do_compile</font></div></span><div c=
lass=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">| + cd /hom=
e/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/=
4.14-r1/git</font></div><span class=3D"m_4401998838644016827gmail-im" style=
=3D"color:rgb(80,0,80)"><div class=3D"gmail_default"><font face=3D"comic sa=
ns ms, sans-serif">|=C2=A0</font></div><div class=3D"gmail_default"><font f=
ace=3D"comic sans ms, sans-serif">| + cd /home/srinivasan/yocto_session_ws_=
2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/build</font></div><div=
 class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">| + do_co=
mpile</font></div></span><div class=3D"gmail_default"><font face=3D"comic s=
ans ms, sans-serif">| + cd /home/srinivasan/yocto_session_ws_2/build/tmp/wo=
rk/i586-poky-linux/linux-srini/4.14-r1/git</font></div><div class=3D"gmail_=
default"><font face=3D"comic sans ms, sans-serif">| NOTE: make -j 4 mrprope=
r</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, san=
s-serif">| + oe_runmake mrproper</font></div><div class=3D"gmail_default"><=
font face=3D"comic sans ms, sans-serif">| + oe_runmake_call mrproper</font>=
</div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"=
>| + bbnote make -j 4 mrproper</font></div><div class=3D"gmail_default"><fo=
nt face=3D"comic sans ms, sans-serif">| + [ -p /home/srinivasan/yocto_sessi=
on_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/temp/fifo.7174 ]=
</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans=
-serif">| + printf %b\0 bbnote make -j 4 mrproper</font></div><div class=3D=
"gmail_default"><font face=3D"comic sans ms, sans-serif">| + make -j 4 mrpr=
oper</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, =
sans-serif">|=C2=A0</font></div><div class=3D"gmail_default"><font face=3D"=
comic sans ms, sans-serif">| + oe_runmake mrproper</font></div><div class=
=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">| + oe_runmake_=
call mrproper</font></div><div class=3D"gmail_default"><font face=3D"comic =
sans ms, sans-serif">| + bbnote make -j 4 mrproper</font></div><div class=
=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">| + [ -p /home/=
srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.=
14-r1/temp/fifo.7174 ]</font></div><div class=3D"gmail_default"><font face=
=3D"comic sans ms, sans-serif">| + printf %b\0 bbnote make -j 4 mrproper</f=
ont></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-se=
rif">| + make -j 4 mrproper</font></div><div class=3D"gmail_default"><font =
face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0CLEAN=C2=A0 =C2=A0.config<=
/font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-=
serif">|=C2=A0</font></div><div class=3D"gmail_default"><font face=3D"comic=
 sans ms, sans-serif">|=C2=A0 =C2=A0CLEAN=C2=A0 =C2=A0.config</font></div><=
div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">| + oe=
_runmake defconfig</font></div><div class=3D"gmail_default"><font face=3D"c=
omic sans ms, sans-serif">| + oe_runmake_call defconfig</font></div><div cl=
ass=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">| + bbnote m=
ake -j 4 defconfig</font></div><div class=3D"gmail_default"><font face=3D"c=
omic sans ms, sans-serif">|=C2=A0</font></div><div class=3D"gmail_default">=
<font face=3D"comic sans ms, sans-serif">| + oe_runmake defconfig</font></d=
iv><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">| =
+ oe_runmake_call defconfig</font></div><div class=3D"gmail_default"><font =
face=3D"comic sans ms, sans-serif">| + bbnote make -j 4 defconfig</font></d=
iv><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">| =
NOTE: make -j 4 defconfig</font></div><div class=3D"gmail_default"><font fa=
ce=3D"comic sans ms, sans-serif">| + [ -p /home/srinivasan/yocto_session_ws=
_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/temp/fifo.7174 ]</fon=
t></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-seri=
f">| + printf %b\0 bbnote make -j 4 defconfig</font></div><div class=3D"gma=
il_default"><font face=3D"comic sans ms, sans-serif">| + make -j 4 defconfi=
g</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, san=
s-serif">|=C2=A0</font></div><div class=3D"gmail_default"><font face=3D"com=
ic sans ms, sans-serif">| + [ -p /home/srinivasan/yocto_session_ws_2/build/=
tmp/work/i586-poky-linux/linux-srini/4.14-r1/temp/fifo.7174 ]</font></div><=
div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">| + pr=
intf %b\0 bbnote make -j 4 defconfig</font></div><div class=3D"gmail_defaul=
t"><font face=3D"comic sans ms, sans-serif">| + make -j 4 defconfig</font><=
/div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">=
|=C2=A0 =C2=A0HOSTCC=C2=A0 scripts/basic/fixdep</font></div><div class=3D"g=
mail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0</font></div>=
<div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=C2=
=A0 =C2=A0HOSTCC=C2=A0 scripts/basic/fixdep</font></div><div class=3D"gmail=
_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0HOSTCC=C2=
=A0 scripts/kconfig/conf.o</font></div><div class=3D"gmail_default"><font f=
ace=3D"comic sans ms, sans-serif">|=C2=A0</font></div><div class=3D"gmail_d=
efault"><font face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0HOSTCC=C2=A0=
 scripts/kconfig/conf.o</font></div><div class=3D"gmail_default"><font face=
=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0SHIPPED scripts/kconfig/zconf.=
tab.c</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms,=
 sans-serif">|=C2=A0</font></div><div class=3D"gmail_default"><font face=3D=
"comic sans ms, sans-serif">|=C2=A0 =C2=A0SHIPPED scripts/kconfig/zconf.tab=
.c</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sa=
ns-serif">|=C2=A0 =C2=A0SHIPPED scripts/kconfig/zconf.lex.c</font></div><di=
v class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0<=
/font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-=
serif">|=C2=A0 =C2=A0SHIPPED scripts/kconfig/zconf.lex.c</font></div><div c=
lass=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=
=A0HOSTCC=C2=A0 scripts/kconfig/zconf.tab.o</font></div><div class=3D"gmail=
_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0</font></div><div=
 class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0 =
=C2=A0HOSTCC=C2=A0 scripts/kconfig/zconf.tab.o</font></div><div class=3D"gm=
ail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0HOSTLD=
=C2=A0 scripts/kconfig/conf</font></div><div class=3D"gmail_default"><font =
face=3D"comic sans ms, sans-serif">|=C2=A0</font></div><div class=3D"gmail_=
default"><font face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0HOSTLD=C2=
=A0 scripts/kconfig/conf</font></div><div class=3D"gmail_default"><font fac=
e=3D"comic sans ms, sans-serif">| *** Default configuration is based on &#3=
9;x86_64_defconfig&#39;</font></div><div class=3D"gmail_default"><font face=
=3D"comic sans ms, sans-serif">|=C2=A0</font></div><div class=3D"gmail_defa=
ult"><font face=3D"comic sans ms, sans-serif">| *** Default configuration i=
s based on &#39;x86_64_defconfig&#39;</font></div><div class=3D"gmail_defau=
lt"><font face=3D"comic sans ms, sans-serif">| #</font></div><div class=3D"=
gmail_default"><font face=3D"comic sans ms, sans-serif">| # configuration w=
ritten to .config</font></div><div class=3D"gmail_default"><font face=3D"co=
mic sans ms, sans-serif">| #</font></div><div class=3D"gmail_default"><font=
 face=3D"comic sans ms, sans-serif">|=C2=A0</font></div><div class=3D"gmail=
_default"><font face=3D"comic sans ms, sans-serif">| #</font></div><div cla=
ss=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">| # configura=
tion written to .config</font></div><div class=3D"gmail_default"><font face=
=3D"comic sans ms, sans-serif">| #</font></div><span class=3D"m_44019988386=
44016827gmail-im" style=3D"color:rgb(80,0,80)"><div class=3D"gmail_default"=
><font face=3D"comic sans ms, sans-serif">| + oe_runmake</font></div><div c=
lass=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">| + oe_runm=
ake_call</font></div><div class=3D"gmail_default"><font face=3D"comic sans =
ms, sans-serif">| + bbnote make -j 4</font></div><div class=3D"gmail_defaul=
t"><font face=3D"comic sans ms, sans-serif">| + [ -p</font></div><div class=
=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">| + oe_runmake<=
/font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-=
serif">| + oe_runmake_call</font></div><div class=3D"gmail_default"><font f=
ace=3D"comic sans ms, sans-serif">| + bbnote make -j 4</font></div></span><=
div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">| + [ =
-pNOTE: make -j 4</font></div><div class=3D"gmail_default"><font face=3D"co=
mic sans ms, sans-serif">|=C2=A0 /home/srinivasan/yocto_session_ws_2/build/=
tmp/work/i586-poky-linux/linux-srini/4.14-r1/temp/fifo.7174 ]</font></div><=
span class=3D"m_4401998838644016827gmail-im" style=3D"color:rgb(80,0,80)"><=
div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">| + pr=
intf %b\0 bbnote make -j 4</font></div><div class=3D"gmail_default"><font f=
ace=3D"comic sans ms, sans-serif">| + make -j 4</font></div><div class=3D"g=
mail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0</font></div>=
</span><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif=
">|=C2=A0 /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linu=
x/linux-srini/4.14-r1/temp/fifo.7174 ]</font></div><span class=3D"m_4401998=
838644016827gmail-im" style=3D"color:rgb(80,0,80)"><div class=3D"gmail_defa=
ult"><font face=3D"comic sans ms, sans-serif">| + printf %b\0 bbnote make -=
j 4</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, s=
ans-serif">| + make -j 4</font></div></span><div class=3D"gmail_default"><f=
ont face=3D"comic sans ms, sans-serif">| scripts/kconfig/conf=C2=A0 --silen=
toldconfig Kconfig</font></div><div class=3D"gmail_default"><font face=3D"c=
omic sans ms, sans-serif">|=C2=A0</font></div><div class=3D"gmail_default">=
<font face=3D"comic sans ms, sans-serif">| scripts/kconfig/conf=C2=A0 --sil=
entoldconfig Kconfig</font></div><div class=3D"gmail_default"><font face=3D=
"comic sans ms, sans-serif">|=C2=A0 =C2=A0SYSTBL=C2=A0 arch/x86/entry/sysca=
lls/../../include/generated/asm/syscalls_32.h</font></div><div class=3D"gma=
il_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0</font></div><d=
iv class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0=
 =C2=A0SYSTBL=C2=A0 arch/x86/entry/syscalls/../../include/generated/asm/sys=
calls_32.h</font></div><div class=3D"gmail_default"><font face=3D"comic san=
s ms, sans-serif">|=C2=A0 =C2=A0SYSHDR=C2=A0 arch/x86/entry/syscalls/../../=
include/generated/asm/unistd_32_ia32.h</font></div><div class=3D"gmail_defa=
ult"><font face=3D"comic sans ms, sans-serif">|=C2=A0</font></div><div clas=
s=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0=
SYSHDR=C2=A0 arch/x86/entry/syscalls/../../include/generated/asm/unistd_32_=
ia32.h</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms=
, sans-serif">|=C2=A0 =C2=A0SYSHDR=C2=A0 arch/x86/entry/syscalls/../../incl=
ude/generated/asm/unistd_64_x32.h</font></div><div class=3D"gmail_default">=
<font face=3D"comic sans ms, sans-serif">|=C2=A0</font></div><div class=3D"=
gmail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0SYSHD=
R=C2=A0 arch/x86/entry/syscalls/../../include/generated/asm/unistd_64_x32.h=
</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans=
-serif">|=C2=A0 =C2=A0CHK=C2=A0 =C2=A0 =C2=A0include/config/kernel.release<=
/font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-=
serif">|=C2=A0</font></div><div class=3D"gmail_default"><font face=3D"comic=
 sans ms, sans-serif">|=C2=A0 =C2=A0CHK=C2=A0 =C2=A0 =C2=A0include/config/k=
ernel.release</font></div><div class=3D"gmail_default"><font face=3D"comic =
sans ms, sans-serif">|=C2=A0 =C2=A0SYSTBL=C2=A0 arch/x86/entry/syscalls/../=
../include/generated/asm/syscalls_64.h</font></div><div class=3D"gmail_defa=
ult"><font face=3D"comic sans ms, sans-serif">|=C2=A0</font></div><div clas=
s=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0=
SYSTBL=C2=A0 arch/x86/entry/syscalls/../../include/generated/asm/syscalls_6=
4.h</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, s=
ans-serif">|=C2=A0 =C2=A0SYSHDR=C2=A0 arch/x86/entry/syscalls/../../include=
/generated/uapi/asm/unistd_32.h</font></div><div class=3D"gmail_default"><f=
ont face=3D"comic sans ms, sans-serif">|=C2=A0</font></div><div class=3D"gm=
ail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0SYSHDR=
=C2=A0 arch/x86/entry/syscalls/../../include/generated/uapi/asm/unistd_32.h=
</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans=
-serif">|=C2=A0 =C2=A0SYSHDR=C2=A0 arch/x86/entry/syscalls/../../include/ge=
nerated/uapi/asm/unistd_64.h</font></div><div class=3D"gmail_default"><font=
 face=3D"comic sans ms, sans-serif">|=C2=A0</font></div><div class=3D"gmail=
_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0SYSHDR=C2=
=A0 arch/x86/entry/syscalls/../../include/generated/uapi/asm/unistd_64.h</f=
ont></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-se=
rif">|=C2=A0 =C2=A0SYSHDR=C2=A0 arch/x86/entry/syscalls/../../include/gener=
ated/uapi/asm/unistd_x32.h</font></div><div class=3D"gmail_default"><font f=
ace=3D"comic sans ms, sans-serif">|=C2=A0</font></div><div class=3D"gmail_d=
efault"><font face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0SYSHDR=C2=A0=
 arch/x86/entry/syscalls/../../include/generated/uapi/asm/unistd_x32.h</fon=
t></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-seri=
f">|=C2=A0 =C2=A0CHK=C2=A0 =C2=A0 =C2=A0include/generated/uapi/linux/versio=
n.h</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, s=
ans-serif">|=C2=A0</font></div><div class=3D"gmail_default"><font face=3D"c=
omic sans ms, sans-serif">|=C2=A0 =C2=A0CHK=C2=A0 =C2=A0 =C2=A0include/gene=
rated/uapi/linux/version.h</font></div><div class=3D"gmail_default"><font f=
ace=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0UPD=C2=A0 =C2=A0 =C2=A0incl=
ude/generated/uapi/linux/version.h</font></div><div class=3D"gmail_default"=
><font face=3D"comic sans ms, sans-serif">|=C2=A0</font></div><div class=3D=
"gmail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0UPD=
=C2=A0 =C2=A0 =C2=A0include/generated/uapi/linux/version.h</font></div><div=
 class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0 =
=C2=A0UPD=C2=A0 =C2=A0 =C2=A0include/config/kernel.release</font></div><div=
 class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0</=
font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-s=
erif">|=C2=A0 =C2=A0UPD=C2=A0 =C2=A0 =C2=A0include/config/kernel.release</f=
ont></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-se=
rif">|=C2=A0 =C2=A0HOSTCC=C2=A0 arch/x86/tools/relocs_32.o</font></div><div=
 class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0</=
font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-s=
erif">|=C2=A0 =C2=A0HOSTCC=C2=A0 arch/x86/tools/relocs_32.o</font></div><di=
v class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0 =
=C2=A0HOSTCC=C2=A0 arch/x86/tools/relocs_64.o</font></div><div class=3D"gma=
il_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0</font></div><d=
iv class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0=
 =C2=A0HOSTCC=C2=A0 arch/x86/tools/relocs_64.o</font></div><div class=3D"gm=
ail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0HOSTCC=
=C2=A0 arch/x86/tools/relocs_common.o</font></div><div class=3D"gmail_defau=
lt"><font face=3D"comic sans ms, sans-serif">|=C2=A0</font></div><div class=
=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0H=
OSTCC=C2=A0 arch/x86/tools/relocs_common.o</font></div><div class=3D"gmail_=
default"><font face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0WRAP=C2=A0 =
=C2=A0 arch/x86/include/generated/asm/clkdev.h</font></div><div class=3D"gm=
ail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0</font></div><=
div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=C2=
=A0 =C2=A0WRAP=C2=A0 =C2=A0 arch/x86/include/generated/asm/clkdev.h</font><=
/div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">=
|=C2=A0 =C2=A0WRAP=C2=A0 =C2=A0 arch/x86/include/generated/asm/dma-contiguo=
us.h</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, =
sans-serif">|=C2=A0</font></div><div class=3D"gmail_default"><font face=3D"=
comic sans ms, sans-serif">|=C2=A0 =C2=A0WRAP=C2=A0 =C2=A0 arch/x86/include=
/generated/asm/dma-contiguous.h</font></div><div class=3D"gmail_default"><f=
ont face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0WRAP=C2=A0 =C2=A0 arch=
/x86/include/generated/asm/early_ioremap.h</font></div><div class=3D"gmail_=
default"><font face=3D"comic sans ms, sans-serif">|=C2=A0</font></div><div =
class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0 =
=C2=A0WRAP=C2=A0 =C2=A0 arch/x86/include/generated/asm/early_ioremap.h</fon=
t></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-seri=
f">|=C2=A0 =C2=A0WRAP=C2=A0 =C2=A0 arch/x86/include/generated/asm/mcs_spinl=
ock.h</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms,=
 sans-serif">|=C2=A0</font></div><div class=3D"gmail_default"><font face=3D=
"comic sans ms, sans-serif">|=C2=A0 =C2=A0WRAP=C2=A0 =C2=A0 arch/x86/includ=
e/generated/asm/mcs_spinlock.h</font></div><div class=3D"gmail_default"><fo=
nt face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0WRAP=C2=A0 =C2=A0 arch/=
x86/include/generated/asm/mm-arch-hooks.h</font></div><div class=3D"gmail_d=
efault"><font face=3D"comic sans ms, sans-serif">|=C2=A0</font></div><div c=
lass=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=
=A0WRAP=C2=A0 =C2=A0 arch/x86/include/generated/asm/mm-arch-hooks.h</font><=
/div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">=
|=C2=A0 =C2=A0CHK=C2=A0 =C2=A0 =C2=A0include/generated/utsrelease.h</font><=
/div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">=
|=C2=A0</font></div><div class=3D"gmail_default"><font face=3D"comic sans m=
s, sans-serif">|=C2=A0 =C2=A0CHK=C2=A0 =C2=A0 =C2=A0include/generated/utsre=
lease.h</font></div><div class=3D"gmail_default"><font face=3D"comic sans m=
s, sans-serif">|=C2=A0 =C2=A0UPD=C2=A0 =C2=A0 =C2=A0include/generated/utsre=
lease.h</font></div><div class=3D"gmail_default"><font face=3D"comic sans m=
s, sans-serif">|=C2=A0</font></div><div class=3D"gmail_default"><font face=
=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0UPD=C2=A0 =C2=A0 =C2=A0include=
/generated/utsrelease.h</font></div><div class=3D"gmail_default"><font face=
=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0CC=C2=A0 =C2=A0 =C2=A0 scripts=
/mod/empty.o</font></div><div class=3D"gmail_default"><font face=3D"comic s=
ans ms, sans-serif">|=C2=A0</font></div><div class=3D"gmail_default"><font =
face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0CC=C2=A0 =C2=A0 =C2=A0 scr=
ipts/mod/empty.o</font></div><div class=3D"gmail_default"><font face=3D"com=
ic sans ms, sans-serif">|=C2=A0 =C2=A0HOSTCC=C2=A0 scripts/mod/mk_elfconfig=
</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans=
-serif">|=C2=A0</font></div><div class=3D"gmail_default"><font face=3D"comi=
c sans ms, sans-serif">|=C2=A0 =C2=A0HOSTCC=C2=A0 scripts/mod/mk_elfconfig<=
/font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-=
serif">|=C2=A0 =C2=A0HOSTLD=C2=A0 arch/x86/tools/relocs</font></div><div cl=
ass=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0</fon=
t></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-seri=
f">|=C2=A0 =C2=A0HOSTLD=C2=A0 arch/x86/tools/relocs</font></div><div class=
=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0C=
C=C2=A0 =C2=A0 =C2=A0 scripts/mod/devicetable-offsets.s</font></div><div cl=
ass=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0</fon=
t></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-seri=
f">|=C2=A0 =C2=A0CC=C2=A0 =C2=A0 =C2=A0 scripts/mod/devicetable-offsets.s</=
font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-s=
erif">|=C2=A0 =C2=A0MKELF=C2=A0 =C2=A0scripts/mod/elfconfig.h</font></div><=
div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=C2=
=A0</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, s=
ans-serif">|=C2=A0 =C2=A0MKELF=C2=A0 =C2=A0scripts/mod/elfconfig.h</font></=
div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=
=C2=A0 =C2=A0CHK=C2=A0 =C2=A0 =C2=A0scripts/mod/devicetable-offsets.h</font=
></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif=
">|=C2=A0</font></div><div class=3D"gmail_default"><font face=3D"comic sans=
 ms, sans-serif">|=C2=A0 =C2=A0CHK=C2=A0 =C2=A0 =C2=A0scripts/mod/devicetab=
le-offsets.h</font></div><div class=3D"gmail_default"><font face=3D"comic s=
ans ms, sans-serif">|=C2=A0 =C2=A0UPD=C2=A0 =C2=A0 =C2=A0scripts/mod/device=
table-offsets.h</font></div><div class=3D"gmail_default"><font face=3D"comi=
c sans ms, sans-serif">|=C2=A0</font></div><div class=3D"gmail_default"><fo=
nt face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0UPD=C2=A0 =C2=A0 =C2=A0=
scripts/mod/devicetable-offsets.h</font></div><div class=3D"gmail_default">=
<font face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0HOSTCC=C2=A0 scripts=
/mod/sumversion.o</font></div><div class=3D"gmail_default"><font face=3D"co=
mic sans ms, sans-serif">|=C2=A0</font></div><div class=3D"gmail_default"><=
font face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0HOSTCC=C2=A0 scripts/=
mod/sumversion.o</font></div><div class=3D"gmail_default"><font face=3D"com=
ic sans ms, sans-serif">|=C2=A0 =C2=A0HOSTCC=C2=A0 scripts/selinux/genheade=
rs/genheaders</font></div><div class=3D"gmail_default"><font face=3D"comic =
sans ms, sans-serif">|=C2=A0</font></div><div class=3D"gmail_default"><font=
 face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0HOSTCC=C2=A0 scripts/seli=
nux/genheaders/genheaders</font></div><div class=3D"gmail_default"><font fa=
ce=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0HOSTCC=C2=A0 scripts/selinux=
/mdp/mdp</font></div><div class=3D"gmail_default"><font face=3D"comic sans =
ms, sans-serif">|=C2=A0</font></div><div class=3D"gmail_default"><font face=
=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0HOSTCC=C2=A0 scripts/selinux/m=
dp/mdp</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms=
, sans-serif">|=C2=A0 =C2=A0CC=C2=A0 =C2=A0 =C2=A0 kernel/bounds.s</font></=
div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=
=C2=A0</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms=
, sans-serif">|=C2=A0 =C2=A0CC=C2=A0 =C2=A0 =C2=A0 kernel/bounds.s</font></=
div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=
=C2=A0 =C2=A0HOSTCC=C2=A0 scripts/kallsyms</font></div><div class=3D"gmail_=
default"><font face=3D"comic sans ms, sans-serif">|=C2=A0</font></div><div =
class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0 =
=C2=A0HOSTCC=C2=A0 scripts/kallsyms</font></div><div class=3D"gmail_default=
"><font face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0HOSTCC=C2=A0 scrip=
ts/mod/modpost.o</font></div><div class=3D"gmail_default"><font face=3D"com=
ic sans ms, sans-serif">|=C2=A0</font></div><div class=3D"gmail_default"><f=
ont face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0HOSTCC=C2=A0 scripts/m=
od/modpost.o</font></div><div class=3D"gmail_default"><font face=3D"comic s=
ans ms, sans-serif">|=C2=A0 =C2=A0CHK=C2=A0 =C2=A0 =C2=A0include/generated/=
timeconst.h</font></div><div class=3D"gmail_default"><font face=3D"comic sa=
ns ms, sans-serif">|=C2=A0</font></div><div class=3D"gmail_default"><font f=
ace=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0CHK=C2=A0 =C2=A0 =C2=A0incl=
ude/generated/timeconst.h</font></div><div class=3D"gmail_default"><font fa=
ce=3D"comic sans ms, sans-serif"><b>| /bin/sh: 1: bc: not found</b></font><=
/div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">=
<b>|=C2=A0</b></font></div><div class=3D"gmail_default"><font face=3D"comic=
 sans ms, sans-serif"><b>| /bin/sh: 1: bc: not found</b></font></div><div c=
lass=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"><b>| make[1=
]: *** [include/generated/timeconst.h] Error 127</b></font></div><div class=
=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"><b>| make: *** =
[prepare0] Error 2</b></font></div><div class=3D"gmail_default"><font face=
=3D"comic sans ms, sans-serif"><b>| make: *** Waiting for unfinished jobs..=
..</b></font></div><div class=3D"gmail_default"><font face=3D"comic sans ms=
, sans-serif"><b>|=C2=A0</b></font></div><div class=3D"gmail_default"><font=
 face=3D"comic sans ms, sans-serif"><b>| make[1]: *** [include/generated/ti=
meconst.h] Error 127</b></font></div><div class=3D"gmail_default"><font fac=
e=3D"comic sans ms, sans-serif"><b>| make: *** [prepare0] Error 2</b></font=
></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif=
"><b>| make: *** Waiting for unfinished jobs....</b></font></div><div class=
=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0H=
OSTCC=C2=A0 scripts/pnmtologo</font></div><div class=3D"gmail_default"><fon=
t face=3D"comic sans ms, sans-serif">|=C2=A0</font></div><div class=3D"gmai=
l_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0HOSTCC=C2=
=A0 scripts/pnmtologo</font></div><div class=3D"gmail_default"><font face=
=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0HOSTCC=C2=A0 scripts/conmakeha=
sh</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sa=
ns-serif">|=C2=A0</font></div><div class=3D"gmail_default"><font face=3D"co=
mic sans ms, sans-serif">|=C2=A0 =C2=A0HOSTCC=C2=A0 scripts/conmakehash</fo=
nt></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-ser=
if">|=C2=A0 =C2=A0HOSTCC=C2=A0 scripts/sortextable</font></div><div class=
=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0</font><=
/div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">=
|=C2=A0 =C2=A0HOSTCC=C2=A0 scripts/sortextable</font></div><div class=3D"gm=
ail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0HOSTCC=
=C2=A0 scripts/mod/file2alias.o</font></div><div class=3D"gmail_default"><f=
ont face=3D"comic sans ms, sans-serif">|=C2=A0</font></div><div class=3D"gm=
ail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0HOSTCC=
=C2=A0 scripts/mod/file2alias.o</font></div><div class=3D"gmail_default"><f=
ont face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0HOSTLD=C2=A0 scripts/m=
od/modpost</font></div><div class=3D"gmail_default"><font face=3D"comic san=
s ms, sans-serif">|=C2=A0</font></div><div class=3D"gmail_default"><font fa=
ce=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0HOSTLD=C2=A0 scripts/mod/mod=
post</font></div><span class=3D"m_4401998838644016827gmail-im" style=3D"col=
or:rgb(80,0,80)"><div class=3D"gmail_default"><font face=3D"comic sans ms, =
sans-serif">| + die oe_runmake failed</font></div><div class=3D"gmail_defau=
lt"><font face=3D"comic sans ms, sans-serif">| + bbfatal_log oe_runmake fai=
led</font></div></span><div class=3D"gmail_default"><font face=3D"comic san=
s ms, sans-serif">| + [ -p /home/srinivasan/yocto_session_ws_2/build/tmp/wo=
rk/i586-poky-linux/linux-srini/4.14-r1/temp/fifo.7174 ]</font></div><span c=
lass=3D"m_4401998838644016827gmail-im" style=3D"color:rgb(80,0,80)"><div cl=
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
 oe_runmake failed</font></div></span><div class=3D"gmail_default"><font fa=
ce=3D"comic sans ms, sans-serif">| + [ -p /home/srinivasan/yocto_session_ws=
_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/temp/fifo.7174 ]</fon=
t></div><span class=3D"m_4401998838644016827gmail-im" style=3D"color:rgb(80=
,0,80)"><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-seri=
f">| + printf %b\0 bbfatal_log oe_runmake failed</font></div><div class=3D"=
gmail_default"><font face=3D"comic sans ms, sans-serif">| + exit 1</font></=
div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=
 + bb_exit_handler</font></div><div class=3D"gmail_default"><font face=3D"c=
omic sans ms, sans-serif">| + ret=3D1</font></div><div class=3D"gmail_defau=
lt"><font face=3D"comic sans ms, sans-serif">| + echo WARNING: exit code 1 =
from a shell command.</font></div><div class=3D"gmail_default"><font face=
=3D"comic sans ms, sans-serif">| WARNING: exit code 1 from a shell command.=
</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans=
-serif">| + exit 1</font></div></span><div class=3D"gmail_default"><font fa=
ce=3D"comic sans ms, sans-serif"><b>| ERROR: oe_runmake failed</b></font></=
div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"><=
b>| ERROR: Function failed: do_compile (log file is located at /home/sriniv=
asan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/=
temp/log.do_compile.7174)</b></font></div><span class=3D"m_4401998838644016=
827gmail-im" style=3D"color:rgb(80,0,80)"><div class=3D"gmail_default"><fon=
t face=3D"comic sans ms, sans-serif"><b>ERROR: Task (/home/srinivasan/yocto=
_session_ws_2/poky/meta/recipes-kernel/linux/linux-srini_4.14.bb:do_compile=
) failed with exit code &#39;1&#39;</b></font></div><div class=3D"gmail_def=
ault"><font face=3D"comic sans ms, sans-serif"><b>NOTE: Tasks Summary: Atte=
mpted 312 tasks of which 306 didn&#39;t need to be rerun and 1 failed.</b><=
/font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-=
serif"><br></font></div><div class=3D"gmail_default"><font face=3D"comic sa=
ns ms, sans-serif">Summary: 1 task failed:</font></div><div class=3D"gmail_=
default"><font face=3D"comic sans ms, sans-serif">=C2=A0 /home/srinivasan/y=
octo_session_ws_2/poky/meta/recipes-kernel/linux/linux-srini_4.14.bb:do_com=
pile</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, =
sans-serif">Summary: There was 1 WARNING message shown.</font></div><div cl=
ass=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">Summary: The=
re were 2 ERROR messages shown, returning a non-zero exit code.</font></div=
><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">srin=
ivasan@srinivasan-UX305UA:~/yocto_session_ws_2/build$</font></div></span></=
div></div></div></div></div></div></div></div></div></div></div>
-- <br>
_______________________________________________<br>
poky mailing list<br>
<a href=3D"mailto:poky@yoctoproject.org" target=3D"_blank">poky@yoctoprojec=
t.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/poky" rel=3D"noreferrer"=
 target=3D"_blank">https://lists.yoctoproject.org/listinfo/poky</a><br>
</blockquote></div>

--0000000000001c3c10057515e294--
