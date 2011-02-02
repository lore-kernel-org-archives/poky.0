Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id D16244C800A8
	for <poky@yoctoproject.org>; Tue,  1 Feb 2011 23:52:44 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iyb26 with SMTP id 26so7517485iyb.35
	for <poky@yoctoproject.org>; Tue, 01 Feb 2011 21:52:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=6SvqrqeHcXMqBamkrUAKLLluG+tzc0raEd16EZkLLSM=;
	b=PWkHnoT29Hl970/CPKDQuowSpg71ONexqLdqkXOYeLfsrRQ/sibgtCnErFeoWCnXvi
	QGeC6X9Wvov4WG6OdTrLzhK+Bo+4/6iS8Ksw0yklencE7BVeUnXNRF2fVszeKwxBSuKl
	EA+UKv1XYPfPsmscWuh8J2CMP6ON0FZckuWKQ=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=EWb+D/ITGNkZkJA0DRQpbQMUF7KmToG/xcTuhKp8O3WwF99CvyfQvGlnAYkB1HuRBc
	RcWPP7M3IygzBNxDIWb4bHQbthjKr1b7WyWzsmoZATjMDVJ6KcAZjoBBCAfpacKKXL73
	76UMKB7QB/OhnborczyvDdycICqr4RH+Fnshk=
MIME-Version: 1.0
Received: by 10.231.37.133 with SMTP id x5mr2849752ibd.37.1296625960114; Tue,
	01 Feb 2011 21:52:40 -0800 (PST)
Received: by 10.231.156.136 with HTTP; Tue, 1 Feb 2011 21:52:40 -0800 (PST)
In-Reply-To: <b7da2f$qa3mls@fmsmga001.fm.intel.com>
References: <b7da2f$qa3mls@fmsmga001.fm.intel.com>
Date: Wed, 2 Feb 2011 00:52:40 -0500
Message-ID: <AANLkTi=nevskgmtJnSm-x7nyCJF5khmpoiYgeXwxgCgD@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Tom Zanussi <tom.zanussi@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/2] meta-sugarbay: new layer for Sandy Bridge/Cougar Point
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
X-List-Received-Date: Wed, 02 Feb 2011 05:52:45 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Mon, Jan 31, 2011 at 11:35 PM, Tom Zanussi <tom.zanussi@intel.com> wrote=
:
> From: Tom Zanussi <tom.zanussi@intel.com>
>
> This layer provides support for the 'Sugar Bay' platform, which
> consists of the Intel Sandy Bridge processor and the Cougar Point PCH.
>
> It also adds a new meta-intel/common directory for sharing commmon
> code between meta-intel BSPs - for now, it's acting as a kind of
> 'staging' area for the grub2 and associated live-install changes
> needed to install from a live image.

Based on where I just merged support for this your kernel bbappend

+KMACHINE_sugarbay  =3D "yocto/standard/sugarbay"

will need to be:

+KMACHINE_sugarbay  =3D "yocto/standard/common-pc-64/sugarbay"

I'll cc you on my SRCREV change so you'll know to make this update.

Cheers,

Bruce


>
> Thanks,
>
> Tom
>
> Pull URL: git://git.pokylinux.org/meta-intel/tzanussi/sugarbay
> =A0Branch: tzanussi/sugarbay
> =A0Browse:
> http://git.pokylinux.org/cgit.cgi/meta-intel/log/?h=3Dtzanussi/sugarbay
>
> Tom Zanussi (2):
> =A0meta-intel: add a /common dir with grub2/live-install changes
> =A0meta-sugarbay: new layer for Sandy Bridge/Cougar Point systems
>
> =A0common/recipes-bsp/grub/grub-1.98/40_custom =A0 =A0 =A0 =A0| =A0 =A09 =
+
> =A0.../grub/grub-1.98/grub-install.in.patch =A0 =A0 =A0 =A0 =A0 | =A0 13 =
++
> =A0.../grub/grub-1.98/uninit-shdr-fix.patch =A0 =A0 =A0 =A0 =A0 | =A0 31 =
++++
> =A0common/recipes-bsp/grub/grub_1.98.bb =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0=
 45 +++++
> =A0.../initramfs-live-install/init-install.sh =A0 =A0 =A0 =A0 | =A0188 ++=
++++++++++++++++++
> =A0.../initramfs-live-install_1.0.bbappend =A0 =A0 =A0 =A0 =A0 =A0| =A0 =
=A02 +
> =A0meta-sugarbay/COPYING.MIT =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0| =A0 17 ++
> =A0meta-sugarbay/README =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 | =A0 84 +++++++++
> =A0meta-sugarbay/conf/layer.conf =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0| =A0 12 ++
> =A0meta-sugarbay/conf/machine/sugarbay.conf =A0 =A0 =A0 =A0 =A0 | =A0 57 =
++++++
> =A0.../formfactor/formfactor/sugarbay/machconfig =A0 =A0 =A0| =A0 =A03 +
> =A0.../recipes-bsp/formfactor/formfactor_0.0.bbappend | =A0 =A03 +
> =A0.../xserver-xf86-config/sugarbay/xorg.conf =A0 =A0 =A0 =A0 | =A0 26 ++=
+
> =A0.../xorg-xserver/xserver-xf86-config_0.1.bbappend =A0| =A0 =A03 +
> =A0.../xserver-xf86-dri-lite_1.9.3.bbappend =A0 =A0 =A0 =A0 =A0 | =A0 =A0=
1 +
> =A0.../recipes-kernel/linux/linux-yocto_git.bbappend =A0| =A0 =A05 +
> =A016 files changed, 499 insertions(+), 0 deletions(-)
> =A0create mode 100755 common/recipes-bsp/grub/grub-1.98/40_custom
> =A0create mode 100644 common/recipes-bsp/grub/grub-1.98/grub-install.in.p=
atch
> =A0create mode 100644 common/recipes-bsp/grub/grub-1.98/uninit-shdr-fix.p=
atch
> =A0create mode 100644 common/recipes-bsp/grub/grub_1.98.bb
> =A0create mode 100644 common/recipes-core/initrdscripts/initramfs-live-in=
stall/init-install.sh
> =A0create mode 100644 common/recipes-core/initrdscripts/initramfs-live-in=
stall_1.0.bbappend
> =A0create mode 100644 meta-sugarbay/COPYING.MIT
> =A0create mode 100644 meta-sugarbay/README
> =A0create mode 100644 meta-sugarbay/binary/.gitignore
> =A0create mode 100644 meta-sugarbay/conf/layer.conf
> =A0create mode 100644 meta-sugarbay/conf/machine/sugarbay.conf
> =A0create mode 100644 meta-sugarbay/recipes-bsp/formfactor/formfactor/sug=
arbay/machconfig
> =A0create mode 100644 meta-sugarbay/recipes-bsp/formfactor/formfactor_0.0=
.bbappend
> =A0create mode 100644 meta-sugarbay/recipes-graphics/xorg-xserver/xserver=
-xf86-config/sugarbay/xorg.conf
> =A0create mode 100644 meta-sugarbay/recipes-graphics/xorg-xserver/xserver=
-xf86-config_0.1.bbappend
> =A0create mode 100644 meta-sugarbay/recipes-graphics/xorg-xserver/xserver=
-xf86-dri-lite_1.9.3.bbappend
> =A0create mode 100644 meta-sugarbay/recipes-kernel/linux/linux-yocto_git.=
bbappend
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

