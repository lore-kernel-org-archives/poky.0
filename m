Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-gy0-f176.google.com (mail-gy0-f176.google.com
	[209.85.160.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3884FE004B2
	for <poky@yoctoproject.org>; Thu, 11 Aug 2011 09:28:34 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by gyg13 with SMTP id 13so1998567gyg.35
	for <poky@yoctoproject.org>; Thu, 11 Aug 2011 09:28:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=/mNja9AjyNrdoIhycmUcGByV1CtJB2eJf5IrMKRuOrk=;
	b=Z8wu1q1Lag0ZiqCIOxMTkkqjxjqcZVWMUYPwmgsocQ+0ZbL+8pGoJVMohxp4E++A2V
	9RCfPb/SkMhqBFizb628LhN7diTEBw28tlIf8NXBRRsRCO+QrwKFszhvNQlpztne4tf4
	rmhr0GkC3WRwloQ65qSgRuDhsbJUUcB8xohM4=
MIME-Version: 1.0
Received: by 10.101.163.16 with SMTP id q16mr8720360ano.76.1313080123258; Thu,
	11 Aug 2011 09:28:43 -0700 (PDT)
Received: by 10.100.95.3 with HTTP; Thu, 11 Aug 2011 09:28:43 -0700 (PDT)
In-Reply-To: <CAFt-coyFKC+d0qYtyO7_NZ-SZU16bbv+6geeXD+d4YCdSc5N1A@mail.gmail.com>
References: <CAFt-coyFKC+d0qYtyO7_NZ-SZU16bbv+6geeXD+d4YCdSc5N1A@mail.gmail.com>
Date: Thu, 11 Aug 2011 12:28:43 -0400
Message-ID: <CADkTA4MULaQ+cJS7K3eB1NhPiLo7s6Yb5_OO4a=tJTvxOy2=kg@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: v sailaja <vsailub4u@gmail.com>
Cc: poky@yoctoproject.org
Subject: Re: Error for upgrading linux-yocto version from 3.0 to 3.0.1 for fishriver machine.
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
X-List-Received-Date: Thu, 11 Aug 2011 16:28:34 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 11, 2011 at 9:50 AM, v sailaja <vsailub4u@gmail.com> wrote:
> Hi,
> I am trying to build the poky with =A0linux-yocto kernel v3.0.1 for fishr=
iver
> machine.
>
> I modyfied the the linux-yocto_3.0.bb =A0as follows.
>
>
> -----------ooooooooooooo----------------------------
> inherit kernel
> require linux-yocto.inc
> KMACHINE =3D "yocto/standard/base"
> KMACHINE_qemux86 =A0=3D "yocto/standard/common-pc/base"
> KMACHINE_qemux86-64 =A0=3D "yocto/standard/common-pc-64/base"
> KMACHINE_qemuppc =A0=3D "yocto/standard/qemu-ppc32"
> KMACHINE_qemumips =3D "yocto/standard/mti-malta32-be"
> KMACHINE_qemuarm =A0=3D "yocto/standard/arm-versatile-926ejs"
> KMACHINE_atom-pc =A0=3D "yocto/standard/common-pc/atom-pc"
> KMACHINE_routerstationpro =3D "yocto/standard/routerstationpro"
> KMACHINE_mpc8315e-rdb =3D "yocto/standard/fsl-mpc8315e-rdb"
> KMACHINE_beagleboard =3D "yocto/standard/beagleboard"
> KMACHINE_fishriver =3D "yocto/standard/fishriver"
> KBRANCH =3D ${KMACHINE}
> KMETA =3D meta
> LINUX_VERSION ?=3D "3.0.1"
> LINUX_VERSION_EXTENSION ?=3D "-yocto-${LINUX_KERNEL_TYPE}"
> PR =3D "r0"
> PV =3D "${LINUX_VERSION}+git${SRCPV}"
> SRCREV_FORMAT =3D "meta_machine"
> SRC_URI =3D
> "git://git.pokylinux.org/linux-yocto-3.0;protocol=3Dgit;nocheckout=3D1;br=
anch=3D${KBRANCH},meta;name=3Dmachine,meta"
>
> COMPATIBLE_MACHINE =3D
> "(qemuarm|qemux86|qemuppc|qemumips|qemux86-64|mpc8315e-rdb|routerstationp=
ro|beagleboard)"
> # Functionality flags
> KERNEL_REVISION_CHECKING ?=3D "t"
> KERNEL_FEATURES=3D"features/netfilter"
> KERNEL_FEATURES_append_qemux86=3D" cfg/sound"
> KERNEL_FEATURES_append_qemux86-64=3D" cfg/sound"
> YOCTO_KERNEL_META_DATA=3Dt
> # Temporary fix for oprofile and latencytop on qemux86-64
> KERNEL_FEATURES_append_qemux86-64=3D" features/profiling"
> KERNEL_FEATURES_append_qemux86-64=3D" features/latencytop"
> # extra tasks
> addtask kernel_link_vmlinux after do_compile before do_install
> addtask validate_branches before do_patch after do_kernel_checkout
> addtask kernel_configcheck after do_configure before do_compile
> require linux-tools.inc
>
> -----------------------------end of the file-----------------------
>
>
> Included the SRCREV s in the file
> "meta-intel/meta-fishriver/conf/machine/fishriver.conf "
> SRCREV_machine_pn-linux-yocto_fishriver ?=3D
> "c111526f70815ceff495bab07df64c0cee494d8a"
> SRCREV_meta_pn-linux-yocto_fishriver ?=3D
> "55f9c40ff632d03c527d6a6ceddcda0a224587a6"
>
>
> Source has downloaded properly. But I am getting an error in "do_patch".
> If i do the "git status" in
> "build/tmp/work/fishriver-poky-linux/linux-yocto-3.0.1+git2+55f9c40ff632d=
03c527d6a6ceddcda0a224587a6_2+c111526f70815ceff495bab07df64c0cee494d8a-r0/l=
inux/
> "
> It is showing many files are modified and deleted.
>
> Please find the attached files for "run.do_patch", "log.do_patch" and "gi=
t
> status "
>
> Please Can anyone tell me the steps to upgrade the linux-yocto kernel to
> v3.0.1.

The upgrade should already be in place. I pushed out that set of updates
last week.

Note: as part of that update, I explicitly mentioned that I wasn't changing
the base version to 3.0.1 in the files, since we hand't been doing that
for 2.6.34 or 2.6.37.

I'm about to send another update that adds preempt-rt support on top of
3.0.1, so you might want to just wait and pickup those changes as well.

The error that you are seeing is because the wrong branch was checked
out, and hence you end up with conflicting files during the merge.

Bruce

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

