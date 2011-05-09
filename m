Return-Path: <glep-poky@m.gmane.org>
Received: from lo.gmane.org (lo.gmane.org [80.91.229.12])
	by mx1.pokylinux.org (Postfix) with ESMTP id E35274C8024E
	for <poky@pokylinux.org>; Mon,  9 May 2011 12:40:16 -0500 (CDT)
Received: from list by lo.gmane.org with local (Exim 4.69)
	(envelope-from <glep-poky@m.gmane.org>) id 1QJURK-0007iJ-L3
	for poky@pokylinux.org; Mon, 09 May 2011 19:40:14 +0200
Received: from ppp079166134181.dsl.hol.gr ([79.166.134.181])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Mon, 09 May 2011 19:40:14 +0200
Received: from gmane by ppp079166134181.dsl.hol.gr with local (Gmexim 0.1
	(Debian)) id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Mon, 09 May 2011 19:40:14 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: poky@pokylinux.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Mon, 09 May 2011 20:39:56 +0300
Organization: Reliable Embedded Systems
Message-ID: <iq98td$jo6$1@dough.gmane.org>
References: <iq04eq$4qb$1@dough.gmane.org> <4DC42B45.7080504@linux.intel.com>
	<iq47ab$t58$1@dough.gmane.org>
Mime-Version: 1.0
X-Complaints-To: usenet@dough.gmane.org
X-Gmane-NNTP-Posting-Host: ppp079166134181.dsl.hol.gr
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Thunderbird/3.1.8
In-Reply-To: <iq47ab$t58$1@dough.gmane.org>
Subject: Re: Third party toolchain, kernel, bootloader
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: gmane@reliableembeddedsystems.com
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 09 May 2011 17:40:17 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi Darren,

> On 05/06/2011 08:09 PM, Darren Hart wrote:
>>
>>
>> On 05/05/2011 11:28 PM, Robert Berger wrote:
>>> Hi,
>>>
>>> I'm working on a couple of projects trying to use yocto and it boils
>>> down to the fact, that the packages and the package management (with a
>>> few tweaks) are very valuable.
>>>
>>> On the other hand "just to give it a try" it's a major effort to add
>>> kernel and bootloader to poky and moreover the gcc which comes with poky
>>> is not always what I need in terms of stability but also features (need
>>> e.g. Cortex-A8 support). So I would also need to cook gcc to compile a
>>> vendor provided kernel and bootloader.
>>
>>
>> We build for Beagleboard xM, which is a Cortex-A8. Are you missing a
>> specific feature? Hitting a particular bug?

It looks like I'm hitting a compiler/configuration bug.

1) I build everything for the beagle.
2) I use this kernel (vendor supplied 2.6.32):
wget -O xuk-src.tar.bz2
http://www.technexion.com/index.php/support-center/downloads/arm-cpu-modules/tam-3517/389-xuk-src-tar/download
3) I use this kernel config:
wget ftp://ftp.denx.de/pub/os-images/debian-6.0/arm/twister-kernel.config
4)
source tmp/environment-setup-armv7a-poky-linux-gnueabi
export ARCH=arm
export CROSS_COMPILE=arm-poky-linux-gnueabi-
make menuconfig
make -j2 uImage
...
*** End of Linux kernel configuration.
*** Execute 'make' to build the kernel or try 'make help'.

scripts/kconfig/conf -s arch/arm/Kconfig
  CHK     include/linux/version.h
  SYMLINK include/asm -> include/asm-arm
make[1]: `include/asm-arm/mach-types.h' is up to date.
  CHK     include/linux/utsrelease.h
  CALL    scripts/checksyscalls.sh
<stdin>:1523:2: warning: #warning syscall recvmmsg not implemented
  CHK     include/linux/compile.h
  CC      arch/arm/kernel/sysfs_v7.o
/tmp/ccFfYvGD.s: Assembler messages:
/tmp/ccFfYvGD.s:264: Error: selected processor does not support ARM mode
`smc #0'
/tmp/ccFfYvGD.s:306: Error: selected processor does not support ARM mode
`smc #0'
make[1]: *** [arch/arm/kernel/sysfs_v7.o] Error 1
make: *** [arch/arm/kernel] Error 2
make: *** Waiting for unfinished jobs....


That's not very elegant, but I get it to compile like this:

/*
#ifdef CONFIG_ARCH_OMAP34XX
...
*/
#define aux_ctl_store NULL
#define AUX_WR 0
/*
#ifdef CONFIG_ARCH_OMAP34XX
...
*/
#define l2_aux_ctl_store NULL
#define L2AUX_WR 0


Regards,

Robert
...Under a government which imprisons any unjustly, the true place for a
just man is also a prison. -- Henry David Thoreau

My public pgp key is available at:
http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1



