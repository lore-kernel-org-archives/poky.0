Return-Path: <vsailub4u@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5C40D4C8085F
	for <poky@yoctoproject.org>; Thu, 31 Mar 2011 05:28:45 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pzk10 with SMTP id 10so520137pzk.35
	for <poky@yoctoproject.org>; Thu, 31 Mar 2011 03:28:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:date:message-id:subject:from:to
	:content-type; bh=Wg9FM1ayRJPDmZlKXW7RVvu4Tyv4AkmGihjiwhFyFLc=;
	b=P312GuhlKzftkfujXpwFf5NvtPbtuN6GJEnFsszDT2YjERgTff9NfvzuJOwJGHAEBR
	Gs0u75xZNZdMcXk5LUPHOdujicWoK6clCdRzsBcI7FX8p8ntvBUnKQCl/8SH6pYJWfiG
	b56Vk32bFbeHR631Bx4dxis08Ot6PS24LB2yo=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	b=O2RjhX0Jmkmeb7x7WM+ktsm56TsV0J1+KuBDq2SnxRNPskLGTPMDhZpSkAoAVV7+gw
	vJitpQX8A9GBg+MjpWoxGFQtMcGnGySYmPnHKo4KGMXbJpwzTA1iLSa6vwwgsKpTTu+H
	QV4g/TL6PotLdnxIMy5r0DaFw9Rf+ayzvK7/Y=
MIME-Version: 1.0
Received: by 10.142.150.22 with SMTP id x22mr1942005wfd.150.1301567324737;
	Thu, 31 Mar 2011 03:28:44 -0700 (PDT)
Received: by 10.142.185.20 with HTTP; Thu, 31 Mar 2011 03:28:44 -0700 (PDT)
Date: Thu, 31 Mar 2011 15:58:44 +0530
Message-ID: <AANLkTi=K6AGvEvn0JJcFtx4MR9TRwL-VaDnkhaX=t7Lz@mail.gmail.com>
From: v sailaja <vsailub4u@gmail.com>
To: poky@yoctoproject.org
Subject: Problem in linux-yocto kernel 2.6.37 configuration while building with sugarbay machine
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
X-List-Received-Date: Thu, 31 Mar 2011 10:28:45 -0000
Content-Type: multipart/alternative; boundary=000e0cd2e27c0ad1be049fc4c298

--000e0cd2e27c0ad1be049fc4c298
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I am trying to build linux-yocto kernel  2.6.37 using the* 'sugarbay*'
machine.I am getting  the following an error.
*Error Log:*


----------------------------------------------------------------------------------------******************************************************************----------------------------------------

NOTE: Running task 959 of 1998 (ID: 856,
/home/sailaja/new-poky/poky/meta/recipes-kernel/linux/linux-yocto_git.bb,
do_kernel_configcheck)
NOTE: package
linux-yocto-2.6.37+git1+e2cabadc059ad8d91f7e4a023106620d93abd23a_1+2b412826bbeb4a16abe2ea74f2456ab880c6e3c1-r16:
task do_kernel_configcheck: Started
NOTE: validating kernel configuration
The following Kconfig files no longer exist in this tree:
      drivers/ieee1394/Kconfig
      drivers/media/video/zc0301/Kconfig
*
This BSP sets 1 invalid/obsolete kernel options.
These config options are not offered anywhere within this kernel.*
The full list can be found in your workspace at:
/home/sailaja/new-poky/x86_64/poky/build/tmp/work/sugarbay-poky-linux/linux-yocto-2.6.37+git1+e2cabadc059ad8d91f7e4a023106620d93abd23a_1+2b412826bbeb4a16abe2ea74f2456ab880c6e3c1-r16/linux/meta/cfg/yocto/standard/common-pc-64/sugarbay/invalid.cfg

This BSP sets 24 kernel options that are possibly non-hardware related.
The full list can be found in your workspace at:
/home/sailaja/new-poky/x86_64/poky/build/tmp/work/sugarbay-poky-linux/linux-yocto-2.6.37+git1+e2cabadc059ad8d91f7e4a023106620d93abd23a_1+2b412826bbeb4a16abe2ea74f2456ab880c6e3c1-r16/linux/meta/cfg/yocto/standard/common-pc-64/sugarbay/specified_non_hdw.cfg

