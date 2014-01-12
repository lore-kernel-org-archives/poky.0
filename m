Return-Path: <nickdademo@gmail.com>
Received: from mail-ob0-f176.google.com (mail-ob0-f176.google.com
	[209.85.214.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5F2DAE00857
	for <poky@yoctoproject.org>; Sat, 11 Jan 2014 20:32:38 -0800 (PST)
Received: by mail-ob0-f176.google.com with SMTP id vb8so6425643obc.21
	for <poky@yoctoproject.org>; Sat, 11 Jan 2014 20:32:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:cc:content-type;
	bh=C0OrmIDH84EZMXquas3tlCXF/mhXa4pp3YMLPTYN4uc=;
	b=NxbLrVB8O1Ru/QIrRoc0ZmaNCTggYUeVKIQh+PPdP9a73bgrg9OrNi6hdBhm3fBaUr
	erMGt4MSpNMT1ABwBGTWbe5M8JuVaPwA62CTFjVYXPXqCnvVgwLEBuhcNX6io2Us+C/U
	TkzPAPSVrNd1a6bnzEo/AWUEGyU5C5IRE8lDduprnpyat+LnpasewKqRojMs4Xx0IILy
	QAibOx4K+4lEzYS7b7j+VWAVC24Vp5cueQ5scrArx+1AYBesHym45neIHkU2YQBVQhrL
	re2XPnwXRiQuM82jsGtj8Nf4wA3R6RLnZcHiWOizLTPE6bRnD1l/ZdnyB4JCY3nOdQJo
	rIJg==
X-Received: by 10.60.124.138 with SMTP id mi10mr1789112oeb.57.1389501157139;
	Sat, 11 Jan 2014 20:32:37 -0800 (PST)
MIME-Version: 1.0
Received: by 10.76.72.70 with HTTP; Sat, 11 Jan 2014 20:32:16 -0800 (PST)
From: "Nick D'Ademo" <nickdademo@gmail.com>
Date: Sun, 12 Jan 2014 15:32:16 +1100
Message-ID: <CANR6C55cECHUBYRek7cKTm1us6A5GS0x-aDyjjD3Sbo5Tjr22A@mail.gmail.com>
To: poky@yoctoproject.org
Subject: autogen-native recipe compilation error (since upgrade to 5.18.2)
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
X-List-Received-Date: Sun, 12 Jan 2014 04:32:42 -0000
Content-Type: multipart/alternative; boundary=047d7b5d5fbae2ec4d04efbe725b

--047d7b5d5fbae2ec4d04efbe725b
Content-Type: text/plain; charset=ISO-8859-1

Since the recent commit: "autogen-native: upgrade to 5.18.2" (
http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/meta/recipes-devtools/autogen?id=0cfb1e7a9f8349def5da787d3a284ac6d18ca55d
)

Compilation of the autogen-native recipe is broken for me.

Anyone have any ideas on this?
Many thanks in advance.

(Target machine is the Intel NUC).

*Error message as follows:*

ERROR: Function failed: do_compile (log file is located at
/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/temp/log.do_compile.16605)
ERROR: Logfile of failure stored in:
/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/temp/log.do_compile.16605
Log data follows:
| DEBUG: Executing shell function do_compile
| NOTE: make -j 8
| /bin/sh config/mk-shdefs config/shdefs
| config.status: creating shdef-temp
| make  all-recursive
| make[1]: Entering directory
`/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/build'
| Making all in compat
| make[2]: Entering directory
`/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/build/compat'
| :
| make[2]: Leaving directory
`/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/build/compat'
| Making all in snprintfv
| make[2]: Entering directory
`/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/build/snprintfv'
| for f in filament.c format.c printf.c mem.c stream.c custom.c ; do echo
"#include \"$f\"" ; done > snv.c
| ../i686-linux-libtool  --tag=CC   --mode=compile gcc  -std=gnu99
-DHAVE_CONFIG_H -I.
-I/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/autogen-5.18.2/snprintfv
-I..
-I/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/autogen-5.18.2
-isystem/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include
-isystem/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include -O2 -pipe
-c -o snv.lo snv.c
| i686-linux-libtool: compile:  gcc -std=gnu99 -DHAVE_CONFIG_H -I.
-I/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/autogen-5.18.2/snprintfv
-I..
-I/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/autogen-5.18.2
-isystem/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include
-isystem/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include -O2 -pipe
-c snv.c  -fPIC -DPIC -o .libs/snv.o
| i686-linux-libtool: compile:  gcc -std=gnu99 -DHAVE_CONFIG_H -I.
-I/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/autogen-5.18.2/snprintfv
-I..
-I/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/autogen-5.18.2
-isystem/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include
-isystem/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include -O2 -pipe
-c snv.c -o snv.o >/dev/null 2>&1
| ../i686-linux-libtool  --tag=CC   --mode=link gcc  -std=gnu99
-isystem/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include -O2 -pipe
-no-undefined -L/home/nick/poky/build/tmp/sysroots/i686-linux/usr/lib
-L/home/nick/poky/build/tmp/sysroots/i686-linux/lib
-Wl,-rpath-link,/home/nick/poky/build/tmp/sysroots/i686-linux/usr/lib
-Wl,-rpath-link,/home/nick/poky/build/tmp/sysroots/i686-linux/lib
-Wl,-rpath,/home/nick/poky/build/tmp/sysroots/i686-linux/usr/lib
-Wl,-rpath,/home/nick/poky/build/tmp/sysroots/i686-linux/lib -Wl,-O1 -o
libsnprintfv.la  snv.lo  -lm -ldl
| i686-linux-libtool: link: ar cru .libs/libsnprintfv.a .libs/snv.o
| i686-linux-libtool: link: ranlib .libs/libsnprintfv.a
| i686-linux-libtool: link: ( cd ".libs" && rm -f "libsnprintfv.la" && ln
-s "../libsnprintfv.la" "libsnprintfv.la" )
| make[2]: Leaving directory
`/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/build/snprintfv'
| Making all in autoopts
| make[2]: Entering directory
`/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/build/autoopts'
| rm -f stdnoreturn.h-t stdnoreturn.h && \
|     { echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */' && \
|       sed -e '/definition of _Noreturn/r
/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/autogen-5.18.2/config/snippet/_Noreturn.h'
\
|               <
/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/autogen-5.18.2/autoopts/stdnoreturn.in.h;
\
|     } > stdnoreturn.h-t && \
|     mv stdnoreturn.h-t stdnoreturn.h
| make  all-recursive
| make[3]: Entering directory
`/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/build/autoopts'
| Making all in test
| make[4]: Entering directory
`/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/build/autoopts/test'
| make[4]: Nothing to be done for `all'.
| make[4]: Leaving directory
`/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/build/autoopts/test'
| make[4]: Entering directory
`/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/build/autoopts'
|
AGexe="/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/build/agen5/autogen"
GDexe="/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/build/getdefs/getdefs"
CLexe="/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/build/columns/columns"
srcdir="/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/autogen-5.18.2/autoopts"
top_srcdir="/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/autogen-5.18.2"
builddir="." top_builddir=".." POSIX_SHELL="/bin/bash" \
|         /bin/bash
/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/autogen-5.18.2/autoopts/mk-tpl-config.sh
tpl-config-stamp autoopts/options.h autoopts/usage-txt.h genshell.h
option-xat-attribute.h option-value-type.h ao-strs.h ag-char-map.h
autoopts.h project.h proto.h parse-duration.c ao-strs.c option-value-type.c
option-xat-attribute.c autoopts.c alias.c    boolean.c   check.c
configfile.c cook.c enum.c     env.c       file.c      find.c
genshell.c load.c     makeshell.c nested.c    numeric.c    pgusage.c
putshell.c reset.c     restore.c   save.c       sort.c stack.c
streqvcmp.c text_mmap.c time.c       tokenize.c usage.c    version.c
init.c
| ../i686-linux-libtool  --tag=CC   --mode=compile gcc  -std=gnu99
-DHAVE_CONFIG_H -I.
-I/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/autogen-5.18.2/autoopts
-I..  -I..
-I/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/autogen-5.18.2
-I../autoopts
-I/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/autogen-5.18.2/autoopts
-isystem/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include
-DPKGDATADIR='"/home/nick/poky/build/tmp/sysroots/i686-linux/usr/share/autogen"'
-isystem/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include -O2 -pipe
-c -o libopts_la-libopts.lo `test -f 'libopts.c' || echo
'/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/autogen-5.18.2/autoopts/'`libopts.c
| i686-linux-libtool: compile:  gcc -std=gnu99 -DHAVE_CONFIG_H -I.
-I/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/autogen-5.18.2/autoopts
-I.. -I..
-I/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/autogen-5.18.2
-I../autoopts
-I/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/autogen-5.18.2/autoopts
-isystem/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include
-DPKGDATADIR=\"/home/nick/poky/build/tmp/sysroots/i686-linux/usr/share/autogen\"
-isystem/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include -O2 -pipe
-c libopts.c  -fPIC -DPIC -o .libs/libopts_la-libopts.o
| i686-linux-libtool: compile:  gcc -std=gnu99 -DHAVE_CONFIG_H -I.
-I/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/autogen-5.18.2/autoopts
-I.. -I..
-I/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/autogen-5.18.2
-I../autoopts
-I/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/autogen-5.18.2/autoopts
-isystem/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include
-DPKGDATADIR=\"/home/nick/poky/build/tmp/sysroots/i686-linux/usr/share/autogen\"
-isystem/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include -O2 -pipe
-c libopts.c -o libopts_la-libopts.o >/dev/null 2>&1
| ../i686-linux-libtool  --tag=CC   --mode=link gcc  -std=gnu99
-DPKGDATADIR='"/home/nick/poky/build/tmp/sysroots/i686-linux/usr/share/autogen"'
-isystem/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include -O2 -pipe
-version-info 40:1:15
-L/home/nick/poky/build/tmp/sysroots/i686-linux/usr/lib
-L/home/nick/poky/build/tmp/sysroots/i686-linux/lib
-Wl,-rpath-link,/home/nick/poky/build/tmp/sysroots/i686-linux/usr/lib
-Wl,-rpath-link,/home/nick/poky/build/tmp/sysroots/i686-linux/lib
-Wl,-rpath,/home/nick/poky/build/tmp/sysroots/i686-linux/usr/lib
-Wl,-rpath,/home/nick/poky/build/tmp/sysroots/i686-linux/lib -Wl,-O1 -o
libopts.la -rpath /home/nick/poky/build/tmp/sysroots/i686-linux/usr/lib
libopts_la-libopts.lo ../snprintfv/libsnprintfv.la -lm -ldl
| i686-linux-libtool: link: gcc  -shared  -fPIC -DPIC
.libs/libopts_la-libopts.o  -Wl,--whole-archive
../snprintfv/.libs/libsnprintfv.a -Wl,--no-whole-archive
-L/home/nick/poky/build/tmp/sysroots/i686-linux/usr/lib
-L/home/nick/poky/build/tmp/sysroots/i686-linux/lib -lm -ldl  -O2
-Wl,-rpath-link -Wl,/home/nick/poky/build/tmp/sysroots/i686-linux/usr/lib
-Wl,-rpath-link -Wl,/home/nick/poky/build/tmp/sysroots/i686-linux/lib
-Wl,-rpath -Wl,/home/nick/poky/build/tmp/sysroots/i686-linux/usr/lib
-Wl,-rpath -Wl,/home/nick/poky/build/tmp/sysroots/i686-linux/lib -Wl,-O1
-Wl,-soname -Wl,libopts.so.25 -o .libs/libopts.so.25.15.1
| i686-linux-libtool: link: (cd ".libs" && rm -f "libopts.so.25" && ln -s
"libopts.so.25.15.1" "libopts.so.25")
| i686-linux-libtool: link: (cd ".libs" && rm -f "libopts.so" && ln -s
"libopts.so.25.15.1" "libopts.so")
| i686-linux-libtool: link: (cd .libs/libopts.lax/libsnprintfv.a && ar x
"/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/build/autoopts/../snprintfv/.libs/libsnprintfv.a")
| i686-linux-libtool: link: ar cru .libs/libopts.a  libopts_la-libopts.o
.libs/libopts.lax/libsnprintfv.a/snv.o
| i686-linux-libtool: link: ranlib .libs/libopts.a
| i686-linux-libtool: link: rm -fr .libs/libopts.lax
| i686-linux-libtool: link: ( cd ".libs" && rm -f "libopts.la" && ln -s "../
libopts.la" "libopts.la" )
| /bin/bash mk-autoopts-pc pkgconfig/autoopts.pc
| make[4]: Leaving directory
`/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/build/autoopts'
| make[3]: Leaving directory
`/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/build/autoopts'
| make[2]: Leaving directory
`/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/build/autoopts'
| Making all in agen5
| make[2]: Entering directory
`/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/build/agen5'
| Making all in test
| make[3]: Entering directory
`/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/build/agen5/test'
| make[3]: Nothing to be done for `all'.
| make[3]: Leaving directory
`/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/build/agen5/test'
| make[3]: Entering directory
`/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/build/agen5'
| exec > ag.c ; \
|     echo '#undef   PKGDATADIR' ; \
|     echo '#define  PKGDATADIR
"/home/nick/poky/build/tmp/sysroots/i686-linux/usr/share/autogen"' ; \
|     mk=`set -- make ; command -v $1` ; \
|     echo 'static char const make_prog[] = "'$mk'";' ; \
|     printf '\n#define  DEFINING 1\n' ; \
|     printf '#include "%s"\n' autoopts/project.h autogen.h autogen.c
defParse-fsm.c defLex.c directive.c funcCase.c funcDef.c funcEval.c
funcFor.c funcIf.c functions.c expExtract.c expFormat.c expGperf.c
expGuile.c  expMake.c expOutput.c  expPrint.c  expState.c expString.c
agShell.c ag-text.c    agCgi.c      agDep.c      agInit.c     agUtils.c
cgi-fsm.c    defDirect.c  defFind.c    defLoad.c    fmemopen.c loadPseudo.c
opts.c       scribble.c   tpLoad.c     tpParse.c tpProcess.c
| gcc  -std=gnu99 -DHAVE_CONFIG_H -I.
-I/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/autogen-5.18.2/agen5
-I..  -I..
-I/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/autogen-5.18.2
-I../autoopts
-I/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/autogen-5.18.2/autoopts
-isystem/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include -pthread
-I/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0
-I/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include
-isystem/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include -O2 -pipe
-c -o autogen-ag.o `test -f 'ag.c' || echo
'/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/autogen-5.18.2/agen5/'`ag.c
| In file included from
/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libguile/array-handle.h:28:0,
|                  from
/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libguile.h:34,
|                  from
/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/autogen-5.18.2/agen5/autogen.h:60,
|                  from ag.c:7:
|
/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libguile/error.h:40:24:
error: expected ')' before '__attribute__'
|
/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libguile/error.h:40:24:
error: expected ',' or ';' before ')' token
|
/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libguile/error.h:42:27:
error: expected ')' before '__attribute__'
|
/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libguile/error.h:42:27:
error: expected ',' or ';' before ')' token
|
/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libguile/error.h:44:46:
error: expected ')' before '__attribute__'
|
/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libguile/error.h:44:46:
error: expected ',' or ';' before ')' token
|
/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libguile/error.h:46:30:
error: expected ')' before '__attribute__'
|
/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libguile/error.h:46:30:
error: expected ',' or ';' before ')' token
|
/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libguile/error.h:47:50:
error: expected ')' before '__attribute__'
|
/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libguile/error.h:47:50:
error: expected ',' or ';' before ')' token
|
/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libguile/error.h:49:6:
error: expected ')' before '__attribute__'
|
/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libguile/error.h:49:6:
error: expected ',' or ';' before ')' token
|
/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libguile/error.h:51:6:
error: expected ')' before '__attribute__'
|
/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libguile/error.h:51:6:
error: expected ',' or ';' before ')' token
|
/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libguile/error.h:52:44:
error: expected ')' before '__attribute__'
|
/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libguile/error.h:52:44:
error: expected ',' or ';' before ')' token
|
/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libguile/error.h:53:57:
error: expected ')' before '__attribute__'
|
/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libguile/error.h:53:57:
error: expected ',' or ';' before ')' token
|
/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libguile/error.h:55:21:
error: expected ')' before '__attribute__'
|
/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libguile/error.h:55:21:
error: expected ',' or ';' before ')' token
|
/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libguile/error.h:57:28:
error: expected ')' before '__attribute__'
|
/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libguile/error.h:57:28:
error: expected ',' or ';' before ')' token
|
/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libguile/error.h:59:41:
error: expected ')' before '__attribute__'
|
/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libguile/error.h:59:41:
error: expected ',' or ';' before ')' token
|
/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libguile/error.h:60:50:
error: expected ')' before '__attribute__'
|
/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libguile/error.h:60:50:
error: expected ',' or ';' before ')' token
|
/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libguile/error.h:62:19:
error: expected ')' before '__attribute__'
|
/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libguile/error.h:62:19:
error: expected ',' or ';' before ')' token
| In file included from
/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libguile/root.h:28:0,
|                  from
/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libguile/async.h:27,
|                  from
/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libguile.h:37,
|                  from
/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/autogen-5.18.2/agen5/autogen.h:60,
|                  from ag.c:7:
|
/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libguile/throw.h:82:1:
warning: '__noreturn__' attribute ignored [-Wattributes]
| In file included from
/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libguile.h:89:0,
|                  from
/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/autogen-5.18.2/agen5/autogen.h:60,
|                  from ag.c:7:
|
/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libguile/read.h:63:3:
error: expected ')' before '__attribute__'
|
/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libguile/read.h:63:3:
error: expected ',' or ';' before ')' token
| make[3]: *** [autogen-ag.o] Error 1
| make[3]: Leaving directory
`/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/build/agen5'
| make[2]: *** [all-recursive] Error 1
| make[2]: Leaving directory
`/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/build/agen5'
| make[1]: *** [all-recursive] Error 1
| make[1]: Leaving directory
`/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/build'
| make: *** [all] Error 2
| ERROR: oe_runmake failed
| WARNING:
/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/temp/run.do_compile.16605:1
exit 1 from
|   exit 1
| ERROR: Function failed: do_compile (log file is located at
/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/temp/log.do_compile.16605)
ERROR: Task 6 (/home/nick/poky/meta/recipes-devtools/autogen/
autogen-native_5.18.2.bb, do_compile) failed with exit code '1'
NOTE: Tasks Summary: Attempted 6 tasks of which 1 didn't need to be rerun
and 1 failed.
No currently running tasks (6 of 9)

Summary: 1 task failed:
  /home/nick/poky/meta/recipes-devtools/autogen/autogen-native_5.18.2.bb,
do_compile
Summary: There was 1 WARNING message shown.
Summary: There was 1 ERROR message shown, returning a non-zero exit code.

--047d7b5d5fbae2ec4d04efbe725b
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Since the recent commit: &quot;autogen-nati=
ve: upgrade to 5.18.2&quot; (<a href=3D"http://git.yoctoproject.org/cgit/cg=
it.cgi/poky/commit/meta/recipes-devtools/autogen?id=3D0cfb1e7a9f8349def5da7=
87d3a284ac6d18ca55d" target=3D"_blank">http://git.yoctoproject.org/cgit/cgi=
t.cgi/poky/commit/meta/recipes-devtools/autogen?id=3D0cfb1e7a9f8349def5da78=
7d3a284ac6d18ca55d</a>)<br>


<br></div>Compilation of the autogen-native recipe is broken for me.<br><br=
></div>Anyone have any ideas on this?<br>Many thanks in advance.<br><br></d=
iv>(Target machine is the Intel NUC).<br><div><div><br><b>Error message as =
follows:</b><br>

<div><div><div><br clear=3D"all"><div>ERROR: Function failed: do_compile (l=
og file is located at /home/nick/poky/build/tmp/work/i686-linux/autogen-nat=
ive/5.18.2-r0/temp/log.do_compile.16605)<br>
ERROR: Logfile of failure stored in: /home/nick/poky/build/tmp/work/i686-li=
nux/autogen-native/5.18.2-r0/temp/log.do_compile.16605<br>Log data follows:=
<br>| DEBUG: Executing shell function do_compile<br>| NOTE: make -j 8<br>


| /bin/sh config/mk-shdefs config/shdefs<br>| config.status: creating shdef=
-temp<br>| make=A0 all-recursive<br>| make[1]: Entering directory `/home/ni=
ck/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/build&#39;<br>


| Making all in compat<br>| make[2]: Entering directory `/home/nick/poky/bu=
ild/tmp/work/i686-linux/autogen-native/5.18.2-r0/build/compat&#39;<br>| :<b=
r>| make[2]: Leaving directory `/home/nick/poky/build/tmp/work/i686-linux/a=
utogen-native/5.18.2-r0/build/compat&#39;<br>


| Making all in snprintfv<br>| make[2]: Entering directory `/home/nick/poky=
/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/build/snprintfv&#39;<br=
>| for f in filament.c format.c printf.c mem.c stream.c custom.c ; do echo =
&quot;#include \&quot;$f\&quot;&quot; ; done &gt; snv.c<br>


| ../i686-linux-libtool=A0 --tag=3DCC=A0=A0 --mode=3Dcompile gcc=A0 -std=3D=
gnu99 -DHAVE_CONFIG_H -I. -I/home/nick/poky/build/tmp/work/i686-linux/autog=
en-native/5.18.2-r0/autogen-5.18.2/snprintfv -I..=A0 -I/home/nick/poky/buil=
d/tmp/work/i686-linux/autogen-native/5.18.2-r0/autogen-5.18.2 -isystem/home=
/nick/poky/build/tmp/sysroots/i686-linux/usr/include=A0 -isystem/home/nick/=
poky/build/tmp/sysroots/i686-linux/usr/include -O2 -pipe -c -o snv.lo snv.c=
<br>


| i686-linux-libtool: compile:=A0 gcc -std=3Dgnu99 -DHAVE_CONFIG_H -I. -I/h=
ome/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/autogen-5.=
18.2/snprintfv -I.. -I/home/nick/poky/build/tmp/work/i686-linux/autogen-nat=
ive/5.18.2-r0/autogen-5.18.2 -isystem/home/nick/poky/build/tmp/sysroots/i68=
6-linux/usr/include -isystem/home/nick/poky/build/tmp/sysroots/i686-linux/u=
sr/include -O2 -pipe -c snv.c=A0 -fPIC -DPIC -o .libs/snv.o<br>


| i686-linux-libtool: compile:=A0 gcc -std=3Dgnu99 -DHAVE_CONFIG_H -I. -I/h=
ome/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/autogen-5.=
18.2/snprintfv -I.. -I/home/nick/poky/build/tmp/work/i686-linux/autogen-nat=
ive/5.18.2-r0/autogen-5.18.2 -isystem/home/nick/poky/build/tmp/sysroots/i68=
6-linux/usr/include -isystem/home/nick/poky/build/tmp/sysroots/i686-linux/u=
sr/include -O2 -pipe -c snv.c -o snv.o &gt;/dev/null 2&gt;&amp;1<br>


| ../i686-linux-libtool=A0 --tag=3DCC=A0=A0 --mode=3Dlink gcc=A0 -std=3Dgnu=
99=A0 -isystem/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include -O2=
 -pipe -no-undefined -L/home/nick/poky/build/tmp/sysroots/i686-linux/usr/li=
b -L/home/nick/poky/build/tmp/sysroots/i686-linux/lib -Wl,-rpath-link,/home=
/nick/poky/build/tmp/sysroots/i686-linux/usr/lib -Wl,-rpath-link,/home/nick=
/poky/build/tmp/sysroots/i686-linux/lib -Wl,-rpath,/home/nick/poky/build/tm=
p/sysroots/i686-linux/usr/lib -Wl,-rpath,/home/nick/poky/build/tmp/sysroots=
/i686-linux/lib -Wl,-O1 -o <a href=3D"http://libsnprintfv.la" target=3D"_bl=
ank">libsnprintfv.la</a>=A0 snv.lo=A0 -lm -ldl<br>


| i686-linux-libtool: link: ar cru .libs/libsnprintfv.a .libs/snv.o<br>| i6=
86-linux-libtool: link: ranlib .libs/libsnprintfv.a<br>| i686-linux-libtool=
: link: ( cd &quot;.libs&quot; &amp;&amp; rm -f &quot;<a href=3D"http://lib=
snprintfv.la" target=3D"_blank">libsnprintfv.la</a>&quot; &amp;&amp; ln -s =
&quot;../<a href=3D"http://libsnprintfv.la" target=3D"_blank">libsnprintfv.=
la</a>&quot; &quot;<a href=3D"http://libsnprintfv.la" target=3D"_blank">lib=
snprintfv.la</a>&quot; )<br>


| make[2]: Leaving directory `/home/nick/poky/build/tmp/work/i686-linux/aut=
ogen-native/5.18.2-r0/build/snprintfv&#39;<br>| Making all in autoopts<br>|=
 make[2]: Entering directory `/home/nick/poky/build/tmp/work/i686-linux/aut=
ogen-native/5.18.2-r0/build/autoopts&#39;<br>


| rm -f stdnoreturn.h-t stdnoreturn.h &amp;&amp; \<br>| =A0=A0=A0 { echo &#=
39;/* DO NOT EDIT! GENERATED AUTOMATICALLY! */&#39; &amp;&amp; \<br>| =A0=
=A0=A0 =A0 sed -e &#39;/definition of _Noreturn/r /home/nick/poky/build/tmp=
/work/i686-linux/autogen-native/5.18.2-r0/autogen-5.18.2/config/snippet/_No=
return.h&#39; \<br>


|=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 &lt; /home/nick/poky/build/tmp/=
work/i686-linux/autogen-native/5.18.2-r0/autogen-5.18.2/autoopts/stdnoretur=
n.in.h; \<br>| =A0=A0=A0 } &gt; stdnoreturn.h-t &amp;&amp; \<br>| =A0=A0=A0=
 mv stdnoreturn.h-t stdnoreturn.h<br>


| make=A0 all-recursive<br>| make[3]: Entering directory `/home/nick/poky/b=
uild/tmp/work/i686-linux/autogen-native/5.18.2-r0/build/autoopts&#39;<br>| =
Making all in test<br>| make[4]: Entering directory `/home/nick/poky/build/=
tmp/work/i686-linux/autogen-native/5.18.2-r0/build/autoopts/test&#39;<br>


| make[4]: Nothing to be done for `all&#39;.<br>| make[4]: Leaving director=
y `/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/build=
/autoopts/test&#39;<br>| make[4]: Entering directory `/home/nick/poky/build=
/tmp/work/i686-linux/autogen-native/5.18.2-r0/build/autoopts&#39;<br>


| AGexe=3D&quot;/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.=
18.2-r0/build/agen5/autogen&quot; GDexe=3D&quot;/home/nick/poky/build/tmp/w=
ork/i686-linux/autogen-native/5.18.2-r0/build/getdefs/getdefs&quot; CLexe=
=3D&quot;/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0=
/build/columns/columns&quot; srcdir=3D&quot;/home/nick/poky/build/tmp/work/=
i686-linux/autogen-native/5.18.2-r0/autogen-5.18.2/autoopts&quot;=A0=A0=A0=
=A0 top_srcdir=3D&quot;/home/nick/poky/build/tmp/work/i686-linux/autogen-na=
tive/5.18.2-r0/autogen-5.18.2&quot; builddir=3D&quot;.&quot; top_builddir=
=3D&quot;..&quot; POSIX_SHELL=3D&quot;/bin/bash&quot; \<br>


| =A0=A0=A0 =A0=A0=A0 /bin/bash /home/nick/poky/build/tmp/work/i686-linux/a=
utogen-native/5.18.2-r0/autogen-5.18.2/autoopts/mk-tpl-config.sh tpl-config=
-stamp autoopts/options.h autoopts/usage-txt.h genshell.h option-xat-attrib=
ute.h option-value-type.h ao-strs.h ag-char-map.h autoopts.h project.h prot=
o.h parse-duration.c ao-strs.c option-value-type.c option-xat-attribute.c a=
utoopts.c alias.c=A0=A0=A0 boolean.c=A0=A0 check.c=A0=A0=A0=A0 configfile.c=
 cook.c enum.c=A0=A0=A0=A0 env.c=A0=A0=A0=A0=A0=A0 file.c=A0=A0=A0=A0=A0 fi=
nd.c=A0=A0=A0=A0=A0=A0 genshell.c load.c=A0=A0=A0=A0 makeshell.c nested.c=
=A0=A0=A0 numeric.c=A0=A0=A0 pgusage.c putshell.c reset.c=A0=A0=A0=A0 resto=
re.c=A0=A0 save.c=A0=A0=A0=A0=A0=A0 sort.c stack.c=A0=A0=A0 streqvcmp.c tex=
t_mmap.c time.c=A0=A0=A0=A0=A0=A0 tokenize.c usage.c=A0=A0=A0 version.c=A0=
=A0 init.c<br>


| ../i686-linux-libtool=A0 --tag=3DCC=A0=A0 --mode=3Dcompile gcc=A0 -std=3D=
gnu99 -DHAVE_CONFIG_H -I. -I/home/nick/poky/build/tmp/work/i686-linux/autog=
en-native/5.18.2-r0/autogen-5.18.2/autoopts -I..=A0 -I.. -I/home/nick/poky/=
build/tmp/work/i686-linux/autogen-native/5.18.2-r0/autogen-5.18.2 -I../auto=
opts -I/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/a=
utogen-5.18.2/autoopts -isystem/home/nick/poky/build/tmp/sysroots/i686-linu=
x/usr/include -DPKGDATADIR=3D&#39;&quot;/home/nick/poky/build/tmp/sysroots/=
i686-linux/usr/share/autogen&quot;&#39; -isystem/home/nick/poky/build/tmp/s=
ysroots/i686-linux/usr/include -O2 -pipe -c -o libopts_la-libopts.lo `test =
-f &#39;libopts.c&#39; || echo &#39;/home/nick/poky/build/tmp/work/i686-lin=
ux/autogen-native/5.18.2-r0/autogen-5.18.2/autoopts/&#39;`libopts.c<br>


| i686-linux-libtool: compile:=A0 gcc -std=3Dgnu99 -DHAVE_CONFIG_H -I. -I/h=
ome/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/autogen-5.=
18.2/autoopts -I.. -I.. -I/home/nick/poky/build/tmp/work/i686-linux/autogen=
-native/5.18.2-r0/autogen-5.18.2 -I../autoopts -I/home/nick/poky/build/tmp/=
work/i686-linux/autogen-native/5.18.2-r0/autogen-5.18.2/autoopts -isystem/h=
ome/nick/poky/build/tmp/sysroots/i686-linux/usr/include -DPKGDATADIR=3D\&qu=
ot;/home/nick/poky/build/tmp/sysroots/i686-linux/usr/share/autogen\&quot; -=
isystem/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include -O2 -pipe =
-c libopts.c=A0 -fPIC -DPIC -o .libs/libopts_la-libopts.o<br>


| i686-linux-libtool: compile:=A0 gcc -std=3Dgnu99 -DHAVE_CONFIG_H -I. -I/h=
ome/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/autogen-5.=
18.2/autoopts -I.. -I.. -I/home/nick/poky/build/tmp/work/i686-linux/autogen=
-native/5.18.2-r0/autogen-5.18.2 -I../autoopts -I/home/nick/poky/build/tmp/=
work/i686-linux/autogen-native/5.18.2-r0/autogen-5.18.2/autoopts -isystem/h=
ome/nick/poky/build/tmp/sysroots/i686-linux/usr/include -DPKGDATADIR=3D\&qu=
ot;/home/nick/poky/build/tmp/sysroots/i686-linux/usr/share/autogen\&quot; -=
isystem/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include -O2 -pipe =
-c libopts.c -o libopts_la-libopts.o &gt;/dev/null 2&gt;&amp;1<br>


| ../i686-linux-libtool=A0 --tag=3DCC=A0=A0 --mode=3Dlink gcc=A0 -std=3Dgnu=
99 -DPKGDATADIR=3D&#39;&quot;/home/nick/poky/build/tmp/sysroots/i686-linux/=
usr/share/autogen&quot;&#39; -isystem/home/nick/poky/build/tmp/sysroots/i68=
6-linux/usr/include -O2 -pipe -version-info 40:1:15 -L/home/nick/poky/build=
/tmp/sysroots/i686-linux/usr/lib -L/home/nick/poky/build/tmp/sysroots/i686-=
linux/lib -Wl,-rpath-link,/home/nick/poky/build/tmp/sysroots/i686-linux/usr=
/lib -Wl,-rpath-link,/home/nick/poky/build/tmp/sysroots/i686-linux/lib -Wl,=
-rpath,/home/nick/poky/build/tmp/sysroots/i686-linux/usr/lib -Wl,-rpath,/ho=
me/nick/poky/build/tmp/sysroots/i686-linux/lib -Wl,-O1 -o <a href=3D"http:/=
/libopts.la" target=3D"_blank">libopts.la</a> -rpath /home/nick/poky/build/=
tmp/sysroots/i686-linux/usr/lib=A0 libopts_la-libopts.lo ../snprintfv/<a hr=
ef=3D"http://libsnprintfv.la" target=3D"_blank">libsnprintfv.la</a> -lm -ld=
l<br>


| i686-linux-libtool: link: gcc=A0 -shared=A0 -fPIC -DPIC=A0 .libs/libopts_=
la-libopts.o=A0 -Wl,--whole-archive ../snprintfv/.libs/libsnprintfv.a -Wl,-=
-no-whole-archive=A0 -L/home/nick/poky/build/tmp/sysroots/i686-linux/usr/li=
b -L/home/nick/poky/build/tmp/sysroots/i686-linux/lib -lm -ldl=A0 -O2 -Wl,-=
rpath-link -Wl,/home/nick/poky/build/tmp/sysroots/i686-linux/usr/lib -Wl,-r=
path-link -Wl,/home/nick/poky/build/tmp/sysroots/i686-linux/lib -Wl,-rpath =
-Wl,/home/nick/poky/build/tmp/sysroots/i686-linux/usr/lib -Wl,-rpath -Wl,/h=
ome/nick/poky/build/tmp/sysroots/i686-linux/lib -Wl,-O1=A0=A0 -Wl,-soname -=
Wl,libopts.so.25 -o .libs/libopts.so.25.15.1<br>


| i686-linux-libtool: link: (cd &quot;.libs&quot; &amp;&amp; rm -f &quot;li=
bopts.so.25&quot; &amp;&amp; ln -s &quot;libopts.so.25.15.1&quot; &quot;lib=
opts.so.25&quot;)<br>| i686-linux-libtool: link: (cd &quot;.libs&quot; &amp=
;&amp; rm -f &quot;libopts.so&quot; &amp;&amp; ln -s &quot;libopts.so.25.15=
.1&quot; &quot;libopts.so&quot;)<br>


| i686-linux-libtool: link: (cd .libs/libopts.lax/libsnprintfv.a &amp;&amp;=
 ar x &quot;/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2=
-r0/build/autoopts/../snprintfv/.libs/libsnprintfv.a&quot;)<br>| i686-linux=
-libtool: link: ar cru .libs/libopts.a=A0 libopts_la-libopts.o=A0 .libs/lib=
opts.lax/libsnprintfv.a/snv.o<br>


| i686-linux-libtool: link: ranlib .libs/libopts.a<br>| i686-linux-libtool:=
 link: rm -fr .libs/libopts.lax<br>| i686-linux-libtool: link: ( cd &quot;.=
libs&quot; &amp;&amp; rm -f &quot;<a href=3D"http://libopts.la" target=3D"_=
blank">libopts.la</a>&quot; &amp;&amp; ln -s &quot;../<a href=3D"http://lib=
opts.la" target=3D"_blank">libopts.la</a>&quot; &quot;<a href=3D"http://lib=
opts.la" target=3D"_blank">libopts.la</a>&quot; )<br>


| /bin/bash mk-autoopts-pc pkgconfig/autoopts.pc<br>| make[4]: Leaving dire=
ctory `/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/b=
uild/autoopts&#39;<br>| make[3]: Leaving directory `/home/nick/poky/build/t=
mp/work/i686-linux/autogen-native/5.18.2-r0/build/autoopts&#39;<br>


| make[2]: Leaving directory `/home/nick/poky/build/tmp/work/i686-linux/aut=
ogen-native/5.18.2-r0/build/autoopts&#39;<br>| Making all in agen5<br>| mak=
e[2]: Entering directory `/home/nick/poky/build/tmp/work/i686-linux/autogen=
-native/5.18.2-r0/build/agen5&#39;<br>


| Making all in test<br>| make[3]: Entering directory `/home/nick/poky/buil=
d/tmp/work/i686-linux/autogen-native/5.18.2-r0/build/agen5/test&#39;<br>| m=
ake[3]: Nothing to be done for `all&#39;.<br>| make[3]: Leaving directory `=
/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/build/ag=
en5/test&#39;<br>


| make[3]: Entering directory `/home/nick/poky/build/tmp/work/i686-linux/au=
togen-native/5.18.2-r0/build/agen5&#39;<br>| exec &gt; ag.c ; \<br>| =A0=A0=
=A0 echo &#39;#undef=A0=A0 PKGDATADIR&#39; ; \<br>| =A0=A0=A0 echo &#39;#de=
fine=A0 PKGDATADIR &quot;/home/nick/poky/build/tmp/sysroots/i686-linux/usr/=
share/autogen&quot;&#39; ; \<br>


| =A0=A0=A0 mk=3D`set -- make ; command -v $1` ; \<br>| =A0=A0=A0 echo &#39=
;static char const make_prog[] =3D &quot;&#39;$mk&#39;&quot;;&#39; ; \<br>|=
 =A0=A0=A0 printf &#39;\n#define=A0 DEFINING 1\n&#39; ; \<br>| =A0=A0=A0 pr=
intf &#39;#include &quot;%s&quot;\n&#39; autoopts/project.h autogen.h autog=
en.c defParse-fsm.c defLex.c directive.c funcCase.c funcDef.c funcEval.c fu=
ncFor.c funcIf.c functions.c expExtract.c expFormat.c expGperf.c expGuile.c=
=A0 expMake.c expOutput.c=A0 expPrint.c=A0 expState.c expString.c agShell.c=
 ag-text.c=A0=A0=A0 agCgi.c=A0=A0=A0=A0=A0 agDep.c=A0=A0=A0=A0=A0 agInit.c=
=A0=A0=A0=A0 agUtils.c cgi-fsm.c=A0=A0=A0 defDirect.c=A0 defFind.c=A0=A0=A0=
 defLoad.c=A0=A0=A0 fmemopen.c loadPseudo.c opts.c=A0=A0=A0=A0=A0=A0 scribb=
le.c=A0=A0 tpLoad.c=A0=A0=A0=A0 tpParse.c tpProcess.c<br>


| gcc=A0 -std=3Dgnu99 -DHAVE_CONFIG_H -I. -I/home/nick/poky/build/tmp/work/=
i686-linux/autogen-native/5.18.2-r0/autogen-5.18.2/agen5 -I..=A0 -I.. -I/ho=
me/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/autogen-5.1=
8.2 -I../autoopts -I/home/nick/poky/build/tmp/work/i686-linux/autogen-nativ=
e/5.18.2-r0/autogen-5.18.2/autoopts -isystem/home/nick/poky/build/tmp/sysro=
ots/i686-linux/usr/include -pthread -I/home/nick/poky/build/tmp/sysroots/i6=
86-linux/usr/include/guile/2.0 -I/home/nick/poky/build/tmp/sysroots/i686-li=
nux/usr/include=A0 -isystem/home/nick/poky/build/tmp/sysroots/i686-linux/us=
r/include -O2 -pipe -c -o autogen-ag.o `test -f &#39;ag.c&#39; || echo &#39=
;/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/autogen=
-5.18.2/agen5/&#39;`ag.c<br>


| In file included from /home/nick/poky/build/tmp/sysroots/i686-linux/usr/i=
nclude/guile/2.0/libguile/array-handle.h:28:0,<br>|=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0 from /home/nick/poky/build/tmp/sysroots/i686-li=
nux/usr/include/guile/2.0/libguile.h:34,<br>


|=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 from /home/nick/poky/b=
uild/tmp/work/i686-linux/autogen-native/5.18.2-r0/autogen-5.18.2/agen5/auto=
gen.h:60,<br>|=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 from ag.c=
:7:<br>| /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.=
0/libguile/error.h:40:24: error: expected &#39;)&#39; before &#39;__attribu=
te__&#39;<br>


| /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libgu=
ile/error.h:40:24: error: expected &#39;,&#39; or &#39;;&#39; before &#39;)=
&#39; token<br>| /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/=
guile/2.0/libguile/error.h:42:27: error: expected &#39;)&#39; before &#39;_=
_attribute__&#39;<br>


| /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libgu=
ile/error.h:42:27: error: expected &#39;,&#39; or &#39;;&#39; before &#39;)=
&#39; token<br>| /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/=
guile/2.0/libguile/error.h:44:46: error: expected &#39;)&#39; before &#39;_=
_attribute__&#39;<br>


| /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libgu=
ile/error.h:44:46: error: expected &#39;,&#39; or &#39;;&#39; before &#39;)=
&#39; token<br>| /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/=
guile/2.0/libguile/error.h:46:30: error: expected &#39;)&#39; before &#39;_=
_attribute__&#39;<br>


| /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libgu=
ile/error.h:46:30: error: expected &#39;,&#39; or &#39;;&#39; before &#39;)=
&#39; token<br>| /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/=
guile/2.0/libguile/error.h:47:50: error: expected &#39;)&#39; before &#39;_=
_attribute__&#39;<br>


| /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libgu=
ile/error.h:47:50: error: expected &#39;,&#39; or &#39;;&#39; before &#39;)=
&#39; token<br>| /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/=
guile/2.0/libguile/error.h:49:6: error: expected &#39;)&#39; before &#39;__=
attribute__&#39;<br>


| /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libgu=
ile/error.h:49:6: error: expected &#39;,&#39; or &#39;;&#39; before &#39;)&=
#39; token<br>| /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/g=
uile/2.0/libguile/error.h:51:6: error: expected &#39;)&#39; before &#39;__a=
ttribute__&#39;<br>


| /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libgu=
ile/error.h:51:6: error: expected &#39;,&#39; or &#39;;&#39; before &#39;)&=
#39; token<br>| /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/g=
uile/2.0/libguile/error.h:52:44: error: expected &#39;)&#39; before &#39;__=
attribute__&#39;<br>


| /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libgu=
ile/error.h:52:44: error: expected &#39;,&#39; or &#39;;&#39; before &#39;)=
&#39; token<br>| /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/=
guile/2.0/libguile/error.h:53:57: error: expected &#39;)&#39; before &#39;_=
_attribute__&#39;<br>


| /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libgu=
ile/error.h:53:57: error: expected &#39;,&#39; or &#39;;&#39; before &#39;)=
&#39; token<br>| /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/=
guile/2.0/libguile/error.h:55:21: error: expected &#39;)&#39; before &#39;_=
_attribute__&#39;<br>


| /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libgu=
ile/error.h:55:21: error: expected &#39;,&#39; or &#39;;&#39; before &#39;)=
&#39; token<br>| /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/=
guile/2.0/libguile/error.h:57:28: error: expected &#39;)&#39; before &#39;_=
_attribute__&#39;<br>


| /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libgu=
ile/error.h:57:28: error: expected &#39;,&#39; or &#39;;&#39; before &#39;)=
&#39; token<br>| /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/=
guile/2.0/libguile/error.h:59:41: error: expected &#39;)&#39; before &#39;_=
_attribute__&#39;<br>


| /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libgu=
ile/error.h:59:41: error: expected &#39;,&#39; or &#39;;&#39; before &#39;)=
&#39; token<br>| /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/=
guile/2.0/libguile/error.h:60:50: error: expected &#39;)&#39; before &#39;_=
_attribute__&#39;<br>


| /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libgu=
ile/error.h:60:50: error: expected &#39;,&#39; or &#39;;&#39; before &#39;)=
&#39; token<br>| /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/=
guile/2.0/libguile/error.h:62:19: error: expected &#39;)&#39; before &#39;_=
_attribute__&#39;<br>


| /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libgu=
ile/error.h:62:19: error: expected &#39;,&#39; or &#39;;&#39; before &#39;)=
&#39; token<br>| In file included from /home/nick/poky/build/tmp/sysroots/i=
686-linux/usr/include/guile/2.0/libguile/root.h:28:0,<br>


|=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 from /home/nick/poky/b=
uild/tmp/sysroots/i686-linux/usr/include/guile/2.0/libguile/async.h:27,<br>=
|=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 from /home/nick/poky/b=
uild/tmp/sysroots/i686-linux/usr/include/guile/2.0/libguile.h:37,<br>


|=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 from /home/nick/poky/b=
uild/tmp/work/i686-linux/autogen-native/5.18.2-r0/autogen-5.18.2/agen5/auto=
gen.h:60,<br>|=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 from ag.c=
:7:<br>| /home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.=
0/libguile/throw.h:82:1: warning: &#39;__noreturn__&#39; attribute ignored =
[-Wattributes]<br>


| In file included from /home/nick/poky/build/tmp/sysroots/i686-linux/usr/i=
nclude/guile/2.0/libguile.h:89:0,<br>|=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0 from /home/nick/poky/build/tmp/work/i686-linux/autogen-nati=
ve/5.18.2-r0/autogen-5.18.2/agen5/autogen.h:60,<br>


|=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 from ag.c:7:<br>| /hom=
e/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libguile/re=
ad.h:63:3: error: expected &#39;)&#39; before &#39;__attribute__&#39;<br>| =
/home/nick/poky/build/tmp/sysroots/i686-linux/usr/include/guile/2.0/libguil=
e/read.h:63:3: error: expected &#39;,&#39; or &#39;;&#39; before &#39;)&#39=
; token<br>


| make[3]: *** [autogen-ag.o] Error 1<br>| make[3]: Leaving directory `/hom=
e/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/build/agen5&=
#39;<br>| make[2]: *** [all-recursive] Error 1<br>| make[2]: Leaving direct=
ory `/home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/bui=
ld/agen5&#39;<br>


| make[1]: *** [all-recursive] Error 1<br>| make[1]: Leaving directory `/ho=
me/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/build&#39;<=
br>| make: *** [all] Error 2<br>| ERROR: oe_runmake failed<br>| WARNING: /h=
ome/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/temp/run.d=
o_compile.16605:1 exit 1 from<br>


|=A0=A0 exit 1<br>| ERROR: Function failed: do_compile (log file is located=
 at /home/nick/poky/build/tmp/work/i686-linux/autogen-native/5.18.2-r0/temp=
/log.do_compile.16605)<br>ERROR: Task 6 (/home/nick/poky/meta/recipes-devto=
ols/autogen/<a href=3D"http://autogen-native_5.18.2.bb" target=3D"_blank">a=
utogen-native_5.18.2.bb</a>, do_compile) failed with exit code &#39;1&#39;<=
br>


NOTE: Tasks Summary: Attempted 6 tasks of which 1 didn&#39;t need to be rer=
un and 1 failed.<br>No currently running tasks (6 of 9)<br><br>Summary: 1 t=
ask failed:<br>=A0 /home/nick/poky/meta/recipes-devtools/autogen/<a href=3D=
"http://autogen-native_5.18.2.bb" target=3D"_blank">autogen-native_5.18.2.b=
b</a>, do_compile<br>


Summary: There was 1 WARNING message shown.<br>Summary: There was 1 ERROR m=
essage shown, returning a non-zero exit code.<br><br><div><div><div><div><p=
></p></div></div></div></div></div>
</div></div></div></div></div></div>

--047d7b5d5fbae2ec4d04efbe725b--
