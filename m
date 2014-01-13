Return-Path: <Liezhi.Yang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6F7EE0086A
	for <poky@yoctoproject.org>; Mon, 13 Jan 2014 02:29:22 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s0DATINT016330
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 13 Jan 2014 02:29:18 -0800 (PST)
Received: from [128.224.162.226] (128.224.162.226) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.2.347.0;
	Mon, 13 Jan 2014 02:29:18 -0800
Message-ID: <52D3BFFC.4030308@windriver.com>
Date: Mon, 13 Jan 2014 18:29:16 +0800
From: Robert Yang <liezhi.yang@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:24.0) Gecko/20100101 Thunderbird/24.0
MIME-Version: 1.0
To: "Nick D'Ademo" <nickdademo@gmail.com>, <poky@yoctoproject.org>
References: <CANR6C55cECHUBYRek7cKTm1us6A5GS0x-aDyjjD3Sbo5Tjr22A@mail.gmail.com>
In-Reply-To: <CANR6C55cECHUBYRek7cKTm1us6A5GS0x-aDyjjD3Sbo5Tjr22A@mail.gmail.com>
Subject: Re: autogen-native recipe compilation error (since upgrade to 5.18.2)
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
X-List-Received-Date: Mon, 13 Jan 2014 10:29:24 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit


Hi Nick,

What host (the linux distribution) are you working on, please ?

// Robert

