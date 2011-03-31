Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1FBAB4C8050D
	for <poky@yoctoproject.org>; Thu, 31 Mar 2011 07:37:33 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iym1 with SMTP id 1so3383197iym.35
	for <poky@yoctoproject.org>; Thu, 31 Mar 2011 05:37:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=QbfSY0mOjrFxai9KSsqKuWTZFDO3Ci9ahbI0SX/rGyY=;
	b=Tkykw7UHad/4HKhNSBjVw7IrLO/4D9Pbp7ADCfs7f5YCz7QCLcG01LDxYMiRWw7sgV
	wPIicSf6DhhdUD+yKCAiemn47py1terfqdPgjfH26SyoSTHEvR0j6ILchzVcnH5NBTd/
	8z7dPvNzNw/b9PW6DeL7fmTtVpVpzK6PHA8xw=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=B9OIkYWrzVoRPDiD0DdWQpfumnrjCf+eBfA0EOwHeQnK2RUD0lDL5pQDoYa3QoBpzQ
	XF+04O5YJmMi85pmis8OYtpBxfeXIAQbhGPi6uu27m8TuLpMA8wzsq2ZMxew5oDQw0Gr
	ou1PjOI6yH7/0hywZpkLUESc7F1kJgoSewuiw=
MIME-Version: 1.0
Received: by 10.231.130.87 with SMTP id r23mr2453620ibs.189.1301575052062;
	Thu, 31 Mar 2011 05:37:32 -0700 (PDT)
Received: by 10.231.155.138 with HTTP; Thu, 31 Mar 2011 05:37:32 -0700 (PDT)
In-Reply-To: <AANLkTi=K6AGvEvn0JJcFtx4MR9TRwL-VaDnkhaX=t7Lz@mail.gmail.com>
References: <AANLkTi=K6AGvEvn0JJcFtx4MR9TRwL-VaDnkhaX=t7Lz@mail.gmail.com>
Date: Thu, 31 Mar 2011 08:37:32 -0400
Message-ID: <AANLkTikeonvaG+5-p8Lr32Z36wRxVoSc_AJgCofKtuXS@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: v sailaja <vsailub4u@gmail.com>
Cc: poky@yoctoproject.org
Subject: Re: Problem in linux-yocto kernel 2.6.37 configuration while building with sugarbay machine
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
X-List-Received-Date: Thu, 31 Mar 2011 12:37:33 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Thu, Mar 31, 2011 at 6:28 AM, v sailaja <vsailub4u@gmail.com> wrote:
> Hi,
>
> I am trying to build linux-yocto kernel=A0 2.6.37 using the 'sugarbay'
> machine.I am getting=A0 the following an error.
> Error Log:

What layers do you have in the build ? This just looks like
an invalid configuration.

Can you put the generated .config somewhere that I can
have a look ?

Cheers,

Bruce

