Return-Path: <behzaterte@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 93743E00798; Sun, 19 Jun 2016 03:52:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (behzaterte[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f43.google.com (mail-vk0-f43.google.com
	[209.85.213.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28CEEE006D3
	for <poky@yoctoproject.org>; Sun, 19 Jun 2016 03:52:28 -0700 (PDT)
Received: by mail-vk0-f43.google.com with SMTP id d185so165428841vkg.0
	for <poky@yoctoproject.org>; Sun, 19 Jun 2016 03:52:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=6cf0jnFhjau+0UwIP8z42Zmzkrk3r2yjdZfB14383C4=;
	b=CSQRLfI2WMjFHrpf41Vj+3z38Nx7V7p7gug0JR6gSpBOTB7i1P0zwNg/+LrfXYs14g
	7HygJOPyidmOKojkYaQkJPrA9pPXs3Vkxik2WD4j06515LKjcLnix6iNTAiKmLlGSTpG
	I+2dCas8jJhP54YzxTG3nI/jAKnZJLtWn3CkpRySypcJyIlrXCsOx2hJpZ0Ey0iiZAfU
	wDKnQatlZnukVLFwYr7dBPdJJMJteV+hGfHaI2eP834NTqnlJvdgEXoMbqs9lG+kxlPV
	BqCfhEdylvOMczJwyTFXG1536Tqy7SSSFvOE3vHFNMCy0WRBQ3+vSjLR6HV5BkZTNXll
	y8JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=6cf0jnFhjau+0UwIP8z42Zmzkrk3r2yjdZfB14383C4=;
	b=ORq8A3/2X3laYoVsdXvDEB8f/KrW3C4bq2TCLwQc0SVachmqSqqioLTEZ9kqonrOu8
	ecbZSL8bCw2Pg2n2UBYOEVqNser7qsmCcI4HqVtr9d1HeUXQWpvIauSEtLlGZ7PUEw3n
	JodynoAb6fMjJa3RbTsOf6RPS7pYmiqsnDoiw/XvFptaqGqsQORJ/3xOPf89no1sISkN
	cEdPgAi6wo53toSt5dKS2yPB96kwrr5RdZf96x102k/4qe64JzIeZ5hNWmeat2tC+Wf8
	LkJu9/dwPLxRrRz6tpVclYVky6cpRvhemlp+mQPdbNdsuWFh8qtqAJNgBIVdk7r1ObjJ
	HhCw==
X-Gm-Message-State: ALyK8tLYCfNudK2DS3mgD+T1j/QoD5CLyABjPeVKNsGH/JaPxxEMCHryiBpj/oXukJRh5H21mg4rxMI1ffitgg==
X-Received: by 10.176.67.3 with SMTP id k3mr4590813uak.48.1466333547605; Sun,
	19 Jun 2016 03:52:27 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.0.166 with HTTP; Sun, 19 Jun 2016 03:52:27 -0700 (PDT)
From: Behzat Erte <behzaterte@gmail.com>
Date: Sun, 19 Jun 2016 13:52:27 +0300
Message-ID: <CAMos0+P5U5hjaLF20tFAGKtLADiydJVfiGSVnwYansAD0Bw0aA@mail.gmail.com>
To: poky@yoctoproject.org
Subject: perl do_compile issue
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
X-List-Received-Date: Sun, 19 Jun 2016 10:52:32 -0000
Content-Type: multipart/alternative; boundary=94eb2c0d4dcc3a346d05359f6281

--94eb2c0d4dcc3a346d05359f6281
Content-Type: text/plain; charset=UTF-8

Hello all,

I'm trying to compile core-image-minimal for qemuarm machine. However when
poky make do_compile step for perl package I'm getting linker error as
below:

ERROR: Function failed: do_configure (log file is located at
/home/berte/playground/poky/build/tmp/work/x86_64-linux/perl-native/5.14.3-r0/temp/log.do_configure.27295)
ERROR: Logfile of failure stored in:
/home/berte/playground/poky/build/tmp/work/x86_64-linux/perl-native/5.14.3-r0/temp/log.do_configure.27295
Log data follows:
| DEBUG: Executing python function sysroot_cleansstate
| DEBUG: Python function sysroot_cleansstate finished
| DEBUG: Executing shell function do_configure
| First let's make sure your kit is complete.  Checking...
| Would you like to see the instructions? [n]
| Locating common programs...
| Checking compatibility between /bin/echo and builtin echo (if any)...
| Symbolic links are supported.
| Checking how to test for symbolic links...
| You can test for symbolic links with 'test -h'.
| Good, your tr supports [:lower:] and [:upper:] to convert case.
| Using [:upper:] and [:lower:] to convert case.
| 3b1             dragonfly       irix_6_0        opus           super-ux
| aix             dynix             irix_6_1        os2           svr4
| aix_3         dynixptx        isc             os390           svr5
| aix_4         epix             isc_2             os400           ti1500
| altos486      esix4             linux             posix-bc      titanos
| amigaos       fps             lynxos          powerux       ultrix_4
| atheos        freebsd         midnightbsd     qnx           umips
| aux_3         genix             mips             rhapsody      unicos
| beos          gnu             mirbsd          riscos        unicosmk
| bsdos         gnukfreebsd     mpc             sco           unisysdynix
| catamount     gnuknetbsd      mpeix             sco_2_3_0     utekv
| convexos      greenhills      ncr_tower       sco_2_3_1     uts
| cxux          haiku             netbsd          sco_2_3_2     uwin
| cygwin        hpux             newsos4         sco_2_3_3     vmesa
| darwin        i386             next_3          sco_2_3_4     vos
| dcosx         interix         next_3_0        solaris_2
| dec_osf       irix_4          next_4          stellar
| dgux          irix_5          nonstopux       sunos_4_0
| dos_djgpp     irix_6          openbsd         sunos_4_1
| Which of these apply, if any? [linux]
|
| You appear to have ELF support.  I'll try to use it for dynamic loading.
| If dynamic loading doesn't work, read hints/linux.sh for further
information.
| nm: /usr/lib/libdb.so: no symbols
| nm: /usr/lib64/libdb.so: no symbols
| nm: /usr/lib64/libdb.so: no symbols
| Operating system name? [linux]
| Operating system version? [4.4.6-gentoo]
| Installation prefix to use? (~name ok)
| [/home/berte/playground/poky/build/tmp/sysroots/x86_64-linux/usr]
| AFS does not seem to be running...
| What installation prefix should I use for installing files? (~name ok)
| [/home/berte/playground/poky/build/tmp/sysroots/x86_64-linux/usr]
| Build Perl for SOCKS? [n]
| Use the PerlIO abstraction layer? [y]
| Getting the current patchlevel...
| Build a threading Perl? [y]
| Use which C compiler? [gcc ]
| Checking for GNU cc in disguise and/or its version number...
| Now, how can we feed standard input to your C preprocessor...
| Directories to use for library searches?
| [/usr/local/lib /lib/../lib64 /usr/lib/../lib64 /lib /usr/lib /lib64
/usr/lib64 /usr/local/lib64]
| What is the file extension used for shared libraries? [so]
| Try to use long doubles if available? [n]
| Checking for optional libraries...
| What libraries to use?
| [-lnsl -lnm -lgdbm -ldb -ldl -lm -lcrypt -lutil -lpthread -lc
-lgdbm_compat]
| What optimizer/debugger flag should be used? [-O2]
| Any additional cc flags?
| [-D_REENTRANT -D_GNU_SOURCE -fno-strict-aliasing -pipe -fstack-protector]
| Let me guess what the preprocessor flags are...
| Any additional ld flags (NOT including libraries)?
| [-L/home/berte/playground/poky/build/tmp/sysroots/x86_64-linux/usr/lib
-L/home/berte/playground/poky/build/tmp/sysroots/x86_64-linux/lib
-Wl,-rpath-link,/home/berte/playground/poky/build/tmp/sysroots/x86_64-linux/usr/lib
-Wl,-rpath-link,/home/berte/playground/poky/build/tmp/sysroots/x86_64-linux/lib
-Wl,-rpath,/home/berte/playground/poky/build/tmp/sysroots/x86_64-linux/usr/lib
-Wl,-rpath,/home/berte/playground/poky/build/tmp/sysroots/x86_64-linux/lib
-Wl,-O1 -fstack-protector -L/usr/local/lib]
| Checking your choice of C compiler and flags for coherency...
| I've tried to compile and run the following simple program:
|
| #include <stdio.h>
| int main() { printf("Ok\n"); return(0); }
|
| I used the command:
|
|     gcc -o try -O2 -D_REENTRANT -D_GNU_SOURCE -fno-strict-aliasing -pipe
-fstack-protector
-L/home/berte/playground/poky/build/tmp/sysroots/x86_64-linux/usr/lib
-L/home/berte/playground/poky/build/tmp/sysroots/x86_64-linux/lib
-Wl,-rpath-link,/home/berte/playground/poky/build/tmp/sysroots/x86_64-linux/usr/lib
-Wl,-rpath-link,/home/berte/playground/poky/build/tmp/sysroots/x86_64-linux/lib
-Wl,-rpath,/home/berte/playground/poky/build/tmp/sysroots/x86_64-linux/usr/lib
-Wl,-rpath,/home/berte/playground/poky/build/tmp/sysroots/x86_64-linux/lib
-Wl,-O1 -fstack-protector -L/usr/local/lib try.c -lnsl -lnm -lgdbm -ldb
-ldl -lm -lcrypt -lutil -lpthread -lc -lgdbm_compat
|      ./try
|
| and I got the following output:
|
| /usr/lib/gcc/x86_64-pc-linux-gnu/5.3.0/../../../../lib64/libnm.so:
undefined reference to `g_type_add_instance_private'
| /usr/lib/gcc/x86_64-pc-linux-gnu/5.3.0/../../../../lib64/libnm.so:
undefined reference to `g_type_class_adjust_private_offset'
| collect2: error: ld returned 1 exit status


I know my distro (Gentoo x86_64) not officially supports but when I try
that step with manually I'm getting result is expected like as below:

time gcc -o try -O2 -D_REENTRANT -D_GNU_SOURCE -fno-strict-aliasing -pipe
-fstack-protector -Wl,-rpath-link -Wl,-O1 -fstack-protector
-L/usr/local/lib try.c -lnsl -lnm -lgdbm -ldb -ldl -lm -lcrypt -lutil
-lpthread -lc -lgdbm_compat

real    0m0.146s
user    0m0.127s
sys    0m0.026s

time ./try
Ok

real    0m0.007s
user    0m0.002s
sys    0m0.005s


I guess -rpath-link causing some problem with linker but somehow I did not
get exact root cause. If someone has any idea with this problem it would be
more than welcome.

cheers,
-berte.

--94eb2c0d4dcc3a346d05359f6281
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div>Hello all,<br><br></div>I&#39;m t=
rying to compile core-image-minimal for qemuarm machine. However when poky =
make do_compile step for perl package I&#39;m getting linker error as below=
:<br><br>ERROR: Function failed: do_configure (log file is located at /home=
/berte/playground/poky/build/tmp/work/x86_64-linux/perl-native/5.14.3-r0/te=
mp/log.do_configure.27295)<br>ERROR: Logfile of failure stored in: /home/be=
rte/playground/poky/build/tmp/work/x86_64-linux/perl-native/5.14.3-r0/temp/=
log.do_configure.27295<br>Log data follows:<br>| DEBUG: Executing python fu=
nction sysroot_cleansstate<br>| DEBUG: Python function sysroot_cleansstate =
finished<br>| DEBUG: Executing shell function do_configure<br>| First let&#=
39;s make sure your kit is complete.=C2=A0 Checking...<br>| Would you like =
to see the instructions? [n]<br>| Locating common programs...<br>| Checking=
 compatibility between /bin/echo and builtin echo (if any)...<br>| Symbolic=
 links are supported.<br>| Checking how to test for symbolic links...<br>| =
You can test for symbolic links with &#39;test -h&#39;.<br>| Good, your tr =
supports [:lower:] and [:upper:] to convert case.<br>| Using [:upper:] and =
[:lower:] to convert case.<br>| 3b1=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 dragonfly=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 irix=
_6_0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 opus=C2=A0=C2=A0 =C2=A0=C2=
=A0=C2=A0 =C2=A0=C2=A0=C2=A0 super-ux<br>| aix=C2=A0=C2=A0 =C2=A0=C2=A0=C2=
=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 dynix=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 irix_6_1=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 os2=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 svr4<br>| aix_3=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 dynixptx=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 isc=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 os390=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 svr=
5<br>| aix_4=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 epix=C2=A0=C2=
=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 isc_2=C2=A0=C2=A0 =C2=
=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 os400=C2=A0=C2=A0 =C2=A0=C2=
=A0=C2=A0 =C2=A0=C2=A0=C2=A0 ti1500<br>| altos486=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 esix4=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
linux=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 posix-b=
c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 titanos<br>| amigaos=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 fps=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 lynxos=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 powerux=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ultrix_4<br>| atheos=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 freebsd=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 midnightbsd=C2=A0=C2=A0=C2=A0=C2=A0 qnx=C2=A0=C2=A0 =C2=A0=C2=A0=C2=
=A0 =C2=A0=C2=A0=C2=A0 umips<br>| aux_3=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 genix=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 mips=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 r=
hapsody=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 unicos<br>| beos=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 gnu=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 mirbsd=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 riscos=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 unicosmk<br>|=
 bsdos=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 gnukfreebsd=C2=A0=C2=
=A0=C2=A0=C2=A0 mpc=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 sco=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 unisysdynix<br=
>| catamount=C2=A0=C2=A0=C2=A0=C2=A0 gnuknetbsd=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 mpeix=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 sco=
_2_3_0=C2=A0=C2=A0=C2=A0=C2=A0 utekv<br>| convexos=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 greenhills=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ncr_tower=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 sco_2_3_1=C2=A0=C2=A0=C2=A0=C2=A0 uts<br>| cxux=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 haiku=C2=A0=C2=A0 =C2=A0=C2=
=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 netbsd=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 sco_2_3_2=C2=A0=C2=A0=C2=A0=C2=A0 uwin<br>| cyg=
win=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 hpux=C2=A0=C2=A0 =C2=A0=C2=A0=
=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 newsos4=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 sco_2_3_3=C2=A0=C2=A0=C2=A0=C2=A0 vmesa<br>| darwin=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 i386=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 next_3=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 sco_2_3_4=C2=A0=C2=A0=C2=A0=C2=A0 vos<br>| dcosx=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 interix=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 next_3_0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 solaris_2<br>| dec_osf=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 irix_4=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 next_4=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 stellar<br>| dgux=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 irix_5=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 nonstopux=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 sunos_4_0<=
br>| dos_djgpp=C2=A0=C2=A0=C2=A0=C2=A0 irix_6=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 openbsd=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 sunos_4_1<br>| Which of these apply, if any? [linux]<br>| <br>| You =
appear to have ELF support.=C2=A0 I&#39;ll try to use it for dynamic loadin=
g.<br>| If dynamic loading doesn&#39;t work, read hints/linux.sh for furthe=
r information.<br>| nm: /usr/lib/libdb.so: no symbols<br>| nm: /usr/lib64/l=
ibdb.so: no symbols<br>| nm: /usr/lib64/libdb.so: no symbols<br>| Operating=
 system name? [linux]<br>| Operating system version? [4.4.6-gentoo]<br>| In=
stallation prefix to use? (~name ok)<br>| [/home/berte/playground/poky/buil=
d/tmp/sysroots/x86_64-linux/usr]<br>| AFS does not seem to be running...<br=
>| What installation prefix should I use for installing files? (~name ok)<b=
r>| [/home/berte/playground/poky/build/tmp/sysroots/x86_64-linux/usr]<br>| =
Build Perl for SOCKS? [n]<br>| Use the PerlIO abstraction layer? [y]<br>| G=
etting the current patchlevel...<br>| Build a threading Perl? [y]<br>| Use =
which C compiler? [gcc ]<br>| Checking for GNU cc in disguise and/or its ve=
rsion number...<br>| Now, how can we feed standard input to your C preproce=
ssor...<br>| Directories to use for library searches?<br>| [/usr/local/lib =
/lib/../lib64 /usr/lib/../lib64 /lib /usr/lib /lib64 /usr/lib64 /usr/local/=
lib64]<br>| What is the file extension used for shared libraries? [so]<br>|=
 Try to use long doubles if available? [n]<br>| Checking for optional libra=
ries...<br>| What libraries to use?<br>| [-lnsl -lnm -lgdbm -ldb -ldl -lm -=
lcrypt -lutil -lpthread -lc -lgdbm_compat]<br>| What optimizer/debugger fla=
g should be used? [-O2]<br>| Any additional cc flags?<br>| [-D_REENTRANT -D=
_GNU_SOURCE -fno-strict-aliasing -pipe -fstack-protector]<br>| Let me guess=
 what the preprocessor flags are...<br>| Any additional ld flags (NOT inclu=
ding libraries)?<br>| [-L/home/berte/playground/poky/build/tmp/sysroots/x86=
_64-linux/usr/lib -L/home/berte/playground/poky/build/tmp/sysroots/x86_64-l=
inux/lib -Wl,-rpath-link,/home/berte/playground/poky/build/tmp/sysroots/x86=
_64-linux/usr/lib -Wl,-rpath-link,/home/berte/playground/poky/build/tmp/sys=
roots/x86_64-linux/lib -Wl,-rpath,/home/berte/playground/poky/build/tmp/sys=
roots/x86_64-linux/usr/lib -Wl,-rpath,/home/berte/playground/poky/build/tmp=
/sysroots/x86_64-linux/lib -Wl,-O1 -fstack-protector -L/usr/local/lib]<br>|=
 Checking your choice of C compiler and flags for coherency...<br>| I&#39;v=
e tried to compile and run the following simple program:<br>| <br>| #includ=
e &lt;stdio.h&gt;<br>| int main() { printf(&quot;Ok\n&quot;); return(0); }<=
br>| <br>| I used the command:<br>| <br>| =C2=A0=C2=A0=C2=A0 gcc -o try -O2=
 -D_REENTRANT -D_GNU_SOURCE -fno-strict-aliasing -pipe -fstack-protector -L=
/home/berte/playground/poky/build/tmp/sysroots/x86_64-linux/usr/lib -L/home=
/berte/playground/poky/build/tmp/sysroots/x86_64-linux/lib -Wl,-rpath-link,=
/home/berte/playground/poky/build/tmp/sysroots/x86_64-linux/usr/lib -Wl,-rp=
ath-link,/home/berte/playground/poky/build/tmp/sysroots/x86_64-linux/lib -W=
l,-rpath,/home/berte/playground/poky/build/tmp/sysroots/x86_64-linux/usr/li=
b -Wl,-rpath,/home/berte/playground/poky/build/tmp/sysroots/x86_64-linux/li=
b -Wl,-O1 -fstack-protector -L/usr/local/lib try.c -lnsl -lnm -lgdbm -ldb -=
ldl -lm -lcrypt -lutil -lpthread -lc -lgdbm_compat<br>| =C2=A0=C2=A0=C2=A0 =
=C2=A0./try<br>| <br>| and I got the following output:<br>| <br>| /usr/lib/=
gcc/x86_64-pc-linux-gnu/5.3.0/../../../../lib64/libnm.so: undefined referen=
ce to `g_type_add_instance_private&#39;<br>| /usr/lib/gcc/x86_64-pc-linux-g=
nu/5.3.0/../../../../lib64/libnm.so: undefined reference to `g_type_class_a=
djust_private_offset&#39;<br>| collect2: error: ld returned 1 exit status<b=
r><br><br></div>I know my distro (Gentoo x86_64) not officially supports bu=
t when I try that step with manually I&#39;m getting result is expected lik=
e as below:<br><br>time gcc -o try -O2 -D_REENTRANT -D_GNU_SOURCE -fno-stri=
ct-aliasing -pipe -fstack-protector -Wl,-rpath-link -Wl,-O1 -fstack-protect=
or -L/usr/local/lib try.c -lnsl -lnm -lgdbm -ldb -ldl -lm -lcrypt -lutil -l=
pthread -lc -lgdbm_compat<br><br>real=C2=A0=C2=A0=C2=A0 0m0.146s<br>user=C2=
=A0=C2=A0=C2=A0 0m0.127s<br>sys=C2=A0=C2=A0=C2=A0 0m0.026s<br><br>time ./tr=
y <br>Ok<br><br>real=C2=A0=C2=A0=C2=A0 0m0.007s<br>user=C2=A0=C2=A0=C2=A0 0=
m0.002s<br>sys=C2=A0=C2=A0=C2=A0 0m0.005s<br><br><br></div>I guess -rpath-l=
ink causing some problem with linker but somehow I did not get exact root c=
ause. If someone has any idea with this problem it would be more than welco=
me.<br><br></div><div>cheers,<br></div><div>-berte.<br></div></div><div><di=
v><div><div><div><div><div><br></div></div></div></div></div></div></div></=
div>

--94eb2c0d4dcc3a346d05359f6281--
