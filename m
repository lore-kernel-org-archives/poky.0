Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 599274C80B70
	for <poky@yoctoproject.org>; Sun, 19 Dec 2010 23:21:00 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iyb26 with SMTP id 26so2313926iyb.35
	for <poky@yoctoproject.org>; Sun, 19 Dec 2010 21:21:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:in-reply-to
	:references:date:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=pxQo6OCbXdTSW3oB4Oama/dVO6GhTTWzsaTNlc66LzI=;
	b=MULnYE3BEvtCKBtLgTTb4Y/4xhA+CG2E8OdKjkfv2Ib/LcIP6QdfbS8nDEYXp1soOO
	xV41op1Trgx+r6KPTlRau6nzaEzZzdax62zCWzgaa3RGbhKsLtfg1zuVi0v4xLQYkPgy
	y9d0nuEKP7l4XNeTiIgU4rnoUngZgMvaLIcA8=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=PEbYaDKT0eFad5rS+m2AkyPSiYB+vookWGOVe8d8GEHeuD6Q9dmo3Lh9WuXtZ0YDw6
	cMazz5/aEvFrjKh+oYIwiJJc7H0c4M7YcK8y+GHE9eFNeYnoRQfxuQGu9ArGlhGtPvQB
	Uq7ele8wgXW/eZMElO51NmNw6vkTrFHFe/YwU=
MIME-Version: 1.0
Received: by 10.231.11.4 with SMTP id r4mr3535814ibr.146.1292822460060; Sun,
	19 Dec 2010 21:21:00 -0800 (PST)
Received: by 10.231.180.224 with HTTP; Sun, 19 Dec 2010 21:20:59 -0800 (PST)
In-Reply-To: <210a18897b1026f0eaa7fe2eec2efe94779e2aac.1292630935.git.dvhart@linux.intel.com>
References: <cover.1292630935.git.dvhart@linux.intel.com>
	<210a18897b1026f0eaa7fe2eec2efe94779e2aac.1292630935.git.dvhart@linux.intel.com>
Date: Mon, 20 Dec 2010 00:20:59 -0500
Message-ID: <AANLkTiks2GmL_rgoq0uE_Uz5ecPmQVn5jZxBjE7z3WKE@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Darren Hart <dvhart@linux.intel.com>
Cc: bruce.ashfield@intel.com, poky@yoctoproject.org
Subject: Re: [PATCH 1/4] linux-yocto-rt: initial PREEMPT_RT recipe for the linux-yocto stable kernel
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
X-List-Received-Date: Mon, 20 Dec 2010 05:21:00 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 10, 2010 at 5:53 PM, Darren Hart <dvhart@linux.intel.com> wrote=
:
> Signed-off-by: Darren Hart <dvhart@linux.intel.com>
> ---
> =A0.../conf/distro/include/poky-default-revisions.inc | =A0 =A03 +
> =A0.../linux/linux-yocto-rt_stablegit.bb =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0=
 47 ++++++++++++++++++++
