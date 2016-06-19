Return-Path: <behzaterte@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D26C4E00798; Sun, 19 Jun 2016 05:39:59 -0700 (PDT)
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
	*      [209.85.213.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f44.google.com (mail-vk0-f44.google.com
	[209.85.213.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DCB87E006D3
	for <poky@yoctoproject.org>; Sun, 19 Jun 2016 05:39:56 -0700 (PDT)
Received: by mail-vk0-f44.google.com with SMTP id t129so166902721vka.1
	for <poky@yoctoproject.org>; Sun, 19 Jun 2016 05:39:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=NNF52WAlJ+5sOn9+qPMzrcs7OCqyo8D44jb+HE0tM/M=;
	b=L35yZXFTC+B21zh5rWeVmxbAbszIc1XxsL+GKLrLAxRKF31/w6NWBdrwlKoyEwQ5yK
	GBsFGIMfWz1vR//6VmCSgTUC6fwzZXxO/UzVR9OysYObpYx5TrRVreWZXMUTn4nmovS5
	8qQxmUviIZPSIHwa/ZXdLBDC/ujhv7mmixg4mPRXvTJcah3ZKesThOYwaNKjZdNSxOm7
	DDu6YW7kkTJxkzKEP62Pg5rqLcrIwm46nsJjYwesc5c9XGth5Nx7SvVDB68Ym3LHofgM
	1d2INYvflkJ881hbvVb3iUKBvs+oi68jRaWpM8saRugvTFtDCkUhIMB/hnVeApzN7cH2
	lQuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=NNF52WAlJ+5sOn9+qPMzrcs7OCqyo8D44jb+HE0tM/M=;
	b=cABw2JV5CJwM+5EmnyJpME6goa7qklwmTj5T1MD7Q6sWjv3A72sp8y79qT33OkBWnS
	vu3qLcdCRlBSFORukaC+ltAEmY7701/aobfjWvmwdV0LOClpqC7i19IxgALyM2qAr/6D
	6YAc1LC6Kr3CLGWRJYA/vxReZ7ysatHQH+Fx1A68I4nitqYQ34r5k34ha3ef+F82+/dR
	V0CONb649H+lTiV/2bACu6fl9kP3jzgd7wqI5njWCerplr0wKCVjR2WBNJ8ogRKV93eu
	8Nf9n8diys2TGxl8IUjhN+WxQtB2RgyEe4GjInVoUof3fq9UiYH/VlOuSHnM0krLkMVi
	TdCQ==
X-Gm-Message-State: ALyK8tL4gm0tzcfkxUhu5Um55/JSWuGCIitx5xgCdUEFxY7u3zG5kU85I1wBd/Y7Sz0auv2ILeDTHGMKAFnmUg==
X-Received: by 10.176.67.3 with SMTP id k3mr4726742uak.48.1466339995810; Sun,
	19 Jun 2016 05:39:55 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.0.166 with HTTP; Sun, 19 Jun 2016 05:39:55 -0700 (PDT)
In-Reply-To: <576682A7.4000804@mlbassoc.com>
References: <CAMos0+P5U5hjaLF20tFAGKtLADiydJVfiGSVnwYansAD0Bw0aA@mail.gmail.com>
	<576682A7.4000804@mlbassoc.com>
From: Behzat Erte <behzaterte@gmail.com>
Date: Sun, 19 Jun 2016 15:39:55 +0300
Message-ID: <CAMos0+NmPtdjYR9pqEeXHVaUTGdN3oi-rYKdeMzN0FPEzqvxmA@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: poky@yoctoproject.org
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
X-List-Received-Date: Sun, 19 Jun 2016 12:39:59 -0000
Content-Type: multipart/alternative; boundary=94eb2c0d4dcc91ff510535a0e291

--94eb2c0d4dcc91ff510535a0e291
Content-Type: text/plain; charset=UTF-8

Hi Gary,

Thanks for your advice.

You can find my information and do_compile outputs as below.

bitbake outputs:
http://paste.ubuntu.com/17533450/
http://paste.ubuntu.com/17533470/

poky version:
http://paste.ubuntu.com/17533675/

distro info:
http://paste.ubuntu.com/17533957/

Please, feel free to let me know if you require any further information.

Cheers,
-berte.




2016-06-19 14:31 GMT+03:00 Gary Thomas <gary@mlbassoc.com>:

> On 06/19/2016 12:52 PM, Behzat Erte wrote:
>
>> Hello all,
>>
>> I'm trying to compile core-image-minimal for qemuarm machine. However
>> when poky make do_compile step for perl package
>> I'm getting linker error as below:
>>
>> ERROR: Function failed: do_configure (log file is located at
>>
>> /home/berte/playground/poky/build/tmp/work/x86_64-linux/perl-native/5.14.3-r0/temp/log.do_configure.27295)
>> ERROR: Logfile of failure stored in:
>>
>> /home/berte/playground/poky/build/tmp/work/x86_64-linux/perl-native/5.14.3-r0/temp/log.do_configure.27295
>> Log data follows:
>> | DEBUG: Executing python function sysroot_cleansstate
>> | DEBUG: Python function sysroot_cleansstate finished
>> | DEBUG: Executing shell function do_configure
>> | First let's make sure your kit is complete.  Checking...
>> | Would you like to see the instructions? [n]
>> | Locating common programs...
>> | Checking compatibility between /bin/echo and builtin echo (if any)...
>> | Symbolic links are supported.
>> | Checking how to test for symbolic links...
>> | You can test for symbolic links with 'test -h'.
>> | Good, your tr supports [:lower:] and [:upper:] to convert case.
>> | Using [:upper:] and [:lower:] to convert case.
>> | 3b1             dragonfly       irix_6_0        opus           super-ux
>> | aix             dynix             irix_6_1        os2           svr4
>> | aix_3         dynixptx        isc             os390           svr5
>> | aix_4         epix             isc_2             os400           ti1500
>> | altos486      esix4             linux             posix-bc      titanos
>> | amigaos       fps             lynxos          powerux       ultrix_4
>> | atheos        freebsd         midnightbsd     qnx           umips
>> | aux_3         genix             mips             rhapsody      unicos
>> | beos          gnu             mirbsd          riscos        unicosmk
>> | bsdos         gnukfreebsd     mpc             sco           unisysdynix
>> | catamount     gnuknetbsd      mpeix             sco_2_3_0     utekv
>> | convexos      greenhills      ncr_tower       sco_2_3_1     uts
>> | cxux          haiku             netbsd          sco_2_3_2     uwin
>> | cygwin        hpux             newsos4         sco_2_3_3     vmesa
>> | darwin        i386             next_3          sco_2_3_4     vos
>> | dcosx         interix         next_3_0        solaris_2
>> | dec_osf       irix_4          next_4          stellar
>> | dgux          irix_5          nonstopux       sunos_4_0
>> | dos_djgpp     irix_6          openbsd         sunos_4_1
>> | Which of these apply, if any? [linux]
>> |
>> | You appear to have ELF support.  I'll try to use it for dynamic loading.
>> | If dynamic loading doesn't work, read hints/linux.sh for further
>> information.
>> | nm: /usr/lib/libdb.so: no symbols
>> | nm: /usr/lib64/libdb.so: no symbols
>> | nm: /usr/lib64/libdb.so: no symbols
>> | Operating system name? [linux]
>> | Operating system version? [4.4.6-gentoo]
>> | Installation prefix to use? (~name ok)
>> | [/home/berte/playground/poky/build/tmp/sysroots/x86_64-linux/usr]
>> | AFS does not seem to be running...
>> | What installation prefix should I use for installing files? (~name ok)
>> | [/home/berte/playground/poky/build/tmp/sysroots/x86_64-linux/usr]
>> | Build Perl for SOCKS? [n]
>> | Use the PerlIO abstraction layer? [y]
>> | Getting the current patchlevel...
>> | Build a threading Perl? [y]
>> | Use which C compiler? [gcc ]
>> | Checking for GNU cc in disguise and/or its version number...
>> | Now, how can we feed standard input to your C preprocessor...
>> | Directories to use for library searches?
>> | [/usr/local/lib /lib/../lib64 /usr/lib/../lib64 /lib /usr/lib /lib64
>> /usr/lib64 /usr/local/lib64]
>> | What is the file extension used for shared libraries? [so]
>> | Try to use long doubles if available? [n]
>> | Checking for optional libraries...
>> | What libraries to use?
>> | [-lnsl -lnm -lgdbm -ldb -ldl -lm -lcrypt -lutil -lpthread -lc
>> -lgdbm_compat]
>> | What optimizer/debugger flag should be used? [-O2]
>> | Any additional cc flags?
>> | [-D_REENTRANT -D_GNU_SOURCE -fno-strict-aliasing -pipe
>> -fstack-protector]
>> | Let me guess what the preprocessor flags are...
>> | Any additional ld flags (NOT including libraries)?
>> | [-L/home/berte/playground/poky/build/tmp/sysroots/x86_64-linux/usr/lib
>> -L/home/berte/playground/poky/build/tmp/sysroots/x86_64-linux/lib
>>
>> -Wl,-rpath-link,/home/berte/playground/poky/build/tmp/sysroots/x86_64-linux/usr/lib
>>
>> -Wl,-rpath-link,/home/berte/playground/poky/build/tmp/sysroots/x86_64-linux/lib
>>
>> -Wl,-rpath,/home/berte/playground/poky/build/tmp/sysroots/x86_64-linux/usr/lib
>> -Wl,-rpath,/home/berte/playground/poky/build/tmp/sysroots/x86_64-linux/lib
>> -Wl,-O1 -fstack-protector -L/usr/local/lib]
>> | Checking your choice of C compiler and flags for coherency...
>> | I've tried to compile and run the following simple program:
>> |
>> | #include <stdio.h>
>> | int main() { printf("Ok\n"); return(0); }
>> |
>> | I used the command:
>> |
>> |     gcc -o try -O2 -D_REENTRANT -D_GNU_SOURCE -fno-strict-aliasing
>> -pipe -fstack-protector
>> -L/home/berte/playground/poky/build/tmp/sysroots/x86_64-linux/usr/lib
>> -L/home/berte/playground/poky/build/tmp/sysroots/x86_64-linux/lib
>>
>> -Wl,-rpath-link,/home/berte/playground/poky/build/tmp/sysroots/x86_64-linux/usr/lib
>>
>> -Wl,-rpath-link,/home/berte/playground/poky/build/tmp/sysroots/x86_64-linux/lib
>>
>> -Wl,-rpath,/home/berte/playground/poky/build/tmp/sysroots/x86_64-linux/usr/lib
>> -Wl,-rpath,/home/berte/playground/poky/build/tmp/sysroots/x86_64-linux/lib
>> -Wl,-O1 -fstack-protector -L/usr/local/lib
>> try.c -lnsl -lnm -lgdbm -ldb -ldl -lm -lcrypt -lutil -lpthread -lc
>> -lgdbm_compat
>> |      ./try
>> |
>> | and I got the following output:
>> |
>> | /usr/lib/gcc/x86_64-pc-linux-gnu/5.3.0/../../../../lib64/libnm.so:
>> undefined reference to `g_type_add_instance_private'
>> | /usr/lib/gcc/x86_64-pc-linux-gnu/5.3.0/../../../../lib64/libnm.so:
>> undefined reference to
>> `g_type_class_adjust_private_offset'
>> | collect2: error: ld returned 1 exit status
>>
>>
>> I know my distro (Gentoo x86_64) not officially supports but when I try
>> that step with manually I'm getting result is
>> expected like as below:
>>
>> time gcc -o try -O2 -D_REENTRANT -D_GNU_SOURCE -fno-strict-aliasing -pipe
>> -fstack-protector -Wl,-rpath-link -Wl,-O1
>> -fstack-protector -L/usr/local/lib try.c -lnsl -lnm -lgdbm -ldb -ldl -lm
>> -lcrypt -lutil -lpthread -lc -lgdbm_compat
>>
>> real    0m0.146s
>> user    0m0.127s
>> sys    0m0.026s
>>
>> time ./try
>> Ok
>>
>> real    0m0.007s
>> user    0m0.002s
>> sys    0m0.005s
>>
>>
>> I guess -rpath-link causing some problem with linker but somehow I did
>> not get exact root cause. If someone has any idea
>> with this problem it would be more than welcome.
>>
>
> More details would be useful.  When you run bitbake, it provides a lot
> of information about your host/distro/versions/...  Please provide that
> to help diagnose the problem.
>
> --
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

--94eb2c0d4dcc91ff510535a0e291
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div><div>Hi Gary,<br><br></div>T=
hanks for your advice. <br><br></div>You can find my information and do_com=
pile outputs as below.<br><br>bitbake outputs:<br><a href=3D"http://paste.u=
buntu.com/17533450/">http://paste.ubuntu.com/17533450/</a><br><a href=3D"ht=
tp://paste.ubuntu.com/17533470/">http://paste.ubuntu.com/17533470/</a><br><=
br></div>poky version:<br><a href=3D"http://paste.ubuntu.com/17533675/">htt=
p://paste.ubuntu.com/17533675/</a><br><br></div>distro info:<br><a href=3D"=
http://paste.ubuntu.com/17533957/">http://paste.ubuntu.com/17533957/</a><br=
><br></div></div><div>Please, feel free to let me know if you require any f=
urther information.<br><br></div>Cheers,<br></div>-berte.<br><div><div><div=
><div><div><div><div><br><br><br></div></div></div></div></div></div></div>=
</div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">2016-06-19 =
14:31 GMT+03:00 Gary Thomas <span dir=3D"ltr">&lt;<a href=3D"mailto:gary@ml=
bassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</span>:<br><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc s=
olid;padding-left:1ex"><div class=3D"HOEnZb"><div class=3D"h5">On 06/19/201=
6 12:52 PM, Behzat Erte wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Hello all,<br>
<br>
I&#39;m trying to compile core-image-minimal for qemuarm machine. However w=
hen poky make do_compile step for perl package<br>
I&#39;m getting linker error as below:<br>
<br>
ERROR: Function failed: do_configure (log file is located at<br>
/home/berte/playground/poky/build/tmp/work/x86_64-linux/perl-native/5.14.3-=
r0/temp/log.do_configure.27295)<br>
ERROR: Logfile of failure stored in:<br>
/home/berte/playground/poky/build/tmp/work/x86_64-linux/perl-native/5.14.3-=
r0/temp/log.do_configure.27295<br>
Log data follows:<br>
| DEBUG: Executing python function sysroot_cleansstate<br>
| DEBUG: Python function sysroot_cleansstate finished<br>
| DEBUG: Executing shell function do_configure<br>
| First let&#39;s make sure your kit is complete.=C2=A0 Checking...<br>
| Would you like to see the instructions? [n]<br>
| Locating common programs...<br>
| Checking compatibility between /bin/echo and builtin echo (if any)...<br>
| Symbolic links are supported.<br>
| Checking how to test for symbolic links...<br>
| You can test for symbolic links with &#39;test -h&#39;.<br>
| Good, your tr supports [:lower:] and [:upper:] to convert case.<br>
| Using [:upper:] and [:lower:] to convert case.<br>
| 3b1=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dragonfly=C2=A0 =C2=A0=
 =C2=A0 =C2=A0irix_6_0=C2=A0 =C2=A0 =C2=A0 =C2=A0 opus=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0super-ux<br>
| aix=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dynix=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0irix_6_1=C2=A0 =C2=A0 =C2=A0 =C2=A0 os2=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0svr4<br>
| aix_3=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dynixptx=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 isc=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0os390=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0svr5<br>
| aix_4=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0epix=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0isc_2=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0os=
400=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ti1500<br>
| altos486=C2=A0 =C2=A0 =C2=A0 esix4=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0linux=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0posix-bc=C2=
=A0 =C2=A0 =C2=A0 titanos<br>
| amigaos=C2=A0 =C2=A0 =C2=A0 =C2=A0fps=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0lynxos=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 powerux=C2=A0 =C2=A0 =
=C2=A0 =C2=A0ultrix_4<br>
| atheos=C2=A0 =C2=A0 =C2=A0 =C2=A0 freebsd=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0midnightbsd=C2=A0 =C2=A0 =C2=A0qnx=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0umips<br>
| aux_3=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0genix=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0mips=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rha=
psody=C2=A0 =C2=A0 =C2=A0 unicos<br>
| beos=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 gnu=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0mirbsd=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 riscos=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 unicosmk<br>
| bsdos=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0gnukfreebsd=C2=A0 =C2=A0 =C2=A0mpc=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0sco=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0unisysdynix<br>
| catamount=C2=A0 =C2=A0 =C2=A0gnuknetbsd=C2=A0 =C2=A0 =C2=A0 mpeix=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0sco_2_3_0=C2=A0 =C2=A0 =C2=A0utekv=
<br>
| convexos=C2=A0 =C2=A0 =C2=A0 greenhills=C2=A0 =C2=A0 =C2=A0 ncr_tower=C2=
=A0 =C2=A0 =C2=A0 =C2=A0sco_2_3_1=C2=A0 =C2=A0 =C2=A0uts<br>
| cxux=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 haiku=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0netbsd=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 sco_2_3_2=C2=
=A0 =C2=A0 =C2=A0uwin<br>
| cygwin=C2=A0 =C2=A0 =C2=A0 =C2=A0 hpux=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0newsos4=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0sco_2_3_3=C2=A0 =C2=
=A0 =C2=A0vmesa<br>
| darwin=C2=A0 =C2=A0 =C2=A0 =C2=A0 i386=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0next_3=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 sco_2_3_4=C2=A0 =C2=
=A0 =C2=A0vos<br>
| dcosx=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0interix=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0next_3_0=C2=A0 =C2=A0 =C2=A0 =C2=A0 solaris_2<br>
| dec_osf=C2=A0 =C2=A0 =C2=A0 =C2=A0irix_4=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 next_4=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 stellar<br>
| dgux=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 irix_5=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 nonstopux=C2=A0 =C2=A0 =C2=A0 =C2=A0sunos_4_0<br>
| dos_djgpp=C2=A0 =C2=A0 =C2=A0irix_6=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ope=
nbsd=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0sunos_4_1<br>
| Which of these apply, if any? [linux]<br>
|<br>
| You appear to have ELF support.=C2=A0 I&#39;ll try to use it for dynamic =
loading.<br>
| If dynamic loading doesn&#39;t work, read hints/linux.sh for further info=
rmation.<br>
| nm: /usr/lib/libdb.so: no symbols<br>
| nm: /usr/lib64/libdb.so: no symbols<br>
| nm: /usr/lib64/libdb.so: no symbols<br>
| Operating system name? [linux]<br>
| Operating system version? [4.4.6-gentoo]<br>
| Installation prefix to use? (~name ok)<br>
| [/home/berte/playground/poky/build/tmp/sysroots/x86_64-linux/usr]<br>
| AFS does not seem to be running...<br>
| What installation prefix should I use for installing files? (~name ok)<br=
>
| [/home/berte/playground/poky/build/tmp/sysroots/x86_64-linux/usr]<br>
| Build Perl for SOCKS? [n]<br>
| Use the PerlIO abstraction layer? [y]<br>
| Getting the current patchlevel...<br>
| Build a threading Perl? [y]<br>
| Use which C compiler? [gcc ]<br>
| Checking for GNU cc in disguise and/or its version number...<br>
| Now, how can we feed standard input to your C preprocessor...<br>
| Directories to use for library searches?<br>
| [/usr/local/lib /lib/../lib64 /usr/lib/../lib64 /lib /usr/lib /lib64 /usr=
/lib64 /usr/local/lib64]<br>
| What is the file extension used for shared libraries? [so]<br>
| Try to use long doubles if available? [n]<br>
| Checking for optional libraries...<br>
| What libraries to use?<br>
| [-lnsl -lnm -lgdbm -ldb -ldl -lm -lcrypt -lutil -lpthread -lc -lgdbm_comp=
at]<br>
| What optimizer/debugger flag should be used? [-O2]<br>
| Any additional cc flags?<br>
| [-D_REENTRANT -D_GNU_SOURCE -fno-strict-aliasing -pipe -fstack-protector]=
<br>
| Let me guess what the preprocessor flags are...<br>
| Any additional ld flags (NOT including libraries)?<br>
| [-L/home/berte/playground/poky/build/tmp/sysroots/x86_64-linux/usr/lib<br=
>
-L/home/berte/playground/poky/build/tmp/sysroots/x86_64-linux/lib<br>
-Wl,-rpath-link,/home/berte/playground/poky/build/tmp/sysroots/x86_64-linux=
/usr/lib<br>
-Wl,-rpath-link,/home/berte/playground/poky/build/tmp/sysroots/x86_64-linux=
/lib<br>
-Wl,-rpath,/home/berte/playground/poky/build/tmp/sysroots/x86_64-linux/usr/=
lib<br>
-Wl,-rpath,/home/berte/playground/poky/build/tmp/sysroots/x86_64-linux/lib =
-Wl,-O1 -fstack-protector -L/usr/local/lib]<br>
| Checking your choice of C compiler and flags for coherency...<br>
| I&#39;ve tried to compile and run the following simple program:<br>
|<br>
| #include &lt;stdio.h&gt;<br>
| int main() { printf(&quot;Ok\n&quot;); return(0); }<br>
|<br>
| I used the command:<br>
|<br>
|=C2=A0 =C2=A0 =C2=A0gcc -o try -O2 -D_REENTRANT -D_GNU_SOURCE -fno-strict-=
aliasing -pipe -fstack-protector<br>
-L/home/berte/playground/poky/build/tmp/sysroots/x86_64-linux/usr/lib<br>
-L/home/berte/playground/poky/build/tmp/sysroots/x86_64-linux/lib<br>
-Wl,-rpath-link,/home/berte/playground/poky/build/tmp/sysroots/x86_64-linux=
/usr/lib<br>
-Wl,-rpath-link,/home/berte/playground/poky/build/tmp/sysroots/x86_64-linux=
/lib<br>
-Wl,-rpath,/home/berte/playground/poky/build/tmp/sysroots/x86_64-linux/usr/=
lib<br>
-Wl,-rpath,/home/berte/playground/poky/build/tmp/sysroots/x86_64-linux/lib =
-Wl,-O1 -fstack-protector -L/usr/local/lib<br>
try.c -lnsl -lnm -lgdbm -ldb -ldl -lm -lcrypt -lutil -lpthread -lc -lgdbm_c=
ompat<br>
|=C2=A0 =C2=A0 =C2=A0 ./try<br>
|<br>
| and I got the following output:<br>
|<br>
| /usr/lib/gcc/x86_64-pc-linux-gnu/5.3.0/../../../../lib64/libnm.so: undefi=
ned reference to `g_type_add_instance_private&#39;<br>
| /usr/lib/gcc/x86_64-pc-linux-gnu/5.3.0/../../../../lib64/libnm.so: undefi=
ned reference to<br>
`g_type_class_adjust_private_offset&#39;<br>
| collect2: error: ld returned 1 exit status<br>
<br>
<br>
I know my distro (Gentoo x86_64) not officially supports but when I try tha=
t step with manually I&#39;m getting result is<br>
expected like as below:<br>
<br>
time gcc -o try -O2 -D_REENTRANT -D_GNU_SOURCE -fno-strict-aliasing -pipe -=
fstack-protector -Wl,-rpath-link -Wl,-O1<br>
-fstack-protector -L/usr/local/lib try.c -lnsl -lnm -lgdbm -ldb -ldl -lm -l=
crypt -lutil -lpthread -lc -lgdbm_compat<br>
<br>
real=C2=A0 =C2=A0 0m0.146s<br>
user=C2=A0 =C2=A0 0m0.127s<br>
sys=C2=A0 =C2=A0 0m0.026s<br>
<br>
time ./try<br>
Ok<br>
<br>
real=C2=A0 =C2=A0 0m0.007s<br>
user=C2=A0 =C2=A0 0m0.002s<br>
sys=C2=A0 =C2=A0 0m0.005s<br>
<br>
<br>
I guess -rpath-link causing some problem with linker but somehow I did not =
get exact root cause. If someone has any idea<br>
with this problem it would be more than welcome.<br>
</blockquote>
<br></div></div>
More details would be useful.=C2=A0 When you run bitbake, it provides a lot=
<br>
of information about your host/distro/versions/...=C2=A0 Please provide tha=
t<br>
to help diagnose the problem.<span class=3D"HOEnZb"><font color=3D"#888888"=
><br>
<br>
-- <br>
------------------------------------------------------------<br>
Gary Thomas=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=
=C2=A0 Consulting for the<br>
MLB Associates=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=
=A0 Embedded world<br>
------------------------------------------------------------<br>
-- <br>
_______________________________________________<br>
poky mailing list<br>
<a href=3D"mailto:poky@yoctoproject.org" target=3D"_blank">poky@yoctoprojec=
t.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/poky" rel=3D"noreferrer"=
 target=3D"_blank">https://lists.yoctoproject.org/listinfo/poky</a><br>
</font></span></blockquote></div><br></div>

--94eb2c0d4dcc91ff510535a0e291--