>
>
> -------------------------------------------------------------------------=
---------------************************************************************=
******----------------------------------------
>
> NOTE: Running task 959 of 1998 (ID: 856,
> /home/sailaja/new-poky/poky/meta/recipes-kernel/linux/linux-yocto_git.bb,
> do_kernel_configcheck)
> NOTE: package
> linux-yocto-2.6.37+git1+e2cabadc059ad8d91f7e4a023106620d93abd23a_1+2b4128=
26bbeb4a16abe2ea74f2456ab880c6e3c1-r16:
> task do_kernel_configcheck: Started
> NOTE: validating kernel configuration
> The following Kconfig files no longer exist in this tree:
> =A0=A0=A0=A0=A0 drivers/ieee1394/Kconfig
> =A0=A0=A0=A0=A0 drivers/media/video/zc0301/Kconfig
>
> This BSP sets 1 invalid/obsolete kernel options.
> These config options are not offered anywhere within this kernel.
> The full list can be found in your workspace at:
> /home/sailaja/new-poky/x86_64/poky/build/tmp/work/sugarbay-poky-linux/lin=
ux-yocto-2.6.37+git1+e2cabadc059ad8d91f7e4a023106620d93abd23a_1+2b412826bbe=
b4a16abe2ea74f2456ab880c6e3c1-r16/linux/meta/cfg/yocto/standard/common-pc-6=
4/sugarbay/invalid.cfg
>
> This BSP sets 24 kernel options that are possibly non-hardware related.
> The full list can be found in your workspace at:
> /home/sailaja/new-poky/x86_64/poky/build/tmp/work/sugarbay-poky-linux/lin=
ux-yocto-2.6.37+git1+e2cabadc059ad8d91f7e4a023106620d93abd23a_1+2b412826bbe=
b4a16abe2ea74f2456ab880c6e3c1-r16/linux/meta/cfg/yocto/standard/common-pc-6=
4/sugarbay/specified_non_hdw.cfg
>
> WARNING: There were 103 hardware options requested that do not
> =A0=A0=A0=A0=A0=A0=A0=A0 have a corresponding value present in the final =
".config" file.
> =A0=A0=A0=A0=A0=A0=A0=A0 This probably means you aren't getting the confi=
g you wanted.
> The full list can be found in your workspace at:
> /home/sailaja/new-poky/x86_64/poky/build/tmp/work/sugarbay-poky-linux/lin=
ux-yocto-2.6.37+git1+e2cabadc059ad8d91f7e4a023106620d93abd23a_1+2b412826bbe=
b4a16abe2ea74f2456ab880c6e3c1-r16/linux/meta/cfg/yocto/standard/common-pc-6=
4/sugarbay/mismatch.cfg
>
> Waiting a second to make sure you get a chance to see this...
> NOTE: package
> linux-yocto-2.6.37+git1+e2cabadc059ad8d91f7e4a023106620d93abd23a_1+2b4128=
26bbeb4a16abe2ea74f2456ab880c6e3c1-r16:
> task do_kernel_configcheck: Succeeded
> NOTE: Running task 960 of 1998 (ID: 857,
> /home/sailaja/new-poky/poky/meta/recipes-kernel/linux/linux-yocto_git.bb,
> do_compile)
> NOTE: package
> linux-yocto-2.6.37+git1+e2cabadc059ad8d91f7e4a023106620d93abd23a_1+2b4128=
26bbeb4a16abe2ea74f2456ab880c6e3c1-r16:
> task do_compile: Started
> ERROR:
> '/home/sailaja/new-poky/poky/meta/recipes-kernel/linux/linux-yocto_git.bb=
'
> failed
> ERROR: Function 'do_compile' failed (see
> /home/sailaja/new-poky/x86_64/poky/build/tmp/work/sugarbay-poky-linux/lin=
ux-yocto-2.6.37+git1+e2cabadc059ad8d91f7e4a023106620d93abd23a_1+2b412826bbe=
b4a16abe2ea74f2456ab880c6e3c1-r16/temp/log.do_compile.23825
> for further information)
> ERROR: Logfile of failure stored in:
> /home/sailaja/new-poky/x86_64/poky/build/tmp/work/sugarbay-poky-linux/lin=
ux-yocto-2.6.37+git1+e2cabadc059ad8d91f7e4a023106620d93abd23a_1+2b412826bbe=
b4a16abe2ea74f2456ab880c6e3c1-r16/temp/log.do_compile.23825
> Log data follows:
> | NOTE: make -j 6 include/linux/version.h CC=3Di586-poky-linux-gcc
> --sysroot=3D/home/sailaja/new-poky/x86_64/poky/build/tmp/sysroots/sugarba=
y
> LD=3Di586-poky-linux-ld
> --sysroot=3D/home/sailaja/new-poky/x86_64/poky/build/tmp/sysroots/sugarba=
y
> --sysroot=3D/home/sailaja/new-poky/x86_64/poky/build/tmp/sysroots/sugarba=
y
> | make -C
> /home/sailaja/new-poky/x86_64/poky/build/tmp/work/sugarbay-poky-linux/lin=
ux-yocto-2.6.37+git1+e2cabadc059ad8d91f7e4a023106620d93abd23a_1+2b412826bbe=
b4a16abe2ea74f2456ab880c6e3c1-r16/linux
> O=3D/home/sailaja/new-poky/x86_64/poky/build/tmp/work/sugarbay-poky-linux=
/linux-yocto-2.6.37+git1+e2cabadc059ad8d91f7e4a023106620d93abd23a_1+2b41282=
6bbeb4a16abe2ea74f2456ab880c6e3c1-r16/linux-sugarbay-standard-build/.
> include/linux/version.h
> |=A0=A0 CHK=A0=A0=A0=A0 include/linux/version.h
> |=A0=A0 UPD=A0=A0=A0=A0 include/linux/version.h
> | NOTE: make -j 6 dep CC=3Di586-poky-linux-gcc
> --sysroot=3D/home/sailaja/new-poky/x86_64/poky/build/tmp/sysroots/sugarba=
y
> LD=3Di586-poky-linux-ld
> --sysroot=3D/home/sailaja/new-poky/x86_64/poky/build/tmp/sysroots/sugarba=
y
> --sysroot=3D/home/sailaja/new-poky/x86_64/poky/build/tmp/sysroots/sugarba=
y
> | make -C
> /home/sailaja/new-poky/x86_64/poky/build/tmp/work/sugarbay-poky-linux/lin=
ux-yocto-2.6.37+git1+e2cabadc059ad8d91f7e4a023106620d93abd23a_1+2b412826bbe=
b4a16abe2ea74f2456ab880c6e3c1-r16/linux
> O=3D/home/sailaja/new-poky/x86_64/poky/build/tmp/work/sugarbay-poky-linux=
/linux-yocto-2.6.37+git1+e2cabadc059ad8d91f7e4a023106620d93abd23a_1+2b41282=
6bbeb4a16abe2ea74f2456ab880c6e3c1-r16/linux-sugarbay-standard-build/.
> dep
> |=A0=A0 GEN
> /home/sailaja/new-poky/x86_64/poky/build/tmp/work/sugarbay-poky-linux/lin=
ux-yocto-2.6.37+git1+e2cabadc059ad8d91f7e4a023106620d93abd23a_1+2b412826bbe=
b4a16abe2ea74f2456ab880c6e3c1-r16/linux-sugarbay-standard-build/Makefile
> | scripts/kconfig/conf --silentoldconfig Kconfig
> | *** Warning: make dep is unnecessary now.
> | NOTE: make -j 6 bzImage CC=3Di586-poky-linux-gcc
> --sysroot=3D/home/sailaja/new-poky/x86_64/poky/build/tmp/sysroots/sugarba=
y
> LD=3Di586-poky-linux-ld
> --sysroot=3D/home/sailaja/new-poky/x86_64/poky/build/tmp/sysroots/sugarba=
y
> --sysroot=3D/home/sailaja/new-poky/x86_64/poky/build/tmp/sysroots/sugarba=
y
> | make -C
> /home/sailaja/new-poky/x86_64/poky/build/tmp/work/sugarbay-poky-linux/lin=
ux-yocto-2.6.37+git1+e2cabadc059ad8d91f7e4a023106620d93abd23a_1+2b412826bbe=
b4a16abe2ea74f2456ab880c6e3c1-r16/linux
> O=3D/home/sailaja/new-poky/x86_64/poky/build/tmp/work/sugarbay-poky-linux=
/linux-yocto-2.6.37+git1+e2cabadc059ad8d91f7e4a023106620d93abd23a_1+2b41282=
6bbeb4a16abe2ea74f2456ab880c6e3c1-r16/linux-sugarbay-standard-build/.
> bzImage
> |=A0=A0 GEN
> /home/sailaja/new-poky/x86_64/poky/build/tmp/work/sugarbay-poky-linux/lin=
ux-yocto-2.6.37+git1+e2cabadc059ad8d91f7e4a023106620d93abd23a_1+2b412826bbe=
b4a16abe2ea74f2456ab880c6e3c1-r16/linux-sugarbay-standard-build/Makefile
> |=A0=A0 CHK=A0=A0=A0=A0 include/linux/version.h
> |=A0=A0 HOSTCC=A0 scripts/kallsyms
> |=A0=A0 HOSTCC=A0 scripts/conmakehash
> |=A0=A0 HOSTCC=A0 scripts/bin2c
> |=A0=A0 HOSTCC=A0 scripts/recordmcount
> |=A0=A0 CC=A0=A0=A0=A0=A0 scripts/mod/empty.o
> |
> /home/sailaja/new-poky/x86_64/poky/build/tmp/work/sugarbay-poky-linux/lin=
ux-yocto-2.6.37+git1+e2cabadc059ad8d91f7e4a023106620d93abd23a_1+2b412826bbe=
b4a16abe2ea74f2456ab880c6e3c1-r16/linux/scripts/mod/empty.c:1:0:
> error: code model 'kernel' not supported in the 32 bit mode
> |
> /home/sailaja/new-poky/x86_64/poky/build/tmp/work/sugarbay-poky-linux/lin=
ux-yocto-2.6.37+git1+e2cabadc059ad8d91f7e4a023106620d93abd23a_1+2b412826bbe=
b4a16abe2ea74f2456ab880c6e3c1-r16/linux/scripts/mod/empty.c:1:0:
> sorry, unimplemented: 64-bit mode not compiled in
> | make[4]: *** [scripts/mod/empty.o] Error 1
> | make[3]: *** [scripts/mod] Error 2
> | make[3]: *** Waiting for unfinished jobs....
> |=A0=A0 Using
> /home/sailaja/new-poky/x86_64/poky/build/tmp/work/sugarbay-poky-linux/lin=
ux-yocto-2.6.37+git1+e2cabadc059ad8d91f7e4a023106620d93abd23a_1+2b412826bbe=
b4a16abe2ea74f2456ab880c6e3c1-r16/linux
> as source for kernel
> |=A0=A0 CHK=A0=A0=A0=A0 include/generated/utsrelease.h
> |=A0=A0 UPD=A0=A0=A0=A0 include/generated/utsrelease.h
> |=A0=A0 CC=A0=A0=A0=A0=A0 kernel/bounds.s
> |
> /home/sailaja/new-poky/x86_64/poky/build/tmp/work/sugarbay-poky-linux/lin=
ux-yocto-2.6.37+git1+e2cabadc059ad8d91f7e4a023106620d93abd23a_1+2b412826bbe=
b4a16abe2ea74f2456ab880c6e3c1-r16/linux/kernel/bounds.c:1:0:
> error: code model 'kernel' not supported in the 32 bit mode
> |
> /home/sailaja/new-poky/x86_64/poky/build/tmp/work/sugarbay-poky-linux/lin=
ux-yocto-2.6.37+git1+e2cabadc059ad8d91f7e4a023106620d93abd23a_1+2b412826bbe=
b4a16abe2ea74f2456ab880c6e3c1-r16/linux/kernel/bounds.c:1:0:
> sorry, unimplemented: 64-bit mode not compiled in
> | make[3]: *** [kernel/bounds.s] Error 1
> | make[2]: *** [prepare0] Error 2
> | make[2]: *** Waiting for unfinished jobs....
> | make[2]: *** [scripts] Error 2
> | make[1]: *** [sub-make] Error 2
> | make: *** [all] Error 2
> | FATAL: oe_runmake failed
> | ERROR: Function 'do_compile' failed (see
> /home/sailaja/new-poky/x86_64/poky/build/tmp/work/sugarbay-poky-linux/lin=
ux-yocto-2.6.37+git1+e2cabadc059ad8d91f7e4a023106620d93abd23a_1+2b412826bbe=
b4a16abe2ea74f2456ab880c6e3c1-r16/temp/log.do_compile.23825
> for further information)
> NOTE: package
> linux-yocto-2.6.37+git1+e2cabadc059ad8d91f7e4a023106620d93abd23a_1+2b4128=
26bbeb4a16abe2ea74f2456ab880c6e3c1-r16:
> task do_compile: Failed
>
>
> ----------------------------------------------------------------------***=
*************************************************--------------------------=
--------------------------------
>
> TARGET_CC_ARCH =3D "-m64"
>
> I tried with both 32 and 64 bit. For both, I am getting the same error.
>
> I am using the ubuntu 10.4 on 64bit machine.
>
> Please Any one help me in finding the solution.
>
>
>
>
> --
> Thanks & Regards,
> SAI
>
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