*WARNING: There were 103 hardware options requested that do not
         have a corresponding value present in the final ".config" file.
         This probably means you aren't getting the config you wanted.
The full list can be found in your workspace at:*
/home/sailaja/new-poky/x86_64/poky/build/tmp/work/sugarbay-poky-linux/linux-yocto-2.6.37+git1+e2cabadc059ad8d91f7e4a023106620d93abd23a_1+2b412826bbeb4a16abe2ea74f2456ab880c6e3c1-r16/linux/meta/cfg/yocto/standard/common-pc-64/sugarbay/mismatch.cfg

Waiting a second to make sure you get a chance to see this...
NOTE: package
linux-yocto-2.6.37+git1+e2cabadc059ad8d91f7e4a023106620d93abd23a_1+2b412826bbeb4a16abe2ea74f2456ab880c6e3c1-r16:
task do_kernel_configcheck: Succeeded
NOTE: Running task 960 of 1998 (ID: 857,
/home/sailaja/new-poky/poky/meta/recipes-kernel/linux/linux-yocto_git.bb,
do_compile)
NOTE: package
linux-yocto-2.6.37+git1+e2cabadc059ad8d91f7e4a023106620d93abd23a_1+2b412826bbeb4a16abe2ea74f2456ab880c6e3c1-r16:
task do_compile: Started
ERROR: '/home/sailaja/new-poky/poky/meta/recipes-kernel/linux/
linux-yocto_git.bb' failed
ERROR: Function 'do_compile' failed (see
/home/sailaja/new-poky/x86_64/poky/build/tmp/work/sugarbay-poky-linux/linux-yocto-2.6.37+git1+e2cabadc059ad8d91f7e4a023106620d93abd23a_1+2b412826bbeb4a16abe2ea74f2456ab880c6e3c1-r16/temp/log.do_compile.23825
for further information)
ERROR: Logfile of failure stored in:
/home/sailaja/new-poky/x86_64/poky/build/tmp/work/sugarbay-poky-linux/linux-yocto-2.6.37+git1+e2cabadc059ad8d91f7e4a023106620d93abd23a_1+2b412826bbeb4a16abe2ea74f2456ab880c6e3c1-r16/temp/log.do_compile.23825
Log data follows:
| NOTE: make -j 6 include/linux/version.h CC=i586-poky-linux-gcc
--sysroot=/home/sailaja/new-poky/x86_64/poky/build/tmp/sysroots/sugarbay
LD=i586-poky-linux-ld
--sysroot=/home/sailaja/new-poky/x86_64/poky/build/tmp/sysroots/sugarbay
--sysroot=/home/sailaja/new-poky/x86_64/poky/build/tmp/sysroots/sugarbay
| make -C
/home/sailaja/new-poky/x86_64/poky/build/tmp/work/sugarbay-poky-linux/linux-yocto-2.6.37+git1+e2cabadc059ad8d91f7e4a023106620d93abd23a_1+2b412826bbeb4a16abe2ea74f2456ab880c6e3c1-r16/linux
O=/home/sailaja/new-poky/x86_64/poky/build/tmp/work/sugarbay-poky-linux/linux-yocto-2.6.37+git1+e2cabadc059ad8d91f7e4a023106620d93abd23a_1+2b412826bbeb4a16abe2ea74f2456ab880c6e3c1-r16/linux-sugarbay-standard-build/.
include/linux/version.h
|   CHK     include/linux/version.h
|   UPD     include/linux/version.h
| NOTE: make -j 6 dep CC=i586-poky-linux-gcc
--sysroot=/home/sailaja/new-poky/x86_64/poky/build/tmp/sysroots/sugarbay
LD=i586-poky-linux-ld
--sysroot=/home/sailaja/new-poky/x86_64/poky/build/tmp/sysroots/sugarbay
--sysroot=/home/sailaja/new-poky/x86_64/poky/build/tmp/sysroots/sugarbay
| make -C
/home/sailaja/new-poky/x86_64/poky/build/tmp/work/sugarbay-poky-linux/linux-yocto-2.6.37+git1+e2cabadc059ad8d91f7e4a023106620d93abd23a_1+2b412826bbeb4a16abe2ea74f2456ab880c6e3c1-r16/linux
O=/home/sailaja/new-poky/x86_64/poky/build/tmp/work/sugarbay-poky-linux/linux-yocto-2.6.37+git1+e2cabadc059ad8d91f7e4a023106620d93abd23a_1+2b412826bbeb4a16abe2ea74f2456ab880c6e3c1-r16/linux-sugarbay-standard-build/.
dep
|   GEN
/home/sailaja/new-poky/x86_64/poky/build/tmp/work/sugarbay-poky-linux/linux-yocto-2.6.37+git1+e2cabadc059ad8d91f7e4a023106620d93abd23a_1+2b412826bbeb4a16abe2ea74f2456ab880c6e3c1-r16/linux-sugarbay-standard-build/Makefile
| scripts/kconfig/conf --silentoldconfig Kconfig
| *** Warning: make dep is unnecessary now.
| NOTE: make -j 6 bzImage CC=i586-poky-linux-gcc
--sysroot=/home/sailaja/new-poky/x86_64/poky/build/tmp/sysroots/sugarbay
LD=i586-poky-linux-ld
--sysroot=/home/sailaja/new-poky/x86_64/poky/build/tmp/sysroots/sugarbay
--sysroot=/home/sailaja/new-poky/x86_64/poky/build/tmp/sysroots/sugarbay
| make -C
/home/sailaja/new-poky/x86_64/poky/build/tmp/work/sugarbay-poky-linux/linux-yocto-2.6.37+git1+e2cabadc059ad8d91f7e4a023106620d93abd23a_1+2b412826bbeb4a16abe2ea74f2456ab880c6e3c1-r16/linux
O=/home/sailaja/new-poky/x86_64/poky/build/tmp/work/sugarbay-poky-linux/linux-yocto-2.6.37+git1+e2cabadc059ad8d91f7e4a023106620d93abd23a_1+2b412826bbeb4a16abe2ea74f2456ab880c6e3c1-r16/linux-sugarbay-standard-build/.
bzImage
|   GEN
/home/sailaja/new-poky/x86_64/poky/build/tmp/work/sugarbay-poky-linux/linux-yocto-2.6.37+git1+e2cabadc059ad8d91f7e4a023106620d93abd23a_1+2b412826bbeb4a16abe2ea74f2456ab880c6e3c1-r16/linux-sugarbay-standard-build/Makefile
|   CHK     include/linux/version.h
|   HOSTCC  scripts/kallsyms
|   HOSTCC  scripts/conmakehash
|   HOSTCC  scripts/bin2c
|   HOSTCC  scripts/recordmcount
|   CC      scripts/mod/empty.o
|
/home/sailaja/new-poky/x86_64/poky/build/tmp/work/sugarbay-poky-linux/linux-yocto-2.6.37+git1+e2cabadc059ad8d91f7e4a023106620d93abd23a_1+2b412826bbeb4a16abe2ea74f2456ab880c6e3c1-r16/linux/scripts
*/mod/empty.c:1:0: error: code model 'kernel' not supported in the 32 bit
mode*
|
/home/sailaja/new-poky/x86_64/poky/build/tmp/work/sugarbay-poky-linux/linux-yocto-2.6.37+git1+e2cabadc059ad8d91f7e4a023106620d93abd23a_1+2b412826bbeb4a16abe2ea74f2456ab880c6e3c1-r16/linux/scripts
*/mod/empty.c:1:0: sorry, unimplemented: 64-bit mode not compiled in*
| make[4]: *** [scripts/mod/empty.o] Error 1
| make[3]: *** [scripts/mod] Error 2
| make[3]: *** Waiting for unfinished jobs....
|   Using
/home/sailaja/new-poky/x86_64/poky/build/tmp/work/sugarbay-poky-linux/linux-yocto-2.6.37+git1+e2cabadc059ad8d91f7e4a023106620d93abd23a_1+2b412826bbeb4a16abe2ea74f2456ab880c6e3c1-r16/linux
as source for kernel
|   CHK     include/generated/utsrelease.h
|   UPD     include/generated/utsrelease.h
|   CC      kernel/bounds.s
|
/home/sailaja/new-poky/x86_64/poky/build/tmp/work/sugarbay-poky-linux/linux-yocto-2.6.37+git1+e2cabadc059ad8d91f7e4a023106620d93abd23a_1+2b412826bbeb4a16abe2ea74f2456ab880c6e3c1-r16/linux/kernel/bounds.c:1:0:
error: code model 'kernel' not supported in the 32 bit mode
|
/home/sailaja/new-poky/x86_64/poky/build/tmp/work/sugarbay-poky-linux/linux-yocto-2.6.37+git1+e2cabadc059ad8d91f7e4a023106620d93abd23a_1+2b412826bbeb4a16abe2ea74f2456ab880c6e3c1-r16/linux/kernel/bounds.c:1:0:
sorry, unimplemented: 64-bit mode not compiled in
| make[3]: *** [kernel/bounds.s] Error 1
| make[2]: *** [prepare0] Error 2
| make[2]: *** Waiting for unfinished jobs....
| make[2]: *** [scripts] Error 2
| make[1]: *** [sub-make] Error 2
| make: *** [all] Error 2
| FATAL: oe_runmake failed
| ERROR: Function 'do_compile' failed (see
/home/sailaja/new-poky/x86_64/poky/build/tmp/work/sugarbay-poky-linux/linux-yocto-2.6.37+git1+e2cabadc059ad8d91f7e4a023106620d93abd23a_1+2b412826bbeb4a16abe2ea74f2456ab880c6e3c1-r16/temp/log.do_compile.23825
for further information)
NOTE: package
linux-yocto-2.6.37+git1+e2cabadc059ad8d91f7e4a023106620d93abd23a_1+2b412826bbeb4a16abe2ea74f2456ab880c6e3c1-r16:
task do_compile: Failed