> =A02 files changed, 50 insertions(+), 0 deletions(-)
> =A0create mode 100644 meta/recipes-kernel/linux/linux-yocto-rt_stablegit.=
bb
>
> diff --git a/meta/conf/distro/include/poky-default-revisions.inc b/meta/c=
onf/distro/include/poky-default-revisions.inc
> index 0612b7d..efb4a5d 100644
> --- a/meta/conf/distro/include/poky-default-revisions.inc
> +++ b/meta/conf/distro/include/poky-default-revisions.inc
> @@ -95,6 +95,9 @@ SRCREV_machine_pn-linux-yocto-stable_routerstationpro ?=
=3D "2ec2edaf256dd8500ee3d4
> =A0SRCREV_machine_pn-linux-yocto-stable_mpc8315e-rdb ?=3D "986e6eb66c2600=
7cee7916d5d12f4756e6b5436f"
> =A0SRCREV_machine_pn-linux-yocto-stable_beagleboard ?=3D "0431115c9d720fe=
e5bb105f6a7411efb4f851d26"
> =A0SRCREV_meta_pn-linux-yocto-stable ?=3D "50ccd2b3213b6a1bacb3f898c03511=
9802dac420"
> +# preempt_rt SRCREVs
> +SRCREV_machine_pn-linux-yocto-rt_qemux86-64 ?=3D "f49444f06875894389e640=
bcda6c3f6ceb1f0c3e"
> +SRCREV_meta_pn-linux-yocto-rt ?=3D "50ccd2b3213b6a1bacb3f898c035119802da=
c420"
> =A0# development SRCREVs
> =A0SRCREV_machine_pn-linux-yocto_qemuarm =3D "87e00a2d47ba80b4ad1f9170cb3=
f6cf81f21d739"
> =A0SRCREV_machine_pn-linux-yocto_qemumips =3D "7231e473dd981a28e3cea9f677=
ed60583e731550"
> diff --git a/meta/recipes-kernel/linux/linux-yocto-rt_stablegit.bb b/meta=
/recipes-kernel/linux/linux-yocto-rt_stablegit.bb
> new file mode 100644
> index 0000000..cb182da
> --- /dev/null
> +++ b/meta/recipes-kernel/linux/linux-yocto-rt_stablegit.bb
> @@ -0,0 +1,47 @@
> +inherit kernel
> +require linux-yocto.inc
> +
> +KMACHINE_qemux86 =A0=3D "common_pc/base"

For stable, this one would be common_pc, which I see points out a bug in
the -stable recipe. I'll fix that one in the morning.

> +KMACHINE_qemux86-64 =A0=3D "common_pc_64"
> +KMACHINE_qemuppc =A0=3D "qemu_ppc32"
> +KMACHINE_qemumips =3D "mti_malta32_be"
> +KMACHINE_qemuarm =A0=3D "arm_versatile_926ejs"
> +KMACHINE_atom-pc =A0=3D "atom-pc"
> +KMACHINE_routerstationpro =3D "routerstationpro"
> +KMACHINE_mpc8315e-rdb =3D "fsl-mpc8315e-rdb"
> +KMACHINE_beagleboard =3D "beagleboard"
> +
> +LINUX_VERSION ?=3D "2.6.34"
> +LINUX_KERNEL_TYPE =3D "preempt_rt"
> +LINUX_VERSION_EXTENSION ?=3D "-yocto-${LINUX_KERNEL_TYPE_EXTENSION}"

In the initial factoring of the recipes had these in a common location, but
when the -stable and -dev kernels split the branching I had to move
the branch specifications, kernel version and extension into the specific
recipe files and out of the includes (since they were different).

If we end up with a proliferation of recipes, it does make sense to create
a stablegit.inc and devgit.inc (or some other suitable names), since
we clearly don't want to repeat the machie mappings, and extension
everywhere. I'll toss that into an upcoming series.

> +
> +PR =3D "r0"
> +PV =3D "${LINUX_VERSION}+git${SRCPV}"
> +SRCREV_FORMAT =3D "meta_machine"

Same as this, we can make this part of an include

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

This can probably go away soon, either to somewhere common, or away
completely but for now it is required.

> +
> +SRC_URI =3D "git://git.pokylinux.org/linux-2.6-windriver.git;protocol=3D=
git;fullclone=3D1;branch=3D${KBRANCH};name=3Dmachine \
> + =A0 =A0 =A0 =A0 =A0 git://git.pokylinux.org/linux-2.6-windriver.git;pro=
tocol=3Dgit;noclone=3D1;branch=3Dwrs_meta;name=3Dmeta"

This should be inherited as well, more to factor out, good to see more
recipes that highlight what I missed.

> +
> +# Functionality flags
> +KERNEL_REVISION_CHECKING ?=3D "t"
> +KERNEL_FEATURES=3Dfeatures/netfilter
> +
> +# extra tasks
> +addtask kernel_link_vmlinux after do_compile before do_install
> +addtask validate_branches before do_patch after do_kernel_checkout

Probably the tasks as well. Something to try at least.

But it looks good, not as small as we'd want, but getting there. Having
too small a recipe with everything factored out is also bad, but the arcane
parts should at least be made common.

Bruce

> +
> +require linux-tools.inc
> --
> 1.7.2.3
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

