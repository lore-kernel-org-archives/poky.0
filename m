Return-Path: <raj.khem@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E4ECE0044A
	for <poky@yoctoproject.org>; Fri,  6 Apr 2012 22:58:44 -0700 (PDT)
Received: by pbbjt11 with SMTP id jt11so4148369pbb.35
	for <poky@yoctoproject.org>; Fri, 06 Apr 2012 22:58:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:x-enigmail-version:content-type
	:content-transfer-encoding;
	bh=IGourc1bihbmpzMYHHcPsCIHa80zwA8a75U/k3L4PTY=;
	b=yx876+1cEPK3dqxg3tah51NUxLUExTUlaxyXA4r/7DAqj0Z85PUaAG6BKq7to373IF
	IUjsqoMUtC9ORi3UtYUuSXQYmoyXqnIucn8NTj28eGdrfff2B/yYSR9KonvlFMr3IRrS
	b0dGNh8aAU+godxUmQ7np/UUMSUheoZtSFYchRZQuUvp4huKhKiKZ3MZ/YNbWpylzu69
	SSsJF8iQPskXCHMicnZBr41AAnnuh1ecwoXWjkSFf3Hqh0EzpoAUd15QEaGJ0i5qp7Bw
	z4CH0ikqZOk001xMzyN1xaM0552u7eQ4l/bq86MdJLvTTxx6JGXMlExKtUUM2nBt2yBr
	9ODg==
Received: by 10.68.193.170 with SMTP id hp10mr1226474pbc.65.1333778323652;
	Fri, 06 Apr 2012 22:58:43 -0700 (PDT)
Received: from [192.168.1.79] (99-57-140-209.lightspeed.sntcca.sbcglobal.net.
	[99.57.140.209])
	by mx.google.com with ESMTPS id l1sm8303054pbe.54.2012.04.06.22.58.40
	(version=SSLv3 cipher=OTHER); Fri, 06 Apr 2012 22:58:42 -0700 (PDT)
Message-ID: <4F7FD78E.7090304@gmail.com>
Date: Fri, 06 Apr 2012 22:58:38 -0700
From: Khem Raj <raj.khem@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:11.0) Gecko/20120402 Thunderbird/11.0.1
MIME-Version: 1.0
To: "Wangdawei (Sivan)" <sivan.wang@huawei.com>
References: <7E29EF69110C17499E6B3A9844CD4FD913424EF9@szxeml526-mbx.china.huawei.com>
	<1333208666.18082.242.camel@ted>
	<7E29EF69110C17499E6B3A9844CD4FD913424F55@szxeml526-mbx.china.huawei.com>
In-Reply-To: <7E29EF69110C17499E6B3A9844CD4FD913424F55@szxeml526-mbx.china.huawei.com>
X-Enigmail-Version: 1.4
Cc: Sanil kumar <sanil.kumar@huawei.com>,
	"s00900579@notesmail.huawei.com" <s00900579@notesmail.huawei.com>,
	"v71149@notesmail.huawei.com" <v71149@notesmail.huawei.com>,
	Venkata ramana gollamudi <ramana.gollamudi@huawei.com>,
	"c00197859@notesmial.huawei.com" <c00197859@notesmial.huawei.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: The problem of using the external toolchain
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 07 Apr 2012 05:58:44 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