On 01/12/2014 12:32 PM, Nick D'Ademo wrote:
> Since the recent commit: "autogen-native: upgrade to 5.18.2" (
> http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/meta/recipes-devtools/autogen?id=0cfb1e7a9f8349def5da787d3a284ac6d18ca55d
> )
>
> Compilation of the autogen-native recipe is broken for me.
>
> Anyone have any ideas on this?
> Many thanks in advance.
>
> (Target machine is the Intel NUC).
>
> *Error message as follows:*
>
> ERROR: Function failed: do_compile (log file is located at
> /home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/temp/log.do_compile.16605)
> ERROR: Logfile of failure stored in:
> /home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/temp/log.do_compile.16605
> Log data follows:
> | DEBUG: Executing shell function do_compile
> | NOTE: make -j 8
> | /bin/sh config/mk-shdefs config/shdefs
> | config.status: creating shdef-temp
> | make  all-recursive
> | make[1]: Entering directory
> `/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/build'
> | Making all in compat
> | make[2]: Entering directory
> `/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/build/compat'
> | :
> | make[2]: Leaving directory
> `/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/build/compat'
> | Making all in snprintfv
> | make[2]: Entering directory
> `/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/build/snprintfv'
> | for f in filament.c format.c printf.c mem.c stream.c custom.c ; do echo
> "#include \"$f\"" ; done > snv.c
> | ../i686-linux-libtool  --tag=CC   --mode=compile gcc  -std=gnu99
> -DHAVE_CONFIG_H -I.
> -I/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/autogen-5.18.2/snprintfv
> -I..
> -I/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/autogen-5.18.2
> -isystem/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include
> -isystem/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include -O2 -pipe
> -c -o snv.lo snv.c
> | i686-linux-libtool: compile:  gcc -std=gnu99 -DHAVE_CONFIG_H -I.
> -I/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/autogen-5.18.2/snprintfv
> -I..
> -I/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/autogen-5.18.2
> -isystem/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include
> -isystem/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include -O2 -pipe
> -c snv.c  -fPIC -DPIC -o .libs/snv.o
> | i686-linux-libtool: compile:  gcc -std=gnu99 -DHAVE_CONFIG_H -I.
> -I/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/autogen-5.18.2/snprintfv
> -I..
> -I/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/autogen-5.18.2
> -isystem/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include
> -isystem/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include -O2 -pipe
> -c snv.c -o snv.o >/dev/null 2>&1
> | ../i686-linux-libtool  --tag=CC   --mode=link gcc  -std=gnu99
> -isystem/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include -O2 -pipe
> -no-undefined -L/home/nick/poky/build/tmp/sysroots/i686-linux/usr/lib
> -L/home/nick/poky/build/tmp/sysroots/i686-linux/lib
> -Wl,-rpath-link,/home/nick/poky/build/tmp/sysroots/i686-linux/usr/lib
> -Wl,-rpath-link,/home/nick/poky/build/tmp/sysroots/i686-linux/lib
> -Wl,-rpath,/home/nick/poky/build/tmp/sysroots/i686-linux/usr/lib
> -Wl,-rpath,/home/nick/poky/build/tmp/sysroots/i686-linux/lib -Wl,-O1 -o
> libsnprintfv.la  snv.lo  -lm -ldl
> | i686-linux-libtool: link: ar cru .libs/libsnprintfv.a .libs/snv.o
> | i686-linux-libtool: link: ranlib .libs/libsnprintfv.a
> | i686-linux-libtool: link: ( cd ".libs" && rm -f "libsnprintfv.la" && ln
> -s "../libsnprintfv.la" "libsnprintfv.la" )
> | make[2]: Leaving directory
> `/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/build/snprintfv'
> | Making all in autoopts
> | make[2]: Entering directory
> `/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/build/autoopts'
> | rm -f stdnoreturn.h-t stdnoreturn.h && \
> |     { echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */' && \
> |       sed -e '/definition of _Noreturn/r
> /home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/autogen-5.18.2/config/snippet/_Noreturn.h'
> \
> |               <
> /home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/autogen-5.18.2/autoopts/stdnoreturn.in.h;
> \
> |     } > stdnoreturn.h-t && \
> |     mv stdnoreturn.h-t stdnoreturn.h
> | make  all-recursive
> | make[3]: Entering directory
> `/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/build/autoopts'
> | Making all in test
> | make[4]: Entering directory
> `/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/build/autoopts/test'
> | make[4]: Nothing to be done for `all'.
> | make[4]: Leaving directory
> `/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/build/autoopts/test'
> | make[4]: Entering directory
> `/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/build/autoopts'
> |
> AGexe="/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/build/agen5/autogen"
> GDexe="/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/build/getdefs/getdefs"
> CLexe="/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/build/columns/columns"
> srcdir="/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/autogen-5.18.2/autoopts"
> top_srcdir="/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/autogen-5.18.2"
> builddir="." top_builddir=".." POSIX_SHELL="/bin/bash" \
> |         /bin/bash
> /home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/autogen-5.18.2/autoopts/mk-tpl-config.sh
> tpl-config-stamp autoopts/options.h autoopts/usage-txt.h genshell.h
> option-xat-attribute.h option-value-type.h ao-strs.h ag-char-map.h
> autoopts.h project.h proto.h parse-duration.c ao-strs.c option-value-type.c
> option-xat-attribute.c autoopts.c alias.c    boolean.c   check.c
> configfile.c cook.c enum.c     env.c       file.c      find.c
> genshell.c load.c     makeshell.c nested.c    numeric.c    pgusage.c
> putshell.c reset.c     restore.c   save.c       sort.c stack.c
> streqvcmp.c text_mmap.c time.c       tokenize.c usage.c    version.c
> init.c
> | ../i686-linux-libtool  --tag=CC   --mode=compile gcc  -std=gnu99
> -DHAVE_CONFIG_H -I.
> -I/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/autogen-5.18.2/autoopts
> -I..  -I..
> -I/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/autogen-5.18.2
> -I../autoopts
> -I/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/autogen-5.18.2/autoopts
> -isystem/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include
> -DPKGDATADIR='"/home/nick/poky/build/tmp/sysroots/i686-linux/usr/share/autogen"'
> -isystem/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include -O2 -pipe
> -c -o libopts_la-libopts.lo `test -f 'libopts.c' || echo
> '/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/autogen-5.18.2/autoopts/'`libopts.c
> | i686-linux-libtool: compile:  gcc -std=gnu99 -DHAVE_CONFIG_H -I.
> -I/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/autogen-5.18.2/autoopts
> -I.. -I..
> -I/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/autogen-5.18.2
> -I../autoopts
> -I/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/autogen-5.18.2/autoopts
> -isystem/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include
> -DPKGDATADIR=\"/home/nick/poky/build/tmp/sysroots/i686-linux/usr/share/autogen\"
> -isystem/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include -O2 -pipe
> -c libopts.c  -fPIC -DPIC -o .libs/libopts_la-libopts.o
> | i686-linux-libtool: compile:  gcc -std=gnu99 -DHAVE_CONFIG_H -I.
> -I/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/autogen-5.18.2/autoopts
> -I.. -I..
> -I/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/autogen-5.18.2
> -I../autoopts
> -I/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/autogen-5.18.2/autoopts
> -isystem/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include
> -DPKGDATADIR=\"/home/nick/poky/build/tmp/sysroots/i686-linux/usr/share/autogen\"
> -isystem/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include -O2 -pipe
> -c libopts.c -o libopts_la-libopts.o >/dev/null 2>&1
> | ../i686-linux-libtool  --tag=CC   --mode=link gcc  -std=gnu99
> -DPKGDATADIR='"/home/nick/poky/build/tmp/sysroots/i686-linux/usr/share/autogen"'
> -isystem/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include -O2 -pipe
> -version-info 40:1:15
> -L/home/nick/poky/build/tmp/sysroots/i686-linux/usr/lib
> -L/home/nick/poky/build/tmp/sysroots/i686-linux/lib
> -Wl,-rpath-link,/home/nick/poky/build/tmp/sysroots/i686-linux/usr/lib
> -Wl,-rpath-link,/home/nick/poky/build/tmp/sysroots/i686-linux/lib
> -Wl,-rpath,/home/nick/poky/build/tmp/sysroots/i686-linux/usr/lib
> -Wl,-rpath,/home/nick/poky/build/tmp/sysroots/i686-linux/lib -Wl,-O1 -o
> libopts.la -rpath /home/nick/poky/build/tmp/sysroots/i686-linux/usr/lib
> libopts_la-libopts.lo ../snprintfv/libsnprintfv.la -lm -ldl
> | i686-linux-libtool: link: gcc  -shared  -fPIC -DPIC
> .libs/libopts_la-libopts.o  -Wl,--whole-archive
> ../snprintfv/.libs/libsnprintfv.a -Wl,--no-whole-archive
> -L/home/nick/poky/build/tmp/sysroots/i686-linux/usr/lib
> -L/home/nick/poky/build/tmp/sysroots/i686-linux/lib -lm -ldl  -O2
> -Wl,-rpath-link -Wl,/home/nick/poky/build/tmp/sysroots/i686-linux/usr/lib
> -Wl,-rpath-link -Wl,/home/nick/poky/build/tmp/sysroots/i686-linux/lib
> -Wl,-rpath -Wl,/home/nick/poky/build/tmp/sysroots/i686-linux/usr/lib
> -Wl,-rpath -Wl,/home/nick/poky/build/tmp/sysroots/i686-linux/lib -Wl,-O1
> -Wl,-soname -Wl,libopts.so.25 -o .libs/libopts.so.25.15.1
> | i686-linux-libtool: link: (cd ".libs" && rm -f "libopts.so.25" && ln -s
> "libopts.so.25.15.1" "libopts.so.25")
> | i686-linux-libtool: link: (cd ".libs" && rm -f "libopts.so" && ln -s
> "libopts.so.25.15.1" "libopts.so")
> | i686-linux-libtool: link: (cd .libs/libopts.lax/libsnprintfv.a && ar x
> "/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/build/autoopts/../snprintfv/.libs/libsnprintfv.a")
> | i686-linux-libtool: link: ar cru .libs/libopts.a  libopts_la-libopts.o
> .libs/libopts.lax/libsnprintfv.a/snv.o
> | i686-linux-libtool: link: ranlib .libs/libopts.a
> | i686-linux-libtool: link: rm -fr .libs/libopts.lax
> | i686-linux-libtool: link: ( cd ".libs" && rm -f "libopts.la" && ln -s "../
> libopts.la" "libopts.la" )
> | /bin/bash mk-autoopts-pc pkgconfig/autoopts.pc
> | make[4]: Leaving directory
> `/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/build/autoopts'
> | make[3]: Leaving directory
> `/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/build/autoopts'
> | make[2]: Leaving directory
> `/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/build/autoopts'
> | Making all in agen5
> | make[2]: Entering directory
> `/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/build/agen5'
> | Making all in test
> | make[3]: Entering directory
> `/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/build/agen5/test'
> | make[3]: Nothing to be done for `all'.
> | make[3]: Leaving directory
> `/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/build/agen5/test'
> | make[3]: Entering directory
> `/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/build/agen5'
> | exec > ag.c ; \
> |     echo '#undef   PKGDATADIR' ; \
> |     echo '#define  PKGDATADIR
> "/home/nick/poky/build/tmp/sysroots/i686-linux/usr/share/autogen"' ; \
> |     mk=`set -- make ; command -v $1` ; \
> |     echo 'static char const make_prog[] = "'$mk'";' ; \
> |     printf '\n#define  DEFINING 1\n' ; \
> |     printf '#include "%s"\n' autoopts/project.h autogen.h autogen.c
> defParse-fsm.c defLex.c directive.c funcCase.c funcDef.c funcEval.c
> funcFor.c funcIf.c functions.c expExtract.c expFormat.c expGperf.c
> expGuile.c  expMake.c expOutput.c  expPrint.c  expState.c expString.c
> agShell.c ag-text.c    agCgi.c      agDep.c      agInit.c     agUtils.c
> cgi-fsm.c    defDirect.c  defFind.c    defLoad.c    fmemopen.c loadPseudo.c
> opts.c       scribble.c   tpLoad.c     tpParse.c tpProcess.c
> | gcc  -std=gnu99 -DHAVE_CONFIG_H -I.
> -I/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/autogen-5.18.2/agen5
> -I..  -I..
> -I/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/autogen-5.18.2
> -I../autoopts
> -I/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/autogen-5.18.2/autoopts
> -isystem/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include -pthread
> -I/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0
> -I/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include
> -isystem/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include -O2 -pipe
> -c -o autogen-ag.o `test -f 'ag.c' || echo
> '/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/autogen-5.18.2/agen5/'`ag.c
> | In file included from
> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libguile/array-handle.h:28:0,
> |                  from
> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libguile.h:34,
> |                  from
> /home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/autogen-5.18.2/agen5/autogen.h:60,
> |                  from ag.c:7:
> |
> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libguile/error.h:40:24:
> error: expected ')' before '__attribute__'
> |
> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libguile/error.h:40:24:
> error: expected ',' or ';' before ')' token
> |
> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libguile/error.h:42:27:
> error: expected ')' before '__attribute__'
> |
> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libguile/error.h:42:27:
> error: expected ',' or ';' before ')' token
> |
> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libguile/error.h:44:46:
> error: expected ')' before '__attribute__'
> |
> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libguile/error.h:44:46:
> error: expected ',' or ';' before ')' token
> |
> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libguile/error.h:46:30:
> error: expected ')' before '__attribute__'
> |
> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libguile/error.h:46:30:
> error: expected ',' or ';' before ')' token
> |
> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libguile/error.h:47:50:
> error: expected ')' before '__attribute__'
> |
> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libguile/error.h:47:50:
> error: expected ',' or ';' before ')' token
> |
> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libguile/error.h:49:6:
> error: expected ')' before '__attribute__'
> |
> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libguile/error.h:49:6:
> error: expected ',' or ';' before ')' token
> |
> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libguile/error.h:51:6:
> error: expected ')' before '__attribute__'
> |
> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libguile/error.h:51:6:
> error: expected ',' or ';' before ')' token
> |
> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libguile/error.h:52:44:
> error: expected ')' before '__attribute__'
> |
> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libguile/error.h:52:44:
> error: expected ',' or ';' before ')' token
> |
> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libguile/error.h:53:57:
> error: expected ')' before '__attribute__'
> |
> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libguile/error.h:53:57:
> error: expected ',' or ';' before ')' token
> |
> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libguile/error.h:55:21:
> error: expected ')' before '__attribute__'
> |
> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libguile/error.h:55:21:
> error: expected ',' or ';' before ')' token
> |
> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libguile/error.h:57:28:
> error: expected ')' before '__attribute__'
> |
> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libguile/error.h:57:28:
> error: expected ',' or ';' before ')' token
> |
> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libguile/error.h:59:41:
> error: expected ')' before '__attribute__'
> |
> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libguile/error.h:59:41:
> error: expected ',' or ';' before ')' token
> |
> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libguile/error.h:60:50:
> error: expected ')' before '__attribute__'
> |
> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libguile/error.h:60:50:
> error: expected ',' or ';' before ')' token
> |
> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libguile/error.h:62:19:
> error: expected ')' before '__attribute__'
> |
> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libguile/error.h:62:19:
> error: expected ',' or ';' before ')' token
> | In file included from
> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libguile/root.h:28:0,
> |                  from
> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libguile/async.h:27,
> |                  from
> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libguile.h:37,
> |                  from
> /home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/autogen-5.18.2/agen5/autogen.h:60,
> |                  from ag.c:7:
> |
> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libguile/throw.h:82:1:
> warning: '__noreturn__' attribute ignored [-Wattributes]
> | In file included from
> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libguile.h:89:0,
> |                  from
> /home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/autogen-5.18.2/agen5/autogen.h:60,
> |                  from ag.c:7:
> |
> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libguile/read.h:63:3:
> error: expected ')' before '__attribute__'
> |
> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libguile/read.h:63:3:
> error: expected ',' or ';' before ')' token
> | make[3]: *** [autogen-ag.o] Error 1
> | make[3]: Leaving directory
> `/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/build/agen5'
> | make[2]: *** [all-recursive] Error 1
> | make[2]: Leaving directory
> `/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/build/agen5'
> | make[1]: *** [all-recursive] Error 1
> | make[1]: Leaving directory
> `/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/build'
> | make: *** [all] Error 2
> | ERROR: oe_runmake failed
> | WARNING:
> /home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/temp/run.do_compile.16605:1
> exit 1 from
> |   exit 1
> | ERROR: Function failed: do_compile (log file is located at
> /home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/temp/log.do_compile.16605)
> ERROR: Task 6 (/home/nick/poky/meta/recipes-devtools/autogen/
> autogen-native_5.18.2.bb, do_compile) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 6 tasks of which 1 didn't need to be rerun
> and 1 failed.
> No currently running tasks (6 of 9)
>
> Summary: 1 task failed:
>    /home/nick/poky/meta/recipes-devtools/autogen/autogen-native_5.18.2.bb,
> do_compile
> Summary: There was 1 WARNING message shown.
> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
>

