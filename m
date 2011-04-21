Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-vx0-f176.google.com (mail-vx0-f176.google.com
	[209.85.220.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0B7D14C80050
	for <poky@yoctoproject.org>; Thu, 21 Apr 2011 07:29:36 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by vxa37 with SMTP id 37so1945119vxa.35
	for <poky@yoctoproject.org>; Thu, 21 Apr 2011 05:29:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=j5zmtaUo9m+Mti+uUPEA2+FbOSp+uNWploB8Y2SGtwI=;
	b=UWe1Ws6QrK7sX8iiIXGFgWNvVDHYqFjDgHp1mvXfxfffDDnj2yN/ZXunHW671sFPEt
	4D1db8Z1aMs8OG0/ScHoLFloSbCdPe6JEKdpBLESNqNC+JuWsugyCft++PLVL5AMVu+p
	dnnuyG/3QeY/i/Ogv2thnNawUNYZuX04u/Q88=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=gjtQDEjaO3/6cysxoGpkaD9RrSRy7c9Ay95Xt5A9VgJcc4O2Lc3HUP/Lsq6hxre5i+
	ahGEe39UVC4KPrVMYpOztmTye4OIWYCndOYkMFx5WO0G5TmylPcIFhjJWtJgTEnqKgSM
	v+New3w5lJcZEU93NfxbV8gIoDcRHJmWa7rCA=
MIME-Version: 1.0
Received: by 10.52.18.74 with SMTP id u10mr12501619vdd.192.1303388975186; Thu,
	21 Apr 2011 05:29:35 -0700 (PDT)
Received: by 10.220.75.198 with HTTP; Thu, 21 Apr 2011 05:29:35 -0700 (PDT)
In-Reply-To: <BANLkTi=GWFWbyRsRXzqaZNzXYZY3yVUr-Q@mail.gmail.com>
References: <BANLkTi=GWFWbyRsRXzqaZNzXYZY3yVUr-Q@mail.gmail.com>
Date: Thu, 21 Apr 2011 08:29:35 -0400
Message-ID: <BANLkTi=_dcPr1L=JOV1uqam=qd9wia3P5w@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: v sailaja <vsailub4u@gmail.com>
Cc: poky@yoctoproject.org
Subject: Re: Brach problem in the linux-yocto kernel fon sandybridge platform for fishriver machine
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
X-List-Received-Date: Thu, 21 Apr 2011 12:29:36 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Thu, Apr 21, 2011 at 6:33 AM, v sailaja <vsailub4u@gmail.com> wrote:
> Hi,
>
> I am=A0 building the poky for "sandybridge" platform on "linux-yocto- 2.6=
.37"
> kernel for "fishriver" machine
> "meta_intel"=A0 is cloned from git://git.pokylinux.org/meta-intel and i c=
opied
> this folder into poky.
> I have the follwing folder Under meta-intel
>
> common
> meta-emenlow
> meta-jasperforest
> meta-sugarbay
> meta-crownbay
> meta-fishriver
> meta-n450
>
> I=A0 made changes in the local.cof and bblayers.conf as
> MACHINE ?=3D "fishriver"
>
> BBLAYERS =3D " \
> =A0 /home/sailaja/new-sandybridge/poky_intel/meta \
> =A0 /home/sailaja/new-sandybridge/poky_intel/meta-intel/meta-fishriver \
>
>
> I am facing a problem at do_kernel_cheout.
> It is searching for the the kernel branch "crownbay" But it is not here
> /build/tmp/work/fishriver-poky-linux/linux-yocto-2.6.37+git1+51c761795b07=
8bf3c80104ed6e73b3d995067384_1+86bd1278bbf11589d87639df17d2f5f42db97b60-r16=
/linux
> If i do "git branch -a" in this linux folder=A0 "crownbay" is=A0 not here

We've had repeated problems with the autobuilders and mirrors getting
invalid clones of the kernel repo and then feeding them to builds. In parti=
cular
it seems to crop up on the crownbay.

As you said, the branch is moste definitely in the upstream repo:

http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-2.6.37/log/?h=3Dyocto=
/standard/crownbay

The fix in the past has been for someone to kick the autobuilder and get th=
e
kernel repo clone fixed there.

>
>
> * master
> =A0 meta
> =A0 yocto/base
> =A0 yocto/standard/arm-versatile-926ejs
> =A0 yocto/standard/base
> =A0 yocto/standard/beagleboard
> =A0 yocto/standard/common-pc-64/base
> =A0 yocto/standard/common-pc-64/jasperforest
> =A0 yocto/standard/common-pc-64/sugarbay
> =A0 yocto/standard/common-pc/atom-pc
> =A0 yocto/standard/common-pc/base
> =A0 yocto/standard/emenlow
> =A0 yocto/standard/fsl-mpc8315e-rdb
> =A0 yocto/standard/mti-malta32-be
> =A0 yocto/standard/mti-malta32-le
> =A0 yocto/standard/preempt-rt/base
> =A0 yocto/standard/preempt-rt/common-pc
> =A0 yocto/standard/preempt-rt/common-pc-64
> =A0 yocto/standard/qemu-ppc32
> =A0 yocto/standard/routerstationpro
> =A0 remotes/origin/master
> =A0 remotes/origin/meta
> =A0 remotes/origin/yocto/base
> =A0 remotes/origin/yocto/standard/arm-versatile-926ejs
> =A0 remotes/origin/yocto/standard/base
> =A0 remotes/origin/yocto/standard/beagleboard
> =A0 remotes/origin/yocto/standard/common-pc-64/base
> =A0 remotes/origin/yocto/standard/common-pc-64/jasperforest
> =A0 remotes/origin/yocto/standard/common-pc-64/sugarbay
> =A0 remotes/origin/yocto/standard/common-pc/atom-pc
> =A0 remotes/origin/yocto/standard/common-pc/base
> =A0=A0 remotes/origin/yocto/standard/emenlow
> =A0 remotes/origin/yocto/standard/fsl-mpc8315e-rdb
> =A0 remotes/origin/yocto/standard/mti-malta32-be
> =A0 remotes/origin/yocto/standard/mti-malta32-le
> =A0 remotes/origin/yocto/standard/preempt-rt/base
> =A0 remotes/origin/yocto/standard/preempt-rt/common-pc
> =A0 remotes/origin/yocto/standard/preempt-rt/common-pc-64
> =A0 remotes/origin/yocto/standard/qemu-ppc32
>
>
> for the "crowbay" branch, it=A0 should=A0 be like as follows
>
> * yocto/standard/crownbay
> remotes/origin/yocto/standard/crownbay
>
> But it is searching=A0 for the "crowbay" branch, The error log=A0 as foll=
ows
>
> Error Log:
>
> OTE: Running task 1230 of 3748 (ID: 337,
> /home/sailaja/poky_intel/meta/recipes-kernel/linux/linux-yocto_git.bb,
> do_setscene)
> NOTE: package
> linux-yocto-2.6.37+git1+51c761795b078bf3c80104ed6e73b3d995067384_1+86bd12=
78bbf11589d87639df17d2f5f42db97b60-r16:
> task do_setscene: Started
> NOTE: package
> linux-yocto-2.6.37+git1+51c761795b078bf3c80104ed6e73b3d995067384_1+86bd12=
78bbf11589d87639df17d2f5f42db97b60-r16:
> task do_setscene: Succeeded
> NOTE: Running task 1231 of 3748 (ID: 336,
> /home/sailaja/poky_intel/meta/recipes-kernel/linux/linux-yocto_git.bb,
> do_fetch)
> NOTE: package
> linux-yocto-2.6.37+git1+51c761795b078bf3c80104ed6e73b3d995067384_1+86bd12=
78bbf11589d87639df17d2f5f42db97b60-r16:
> task do_fetch: Started
> NOTE: package
> linux-yocto-2.6.37+git1+51c761795b078bf3c80104ed6e73b3d995067384_1+86bd12=
78bbf11589d87639df17d2f5f42db97b60-r16:
> task do_fetch: Succeeded
> NOTE: Running task 1232 of 3748 (ID: 332,
> /home/sailaja/poky_intel/meta/recipes-kernel/linux/linux-yocto_git.bb,
> do_unpack)
> NOTE: package
> linux-yocto-2.6.37+git1+51c761795b078bf3c80104ed6e73b3d995067384_1+86bd12=
78bbf11589d87639df17d2f5f42db97b60-r16:
> task do_unpack: Started
> NOTE: package
> linux-yocto-2.6.37+git1+51c761795b078bf3c80104ed6e73b3d995067384_1+86bd12=
78bbf11589d87639df17d2f5f42db97b60-r16:
> task do_unpack: Succeeded
> NOTE: Running task 1267 of 3748 (ID: 331,
> /home/sailaja/poky_intel/meta/recipes-kernel/linux/linux-yocto_git.bb,
> do_kernel_checkout)
> NOTE: package
> linux-yocto-2.6.37+git1+51c761795b078bf3c80104ed6e73b3d995067384_1+86bd12=
78bbf11589d87639df17d2f5f42db97b60-r16:
> task do_kernel_checkout: Started
> ERROR:
> '/home/sailaja/poky_intel/meta/recipes-kernel/linux/linux-yocto_git.bb'
> failed
> ERROR: Function 'do_kernel_checkout' failed (see
> /home/sailaja/poky_intel/build/tmp/work/fishriver-poky-linux/linux-yocto-=
2.6.37+git1+51c761795b078bf3c80104ed6e73b3d995067384_1+86bd1278bbf11589d876=
39df17d2f5f42db97b60-r16/temp/log.do_kernel_checkout.18701
> for further information)
> ERROR: Logfile of failure stored in:
> /home/sailaja/poky_intel/build/tmp/work/fishriver-poky-linux/linux-yocto-=
2.6.37+git1+51c761795b078bf3c80104ed6e73b3d995067384_1+86bd1278bbf11589d876=
39df17d2f5f42db97b60-r16/temp/log.do_kernel_checkout.18701
> Log data follows:
> | Fixing up git directory for standard/yocto/standard/crownbay
> | error: pathspec 'yocto/standard/crownbay' did not match any file(s) kno=
wn
> to git.
> | ERROR: Function 'do_kernel_checkout' failed (see
> /home/sailaja/poky_intel/build/tmp/work/fishriver-poky-linux/linux-yocto-=
2.6.37+git1+51c761795b078bf3c80104ed6e73b3d995067384_1+86bd1278bbf11589d876=
39df17d2f5f42db97b60-r16/temp/log.do_kernel_checkout.18701
> for further information)
> NOTE: package
> linux-yocto-2.6.37+git1+51c761795b078bf3c80104ed6e73b3d995067384_1+86bd12=
78bbf11589d87639df17d2f5f42db97b60-r16:
> task do_kernel_checkout: Failed
> ERROR: Task 331
> (/home/sailaja/poky_intel/meta/recipes-kernel/linux/linux-yocto_git.bb,
> do_kernel_checkout) failed with exit code '1'
>
>
>
> Please Can anyone suggest me how to track this error.
> Please tell why it is so happening
>

This can be worked around with a local clone of the kernel directly from
git.yoctoproject.org (to replace the one that was fetched by the build) and
then pointing to it directly, but that would also involve using meta-kernel=
-dev
and some other setup that you likely do not want to do.

The better fix is to wait for the autobuilders / mirrors to be checked and
updated if required.

Cheers,

Bruce

>
>
>
>
>
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

