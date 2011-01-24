Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-qw0-f48.google.com (mail-qw0-f48.google.com
	[209.85.216.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 820A14C80B5F
	for <poky@yoctoproject.org>; Mon, 24 Jan 2011 11:49:41 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by qwh6 with SMTP id 6so4325934qwh.35
	for <poky@yoctoproject.org>; Mon, 24 Jan 2011 09:49:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=81w/VVNty19vrNgXGa2dbs0nS+OWGRwgaEGKY9dcD4Y=;
	b=MSRsmOv6+KAg/YFYTrGKRnyIf2abM005jMgfPmaMUm5q1xoWxsP5/UiCDDVuehRLVY
	47EntAY1PPFNRBeV04IVUt4oX5jCGRjNPZopKG7mepF3mXHDno43wWh10lvS6WhI9mhR
	E3Fjo1ODvN1BvgCTqR7zUnc0HmThZwCiklzrw=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=aAR2nnaG+3mbABikbESvBP90lzI2C4RpFuexcweGVQYkxczRk81FWfeD9QNv286QFd
	T8PtBYSktdIT4ufBIdCuX6/GY+29ZCJZEB1OMlqGXYsTF+QJnDcWjDeB5Yyx4E8kNLvv
	dgo52EDNZcNcX/FF9Vs3rh/2AffQ9Y9LYDhJ0=
MIME-Version: 1.0
Received: by 10.224.73.129 with SMTP id q1mr103364qaj.112.1295891380884; Mon,
	24 Jan 2011 09:49:40 -0800 (PST)
Received: by 10.220.168.193 with HTTP; Mon, 24 Jan 2011 09:49:40 -0800 (PST)
In-Reply-To: <1bdc18$jc8002@fmsmga002.fm.intel.com>
References: <1bdc18$jc8002@fmsmga002.fm.intel.com>
Date: Mon, 24 Jan 2011 12:49:40 -0500
Message-ID: <AANLkTi=W9Z8Ccas9qgMKz32oFhO5Nc9qdi9yf5V4iVfj@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Tom Zanussi <tom.zanussi@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/6] upgrade emenlow kernel to 2.6.37
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
X-List-Received-Date: Mon, 24 Jan 2011 17:49:43 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Sun, Jan 23, 2011 at 11:23 PM, Tom Zanussi <tom.zanussi@intel.com> wrote=
:
> This patchset migrates the emenlow linux-yocto-stable (2.6.34) kernel
> branch to linux-yocto(2.6.37).
>
> Please pull...
>

Looks good. I've fetched them and I'm doing some tests with the
tools updates I've been working on. I'll have this turned around by
end of day.

Cheers,

Bruce

> Once pulled, I'll submit a small change to meta-emenlow to use it.
>
> Pull URL: git://git.pokylinux.org/linux-yocto-2.6.37-contrib
> =A0Branch: tzanussi/emenlow-2.6.37
> =A0Browse:
> http://git.pokylinux.org/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=3Dtza=
nussi/emenlow-2.6.37
>
> Thanks,
>
> Tom
>
>
> Tom Zanussi (6):
> =A0drm: add the base source of the Poulsbo (psb) 2D X11 driver
> =A0drm: remove the package Makefile and replace it with the kernel
> =A0 =A0Makefile
> =A0drm: apply psb-kernel-source package's build.patch
> =A0drm: intel_ldvs.c: add missing arg to backlight_device_register()
> =A0 =A0call
> =A0emenlow: switch to psb
> =A0drm: Fix psb ioctl assignment
>
> =A0drivers/gpu/Makefile =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 | =A0 =A02 +-
> =A0drivers/gpu/drm-psb/Config.in =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0| =A0 17 +
> =A0drivers/gpu/drm-psb/Doxyfile =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 | 1161 +++
> =A0drivers/gpu/drm-psb/GPLv2_License.txt =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0=
341 +
> =A0drivers/gpu/drm-psb/Kconfig =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0| =A0103 +
> =A0drivers/gpu/drm-psb/Makefile =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 | =A0 76 +
> =A0drivers/gpu/drm-psb/Module.symvers =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =
=A0339 +
> =A0drivers/gpu/drm-psb/README.drm =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 | =A0 25 +
> =A0drivers/gpu/drm-psb/ati_pcigart.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0|=
 =A0411 +
> =A0drivers/gpu/drm-psb/create_linux_pci_lists.sh =A0 =A0 =A0| =A0 40 +
> =A0drivers/gpu/drm-psb/debian/changelog =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0=
 36 +
> =A0drivers/gpu/drm-psb/debian/compat =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0|=
 =A0 =A01 +
> =A0drivers/gpu/drm-psb/debian/control =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =
=A0 16 +
> =A0drivers/gpu/drm-psb/debian/copyright =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0=
 53 +
> =A0drivers/gpu/drm-psb/debian/dirs =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0| =A0 =A01 +
> =A0drivers/gpu/drm-psb/debian/dkms.conf.in =A0 =A0 =A0 =A0 =A0 =A0| =A0 1=
0 +
> =A0drivers/gpu/drm-psb/debian/patches/00list =A0 =A0 =A0 =A0 =A0| =A0 11 =
+
> =A0.../gpu/drm-psb/debian/patches/01_2.6.32.dpatch =A0 =A0| =A0 43 +
> =A0.../drm-psb/debian/patches/02_agp_memory.dpatch =A0 =A0| =A0 40 +
> =A0drivers/gpu/drm-psb/debian/patches/03_devt.dpatch =A0| =A0 20 +
> =A0.../gpu/drm-psb/debian/patches/04_drmpsb.dpatch =A0 =A0| =A0 38 +
> =A0.../drm-psb/debian/patches/05_edid-crash.dpatch =A0 =A0| =A0 19 +
> =A0.../drm-psb/debian/patches/06_i2c-intelfb.dpatch =A0 | =A0 20 +
> =A0.../drm-psb/debian/patches/07_current_euid.dpatch =A0| =A0 20 +
> =A0.../gpu/drm-psb/debian/patches/08_irqreturn.dpatch | =A0 23 +
> =A0.../drm-psb/debian/patches/10_change_prefix.dpatch |10351 ++++++++++++=
++++++++
> =A0drivers/gpu/drm-psb/debian/patches/2.6.34.dpatch =A0 | =A0 26 +
> =A0drivers/gpu/drm-psb/debian/patches/use_udev.dpatch | =A0 36 +
> =A0drivers/gpu/drm-psb/debian/postinst =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0| =
=A0 73 +
> =A0drivers/gpu/drm-psb/debian/postrm =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0|=
 =A0 27 +
> =A0drivers/gpu/drm-psb/debian/prerm =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 |=
 =A0 28 +
> =A0drivers/gpu/drm-psb/debian/psb-kernel-headers.dirs | =A0 =A01 +
> =A0.../gpu/drm-psb/debian/psb-kernel-headers.install =A0| =A0 =A01 +
> =A0.../gpu/drm-psb/debian/psb-kernel-headers.postrm =A0 | =A0 15 +
> =A0.../gpu/drm-psb/debian/psb-kernel-headers.preinst =A0| =A0 18 +
> =A0drivers/gpu/drm-psb/debian/rules =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 |=
 =A0 39 +
> =A0drivers/gpu/drm-psb/drm.h =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0| 1192 +++
> =A0drivers/gpu/drm-psb/drmP.h =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 | 1332 +++
> =A0drivers/gpu/drm-psb/drm_agpsupport.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0=
652 ++
> =A0drivers/gpu/drm-psb/drm_auth.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 | =A0189 +
> =A0drivers/gpu/drm-psb/drm_bo.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 | 2668 +++++
> =A0drivers/gpu/drm-psb/drm_bo_lock.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0|=
 =A0189 +
> =A0drivers/gpu/drm-psb/drm_bo_move.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0|=
 =A0597 ++
> =A0drivers/gpu/drm-psb/drm_bufs.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 | 1609 +++
> =A0drivers/gpu/drm-psb/drm_compat.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 |=
 =A0778 ++
> =A0drivers/gpu/drm-psb/drm_compat.h =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 |=
 =A0383 +
> =A0drivers/gpu/drm-psb/drm_context.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0|=
 =A0472 +
> =A0drivers/gpu/drm-psb/drm_core.h =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 | =A0 35 +
> =A0drivers/gpu/drm-psb/drm_crtc.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 | 2169 ++++
> =A0drivers/gpu/drm-psb/drm_crtc.h =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 | =A0592 ++
> =A0drivers/gpu/drm-psb/drm_dma.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0| =A0179 +
> =A0drivers/gpu/drm-psb/drm_drawable.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =
=A0192 +
> =A0drivers/gpu/drm-psb/drm_drv.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0| =A0697 ++
> =A0drivers/gpu/drm-psb/drm_edid.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 | =A0520 +
> =A0drivers/gpu/drm-psb/drm_edid.h =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 | =A0179 +
> =A0drivers/gpu/drm-psb/drm_fb.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 | =A0436 +
> =A0drivers/gpu/drm-psb/drm_fence.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0| =A0832 ++
> =A0drivers/gpu/drm-psb/drm_fops.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 | =A0532 +
> =A0drivers/gpu/drm-psb/drm_hashtab.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0|=
 =A0202 +
> =A0drivers/gpu/drm-psb/drm_hashtab.h =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0|=
 =A0 67 +
> =A0drivers/gpu/drm-psb/drm_internal.h =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =
=A0 40 +
> =A0drivers/gpu/drm-psb/drm_ioc32.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0| 1073 ++
> =A0drivers/gpu/drm-psb/drm_ioctl.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0| =A0347 +
> =A0drivers/gpu/drm-psb/drm_irq.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0| =A0463 +
> =A0drivers/gpu/drm-psb/drm_lock.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 | =A0393 +
> =A0drivers/gpu/drm-psb/drm_memory.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 |=
 =A0343 +
> =A0drivers/gpu/drm-psb/drm_memory.h =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 |=
 =A0 61 +
> =A0drivers/gpu/drm-psb/drm_memory_debug.c =A0 =A0 =A0 =A0 =A0 =A0 | =A040=
3 +
> =A0drivers/gpu/drm-psb/drm_memory_debug.h =A0 =A0 =A0 =A0 =A0 =A0 | =A037=
9 +
> =A0drivers/gpu/drm-psb/drm_mm.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 | =A0296 +
> =A0drivers/gpu/drm-psb/drm_modes.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0| =A0560 ++
> =A0drivers/gpu/drm-psb/drm_object.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 |=
 =A0294 +
> =A0drivers/gpu/drm-psb/drm_objects.h =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0|=
 =A0721 ++
> =A0drivers/gpu/drm-psb/drm_os_linux.h =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =
=A0140 +
> =A0drivers/gpu/drm-psb/drm_pci.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0| =A0177 +
> =A0drivers/gpu/drm-psb/drm_pciids.h =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 |=
 =A0511 +
> =A0drivers/gpu/drm-psb/drm_pciids.txt =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =
=A0490 +
> =A0drivers/gpu/drm-psb/drm_proc.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 | =A0646 ++
> =A0drivers/gpu/drm-psb/drm_regman.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 |=
 =A0200 +
> =A0drivers/gpu/drm-psb/drm_sarea.h =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0| =A0 84 +
> =A0drivers/gpu/drm-psb/drm_scatter.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0|=
 =A0219 +
> =A0drivers/gpu/drm-psb/drm_sman.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 | =A0353 +
> =A0drivers/gpu/drm-psb/drm_sman.h =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 | =A0176 +
> =A0drivers/gpu/drm-psb/drm_stub.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 | =A0325 +
> =A0drivers/gpu/drm-psb/drm_sysfs.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0| =A0211 +
> =A0drivers/gpu/drm-psb/drm_ttm.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0| =A0432 +
> =A0drivers/gpu/drm-psb/drm_vm.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 | 1143 +++
> =A0drivers/gpu/drm-psb/drm_vm_nopage_compat.c =A0 =A0 =A0 =A0 | =A0279 +
> =A0drivers/gpu/drm-psb/i915_buffer.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0|=
 =A0286 +
> =A0drivers/gpu/drm-psb/i915_compat.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0|=
 =A0204 +
> =A0drivers/gpu/drm-psb/i915_dma.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 | 1324 +++
> =A0drivers/gpu/drm-psb/i915_drm.h =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 | =A0366 +
> =A0drivers/gpu/drm-psb/i915_drv.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 | =A0607 ++
> =A0drivers/gpu/drm-psb/i915_drv.h =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 | =A0795 ++
> =A0drivers/gpu/drm-psb/i915_fence.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 |=
 =A0293 +
> =A0drivers/gpu/drm-psb/i915_init.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0| =A0329 +
> =A0drivers/gpu/drm-psb/i915_ioc32.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 |=
 =A0223 +
> =A0drivers/gpu/drm-psb/i915_irq.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 | =A0781 ++
> =A0drivers/gpu/drm-psb/i915_mem.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 | =A0386 +
> =A0drivers/gpu/drm-psb/i915_reg.h =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 | =A0487 +
> =A0drivers/gpu/drm-psb/intel_crt.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0| =A0242 +
> =A0drivers/gpu/drm-psb/intel_display.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0| 1=
472 +++
> =A0drivers/gpu/drm-psb/intel_drv.h =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0| =A0 91 +
> =A0drivers/gpu/drm-psb/intel_fb.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 | =A0653 ++
> =A0drivers/gpu/drm-psb/intel_i2c.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0| =A0190 +
> =A0drivers/gpu/drm-psb/intel_lvds.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 |=
 =A0944 ++
> =A0drivers/gpu/drm-psb/intel_lvds.h =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 |=
 =A0174 +
> =A0drivers/gpu/drm-psb/intel_modes.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0|=
 =A0 60 +
> =A0drivers/gpu/drm-psb/intel_sdvo.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 |=
 4043 ++++++++
> =A0drivers/gpu/drm-psb/intel_sdvo_regs.h =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0=
580 ++
> =A0drivers/gpu/drm-psb/intel_setup.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0|=
 =A0 18 +
> =A0drivers/gpu/drm-psb/psb_buffer.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 |=
 =A0425 +
> =A0drivers/gpu/drm-psb/psb_detear.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 |=
 =A0 39 +
> =A0drivers/gpu/drm-psb/psb_detear.h =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 |=
 =A0 47 +
> =A0drivers/gpu/drm-psb/psb_drm.h =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0| =A0395 +
> =A0drivers/gpu/drm-psb/psb_drv.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0| 1032 ++
> =A0drivers/gpu/drm-psb/psb_drv.h =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0| =A0819 ++
> =A0drivers/gpu/drm-psb/psb_fb.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 | 1351 +++
> =A0drivers/gpu/drm-psb/psb_fence.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0| =A0285 +
> =A0drivers/gpu/drm-psb/psb_gtt.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0| =A0234 +
> =A0drivers/gpu/drm-psb/psb_i2c.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0| =A0181 +
> =A0drivers/gpu/drm-psb/psb_irq.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0| =A0435 +
> =A0drivers/gpu/drm-psb/psb_mmu.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0| 1034 ++
> =A0drivers/gpu/drm-psb/psb_msvdx.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0| =A0681 ++
> =A0drivers/gpu/drm-psb/psb_msvdx.h =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0| =A0564 ++
> =A0drivers/gpu/drm-psb/psb_msvdxinit.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0| =
=A0625 ++
> =A0drivers/gpu/drm-psb/psb_reg.h =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0| =A0562 ++
> =A0drivers/gpu/drm-psb/psb_regman.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 |=
 =A0175 +
> =A0drivers/gpu/drm-psb/psb_reset.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0| =A0374 +
> =A0drivers/gpu/drm-psb/psb_scene.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0| =A0531 +
> =A0drivers/gpu/drm-psb/psb_scene.h =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0| =A0112 +
> =A0drivers/gpu/drm-psb/psb_schedule.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | 1=
465 +++
> =A0drivers/gpu/drm-psb/psb_schedule.h =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =
=A0177 +
> =A0drivers/gpu/drm-psb/psb_setup.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0| =A0 17 +
> =A0drivers/gpu/drm-psb/psb_sgx.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0| 1454 +++
> =A0drivers/gpu/drm-psb/psb_xhw.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0| =A0629 ++
> =A0drivers/video/Kconfig =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0| =A0 =A02 +-
> =A0137 files changed, 69124 insertions(+), 2 deletions(-)
> =A0create mode 100644 drivers/gpu/drm-psb/Config.in
> =A0create mode 100644 drivers/gpu/drm-psb/Doxyfile
> =A0create mode 100644 drivers/gpu/drm-psb/GPLv2_License.txt
> =A0create mode 100644 drivers/gpu/drm-psb/Kconfig
> =A0create mode 100644 drivers/gpu/drm-psb/Makefile
> =A0create mode 100644 drivers/gpu/drm-psb/Module.markers
> =A0create mode 100644 drivers/gpu/drm-psb/Module.symvers
> =A0create mode 100644 drivers/gpu/drm-psb/README.drm
> =A0create mode 100644 drivers/gpu/drm-psb/ati_pcigart.c
> =A0create mode 100644 drivers/gpu/drm-psb/create_linux_pci_lists.sh
> =A0create mode 100644 drivers/gpu/drm-psb/debian/changelog
> =A0create mode 100644 drivers/gpu/drm-psb/debian/compat
> =A0create mode 100644 drivers/gpu/drm-psb/debian/control
> =A0create mode 100644 drivers/gpu/drm-psb/debian/copyright
> =A0create mode 100644 drivers/gpu/drm-psb/debian/dirs
> =A0create mode 100644 drivers/gpu/drm-psb/debian/dkms.conf.in
> =A0create mode 100644 drivers/gpu/drm-psb/debian/patches/00list
> =A0create mode 100755 drivers/gpu/drm-psb/debian/patches/01_2.6.32.dpatch
> =A0create mode 100755 drivers/gpu/drm-psb/debian/patches/02_agp_memory.dp=
atch
> =A0create mode 100755 drivers/gpu/drm-psb/debian/patches/03_devt.dpatch
> =A0create mode 100755 drivers/gpu/drm-psb/debian/patches/04_drmpsb.dpatch
> =A0create mode 100755 drivers/gpu/drm-psb/debian/patches/05_edid-crash.dp=
atch
> =A0create mode 100755 drivers/gpu/drm-psb/debian/patches/06_i2c-intelfb.d=
patch
> =A0create mode 100755 drivers/gpu/drm-psb/debian/patches/07_current_euid.=
dpatch
> =A0create mode 100755 drivers/gpu/drm-psb/debian/patches/08_irqreturn.dpa=
tch
> =A0create mode 100755 drivers/gpu/drm-psb/debian/patches/10_change_prefix=
.dpatch
> =A0create mode 100755 drivers/gpu/drm-psb/debian/patches/2.6.34.dpatch
> =A0create mode 100755 drivers/gpu/drm-psb/debian/patches/use_udev.dpatch
> =A0create mode 100644 drivers/gpu/drm-psb/debian/postinst
> =A0create mode 100644 drivers/gpu/drm-psb/debian/postrm
> =A0create mode 100644 drivers/gpu/drm-psb/debian/prerm
> =A0create mode 100644 drivers/gpu/drm-psb/debian/psb-kernel-headers.dirs
> =A0create mode 100644 drivers/gpu/drm-psb/debian/psb-kernel-headers.insta=
ll
> =A0create mode 100644 drivers/gpu/drm-psb/debian/psb-kernel-headers.postr=
m
> =A0create mode 100644 drivers/gpu/drm-psb/debian/psb-kernel-headers.prein=
st
> =A0create mode 100755 drivers/gpu/drm-psb/debian/rules
> =A0create mode 100644 drivers/gpu/drm-psb/drm.h
> =A0create mode 100644 drivers/gpu/drm-psb/drmP.h
> =A0create mode 100644 drivers/gpu/drm-psb/drm_agpsupport.c
> =A0create mode 100644 drivers/gpu/drm-psb/drm_auth.c
> =A0create mode 100644 drivers/gpu/drm-psb/drm_bo.c
> =A0create mode 100644 drivers/gpu/drm-psb/drm_bo_lock.c
> =A0create mode 100644 drivers/gpu/drm-psb/drm_bo_move.c
> =A0create mode 100644 drivers/gpu/drm-psb/drm_bufs.c
> =A0create mode 100644 drivers/gpu/drm-psb/drm_compat.c
> =A0create mode 100644 drivers/gpu/drm-psb/drm_compat.h
> =A0create mode 100644 drivers/gpu/drm-psb/drm_context.c
> =A0create mode 100644 drivers/gpu/drm-psb/drm_core.h
> =A0create mode 100644 drivers/gpu/drm-psb/drm_crtc.c
> =A0create mode 100644 drivers/gpu/drm-psb/drm_crtc.h
> =A0create mode 100644 drivers/gpu/drm-psb/drm_dma.c
> =A0create mode 100644 drivers/gpu/drm-psb/drm_drawable.c
> =A0create mode 100644 drivers/gpu/drm-psb/drm_drv.c
> =A0create mode 100644 drivers/gpu/drm-psb/drm_edid.c
> =A0create mode 100644 drivers/gpu/drm-psb/drm_edid.h
> =A0create mode 100644 drivers/gpu/drm-psb/drm_fb.c
> =A0create mode 100644 drivers/gpu/drm-psb/drm_fence.c
> =A0create mode 100644 drivers/gpu/drm-psb/drm_fops.c
> =A0create mode 100644 drivers/gpu/drm-psb/drm_hashtab.c
> =A0create mode 100644 drivers/gpu/drm-psb/drm_hashtab.h
> =A0create mode 100644 drivers/gpu/drm-psb/drm_internal.h
> =A0create mode 100644 drivers/gpu/drm-psb/drm_ioc32.c
> =A0create mode 100644 drivers/gpu/drm-psb/drm_ioctl.c
> =A0create mode 100644 drivers/gpu/drm-psb/drm_irq.c
> =A0create mode 100644 drivers/gpu/drm-psb/drm_lock.c
> =A0create mode 100644 drivers/gpu/drm-psb/drm_memory.c
> =A0create mode 100644 drivers/gpu/drm-psb/drm_memory.h
> =A0create mode 100644 drivers/gpu/drm-psb/drm_memory_debug.c
> =A0create mode 100644 drivers/gpu/drm-psb/drm_memory_debug.h
> =A0create mode 100644 drivers/gpu/drm-psb/drm_mm.c
> =A0create mode 100644 drivers/gpu/drm-psb/drm_modes.c
> =A0create mode 100644 drivers/gpu/drm-psb/drm_object.c
> =A0create mode 100644 drivers/gpu/drm-psb/drm_objects.h
> =A0create mode 100644 drivers/gpu/drm-psb/drm_os_linux.h
> =A0create mode 100644 drivers/gpu/drm-psb/drm_pci.c
> =A0create mode 100644 drivers/gpu/drm-psb/drm_pciids.h
> =A0create mode 100644 drivers/gpu/drm-psb/drm_pciids.txt
> =A0create mode 100644 drivers/gpu/drm-psb/drm_proc.c
> =A0create mode 100644 drivers/gpu/drm-psb/drm_regman.c
> =A0create mode 100644 drivers/gpu/drm-psb/drm_sarea.h
> =A0create mode 100644 drivers/gpu/drm-psb/drm_scatter.c
> =A0create mode 100644 drivers/gpu/drm-psb/drm_sman.c
> =A0create mode 100644 drivers/gpu/drm-psb/drm_sman.h
> =A0create mode 100644 drivers/gpu/drm-psb/drm_stub.c
> =A0create mode 100644 drivers/gpu/drm-psb/drm_sysfs.c
> =A0create mode 100644 drivers/gpu/drm-psb/drm_ttm.c
> =A0create mode 100644 drivers/gpu/drm-psb/drm_vm.c
> =A0create mode 100644 drivers/gpu/drm-psb/drm_vm_nopage_compat.c
> =A0create mode 100644 drivers/gpu/drm-psb/i915_buffer.c
> =A0create mode 100644 drivers/gpu/drm-psb/i915_compat.c
> =A0create mode 100644 drivers/gpu/drm-psb/i915_dma.c
> =A0create mode 100644 drivers/gpu/drm-psb/i915_drm.h
> =A0create mode 100644 drivers/gpu/drm-psb/i915_drv.c
> =A0create mode 100644 drivers/gpu/drm-psb/i915_drv.h
> =A0create mode 100644 drivers/gpu/drm-psb/i915_fence.c
> =A0create mode 100644 drivers/gpu/drm-psb/i915_init.c
> =A0create mode 100644 drivers/gpu/drm-psb/i915_ioc32.c
> =A0create mode 100644 drivers/gpu/drm-psb/i915_irq.c
> =A0create mode 100644 drivers/gpu/drm-psb/i915_mem.c
> =A0create mode 100644 drivers/gpu/drm-psb/i915_reg.h
> =A0create mode 100644 drivers/gpu/drm-psb/intel_crt.c
> =A0create mode 100644 drivers/gpu/drm-psb/intel_display.c
> =A0create mode 100644 drivers/gpu/drm-psb/intel_drv.h
> =A0create mode 100644 drivers/gpu/drm-psb/intel_fb.c
> =A0create mode 100644 drivers/gpu/drm-psb/intel_i2c.c
> =A0create mode 100644 drivers/gpu/drm-psb/intel_lvds.c
> =A0create mode 100644 drivers/gpu/drm-psb/intel_lvds.h
> =A0create mode 100644 drivers/gpu/drm-psb/intel_modes.c
> =A0create mode 100644 drivers/gpu/drm-psb/intel_sdvo.c
> =A0create mode 100644 drivers/gpu/drm-psb/intel_sdvo_regs.h
> =A0create mode 100644 drivers/gpu/drm-psb/intel_setup.c
> =A0create mode 100644 drivers/gpu/drm-psb/psb_buffer.c
> =A0create mode 100644 drivers/gpu/drm-psb/psb_detear.c
> =A0create mode 100644 drivers/gpu/drm-psb/psb_detear.h
> =A0create mode 100644 drivers/gpu/drm-psb/psb_drm.h
> =A0create mode 100644 drivers/gpu/drm-psb/psb_drv.c
> =A0create mode 100644 drivers/gpu/drm-psb/psb_drv.h
> =A0create mode 100644 drivers/gpu/drm-psb/psb_fb.c
> =A0create mode 100644 drivers/gpu/drm-psb/psb_fence.c
> =A0create mode 100644 drivers/gpu/drm-psb/psb_gtt.c
> =A0create mode 100644 drivers/gpu/drm-psb/psb_i2c.c
> =A0create mode 100644 drivers/gpu/drm-psb/psb_irq.c
> =A0create mode 100644 drivers/gpu/drm-psb/psb_mmu.c
> =A0create mode 100644 drivers/gpu/drm-psb/psb_msvdx.c
> =A0create mode 100644 drivers/gpu/drm-psb/psb_msvdx.h
> =A0create mode 100644 drivers/gpu/drm-psb/psb_msvdxinit.c
> =A0create mode 100644 drivers/gpu/drm-psb/psb_reg.h
> =A0create mode 100644 drivers/gpu/drm-psb/psb_regman.c
> =A0create mode 100644 drivers/gpu/drm-psb/psb_reset.c
> =A0create mode 100644 drivers/gpu/drm-psb/psb_scene.c
> =A0create mode 100644 drivers/gpu/drm-psb/psb_scene.h
> =A0create mode 100644 drivers/gpu/drm-psb/psb_schedule.c
> =A0create mode 100644 drivers/gpu/drm-psb/psb_schedule.h
> =A0create mode 100644 drivers/gpu/drm-psb/psb_setup.c
> =A0create mode 100644 drivers/gpu/drm-psb/psb_sgx.c
> =A0create mode 100644 drivers/gpu/drm-psb/psb_xhw.c
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

