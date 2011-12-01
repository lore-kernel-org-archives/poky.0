Return-Path: <gerard@de-haardt.com>
Received: from cpsmtpb-ews03.kpnxchange.com (cpsmtpb-ews03.kpnxchange.com
	[213.75.39.6])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA18BE0030A
	for <poky@yoctoproject.org>; Thu,  1 Dec 2011 01:30:07 -0800 (PST)
Received: from cpsps-ews25.kpnxchange.com ([10.94.84.191]) by
	cpsmtpb-ews03.kpnxchange.com with Microsoft SMTPSVC(6.0.3790.4675); 
	Thu, 1 Dec 2011 10:30:06 +0100
Received: from CPSMTPM-CMT103.kpnxchange.com ([195.121.3.19]) by
	cpsps-ews25.kpnxchange.com with Microsoft SMTPSVC(7.5.7601.17514); 
	Thu, 1 Dec 2011 10:30:06 +0100
Received: from mail.de-haardt.com ([86.81.67.223]) by
	CPSMTPM-CMT103.kpnxchange.com with Microsoft
	SMTPSVC(7.0.6002.18264); Thu, 1 Dec 2011 10:30:05 +0100
Received: from [192.168.1.160] ([192.168.1.160])
	(authenticated user gerard@de-haardt.com) by mail.de-haardt.com
	(using TLSv1/SSLv3 with cipher AES256-SHA (256 bits))
	for poky@yoctoproject.org; Thu, 1 Dec 2011 10:30:03 +0100
Message-ID: <4ED7491B.4010205@de-haardt.com>
Date: Thu, 01 Dec 2011 10:30:03 +0100
From: Gerard van den Bosch <gerard@de-haardt.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.21) Gecko/20110831 Lightning/1.0b2 Thunderbird/3.1.13
MIME-Version: 1.0
To: poky <poky@yoctoproject.org>
X-OriginalArrivalTime: 01 Dec 2011 09:30:05.0782 (UTC)
	FILETIME=[CF695F60:01CCB00B]
X-RcptDomain: yoctoproject.org
Subject: kernel do_install copy error
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
X-List-Received-Date: Thu, 01 Dec 2011 09:30:08 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hello,

I have some problems with the do_install of a vendor kernel on the 
Edison release. I used the same kernel recipe as in the very old Laverne 
release that I last build several months ago.

It gave the following error during the do_install routine of the kernel:
+ cp -fR COPYING CREDITS Documentation Kbuild MAINTAINERS Makefile 
Module.symvers README REPORTING-BUGS System.map arch block crypto 
defconfig drivers firmware fs headerstash image include init ipc kernel 
lib mm modules.order net pseudo samples scripts security sound temp 
tools usr virt vmlinux vmlinux.o 
/home/gerard/poky-edison-6.0/build/tmp/work/tao3530-poky-linux-gnueabi/tao-psp-2.6.32-r1/image/kernel
cp: cannot copy a directory, `image', into itself, 
`/home/gerard/poky-edison-6.0/build/tmp/work/tao3530-poky-linux-gnueabi/tao-psp-2.6.32-r1/image/kernel/image'

Looked in the kernel.bbclass where this happened and the error seemed 
originating from this command:
151    cp -fR * $kerneldir

Found this was changed in this commit:
http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/meta/classes/kernel.bbclass?id=3b49416fc7a7ee9bfe722f2e6089aa18df41dc58

First try I have reverted from "#Take care of arch specific headers" to 
"#Clean and remove files....".

But then the oe_runmake stuff after that gave errors:
make[3]: *** [silentoldconfig] Error 1
make[2]: *** [silentoldconfig] Error 2
   CLEAN   arch/arm/kernel
scripts/Makefile.clean:17: 
/home/gerard/poky-edison-6.0/build/tmp/work/tao3530-poky-linux-gnueabi/tao-psp-2.6.32-r1/image/kernel/block/Makefile: 
No such file or directory
make[1]: *** No rule to make target 
`/home/gerard/poky-edison-6.0/build/tmp/work/tao3530-poky-linux-gnueabi/tao-psp-2.6.32-r1/image/kernel/block/Makefile'.  
Stop.
make: *** [_clean_block] Error 2
make: Leaving directory `/hom
arch/arm/Kconfig:192: can't open file "init/Kconfig"
make[3]: *** [silentoldconfig] Error 1
make[2]: *** [silentoldconfig] Error 2
   CLEAN   arch/arm/kernel
scripts/Makefile.clean:17: 
/home/gerard/poky-edison-6.0/build/tmp/work/tao3530-poky-linux-gnueabi/tao-psp-2.6.32-r1/image/kernel/block/Makefile: 
No such file or directory
make[1]: *** No rule to make target 
`/home/gerard/poky-edison-6.0/build/tmp/work/tao3530-poky-linux-gnueabi/tao-psp-2.6.32-r1/image/kernel/block/Makefile'.  
Stop.
make: *** [_clean_block] Error 2
e/gerard/poky-edison-6.0/build/tmp/work/tao3530-poky-linux-gnueabi/tao-psp-2.6.32-r1/image/kernel'
+ die 'oe_runmake failed'
+ bbfatal 'oe_runmake failed'
+ echo 'ERROR: oe_runmake failed'
ERROR: oe_runmake failed
+ exit 1

make: Leaving directory 
`/home/gerard/poky-edison-6.0/build/tmp/work/tao3530-poky-linux-gnueabi/tao-psp-2.6.32-r1/image/kernel'
+ die 'oe_runmake failed'
+ bbfatal 'oe_runmake failed'
+ echo 'ERROR: oe_runmake failed'
ERROR: oe_runmake failed
+ exit 1

When I commented the 4 lines from oe_runmake the do_install succeeded.
I have made a pastebin of my kernel recipe here: 
http://pastebin.com/vh3C0jzb

Are there problems with my recipe or are there other things going wrong?

Regards,
Gerard




