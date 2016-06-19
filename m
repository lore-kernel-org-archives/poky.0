Return-Path: <behzaterte@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 882B8E00AAB; Sun, 19 Jun 2016 11:00:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.47 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (behzaterte[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f47.google.com (mail-vk0-f47.google.com
	[209.85.213.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F553E009CF
	for <poky@yoctoproject.org>; Sun, 19 Jun 2016 11:00:01 -0700 (PDT)
Received: by mail-vk0-f47.google.com with SMTP id u64so171712740vkf.3
	for <poky@yoctoproject.org>; Sun, 19 Jun 2016 11:00:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=bdMtk1X4O4tTTU/SvoxeIS1bTEYS/veCzHQbou0f5DU=;
	b=YUCjfDHWNeZMhjirdW3VgVU8hRoHZTUa2jTIc2TAsrdKRL1J+G7AW8tsW65feS28fY
	NUuijFbn1eQ3qxujXWDPeR+QCrjX/3Oq8q9KlKI8zkpWejyTDXEelAK7Bv5warrA5FQZ
	i+pyusSfncp3pgtXhF5+FziG1gWZJNKvpPaIn7nHxsTG+gkOiv55+SX9QPb3KkW24ega
	Lsc1MOBX2VcblinoxWYfFNnz905elXXDkG8VKkXVIXyVNz4lfxnc9C3rZYIr/JGaSi+9
	4ozXW70rxHm838ak2nPp5Hdxb3twqxXMPZUppgIq4BvaXjjfZR7YO3Ty+xF7DZSCXCiN
	AUFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=bdMtk1X4O4tTTU/SvoxeIS1bTEYS/veCzHQbou0f5DU=;
	b=mxD2CRj4aAEhoUTIKooPaJcZ11XZs8TWKJfEuH7pYiGtNQ6aLuTIYqjRFUzbRXyAkp
	eEssxRCFqwKyHM2+ebZkk8ZYTgJ9ZmuX2DqTsHr08PONWj7sBxhiwXS72gxhbRuIQnVU
	RPj+wLuyMG8xvSV0EJXaqMja6LrEWspZOYT8I1EZwgzMUZHsD/xGhkHz8PQLMS/SOauW
	VehW3BhV1Uwqm1dxf3rtBa45ljUQal12Off5QWz7rPx9C3NNF6FRIJkKRm+TV1xw5nPA
	0/B5NEbRylcoPl/C8Ov/pm3viAncHjdlwcD0LiNvBqJb34pQor1t4XPk3ReXhSZe5l9X
	EX7Q==
X-Gm-Message-State: ALyK8tJBl4D8aNkMPMw+ubqmHPXSE5mmVM0D9BnCLcbbU1nsIPyDjuW3G3tJuS6XyZGYL66CKVtnMsGxUdfdPA==
X-Received: by 10.176.3.12 with SMTP id 12mr5227811uat.0.1466359201027; Sun,
	19 Jun 2016 11:00:01 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.0.166 with HTTP; Sun, 19 Jun 2016 11:00:00 -0700 (PDT)
In-Reply-To: <1466345932.1947.15.camel@intel.com>
References: <CAMos0+P5U5hjaLF20tFAGKtLADiydJVfiGSVnwYansAD0Bw0aA@mail.gmail.com>
	<576682A7.4000804@mlbassoc.com>
	<CAMos0+NmPtdjYR9pqEeXHVaUTGdN3oi-rYKdeMzN0FPEzqvxmA@mail.gmail.com>
	<1466345932.1947.15.camel@intel.com>
From: Behzat Erte <behzaterte@gmail.com>
Date: Sun, 19 Jun 2016 21:00:00 +0300
Message-ID: <CAMos0+O7cnH7A2ux-kZDdy3xHFAjbB2gK0CLu5it9BfmSZAA+w@mail.gmail.com>
To: "Randle, William C" <william.c.randle@intel.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>,
	"gary@mlbassoc.com" <gary@mlbassoc.com>
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
X-List-Received-Date: Sun, 19 Jun 2016 18:00:05 -0000
Content-Type: multipart/alternative; boundary=001a113d18924a5e910535a55ba6

--001a113d18924a5e910535a55ba6
Content-Type: text/plain; charset=UTF-8

Hi again folks,


Thanks for time and advices.

I downloaded yocto v2.1 and everything works as expected also I've just
compiled qemuarm machine with success :-)

No perl do_compile error any more..

Cheers,
-berte.

2016-06-19 17:18 GMT+03:00 Randle, William C <william.c.randle@intel.com>:

> On Sun, 2016-06-19 at 15:39 +0300, Behzat Erte wrote:
> > Hi Gary,
> >
> > Thanks for your advice.
> >
> > You can find my information and do_compile outputs as below.
> >
> > bitbake outputs:
> > http://paste.ubuntu.com/17533450/
> > http://paste.ubuntu.com/17533470/
> >
> > poky version:
> > http://paste.ubuntu.com/17533675/
> >
> > distro info:
> > http://paste.ubuntu.com/17533957/
> >
> > Please, feel free to let me know if you require any further information.
> >
> > Cheers,
> > -berte.
>
> Poky 1.5.4 is quite old and many packages of that vintage are unlikely to
> compile without errors with gcc 5.x - which is what you have on your gentoo
> system. Best would be to upgrade your poky/Yocto version to something
> newer. If
> you're unable to do that, you may need to use an older host distro version
> that
> is gcc4 based. (It *might* work if you installed gcc4 packages on your
> host and
> ensure it is used for building the packages.)
>
>     -Bill
>
> >
> > 2016-06-19 14:31 GMT+03:00 Gary Thomas <gary@mlbassoc.com>:
> > > On 06/19/2016 12:52 PM, Behzat Erte wrote:
> > > > Hello all,
> > > >
> > > > I'm trying to compile core-image-minimal for qemuarm machine.
> However when
> > > > poky make do_compile step for perl package
> > > > I'm getting linker error as below:
> > > >
> > > > ERROR: Function failed: do_configure (log file is located at
> > > > /home/berte/playground/poky/build/tmp/work/x86_64-linux/perl-
> > > > native/5.14.3-r0/temp/log.do_configure.27295)
> > > > ERROR: Logfile of failure stored in:
> > > > /home/berte/playground/poky/build/tmp/work/x86_64-linux/perl-
> > > > native/5.14.3-r0/temp/log.do_configure.27295
> > > > Log data follows:
> > > > | DEBUG: Executing python function sysroot_cleansstate
> > > > | DEBUG: Python function sysroot_cleansstate finished
> > > > | DEBUG: Executing shell function do_configure
> > > > | First let's make sure your kit is complete.  Checking...
> > > > | Would you like to see the instructions? [n]
> > > > | Locating common programs...
> > > > | Checking compatibility between /bin/echo and builtin echo (if
> any)...
> > > > | Symbolic links are supported.
> > > > | Checking how to test for symbolic links...
> > > > | You can test for symbolic links with 'test -h'.
> > > > | Good, your tr supports [:lower:] and [:upper:] to convert case.
> > > > | Using [:upper:] and [:lower:] to convert case.
> > > > | 3b1             dragonfly       irix_6_0        opus
>  super-ux
> > > > | aix             dynix             irix_6_1        os2
>  svr4
> > > > | aix_3         dynixptx        isc             os390           svr5
> > > > | aix_4         epix             isc_2             os400
>  ti1500
> > > > | altos486      esix4             linux             posix-bc
> titanos
> > > > | amigaos       fps             lynxos          powerux
>  ultrix_4
> > > > | atheos        freebsd         midnightbsd     qnx           umips
> > > > | aux_3         genix             mips             rhapsody
> unicos
> > > > | beos          gnu             mirbsd          riscos
> unicosmk
> > > > | bsdos         gnukfreebsd     mpc             sco
>  unisysdynix
> > > > | catamount     gnuknetbsd      mpeix             sco_2_3_0     utekv
> > > > | convexos      greenhills      ncr_tower       sco_2_3_1     uts
> > > > | cxux          haiku             netbsd          sco_2_3_2     uwin
> > > > | cygwin        hpux             newsos4         sco_2_3_3     vmesa
> > > > | darwin        i386             next_3          sco_2_3_4     vos
> > > > | dcosx         interix         next_3_0        solaris_2
> > > > | dec_osf       irix_4          next_4          stellar
> > > > | dgux          irix_5          nonstopux       sunos_4_0
> > > > | dos_djgpp     irix_6          openbsd         sunos_4_1
> > > > | Which of these apply, if any? [linux]
> > > > |
> > > > | You appear to have ELF support.  I'll try to use it for dynamic
> loading.
> > > > | If dynamic loading doesn't work, read hints/linux.sh for further
> > > > information.
> > > > | nm: /usr/lib/libdb.so: no symbols
> > > > | nm: /usr/lib64/libdb.so: no symbols
> > > > | nm: /usr/lib64/libdb.so: no symbols
> > > > | Operating system name? [linux]
> > > > | Operating system version? [4.4.6-gentoo]
> > > > | Installation prefix to use? (~name ok)
> > > > | [/home/berte/playground/poky/build/tmp/sysroots/x86_64-linux/usr]
> > > > | AFS does not seem to be running...
> > > > | What installation prefix should I use for installing files? (~name
> ok)
> > > > | [/home/berte/playground/poky/build/tmp/sysroots/x86_64-linux/usr]
> > > > | Build Perl for SOCKS? [n]
> > > > | Use the PerlIO abstraction layer? [y]
> > > > | Getting the current patchlevel...
> > > > | Build a threading Perl? [y]
> > > > | Use which C compiler? [gcc ]
> > > > | Checking for GNU cc in disguise and/or its version number...
> > > > | Now, how can we feed standard input to your C preprocessor...
> > > > | Directories to use for library searches?
> > > > | [/usr/local/lib /lib/../lib64 /usr/lib/../lib64 /lib /usr/lib
> /lib64
> > > > /usr/lib64 /usr/local/lib64]
> > > > | What is the file extension used for shared libraries? [so]
> > > > | Try to use long doubles if available? [n]
> > > > | Checking for optional libraries...
> > > > | What libraries to use?
> > > > | [-lnsl -lnm -lgdbm -ldb -ldl -lm -lcrypt -lutil -lpthread -lc
> > > > -lgdbm_compat]
> > > > | What optimizer/debugger flag should be used? [-O2]
> > > > | Any additional cc flags?
> > > > | [-D_REENTRANT -D_GNU_SOURCE -fno-strict-aliasing -pipe -fstack-
> > > > protector]
> > > > | Let me guess what the preprocessor flags are...
> > > > | Any additional ld flags (NOT including libraries)?
> > > > |
> [-L/home/berte/playground/poky/build/tmp/sysroots/x86_64-linux/usr/lib
> > > > -L/home/berte/playground/poky/build/tmp/sysroots/x86_64-linux/lib
> > > >
> -Wl,-rpath-link,/home/berte/playground/poky/build/tmp/sysroots/x86_64-
> > > > linux/usr/lib
> > > >
> -Wl,-rpath-link,/home/berte/playground/poky/build/tmp/sysroots/x86_64-
> > > > linux/lib
> > > > -Wl,-rpath,/home/berte/playground/poky/build/tmp/sysroots/x86_64-
> > > > linux/usr/lib
> > > >
> -Wl,-rpath,/home/berte/playground/poky/build/tmp/sysroots/x86_64-linux/lib
> > > > -Wl,-O1 -fstack-protector -L/usr/local/lib]
> > > > | Checking your choice of C compiler and flags for coherency...
> > > > | I've tried to compile and run the following simple program:
> > > > |
> > > > | #include <stdio.h>
> > > > | int main() { printf("Ok\n"); return(0); }
> > > > |
> > > > | I used the command:
> > > > |
> > > > |     gcc -o try -O2 -D_REENTRANT -D_GNU_SOURCE -fno-strict-aliasing
> -pipe
> > > > -fstack-protector
> > > > -L/home/berte/playground/poky/build/tmp/sysroots/x86_64-linux/usr/lib
> > > > -L/home/berte/playground/poky/build/tmp/sysroots/x86_64-linux/lib
> > > >
> -Wl,-rpath-link,/home/berte/playground/poky/build/tmp/sysroots/x86_64-
> > > > linux/usr/lib
> > > >
> -Wl,-rpath-link,/home/berte/playground/poky/build/tmp/sysroots/x86_64-
> > > > linux/lib
> > > > -Wl,-rpath,/home/berte/playground/poky/build/tmp/sysroots/x86_64-
> > > > linux/usr/lib
> > > >
> -Wl,-rpath,/home/berte/playground/poky/build/tmp/sysroots/x86_64-linux/lib
> > > > -Wl,-O1 -fstack-protector -L/usr/local/lib
> > > > try.c -lnsl -lnm -lgdbm -ldb -ldl -lm -lcrypt -lutil -lpthread -lc
> > > > -lgdbm_compat
> > > > |      ./try
> > > > |
> > > > | and I got the following output:
> > > > |
> > > > | /usr/lib/gcc/x86_64-pc-linux-gnu/5.3.0/../../../../lib64/libnm.so:
> > > > undefined reference to `g_type_add_instance_private'
> > > > | /usr/lib/gcc/x86_64-pc-linux-gnu/5.3.0/../../../../lib64/libnm.so:
> > > > undefined reference to
> > > > `g_type_class_adjust_private_offset'
> > > > | collect2: error: ld returned 1 exit status
> > > >
> > > >
> > > > I know my distro (Gentoo x86_64) not officially supports but when I
> try
> > > > that step with manually I'm getting result is
> > > > expected like as below:
> > > >
> > > > time gcc -o try -O2 -D_REENTRANT -D_GNU_SOURCE -fno-strict-aliasing
> -pipe
> > > > -fstack-protector -Wl,-rpath-link -Wl,-O1
> > > > -fstack-protector -L/usr/local/lib try.c -lnsl -lnm -lgdbm -ldb -ldl
> -lm
> > > > -lcrypt -lutil -lpthread -lc -lgdbm_compat
> > > >
> > > > real    0m0.146s
> > > > user    0m0.127s
> > > > sys    0m0.026s
> > > >
> > > > time ./try
> > > > Ok
> > > >
> > > > real    0m0.007s
> > > > user    0m0.002s
> > > > sys    0m0.005s
> > > >
> > > >
> > > > I guess -rpath-link causing some problem with linker but somehow I
> did not
> > > > get exact root cause. If someone has any idea
> > > > with this problem it would be more than welcome.
> > > >
> > >
> > > More details would be useful.  When you run bitbake, it provides a lot
> > > of information about your host/distro/versions/...  Please provide that
> > > to help diagnose the problem.
> > >
> > > --
> > > ------------------------------------------------------------
> > > Gary Thomas                 |  Consulting for the
> > > MLB Associates              |    Embedded world
> > > ------------------------------------------------------------
> > > --
> > > _______________________________________________
> > > poky mailing list
> > > poky@yoctoproject.org
> > > https://lists.yoctoproject.org/listinfo/poky
> > >
>

--001a113d18924a5e910535a55ba6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi again folks,<br><br><br></div><div>Thanks for time=
 and advices. <br><br></div><div>I downloaded yocto v2.1 and everything wor=
ks as expected also I&#39;ve just compiled qemuarm machine with success :-)=
<br><br></div><div>No perl do_compile error any more..<br></div><div><br></=
div><div>Cheers,<br></div><div>-berte.<br></div></div><div class=3D"gmail_e=
xtra"><br><div class=3D"gmail_quote">2016-06-19 17:18 GMT+03:00 Randle, Wil=
liam C <span dir=3D"ltr">&lt;<a href=3D"mailto:william.c.randle@intel.com" =
target=3D"_blank">william.c.randle@intel.com</a>&gt;</span>:<br><blockquote=
 class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc soli=
d;padding-left:1ex"><span class=3D"">On Sun, 2016-06-19 at 15:39 +0300, Beh=
zat Erte wrote:<br>
&gt; Hi Gary,<br>
&gt;<br>
&gt; Thanks for your advice.=C2=A0<br>
&gt;<br>
&gt; You can find my information and do_compile outputs as below.<br>
&gt;<br>
&gt; bitbake outputs:<br>
&gt; <a href=3D"http://paste.ubuntu.com/17533450/" rel=3D"noreferrer" targe=
t=3D"_blank">http://paste.ubuntu.com/17533450/</a><br>
&gt; <a href=3D"http://paste.ubuntu.com/17533470/" rel=3D"noreferrer" targe=
t=3D"_blank">http://paste.ubuntu.com/17533470/</a><br>
&gt;<br>
&gt; poky version:<br>
&gt; <a href=3D"http://paste.ubuntu.com/17533675/" rel=3D"noreferrer" targe=
t=3D"_blank">http://paste.ubuntu.com/17533675/</a><br>
&gt;<br>
&gt; distro info:<br>
&gt; <a href=3D"http://paste.ubuntu.com/17533957/" rel=3D"noreferrer" targe=
t=3D"_blank">http://paste.ubuntu.com/17533957/</a><br>
&gt;<br>
&gt; Please, feel free to let me know if you require any further informatio=
n.<br>
&gt;<br>
&gt; Cheers,<br>
&gt; -berte.<br>
<br>
</span>Poky 1.5.4 is quite old and many packages of that vintage are unlike=
ly to<br>
compile without errors with gcc 5.x - which is what you have on your gentoo=
<br>
system. Best would be to upgrade your poky/Yocto version to something newer=
. If<br>
you&#39;re unable to do that, you may need to use an older host distro vers=
ion that<br>
is gcc4 based. (It *might* work if you installed gcc4 packages on your host=
 and<br>
ensure it is used for building the packages.)<br>
<br>
=C2=A0 =C2=A0 -Bill<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt;<br>
&gt; 2016-06-19 14:31 GMT+03:00 Gary Thomas &lt;<a href=3D"mailto:gary@mlba=
ssoc.com">gary@mlbassoc.com</a>&gt;:<br>
&gt; &gt; On 06/19/2016 12:52 PM, Behzat Erte wrote:<br>
&gt; &gt; &gt; Hello all,<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; I&#39;m trying to compile core-image-minimal for qemuarm mac=
hine. However when<br>
&gt; &gt; &gt; poky make do_compile step for perl package<br>
&gt; &gt; &gt; I&#39;m getting linker error as below:<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; ERROR: Function failed: do_configure (log file is located at=
<br>
&gt; &gt; &gt; /home/berte/playground/poky/build/tmp/work/x86_64-linux/perl=
-<br>
&gt; &gt; &gt; native/5.14.3-r0/temp/log.do_configure.27295)<br>
&gt; &gt; &gt; ERROR: Logfile of failure stored in:<br>
&gt; &gt; &gt; /home/berte/playground/poky/build/tmp/work/x86_64-linux/perl=
-<br>
&gt; &gt; &gt; native/5.14.3-r0/temp/log.do_configure.27295<br>
&gt; &gt; &gt; Log data follows:<br>
&gt; &gt; &gt; | DEBUG: Executing python function sysroot_cleansstate<br>
&gt; &gt; &gt; | DEBUG: Python function sysroot_cleansstate finished<br>
&gt; &gt; &gt; | DEBUG: Executing shell function do_configure<br>
&gt; &gt; &gt; | First let&#39;s make sure your kit is complete.=C2=A0 Chec=
king...<br>
&gt; &gt; &gt; | Would you like to see the instructions? [n]<br>
&gt; &gt; &gt; | Locating common programs...<br>
&gt; &gt; &gt; | Checking compatibility between /bin/echo and builtin echo =
(if any)...<br>
&gt; &gt; &gt; | Symbolic links are supported.<br>
&gt; &gt; &gt; | Checking how to test for symbolic links...<br>
&gt; &gt; &gt; | You can test for symbolic links with &#39;test -h&#39;.<br=
>
&gt; &gt; &gt; | Good, your tr supports [:lower:] and [:upper:] to convert =
case.<br>
&gt; &gt; &gt; | Using [:upper:] and [:lower:] to convert case.<br>
&gt; &gt; &gt; | 3b1=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dragonf=
ly=C2=A0 =C2=A0 =C2=A0 =C2=A0irix_6_0=C2=A0 =C2=A0 =C2=A0 =C2=A0 opus=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0super-ux<br>
&gt; &gt; &gt; | aix=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dynix=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0irix_6_1=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 os2=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0svr4<br>
&gt; &gt; &gt; | aix_3=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dynixptx=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 isc=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0os390=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0svr5<br>
&gt; &gt; &gt; | aix_4=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0epix=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0isc_2=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0os400=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ti1500<br>
&gt; &gt; &gt; | altos486=C2=A0 =C2=A0 =C2=A0 esix4=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0linux=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0posix-bc=C2=A0 =C2=A0 =C2=A0 titanos<br>
&gt; &gt; &gt; | amigaos=C2=A0 =C2=A0 =C2=A0 =C2=A0fps=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0lynxos=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 powerux=
=C2=A0 =C2=A0 =C2=A0 =C2=A0ultrix_4<br>
&gt; &gt; &gt; | atheos=C2=A0 =C2=A0 =C2=A0 =C2=A0 freebsd=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0midnightbsd=C2=A0 =C2=A0 =C2=A0qnx=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0umips<br>
&gt; &gt; &gt; | aux_3=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0genix=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0mips=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0rhapsody=C2=A0 =C2=A0 =C2=A0 unicos<br>
&gt; &gt; &gt; | beos=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 gnu=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0mirbsd=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
riscos=C2=A0 =C2=A0 =C2=A0 =C2=A0 unicosmk<br>
&gt; &gt; &gt; | bsdos=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0gnukfreebsd=C2=A0 =
=C2=A0 =C2=A0mpc=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0sco=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0unisysdynix<br>
&gt; &gt; &gt; | catamount=C2=A0 =C2=A0 =C2=A0gnuknetbsd=C2=A0 =C2=A0 =C2=
=A0 mpeix=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0sco_2_3_0=C2=A0 =
=C2=A0 =C2=A0utekv<br>
&gt; &gt; &gt; | convexos=C2=A0 =C2=A0 =C2=A0 greenhills=C2=A0 =C2=A0 =C2=
=A0 ncr_tower=C2=A0 =C2=A0 =C2=A0 =C2=A0sco_2_3_1=C2=A0 =C2=A0 =C2=A0uts<br=
>
&gt; &gt; &gt; | cxux=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 haiku=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0netbsd=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
sco_2_3_2=C2=A0 =C2=A0 =C2=A0uwin<br>
&gt; &gt; &gt; | cygwin=C2=A0 =C2=A0 =C2=A0 =C2=A0 hpux=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0newsos4=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0sco_2_=
3_3=C2=A0 =C2=A0 =C2=A0vmesa<br>
&gt; &gt; &gt; | darwin=C2=A0 =C2=A0 =C2=A0 =C2=A0 i386=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0next_3=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 sco_2_=
3_4=C2=A0 =C2=A0 =C2=A0vos<br>
&gt; &gt; &gt; | dcosx=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0interix=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0next_3_0=C2=A0 =C2=A0 =C2=A0 =C2=A0 solaris_2<br>
&gt; &gt; &gt; | dec_osf=C2=A0 =C2=A0 =C2=A0 =C2=A0irix_4=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 next_4=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 stellar<br>
&gt; &gt; &gt; | dgux=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 irix_5=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 nonstopux=C2=A0 =C2=A0 =C2=A0 =C2=A0sunos_4_0<br>
&gt; &gt; &gt; | dos_djgpp=C2=A0 =C2=A0 =C2=A0irix_6=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 openbsd=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0sunos_4_1<br>
&gt; &gt; &gt; | Which of these apply, if any? [linux]<br>
&gt; &gt; &gt; |<br>
&gt; &gt; &gt; | You appear to have ELF support.=C2=A0 I&#39;ll try to use =
it for dynamic loading.<br>
&gt; &gt; &gt; | If dynamic loading doesn&#39;t work, read hints/linux.sh f=
or further<br>
&gt; &gt; &gt; information.<br>
&gt; &gt; &gt; | nm: /usr/lib/libdb.so: no symbols<br>
&gt; &gt; &gt; | nm: /usr/lib64/libdb.so: no symbols<br>
&gt; &gt; &gt; | nm: /usr/lib64/libdb.so: no symbols<br>
&gt; &gt; &gt; | Operating system name? [linux]<br>
&gt; &gt; &gt; | Operating system version? [4.4.6-gentoo]<br>
&gt; &gt; &gt; | Installation prefix to use? (~name ok)<br>
&gt; &gt; &gt; | [/home/berte/playground/poky/build/tmp/sysroots/x86_64-lin=
ux/usr]<br>
&gt; &gt; &gt; | AFS does not seem to be running...<br>
&gt; &gt; &gt; | What installation prefix should I use for installing files=
? (~name ok)<br>
&gt; &gt; &gt; | [/home/berte/playground/poky/build/tmp/sysroots/x86_64-lin=
ux/usr]<br>
&gt; &gt; &gt; | Build Perl for SOCKS? [n]<br>
&gt; &gt; &gt; | Use the PerlIO abstraction layer? [y]<br>
&gt; &gt; &gt; | Getting the current patchlevel...<br>
&gt; &gt; &gt; | Build a threading Perl? [y]<br>
&gt; &gt; &gt; | Use which C compiler? [gcc ]<br>
&gt; &gt; &gt; | Checking for GNU cc in disguise and/or its version number.=
..<br>
&gt; &gt; &gt; | Now, how can we feed standard input to your C preprocessor=
...<br>
&gt; &gt; &gt; | Directories to use for library searches?<br>
&gt; &gt; &gt; | [/usr/local/lib /lib/../lib64 /usr/lib/../lib64 /lib /usr/=
lib /lib64<br>
&gt; &gt; &gt; /usr/lib64 /usr/local/lib64]<br>
&gt; &gt; &gt; | What is the file extension used for shared libraries? [so]=
<br>
&gt; &gt; &gt; | Try to use long doubles if available? [n]<br>
&gt; &gt; &gt; | Checking for optional libraries...<br>
&gt; &gt; &gt; | What libraries to use?<br>
&gt; &gt; &gt; | [-lnsl -lnm -lgdbm -ldb -ldl -lm -lcrypt -lutil -lpthread =
-lc<br>
&gt; &gt; &gt; -lgdbm_compat]<br>
&gt; &gt; &gt; | What optimizer/debugger flag should be used? [-O2]<br>
&gt; &gt; &gt; | Any additional cc flags?<br>
&gt; &gt; &gt; | [-D_REENTRANT -D_GNU_SOURCE -fno-strict-aliasing -pipe -fs=
tack-<br>
&gt; &gt; &gt; protector]<br>
&gt; &gt; &gt; | Let me guess what the preprocessor flags are...<br>
&gt; &gt; &gt; | Any additional ld flags (NOT including libraries)?<br>
&gt; &gt; &gt; | [-L/home/berte/playground/poky/build/tmp/sysroots/x86_64-l=
inux/usr/lib<br>
&gt; &gt; &gt; -L/home/berte/playground/poky/build/tmp/sysroots/x86_64-linu=
x/lib<br>
&gt; &gt; &gt; -Wl,-rpath-link,/home/berte/playground/poky/build/tmp/sysroo=
ts/x86_64-<br>
&gt; &gt; &gt; linux/usr/lib<br>
&gt; &gt; &gt; -Wl,-rpath-link,/home/berte/playground/poky/build/tmp/sysroo=
ts/x86_64-<br>
&gt; &gt; &gt; linux/lib<br>
&gt; &gt; &gt; -Wl,-rpath,/home/berte/playground/poky/build/tmp/sysroots/x8=
6_64-<br>
&gt; &gt; &gt; linux/usr/lib<br>
&gt; &gt; &gt; -Wl,-rpath,/home/berte/playground/poky/build/tmp/sysroots/x8=
6_64-linux/lib<br>
&gt; &gt; &gt; -Wl,-O1 -fstack-protector -L/usr/local/lib]<br>
&gt; &gt; &gt; | Checking your choice of C compiler and flags for coherency=
...<br>
&gt; &gt; &gt; | I&#39;ve tried to compile and run the following simple pro=
gram:<br>
&gt; &gt; &gt; |<br>
&gt; &gt; &gt; | #include &lt;stdio.h&gt;<br>
&gt; &gt; &gt; | int main() { printf(&quot;Ok\n&quot;); return(0); }<br>
&gt; &gt; &gt; |<br>
&gt; &gt; &gt; | I used the command:<br>
&gt; &gt; &gt; |<br>
&gt; &gt; &gt; |=C2=A0 =C2=A0 =C2=A0gcc -o try -O2 -D_REENTRANT -D_GNU_SOUR=
CE -fno-strict-aliasing -pipe<br>
&gt; &gt; &gt; -fstack-protector<br>
&gt; &gt; &gt; -L/home/berte/playground/poky/build/tmp/sysroots/x86_64-linu=
x/usr/lib<br>
&gt; &gt; &gt; -L/home/berte/playground/poky/build/tmp/sysroots/x86_64-linu=
x/lib<br>
&gt; &gt; &gt; -Wl,-rpath-link,/home/berte/playground/poky/build/tmp/sysroo=
ts/x86_64-<br>
&gt; &gt; &gt; linux/usr/lib<br>
&gt; &gt; &gt; -Wl,-rpath-link,/home/berte/playground/poky/build/tmp/sysroo=
ts/x86_64-<br>
&gt; &gt; &gt; linux/lib<br>
&gt; &gt; &gt; -Wl,-rpath,/home/berte/playground/poky/build/tmp/sysroots/x8=
6_64-<br>
&gt; &gt; &gt; linux/usr/lib<br>
&gt; &gt; &gt; -Wl,-rpath,/home/berte/playground/poky/build/tmp/sysroots/x8=
6_64-linux/lib<br>
&gt; &gt; &gt; -Wl,-O1 -fstack-protector -L/usr/local/lib<br>
&gt; &gt; &gt; try.c -lnsl -lnm -lgdbm -ldb -ldl -lm -lcrypt -lutil -lpthre=
ad -lc<br>
&gt; &gt; &gt; -lgdbm_compat<br>
&gt; &gt; &gt; |=C2=A0 =C2=A0 =C2=A0 ./try<br>
&gt; &gt; &gt; |<br>
&gt; &gt; &gt; | and I got the following output:<br>
&gt; &gt; &gt; |<br>
&gt; &gt; &gt; | /usr/lib/gcc/x86_64-pc-linux-gnu/5.3.0/../../../../lib64/l=
ibnm.so:<br>
&gt; &gt; &gt; undefined reference to `g_type_add_instance_private&#39;<br>
&gt; &gt; &gt; | /usr/lib/gcc/x86_64-pc-linux-gnu/5.3.0/../../../../lib64/l=
ibnm.so:<br>
&gt; &gt; &gt; undefined reference to<br>
&gt; &gt; &gt; `g_type_class_adjust_private_offset&#39;<br>
&gt; &gt; &gt; | collect2: error: ld returned 1 exit status<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; I know my distro (Gentoo x86_64) not officially supports but=
 when I try<br>
&gt; &gt; &gt; that step with manually I&#39;m getting result is<br>
&gt; &gt; &gt; expected like as below:<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; time gcc -o try -O2 -D_REENTRANT -D_GNU_SOURCE -fno-strict-a=
liasing -pipe<br>
&gt; &gt; &gt; -fstack-protector -Wl,-rpath-link -Wl,-O1<br>
&gt; &gt; &gt; -fstack-protector -L/usr/local/lib try.c -lnsl -lnm -lgdbm -=
ldb -ldl -lm<br>
&gt; &gt; &gt; -lcrypt -lutil -lpthread -lc -lgdbm_compat<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; real=C2=A0 =C2=A0 0m0.146s<br>
&gt; &gt; &gt; user=C2=A0 =C2=A0 0m0.127s<br>
&gt; &gt; &gt; sys=C2=A0 =C2=A0 0m0.026s<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; time ./try<br>
&gt; &gt; &gt; Ok<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; real=C2=A0 =C2=A0 0m0.007s<br>
&gt; &gt; &gt; user=C2=A0 =C2=A0 0m0.002s<br>
&gt; &gt; &gt; sys=C2=A0 =C2=A0 0m0.005s<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; I guess -rpath-link causing some problem with linker but som=
ehow I did not<br>
&gt; &gt; &gt; get exact root cause. If someone has any idea<br>
&gt; &gt; &gt; with this problem it would be more than welcome.<br>
&gt; &gt; &gt;<br>
&gt; &gt; =C2=A0<br>
&gt; &gt; More details would be useful.=C2=A0 When you run bitbake, it prov=
ides a lot<br>
&gt; &gt; of information about your host/distro/versions/...=C2=A0 Please p=
rovide that<br>
&gt; &gt; to help diagnose the problem.<br>
&gt; &gt;<br>
&gt; &gt; --=C2=A0<br>
&gt; &gt; ------------------------------------------------------------<br>
&gt; &gt; Gary Thomas=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0|=C2=A0 Consulting for the<br>
&gt; &gt; MLB Associates=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=
=C2=A0 =C2=A0 Embedded world<br>
&gt; &gt; ------------------------------------------------------------<br>
&gt; &gt; --=C2=A0<br>
&gt; &gt; _______________________________________________<br>
&gt; &gt; poky mailing list<br>
&gt; &gt; <a href=3D"mailto:poky@yoctoproject.org">poky@yoctoproject.org</a=
><br>
&gt; &gt; <a href=3D"https://lists.yoctoproject.org/listinfo/poky" rel=3D"n=
oreferrer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/poky</=
a><br>
&gt; &gt; </div></div></blockquote></div><br></div>

--001a113d18924a5e910535a55ba6--
