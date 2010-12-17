Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7B1A64C8110D;
	Fri, 17 Dec 2010 14:51:19 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iyb26 with SMTP id 26so780536iyb.35
	for <multiple recipients>; Fri, 17 Dec 2010 12:51:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:in-reply-to
	:references:date:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=RBEoXBNMdZqfmshYAuov+0wTqHq7deoH3VgmYo9YP+4=;
	b=gzlU+vA4cBzanYx8djDvpDZ0gdRHcOHNMUGw8RJVzSr+9Y3+lN4hco2XtZY3fONUaH
	P3aoJTvHb75sbqJz1nKN3IgqmDsc7Bboi1Ni3HmG58xjQrBsK+dEFKUpCDpCo09T700m
	hf9FQv5dX0EqqTlFzNcealpXWFku5woS+0opU=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=picIFf20GIUg7l7oJqWKndRAdaeAvUCuTkrNF3Hxp1aLPT88ja+zi1oh5lVfaHonT7
	3A5HNZblwtxDuQynO7Ah9Ezk7nXRN3BrhxyQgVEflPEQ5IsAmh/rRGqGFEkCrYhPekai
	NFt07K9MBSvy5Ajt5GH0ZVyFR35tmHfUGiQWg=
MIME-Version: 1.0
Received: by 10.231.31.139 with SMTP id y11mr1250072ibc.96.1292619079054; Fri,
	17 Dec 2010 12:51:19 -0800 (PST)
Received: by 10.231.180.224 with HTTP; Fri, 17 Dec 2010 12:51:19 -0800 (PST)
In-Reply-To: <8312a1834b24a22fb7f17ed82d9c053fa8565c76.1292618741.git.bruce.ashfield@windriver.com>
References: <cover.1292618741.git.bruce.ashfield@windriver.com>
	<8312a1834b24a22fb7f17ed82d9c053fa8565c76.1292618741.git.bruce.ashfield@windriver.com>
Date: Fri, 17 Dec 2010 15:51:19 -0500
Message-ID: <AANLkTinuPU_fKAwU-TY07kq3q+b=OaDQGa_B_Hz4h5Zy@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: rpurdie@linux.intel.com, saul.wold@intel.com
Cc: yocto@yoctoproject.org, poky@yoctoproject.org
Subject: Re: [PATCH 1/1] linux-yocto: remove or adjust to _ in branch names
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
X-List-Received-Date: Fri, 17 Dec 2010 20:51:19 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 17, 2010 at 3:50 PM, Bruce Ashfield
<bruce.ashfield@windriver.com> wrote:
> The existing 2.6.34 kernel tree uses _ where poky typically
> uses -. This is a historical artifact, since working with
> gnu Make and shells means avoiding - is wise. The opposite
> is true in Yocto.
>
> To avoid using the _ reserved character wherever possible
> we can simply remove it from the branch names in the
> new 2.6.37 kernel, but to keep the content stable in the
> 0.9 2.6.34 kernel, we map _ to - for the purposes of
> packaging.
>
> To further faciliate this switch, the branch names no
> longer need to be shortened in the KMACHINE mappings, but
> can be fully specified and the tools/processing adapt as
> required. This gives us the flexibility to map multiple
> boards to a single branch for building.
>
> Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
> ---
> =A0meta/classes/kernel-yocto.bbclass =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0|=
 =A0 12 +++++-------
