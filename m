Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id CEA5B4C80FAD
	for <poky@yoctoproject.org>; Wed, 19 Jan 2011 11:24:09 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iyb26 with SMTP id 26so1097017iyb.35
	for <poky@yoctoproject.org>; Wed, 19 Jan 2011 09:24:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=xGxAhG3o6Sch6Hcu449EFNj31ybg8MSUmnKGbb1k1ag=;
	b=lqYof3+PrEzSTyFy91CycP2B+6z8oxW7qPmlMKucJ1HstCX9dwx6RcvKr0lxsOF4PI
	qbRS1gB8qA8foYxClZVDHIszC83uHYUlsXMo1vnNHMhcXxtfCJT1uTHI8TFCVa9FWpo/
	LEAun7xjetGoDjln1CbSmDCToHNESNQSZU374=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=PyVaiv9bNtaSaoYlHokEf/it0HpZedcByufWJpRMzt3njRXHYNXmEZ6KM9ZOIFhpJI
	Vnuhhrqf6ayGlc/1lDokxs9xwq4msFWjtNcfJM//fEbPU85njXD6X5+0UrISDzI7aEpe
	rlI4ot9OnruCn/pRORz1JOS2DO9v0IrWr1Enc=
MIME-Version: 1.0
Received: by 10.231.207.84 with SMTP id fx20mr1152221ibb.62.1295457849362;
	Wed, 19 Jan 2011 09:24:09 -0800 (PST)
Received: by 10.231.156.136 with HTTP; Wed, 19 Jan 2011 09:24:09 -0800 (PST)
In-Reply-To: <add1e081633e2cf43292a9d5c232bc4efa5ef119.1295393078.git.dvhart@linux.intel.com>
References: <cover.1295393078.git.dvhart@linux.intel.com>
	<add1e081633e2cf43292a9d5c232bc4efa5ef119.1295393078.git.dvhart@linux.intel.com>
Date: Wed, 19 Jan 2011 12:24:09 -0500
Message-ID: <AANLkTik0ZFqE7KixBFNKmpi3T7DnjAr3i=xBeC1=jcWs@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Darren Hart <dvhart@linux.intel.com>, 
	Richard Purdie <richard.purdie@linuxfoundation.org>,
	Tom Zanussi <tom.zanussi@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/5] meta-rt: Initial PREEMPT_RT layer and kernel recipes
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
X-List-Received-Date: Wed, 19 Jan 2011 17:24:10 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 18, 2011 at 6:25 PM, Darren Hart <dvhart@linux.intel.com> wrote=
:
> The meta-rt layer provides a preempt_rt kernel recipe
> using the linux-yocto-stable git tree. It overrides
> the virtual/kernel provider and defines the compatible
> machines and per-machine SRCREVs. The initial layer
> supports only qemux86-64.
>
> Signed-off-by: Darren Hart <dvhart@linux.intel.com>
> Cc: Tom Zanussi <tom.zanussi@intel.com>
> Cc: Bruce Ashfield <bruce.ashfield@windriver.com>
> ---
> =A0meta-rt/conf/layer.conf =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0| =A0 22 +++++++++++
> =A0meta-rt/recipes-kernel/linux-yocto-rt_stablegit.bb | =A0 39 ++++++++++=
++++++++++
> =A02 files changed, 61 insertions(+), 0 deletions(-)
> =A0create mode 100644 meta-rt/conf/layer.conf
> =A0create mode 100644 meta-rt/recipes-kernel/linux-yocto-rt_stablegit.bb
>
> diff --git a/meta-rt/conf/layer.conf b/meta-rt/conf/layer.conf
> new file mode 100644
> index 0000000..dbf4a32
> --- /dev/null
> +++ b/meta-rt/conf/layer.conf
> @@ -0,0 +1,22 @@
> +# Default to first disk/first partition
> +RSP_ROOT ?=3D "sda1"
> +
> +# We have a conf and classes directory, add to BBPATH
> +BBPATH :=3D "${BBPATH}:${LAYERDIR}"
> +
> +# We have an images and various recipe-* directories, add to BBFILES
> +BBFILES :=3D "${BBFILES} ${LAYERDIR}/images/*.bb ${LAYERDIR}/images/*.bb=
append ${LAYERDIR}/recipes-*/*.bb ${LAYERDIR}/recipes-*/*.bbappend"
> +
> +BBFILE_COLLECTIONS +=3D "rt"
> +BBFILE_PATTERN_rt :=3D "^${LAYERDIR}/"
> +BBFILE_PRIORITY_rt =3D "8"
> +
> +# This layer builds images using a PREEMPT_RT kernel. Override any machi=
ne
> +# specified kernel providers and leave it up to the kernel recipe to
> +# determine COMPATIBLE_MACHINE.
> +PREFERRED_PROVIDER_virtual/kernel =3D "linux-yocto-rt"
> +
> +# preempt_rt SRCREVs, one for meta, one per machine
> +SRCREV_meta_pn-linux-yocto-rt ?=3D "50ccd2b3213b6a1bacb3f898c035119802da=
c420"
> +SRCREV_machine_pn-linux-yocto-rt_qemux86-64 ?=3D "f49444f06875894389e640=
bcda6c3f6ceb1f0c3e"

