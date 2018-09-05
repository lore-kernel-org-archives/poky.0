Return-Path: <srinivasan.rns@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3905AE00A64; Tue,  4 Sep 2018 18:44:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_FONT_LOW_CONTRAST,
	HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.216.182 listed in list.dnswl.org]
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
Received: from mail-qt0-f182.google.com (mail-qt0-f182.google.com
	[209.85.216.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0E3FE00A39;
	Tue,  4 Sep 2018 18:44:35 -0700 (PDT)
Received: by mail-qt0-f182.google.com with SMTP id h4-v6so6361986qtj.7;
	Tue, 04 Sep 2018 18:44:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=sqOTUW3glCdc+YjyJ/dz/BcJWWVFmj7QpAqY/zZJiwM=;
	b=UAZERMgJtdPIKzXsx9BlMkbRnH8e9sPHHJcmn0A4d0GNXivtO0Pg+xZ0T6kuwgNqUC
	qN+tMpyhCE3SEMkeRI2q+WdM6xStW5jNxuYfSBlLbZIVBBbrb07L+d/F+3aT/zuezkq4
	ydGuZqaDwv+gJtqSXEXo6cGazEUrrEUdXEkpAJ9+S1OvOCS8rOVu/L9ehhcgfgDlauBe
	FKOjLCxqEzsfNblQz014OIZOkb13L0fVNGvBbP/o72GaMkG3N3YT81Mg2Eb1Oe4K6foF
	eSsiLYi9WstKGoNebVgYvchWkbhwNuTQrWbWGwlUv/ngdBht59iA3g8zOrstKpBu6B7h
	Hbkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=sqOTUW3glCdc+YjyJ/dz/BcJWWVFmj7QpAqY/zZJiwM=;
	b=BSp1XbXHN3gKruwk1dSmI7FwTDNYvkUddPliCuNra40O63NYr916zb5onBIpSShz4v
	VJBDY9doXY/WXwRVkZEw5tUlngS+qrsZGKBexP6K/yHFQ8CBEbNq3S/ma9pOEMqNvnZ8
	DoeexOmhzmkyk2/Lgc+5E1I6w4/KXsRCfoJO47bbzBqOawrXKRQMUmKD0ZOfsypBwer3
	wu/BF/eQ2vPCFGNFbcPqJ/eYa01AteCVJzEgC89RMUAIl5Wow8jjZAcPAYKFYEKsDPF1
	Vyks+mS0rv3RnMif7o+iGmlmsxmhLnFXY8nVEcvYpAGTcKTNnXoL/AlPX2OjRB/WhWOz
	HfIQ==
X-Gm-Message-State: APzg51CwaqBULqf/RxGzii07EFvRX49OjkIgQ405e9u0boQ5e1pMHL2Q
	ZCkqEEpeSXqaNB3+TwmE8VTc3CAvha5HnlWJVgo=
X-Google-Smtp-Source: ANB0VdYL5KALJZ5feFFPmKZtjtJMZT2EUD3Cv9kDNGOX+btx6fX/whISV+iCcQMrDsY6bQBBiefn4z1jAYNbPeIsX7A=
X-Received: by 2002:a0c:9251:: with SMTP id
	17-v6mr31868579qvz.239.1536111874842; 
	Tue, 04 Sep 2018 18:44:34 -0700 (PDT)
MIME-Version: 1.0
References: <CAFsTbWdWMce5h_MBbNiUgsJ+Pcdu=V3jJqf6StSFxJ0d82Z6WQ@mail.gmail.com>
	<CAMKF1sp7e_JZE68Cs29RC+jBRQUktj8C3-XfO_itQJT+ObQx=A@mail.gmail.com>
In-Reply-To: <CAMKF1sp7e_JZE68Cs29RC+jBRQUktj8C3-XfO_itQJT+ObQx=A@mail.gmail.com>
From: srinivasan <srinivasan.rns@gmail.com>
Date: Wed, 5 Sep 2018 07:14:22 +0530
Message-ID: <CAFsTbWeUj6zXkpKQ+LeFjZf6w2Xzv11nFWA=3S7D2XNOKOnP=w@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
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
X-List-Received-Date: Wed, 05 Sep 2018 01:44:38 -0000
Content-Type: multipart/alternative; boundary="000000000000a2a710057515eada"

--000000000000a2a710057515eada
Content-Type: text/plain; charset="UTF-8"

Adding the "DEPENDS += "xz-native bc-native" in the "linux-srini_4.14.bb"
did the trick

Many many thanks for all your support :)

On Wed 5 Sep, 2018, 7:12 AM Khem Raj, <raj.khem@gmail.com> wrote:

> in your local.conf add
>
> HOSTTOOLS += "bc"
>
> see if that helps
>
> On Tue, Sep 4, 2018 at 5:33 PM srinivasan <srinivasan.rns@gmail.com>
> wrote:
>
>>
>> srinivasan <srinivasan.rns@gmail.com>
>> 5:55 AM (4 minutes ago)
>> to *yocto-infrastructure*
>> After changing from "*do_compile_ () {*" to "*do_compile() {*", in the
>> attached recipe file, Compilation started but got stuck  "*/bin/sh: 1:
>> bc: not found*
>>
>> *make[1]: *** [include/generated/timeconst.h] Error 127*
>> *make: *** [prepare0] Error 2*
>> *make: *** Waiting for unfinished jobs...."*
>>
>> *Even I tried installing "*sudo apt-get install bc"* but still the same
>> issue as above, Kindly do the needful in resolving the above issue as am
>> stuck with the same issue from past 4 days*
>>
>> *And I am even able to build kernel independently before integrating into
>> yocto project*
>>
>> *References:*
>>
>> *1. Ubuntu version used 14.04*
>>
>> *2. Poky Distro version*
>>
>> DISTRO = "poky"
>> DISTRO_NAME = "Poky (Yocto Project Reference Distro)"
>> DISTRO_VERSION = "2.5+snapshot-${DATE}"
>>
>> *3.Logs:*
>>
>> NOTE: linux-srini-4.14-r1 do_prepare_recipe_sysroot: Direct dependencies
>> are
>> ['/home/srinivasan/yocto_session_ws_2/poky/meta/recipes-devtools/libtool/libtool-native_2.4.6.bb:do_populate_sysroot',
>> 'virtual:native:/home/srinivasan/yocto_session_ws_2/poky/meta/recipes-devtools/gnu-config/gnu-config_git.bb:do_populate_sysroot',
>> 'virtual:native:/home/srinivasan/yocto_session_ws_2/poky/meta/recipes-devtools/autoconf/autoconf_2.69.bb:do_populate_sysroot',
>> 'virtual:native:/home/srinivasan/yocto_session_ws_2/poky/meta/recipes-devtools/automake/automake_1.16.1.bb:
>> do_populate_sysroot']
>> NOTE: linux-srini-4.14-r1 do_prepare_recipe_sysroot: Installed into
>> sysroot: ['libtool-native', 'gnu-config-native', 'autoconf-native',
>> 'automake-native', 'texinfo-dummy-native', 'quilt-native', 'm4-native']
>> + cd
>> /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/git
>>
>> NOTE: linux-srini-4.14-r1 do_compile: make -j 4 mrproper
>> + oe_runmake mrproper
>> + oe_runmake_call mrproper
>> + bbnote make -j 4 mrproper
>> + [ -p
>> /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/temp/fifo.7174
>> ]
>> + printf %b\0 bbnote make -j 4 mrproper
>> + make -j 4 mrproper
>>
>>   CLEAN   .config
>>
>> + oe_runmake defconfig
>> + oe_runmake_call defconfig
>> + bbnote make -j 4 defconfig
>>
>> NOTE: linux-srini-4.14-r1 do_compile: make -j 4 defconfig
>> + [ -p
>> /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/temp/fifo.7174
>> ]
>> + printf %b\0 bbnote make -j 4 defconfig
>> + make -j 4 defconfig
>>
>>   HOSTCC  scripts/basic/fixdep
>>
>>   HOSTCC  scripts/kconfig/conf.o
>>
>>   SHIPPED scripts/kconfig/zconf.tab.c
>>
>>   SHIPPED scripts/kconfig/zconf.lex.c
>>
>>   HOSTCC  scripts/kconfig/zconf.tab.o
>>
>>   HOSTLD  scripts/kconfig/conf
>>
>> *** Default configuration is based on 'x86_64_defconfig'
>>
>> #
>> # configuration written to .config
>> #
>>
>> + oe_runmake
>> + oe_runmake_call
>> + bbnote make -j 4
>> + [ -p
>> NOTE: linux-srini-4.14-r1 do_compile: make -j 4
>>  /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/temp/fifo.7174
>> ]
>> + printf %b\0 bbnote make -j 4
>> + make -j 4
>>
>> scripts/kconfig/conf  --silentoldconfig Kconfig
>>
>>   SYSTBL
>> arch/x86/entry/syscalls/../../include/generated/asm/syscalls_32.h
>>
>>   SYSHDR
>> arch/x86/entry/syscalls/../../include/generated/asm/unistd_32_ia32.h
>>
>>   SYSHDR
>> arch/x86/entry/syscalls/../../include/generated/asm/unistd_64_x32.h
>>
>>   CHK     include/config/kernel.release
>>
>>   SYSTBL
>> arch/x86/entry/syscalls/../../include/generated/asm/syscalls_64.h
>>
>>   SYSHDR
>> arch/x86/entry/syscalls/../../include/generated/uapi/asm/unistd_32.h
>>
>>   SYSHDR
>> arch/x86/entry/syscalls/../../include/generated/uapi/asm/unistd_64.h
>>
>>   SYSHDR
>> arch/x86/entry/syscalls/../../include/generated/uapi/asm/unistd_x32.h
>>
>>   CHK     include/generated/uapi/linux/version.h
>>
>>   UPD     include/generated/uapi/linux/version.h
>>
>>   UPD     include/config/kernel.release
>>
>>   HOSTCC  arch/x86/tools/relocs_32.o
>>
>>   HOSTCC  arch/x86/tools/relocs_64.o
>>
>>   HOSTCC  arch/x86/tools/relocs_common.o
>>
>>   WRAP    arch/x86/include/generated/asm/clkdev.h
>>
>>   WRAP    arch/x86/include/generated/asm/dma-contiguous.h
>>
>>   WRAP    arch/x86/include/generated/asm/early_ioremap.h
>>
>>   WRAP    arch/x86/include/generated/asm/mcs_spinlock.h
>>
>>   WRAP    arch/x86/include/generated/asm/mm-arch-hooks.h
>>
>>   CHK     include/generated/utsrelease.h
>>
>>   UPD     include/generated/utsrelease.h
>>
>>   CC      scripts/mod/empty.o
>>
>>   HOSTCC  scripts/mod/mk_elfconfig
>>
>>   HOSTLD  arch/x86/tools/relocs
>>
>>   CC      scripts/mod/devicetable-offsets.s
>>
>>   MKELF   scripts/mod/elfconfig.h
>>
>>   CHK     scripts/mod/devicetable-offsets.h
>>
>>   UPD     scripts/mod/devicetable-offsets.h
>>
>>   HOSTCC  scripts/mod/sumversion.o
>>
>>   HOSTCC  scripts/selinux/genheaders/genheaders
>>
>>   HOSTCC  scripts/selinux/mdp/mdp
>>
>>   CC      kernel/bounds.s
>>
>>   HOSTCC  scripts/kallsyms
>>
>>   HOSTCC  scripts/mod/modpost.o
>>
>>   CHK     include/generated/timeconst.h
>>
>> */bin/sh: 1: bc: not found*
>>
>> *make[1]: *** [include/generated/timeconst.h] Error 127*
>> *make: *** [prepare0] Error 2*
>> *make: *** Waiting for unfinished jobs....*
>>
>>   HOSTCC  scripts/pnmtologo
>>
>>   HOSTCC  scripts/conmakehash
>>
>>   HOSTCC  scripts/sortextable
>>
>>   HOSTCC  scripts/mod/file2alias.o
>>
>>   HOSTLD  scripts/mod/modpost
>>
>> + die oe_runmake failed
>> + bbfatal_log oe_runmake failed
>> + [ -p
>> /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/temp/fifo.7174
>> ]
>> + printf %b\0 bbfatal_log oe_runmake failed
>> + exit 1
>> + bb_exit_handler
>> + ret=1
>> + echo WARNING: exit code 1 from a shell command.
>> WARNING: exit code 1 from a shell command.
>> + exit 1
>>
>> *ERROR: linux-srini-4.14-r1 do_compile: oe_runmake failed*
>> *ERROR: linux-srini-4.14-r1 do_compile: Function failed: do_compile (log
>> file is located at
>> /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/temp/log.do_compile.7174)*
>> *ERROR: Logfile of failure stored in:
>> /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/temp/log.do_compile.7174*
>> Log data follows:
>> | DEBUG: SITE files ['endian-little', 'bit-32', 'ix86-common',
>> 'common-linux', 'common-glibc', 'i586-linux', 'common']
>> | DEBUG: Executing shell function do_compile
>> | + cd
>> /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/build
>> | + do_compile
>> | + cd
>> /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/git
>> |
>> | + cd
>> /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/build
>> | + do_compile
>> | + cd
>> /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/git
>> | NOTE: make -j 4 mrproper
>> | + oe_runmake mrproper
>> | + oe_runmake_call mrproper
>> | + bbnote make -j 4 mrproper
>> | + [ -p
>> /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/temp/fifo.7174
>> ]
>> | + printf %b\0 bbnote make -j 4 mrproper
>> | + make -j 4 mrproper
>> |
>> | + oe_runmake mrproper
>> | + oe_runmake_call mrproper
>> | + bbnote make -j 4 mrproper
>> | + [ -p
>> /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/temp/fifo.7174
>> ]
>> | + printf %b\0 bbnote make -j 4 mrproper
>> | + make -j 4 mrproper
>> |   CLEAN   .config
>> |
>> |   CLEAN   .config
>> | + oe_runmake defconfig
>> | + oe_runmake_call defconfig
>> | + bbnote make -j 4 defconfig
>> |
>> | + oe_runmake defconfig
>> | + oe_runmake_call defconfig
>> | + bbnote make -j 4 defconfig
>> | NOTE: make -j 4 defconfig
>> | + [ -p
>> /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/temp/fifo.7174
>> ]
>> | + printf %b\0 bbnote make -j 4 defconfig
>> | + make -j 4 defconfig
>> |
>> | + [ -p
>> /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/temp/fifo.7174
>> ]
>> | + printf %b\0 bbnote make -j 4 defconfig
>> | + make -j 4 defconfig
>> |   HOSTCC  scripts/basic/fixdep
>> |
>> |   HOSTCC  scripts/basic/fixdep
>> |   HOSTCC  scripts/kconfig/conf.o
>> |
>> |   HOSTCC  scripts/kconfig/conf.o
>> |   SHIPPED scripts/kconfig/zconf.tab.c
>> |
>> |   SHIPPED scripts/kconfig/zconf.tab.c
>> |   SHIPPED scripts/kconfig/zconf.lex.c
>> |
>> |   SHIPPED scripts/kconfig/zconf.lex.c
>> |   HOSTCC  scripts/kconfig/zconf.tab.o
>> |
>> |   HOSTCC  scripts/kconfig/zconf.tab.o
>> |   HOSTLD  scripts/kconfig/conf
>> |
>> |   HOSTLD  scripts/kconfig/conf
>> | *** Default configuration is based on 'x86_64_defconfig'
>> |
>> | *** Default configuration is based on 'x86_64_defconfig'
>> | #
>> | # configuration written to .config
>> | #
>> |
>> | #
>> | # configuration written to .config
>> | #
>> | + oe_runmake
>> | + oe_runmake_call
>> | + bbnote make -j 4
>> | + [ -p
>> | + oe_runmake
>> | + oe_runmake_call
>> | + bbnote make -j 4
>> | + [ -pNOTE: make -j 4
>> |
>> /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/temp/fifo.7174
>> ]
>> | + printf %b\0 bbnote make -j 4
>> | + make -j 4
>> |
>> |
>> /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/temp/fifo.7174
>> ]
>> | + printf %b\0 bbnote make -j 4
>> | + make -j 4
>> | scripts/kconfig/conf  --silentoldconfig Kconfig
>> |
>> | scripts/kconfig/conf  --silentoldconfig Kconfig
>> |   SYSTBL
>> arch/x86/entry/syscalls/../../include/generated/asm/syscalls_32.h
>> |
>> |   SYSTBL
>> arch/x86/entry/syscalls/../../include/generated/asm/syscalls_32.h
>> |   SYSHDR
>> arch/x86/entry/syscalls/../../include/generated/asm/unistd_32_ia32.h
>> |
>> |   SYSHDR
>> arch/x86/entry/syscalls/../../include/generated/asm/unistd_32_ia32.h
>> |   SYSHDR
>> arch/x86/entry/syscalls/../../include/generated/asm/unistd_64_x32.h
>> |
>> |   SYSHDR
>> arch/x86/entry/syscalls/../../include/generated/asm/unistd_64_x32.h
>> |   CHK     include/config/kernel.release
>> |
>> |   CHK     include/config/kernel.release
>> |   SYSTBL
>> arch/x86/entry/syscalls/../../include/generated/asm/syscalls_64.h
>> |
>> |   SYSTBL
>> arch/x86/entry/syscalls/../../include/generated/asm/syscalls_64.h
>> |   SYSHDR
>> arch/x86/entry/syscalls/../../include/generated/uapi/asm/unistd_32.h
>> |
>> |   SYSHDR
>> arch/x86/entry/syscalls/../../include/generated/uapi/asm/unistd_32.h
>> |   SYSHDR
>> arch/x86/entry/syscalls/../../include/generated/uapi/asm/unistd_64.h
>> |
>> |   SYSHDR
>> arch/x86/entry/syscalls/../../include/generated/uapi/asm/unistd_64.h
>> |   SYSHDR
>> arch/x86/entry/syscalls/../../include/generated/uapi/asm/unistd_x32.h
>> |
>> |   SYSHDR
>> arch/x86/entry/syscalls/../../include/generated/uapi/asm/unistd_x32.h
>> |   CHK     include/generated/uapi/linux/version.h
>> |
>> |   CHK     include/generated/uapi/linux/version.h
>> |   UPD     include/generated/uapi/linux/version.h
>> |
>> |   UPD     include/generated/uapi/linux/version.h
>> |   UPD     include/config/kernel.release
>> |
>> |   UPD     include/config/kernel.release
>> |   HOSTCC  arch/x86/tools/relocs_32.o
>> |
>> |   HOSTCC  arch/x86/tools/relocs_32.o
>> |   HOSTCC  arch/x86/tools/relocs_64.o
>> |
>> |   HOSTCC  arch/x86/tools/relocs_64.o
>> |   HOSTCC  arch/x86/tools/relocs_common.o
>> |
>> |   HOSTCC  arch/x86/tools/relocs_common.o
>> |   WRAP    arch/x86/include/generated/asm/clkdev.h
>> |
>> |   WRAP    arch/x86/include/generated/asm/clkdev.h
>> |   WRAP    arch/x86/include/generated/asm/dma-contiguous.h
>> |
>> |   WRAP    arch/x86/include/generated/asm/dma-contiguous.h
>> |   WRAP    arch/x86/include/generated/asm/early_ioremap.h
>> |
>> |   WRAP    arch/x86/include/generated/asm/early_ioremap.h
>> |   WRAP    arch/x86/include/generated/asm/mcs_spinlock.h
>> |
>> |   WRAP    arch/x86/include/generated/asm/mcs_spinlock.h
>> |   WRAP    arch/x86/include/generated/asm/mm-arch-hooks.h
>> |
>> |   WRAP    arch/x86/include/generated/asm/mm-arch-hooks.h
>> |   CHK     include/generated/utsrelease.h
>> |
>> |   CHK     include/generated/utsrelease.h
>> |   UPD     include/generated/utsrelease.h
>> |
>> |   UPD     include/generated/utsrelease.h
>> |   CC      scripts/mod/empty.o
>> |
>> |   CC      scripts/mod/empty.o
>> |   HOSTCC  scripts/mod/mk_elfconfig
>> |
>> |   HOSTCC  scripts/mod/mk_elfconfig
>> |   HOSTLD  arch/x86/tools/relocs
>> |
>> |   HOSTLD  arch/x86/tools/relocs
>> |   CC      scripts/mod/devicetable-offsets.s
>> |
>> |   CC      scripts/mod/devicetable-offsets.s
>> |   MKELF   scripts/mod/elfconfig.h
>> |
>> |   MKELF   scripts/mod/elfconfig.h
>> |   CHK     scripts/mod/devicetable-offsets.h
>> |
>> |   CHK     scripts/mod/devicetable-offsets.h
>> |   UPD     scripts/mod/devicetable-offsets.h
>> |
>> |   UPD     scripts/mod/devicetable-offsets.h
>> |   HOSTCC  scripts/mod/sumversion.o
>> |
>> |   HOSTCC  scripts/mod/sumversion.o
>> |   HOSTCC  scripts/selinux/genheaders/genheaders
>> |
>> |   HOSTCC  scripts/selinux/genheaders/genheaders
>> |   HOSTCC  scripts/selinux/mdp/mdp
>> |
>> |   HOSTCC  scripts/selinux/mdp/mdp
>> |   CC      kernel/bounds.s
>> |
>> |   CC      kernel/bounds.s
>> |   HOSTCC  scripts/kallsyms
>> |
>> |   HOSTCC  scripts/kallsyms
>> |   HOSTCC  scripts/mod/modpost.o
>> |
>> |   HOSTCC  scripts/mod/modpost.o
>> |   CHK     include/generated/timeconst.h
>> |
>> |   CHK     include/generated/timeconst.h
>> *| /bin/sh: 1: bc: not found*
>> *| *
>> *| /bin/sh: 1: bc: not found*
>> *| make[1]: *** [include/generated/timeconst.h] Error 127*
>> *| make: *** [prepare0] Error 2*
>> *| make: *** Waiting for unfinished jobs....*
>> *| *
>> *| make[1]: *** [include/generated/timeconst.h] Error 127*
>> *| make: *** [prepare0] Error 2*
>> *| make: *** Waiting for unfinished jobs....*
>> |   HOSTCC  scripts/pnmtologo
>> |
>> |   HOSTCC  scripts/pnmtologo
>> |   HOSTCC  scripts/conmakehash
>> |
>> |   HOSTCC  scripts/conmakehash
>> |   HOSTCC  scripts/sortextable
>> |
>> |   HOSTCC  scripts/sortextable
>> |   HOSTCC  scripts/mod/file2alias.o
>> |
>> |   HOSTCC  scripts/mod/file2alias.o
>> |   HOSTLD  scripts/mod/modpost
>> |
>> |   HOSTLD  scripts/mod/modpost
>> | + die oe_runmake failed
>> | + bbfatal_log oe_runmake failed
>> | + [ -p
>> /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/temp/fifo.7174
>> ]
>> | + printf %b\0 bbfatal_log oe_runmake failed
>> | + exit 1
>> | + bb_exit_handler
>> | + ret=1
>> | + echo WARNING: exit code 1 from a shell command.
>> | WARNING: exit code 1 from a shell command.
>> | + exit 1
>> |
>> | + die oe_runmake failed
>> | + bbfatal_log oe_runmake failed
>> | + [ -p
>> /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/temp/fifo.7174
>> ]
>> | + printf %b\0 bbfatal_log oe_runmake failed
>> | + exit 1
>> | + bb_exit_handler
>> | + ret=1
>> | + echo WARNING: exit code 1 from a shell command.
>> | WARNING: exit code 1 from a shell command.
>> | + exit 1
>> *| ERROR: oe_runmake failed*
>> *| ERROR: Function failed: do_compile (log file is located at
>> /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/temp/log.do_compile.7174)*
>> *ERROR: Task
>> (/home/srinivasan/yocto_session_ws_2/poky/meta/recipes-kernel/linux/linux-srini_4.14.bb:do_compile)
>> failed with exit code '1'*
>> *NOTE: Tasks Summary: Attempted 312 tasks of which 306 didn't need to be
>> rerun and 1 failed.*
>>
>> Summary: 1 task failed:
>>
>> /home/srinivasan/yocto_session_ws_2/poky/meta/recipes-kernel/linux/linux-srini_4.14.bb:
>> do_compile
>> Summary: There was 1 WARNING message shown.
>> Summary: There were 2 ERROR messages shown, returning a non-zero exit
>> code.
>> srinivasan@srinivasan-UX305UA:~/yocto_session_ws_2/build$
>> --
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky
>>
>

--000000000000a2a710057515eada
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Adding the &quot;DEPENDS +=3D &quot;xz-native bc-native&q=
uot; in the &quot;<a href=3D"http://linux-srini_4.14.bb">linux-srini_4.14.b=
b</a>&quot; did the trick<div dir=3D"auto"><br></div><div dir=3D"auto">Many=
 many thanks for all your support :)</div></div><br><div class=3D"gmail_quo=
te"><div dir=3D"ltr">On Wed 5 Sep, 2018, 7:12 AM Khem Raj, &lt;<a href=3D"m=
ailto:raj.khem@gmail.com">raj.khem@gmail.com</a>&gt; wrote:<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc=
 solid;padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_default" styl=
e=3D"font-family:monospace,monospace">in your local.conf add</div><div clas=
s=3D"gmail_default" style=3D"font-family:monospace,monospace"><br></div><di=
v class=3D"gmail_default" style=3D"font-family:monospace,monospace">HOSTTOO=
LS=C2=A0+=3D &quot;bc&quot;</div><div class=3D"gmail_default" style=3D"font=
-family:monospace,monospace"><br></div><div class=3D"gmail_default" style=
=3D"font-family:monospace,monospace">see if that helps</div></div><br><div =
class=3D"gmail_quote"><div dir=3D"ltr">On Tue, Sep 4, 2018 at 5:33 PM srini=
vasan &lt;<a href=3D"mailto:srinivasan.rns@gmail.com" target=3D"_blank" rel=
=3D"noreferrer">srinivasan.rns@gmail.com</a>&gt; wrote:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc sol=
id;padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D=
"font-family:comic sans ms,sans-serif"><div class=3D"m_-5083174756080610539=
m_4401998838644016827gmail-gE m_-5083174756080610539m_4401998838644016827gm=
ail-iv m_-5083174756080610539m_4401998838644016827gmail-gt" style=3D"paddin=
g:20px 0px 0px;font-size:12.8px;font-family:Roboto,RobotoDraft,Helvetica,Ar=
ial,sans-serif"><br class=3D"m_-5083174756080610539m_4401998838644016827gma=
il-Apple-interchange-newline"><table cellpadding=3D"0" class=3D"m_-50831747=
56080610539m_4401998838644016827gmail-cf m_-5083174756080610539m_4401998838=
644016827gmail-gJ" style=3D"border-collapse:collapse;margin-top:0px;width:a=
uto;font-size:0.875rem;letter-spacing:0.2px;display:block"><tbody style=3D"=
display:block"><tr class=3D"m_-5083174756080610539m_4401998838644016827gmai=
l-acZ" style=3D"height:auto;display:flex"><td class=3D"m_-50831747560806105=
39m_4401998838644016827gmail-gF m_-5083174756080610539m_4401998838644016827=
gmail-gK" style=3D"white-space:nowrap;padding:0px;vertical-align:top;width:=
989.531px;line-height:20px;display:block;max-height:20px"><table cellpaddin=
g=3D"0" class=3D"m_-5083174756080610539m_4401998838644016827gmail-cf m_-508=
3174756080610539m_4401998838644016827gmail-ix" style=3D"border-collapse:col=
lapse;table-layout:fixed;width:989px"><tbody><tr><td class=3D"m_-5083174756=
080610539m_4401998838644016827gmail-c2" style=3D"display:flex"><h3 class=3D=
"m_-5083174756080610539m_4401998838644016827gmail-iw" style=3D"overflow:hid=
den;max-width:92%;font-size:0.75rem;font-weight:inherit;margin:inherit;lett=
er-spacing:0.3px;color:rgb(95,99,104);line-height:20px"><span name=3D"srini=
vasan" class=3D"m_-5083174756080610539m_4401998838644016827gmail-gD" style=
=3D"color:rgb(32,33,36);font-size:0.875rem;font-weight:bold;display:inline;=
vertical-align:top;letter-spacing:0.2px;line-height:20px">srinivasan</span>=
=C2=A0<span class=3D"m_-5083174756080610539m_4401998838644016827gmail-go" s=
tyle=3D"vertical-align:top;color:rgb(85,85,85)">&lt;<a href=3D"mailto:srini=
vasan.rns@gmail.com" target=3D"_blank" rel=3D"noreferrer">srinivasan.rns@gm=
ail.com</a>&gt;</span></h3></td></tr></tbody></table></td><td class=3D"m_-5=
083174756080610539m_4401998838644016827gmail-gH m_-5083174756080610539m_440=
1998838644016827gmail-bAk" style=3D"text-align:right;white-space:nowrap;ver=
tical-align:top;display:block;max-height:20px"><div class=3D"m_-50831747560=
80610539m_4401998838644016827gmail-gK" style=3D"padding:0px;display:flex"><=
span id=3D"m_-5083174756080610539m_4401998838644016827gmail-:1dc" class=3D"=
m_-5083174756080610539m_4401998838644016827gmail-g3" title=3D"Sep 5, 2018, =
5:55 AM" alt=3D"Sep 5, 2018, 5:55 AM" style=3D"vertical-align:top;margin:0p=
x;font-size:0.75rem;letter-spacing:0.3px;color:rgb(95,99,104);display:block=
;line-height:20px">5:55 AM (4 minutes ago)</span><div class=3D"m_-508317475=
6080610539m_4401998838644016827gmail-zd m_-5083174756080610539m_44019988386=
44016827gmail-bi4" title=3D"Not starred" style=3D"display:inline-block;heig=
ht:20px;margin-left:20px;outline:0px"><span class=3D"m_-5083174756080610539=
m_4401998838644016827gmail-T-KT" style=3D"display:inline-flex;height:20px;t=
ext-align:center;width:20px;padding:0px;margin:0px;border:none;outline:none=
"></span></div></div></td><td class=3D"m_-5083174756080610539m_440199883864=
4016827gmail-gH" style=3D"text-align:right;white-space:nowrap;vertical-alig=
n:top;display:flex"></td><td class=3D"m_-5083174756080610539m_4401998838644=
016827gmail-gH m_-5083174756080610539m_4401998838644016827gmail-acX m_-5083=
174756080610539m_4401998838644016827gmail-bAm" rowspan=3D"2" style=3D"text-=
align:right;white-space:nowrap;vertical-align:top;display:block;max-height:=
20px"><div class=3D"m_-5083174756080610539m_4401998838644016827gmail-T-I m_=
-5083174756080610539m_4401998838644016827gmail-J-J5-Ji m_-50831747560806105=
39m_4401998838644016827gmail-T-I-Js-IF m_-5083174756080610539m_440199883864=
4016827gmail-aaq m_-5083174756080610539m_4401998838644016827gmail-T-I-ax7 m=
_-5083174756080610539m_4401998838644016827gmail-L3" style=3D"display:inline=
-flex;border-radius:2px 0px 0px 2px;font-size:0.875rem;text-align:center;ma=
rgin:0px 0px 0px 20px;height:20px;line-height:18px;min-width:0px;outline:no=
ne;padding:0px;background:transparent;color:rgb(68,68,68);border:none"><img=
 class=3D"m_-5083174756080610539m_4401998838644016827gmail-hB m_-5083174756=
080610539m_4401998838644016827gmail-T-I-J3" src=3D"https://mail.google.com/=
mail/u/0/images/cleardot.gif" alt=3D"" style=3D"background:url(&quot;https:=
//ci5.googleusercontent.com/proxy/9OYLoJXy0WBPP4j1DhYXDH39lV88KazEUrrboYKBs=
rkl8zEfcL7HAtboiaoSXxm2WQN-EsJWontmCi59m-u2MA-4BVKNacZ-WSOEXUEH2_Mmbd1wmqZr=
i7WelggM5b41fKU=3Ds0-d-e1-ft#https://www.gstatic.com/images/icons/material/=
system/1x/reply_black_20dp.png&quot;) 50% 50%/20px no-repeat;height:20px;ma=
rgin:0px;vertical-align:middle;width:20px;opacity:0.54;display:inline-block=
;padding:0px"></div><div id=3D"m_-5083174756080610539m_4401998838644016827g=
mail-:1a8" class=3D"m_-5083174756080610539m_4401998838644016827gmail-T-I m_=
-5083174756080610539m_4401998838644016827gmail-J-J5-Ji m_-50831747560806105=
39m_4401998838644016827gmail-T-I-Js-Gs m_-5083174756080610539m_440199883864=
4016827gmail-aap m_-5083174756080610539m_4401998838644016827gmail-T-I-awG m=
_-5083174756080610539m_4401998838644016827gmail-T-I-ax7 m_-5083174756080610=
539m_4401998838644016827gmail-L3" style=3D"display:inline-flex;border-radiu=
s:0px 2px 2px 0px;font-size:0.875rem;text-align:center;margin:0px 0px 0px 2=
0px;height:20px;line-height:18px;min-width:0px;outline:none;padding:0px;bac=
kground:transparent;color:rgb(68,68,68);border:none"><img class=3D"m_-50831=
74756080610539m_4401998838644016827gmail-hA m_-5083174756080610539m_4401998=
838644016827gmail-T-I-J3" src=3D"https://mail.google.com/mail/u/0/images/cl=
eardot.gif" alt=3D"" style=3D"background:url(&quot;https://ci6.googleuserco=
ntent.com/proxy/aDXwBcPFt7tI6jTRMKF7wgEI1xaCGhgFemFZ-5LcBDQ6-2TT57MEn09o5_J=
V4mVWUAV0ZEUKjpExEG4IlvT-VuTpIZvI5qULN5j5-RNGN6Gm5rUCbFKkTqV3PkZCF0AodbaFAh=
y2=3Ds0-d-e1-ft#https://www.gstatic.com/images/icons/material/system/1x/mor=
e_vert_black_20dp.png&quot;) 50% 50%/20px no-repeat;height:20px;width:20px;=
margin:0px;vertical-align:middle;opacity:0.54;display:inline-block;padding:=
0px"></div></td></tr><tr class=3D"m_-5083174756080610539m_44019988386440168=
27gmail-acZ m_-5083174756080610539m_4401998838644016827gmail-xD" style=3D"h=
eight:auto;display:flex"><td colspan=3D"3"><table cellpadding=3D"0" class=
=3D"m_-5083174756080610539m_4401998838644016827gmail-cf m_-5083174756080610=
539m_4401998838644016827gmail-adz" style=3D"border-collapse:collapse;table-=
layout:fixed;white-space:nowrap;width:1248px"><tbody><tr><td class=3D"m_-50=
83174756080610539m_4401998838644016827gmail-ady" style=3D"overflow:visible;=
text-overflow:ellipsis;display:flex;line-height:20px"><div class=3D"m_-5083=
174756080610539m_4401998838644016827gmail-iw m_-5083174756080610539m_440199=
8838644016827gmail-ajw" style=3D"overflow:hidden;max-width:92%;display:inli=
ne-block"><span class=3D"m_-5083174756080610539m_4401998838644016827gmail-h=
b" style=3D"vertical-align:top;color:rgb(95,99,104);font-size:0.75rem;lette=
r-spacing:0.3px;line-height:20px">to=C2=A0<b><span dir=3D"ltr" name=3D"yoct=
o-infrastructure" class=3D"m_-5083174756080610539m_4401998838644016827gmail=
-g2 m_-5083174756080610539m_4401998838644016827gmail-ac2" style=3D"color:rg=
b(34,34,34);font-weight:normal;vertical-align:top">yocto-infrastructure</sp=
an></b></span></div><div class=3D"m_-5083174756080610539m_44019988386440168=
27gmail-ajy" style=3D"display:inline-flex;margin-left:4px;vertical-align:to=
p;border:none;outline:none"><img class=3D"m_-5083174756080610539m_440199883=
8644016827gmail-ajz" id=3D"m_-5083174756080610539m_4401998838644016827gmail=
-:1a7" src=3D"https://mail.google.com/mail/u/0/images/cleardot.gif" alt=3D"=
" style=3D"background:url(&quot;https://ci5.googleusercontent.com/proxy/duf=
S3QIsqQK7c3rMmjhz9QMJ-6DrGiWotjXx6NCuGn0FWhAuq9c6rIg86OQ-7GOFhyWR8DCJr9y2d1=
1N8fuEaIflRR7M0VZ2MrekcamxX49eTHbtbuP0liTlGSoxMuqqYKb8wQ7F9-1ZMJhx=3Ds0-d-e=
1-ft#https://www.gstatic.com/images/icons/material/system/1x/arrow_drop_dow=
n_black_20dp.png&quot;) 50% 50%/20px no-repeat;padding:0px;vertical-align:b=
aseline;height:20px;width:20px;border:none;margin:0px 0px 0px auto;display:=
flex;opacity:0.54"></div></td></tr></tbody></table></td></tr></tbody></tabl=
e></div><div id=3D"m_-5083174756080610539m_4401998838644016827gmail-:1cm" s=
tyle=3D"font-family:Roboto,RobotoDraft,Helvetica,Arial,sans-serif;font-size=
:medium"><div class=3D"m_-5083174756080610539m_4401998838644016827gmail-qQV=
YZb"></div><div class=3D"m_-5083174756080610539m_4401998838644016827gmail-u=
tdU2e"></div><div class=3D"m_-5083174756080610539m_4401998838644016827gmail=
-btm"></div></div><div class=3D"m_-5083174756080610539m_4401998838644016827=
gmail-" style=3D"font-family:Roboto,RobotoDraft,Helvetica,Arial,sans-serif;=
font-size:medium"><div class=3D"m_-5083174756080610539m_4401998838644016827=
gmail-aHl"></div><div id=3D"m_-5083174756080610539m_4401998838644016827gmai=
l-:1a6"></div><div id=3D"m_-5083174756080610539m_4401998838644016827gmail-:=
1co" class=3D"m_-5083174756080610539m_4401998838644016827gmail-ii m_-508317=
4756080610539m_4401998838644016827gmail-gt" style=3D"font-size:12.8px;direc=
tion:ltr;margin:8px 0px 0px;padding:0px"><div id=3D"m_-5083174756080610539m=
_4401998838644016827gmail-:1cn" class=3D"m_-5083174756080610539m_4401998838=
644016827gmail-a3s m_-5083174756080610539m_4401998838644016827gmail-aXjCH" =
style=3D"overflow:hidden;font-variant-numeric:normal;font-variant-east-asia=
n:normal;font-stretch:normal;font-size:small;line-height:1.5;font-family:Ar=
ial,Helvetica,sans-serif"><div dir=3D"ltr"><div class=3D"gmail_default" sty=
le=3D"font-family:&quot;comic sans ms&quot;,sans-serif"><div class=3D"gmail=
_default m_-5083174756080610539m_4401998838644016827gmail-adM"></div><div d=
ir=3D"ltr" style=3D"font-family:Arial,Helvetica,sans-serif"><div dir=3D"ltr=
"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:&quot;=
comic sans ms&quot;,sans-serif">After changing from &quot;<b>do_compile_ ()=
 {</b>&quot; to &quot;<b>do_compile() {</b>&quot;, in the attached recipe f=
ile, Compilation started but got stuck=C2=A0 &quot;<b>/bin/sh: 1: bc: not f=
ound</b></div><div class=3D"gmail_default"><font face=3D"comic sans ms, san=
s-serif"><b><br></b></font></div><div class=3D"gmail_default"><font face=3D=
"comic sans ms, sans-serif"><b>make[1]: *** [include/generated/timeconst.h]=
 Error 127</b></font></div><div class=3D"gmail_default"><font face=3D"comic=
 sans ms, sans-serif"><b>make: *** [prepare0] Error 2</b></font></div><div =
class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"><b>make: *=
** Waiting for unfinished jobs....&quot;</b></font></div><div class=3D"gmai=
l_default"><font face=3D"comic sans ms, sans-serif"><b><br></b></font></div=
><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"><b>E=
ven I tried installing &quot;</b></font><span style=3D"background-color:rgb=
a(27,31,35,0.05);color:rgb(36,41,46);font-family:SFMono-Regular,Consolas,&q=
uot;Liberation Mono&quot;,Menlo,Courier,monospace;font-size:11.9px">sudo ap=
t-get install bc&quot;</span><b style=3D"font-family:&quot;comic sans ms&qu=
ot;,sans-serif">=C2=A0but still the same issue as above, Kindly do the need=
ful in resolving the above issue as am stuck with the same issue from past =
4 days</b></div><div class=3D"gmail_default"><font face=3D"comic sans ms, s=
ans-serif"><b><br></b></font></div><div class=3D"gmail_default"><font face=
=3D"comic sans ms, sans-serif"><b>And I am even able to build kernel indepe=
ndently before integrating into yocto project</b></font></div><div class=3D=
"gmail_default"><font face=3D"comic sans ms, sans-serif"><b><br></b></font>=
</div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"=
><b>References:</b></font></div><span class=3D"m_-5083174756080610539m_4401=
998838644016827gmail-im" style=3D"color:rgb(80,0,80)"><div class=3D"gmail_d=
efault"><font face=3D"comic sans ms, sans-serif"><b><br></b></font></div><d=
iv class=3D"gmail_default"><div class=3D"gmail_default"><font face=3D"comic=
 sans ms, sans-serif"><b>1. Ubuntu version used 14.04</b></font></div><div =
class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"><br></font=
></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif=
"><b>2. Poky Distro version</b></font></div><div class=3D"gmail_default"><f=
ont face=3D"comic sans ms, sans-serif"><br></font></div><div class=3D"gmail=
_default"><font face=3D"comic sans ms, sans-serif">DISTRO =3D &quot;poky&qu=
ot;</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, s=
ans-serif">DISTRO_NAME =3D &quot;Poky (Yocto Project Reference Distro)&quot=
;</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, san=
s-serif">DISTRO_VERSION =3D &quot;2.5+snapshot-${DATE}&quot;</font></div></=
div><div class=3D"gmail_default" style=3D"font-family:&quot;comic sans ms&q=
uot;,sans-serif"><br></div></span><div class=3D"gmail_default" style=3D"fon=
t-family:&quot;comic sans ms&quot;,sans-serif"><b>3.Logs:</b></div><div cla=
ss=3D"gmail_default" style=3D"font-family:&quot;comic sans ms&quot;,sans-se=
rif"><br></div><div class=3D"gmail_default"><div><div class=3D"m_-508317475=
6080610539m_4401998838644016827gmail-adm" style=3D"margin:5px 0px"><div id=
=3D"m_-5083174756080610539m_4401998838644016827gmail-q_1003" class=3D"m_-50=
83174756080610539m_4401998838644016827gmail-ajR m_-5083174756080610539m_440=
1998838644016827gmail-h4" style=3D"background-color:rgb(232,234,237);border=
:none;clear:both;line-height:6px;outline:none;width:24px;color:rgb(80,0,80)=
;font-size:11px;border-radius:5.5px"><div class=3D"m_-5083174756080610539m_=
4401998838644016827gmail-ajT" style=3D"background:url(&quot;https://www.gst=
atic.com/images/icons/material/system/1x/more_horiz_black_20dp.png&quot;) 5=
0% 50%/20px no-repeat;height:11px;opacity:0.54;width:24px"></div></div></di=
v></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-seri=
f">NOTE: linux-srini-4.14-r1 do_prepare_recipe_sysroot: Direct dependencies=
 are [&#39;/home/srinivasan/yocto_session_ws_2/poky/meta/recipes-devtools/l=
ibtool/libtool-native_2.4.6.bb:do_populate_sysroot&#39;, &#39;virtual:nativ=
e:/home/srinivasan/yocto_session_ws_2/poky/meta/recipes-devtools/gnu-config=
/gnu-config_git.bb:do_populate_sysroot&#39;, &#39;virtual:native:/home/srin=
ivasan/yocto_session_ws_2/poky/meta/recipes-devtools/autoconf/autoconf_2.69=
.bb:do_populate_sysroot&#39;, &#39;virtual:native:/home/srinivasan/yocto_se=
ssion_ws_2/poky/meta/recipes-devtools/automake/automake_1.16.1.bb:do_popula=
te_sysroot&#39;]</font></div><div class=3D"gmail_default"><font face=3D"com=
ic sans ms, sans-serif">NOTE: linux-srini-4.14-r1 do_prepare_recipe_sysroot=
: Installed into sysroot: [&#39;libtool-native&#39;, &#39;gnu-config-native=
&#39;, &#39;autoconf-native&#39;, &#39;automake-native&#39;, &#39;texinfo-d=
ummy-native&#39;, &#39;quilt-native&#39;, &#39;m4-native&#39;]</font></div>=
<div><div class=3D"m_-5083174756080610539m_4401998838644016827gmail-adm" st=
yle=3D"margin:5px 0px"><div id=3D"m_-5083174756080610539m_44019988386440168=
27gmail-q_1001" class=3D"m_-5083174756080610539m_4401998838644016827gmail-a=
jR m_-5083174756080610539m_4401998838644016827gmail-h4" style=3D"background=
-color:rgb(232,234,237);border:none;clear:both;line-height:6px;outline:none=
;width:24px;color:rgb(80,0,80);font-size:11px;border-radius:5.5px"><div cla=
ss=3D"m_-5083174756080610539m_4401998838644016827gmail-ajT" style=3D"backgr=
ound:url(&quot;https://www.gstatic.com/images/icons/material/system/1x/more=
_horiz_black_20dp.png&quot;) 50% 50%/20px no-repeat;height:11px;opacity:0.5=
4;width:24px"></div></div></div></div><div class=3D"gmail_default"><font fa=
ce=3D"comic sans ms, sans-serif">+ cd /home/srinivasan/yocto_session_ws_2/b=
uild/tmp/work/i586-poky-linux/linux-srini/4.14-r1/git</font></div><div clas=
s=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"><br></font></d=
iv><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">NO=
TE: linux-srini-4.14-r1 do_compile: make -j 4 mrproper</font></div><div cla=
ss=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">+ oe_runmake =
mrproper</font></div><div class=3D"gmail_default"><font face=3D"comic sans =
ms, sans-serif">+ oe_runmake_call mrproper</font></div><div class=3D"gmail_=
default"><font face=3D"comic sans ms, sans-serif">+ bbnote make -j 4 mrprop=
er</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sa=
ns-serif">+ [ -p /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-po=
ky-linux/linux-srini/4.14-r1/temp/fifo.7174 ]</font></div><div class=3D"gma=
il_default"><font face=3D"comic sans ms, sans-serif">+ printf %b\0 bbnote m=
ake -j 4 mrproper</font></div><div class=3D"gmail_default"><font face=3D"co=
mic sans ms, sans-serif">+ make -j 4 mrproper</font></div><div class=3D"gma=
il_default"><font face=3D"comic sans ms, sans-serif"><br></font></div><div =
class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">=C2=A0 CLE=
AN=C2=A0 =C2=A0.config</font></div><div class=3D"gmail_default"><font face=
=3D"comic sans ms, sans-serif"><br></font></div><div class=3D"gmail_default=
"><font face=3D"comic sans ms, sans-serif">+ oe_runmake defconfig</font></d=
iv><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">+ =
oe_runmake_call defconfig</font></div><div class=3D"gmail_default"><font fa=
ce=3D"comic sans ms, sans-serif">+ bbnote make -j 4 defconfig</font></div><=
div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"><br></=
font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-s=
erif">NOTE: linux-srini-4.14-r1 do_compile: make -j 4 defconfig</font></div=
><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">+ [ =
-p /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux=
-srini/4.14-r1/temp/fifo.7174 ]</font></div><div class=3D"gmail_default"><f=
ont face=3D"comic sans ms, sans-serif">+ printf %b\0 bbnote make -j 4 defco=
nfig</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, =
sans-serif">+ make -j 4 defconfig</font></div><div class=3D"gmail_default">=
<font face=3D"comic sans ms, sans-serif"><br></font></div><div class=3D"gma=
il_default"><font face=3D"comic sans ms, sans-serif">=C2=A0 HOSTCC=C2=A0 sc=
ripts/basic/fixdep</font></div><div class=3D"gmail_default"><font face=3D"c=
omic sans ms, sans-serif"><br></font></div><div class=3D"gmail_default"><fo=
nt face=3D"comic sans ms, sans-serif">=C2=A0 HOSTCC=C2=A0 scripts/kconfig/c=
onf.o</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms,=
 sans-serif"><br></font></div><div class=3D"gmail_default"><font face=3D"co=
mic sans ms, sans-serif">=C2=A0 SHIPPED scripts/kconfig/zconf.tab.c</font><=
/div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">=
<br></font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, =
sans-serif">=C2=A0 SHIPPED scripts/kconfig/zconf.lex.c</font></div><div cla=
ss=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"><br></font></=
div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">=
=C2=A0 HOSTCC=C2=A0 scripts/kconfig/zconf.tab.o</font></div><div class=3D"g=
mail_default"><font face=3D"comic sans ms, sans-serif"><br></font></div><di=
v class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">=C2=A0 H=
OSTLD=C2=A0 scripts/kconfig/conf</font></div><div class=3D"gmail_default"><=
font face=3D"comic sans ms, sans-serif"><br></font></div><div class=3D"gmai=
l_default"><font face=3D"comic sans ms, sans-serif">*** Default configurati=
on is based on &#39;x86_64_defconfig&#39;</font></div><div class=3D"gmail_d=
efault"><font face=3D"comic sans ms, sans-serif"><br></font></div><div clas=
s=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">#</font></div>=
<div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"># con=
figuration written to .config</font></div><div class=3D"gmail_default"><fon=
t face=3D"comic sans ms, sans-serif">#</font></div><span class=3D"m_-508317=
4756080610539m_4401998838644016827gmail-im" style=3D"color:rgb(80,0,80)"><d=
iv class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"><br></f=
ont></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-se=
rif">+ oe_runmake</font></div><div class=3D"gmail_default"><font face=3D"co=
mic sans ms, sans-serif">+ oe_runmake_call</font></div><div class=3D"gmail_=
default"><font face=3D"comic sans ms, sans-serif">+ bbnote make -j 4</font>=
</div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"=
>+ [ -p</font></div><div class=3D"gmail_default"><font face=3D"comic sans m=
s, sans-serif">NOTE: linux-srini-4.14-r1 do_compile: make -j 4</font></div>=
</span><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif=
">=C2=A0/home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/=
linux-srini/4.14-r1/temp/fifo.7174 ]</font></div><span class=3D"m_-50831747=
56080610539m_4401998838644016827gmail-im" style=3D"color:rgb(80,0,80)"><div=
 class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">+ printf =
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
=C2=A0 scripts/mod/modpost</font></div><span class=3D"m_-508317475608061053=
9m_4401998838644016827gmail-im" style=3D"color:rgb(80,0,80)"><div class=3D"=
gmail_default"><font face=3D"comic sans ms, sans-serif"><br></font></div><d=
iv class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">+ die o=
e_runmake failed</font></div><div class=3D"gmail_default"><font face=3D"com=
ic sans ms, sans-serif">+ bbfatal_log oe_runmake failed</font></div></span>=
<div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">+ [ -=
p /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-=
srini/4.14-r1/temp/fifo.7174 ]</font></div><span class=3D"m_-50831747560806=
10539m_4401998838644016827gmail-im" style=3D"color:rgb(80,0,80)"><div class=
=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">+ printf %b\0 b=
bfatal_log oe_runmake failed</font></div><div class=3D"gmail_default"><font=
 face=3D"comic sans ms, sans-serif">+ exit 1</font></div><div class=3D"gmai=
l_default"><font face=3D"comic sans ms, sans-serif">+ bb_exit_handler</font=
></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif=
">+ ret=3D1</font></div><div class=3D"gmail_default"><font face=3D"comic sa=
ns ms, sans-serif">+ echo WARNING: exit code 1 from a shell command.</font>=
</div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"=
>WARNING: exit code 1 from a shell command.</font></div><div class=3D"gmail=
_default"><font face=3D"comic sans ms, sans-serif">+ exit 1</font></div><di=
v class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"><br></fo=
nt></div></span><div class=3D"gmail_default"><font face=3D"comic sans ms, s=
ans-serif"><b>ERROR: linux-srini-4.14-r1 do_compile: oe_runmake failed</b><=
/font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-=
serif"><b>ERROR: linux-srini-4.14-r1 do_compile: Function failed: do_compil=
e (log file is located at /home/srinivasan/yocto_session_ws_2/build/tmp/wor=
k/i586-poky-linux/linux-srini/4.14-r1/temp/log.do_compile.7174)</b></font><=
/div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">=
<b>ERROR: Logfile of failure stored in: /home/srinivasan/yocto_session_ws_2=
/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/temp/log.do_compile.717=
4</b></font></div><span class=3D"m_-5083174756080610539m_440199883864401682=
7gmail-im" style=3D"color:rgb(80,0,80)"><div class=3D"gmail_default"><font =
face=3D"comic sans ms, sans-serif">Log data follows:</font></div><div class=
=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">| DEBUG: SITE f=
iles [&#39;endian-little&#39;, &#39;bit-32&#39;, &#39;ix86-common&#39;, &#3=
9;common-linux&#39;, &#39;common-glibc&#39;, &#39;i586-linux&#39;, &#39;com=
mon&#39;]</font></div><div class=3D"gmail_default"><font face=3D"comic sans=
 ms, sans-serif">| DEBUG: Executing shell function do_compile</font></div><=
div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">| + cd=
 /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-s=
rini/4.14-r1/build</font></div><div class=3D"gmail_default"><font face=3D"c=
omic sans ms, sans-serif">| + do_compile</font></div></span><div class=3D"g=
mail_default"><font face=3D"comic sans ms, sans-serif">| + cd /home/sriniva=
san/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/g=
it</font></div><span class=3D"m_-5083174756080610539m_4401998838644016827gm=
ail-im" style=3D"color:rgb(80,0,80)"><div class=3D"gmail_default"><font fac=
e=3D"comic sans ms, sans-serif">|=C2=A0</font></div><div class=3D"gmail_def=
ault"><font face=3D"comic sans ms, sans-serif">| + cd /home/srinivasan/yoct=
o_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/build</fo=
nt></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-ser=
if">| + do_compile</font></div></span><div class=3D"gmail_default"><font fa=
ce=3D"comic sans ms, sans-serif">| + cd /home/srinivasan/yocto_session_ws_2=
/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/git</font></div><div cl=
ass=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">| NOTE: make=
 -j 4 mrproper</font></div><div class=3D"gmail_default"><font face=3D"comic=
 sans ms, sans-serif">| + oe_runmake mrproper</font></div><div class=3D"gma=
il_default"><font face=3D"comic sans ms, sans-serif">| + oe_runmake_call mr=
proper</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms=
, sans-serif">| + bbnote make -j 4 mrproper</font></div><div class=3D"gmail=
_default"><font face=3D"comic sans ms, sans-serif">| + [ -p /home/srinivasa=
n/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/tem=
p/fifo.7174 ]</font></div><div class=3D"gmail_default"><font face=3D"comic =
sans ms, sans-serif">| + printf %b\0 bbnote make -j 4 mrproper</font></div>=
<div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">| + m=
ake -j 4 mrproper</font></div><div class=3D"gmail_default"><font face=3D"co=
mic sans ms, sans-serif">|=C2=A0</font></div><div class=3D"gmail_default"><=
font face=3D"comic sans ms, sans-serif">| + oe_runmake mrproper</font></div=
><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">| + =
oe_runmake_call mrproper</font></div><div class=3D"gmail_default"><font fac=
e=3D"comic sans ms, sans-serif">| + bbnote make -j 4 mrproper</font></div><=
div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">| + [ =
-p /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux=
-srini/4.14-r1/temp/fifo.7174 ]</font></div><div class=3D"gmail_default"><f=
ont face=3D"comic sans ms, sans-serif">| + printf %b\0 bbnote make -j 4 mrp=
roper</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms,=
 sans-serif">| + make -j 4 mrproper</font></div><div class=3D"gmail_default=
"><font face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0CLEAN=C2=A0 =C2=A0=
.config</font></div><div class=3D"gmail_default"><font face=3D"comic sans m=
s, sans-serif">|=C2=A0</font></div><div class=3D"gmail_default"><font face=
=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0CLEAN=C2=A0 =C2=A0.config</fon=
t></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-seri=
f">| + oe_runmake defconfig</font></div><div class=3D"gmail_default"><font =
face=3D"comic sans ms, sans-serif">| + oe_runmake_call defconfig</font></di=
v><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">| +=
 bbnote make -j 4 defconfig</font></div><div class=3D"gmail_default"><font =
face=3D"comic sans ms, sans-serif">|=C2=A0</font></div><div class=3D"gmail_=
default"><font face=3D"comic sans ms, sans-serif">| + oe_runmake defconfig<=
/font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-=
serif">| + oe_runmake_call defconfig</font></div><div class=3D"gmail_defaul=
t"><font face=3D"comic sans ms, sans-serif">| + bbnote make -j 4 defconfig<=
/font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-=
serif">| NOTE: make -j 4 defconfig</font></div><div class=3D"gmail_default"=
><font face=3D"comic sans ms, sans-serif">| + [ -p /home/srinivasan/yocto_s=
ession_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/temp/fifo.71=
74 ]</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, =
sans-serif">| + printf %b\0 bbnote make -j 4 defconfig</font></div><div cla=
ss=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">| + make -j 4=
 defconfig</font></div><div class=3D"gmail_default"><font face=3D"comic san=
s ms, sans-serif">|=C2=A0</font></div><div class=3D"gmail_default"><font fa=
ce=3D"comic sans ms, sans-serif">| + [ -p /home/srinivasan/yocto_session_ws=
_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/temp/fifo.7174 ]</fon=
t></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-seri=
f">| + printf %b\0 bbnote make -j 4 defconfig</font></div><div class=3D"gma=
il_default"><font face=3D"comic sans ms, sans-serif">| + make -j 4 defconfi=
g</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, san=
s-serif">|=C2=A0 =C2=A0HOSTCC=C2=A0 scripts/basic/fixdep</font></div><div c=
lass=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0</fo=
nt></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-ser=
if">|=C2=A0 =C2=A0HOSTCC=C2=A0 scripts/basic/fixdep</font></div><div class=
=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0H=
OSTCC=C2=A0 scripts/kconfig/conf.o</font></div><div class=3D"gmail_default"=
><font face=3D"comic sans ms, sans-serif">|=C2=A0</font></div><div class=3D=
"gmail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0HOST=
CC=C2=A0 scripts/kconfig/conf.o</font></div><div class=3D"gmail_default"><f=
ont face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0SHIPPED scripts/kconfi=
g/zconf.tab.c</font></div><div class=3D"gmail_default"><font face=3D"comic =
sans ms, sans-serif">|=C2=A0</font></div><div class=3D"gmail_default"><font=
 face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0SHIPPED scripts/kconfig/z=
conf.tab.c</font></div><div class=3D"gmail_default"><font face=3D"comic san=
s ms, sans-serif">|=C2=A0 =C2=A0SHIPPED scripts/kconfig/zconf.lex.c</font><=
/div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">=
|=C2=A0</font></div><div class=3D"gmail_default"><font face=3D"comic sans m=
s, sans-serif">|=C2=A0 =C2=A0SHIPPED scripts/kconfig/zconf.lex.c</font></di=
v><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=
=C2=A0 =C2=A0HOSTCC=C2=A0 scripts/kconfig/zconf.tab.o</font></div><div clas=
s=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0</font>=
</div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"=
>|=C2=A0 =C2=A0HOSTCC=C2=A0 scripts/kconfig/zconf.tab.o</font></div><div cl=
ass=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=
=A0HOSTLD=C2=A0 scripts/kconfig/conf</font></div><div class=3D"gmail_defaul=
t"><font face=3D"comic sans ms, sans-serif">|=C2=A0</font></div><div class=
=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0 =C2=A0H=
OSTLD=C2=A0 scripts/kconfig/conf</font></div><div class=3D"gmail_default"><=
font face=3D"comic sans ms, sans-serif">| *** Default configuration is base=
d on &#39;x86_64_defconfig&#39;</font></div><div class=3D"gmail_default"><f=
ont face=3D"comic sans ms, sans-serif">|=C2=A0</font></div><div class=3D"gm=
ail_default"><font face=3D"comic sans ms, sans-serif">| *** Default configu=
ration is based on &#39;x86_64_defconfig&#39;</font></div><div class=3D"gma=
il_default"><font face=3D"comic sans ms, sans-serif">| #</font></div><div c=
lass=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">| # configu=
ration written to .config</font></div><div class=3D"gmail_default"><font fa=
ce=3D"comic sans ms, sans-serif">| #</font></div><div class=3D"gmail_defaul=
t"><font face=3D"comic sans ms, sans-serif">|=C2=A0</font></div><div class=
=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">| #</font></div=
><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">| # =
configuration written to .config</font></div><div class=3D"gmail_default"><=
font face=3D"comic sans ms, sans-serif">| #</font></div><span class=3D"m_-5=
083174756080610539m_4401998838644016827gmail-im" style=3D"color:rgb(80,0,80=
)"><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">| =
+ oe_runmake</font></div><div class=3D"gmail_default"><font face=3D"comic s=
ans ms, sans-serif">| + oe_runmake_call</font></div><div class=3D"gmail_def=
ault"><font face=3D"comic sans ms, sans-serif">| + bbnote make -j 4</font><=
/div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">=
| + [ -p</font></div><div class=3D"gmail_default"><font face=3D"comic sans =
ms, sans-serif">| + oe_runmake</font></div><div class=3D"gmail_default"><fo=
nt face=3D"comic sans ms, sans-serif">| + oe_runmake_call</font></div><div =
class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">| + bbnote=
 make -j 4</font></div></span><div class=3D"gmail_default"><font face=3D"co=
mic sans ms, sans-serif">| + [ -pNOTE: make -j 4</font></div><div class=3D"=
gmail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0 /home/srini=
vasan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1=
/temp/fifo.7174 ]</font></div><span class=3D"m_-5083174756080610539m_440199=
8838644016827gmail-im" style=3D"color:rgb(80,0,80)"><div class=3D"gmail_def=
ault"><font face=3D"comic sans ms, sans-serif">| + printf %b\0 bbnote make =
-j 4</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, =
sans-serif">| + make -j 4</font></div><div class=3D"gmail_default"><font fa=
ce=3D"comic sans ms, sans-serif">|=C2=A0</font></div></span><div class=3D"g=
mail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0 /home/sriniv=
asan/yocto_session_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/=
temp/fifo.7174 ]</font></div><span class=3D"m_-5083174756080610539m_4401998=
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
post</font></div><span class=3D"m_-5083174756080610539m_4401998838644016827=
gmail-im" style=3D"color:rgb(80,0,80)"><div class=3D"gmail_default"><font f=
ace=3D"comic sans ms, sans-serif">| + die oe_runmake failed</font></div><di=
v class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">| + bbfa=
tal_log oe_runmake failed</font></div></span><div class=3D"gmail_default"><=
font face=3D"comic sans ms, sans-serif">| + [ -p /home/srinivasan/yocto_ses=
sion_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/temp/fifo.7174=
 ]</font></div><span class=3D"m_-5083174756080610539m_4401998838644016827gm=