On 03/31/2012 07:33 PM, Wangdawei (Sivan) wrote:
> Hi Richard, Yes, you are right , I have a toolchain that is big
> endian ARM, so I want to use the toolchain with the binary, not the
> source code , can we have some method to finish this work in yocto
> ? I still have no clue about this . I have done the below steps: 
> 1.modify MACHINE=qemux86 to MACHINE=qemuarm 2.modify the file "
> external-csl-toolchain_2008q3-72.bb" add a line " SRC_URI =
> "file://gcc-4.4.1.tar.bz2"", the gcc-4.4.1.tar.bz2 is the source
> code of the arm big endian toolchain 3.then I face the some problem
> like this website
> https://lists.yoctoproject.org/pipermail/poky/2011-February/003809.html
> ,then I add a line " LIC_FILES_CHKSUM =
> "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302""
> ,in file 						     external-csl-toolchain_2008q3-72.bb to fix this
> problem 4.now I got the below log : NOTE: Resolving any missing
> task queue dependencies NOTE: multiple providers are available for
> virtual/arm-none-linux-gnueabi-g++ (external-csl-toolchain,
> gcc-cross) NOTE: consider defining a PREFERRED_PROVIDER entry to
> match virtual/arm-none-linux-gnueabi-g++ NOTE: multiple providers
> are available for runtime linux-libc-headers-dev
> (linux-libc-headers, linux-libc-headers-yocto,
> linux-libc-headers-yocto-nativesdk) NOTE: consider defining a
> PREFERRED_PROVIDER entry to match linux-libc-headers-dev NOTE:
> Preparing runqueue NOTE: Executing SetScene Tasks NOTE: Executing
> RunQueue Tasks NOTE: Running task 206 of 1360 (ID: 455,
> /home/kyle/poky-edison-6.0/meta/recipes-core/meta/external-csl-toolchain_2008q3-72.bb,
> do_install) NOTE: package external-csl-toolchain-2008q3-72-r1: task
> do_install: Started ERROR: Function 'do_install' failed (see
> /home/kyle/ccc/tmp/work/armv5te-none-linux-gnueabi/external-csl-toolchain-2008q3-72-r1/temp/log.do_install.9579
> for further information) ERROR: Logfile of failure stored in:
> /home/kyle/ccc/tmp/work/armv5te-none-linux-gnueabi/external-csl-toolchain-2008q3-72-r1/temp/log.do_install.9579
>
> 
Log data follows:
> | NOTE: make -e MAKEFLAGS=
> install_root=/home/kyle/ccc/tmp/work/armv5te-none-linux-gnueabi/external-csl-toolchain-2008q3-72-r1/image
> install | make: *** No rule to make target `install'.  Stop. |
> ERROR: oe_runmake failed | ERROR: Function 'do_install' failed (see
> /home/kyle/ccc/tmp/work/armv5te-none-linux-gnueabi/external-csl-toolchain-2008q3-72-r1/temp/log.do_install.9579
> for further information) NOTE: package
> external-csl-toolchain-2008q3-72-r1: task do_install: Failed ERROR:
> Task 455
> (/home/kyle/poky-edison-6.0/meta/recipes-core/meta/external-csl-toolchain_2008q3-72.bb,
> do_install) failed with exit code '1' ERROR:
> '/home/kyle/poky-edison-6.0/meta/recipes-core/meta/external-csl-toolchain_2008q3-72.bb'
> failed kyle@ubuntu:~/ccc$
> 
> So , I have two questions
> 
> 1.how can I fix this problem use the source code of toolchain to
> build our system? 2.how can I use my binary toolchain to build my
> system ?Did anyone to these things before ?
> 

You seem to be mixing two things. external toolchain is used when you
have binary toolchains that you want to use and not _compile_ a
toolchain you seem to be injecting source of gcc which tells me that
you want to build a different toolchain which is using gcc-4.4.1 sources

in such a case you should add normal recipes for 4.4.1 and then choose
this compiler in your preferences.

> 
> 
> -----Original Message----- From: Richard Purdie
> [mailto:richard.purdie@linuxfoundation.org] Sent: 2012年3月31日 23:44 
> To: Wangdawei (Sivan) Cc: poky@yoctoproject.org Subject: Re: [poky]
> The problem of using the external toolchain
> 
> On Sat, 2012-03-31 at 09:55 +0000, Wangdawei (Sivan) wrote:
>> The reason is that I want to use the binary toolchain I have own
>> in yocto, and I don’t have the source code of the toolchain ,
>> then I do the steps below:
>> 
>> 1. add a line in local.conf like this TCMODE ?=
>> "external-csl2008q3" 2.modify the file
>> tcmode-external-csl2008q3.inc, change EXTERNAL_TOOLCHAIN =
>> "/opt/toolchain-be8/armeb-linux-gnueabi" to refer to where my
>> binary toolchain stored 3. comment the line “#SRC_URI =
>> "file://SUPPORTED"” in file 
>> “external-csl-toolchain_2008q3-72.bb”,because we don’t have the
>> source code ,so I think the SRC_URI maybe will be NULL
>> 
>> When I do this , but it failed , below is the log I have got:
>> 
>> NOTE: package binutils-cross-2.21.1a-r0: task do_configure:
>> Started
>> 
>> ERROR: Function 'do_configure' failed (see
>> /home/ccc/poky-second/build/tmp/work/i586-none-linux/binutils-cross-2.21.1a-r0/temp/log.do_configure.5085
>> for further information)
>> 
>> ERROR: Logfile of failure stored in:
>> /home/ccc/poky-second/build/tmp/work/i586-none-linux/binutils-cross-2.21.1a-r0/temp/log.do_configure.5085
>>
>>
>> 
Log data follows:
>> 
>> | DEBUG: SITE files ['endian-little', 'common-linux',
>> 'common-glibc', | 'bit-64', 'x86_64-linux', 'common'] |
>> configure.ac:32: error: Please use exactly Autoconf 2.64 instead
>> of 2.68. | config/override.m4:12: _GCC_AUTOCONF_VERSION_CHECK is
>> expanded from... | configure.ac:32: the top level | autom4te:
>> /home/ccc/poky-second/build/tmp/sysroots/x86_64-linux/usr/bin/m4
>> failed with exit status: 1 | NOTE: Running
>> /home/ccc/poky-second/build/tmp/work/i586-none-linux/binutils-cross-2.21.1a-r0/binutils-2.21.1/configure
>> --build=x86_64-linux             --host=x86_64-linux
>> --target=i586-none-linux
>> --prefix=/home/ccc/poky-second/build/tmp/sysroots/x86_64-linux/usr
>> --exec_prefix=/home/ccc/poky-second/build/tmp/sysroots/x86_64-linux/usr
>> --bindir=/home/ccc/poky-second/build/tmp/sysroots/x86_64-linux/usr/bin/i586-none-linux
>> --sbindir=/home/ccc/poky-second/build/tmp/sysroots/x86_64-linux/usr/bin/i586-none-linux
>> --libexecdir=/home/ccc/poky-second/build/tmp/sysroots/x86_64-linux/usr/libexec/i586-none-linux
>> --datadir=/home/ccc/poky-second/build/tmp/sysroots/x86_64-linux/usr/share
>> --sysconfdir=/home/ccc/poky-second/build/tmp/sysroots/x86_64-linux/etc
>> --sharedstatedir=/home/ccc/poky-second/build/tmp/sysroots/x86_64-linux/com
>> --localstatedir=/home/ccc/poky-second/build/tmp/sysroots/x86_64-linux/var
>> --libdir=/home/ccc/poky-second/build/tmp/sysroots/x86_64-linux/usr/lib/i586-none-linux
>> --includedir=/home/ccc/poky-second/build/tmp/sysroots/x86_64-linux/usr/include
>> --oldincludedir=/home/ccc/poky-second/build/tmp/sysroots/x86_64-linux/usr/include
>> --infodir=/home/ccc/poky-second/build/tmp/sysroots/x86_64-linux/usr/share/info
>> --mandir=/home/ccc/poky-second/build/tmp/sysroots/x86_64-linux/usr/share/man
>> --disable-silent-rules
>> --with-libtool-sysroot=/home/ccc/poky-second/build/tmp/sysroots/x86_64-linux
>> --with-sysroot=/home/ccc/poky-second/build/tmp/sysroots/qemux86
>> --program-prefix=i586-none-linux-
>> --disable-install-libbfd                 --disable-werror
>> --enable-poison-system-directories                  --enable-nls
>> ...
>> 
>> | checking build system type... x86_64-pc-linux-gnu checking
>> host system | type... x86_64-pc-linux-gnu checking target system
>> type... | i586-none-linux-gnu checking for a BSD-compatible
>> install... | /usr/bin/install -c checking whether ln works... yes
>> checking whether | ln -s works... yes checking for a sed that
>> does not truncate output... | /bin/sed checking for gawk... gawk
>> checking for x86_64-linux-gcc... | gcc checking for C compiler
>> default output file name... | configure: error: in 
>> `/home/ccc/poky-second/build/tmp/work/i586-none-linux/binutils-cross-2.21.1a-r0/binutils-2.21.1/build.x86_64-linux.i586-none-linux':
>>
>> 
| configure: error: C compiler cannot create executables See
>> | `config.log' for more details | ERROR: oe_runconf failed |
>> ERROR: Function 'do_configure' failed (see |
>> /home/ccc/poky-second/build/tmp/work/i586-none-linux/binutils-cross-2.
>>
>> 
| 21.1a-r0/temp/log.do_configure.5085 for further information)
>> NOTE: package binutils-cross-2.21.1a-r0: task do_configure:
>> Failed
> 
> 
>> We can see the toolchain it checked is also the x86_64-linux-gcc
>> , not the toolchain I assigned  “EXTERNAL_TOOLCHAIN = 
>> "/opt/toolchain-be8/armeb-linux-gnueabi"”
> 
> This is for the *build* system (i.e. the system you are compiling
> on) so its likely correct.
> 
> It then goes on to look at the target of "i586-none-linux-gnu"
> which sounds wrong given you appear to have an armeb toolchain?
> 
> I suspect you need to target a big endian arm machine rather than 
> MACHINE=qemux86 which I suspect you're currently using?
> 
> Cheers,
> 
> Richard
> 
> 
> _______________________________________________ poky mailing list 
> poky@yoctoproject.org https://lists.yoctoproject.org/listinfo/poky

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iEYEARECAAYFAk9/144ACgkQuwUzVZGdMxTc0gCghl9+cEPymm80vQ+6HwzQhq/6
7eoAnRASSP0c90ZiqOS+D5HR8y4S4XTI
=VO6V
-----END PGP SIGNATURE-----

