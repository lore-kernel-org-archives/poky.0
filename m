Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C7B81E01347
	for <poky@yoctoproject.org>; Sat, 31 Mar 2012 08:44:46 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q2VFibHA024695;
	Sat, 31 Mar 2012 16:44:37 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 24555-02; Sat, 31 Mar 2012 16:44:31 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q2VFiQaW024689
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Sat, 31 Mar 2012 16:44:27 +0100
Message-ID: <1333208666.18082.242.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Wangdawei (Sivan)" <sivan.wang@huawei.com>
Date: Sat, 31 Mar 2012 16:44:26 +0100
In-Reply-To: <7E29EF69110C17499E6B3A9844CD4FD913424EF9@szxeml526-mbx.china.huawei.com>
References: <7E29EF69110C17499E6B3A9844CD4FD913424EF9@szxeml526-mbx.china.huawei.com>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
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
X-List-Received-Date: Sat, 31 Mar 2012 15:44:47 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, 2012-03-31 at 09:55 +0000, Wangdawei (Sivan) wrote:
> The reason is that I want to use the binary toolchain I have own in
> yocto, and I don=E2=80=99t have the source code of the toolchain , then I=
 do
> the steps below:
> =20
> 1. add a line in local.conf like this TCMODE ?=3D "external-csl2008q3"
> 2.modify the file tcmode-external-csl2008q3.inc, change
> EXTERNAL_TOOLCHAIN =3D "/opt/toolchain-be8/armeb-linux-gnueabi" to refer
> to where my binary toolchain stored
> 3. comment the line =E2=80=9C#SRC_URI =3D "file://SUPPORTED"=E2=80=9D in =
file
> =E2=80=9Cexternal-csl-toolchain_2008q3-72.bb=E2=80=9D,because we don=E2=
=80=99t have the source
> code ,so I think the SRC_URI maybe will be NULL
> =20
> When I do this , but it failed , below is the log I have got:
> =20
> NOTE: package binutils-cross-2.21.1a-r0: task do_configure: Started
>
> ERROR: Function 'do_configure' failed
> (see /home/ccc/poky-second/build/tmp/work/i586-none-linux/binutils-cross-=
2.21.1a-r0/temp/log.do_configure.5085 for further information)
>
> ERROR: Logfile of failure stored
> in: /home/ccc/poky-second/build/tmp/work/i586-none-linux/binutils-cross-2=
.21.1a-r0/temp/log.do_configure.5085
>
> Log data follows:
>
> | DEBUG: SITE files ['endian-little', 'common-linux', 'common-glibc',=20
> | 'bit-64', 'x86_64-linux', 'common']
> | configure.ac:32: error: Please use exactly Autoconf 2.64 instead of
> 2.68.
> | config/override.m4:12: _GCC_AUTOCONF_VERSION_CHECK is expanded
> from...
> | configure.ac:32: the top level
> |
> autom4te: /home/ccc/poky-second/build/tmp/sysroots/x86_64-linux/usr/bin/m=
4 failed with exit status: 1
> | NOTE:
> Running /home/ccc/poky-second/build/tmp/work/i586-none-linux/binutils-cro=
ss-2.21.1a-r0/binutils-2.21.1/configure                 --build=3Dx86_64-li=
nux             --host=3Dx86_64-linux             --target=3Di586-none-linu=
x               --prefix=3D/home/ccc/poky-second/build/tmp/sysroots/x86_64-=
linux/usr              --exec_prefix=3D/home/ccc/poky-second/build/tmp/sysr=
oots/x86_64-linux/usr                 --bindir=3D/home/ccc/poky-second/buil=
d/tmp/sysroots/x86_64-linux/usr/bin/i586-none-linux                 --sbind=
ir=3D/home/ccc/poky-second/build/tmp/sysroots/x86_64-linux/usr/bin/i586-non=
e-linux                 --libexecdir=3D/home/ccc/poky-second/build/tmp/sysr=
oots/x86_64-linux/usr/libexec/i586-none-linux                 --datadir=3D/=
home/ccc/poky-second/build/tmp/sysroots/x86_64-linux/usr/share             =
  --sysconfdir=3D/home/ccc/poky-second/build/tmp/sysroots/x86_64-linux/etc =
                --sharedstatedir=3D/home/ccc/poky-second/build/tmp/sysroots=
/x86_64-linux/com              --localstatedir=3D/home/ccc/poky-second/buil=
d/tmp/sysroots/x86_64-linux/var              --libdir=3D/home/ccc/poky-seco=
nd/build/tmp/sysroots/x86_64-linux/usr/lib/i586-none-linux                 =
 --includedir=3D/home/ccc/poky-second/build/tmp/sysroots/x86_64-linux/usr/i=
nclude                 --oldincludedir=3D/home/ccc/poky-second/build/tmp/sy=
sroots/x86_64-linux/usr/include               --infodir=3D/home/ccc/poky-se=
cond/build/tmp/sysroots/x86_64-linux/usr/share/info                 --mandi=
r=3D/home/ccc/poky-second/build/tmp/sysroots/x86_64-linux/usr/share/man    =
        --disable-silent-rules                  --with-libtool-sysroot=3D/h=
ome/ccc/poky-second/build/tmp/sysroots/x86_64-linux --with-sysroot=3D/home/=
ccc/poky-second/build/tmp/sysroots/qemux86                 --program-prefix=
=3Di586-none-linux-                 --disable-install-libbfd               =
  --disable-werror                 --enable-poison-system-directories      =
            --enable-nls ...
>
> | checking build system type... x86_64-pc-linux-gnu checking host
> system=20
> | type... x86_64-pc-linux-gnu checking target system type...=20
> | i586-none-linux-gnu checking for a BSD-compatible install...=20
> | /usr/bin/install -c checking whether ln works... yes checking
> whether
> | ln -s works... yes checking for a sed that does not truncate
> output...=20
> | /bin/sed checking for gawk... gawk checking for x86_64-linux-gcc...=20
> | gcc checking for C compiler default output file name...
> | configure: error: in
> `/home/ccc/poky-second/build/tmp/work/i586-none-linux/binutils-cross-2.21=
.1a-r0/binutils-2.21.1/build.x86_64-linux.i586-none-linux':
> | configure: error: C compiler cannot create executables See=20
> | `config.log' for more details
> | ERROR: oe_runconf failed
> | ERROR: Function 'do_configure' failed (see=20
> | /home/ccc/poky-second/build/tmp/work/i586-none-linux/binutils-cross-2.
> | 21.1a-r0/temp/log.do_configure.5085 for further information)
> NOTE: package binutils-cross-2.21.1a-r0: task do_configure: Failed


> We can see the toolchain it checked is also the x86_64-linux-gcc , not
> the toolchain I assigned  =E2=80=9CEXTERNAL_TOOLCHAIN =3D
> "/opt/toolchain-be8/armeb-linux-gnueabi"=E2=80=9D

This is for the *build* system (i.e. the system you are compiling on) so
its likely correct.

It then goes on to look at the target of "i586-none-linux-gnu" which
sounds wrong given you appear to have an armeb toolchain?

I suspect you need to target a big endian arm machine rather than
MACHINE=3Dqemux86 which I suspect you're currently using?

Cheers,

Richard