This reminds me of the discussion we were having about the emenlow
BSPs, and that we never resolved.

I suggested that we need some interim overrides options for these
variables so I can update a master set of SRCREVs and have the
BSPs updated, and a flag/variable that would allow a BSP to also
opt-out of getting a more global SRCREV assigned.

If we don't do solve this, none of these BSPs will pickup CVEs/bug
fixes or global config changes .. and we'll have a problem.

Comments ?

> +
> diff --git a/meta-rt/recipes-kernel/linux-yocto-rt_stablegit.bb b/meta-rt=
/recipes-kernel/linux-yocto-rt_stablegit.bb
> new file mode 100644
> index 0000000..361b680
> --- /dev/null
> +++ b/meta-rt/recipes-kernel/linux-yocto-rt_stablegit.bb
> @@ -0,0 +1,39 @@
> +inherit kernel
> +require recipes-kernel/linux/linux-yocto.inc
> +
> +KMACHINE_qemux86-64 =A0=3D "common_pc_64"
> +
> +LINUX_VERSION ?=3D "2.6.34"
> +LINUX_KERNEL_TYPE =3D "preempt_rt"
> +LINUX_VERSION_EXTENSION ?=3D "-yocto-${LINUX_KERNEL_TYPE_EXTENSION}"
> +
> +PR =3D "r0"
> +PV =3D "${LINUX_VERSION}+git${SRCPV}"
> +SRCREV_FORMAT =3D "meta_machine"
> +
> +COMPATIBLE_MACHINE =3D "(qemux86-64)"
> +
> +# this performs a fixup on the SRCREV for new/undefined BSPs
> +python __anonymous () {
> + =A0 =A0import bb, re, string
> +
> + =A0 =A0rev =3D bb.data.getVar("SRCREV_machine", d, 1)
> + =A0 =A0if rev =3D=3D "standard":
> + =A0 =A0 =A0 =A0bb.data.setVar("SRCREV_machine", "${SRCREV_meta}", d)
> +
> + =A0 =A0kerntype =3D string.replace(bb.data.expand("${LINUX_KERNEL_TYPE}=
", d), "_", "-")
> + =A0 =A0bb.data.setVar("LINUX_KERNEL_TYPE_EXTENSION", kerntype, d)
> +}
> +
> +SRC_URI =3D "git://git.pokylinux.org/linux-2.6-windriver.git;protocol=3D=
git;fullclone=3D1;branch=3D${KBRANCH};name=3Dmachine \
> + =A0 =A0 =A0 =A0 =A0 git://git.pokylinux.org/linux-2.6-windriver.git;pro=
tocol=3Dgit;noclone=3D1;branch=3Dwrs_meta;name=3Dmeta"
> +
> +# Functionality flags
> +KERNEL_REVISION_CHECKING ?=3D "t"
> +KERNEL_FEATURES=3Dfeatures/netfilter
> +
> +# extra tasks
> +addtask kernel_link_vmlinux after do_compile before do_install
> +addtask validate_branches before do_patch after do_kernel_checkout
> +

And as we discussed, I'll help clean this up when I get the recipe
refactoring done. I'm just trying to decide if I can get away with
including a .bb file instead of creation more .inc files :)

Cheers,

Bruce

> +require recipes-kernel/linux/linux-tools.inc
> --
> 1.7.1
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