----------------------------------------------------------------------****************************************************----------------------------------------------------------

TARGET_CC_ARCH = "-m64"

I tried with* both 32 and 64 bit*. For both, I am getting the same error.

I am using the ubuntu 10.4 on 64bit machine.

Please Any one help me in finding the solution.




-- 
Thanks & Regards,
SAI

--000e0cd2e27c0ad1be049fc4c298
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi,<br><br>I am trying to build linux-yocto kernel=A0 2.6.37 using the<i> &=
#39;sugarbay</i>&#39; machine.I am getting=A0 the following an error.<br><u=
>Error Log:</u><br><br>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
 --------------------------------------------------------------------------=
--------------*************************************************************=
*****----------------------------------------<br>
<br>NOTE: Running task 959 of 1998 (ID: 856, /home/sailaja/new-poky/poky/me=
ta/recipes-kernel/linux/<a href=3D"http://linux-yocto_git.bb">linux-yocto_g=
it.bb</a>, do_kernel_configcheck)<br>NOTE: package linux-yocto-2.6.37+git1+=
e2cabadc059ad8d91f7e4a023106620d93abd23a_1+2b412826bbeb4a16abe2ea74f2456ab8=
80c6e3c1-r16: task do_kernel_configcheck: Started<br>
NOTE: validating kernel configuration<br>The following Kconfig files no lon=
ger exist in this tree:<br>=A0=A0=A0=A0=A0 drivers/ieee1394/Kconfig<br>=A0=
=A0=A0=A0=A0 drivers/media/video/zc0301/Kconfig<br><i><br>This BSP sets 1 i=
nvalid/obsolete kernel options.<br>
These config options are not offered anywhere within this kernel.</i><br>Th=
e full list can be found in your workspace at:<br>/home/sailaja/new-poky/x8=
6_64/poky/build/tmp/work/sugarbay-poky-linux/linux-yocto-2.6.37+git1+e2caba=
dc059ad8d91f7e4a023106620d93abd23a_1+2b412826bbeb4a16abe2ea74f2456ab880c6e3=
c1-r16/linux/meta/cfg/yocto/standard/common-pc-64/sugarbay/invalid.cfg<br>
<br>This BSP sets 24 kernel options that are possibly non-hardware related.=
<br>The full list can be found in your workspace at:<br>/home/sailaja/new-p=
oky/x86_64/poky/build/tmp/work/sugarbay-poky-linux/linux-yocto-2.6.37+git1+=
e2cabadc059ad8d91f7e4a023106620d93abd23a_1+2b412826bbeb4a16abe2ea74f2456ab8=
80c6e3c1-r16/linux/meta/cfg/yocto/standard/common-pc-64/sugarbay/specified_=
non_hdw.cfg<br>
<br><i>WARNING: <b>There were 103 hardware options requested that do not<br=
>=A0=A0=A0=A0=A0=A0=A0=A0 have a corresponding value present in the final &=
quot;.config&quot; file.<br>=A0=A0=A0=A0=A0=A0=A0=A0 This probably means yo=
u aren&#39;t getting the config you wanted</b>.<br>
The full list can be found in your workspace at:</i><br>/home/sailaja/new-p=
oky/x86_64/poky/build/tmp/work/sugarbay-poky-linux/linux-yocto-2.6.37+git1+=
e2cabadc059ad8d91f7e4a023106620d93abd23a_1+2b412826bbeb4a16abe2ea74f2456ab8=
80c6e3c1-r16/linux/meta/cfg/yocto/standard/common-pc-64/sugarbay/mismatch.c=
fg<br>
<br>Waiting a second to make sure you get a chance to see this...<br>NOTE: =
package linux-yocto-2.6.37+git1+e2cabadc059ad8d91f7e4a023106620d93abd23a_1+=
2b412826bbeb4a16abe2ea74f2456ab880c6e3c1-r16: task do_kernel_configcheck: S=
ucceeded<br>
NOTE: Running task 960 of 1998 (ID: 857, /home/sailaja/new-poky/poky/meta/r=
ecipes-kernel/linux/<a href=3D"http://linux-yocto_git.bb">linux-yocto_git.b=
b</a>, do_compile)<br>NOTE: package linux-yocto-2.6.37+git1+e2cabadc059ad8d=
91f7e4a023106620d93abd23a_1+2b412826bbeb4a16abe2ea74f2456ab880c6e3c1-r16: t=
ask do_compile: Started<br>
ERROR: &#39;/home/sailaja/new-poky/poky/meta/recipes-kernel/linux/<a href=
=3D"http://linux-yocto_git.bb">linux-yocto_git.bb</a>&#39; failed<br>ERROR:=
 Function &#39;do_compile&#39; failed (see /home/sailaja/new-poky/x86_64/po=