ail-im" style=3D"color:rgb(80,0,80)"><div class=3D"gmail_default"><font fac=
e=3D"comic sans ms, sans-serif">| + printf %b\0 bbfatal_log oe_runmake fail=
ed</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sa=
ns-serif">| + exit 1</font></div><div class=3D"gmail_default"><font face=3D=
"comic sans ms, sans-serif">| + bb_exit_handler</font></div><div class=3D"g=
mail_default"><font face=3D"comic sans ms, sans-serif">| + ret=3D1</font></=
div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">|=
 + echo WARNING: exit code 1 from a shell command.</font></div><div class=
=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">| WARNING: exit=
 code 1 from a shell command.</font></div><div class=3D"gmail_default"><fon=
t face=3D"comic sans ms, sans-serif">| + exit 1</font></div><div class=3D"g=
mail_default"><font face=3D"comic sans ms, sans-serif">|=C2=A0</font></div>=
<div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">| + d=
ie oe_runmake failed</font></div><div class=3D"gmail_default"><font face=3D=
"comic sans ms, sans-serif">| + bbfatal_log oe_runmake failed</font></div><=
/span><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"=
>| + [ -p /home/srinivasan/yocto_session_ws_2/build/tmp/work/i586-poky-linu=
x/linux-srini/4.14-r1/temp/fifo.7174 ]</font></div><span class=3D"m_-508317=
4756080610539m_4401998838644016827gmail-im" style=3D"color:rgb(80,0,80)"><d=
iv class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">| + pri=
ntf %b\0 bbfatal_log oe_runmake failed</font></div><div class=3D"gmail_defa=
ult"><font face=3D"comic sans ms, sans-serif">| + exit 1</font></div><div c=
lass=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">| + bb_exit=
_handler</font></div><div class=3D"gmail_default"><font face=3D"comic sans =
ms, sans-serif">| + ret=3D1</font></div><div class=3D"gmail_default"><font =
face=3D"comic sans ms, sans-serif">| + echo WARNING: exit code 1 from a she=
ll command.</font></div><div class=3D"gmail_default"><font face=3D"comic sa=
ns ms, sans-serif">| WARNING: exit code 1 from a shell command.</font></div=
><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">| + =
exit 1</font></div></span><div class=3D"gmail_default"><font face=3D"comic =
sans ms, sans-serif"><b>| ERROR: oe_runmake failed</b></font></div><div cla=
ss=3D"gmail_default"><font face=3D"comic sans ms, sans-serif"><b>| ERROR: F=
unction failed: do_compile (log file is located at /home/srinivasan/yocto_s=
ession_ws_2/build/tmp/work/i586-poky-linux/linux-srini/4.14-r1/temp/log.do_=
compile.7174)</b></font></div><span class=3D"m_-5083174756080610539m_440199=
8838644016827gmail-im" style=3D"color:rgb(80,0,80)"><div class=3D"gmail_def=
ault"><font face=3D"comic sans ms, sans-serif"><b>ERROR: Task (/home/sriniv=
asan/yocto_session_ws_2/poky/meta/recipes-kernel/linux/linux-srini_4.14.bb:=
do_compile) failed with exit code &#39;1&#39;</b></font></div><div class=3D=
"gmail_default"><font face=3D"comic sans ms, sans-serif"><b>NOTE: Tasks Sum=
mary: Attempted 312 tasks of which 306 didn&#39;t need to be rerun and 1 fa=
iled.</b></font></div><div class=3D"gmail_default"><font face=3D"comic sans=
 ms, sans-serif"><br></font></div><div class=3D"gmail_default"><font face=
=3D"comic sans ms, sans-serif">Summary: 1 task failed:</font></div><div cla=
ss=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">=C2=A0 /home/=
srinivasan/yocto_session_ws_2/poky/meta/recipes-kernel/linux/linux-srini_4.=
14.bb:do_compile</font></div><div class=3D"gmail_default"><font face=3D"com=
ic sans ms, sans-serif">Summary: There was 1 WARNING message shown.</font><=
/div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans-serif">=
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.=
</font></div><div class=3D"gmail_default"><font face=3D"comic sans ms, sans=
-serif">srinivasan@srinivasan-UX305UA:~/yocto_session_ws_2/build$</font></d=
iv></span></div></div></div></div></div></div></div></div></div></div></div=
>
-- <br>
_______________________________________________<br>
poky mailing list<br>
<a href=3D"mailto:poky@yoctoproject.org" target=3D"_blank" rel=3D"noreferre=
r">poky@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/poky" rel=3D"noreferrer =
noreferrer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/poky<=
/a><br>
</blockquote></div>
</blockquote></div>

--000000000000a2a710057515eada--
