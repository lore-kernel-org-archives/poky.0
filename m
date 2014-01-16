Return-Path: <nickdademo@gmail.com>
Received: from mail-oa0-f43.google.com (mail-oa0-f43.google.com
	[209.85.219.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A6FAE00870
	for <poky@yoctoproject.org>; Thu, 16 Jan 2014 01:46:43 -0800 (PST)
Received: by mail-oa0-f43.google.com with SMTP id h16so2118080oag.30
	for <poky@yoctoproject.org>; Thu, 16 Jan 2014 01:46:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=tobbCFcSGNe1v873fQmnZRNrnG0VpjuTvM/qXFK++lE=;
	b=gXpxBBZJYmeb9PF5MuJCTlxgbLPJwf+J7beH6rkHysAU2ceFaRUoHernTdhjjTyo7p
	wFHVsckjs2j6yqoI7iRlOZ4Dud1rai7FKZpK0Kh+j7YAT4NveP+AMS3bxvDFT05a+OJv
	nEdUphxo8c9BFLEUT5OpCMreBCZKzpc8QX/3xEeEdO+8O0E2i6mlW6qEDd5+19DSpaap
	TO6AvK0IQRRWhUvQ11Nc0nmaHxO0I2qndP9tN/cSP+rdvrw2ocwtxYBXYjP64v2LrROD
	w0viEzMSr8BiLB5RbMP5v/QLpgSQT3dIQIePlJ+ma2pU9fKpXF6Nw7s5Raeh7RplzATd
	RiZg==
X-Received: by 10.60.79.168 with SMTP id k8mr6185262oex.7.1389865602775; Thu,
	16 Jan 2014 01:46:42 -0800 (PST)
MIME-Version: 1.0
Received: by 10.76.72.70 with HTTP; Thu, 16 Jan 2014 01:46:22 -0800 (PST)
In-Reply-To: <52D3BFFC.4030308@windriver.com>
References: <CANR6C55cECHUBYRek7cKTm1us6A5GS0x-aDyjjD3Sbo5Tjr22A@mail.gmail.com>
	<52D3BFFC.4030308@windriver.com>
From: "Nick D'Ademo" <nickdademo@gmail.com>
Date: Thu, 16 Jan 2014 20:46:22 +1100
Message-ID: <CANR6C57ZbCXUn31mx=SdB_7R0VRJ5vXgKZeemzsUpWGDrpfjBg@mail.gmail.com>
To: Robert Yang <liezhi.yang@windriver.com>
Cc: poky@yoctoproject.org
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
X-List-Received-Date: Thu, 16 Jan 2014 09:46:51 -0000
Content-Type: multipart/alternative; boundary=089e011607a48a0ae904f0134d0b

--089e011607a48a0ae904f0134d0b
Content-Type: text/plain; charset=ISO-8859-1

Ubuntu 12.04 LTS (kernel: 3.8.0-35)

*Any ideas on what could be causing the issue?*

On Mon, Jan 13, 2014 at 9:29 PM, Robert Yang <liezhi.yang@windriver.com>wrote:

>
> Hi Nick,
>
> What host (the linux distribution) are you working on, please ?
>
> // Robert
>
>
> On 01/12/2014 12:32 PM, Nick D'Ademo wrote:
>
>> Since the recent commit: "autogen-native: upgrade to 5.18.2" (
>> http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/
>> meta/recipes-devtools/autogen?id=0cfb1e7a9f8349def5da787d3a284ac6d18ca55d
>> )
>>
>> Compilation of the autogen-native recipe is broken for me.
>>
>> Anyone have any ideas on this?
>> Many thanks in advance.
>>
>> (Target machine is the Intel NUC).
>>
>> *Error message as follows:*
>>
>> ERROR: Function failed: do_compile (log file is located at
>> /home/nick/poky/build/tmp/work/i686-linux/autogen-
>> native/5.18.2-r0/temp/log.do_compile.16605)
>> ERROR: Logfile of failure stored in:
>> /home/nick/poky/build/tmp/work/i686-linux/autogen-
>> native/5.18.2-r0/temp/log.do_compile.16605
>> Log data follows:
>> | DEBUG: Executing shell function do_compile
>> | NOTE: make -j 8
>> | /bin/sh config/mk-shdefs config/shdefs
>> | config.status: creating shdef-temp
>> | make  all-recursive
>> | make[1]: Entering directory
>> `/home/nick/poky/build/tmp/work/i686-linux/autogen-
>> native/5.18.2-r0/build'
>> | Making all in compat
>> | make[2]: Entering directory
>> `/home/nick/poky/build/tmp/work/i686-linux/autogen-
>> native/5.18.2-r0/build/compat'
>> | :
>> | make[2]: Leaving directory
>> `/home/nick/poky/build/tmp/work/i686-linux/autogen-
>> native/5.18.2-r0/build/compat'
>> | Making all in snprintfv
>> | make[2]: Entering directory
>> `/home/nick/poky/build/tmp/work/i686-linux/autogen-
>> native/5.18.2-r0/build/snprintfv'
>> | for f in filament.c format.c printf.c mem.c stream.c custom.c ; do echo
>> "#include \"$f\"" ; done > snv.c
>> | ../i686-linux-libtool  --tag=CC   --mode=compile gcc  -std=gnu99
>> -DHAVE_CONFIG_H -I.
>> -I/home/nick/poky/build/tmp/work/i686-linux/autogen-
>> native/5.18.2-r0/autogen-5.18.2/snprintfv
>> -I..
>> -I/home/nick/poky/build/tmp/work/i686-linux/autogen-
>> native/5.18.2-r0/autogen-5.18.2
>> -isystem/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include
>> -isystem/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include -O2
>> -pipe
>> -c -o snv.lo snv.c
>> | i686-linux-libtool: compile:  gcc -std=gnu99 -DHAVE_CONFIG_H -I.
>> -I/home/nick/poky/build/tmp/work/i686-linux/autogen-
>> native/5.18.2-r0/autogen-5.18.2/snprintfv
>> -I..
>> -I/home/nick/poky/build/tmp/work/i686-linux/autogen-
>> native/5.18.2-r0/autogen-5.18.2
>> -isystem/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include
>> -isystem/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include -O2
>> -pipe
>> -c snv.c  -fPIC -DPIC -o .libs/snv.o
>> | i686-linux-libtool: compile:  gcc -std=gnu99 -DHAVE_CONFIG_H -I.
>> -I/home/nick/poky/build/tmp/work/i686-linux/autogen-
>> native/5.18.2-r0/autogen-5.18.2/snprintfv
>> -I..
>> -I/home/nick/poky/build/tmp/work/i686-linux/autogen-
>> native/5.18.2-r0/autogen-5.18.2
>> -isystem/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include
>> -isystem/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include -O2
>> -pipe
>> -c snv.c -o snv.o >/dev/null 2>&1
>> | ../i686-linux-libtool  --tag=CC   --mode=link gcc  -std=gnu99
>> -isystem/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include -O2
>> -pipe
>> -no-undefined -L/home/nick/poky/build/tmp/sysroots/i686-linux/usr/lib
>> -L/home/nick/poky/build/tmp/sysroots/i686-linux/lib
>> -Wl,-rpath-link,/home/nick/poky/build/tmp/sysroots/i686-linux/usr/lib
>> -Wl,-rpath-link,/home/nick/poky/build/tmp/sysroots/i686-linux/lib
>> -Wl,-rpath,/home/nick/poky/build/tmp/sysroots/i686-linux/usr/lib
>> -Wl,-rpath,/home/nick/poky/build/tmp/sysroots/i686-linux/lib -Wl,-O1 -o
>> libsnprintfv.la  snv.lo  -lm -ldl
>> | i686-linux-libtool: link: ar cru .libs/libsnprintfv.a .libs/snv.o
>> | i686-linux-libtool: link: ranlib .libs/libsnprintfv.a
>> | i686-linux-libtool: link: ( cd ".libs" && rm -f "libsnprintfv.la" && ln
>> -s "../libsnprintfv.la" "libsnprintfv.la" )
>> | make[2]: Leaving directory
>> `/home/nick/poky/build/tmp/work/i686-linux/autogen-
>> native/5.18.2-r0/build/snprintfv'
>> | Making all in autoopts
>> | make[2]: Entering directory
>> `/home/nick/poky/build/tmp/work/i686-linux/autogen-
>> native/5.18.2-r0/build/autoopts'
>> | rm -f stdnoreturn.h-t stdnoreturn.h && \
>> |     { echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */' && \
>> |       sed -e '/definition of _Noreturn/r
>> /home/nick/poky/build/tmp/work/i686-linux/autogen-
>> native/5.18.2-r0/autogen-5.18.2/config/snippet/_Noreturn.h'
>> \
>> |               <
>> /home/nick/poky/build/tmp/work/i686-linux/autogen-
>> native/5.18.2-r0/autogen-5.18.2/autoopts/stdnoreturn.in.h;
>> \
>> |     } > stdnoreturn.h-t && \
>> |     mv stdnoreturn.h-t stdnoreturn.h
>> | make  all-recursive
>> | make[3]: Entering directory
>> `/home/nick/poky/build/tmp/work/i686-linux/autogen-
>> native/5.18.2-r0/build/autoopts'
>> | Making all in test
>> | make[4]: Entering directory
>> `/home/nick/poky/build/tmp/work/i686-linux/autogen-
>> native/5.18.2-r0/build/autoopts/test'
>> | make[4]: Nothing to be done for `all'.
>> | make[4]: Leaving directory
>> `/home/nick/poky/build/tmp/work/i686-linux/autogen-
>> native/5.18.2-r0/build/autoopts/test'
>> | make[4]: Entering directory
>> `/home/nick/poky/build/tmp/work/i686-linux/autogen-
>> native/5.18.2-r0/build/autoopts'
>> |
>> AGexe="/home/nick/poky/build/tmp/work/i686-linux/autogen-
>> native/5.18.2-r0/build/agen5/autogen"
>> GDexe="/home/nick/poky/build/tmp/work/i686-linux/autogen-
>> native/5.18.2-r0/build/getdefs/getdefs"
>> CLexe="/home/nick/poky/build/tmp/work/i686-linux/autogen-
>> native/5.18.2-r0/build/columns/columns"
>> srcdir="/home/nick/poky/build/tmp/work/i686-linux/autogen-
>> native/5.18.2-r0/autogen-5.18.2/autoopts"
>> top_srcdir="/home/nick/poky/build/tmp/work/i686-linux/
>> autogen-native/5.18.2-r0/autogen-5.18.2"
>> builddir="." top_builddir=".." POSIX_SHELL="/bin/bash" \
>> |         /bin/bash
>> /home/nick/poky/build/tmp/work/i686-linux/autogen-
>> native/5.18.2-r0/autogen-5.18.2/autoopts/mk-tpl-config.sh
>> tpl-config-stamp autoopts/options.h autoopts/usage-txt.h genshell.h
>> option-xat-attribute.h option-value-type.h ao-strs.h ag-char-map.h
>> autoopts.h project.h proto.h parse-duration.c ao-strs.c
>> option-value-type.c
>> option-xat-attribute.c autoopts.c alias.c    boolean.c   check.c
>> configfile.c cook.c enum.c     env.c       file.c      find.c
>> genshell.c load.c     makeshell.c nested.c    numeric.c    pgusage.c
>> putshell.c reset.c     restore.c   save.c       sort.c stack.c
>> streqvcmp.c text_mmap.c time.c       tokenize.c usage.c    version.c
>> init.c
>> | ../i686-linux-libtool  --tag=CC   --mode=compile gcc  -std=gnu99
>> -DHAVE_CONFIG_H -I.
>> -I/home/nick/poky/build/tmp/work/i686-linux/autogen-
>> native/5.18.2-r0/autogen-5.18.2/autoopts
>> -I..  -I..
>> -I/home/nick/poky/build/tmp/work/i686-linux/autogen-
>> native/5.18.2-r0/autogen-5.18.2
>> -I../autoopts
>> -I/home/nick/poky/build/tmp/work/i686-linux/autogen-
>> native/5.18.2-r0/autogen-5.18.2/autoopts
>> -isystem/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include
>> -DPKGDATADIR='"/home/nick/poky/build/tmp/sysroots/i686-
>> linux/usr/share/autogen"'
>> -isystem/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include -O2
>> -pipe
>> -c -o libopts_la-libopts.lo `test -f 'libopts.c' || echo
>> '/home/nick/poky/build/tmp/work/i686-linux/autogen-
>> native/5.18.2-r0/autogen-5.18.2/autoopts/'`libopts.c
>> | i686-linux-libtool: compile:  gcc -std=gnu99 -DHAVE_CONFIG_H -I.
>> -I/home/nick/poky/build/tmp/work/i686-linux/autogen-
>> native/5.18.2-r0/autogen-5.18.2/autoopts
>> -I.. -I..
>> -I/home/nick/poky/build/tmp/work/i686-linux/autogen-
>> native/5.18.2-r0/autogen-5.18.2
>> -I../autoopts
>> -I/home/nick/poky/build/tmp/work/i686-linux/autogen-
>> native/5.18.2-r0/autogen-5.18.2/autoopts
>> -isystem/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include
>> -DPKGDATADIR=\"/home/nick/poky/build/tmp/sysroots/i686-
>> linux/usr/share/autogen\"
>> -isystem/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include -O2
>> -pipe
>> -c libopts.c  -fPIC -DPIC -o .libs/libopts_la-libopts.o
>> | i686-linux-libtool: compile:  gcc -std=gnu99 -DHAVE_CONFIG_H -I.
>> -I/home/nick/poky/build/tmp/work/i686-linux/autogen-
>> native/5.18.2-r0/autogen-5.18.2/autoopts
>> -I.. -I..
>> -I/home/nick/poky/build/tmp/work/i686-linux/autogen-
>> native/5.18.2-r0/autogen-5.18.2
>> -I../autoopts
>> -I/home/nick/poky/build/tmp/work/i686-linux/autogen-
>> native/5.18.2-r0/autogen-5.18.2/autoopts
>> -isystem/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include
>> -DPKGDATADIR=\"/home/nick/poky/build/tmp/sysroots/i686-
>> linux/usr/share/autogen\"
>> -isystem/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include -O2
>> -pipe
>> -c libopts.c -o libopts_la-libopts.o >/dev/null 2>&1
>> | ../i686-linux-libtool  --tag=CC   --mode=link gcc  -std=gnu99
>> -DPKGDATADIR='"/home/nick/poky/build/tmp/sysroots/i686-
>> linux/usr/share/autogen"'
>> -isystem/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include -O2
>> -pipe
>> -version-info 40:1:15
>> -L/home/nick/poky/build/tmp/sysroots/i686-linux/usr/lib
>> -L/home/nick/poky/build/tmp/sysroots/i686-linux/lib
>> -Wl,-rpath-link,/home/nick/poky/build/tmp/sysroots/i686-linux/usr/lib
>> -Wl,-rpath-link,/home/nick/poky/build/tmp/sysroots/i686-linux/lib
>> -Wl,-rpath,/home/nick/poky/build/tmp/sysroots/i686-linux/usr/lib
>> -Wl,-rpath,/home/nick/poky/build/tmp/sysroots/i686-linux/lib -Wl,-O1 -o
>> libopts.la -rpath /home/nick/poky/build/tmp/sysroots/i686-linux/usr/lib
>> libopts_la-libopts.lo ../snprintfv/libsnprintfv.la -lm -ldl
>> | i686-linux-libtool: link: gcc  -shared  -fPIC -DPIC
>> .libs/libopts_la-libopts.o  -Wl,--whole-archive
>> ../snprintfv/.libs/libsnprintfv.a -Wl,--no-whole-archive
>> -L/home/nick/poky/build/tmp/sysroots/i686-linux/usr/lib
>> -L/home/nick/poky/build/tmp/sysroots/i686-linux/lib -lm -ldl  -O2
>> -Wl,-rpath-link -Wl,/home/nick/poky/build/tmp/sysroots/i686-linux/usr/lib
>> -Wl,-rpath-link -Wl,/home/nick/poky/build/tmp/sysroots/i686-linux/lib
>> -Wl,-rpath -Wl,/home/nick/poky/build/tmp/sysroots/i686-linux/usr/lib
>> -Wl,-rpath -Wl,/home/nick/poky/build/tmp/sysroots/i686-linux/lib -Wl,-O1
>> -Wl,-soname -Wl,libopts.so.25 -o .libs/libopts.so.25.15.1
>> | i686-linux-libtool: link: (cd ".libs" && rm -f "libopts.so.25" && ln -s
>> "libopts.so.25.15.1" "libopts.so.25")
>> | i686-linux-libtool: link: (cd ".libs" && rm -f "libopts.so" && ln -s
>> "libopts.so.25.15.1" "libopts.so")
>> | i686-linux-libtool: link: (cd .libs/libopts.lax/libsnprintfv.a && ar x
>> "/home/nick/poky/build/tmp/work/i686-linux/autogen-
>> native/5.18.2-r0/build/autoopts/../snprintfv/.libs/libsnprintfv.a")
>> | i686-linux-libtool: link: ar cru .libs/libopts.a  libopts_la-libopts.o
>> .libs/libopts.lax/libsnprintfv.a/snv.o
>> | i686-linux-libtool: link: ranlib .libs/libopts.a
>> | i686-linux-libtool: link: rm -fr .libs/libopts.lax
>> | i686-linux-libtool: link: ( cd ".libs" && rm -f "libopts.la" && ln -s
>> "../
>> libopts.la" "libopts.la" )
>> | /bin/bash mk-autoopts-pc pkgconfig/autoopts.pc
>> | make[4]: Leaving directory
>> `/home/nick/poky/build/tmp/work/i686-linux/autogen-
>> native/5.18.2-r0/build/autoopts'
>> | make[3]: Leaving directory
>> `/home/nick/poky/build/tmp/work/i686-linux/autogen-
>> native/5.18.2-r0/build/autoopts'
>> | make[2]: Leaving directory
>> `/home/nick/poky/build/tmp/work/i686-linux/autogen-
>> native/5.18.2-r0/build/autoopts'
>> | Making all in agen5
>> | make[2]: Entering directory
>> `/home/nick/poky/build/tmp/work/i686-linux/autogen-
>> native/5.18.2-r0/build/agen5'
>> | Making all in test
>> | make[3]: Entering directory
>> `/home/nick/poky/build/tmp/work/i686-linux/autogen-
>> native/5.18.2-r0/build/agen5/test'
>> | make[3]: Nothing to be done for `all'.
>> | make[3]: Leaving directory
>> `/home/nick/poky/build/tmp/work/i686-linux/autogen-
>> native/5.18.2-r0/build/agen5/test'
>> | make[3]: Entering directory
>> `/home/nick/poky/build/tmp/work/i686-linux/autogen-
>> native/5.18.2-r0/build/agen5'
>> | exec > ag.c ; \
>> |     echo '#undef   PKGDATADIR' ; \
>> |     echo '#define  PKGDATADIR
>> "/home/nick/poky/build/tmp/sysroots/i686-linux/usr/share/autogen"' ; \
>> |     mk=`set -- make ; command -v $1` ; \
>> |     echo 'static char const make_prog[] = "'$mk'";' ; \
>> |     printf '\n#define  DEFINING 1\n' ; \
>> |     printf '#include "%s"\n' autoopts/project.h autogen.h autogen.c
>> defParse-fsm.c defLex.c directive.c funcCase.c funcDef.c funcEval.c
>> funcFor.c funcIf.c functions.c expExtract.c expFormat.c expGperf.c
>> expGuile.c  expMake.c expOutput.c  expPrint.c  expState.c expString.c
>> agShell.c ag-text.c    agCgi.c      agDep.c      agInit.c     agUtils.c
>> cgi-fsm.c    defDirect.c  defFind.c    defLoad.c    fmemopen.c
>> loadPseudo.c
>> opts.c       scribble.c   tpLoad.c     tpParse.c tpProcess.c
>> | gcc  -std=gnu99 -DHAVE_CONFIG_H -I.
>> -I/home/nick/poky/build/tmp/work/i686-linux/autogen-
>> native/5.18.2-r0/autogen-5.18.2/agen5
>> -I..  -I..
>> -I/home/nick/poky/build/tmp/work/i686-linux/autogen-
>> native/5.18.2-r0/autogen-5.18.2
>> -I../autoopts
>> -I/home/nick/poky/build/tmp/work/i686-linux/autogen-
>> native/5.18.2-r0/autogen-5.18.2/autoopts
>> -isystem/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include
>> -pthread
>> -I/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0
>> -I/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include
>> -isystem/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include -O2
>> -pipe
>> -c -o autogen-ag.o `test -f 'ag.c' || echo
>> '/home/nick/poky/build/tmp/work/i686-linux/autogen-
>> native/5.18.2-r0/autogen-5.18.2/agen5/'`ag.c
>> | In file included from
>> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/
>> include/guile/2.0/libguile/array-handle.h:28:0,
>> |                  from
>> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/
>> include/guile/2.0/libguile.h:34,
>> |                  from
>> /home/nick/poky/build/tmp/work/i686-linux/autogen-
>> native/5.18.2-r0/autogen-5.18.2/agen5/autogen.h:60,
>> |                  from ag.c:7:
>> |
>> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/
>> include/guile/2.0/libguile/error.h:40:24:
>> error: expected ')' before '__attribute__'
>> |
>> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/
>> include/guile/2.0/libguile/error.h:40:24:
>> error: expected ',' or ';' before ')' token
>> |
>> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/
>> include/guile/2.0/libguile/error.h:42:27:
>> error: expected ')' before '__attribute__'
>> |
>> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/
>> include/guile/2.0/libguile/error.h:42:27:
>> error: expected ',' or ';' before ')' token
>> |
>> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/
>> include/guile/2.0/libguile/error.h:44:46:
>> error: expected ')' before '__attribute__'
>> |
>> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/
>> include/guile/2.0/libguile/error.h:44:46:
>> error: expected ',' or ';' before ')' token
>> |
>> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/
>> include/guile/2.0/libguile/error.h:46:30:
>> error: expected ')' before '__attribute__'
>> |
>> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/
>> include/guile/2.0/libguile/error.h:46:30:
>> error: expected ',' or ';' before ')' token
>> |
>> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/
>> include/guile/2.0/libguile/error.h:47:50:
>> error: expected ')' before '__attribute__'
>> |
>> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/
>> include/guile/2.0/libguile/error.h:47:50:
>> error: expected ',' or ';' before ')' token
>> |
>> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/
>> include/guile/2.0/libguile/error.h:49:6:
>> error: expected ')' before '__attribute__'
>> |
>> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/
>> include/guile/2.0/libguile/error.h:49:6:
>> error: expected ',' or ';' before ')' token
>> |
>> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/
>> include/guile/2.0/libguile/error.h:51:6:
>> error: expected ')' before '__attribute__'
>> |
>> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/
>> include/guile/2.0/libguile/error.h:51:6:
>> error: expected ',' or ';' before ')' token
>> |
>> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/
>> include/guile/2.0/libguile/error.h:52:44:
>> error: expected ')' before '__attribute__'
>> |
>> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/
>> include/guile/2.0/libguile/error.h:52:44:
>> error: expected ',' or ';' before ')' token
>> |
>> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/
>> include/guile/2.0/libguile/error.h:53:57:
>> error: expected ')' before '__attribute__'
>> |
>> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/
>> include/guile/2.0/libguile/error.h:53:57:
>> error: expected ',' or ';' before ')' token
>> |
>> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/
>> include/guile/2.0/libguile/error.h:55:21:
>> error: expected ')' before '__attribute__'
>> |
>> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/
>> include/guile/2.0/libguile/error.h:55:21:
>> error: expected ',' or ';' before ')' token
>> |
>> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/
>> include/guile/2.0/libguile/error.h:57:28:
>> error: expected ')' before '__attribute__'
>> |
>> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/
>> include/guile/2.0/libguile/error.h:57:28:
>> error: expected ',' or ';' before ')' token
>> |
>> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/
>> include/guile/2.0/libguile/error.h:59:41:
>> error: expected ')' before '__attribute__'
>> |
>> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/
>> include/guile/2.0/libguile/error.h:59:41:
>> error: expected ',' or ';' before ')' token
>> |
>> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/
>> include/guile/2.0/libguile/error.h:60:50:
>> error: expected ')' before '__attribute__'
>> |
>> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/
>> include/guile/2.0/libguile/error.h:60:50:
>> error: expected ',' or ';' before ')' token
>> |
>> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/
>> include/guile/2.0/libguile/error.h:62:19:
>> error: expected ')' before '__attribute__'
>> |
>> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/
>> include/guile/2.0/libguile/error.h:62:19:
>> error: expected ',' or ';' before ')' token
>> | In file included from
>> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/
>> include/guile/2.0/libguile/root.h:28:0,
>> |                  from
>> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/
>> include/guile/2.0/libguile/async.h:27,
>> |                  from
>> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/
>> include/guile/2.0/libguile.h:37,
>> |                  from
>> /home/nick/poky/build/tmp/work/i686-linux/autogen-
>> native/5.18.2-r0/autogen-5.18.2/agen5/autogen.h:60,
>> |                  from ag.c:7:
>> |
>> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/
>> include/guile/2.0/libguile/throw.h:82:1:
>> warning: '__noreturn__' attribute ignored [-Wattributes]
>> | In file included from
>> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/
>> include/guile/2.0/libguile.h:89:0,
>> |                  from
>> /home/nick/poky/build/tmp/work/i686-linux/autogen-
>> native/5.18.2-r0/autogen-5.18.2/agen5/autogen.h:60,
>> |                  from ag.c:7:
>> |
>> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/
>> include/guile/2.0/libguile/read.h:63:3:
>> error: expected ')' before '__attribute__'
>> |
>> /home/nick/poky/build/tmp/sysroots/i686-linux/usr/
>> include/guile/2.0/libguile/read.h:63:3:
>> error: expected ',' or ';' before ')' token
>> | make[3]: *** [autogen-ag.o] Error 1
>> | make[3]: Leaving directory
>> `/home/nick/poky/build/tmp/work/i686-linux/autogen-
>> native/5.18.2-r0/build/agen5'
>> | make[2]: *** [all-recursive] Error 1
>> | make[2]: Leaving directory
>> `/home/nick/poky/build/tmp/work/i686-linux/autogen-
>> native/5.18.2-r0/build/agen5'
>> | make[1]: *** [all-recursive] Error 1
>> | make[1]: Leaving directory
>> `/home/nick/poky/build/tmp/work/i686-linux/autogen-
>> native/5.18.2-r0/build'
>> | make: *** [all] Error 2
>> | ERROR: oe_runmake failed
>> | WARNING:
>> /home/nick/poky/build/tmp/work/i686-linux/autogen-
>> native/5.18.2-r0/temp/run.do_compile.16605:1
>> exit 1 from
>> |   exit 1
>> | ERROR: Function failed: do_compile (log file is located at
>> /home/nick/poky/build/tmp/work/i686-linux/autogen-
>> native/5.18.2-r0/temp/log.do_compile.16605)
>> ERROR: Task 6 (/home/nick/poky/meta/recipes-devtools/autogen/
>> autogen-native_5.18.2.bb, do_compile) failed with exit code '1'
>> NOTE: Tasks Summary: Attempted 6 tasks of which 1 didn't need to be rerun
>> and 1 failed.
>> No currently running tasks (6 of 9)
>>
>> Summary: 1 task failed:
>>    /home/nick/poky/meta/recipes-devtools/autogen/autogen-native_5.18.2.bb
>> ,
>> do_compile
>> Summary: There was 1 WARNING message shown.
>> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
>>
>>

--089e011607a48a0ae904f0134d0b
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Ubuntu 12.04 LTS (kernel: 3.8.0-35)<br><div class=3D"gmail=
_extra"><br></div><div class=3D"gmail_extra"><font face=3D"arial, helvetica=
, sans-serif"><b>Any ideas on what could be causing the issue?</b></font><b=
r></div>

<div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Mon, Jan 13, 2=
014 at 9:29 PM, Robert Yang <span dir=3D"ltr">&lt;<a href=3D"mailto:liezhi.=
yang@windriver.com" target=3D"_blank">liezhi.yang@windriver.com</a>&gt;</sp=
an> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><br>
Hi Nick,<br>
<br>
What host (the linux distribution) are you working on, please ?<span class=
=3D"HOEnZb"><font color=3D"#888888"><br>
<br>
// Robert</font></span><div class=3D"im"><br>
<br>
On 01/12/2014 12:32 PM, Nick D&#39;Ademo wrote:<br>
</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-l=
eft:1px #ccc solid;padding-left:1ex"><div class=3D"im">
Since the recent commit: &quot;autogen-native: upgrade to 5.18.2&quot; (<br=
>
<a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/meta/recip=
es-devtools/autogen?id=3D0cfb1e7a9f8349def5da787d3a284ac6d18ca55d" target=
=3D"_blank">http://git.yoctoproject.org/<u></u>cgit/cgit.cgi/poky/commit/<u=
></u>meta/recipes-devtools/autogen?<u></u>id=3D<u></u>0cfb1e7a9f8349def5da7=
87d3a284a<u></u>c6d18ca55d</a><br>


)<br>
<br>
Compilation of the autogen-native recipe is broken for me.<br>
<br>
Anyone have any ideas on this?<br>
Many thanks in advance.<br>
<br>
(Target machine is the Intel NUC).<br>
<br></div><div class=3D"im">
*Error message as follows:*<br>
<br></div><div><div class=3D"h5">
ERROR: Function failed: do_compile (log file is located at<br>
/home/nick/poky/build/tmp/<u></u>work/i686-linux/autogen-<u></u>native/5.18=
.2-r0/temp/log.do_<u></u>compile.16605)<br>
ERROR: Logfile of failure stored in:<br>
/home/nick/poky/build/tmp/<u></u>work/i686-linux/autogen-<u></u>native/5.18=
.2-r0/temp/log.do_<u></u>compile.16605<br>
Log data follows:<br>
| DEBUG: Executing shell function do_compile<br>
| NOTE: make -j 8<br>
| /bin/sh config/mk-shdefs config/shdefs<br>
| config.status: creating shdef-temp<br>
| make =A0all-recursive<br>
| make[1]: Entering directory<br>
`/home/nick/poky/build/tmp/<u></u>work/i686-linux/autogen-<u></u>native/5.1=
8.2-r0/build&#39;<br>
| Making all in compat<br>
| make[2]: Entering directory<br>
`/home/nick/poky/build/tmp/<u></u>work/i686-linux/autogen-<u></u>native/5.1=
8.2-r0/build/compat&#39;<br>
| :<br>
| make[2]: Leaving directory<br>
`/home/nick/poky/build/tmp/<u></u>work/i686-linux/autogen-<u></u>native/5.1=
8.2-r0/build/compat&#39;<br>
| Making all in snprintfv<br>
| make[2]: Entering directory<br>
`/home/nick/poky/build/tmp/<u></u>work/i686-linux/autogen-<u></u>native/5.1=
8.2-r0/build/<u></u>snprintfv&#39;<br>
| for f in filament.c format.c printf.c mem.c stream.c custom.c ; do echo<b=
r>
&quot;#include \&quot;$f\&quot;&quot; ; done &gt; snv.c<br>
| ../i686-linux-libtool =A0--tag=3DCC =A0 --mode=3Dcompile gcc =A0-std=3Dgn=
u99<br>
-DHAVE_CONFIG_H -I.<br>
-I/home/nick/poky/build/tmp/<u></u>work/i686-linux/autogen-<u></u>native/5.=
18.2-r0/autogen-5.18.<u></u>2/snprintfv<br>
-I..<br>
-I/home/nick/poky/build/tmp/<u></u>work/i686-linux/autogen-<u></u>native/5.=
18.2-r0/autogen-5.18.<u></u>2<br>
-isystem/home/nick/poky/build/<u></u>tmp/sysroots/i686-linux/usr/<u></u>inc=
lude<br>
-isystem/home/nick/poky/build/<u></u>tmp/sysroots/i686-linux/usr/<u></u>inc=
lude -O2 -pipe<br>
-c -o snv.lo snv.c<br>
| i686-linux-libtool: compile: =A0gcc -std=3Dgnu99 -DHAVE_CONFIG_H -I.<br>
-I/home/nick/poky/build/tmp/<u></u>work/i686-linux/autogen-<u></u>native/5.=
18.2-r0/autogen-5.18.<u></u>2/snprintfv<br>
-I..<br>
-I/home/nick/poky/build/tmp/<u></u>work/i686-linux/autogen-<u></u>native/5.=
18.2-r0/autogen-5.18.<u></u>2<br>
-isystem/home/nick/poky/build/<u></u>tmp/sysroots/i686-linux/usr/<u></u>inc=
lude<br>
-isystem/home/nick/poky/build/<u></u>tmp/sysroots/i686-linux/usr/<u></u>inc=
lude -O2 -pipe<br>
-c snv.c =A0-fPIC -DPIC -o .libs/snv.o<br>
| i686-linux-libtool: compile: =A0gcc -std=3Dgnu99 -DHAVE_CONFIG_H -I.<br>
-I/home/nick/poky/build/tmp/<u></u>work/i686-linux/autogen-<u></u>native/5.=
18.2-r0/autogen-5.18.<u></u>2/snprintfv<br>
-I..<br>
-I/home/nick/poky/build/tmp/<u></u>work/i686-linux/autogen-<u></u>native/5.=
18.2-r0/autogen-5.18.<u></u>2<br>
-isystem/home/nick/poky/build/<u></u>tmp/sysroots/i686-linux/usr/<u></u>inc=
lude<br>
-isystem/home/nick/poky/build/<u></u>tmp/sysroots/i686-linux/usr/<u></u>inc=
lude -O2 -pipe<br>
-c snv.c -o snv.o &gt;/dev/null 2&gt;&amp;1<br>
| ../i686-linux-libtool =A0--tag=3DCC =A0 --mode=3Dlink gcc =A0-std=3Dgnu99=
<br>
-isystem/home/nick/poky/build/<u></u>tmp/sysroots/i686-linux/usr/<u></u>inc=
lude -O2 -pipe<br>
-no-undefined -L/home/nick/poky/build/tmp/<u></u>sysroots/i686-linux/usr/li=
b<br>
-L/home/nick/poky/build/tmp/<u></u>sysroots/i686-linux/lib<br>
-Wl,-rpath-link,/home/nick/<u></u>poky/build/tmp/sysroots/i686-<u></u>linux=
/usr/lib<br>
-Wl,-rpath-link,/home/nick/<u></u>poky/build/tmp/sysroots/i686-<u></u>linux=
/lib<br>
-Wl,-rpath,/home/nick/poky/<u></u>build/tmp/sysroots/i686-linux/<u></u>usr/=
lib<br>
-Wl,-rpath,/home/nick/poky/<u></u>build/tmp/sysroots/i686-linux/<u></u>lib =
-Wl,-O1 -o<br>
<a href=3D"http://libsnprintfv.la" target=3D"_blank">libsnprintfv.la</a> =
=A0snv.lo =A0-lm -ldl<br>
| i686-linux-libtool: link: ar cru .libs/libsnprintfv.a .libs/snv.o<br>
| i686-linux-libtool: link: ranlib .libs/libsnprintfv.a<br>
| i686-linux-libtool: link: ( cd &quot;.libs&quot; &amp;&amp; rm -f &quot;<=
a href=3D"http://libsnprintfv.la" target=3D"_blank">libsnprintfv.la</a>&quo=
t; &amp;&amp; ln<br>
-s &quot;../<a href=3D"http://libsnprintfv.la" target=3D"_blank">libsnprint=
fv.la</a>&quot; &quot;<a href=3D"http://libsnprintfv.la" target=3D"_blank">=
libsnprintfv.la</a>&quot; )<br>
| make[2]: Leaving directory<br>
`/home/nick/poky/build/tmp/<u></u>work/i686-linux/autogen-<u></u>native/5.1=
8.2-r0/build/<u></u>snprintfv&#39;<br>
| Making all in autoopts<br>
| make[2]: Entering directory<br>
`/home/nick/poky/build/tmp/<u></u>work/i686-linux/autogen-<u></u>native/5.1=
8.2-r0/build/<u></u>autoopts&#39;<br>
| rm -f stdnoreturn.h-t stdnoreturn.h &amp;&amp; \<br>
| =A0 =A0 { echo &#39;/* DO NOT EDIT! GENERATED AUTOMATICALLY! */&#39; &amp=
;&amp; \<br>
| =A0 =A0 =A0 sed -e &#39;/definition of _Noreturn/r<br>
/home/nick/poky/build/tmp/<u></u>work/i686-linux/autogen-<u></u>native/5.18=
.2-r0/autogen-5.18.<u></u>2/config/snippet/_Noreturn.h&#39;<br>
\<br>
| =A0 =A0 =A0 =A0 =A0 =A0 =A0 &lt;<br>
/home/nick/poky/build/tmp/<u></u>work/i686-linux/autogen-<u></u>native/5.18=
.2-r0/autogen-5.18.<u></u>2/autoopts/stdnoreturn.in.h;<br>
\<br>
| =A0 =A0 } &gt; stdnoreturn.h-t &amp;&amp; \<br>
| =A0 =A0 mv stdnoreturn.h-t stdnoreturn.h<br>
| make =A0all-recursive<br>
| make[3]: Entering directory<br>
`/home/nick/poky/build/tmp/<u></u>work/i686-linux/autogen-<u></u>native/5.1=
8.2-r0/build/<u></u>autoopts&#39;<br>
| Making all in test<br>
| make[4]: Entering directory<br>
`/home/nick/poky/build/tmp/<u></u>work/i686-linux/autogen-<u></u>native/5.1=
8.2-r0/build/<u></u>autoopts/test&#39;<br>
| make[4]: Nothing to be done for `all&#39;.<br>
| make[4]: Leaving directory<br>
`/home/nick/poky/build/tmp/<u></u>work/i686-linux/autogen-<u></u>native/5.1=
8.2-r0/build/<u></u>autoopts/test&#39;<br>
| make[4]: Entering directory<br>
`/home/nick/poky/build/tmp/<u></u>work/i686-linux/autogen-<u></u>native/5.1=
8.2-r0/build/<u></u>autoopts&#39;<br>
|<br>
AGexe=3D&quot;/home/nick/poky/build/<u></u>tmp/work/i686-linux/autogen-<u><=
/u>native/5.18.2-r0/build/agen5/<u></u>autogen&quot;<br>
GDexe=3D&quot;/home/nick/poky/build/<u></u>tmp/work/i686-linux/autogen-<u><=
/u>native/5.18.2-r0/build/<u></u>getdefs/getdefs&quot;<br>
CLexe=3D&quot;/home/nick/poky/build/<u></u>tmp/work/i686-linux/autogen-<u><=
/u>native/5.18.2-r0/build/<u></u>columns/columns&quot;<br>
srcdir=3D&quot;/home/nick/poky/build/<u></u>tmp/work/i686-linux/autogen-<u>=
</u>native/5.18.2-r0/autogen-5.18.<u></u>2/autoopts&quot;<br>
top_srcdir=3D&quot;/home/nick/poky/<u></u>build/tmp/work/i686-linux/<u></u>=
autogen-native/5.18.2-r0/<u></u>autogen-5.18.2&quot;<br>
builddir=3D&quot;.&quot; top_builddir=3D&quot;..&quot; POSIX_SHELL=3D&quot;=
/bin/bash&quot; \<br>
| =A0 =A0 =A0 =A0 /bin/bash<br>
/home/nick/poky/build/tmp/<u></u>work/i686-linux/autogen-<u></u>native/5.18=
.2-r0/autogen-5.18.<u></u>2/autoopts/mk-tpl-config.sh<br>
tpl-config-stamp autoopts/options.h autoopts/usage-txt.h genshell.h<br>
option-xat-attribute.h option-value-type.h ao-strs.h ag-char-map.h<br>
autoopts.h project.h proto.h parse-duration.c ao-strs.c option-value-type.c=
<br>
option-xat-attribute.c autoopts.c alias.c =A0 =A0boolean.c =A0 check.c<br>
configfile.c cook.c enum.c =A0 =A0 env.c =A0 =A0 =A0 file.c =A0 =A0 =A0find=
.c<br>
genshell.c load.c =A0 =A0 makeshell.c nested.c =A0 =A0numeric.c =A0 =A0pgus=
age.c<br>
putshell.c reset.c =A0 =A0 restore.c =A0 save.c =A0 =A0 =A0 sort.c stack.c<=
br>
streqvcmp.c text_mmap.c time.c =A0 =A0 =A0 tokenize.c usage.c =A0 =A0versio=
n.c<br>
init.c<br>
| ../i686-linux-libtool =A0--tag=3DCC =A0 --mode=3Dcompile gcc =A0-std=3Dgn=
u99<br>
-DHAVE_CONFIG_H -I.<br>
-I/home/nick/poky/build/tmp/<u></u>work/i686-linux/autogen-<u></u>native/5.=
18.2-r0/autogen-5.18.<u></u>2/autoopts<br>
-I.. =A0-I..<br>
-I/home/nick/poky/build/tmp/<u></u>work/i686-linux/autogen-<u></u>native/5.=
18.2-r0/autogen-5.18.<u></u>2<br>
-I../autoopts<br>
-I/home/nick/poky/build/tmp/<u></u>work/i686-linux/autogen-<u></u>native/5.=
18.2-r0/autogen-5.18.<u></u>2/autoopts<br>
-isystem/home/nick/poky/build/<u></u>tmp/sysroots/i686-linux/usr/<u></u>inc=
lude<br>
-DPKGDATADIR=3D&#39;&quot;/home/nick/<u></u>poky/build/tmp/sysroots/i686-<u=
></u>linux/usr/share/autogen&quot;&#39;<br>
-isystem/home/nick/poky/build/<u></u>tmp/sysroots/i686-linux/usr/<u></u>inc=
lude -O2 -pipe<br>
-c -o libopts_la-libopts.lo `test -f &#39;libopts.c&#39; || echo<br>
&#39;/home/nick/poky/build/tmp/<u></u>work/i686-linux/autogen-<u></u>native=
/5.18.2-r0/autogen-5.18.<u></u>2/autoopts/&#39;`libopts.c<br>
| i686-linux-libtool: compile: =A0gcc -std=3Dgnu99 -DHAVE_CONFIG_H -I.<br>
-I/home/nick/poky/build/tmp/<u></u>work/i686-linux/autogen-<u></u>native/5.=
18.2-r0/autogen-5.18.<u></u>2/autoopts<br>
-I.. -I..<br>
-I/home/nick/poky/build/tmp/<u></u>work/i686-linux/autogen-<u></u>native/5.=
18.2-r0/autogen-5.18.<u></u>2<br>
-I../autoopts<br>
-I/home/nick/poky/build/tmp/<u></u>work/i686-linux/autogen-<u></u>native/5.=
18.2-r0/autogen-5.18.<u></u>2/autoopts<br>
-isystem/home/nick/poky/build/<u></u>tmp/sysroots/i686-linux/usr/<u></u>inc=
lude<br>
-DPKGDATADIR=3D\&quot;/home/nick/<u></u>poky/build/tmp/sysroots/i686-<u></u=
>linux/usr/share/autogen\&quot;<br>
-isystem/home/nick/poky/build/<u></u>tmp/sysroots/i686-linux/usr/<u></u>inc=
lude -O2 -pipe<br>
-c libopts.c =A0-fPIC -DPIC -o .libs/libopts_la-libopts.o<br>
| i686-linux-libtool: compile: =A0gcc -std=3Dgnu99 -DHAVE_CONFIG_H -I.<br>
-I/home/nick/poky/build/tmp/<u></u>work/i686-linux/autogen-<u></u>native/5.=
18.2-r0/autogen-5.18.<u></u>2/autoopts<br>
-I.. -I..<br>
-I/home/nick/poky/build/tmp/<u></u>work/i686-linux/autogen-<u></u>native/5.=
18.2-r0/autogen-5.18.<u></u>2<br>
-I../autoopts<br>
-I/home/nick/poky/build/tmp/<u></u>work/i686-linux/autogen-<u></u>native/5.=
18.2-r0/autogen-5.18.<u></u>2/autoopts<br>
-isystem/home/nick/poky/build/<u></u>tmp/sysroots/i686-linux/usr/<u></u>inc=
lude<br>
-DPKGDATADIR=3D\&quot;/home/nick/<u></u>poky/build/tmp/sysroots/i686-<u></u=
>linux/usr/share/autogen\&quot;<br>
-isystem/home/nick/poky/build/<u></u>tmp/sysroots/i686-linux/usr/<u></u>inc=
lude -O2 -pipe<br>
-c libopts.c -o libopts_la-libopts.o &gt;/dev/null 2&gt;&amp;1<br>
| ../i686-linux-libtool =A0--tag=3DCC =A0 --mode=3Dlink gcc =A0-std=3Dgnu99=
<br>
-DPKGDATADIR=3D&#39;&quot;/home/nick/<u></u>poky/build/tmp/sysroots/i686-<u=
></u>linux/usr/share/autogen&quot;&#39;<br>
-isystem/home/nick/poky/build/<u></u>tmp/sysroots/i686-linux/usr/<u></u>inc=
lude -O2 -pipe<br>
-version-info 40:1:15<br>
-L/home/nick/poky/build/tmp/<u></u>sysroots/i686-linux/usr/lib<br>
-L/home/nick/poky/build/tmp/<u></u>sysroots/i686-linux/lib<br>
-Wl,-rpath-link,/home/nick/<u></u>poky/build/tmp/sysroots/i686-<u></u>linux=
/usr/lib<br>
-Wl,-rpath-link,/home/nick/<u></u>poky/build/tmp/sysroots/i686-<u></u>linux=
/lib<br>
-Wl,-rpath,/home/nick/poky/<u></u>build/tmp/sysroots/i686-linux/<u></u>usr/=
lib<br>
-Wl,-rpath,/home/nick/poky/<u></u>build/tmp/sysroots/i686-linux/<u></u>lib =
-Wl,-O1 -o<br>
<a href=3D"http://libopts.la" target=3D"_blank">libopts.la</a> -rpath /home=
/nick/poky/build/tmp/<u></u>sysroots/i686-linux/usr/lib<br>
libopts_la-libopts.lo ../snprintfv/<a href=3D"http://libsnprintfv.la" targe=
t=3D"_blank">libsnprintfv.la</a> -lm -ldl<br>
| i686-linux-libtool: link: gcc =A0-shared =A0-fPIC -DPIC<br>
.libs/libopts_la-libopts.o =A0-Wl,--whole-archive<br>
../snprintfv/.libs/<u></u>libsnprintfv.a -Wl,--no-whole-archive<br>
-L/home/nick/poky/build/tmp/<u></u>sysroots/i686-linux/usr/lib<br>
-L/home/nick/poky/build/tmp/<u></u>sysroots/i686-linux/lib -lm -ldl =A0-O2<=
br>
-Wl,-rpath-link -Wl,/home/nick/poky/build/tmp/<u></u>sysroots/i686-linux/us=
r/lib<br>
-Wl,-rpath-link -Wl,/home/nick/poky/build/tmp/<u></u>sysroots/i686-linux/li=
b<br>
-Wl,-rpath -Wl,/home/nick/poky/build/tmp/<u></u>sysroots/i686-linux/usr/lib=
<br>
-Wl,-rpath -Wl,/home/nick/poky/build/tmp/<u></u>sysroots/i686-linux/lib -Wl=
,-O1<br>
-Wl,-soname -Wl,libopts.so.25 -o .libs/libopts.so.25.15.1<br>
| i686-linux-libtool: link: (cd &quot;.libs&quot; &amp;&amp; rm -f &quot;li=
bopts.so.25&quot; &amp;&amp; ln -s<br>
&quot;libopts.so.25.15.1&quot; &quot;libopts.so.25&quot;)<br>
| i686-linux-libtool: link: (cd &quot;.libs&quot; &amp;&amp; rm -f &quot;li=
bopts.so&quot; &amp;&amp; ln -s<br>
&quot;libopts.so.25.15.1&quot; &quot;libopts.so&quot;)<br>
| i686-linux-libtool: link: (cd .libs/libopts.lax/<u></u>libsnprintfv.a &am=
p;&amp; ar x<br>
&quot;/home/nick/poky/build/tmp/<u></u>work/i686-linux/autogen-<u></u>nativ=
e/5.18.2-r0/build/<u></u>autoopts/../snprintfv/.libs/<u></u>libsnprintfv.a&=
quot;)<br>
| i686-linux-libtool: link: ar cru .libs/libopts.a =A0libopts_la-libopts.o<=
br>
.libs/libopts.lax/<u></u>libsnprintfv.a/snv.o<br>
| i686-linux-libtool: link: ranlib .libs/libopts.a<br>
| i686-linux-libtool: link: rm -fr .libs/libopts.lax<br>
| i686-linux-libtool: link: ( cd &quot;.libs&quot; &amp;&amp; rm -f &quot;<=
a href=3D"http://libopts.la" target=3D"_blank">libopts.la</a>&quot; &amp;&a=
mp; ln -s &quot;../<br>
<a href=3D"http://libopts.la" target=3D"_blank">libopts.la</a>&quot; &quot;=
<a href=3D"http://libopts.la" target=3D"_blank">libopts.la</a>&quot; )<br>
| /bin/bash mk-autoopts-pc pkgconfig/autoopts.pc<br>
| make[4]: Leaving directory<br>
`/home/nick/poky/build/tmp/<u></u>work/i686-linux/autogen-<u></u>native/5.1=
8.2-r0/build/<u></u>autoopts&#39;<br>
| make[3]: Leaving directory<br>
`/home/nick/poky/build/tmp/<u></u>work/i686-linux/autogen-<u></u>native/5.1=
8.2-r0/build/<u></u>autoopts&#39;<br>
| make[2]: Leaving directory<br>
`/home/nick/poky/build/tmp/<u></u>work/i686-linux/autogen-<u></u>native/5.1=
8.2-r0/build/<u></u>autoopts&#39;<br>
| Making all in agen5<br>
| make[2]: Entering directory<br>
`/home/nick/poky/build/tmp/<u></u>work/i686-linux/autogen-<u></u>native/5.1=
8.2-r0/build/agen5&#39;<br>
| Making all in test<br>
| make[3]: Entering directory<br>
`/home/nick/poky/build/tmp/<u></u>work/i686-linux/autogen-<u></u>native/5.1=
8.2-r0/build/agen5/<u></u>test&#39;<br>
| make[3]: Nothing to be done for `all&#39;.<br>
| make[3]: Leaving directory<br>
`/home/nick/poky/build/tmp/<u></u>work/i686-linux/autogen-<u></u>native/5.1=
8.2-r0/build/agen5/<u></u>test&#39;<br>
| make[3]: Entering directory<br>
`/home/nick/poky/build/tmp/<u></u>work/i686-linux/autogen-<u></u>native/5.1=
8.2-r0/build/agen5&#39;<br>
| exec &gt; ag.c ; \<br>
| =A0 =A0 echo &#39;#undef =A0 PKGDATADIR&#39; ; \<br>
| =A0 =A0 echo &#39;#define =A0PKGDATADIR<br>
&quot;/home/nick/poky/build/tmp/<u></u>sysroots/i686-linux/usr/share/<u></u=
>autogen&quot;&#39; ; \<br>
| =A0 =A0 mk=3D`set -- make ; command -v $1` ; \<br>
| =A0 =A0 echo &#39;static char const make_prog[] =3D &quot;&#39;$mk&#39;&q=
uot;;&#39; ; \<br>
| =A0 =A0 printf &#39;\n#define =A0DEFINING 1\n&#39; ; \<br>
| =A0 =A0 printf &#39;#include &quot;%s&quot;\n&#39; autoopts/project.h aut=
ogen.h autogen.c<br>
defParse-fsm.c defLex.c directive.c funcCase.c funcDef.c funcEval.c<br>
funcFor.c funcIf.c functions.c expExtract.c expFormat.c expGperf.c<br>
expGuile.c =A0expMake.c expOutput.c =A0expPrint.c =A0expState.c expString.c=
<br>
agShell.c ag-text.c =A0 =A0agCgi.c =A0 =A0 =A0agDep.c =A0 =A0 =A0agInit.c =
=A0 =A0 agUtils.c<br>
cgi-fsm.c =A0 =A0defDirect.c =A0defFind.c =A0 =A0defLoad.c =A0 =A0fmemopen.=
c loadPseudo.c<br>
opts.c =A0 =A0 =A0 scribble.c =A0 tpLoad.c =A0 =A0 tpParse.c tpProcess.c<br=
>
| gcc =A0-std=3Dgnu99 -DHAVE_CONFIG_H -I.<br>
-I/home/nick/poky/build/tmp/<u></u>work/i686-linux/autogen-<u></u>native/5.=
18.2-r0/autogen-5.18.<u></u>2/agen5<br>
-I.. =A0-I..<br>
-I/home/nick/poky/build/tmp/<u></u>work/i686-linux/autogen-<u></u>native/5.=
18.2-r0/autogen-5.18.<u></u>2<br>
-I../autoopts<br>
-I/home/nick/poky/build/tmp/<u></u>work/i686-linux/autogen-<u></u>native/5.=
18.2-r0/autogen-5.18.<u></u>2/autoopts<br>
-isystem/home/nick/poky/build/<u></u>tmp/sysroots/i686-linux/usr/<u></u>inc=
lude -pthread<br>
-I/home/nick/poky/build/tmp/<u></u>sysroots/i686-linux/usr/<u></u>include/g=
uile/2.0<br>
-I/home/nick/poky/build/tmp/<u></u>sysroots/i686-linux/usr/<u></u>include<b=
r>
-isystem/home/nick/poky/build/<u></u>tmp/sysroots/i686-linux/usr/<u></u>inc=
lude -O2 -pipe<br>
-c -o autogen-ag.o `test -f &#39;ag.c&#39; || echo<br>
&#39;/home/nick/poky/build/tmp/<u></u>work/i686-linux/autogen-<u></u>native=
/5.18.2-r0/autogen-5.18.<u></u>2/agen5/&#39;`ag.c<br>
| In file included from<br>
/home/nick/poky/build/tmp/<u></u>sysroots/i686-linux/usr/<u></u>include/gui=
le/2.0/libguile/<u></u>array-handle.h:28:0,<br>
| =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0from<br>
/home/nick/poky/build/tmp/<u></u>sysroots/i686-linux/usr/<u></u>include/gui=
le/2.0/libguile.h:<u></u>34,<br>
| =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0from<br>
/home/nick/poky/build/tmp/<u></u>work/i686-linux/autogen-<u></u>native/5.18=
.2-r0/autogen-5.18.<u></u>2/agen5/autogen.h:60,<br>
| =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0from ag.c:7:<br>
|<br>
/home/nick/poky/build/tmp/<u></u>sysroots/i686-linux/usr/<u></u>include/gui=
le/2.0/libguile/<u></u>error.h:40:24:<br>
error: expected &#39;)&#39; before &#39;__attribute__&#39;<br>
|<br>
/home/nick/poky/build/tmp/<u></u>sysroots/i686-linux/usr/<u></u>include/gui=
le/2.0/libguile/<u></u>error.h:40:24:<br>
error: expected &#39;,&#39; or &#39;;&#39; before &#39;)&#39; token<br>
|<br>
/home/nick/poky/build/tmp/<u></u>sysroots/i686-linux/usr/<u></u>include/gui=
le/2.0/libguile/<u></u>error.h:42:27:<br>
error: expected &#39;)&#39; before &#39;__attribute__&#39;<br>
|<br>
/home/nick/poky/build/tmp/<u></u>sysroots/i686-linux/usr/<u></u>include/gui=
le/2.0/libguile/<u></u>error.h:42:27:<br>
error: expected &#39;,&#39; or &#39;;&#39; before &#39;)&#39; token<br>
|<br>
/home/nick/poky/build/tmp/<u></u>sysroots/i686-linux/usr/<u></u>include/gui=
le/2.0/libguile/<u></u>error.h:44:46:<br>
error: expected &#39;)&#39; before &#39;__attribute__&#39;<br>
|<br>
/home/nick/poky/build/tmp/<u></u>sysroots/i686-linux/usr/<u></u>include/gui=
le/2.0/libguile/<u></u>error.h:44:46:<br>
error: expected &#39;,&#39; or &#39;;&#39; before &#39;)&#39; token<br>
|<br>
/home/nick/poky/build/tmp/<u></u>sysroots/i686-linux/usr/<u></u>include/gui=
le/2.0/libguile/<u></u>error.h:46:30:<br>
error: expected &#39;)&#39; before &#39;__attribute__&#39;<br>
|<br>
/home/nick/poky/build/tmp/<u></u>sysroots/i686-linux/usr/<u></u>include/gui=
le/2.0/libguile/<u></u>error.h:46:30:<br>
error: expected &#39;,&#39; or &#39;;&#39; before &#39;)&#39; token<br>
|<br>
/home/nick/poky/build/tmp/<u></u>sysroots/i686-linux/usr/<u></u>include/gui=
le/2.0/libguile/<u></u>error.h:47:50:<br>
error: expected &#39;)&#39; before &#39;__attribute__&#39;<br>
|<br>
/home/nick/poky/build/tmp/<u></u>sysroots/i686-linux/usr/<u></u>include/gui=
le/2.0/libguile/<u></u>error.h:47:50:<br>
error: expected &#39;,&#39; or &#39;;&#39; before &#39;)&#39; token<br>
|<br>
/home/nick/poky/build/tmp/<u></u>sysroots/i686-linux/usr/<u></u>include/gui=
le/2.0/libguile/<u></u>error.h:49:6:<br>
error: expected &#39;)&#39; before &#39;__attribute__&#39;<br>
|<br>
/home/nick/poky/build/tmp/<u></u>sysroots/i686-linux/usr/<u></u>include/gui=
le/2.0/libguile/<u></u>error.h:49:6:<br>
error: expected &#39;,&#39; or &#39;;&#39; before &#39;)&#39; token<br>
|<br>
/home/nick/poky/build/tmp/<u></u>sysroots/i686-linux/usr/<u></u>include/gui=
le/2.0/libguile/<u></u>error.h:51:6:<br>
error: expected &#39;)&#39; before &#39;__attribute__&#39;<br>
|<br>
/home/nick/poky/build/tmp/<u></u>sysroots/i686-linux/usr/<u></u>include/gui=
le/2.0/libguile/<u></u>error.h:51:6:<br>
error: expected &#39;,&#39; or &#39;;&#39; before &#39;)&#39; token<br>
|<br>
/home/nick/poky/build/tmp/<u></u>sysroots/i686-linux/usr/<u></u>include/gui=
le/2.0/libguile/<u></u>error.h:52:44:<br>
error: expected &#39;)&#39; before &#39;__attribute__&#39;<br>
|<br>
/home/nick/poky/build/tmp/<u></u>sysroots/i686-linux/usr/<u></u>include/gui=
le/2.0/libguile/<u></u>error.h:52:44:<br>
error: expected &#39;,&#39; or &#39;;&#39; before &#39;)&#39; token<br>
|<br>
/home/nick/poky/build/tmp/<u></u>sysroots/i686-linux/usr/<u></u>include/gui=
le/2.0/libguile/<u></u>error.h:53:57:<br>
error: expected &#39;)&#39; before &#39;__attribute__&#39;<br>
|<br>
/home/nick/poky/build/tmp/<u></u>sysroots/i686-linux/usr/<u></u>include/gui=
le/2.0/libguile/<u></u>error.h:53:57:<br>
error: expected &#39;,&#39; or &#39;;&#39; before &#39;)&#39; token<br>
|<br>
/home/nick/poky/build/tmp/<u></u>sysroots/i686-linux/usr/<u></u>include/gui=
le/2.0/libguile/<u></u>error.h:55:21:<br>
error: expected &#39;)&#39; before &#39;__attribute__&#39;<br>
|<br>
/home/nick/poky/build/tmp/<u></u>sysroots/i686-linux/usr/<u></u>include/gui=
le/2.0/libguile/<u></u>error.h:55:21:<br>
error: expected &#39;,&#39; or &#39;;&#39; before &#39;)&#39; token<br>
|<br>
/home/nick/poky/build/tmp/<u></u>sysroots/i686-linux/usr/<u></u>include/gui=
le/2.0/libguile/<u></u>error.h:57:28:<br>
error: expected &#39;)&#39; before &#39;__attribute__&#39;<br>
|<br>
/home/nick/poky/build/tmp/<u></u>sysroots/i686-linux/usr/<u></u>include/gui=
le/2.0/libguile/<u></u>error.h:57:28:<br>
error: expected &#39;,&#39; or &#39;;&#39; before &#39;)&#39; token<br>
|<br>
/home/nick/poky/build/tmp/<u></u>sysroots/i686-linux/usr/<u></u>include/gui=
le/2.0/libguile/<u></u>error.h:59:41:<br>
error: expected &#39;)&#39; before &#39;__attribute__&#39;<br>
|<br>
/home/nick/poky/build/tmp/<u></u>sysroots/i686-linux/usr/<u></u>include/gui=
le/2.0/libguile/<u></u>error.h:59:41:<br>
error: expected &#39;,&#39; or &#39;;&#39; before &#39;)&#39; token<br>
|<br>
/home/nick/poky/build/tmp/<u></u>sysroots/i686-linux/usr/<u></u>include/gui=
le/2.0/libguile/<u></u>error.h:60:50:<br>
error: expected &#39;)&#39; before &#39;__attribute__&#39;<br>
|<br>
/home/nick/poky/build/tmp/<u></u>sysroots/i686-linux/usr/<u></u>include/gui=
le/2.0/libguile/<u></u>error.h:60:50:<br>
error: expected &#39;,&#39; or &#39;;&#39; before &#39;)&#39; token<br>
|<br>
/home/nick/poky/build/tmp/<u></u>sysroots/i686-linux/usr/<u></u>include/gui=
le/2.0/libguile/<u></u>error.h:62:19:<br>
error: expected &#39;)&#39; before &#39;__attribute__&#39;<br>
|<br>
/home/nick/poky/build/tmp/<u></u>sysroots/i686-linux/usr/<u></u>include/gui=
le/2.0/libguile/<u></u>error.h:62:19:<br>
error: expected &#39;,&#39; or &#39;;&#39; before &#39;)&#39; token<br>
| In file included from<br>
/home/nick/poky/build/tmp/<u></u>sysroots/i686-linux/usr/<u></u>include/gui=
le/2.0/libguile/<u></u>root.h:28:0,<br>
| =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0from<br>
/home/nick/poky/build/tmp/<u></u>sysroots/i686-linux/usr/<u></u>include/gui=
le/2.0/libguile/<u></u>async.h:27,<br>
| =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0from<br>
/home/nick/poky/build/tmp/<u></u>sysroots/i686-linux/usr/<u></u>include/gui=
le/2.0/libguile.h:<u></u>37,<br>
| =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0from<br>
/home/nick/poky/build/tmp/<u></u>work/i686-linux/autogen-<u></u>native/5.18=
.2-r0/autogen-5.18.<u></u>2/agen5/autogen.h:60,<br>
| =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0from ag.c:7:<br>
|<br>
/home/nick/poky/build/tmp/<u></u>sysroots/i686-linux/usr/<u></u>include/gui=
le/2.0/libguile/<u></u>throw.h:82:1:<br>
warning: &#39;__noreturn__&#39; attribute ignored [-Wattributes]<br>
| In file included from<br>
/home/nick/poky/build/tmp/<u></u>sysroots/i686-linux/usr/<u></u>include/gui=
le/2.0/libguile.h:<u></u>89:0,<br>
| =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0from<br>
/home/nick/poky/build/tmp/<u></u>work/i686-linux/autogen-<u></u>native/5.18=
.2-r0/autogen-5.18.<u></u>2/agen5/autogen.h:60,<br>
| =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0from ag.c:7:<br>
|<br>
/home/nick/poky/build/tmp/<u></u>sysroots/i686-linux/usr/<u></u>include/gui=
le/2.0/libguile/<u></u>read.h:63:3:<br>
error: expected &#39;)&#39; before &#39;__attribute__&#39;<br>
|<br>
/home/nick/poky/build/tmp/<u></u>sysroots/i686-linux/usr/<u></u>include/gui=
le/2.0/libguile/<u></u>read.h:63:3:<br>
error: expected &#39;,&#39; or &#39;;&#39; before &#39;)&#39; token<br>
| make[3]: *** [autogen-ag.o] Error 1<br>
| make[3]: Leaving directory<br>
`/home/nick/poky/build/tmp/<u></u>work/i686-linux/autogen-<u></u>native/5.1=
8.2-r0/build/agen5&#39;<br>
| make[2]: *** [all-recursive] Error 1<br>
| make[2]: Leaving directory<br>
`/home/nick/poky/build/tmp/<u></u>work/i686-linux/autogen-<u></u>native/5.1=
8.2-r0/build/agen5&#39;<br>
| make[1]: *** [all-recursive] Error 1<br>
| make[1]: Leaving directory<br>
`/home/nick/poky/build/tmp/<u></u>work/i686-linux/autogen-<u></u>native/5.1=
8.2-r0/build&#39;<br>
| make: *** [all] Error 2<br>
| ERROR: oe_runmake failed<br>
| WARNING:<br>
/home/nick/poky/build/tmp/<u></u>work/i686-linux/autogen-<u></u>native/5.18=
.2-r0/temp/run.do_<u></u>compile.16605:1<br>
exit 1 from<br>
| =A0 exit 1<br>
| ERROR: Function failed: do_compile (log file is located at<br>
/home/nick/poky/build/tmp/<u></u>work/i686-linux/autogen-<u></u>native/5.18=
.2-r0/temp/log.do_<u></u>compile.16605)<br>
ERROR: Task 6 (/home/nick/poky/meta/recipes-<u></u>devtools/autogen/<br>
<a href=3D"http://autogen-native_5.18.2.bb" target=3D"_blank">autogen-nativ=
e_5.18.2.bb</a>, do_compile) failed with exit code &#39;1&#39;<br>
NOTE: Tasks Summary: Attempted 6 tasks of which 1 didn&#39;t need to be rer=
un<br>
and 1 failed.<br>
No currently running tasks (6 of 9)<br>
<br>
Summary: 1 task failed:<br>
=A0 =A0/home/nick/poky/meta/recipes-<u></u>devtools/autogen/<a href=3D"http=
://autogen-native_5.18.2.bb" target=3D"_blank">autogen-<u></u>native_5.18.2=
.bb</a>,<br>
do_compile<br>
Summary: There was 1 WARNING message shown.<br>
Summary: There was 1 ERROR message shown, returning a non-zero exit code.<b=
r>
<br>
</div></div></blockquote>
</blockquote></div><br></div></div>

--089e011607a48a0ae904f0134d0b--
