Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ww0-f51.google.com (mail-ww0-f51.google.com [74.125.82.51])
	by mx1.pokylinux.org (Postfix) with ESMTP id AB7994C804B8
	for <poky@pokylinux.org>; Mon,  9 May 2011 12:57:16 -0500 (CDT)
Received: by wwf26 with SMTP id 26so5559675wwf.8
	for <poky@pokylinux.org>; Mon, 09 May 2011 10:57:15 -0700 (PDT)
Received: by 10.227.59.78 with SMTP id k14mr3612046wbh.102.1304963835224;
	Mon, 09 May 2011 10:57:15 -0700 (PDT)
Received: from [172.20.1.5] (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id
	t16sm2897345wbg.23.2011.05.09.10.57.13
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 09 May 2011 10:57:14 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1084)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <iq98td$jo6$1@dough.gmane.org>
Date: Mon, 9 May 2011 19:57:11 +0200
Message-Id: <36510365-CB0D-47CE-B420-56E60650019D@dominion.thruhere.net>
References: <iq04eq$4qb$1@dough.gmane.org> <4DC42B45.7080504@linux.intel.com>
	<iq47ab$t58$1@dough.gmane.org> <iq98td$jo6$1@dough.gmane.org>
To: gmane@reliableembeddedsystems.com
X-Mailer: Apple Mail (2.1084)
Cc: poky@pokylinux.org
Subject: Re: Third party toolchain, kernel, bootloader
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
X-List-Received-Date: Mon, 09 May 2011 17:57:17 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 9 mei 2011, om 19:39 heeft Robert Berger het volgende geschreven:

> Hi Darren,
>=20
>> On 05/06/2011 08:09 PM, Darren Hart wrote:
>>>=20
>>>=20
>>> On 05/05/2011 11:28 PM, Robert Berger wrote:
>>>> Hi,
>>>>=20
>>>> I'm working on a couple of projects trying to use yocto and it =
boils
>>>> down to the fact, that the packages and the package management =
(with a
>>>> few tweaks) are very valuable.
>>>>=20
>>>> On the other hand "just to give it a try" it's a major effort to =
add
>>>> kernel and bootloader to poky and moreover the gcc which comes with =
poky
>>>> is not always what I need in terms of stability but also features =
(need
>>>> e.g. Cortex-A8 support). So I would also need to cook gcc to =
compile a
>>>> vendor provided kernel and bootloader.
>>>=20
>>>=20
>>> We build for Beagleboard xM, which is a Cortex-A8. Are you missing a
>>> specific feature? Hitting a particular bug?
>=20
> It looks like I'm hitting a compiler/configuration bug.
>=20
> 1) I build everything for the beagle.
> 2) I use this kernel (vendor supplied 2.6.32):
> wget -O xuk-src.tar.bz2
> =
http://www.technexion.com/index.php/support-center/downloads/arm-cpu-modul=
es/tam-3517/389-xuk-src-tar/download
> 3) I use this kernel config:
> wget =
ftp://ftp.denx.de/pub/os-images/debian-6.0/arm/twister-kernel.config
> 4)
> source tmp/environment-setup-armv7a-poky-linux-gnueabi
> export ARCH=3Darm
> export CROSS_COMPILE=3Darm-poky-linux-gnueabi-
> make menuconfig
> make -j2 uImage
> ...
> *** End of Linux kernel configuration.
> *** Execute 'make' to build the kernel or try 'make help'.
>=20
> scripts/kconfig/conf -s arch/arm/Kconfig
>  CHK     include/linux/version.h
>  SYMLINK include/asm -> include/asm-arm
> make[1]: `include/asm-arm/mach-types.h' is up to date.
>  CHK     include/linux/utsrelease.h
>  CALL    scripts/checksyscalls.sh
> <stdin>:1523:2: warning: #warning syscall recvmmsg not implemented
>  CHK     include/linux/compile.h
>  CC      arch/arm/kernel/sysfs_v7.o
> /tmp/ccFfYvGD.s: Assembler messages:
> /tmp/ccFfYvGD.s:264: Error: selected processor does not support ARM =
mode
> `smc #0'
> /tmp/ccFfYvGD.s:306: Error: selected processor does not support ARM =
mode
> `smc #0'
> make[1]: *** [arch/arm/kernel/sysfs_v7.o] Error 1
> make: *** [arch/arm/kernel] Error 2
> make: *** Waiting for unfinished jobs....

That's a 'feature' of binutils 2.21, either switch to 2.20 or do =
something like =
http://git.angstrom-distribution.org/cgi-bin/cgit.cgi/meta-texasinstrument=
s/commit/?id=3D579d8efb3eb25b114de2640d98a511893d2f4841