ky/build/tmp/work/sugarbay-poky-linux/linux-yocto-2.6.37+git1+e2cabadc059ad=
8d91f7e4a023106620d93abd23a_1+2b412826bbeb4a16abe2ea74f2456ab880c6e3c1-r16/=
temp/log.do_compile.23825 for further information)<br>
ERROR: Logfile of failure stored in: /home/sailaja/new-poky/x86_64/poky/bui=
ld/tmp/work/sugarbay-poky-linux/linux-yocto-2.6.37+git1+e2cabadc059ad8d91f7=
e4a023106620d93abd23a_1+2b412826bbeb4a16abe2ea74f2456ab880c6e3c1-r16/temp/l=
og.do_compile.23825<br>
Log data follows:<br>| NOTE: make -j 6 include/linux/version.h CC=3Di586-po=
ky-linux-gcc=A0 --sysroot=3D/home/sailaja/new-poky/x86_64/poky/build/tmp/sy=
sroots/sugarbay LD=3Di586-poky-linux-ld --sysroot=3D/home/sailaja/new-poky/=
x86_64/poky/build/tmp/sysroots/sugarbay=A0 --sysroot=3D/home/sailaja/new-po=
ky/x86_64/poky/build/tmp/sysroots/sugarbay<br>
| make -C /home/sailaja/new-poky/x86_64/poky/build/tmp/work/sugarbay-poky-l=
inux/linux-yocto-2.6.37+git1+e2cabadc059ad8d91f7e4a023106620d93abd23a_1+2b4=
12826bbeb4a16abe2ea74f2456ab880c6e3c1-r16/linux O=3D/home/sailaja/new-poky/=
x86_64/poky/build/tmp/work/sugarbay-poky-linux/linux-yocto-2.6.37+git1+e2ca=
badc059ad8d91f7e4a023106620d93abd23a_1+2b412826bbeb4a16abe2ea74f2456ab880c6=
e3c1-r16/linux-sugarbay-standard-build/. include/linux/version.h<br>
|=A0=A0 CHK=A0=A0=A0=A0 include/linux/version.h<br>|=A0=A0 UPD=A0=A0=A0=A0 =
include/linux/version.h<br>| NOTE: make -j 6 dep CC=3Di586-poky-linux-gcc=
=A0 --sysroot=3D/home/sailaja/new-poky/x86_64/poky/build/tmp/sysroots/sugar=
bay LD=3Di586-poky-linux-ld --sysroot=3D/home/sailaja/new-poky/x86_64/poky/=
build/tmp/sysroots/sugarbay=A0 --sysroot=3D/home/sailaja/new-poky/x86_64/po=
ky/build/tmp/sysroots/sugarbay<br>
| make -C /home/sailaja/new-poky/x86_64/poky/build/tmp/work/sugarbay-poky-l=
inux/linux-yocto-2.6.37+git1+e2cabadc059ad8d91f7e4a023106620d93abd23a_1+2b4=
12826bbeb4a16abe2ea74f2456ab880c6e3c1-r16/linux O=3D/home/sailaja/new-poky/=
x86_64/poky/build/tmp/work/sugarbay-poky-linux/linux-yocto-2.6.37+git1+e2ca=
badc059ad8d91f7e4a023106620d93abd23a_1+2b412826bbeb4a16abe2ea74f2456ab880c6=
e3c1-r16/linux-sugarbay-standard-build/. dep<br>
|=A0=A0 GEN=A0=A0=A0=A0 /home/sailaja/new-poky/x86_64/poky/build/tmp/work/s=
ugarbay-poky-linux/linux-yocto-2.6.37+git1+e2cabadc059ad8d91f7e4a023106620d=
93abd23a_1+2b412826bbeb4a16abe2ea74f2456ab880c6e3c1-r16/linux-sugarbay-stan=
dard-build/Makefile<br>
| scripts/kconfig/conf --silentoldconfig Kconfig<br>| *** Warning: make dep=
 is unnecessary now.<br>| NOTE: make -j 6 bzImage CC=3Di586-poky-linux-gcc=