> =A0.../conf/distro/include/poky-default-revisions.inc | =A0 =A02 +-
> =A0.../recipes-kernel/linux/linux-yocto-stable_git.bb | =A0 =A08 ++++++--
> =A0meta/recipes-kernel/linux/linux-yocto_git.bb =A0 =A0 =A0 | =A0 18 ++++=
+++++---------
> =A04 files changed, 21 insertions(+), 19 deletions(-)
>
> diff --git a/meta/classes/kernel-yocto.bbclass b/meta/classes/kernel-yoct=
o.bbclass
> index 8e82012..f541878 100644
> --- a/meta/classes/kernel-yocto.bbclass
> +++ b/meta/classes/kernel-yocto.bbclass
> @@ -10,7 +10,7 @@ S =3D "${WORKDIR}/linux"
> =A0# and is used in the SRC_URI. The machine is then set back to ${MACHIN=
E},
> =A0# since futher processing will use that to create local branches
> =A0python __anonymous () {
> - =A0 =A0import bb, re
> + =A0 =A0import bb, re, string
>
> =A0 =A0 version =3D bb.data.getVar("LINUX_VERSION", d, 1)
> =A0 =A0 # 2.6.34 signifies the old-style tree, so we need some temporary
> @@ -29,12 +29,14 @@ python __anonymous () {
> =A0 =A0 =A0 =A0 # The branch for a build is:
> =A0 =A0 =A0 =A0 # =A0 =A0yocto/<kernel type>/${KMACHINE} or
> =A0 =A0 =A0 =A0 # =A0 =A0yocto/<kernel type>/${KMACHINE}/base
> - =A0 =A0 =A0 =A0bb.data.setVar("KBRANCH", bb.data.expand("yocto/${LINUX_=
KERNEL_TYPE}/${KMACHINE}",d), d)
> + =A0 =A0 =A0 =A0bb.data.setVar("KBRANCH", bb.data.expand("${KMACHINE}",d=
), d)
> =A0 =A0 =A0 =A0 bb.data.setVar("KMETA", "meta", d)
>
> =A0 =A0 =A0 =A0 mach =3D bb.data.getVar("KMACHINE", d, 1)
> =A0 =A0 =A0 =A0 # drop the "/base" if it was on the KMACHINE
> =A0 =A0 =A0 =A0 kmachine =3D mach.replace('/base','')
> + =A0 =A0 =A0 =A0# drop everything but the last segment
> + =A0 =A0 =A0 =A0kmachine =3D os.path.basename( kmachine )
> =A0 =A0 =A0 =A0 # and then write KMACHINE back
> =A0 =A0 =A0 =A0 bb.data.setVar('KMACHINE_' + bb.data.expand("${MACHINE}",=
d), kmachine, d)
>
> @@ -51,11 +53,7 @@ do_patch() {
> =A0 =A0 =A0 =A0 =A0 =A0defconfig=3D${WORKDIR}/defconfig
> =A0 =A0 =A0 =A0fi
>
> - =A0 =A0 =A0 if [ -n "${BOOTSTRAP}" ]; then
> - =A0 =A0 =A0 =A0 =A0 kbranch=3D"yocto/${LINUX_KERNEL_TYPE}/${KMACHINE}"
> - =A0 =A0 =A0 else
> - =A0 =A0 =A0 =A0 =A0 kbranch=3D${KBRANCH}
> - =A0 =A0 =A0 fi
> + =A0 =A0 =A0 kbranch=3D${KBRANCH}
>
> =A0 =A0 =A0 =A0# simply ensures that a branch of the right name has been =
created
> =A0 =A0 =A0 =A0createme ${ARCH} ${kbranch} ${defconfig}
> diff --git a/meta/conf/distro/include/poky-default-revisions.inc b/meta/c=
onf/distro/include/poky-default-revisions.inc
> index a8fdf81..6b77bee 100644
> --- a/meta/conf/distro/include/poky-default-revisions.inc
> +++ b/meta/conf/distro/include/poky-default-revisions.inc
> @@ -57,7 +57,7 @@ SRCREV_pn-gypsy ??=3D "147"
> =A0SRCREV_pn-inputproto ??=3D "7203036522ba9d4b224d282d6afc2d0b947711ee"
> =A0SRCREV_pn-inputproto-native ??=3D "7203036522ba9d4b224d282d6afc2d0b947=
711ee"
> =A0SRCREV_pn-inputproto-nativesdk ??=3D "7203036522ba9d4b224d282d6afc2d0b=
947711ee"
> -SRCREV_pn-kern-tools-native ??=3D "c85dcdd2dc50d71476a11c2960bf14c2b144b=
3c7"
> +SRCREV_pn-kern-tools-native ??=3D "796d7fef92b2eed449c17c14441587ff0c465=
368"
> =A0SRCREV_pn-libdrm ??=3D "3f3c5be6f908272199ccf53f108b1124bfe0a00e"
> =A0SRCREV_pn-libfakekey ??=3D "2031"
> =A0SRCREV_pn-libgdbus ??=3D "aeab6e3c0185b271ca343b439470491b99cc587f"
> diff --git a/meta/recipes-kernel/linux/linux-yocto-stable_git.bb b/meta/r=
ecipes-kernel/linux/linux-yocto-stable_git.bb
> index dd4d176..a059f3d 100644
> --- a/meta/recipes-kernel/linux/linux-yocto-stable_git.bb
> +++ b/meta/recipes-kernel/linux/linux-yocto-stable_git.bb
> @@ -12,7 +12,8 @@ KMACHINE_mpc8315e-rdb =3D "fsl-mpc8315e-rdb"
> =A0KMACHINE_beagleboard =3D "beagleboard"
>
> =A0LINUX_VERSION ?=3D "2.6.34"
> -LINUX_VERSION_EXTENSION ?=3D "-yocto-${LINUX_KERNEL_TYPE}"
> +LINUX_VERSION_EXTENSION ?=3D "-yocto-${LINUX_KERNEL_TYPE_EXTENSION}"
> +
> =A0PR =3D "r0"

I should have bumped PR here. I'll push that change to my contrib
branch, but won't
resend to the list.

Cheers,

Bruce

> =A0PV =3D "${LINUX_VERSION}+git${SRCPV}"
> =A0SRCREV_FORMAT =3D "meta_machine"
> @@ -21,11 +22,14 @@ COMPATIBLE_MACHINE =3D "(qemuarm|qemux86|qemuppc|qemu=
mips|qemux86-64|atom-pc|route
>
> =A0# this performs a fixup on the SRCREV for new/undefined BSPs
> =A0python __anonymous () {
> - =A0 =A0import bb, re
> + =A0 =A0import bb, re, string
>
> =A0 =A0 rev =3D bb.data.getVar("SRCREV_machine", d, 1)
> =A0 =A0 if rev =3D=3D "standard":
> =A0 =A0 =A0 =A0 bb.data.setVar("SRCREV_machine", "${SRCREV_meta}", d)
> +
> + =A0 =A0kerntype =3D string.replace(bb.data.expand("${LINUX_KERNEL_TYPE}=
", d), "_", "-")
> + =A0 =A0bb.data.setVar("LINUX_KERNEL_TYPE_EXTENSION", kerntype, d)
> =A0}
>
> =A0SRC_URI =3D "git://git.pokylinux.org/linux-2.6-windriver.git;protocol=
=3Dgit;fullclone=3D1;branch=3D${KBRANCH};name=3Dmachine \
> diff --git a/meta/recipes-kernel/linux/linux-yocto_git.bb b/meta/recipes-=
kernel/linux/linux-yocto_git.bb
> index f40fe38..6677f99 100644
> --- a/meta/recipes-kernel/linux/linux-yocto_git.bb
> +++ b/meta/recipes-kernel/linux/linux-yocto_git.bb
> @@ -1,15 +1,15 @@
> =A0inherit kernel
> =A0require linux-yocto.inc
>
> -KMACHINE_qemux86 =A0=3D "common_pc/base"
> -KMACHINE_qemux86-64 =A0=3D "common_pc_64"
> -KMACHINE_qemuppc =A0=3D "qemu_ppc32"
> -KMACHINE_qemumips =3D "mti_malta32_be"
> -KMACHINE_qemuarm =A0=3D "arm_versatile_926ejs"
> -KMACHINE_atom-pc =A0=3D "atom-pc"
> -KMACHINE_routerstationpro =3D "routerstationpro"
> -KMACHINE_mpc8315e-rdb =3D "fsl-mpc8315e-rdb"
> -KMACHINE_beagleboard =3D "beagleboard"
> +KMACHINE_qemux86 =A0=3D "yocto/standard/common_pc/base"
> +KMACHINE_qemux86-64 =A0=3D "yocto/standard/common-pc-64"
> +KMACHINE_qemuppc =A0=3D "yocto/standard/qemu-ppc32"
> +KMACHINE_qemumips =3D "yocto/standard/mti-malta32-be"
> +KMACHINE_qemuarm =A0=3D "yocto/standard/arm-versatile-926ejs"
> +KMACHINE_atom-pc =A0=3D "yocto/standard/common-pc/atom-pc"
> +KMACHINE_routerstationpro =3D "yocto/standard/routerstationpro"
> +KMACHINE_mpc8315e-rdb =3D "yocto/standard/fsl-mpc8315e-rdb"
> +KMACHINE_beagleboard =3D "yocto/standard/beagleboard"
>
> =A0LINUX_VERSION ?=3D "2.6.37"
> =A0LINUX_VERSION_EXTENSION ?=3D "-yocto-${LINUX_KERNEL_TYPE}"
> --
> 1.7.0.4
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

