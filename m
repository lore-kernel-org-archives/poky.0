Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EC0BBE006D3; Sun, 19 Jun 2016 04:40:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 530 seconds by postgrey-1.32 at yocto-www;
	Sun, 19 Jun 2016 04:40:46 PDT
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C117CE006D3
	for <poky@yoctoproject.org>; Sun, 19 Jun 2016 04:40:46 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 48FE168A01A; Sun, 19 Jun 2016 12:31:55 +0100 (BST)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id C1D6068A019;
	Sun, 19 Jun 2016 12:31:52 +0100 (BST)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id 6692A6740072;
	Sun, 19 Jun 2016 13:31:52 +0200 (CEST)
To: poky@yoctoproject.org
References: <CAMos0+P5U5hjaLF20tFAGKtLADiydJVfiGSVnwYansAD0Bw0aA@mail.gmail.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <576682A7.4000804@mlbassoc.com>
Date: Sun, 19 Jun 2016 13:31:51 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.8.0
MIME-Version: 1.0
In-Reply-To: <CAMos0+P5U5hjaLF20tFAGKtLADiydJVfiGSVnwYansAD0Bw0aA@mail.gmail.com>
Subject: Re: perl do_compile issue
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
X-List-Received-Date: Sun, 19 Jun 2016 11:40:49 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 06/19/2016 12:52 PM, Behzat Erte wrote:
> Hello all,
>
> I'm trying to compile core-image-minimal for qemuarm machine. However when poky make do_compile step for perl package
> I'm getting linker error as below:
>
> ERROR: Function failed: do_configure (log file is located at
> /home/berte/playground/poky/build/tmp/work/x86_64-linux/perl-native/5.14.3-r0/temp/log.do_configure.27295)
> ERROR: Logfile of failure stored in:
> /home/berte/playground/poky/build/tmp/work/x86_64-linux/perl-native/5.14.3-r0/temp/log.do_configure.27295
> Log data follows:
> | DEBUG: Executing python function sysroot_cleansstate
> | DEBUG: Python function sysroot_cleansstate finished
> | DEBUG: Executing shell function do_configure
> | First let's make sure your kit is complete.  Checking...
> | Would you like to see the instructions? [n]
> | Locating common programs...
> | Checking compatibility between /bin/echo and builtin echo (if any)...
> | Symbolic links are supported.
> | Checking how to test for symbolic links...
> | You can test for symbolic links with 'test -h'.
> | Good, your tr supports [:lower:] and [:upper:] to convert case.
> | Using [:upper:] and [:lower:] to convert case.
> | 3b1             dragonfly       irix_6_0        opus           super-ux
> | aix             dynix             irix_6_1        os2           svr4
> | aix_3         dynixptx        isc             os390           svr5
> | aix_4         epix             isc_2             os400           ti1500
> | altos486      esix4             linux             posix-bc      titanos
> | amigaos       fps             lynxos          powerux       ultrix_4
> | atheos        freebsd         midnightbsd     qnx           umips
> | aux_3         genix             mips             rhapsody      unicos
> | beos          gnu             mirbsd          riscos        unicosmk
> | bsdos         gnukfreebsd     mpc             sco           unisysdynix
> | catamount     gnuknetbsd      mpeix             sco_2_3_0     utekv
> | convexos      greenhills      ncr_tower       sco_2_3_1     uts
> | cxux          haiku             netbsd          sco_2_3_2     uwin
> | cygwin        hpux             newsos4         sco_2_3_3     vmesa
> | darwin        i386             next_3          sco_2_3_4     vos
> | dcosx         interix         next_3_0        solaris_2
> | dec_osf       irix_4          next_4          stellar
> | dgux          irix_5          nonstopux       sunos_4_0
> | dos_djgpp     irix_6          openbsd         sunos_4_1
> | Which of these apply, if any? [linux]
> |
> | You appear to have ELF support.  I'll try to use it for dynamic loading.
> | If dynamic loading doesn't work, read hints/linux.sh for further information.
> | nm: /usr/lib/libdb.so: no symbols
> | nm: /usr/lib64/libdb.so: no symbols
> | nm: /usr/lib64/libdb.so: no symbols
> | Operating system name? [linux]
> | Operating system version? [4.4.6-gentoo]
> | Installation prefix to use? (~name ok)
> | [/home/berte/playground/poky/build/tmp/sysroots/x86_64-linux/usr]
> | AFS does not seem to be running...
> | What installation prefix should I use for installing files? (~name ok)
> | [/home/berte/playground/poky/build/tmp/sysroots/x86_64-linux/usr]
> | Build Perl for SOCKS? [n]
> | Use the PerlIO abstraction layer? [y]
> | Getting the current patchlevel...
> | Build a threading Perl? [y]
> | Use which C compiler? [gcc ]
> | Checking for GNU cc in disguise and/or its version number...
> | Now, how can we feed standard input to your C preprocessor...
> | Directories to use for library searches?
> | [/usr/local/lib /lib/../lib64 /usr/lib/../lib64 /lib /usr/lib /lib64 /usr/lib64 /usr/local/lib64]
> | What is the file extension used for shared libraries? [so]
> | Try to use long doubles if available? [n]
> | Checking for optional libraries...
> | What libraries to use?
> | [-lnsl -lnm -lgdbm -ldb -ldl -lm -lcrypt -lutil -lpthread -lc -lgdbm_compat]
> | What optimizer/debugger flag should be used? [-O2]
> | Any additional cc flags?
> | [-D_REENTRANT -D_GNU_SOURCE -fno-strict-aliasing -pipe -fstack-protector]
> | Let me guess what the preprocessor flags are...
> | Any additional ld flags (NOT including libraries)?
> | [-L/home/berte/playground/poky/build/tmp/sysroots/x86_64-linux/usr/lib
> -L/home/berte/playground/poky/build/tmp/sysroots/x86_64-linux/lib
> -Wl,-rpath-link,/home/berte/playground/poky/build/tmp/sysroots/x86_64-linux/usr/lib
> -Wl,-rpath-link,/home/berte/playground/poky/build/tmp/sysroots/x86_64-linux/lib
> -Wl,-rpath,/home/berte/playground/poky/build/tmp/sysroots/x86_64-linux/usr/lib
> -Wl,-rpath,/home/berte/playground/poky/build/tmp/sysroots/x86_64-linux/lib -Wl,-O1 -fstack-protector -L/usr/local/lib]
> | Checking your choice of C compiler and flags for coherency...
> | I've tried to compile and run the following simple program:
> |
> | #include <stdio.h>
> | int main() { printf("Ok\n"); return(0); }
> |
> | I used the command:
> |
> |     gcc -o try -O2 -D_REENTRANT -D_GNU_SOURCE -fno-strict-aliasing -pipe -fstack-protector
> -L/home/berte/playground/poky/build/tmp/sysroots/x86_64-linux/usr/lib
> -L/home/berte/playground/poky/build/tmp/sysroots/x86_64-linux/lib
> -Wl,-rpath-link,/home/berte/playground/poky/build/tmp/sysroots/x86_64-linux/usr/lib
> -Wl,-rpath-link,/home/berte/playground/poky/build/tmp/sysroots/x86_64-linux/lib
> -Wl,-rpath,/home/berte/playground/poky/build/tmp/sysroots/x86_64-linux/usr/lib
> -Wl,-rpath,/home/berte/playground/poky/build/tmp/sysroots/x86_64-linux/lib -Wl,-O1 -fstack-protector -L/usr/local/lib
> try.c -lnsl -lnm -lgdbm -ldb -ldl -lm -lcrypt -lutil -lpthread -lc -lgdbm_compat
> |      ./try
> |
> | and I got the following output:
> |
> | /usr/lib/gcc/x86_64-pc-linux-gnu/5.3.0/../../../../lib64/libnm.so: undefined reference to `g_type_add_instance_private'
> | /usr/lib/gcc/x86_64-pc-linux-gnu/5.3.0/../../../../lib64/libnm.so: undefined reference to
> `g_type_class_adjust_private_offset'
> | collect2: error: ld returned 1 exit status
>
>
> I know my distro (Gentoo x86_64) not officially supports but when I try that step with manually I'm getting result is
> expected like as below:
>
> time gcc -o try -O2 -D_REENTRANT -D_GNU_SOURCE -fno-strict-aliasing -pipe -fstack-protector -Wl,-rpath-link -Wl,-O1
> -fstack-protector -L/usr/local/lib try.c -lnsl -lnm -lgdbm -ldb -ldl -lm -lcrypt -lutil -lpthread -lc -lgdbm_compat
>
> real    0m0.146s
> user    0m0.127s
> sys    0m0.026s
>
> time ./try
> Ok
>
> real    0m0.007s
> user    0m0.002s
> sys    0m0.005s
>
>
> I guess -rpath-link causing some problem with linker but somehow I did not get exact root cause. If someone has any idea
> with this problem it would be more than welcome.

More details would be useful.  When you run bitbake, it provides a lot
of information about your host/distro/versions/...  Please provide that
to help diagnose the problem.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