=A0 --sysroot=3D/home/sailaja/new-poky/x86_64/poky/build/tmp/sysroots/sugar=
bay LD=3Di586-poky-linux-ld --sysroot=3D/home/sailaja/new-poky/x86_64/poky/=
build/tmp/sysroots/sugarbay=A0 --sysroot=3D/home/sailaja/new-poky/x86_64/po=
ky/build/tmp/sysroots/sugarbay<br>
| make -C /home/sailaja/new-poky/x86_64/poky/build/tmp/work/sugarbay-poky-l=
inux/linux-yocto-2.6.37+git1+e2cabadc059ad8d91f7e4a023106620d93abd23a_1+2b4=
12826bbeb4a16abe2ea74f2456ab880c6e3c1-r16/linux O=3D/home/sailaja/new-poky/=
x86_64/poky/build/tmp/work/sugarbay-poky-linux/linux-yocto-2.6.37+git1+e2ca=
badc059ad8d91f7e4a023106620d93abd23a_1+2b412826bbeb4a16abe2ea74f2456ab880c6=
e3c1-r16/linux-sugarbay-standard-build/. bzImage<br>
|=A0=A0 GEN=A0=A0=A0=A0 /home/sailaja/new-poky/x86_64/poky/build/tmp/work/s=
ugarbay-poky-linux/linux-yocto-2.6.37+git1+e2cabadc059ad8d91f7e4a023106620d=
93abd23a_1+2b412826bbeb4a16abe2ea74f2456ab880c6e3c1-r16/linux-sugarbay-stan=
dard-build/Makefile<br>
|=A0=A0 CHK=A0=A0=A0=A0 include/linux/version.h<br>|=A0=A0 HOSTCC=A0 script=
s/kallsyms<br>|=A0=A0 HOSTCC=A0 scripts/conmakehash<br>|=A0=A0 HOSTCC=A0 sc=
ripts/bin2c<br>|=A0=A0 HOSTCC=A0 scripts/recordmcount<br>|=A0=A0 CC=A0=A0=
=A0=A0=A0 scripts/mod/empty.o<br>| /home/sailaja/new-poky/x86_64/poky/build=
/tmp/work/sugarbay-poky-linux/linux-yocto-2.6.37+git1+e2cabadc059ad8d91f7e4=
a023106620d93abd23a_1+2b412826bbeb4a16abe2ea74f2456ab880c6e3c1-r16/linux/sc=
ripts<b><i>/mod/empty.c:1:0: error: code model &#39;kernel&#39; not support=
ed in the 32 bit mode</i></b><br>
| /home/sailaja/new-poky/x86_64/poky/build/tmp/work/sugarbay-poky-linux/lin=
ux-yocto-2.6.37+git1+e2cabadc059ad8d91f7e4a023106620d93abd23a_1+2b412826bbe=
b4a16abe2ea74f2456ab880c6e3c1-r16/linux/scripts<b><i>/mod/empty.c:1:0: sorr=
y, unimplemented: 64-bit mode not compiled in</i></b><br>
| make[4]: *** [scripts/mod/empty.o] Error 1<br>| make[3]: *** [scripts/mod=
] Error 2<br>| make[3]: *** Waiting for unfinished jobs....<br>|=A0=A0 Usin=
g /home/sailaja/new-poky/x86_64/poky/build/tmp/work/sugarbay-poky-linux/lin=
ux-yocto-2.6.37+git1+e2cabadc059ad8d91f7e4a023106620d93abd23a_1+2b412826bbe=
b4a16abe2ea74f2456ab880c6e3c1-r16/linux as source for kernel<br>
|=A0=A0 CHK=A0=A0=A0=A0 include/generated/utsrelease.h<br>|=A0=A0 UPD=A0=A0=
=A0=A0 include/generated/utsrelease.h<br>|=A0=A0 CC=A0=A0=A0=A0=A0 kernel/b=
ounds.s<br>| /home/sailaja/new-poky/x86_64/poky/build/tmp/work/sugarbay-pok=
y-linux/linux-yocto-2.6.37+git1+e2cabadc059ad8d91f7e4a023106620d93abd23a_1+=
2b412826bbeb4a16abe2ea74f2456ab880c6e3c1-r16/linux/kernel/bounds.c:1:0: err=
or: code model &#39;kernel&#39; not supported in the 32 bit mode<br>
| /home/sailaja/new-poky/x86_64/poky/build/tmp/work/sugarbay-poky-linux/lin=
ux-yocto-2.6.37+git1+e2cabadc059ad8d91f7e4a023106620d93abd23a_1+2b412826bbe=
b4a16abe2ea74f2456ab880c6e3c1-r16/linux/kernel/bounds.c:1:0: sorry, unimple=
mented: 64-bit mode not compiled in<br>
| make[3]: *** [kernel/bounds.s] Error 1<br>| make[2]: *** [prepare0] Error=
 2<br>| make[2]: *** Waiting for unfinished jobs....<br>| make[2]: *** [scr=
ipts] Error 2<br>| make[1]: *** [sub-make] Error 2<br>| make: *** [all] Err=
or 2<br>
| FATAL: oe_runmake failed<br>| ERROR: Function &#39;do_compile&#39; failed=
 (see /home/sailaja/new-poky/x86_64/poky/build/tmp/work/sugarbay-poky-linux=
/linux-yocto-2.6.37+git1+e2cabadc059ad8d91f7e4a023106620d93abd23a_1+2b41282=
6bbeb4a16abe2ea74f2456ab880c6e3c1-r16/temp/log.do_compile.23825 for further=
 information)<br>
NOTE: package linux-yocto-2.6.37+git1+e2cabadc059ad8d91f7e4a023106620d93abd=
23a_1+2b412826bbeb4a16abe2ea74f2456ab880c6e3c1-r16: task do_compile: Failed=
<br><br>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 ----------------------------------------------------------------------*=
***************************************************------------------------=
----------------------------------<br>
<br>TARGET_CC_ARCH =3D &quot;-m64&quot;<br><br>I tried with<b> both 32 and =
64 bit</b>. For both, I am getting the same error.<br><br>I am using the ub=
untu 10.4 on 64bit machine.<br><br>Please Any one help me in finding the so=
lution.<br>
<br><br><br><br>-- <br>Thanks &amp; Regards,<br>SAI<br><br>

--000e0cd2e27c0ad1be049fc4c298--
