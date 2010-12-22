Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-iw0-f176.google.com (mail-iw0-f176.google.com
	[209.85.214.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id D662D4C80050
	for <poky@yoctoproject.org>; Wed, 22 Dec 2010 08:06:59 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwn2 with SMTP id 2so5982521iwn.35
	for <poky@yoctoproject.org>; Wed, 22 Dec 2010 06:06:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:in-reply-to
	:references:date:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=wL3jhzRb6iFp5iJncD3278/mKVY7VZYrjrwzNKtNRNU=;
	b=oXgjVT6nC6lmEFbxLmGZAEurNttZPTYHdSWfeoa5YG937nSJX0rsOKc+icN/qthESy
	CyGvAKtwC69qFRuFiweI94S280oBmzKL8finzdjuPbWnSHrX06nwZrXQMOu1B6qRgql5
	qecQR6TaGEXETgSKK+X+fkRf0mICikm4L8jEI=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=NCVT3gL+Sd2Lb76c/J7XmTHJZk31VTvzXcCqvNgKRalrbCIehg2qreExYYgCiemaZW
	J8Bx4iMiSNiJArF7n+B/OlNJRVDi3Eq0uTuVeHbpcNiywnJbIrMT+bVi45n5jk8uCThv
	UQ4cjhwF6YQfYQ1CRq+IVrKhGuMxJ5XgAAELQ=
MIME-Version: 1.0
Received: by 10.231.167.201 with SMTP id r9mr6840259iby.46.1293026818948; Wed,
	22 Dec 2010 06:06:58 -0800 (PST)
Received: by 10.231.180.224 with HTTP; Wed, 22 Dec 2010 06:06:58 -0800 (PST)
In-Reply-To: <a6f41d4776c5b261bcf4fe2ff5c621470418c49a.1293003470.git.sgw@linux.intel.com>
References: <cover.1293003470.git.sgw@linux.intel.com>
	<a6f41d4776c5b261bcf4fe2ff5c621470418c49a.1293003470.git.sgw@linux.intel.com>
Date: Wed, 22 Dec 2010 09:06:58 -0500
Message-ID: <AANLkTim+fk4y63aQWUivQOOnK2WxiijvwoMUd7K7=Eps@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Tom Zanussi <tom.zanussi@intel.com>, "Purdie,
	Richard" <richard.purdie@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/4] meta-emenlow: update to the new BSP layout
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
X-List-Received-Date: Wed, 22 Dec 2010 14:07:00 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 22, 2010 at 2:40 AM, Tom Zanussi <tom.zanussi@intel.com> wrote:
> This modifies the meta-emenlow BSP layer to reflect the new BSP
> standard layout as defined in the latestYocto BSP Developer's Guide.
>
> There's no change in functionality here - this simply moves things
> around, adds a README, and makes the SRCREVs local.

I was just thinking about this while reading your patch series, and I'm
caught between two problems here.

I like:

  - BSPs that are self contained.

I'm ambivalent:

  - about having to update a lot of SRCREVs when I update the BSP branches.

I have a problem:

  - If all the SRCREVs are not in a single location, I can't hunt them all =
down
    and update them effectively. That makes point #2 into "strongly" dislik=
e.

I've got 350+ patches that are about to land for 2.6.34 (from the
2.6.34 -longterm
tree), and I'll be merging them out to the BSPs. So this SRCREV along with =
the
rest will change.

I'm looking for something that is effective in controlling the
branches, but is also
maintainable.

Richard: can we have a central SRCREV in the default revisions (per
machine still), and
then override it in a BSP layer ? That way if for some reason you
don't have the
default revisions your BSP will be standalone, but I still have a way
to update everything
at once (and we'll eventually update the BSP layers as well).

I can also set the SRCREVs in the recipes themselves via python (i.e.
set a default
again), that allows me a single point of control .. but perhaps
doesn't match existing
solutions.

Other options ?

Cheers,

Bruce

>
> Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
> ---
> =A0meta-emenlow/README =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0| =A0 78 ++++++++++++++++++++
> =A0meta-emenlow/conf/layer.conf =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 | =A0 =A04 +-
> =A0meta-emenlow/conf/machine/emenlow.conf =A0 =A0 =A0 =A0 =A0 =A0 | =A0 =
=A03 +
> =A0.../formfactor/formfactor/emenlow/machconfig =A0 =A0 =A0 | =A0 =A00
> =A0.../formfactor/formfactor_0.0.bbappend =A0 =A0 =A0 =A0 =A0 =A0 | =A0 =
=A00
> =A0.../libdrm-poulsbo-2.3.0/libdrm-poulsbo.patch =A0 =A0 =A0| =A0 =A00
> =A0.../libdrm-poulsbo/libdrm-poulsbo_2.3.0.bb =A0 =A0 =A0 =A0 | =A0 =A00
> =A0.../libva-0.31.0/033_g45_add_rgba_subpic.patch =A0 =A0 | =A0 =A00
> =A0.../034_g45_fix_return_for_unimpl.patch =A0 =A0 =A0 =A0 =A0 =A0| =A0 =
=A00
> =A0.../035_g45_add_yv12_image_format.patch =A0 =A0 =A0 =A0 =A0 =A0| =A0 =
=A00
> =A0.../libva-0.31.0/036_g45_add_vaGetImage.patch =A0 =A0 =A0| =A0 =A00
> =A0.../libva-0.31.0/037_g45_add_vaPutImage.patch =A0 =A0 =A0| =A0 =A00
> =A0.../038_g45_vaPutSurface_cliprects.patch =A0 =A0 =A0 =A0 =A0 | =A0 =A0=
0
> =A0.../libva-0.31.0/102_attribute_visibility.patch =A0 =A0| =A0 =A00
> =A0.../libva/libva-0.31.0/103_fix_vainfo_deps.patch =A0 | =A0 =A00
> =A0.../104_fix_libva_pkgconfig_deps.patch =A0 =A0 =A0 =A0 =A0 =A0 | =A0 =
=A00
> =A0.../105_dont_search_LIBGL_DRIVERS_PATH.patch =A0 =A0 =A0 | =A0 =A00
> =A0.../libva/libva-0.31.0/108_drivers_path.patch =A0 =A0 =A0| =A0 =A00
> =A0.../libva-0.31.0/203_fix_fglrx_detection.patch =A0 =A0 | =A0 =A00
> =A0.../libva-0.31.0/204_check_ATIFGLEXTENSION.patch =A0 | =A0 =A00
> =A0.../libva/libva-0.31.0/300_sds_version.patch =A0 =A0 =A0 | =A0 =A00
> =A0.../libva/libva-0.31.0/301_vdpau_mpeg4.patch =A0 =A0 =A0 | =A0 =A00
> =A0.../320_move_vaPutSurface_flags_def.patch =A0 =A0 =A0 =A0 =A0| =A0 =A0=
0
> =A0.../libva/libva-0.31.0/321_libva_glx.base.patch =A0 =A0| =A0 =A00
> =A0.../libva/libva-0.31.0/322_libva_glx.patch =A0 =A0 =A0 =A0 | =A0 =A00
> =A0.../libva/libva-0.31.0/390_compat.base.patch =A0 =A0 =A0 | =A0 =A00
> =A0.../libva/libva-0.31.0/391_compat.patch =A0 =A0 =A0 =A0 =A0 =A0| =A0 =
=A00
> =A0.../libva/libva-0.31.0/392_compat.dso.patch =A0 =A0 =A0 =A0| =A0 =A00
> =A0.../libva/libva-0.31.0/libdrm-poulsbo.patch =A0 =A0 =A0 =A0| =A0 =A00
> =A0.../libva/libva_0.31.0.bb =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0| =A0 =A00
> =A0.../psb-firmware/psb-firmware_0.30.bb =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0=
 =A00
> =A0.../psb-kernel-source-4.42.0/build.patch =A0 =A0 =A0 =A0 =A0 | =A0 =A0=
0
> =A0.../psb-kernel-source/psb-kernel-source_4.42.0.bb =A0| =A0 =A00
> =A0.../xorg-xserver/files/crosscompile.patch =A0 =A0 =A0 =A0 =A0| =A0 =A0=
0
> =A0.../files/fix_open_max_preprocessor_error.patch =A0 =A0| =A0 =A00
> =A0.../xorg-xserver/files/libdrm-poulsbo.patch =A0 =A0 =A0 =A0| =A0 =A00
> =A0.../xorg-xserver/files/macro_tweak.patch =A0 =A0 =A0 =A0 =A0 | =A0 =A0=
0
> =A0.../xorg-xserver/files/nodolt.patch =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0| =
=A0 =A00
> =A0.../xorg-xserver/xserver-psb_1.7.99.2.bb =A0 =A0 =A0 =A0 =A0 | =A0 =A0=
0
> =A0.../xserver-xf86-config/emenlow/xorg.conf =A0 =A0 =A0 =A0 =A0| =A0 =A0=
0
> =A0.../xorg-xserver/xserver-xf86-config_0.1.bbappend =A0| =A0 =A00
> =A0.../xpsb-glx/xpsb-glx-0.18/cross-compile.patch =A0 =A0 | =A0 =A00
> =A0.../xpsb-glx/xpsb-glx-0.18/libdrmname.patch =A0 =A0 =A0 =A0| =A0 =A00
> =A0.../xpsb-glx/xpsb-glx-0.18/native-matypes.patch =A0 =A0| =A0 =A00
> =A0.../xpsb-glx/xpsb-glx_0.18.bb =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0| =A0 =A00
> =A0.../01_disable_lid_timer.patch =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 | =A0 =A00
> =A0.../xserver-xorg-video-psb-0.32.1/dri-h.patch =A0 =A0 =A0| =A0 =A00
> =A0.../libdrm-poulsbo.patch =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 | =A0 =A00
> =A0.../xserver-xorg-video-psb-0.32.1/psb_mixed.patch =A0| =A0 =A00
> =A0.../psb_xvtempfix.patch =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0| =A0 =A00
> =A0.../xserver-xorg-video-psb-0.32.1/stubs.patch =A0 =A0 =A0| =A0 =A00
> =A0.../xserver-xorg-video-psb-0.32.1/visibility.patch | =A0 =A00
> =A0.../xorg-x11-drv-psb-0.31.0-ignoreacpi.patch =A0 =A0 =A0 | =A0 =A00
> =A0.../xorg-x11-drv-psb-0.31.0-xserver17.patch =A0 =A0 =A0 =A0| =A0 =A00
> =A0.../xserver-xorg-video-psb-0.31.0-assert.patch =A0 =A0 | =A0 =A00
> =A0...rver-xorg-video-psb-0.31.0-comment_unused.patch | =A0 =A00
> =A0.../xserver-xorg-video-psb-0.31.0-greedy.patch =A0 =A0 | =A0 =A00
> =A0.../xserver-xorg-video-psb-0.31.0-loader.patch =A0 =A0 | =A0 =A00
> =A0.../xserver-xorg-video-psb_0.32.1.bb =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0=
 =A00
> =A0.../linux/linux-2.6.33.2/defconfig =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =
=A0 =A00
> =A0.../linux/linux-yocto-stable_git.bbappend =A0 =A0 =A0 =A0 =A0| =A0 =A0=
0
> =A0.../linux/linux_2.6.33.2.bbappend =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0|=
 =A0 =A00
> =A0.../conf/distro/include/poky-default-revisions.inc | =A0 =A01 -
> =A063 files changed, 83 insertions(+), 3 deletions(-)
> =A0create mode 100644 meta-emenlow/README
> =A0create mode 100644 meta-emenlow/binary/.gitignore
> =A0rename meta-emenlow/{recipes =3D> recipes-bsp}/formfactor/formfactor/e=
menlow/machconfig (100%)
> =A0rename meta-emenlow/{recipes =3D> recipes-bsp}/formfactor/formfactor_0=
.0.bbappend (100%)
> =A0rename meta-emenlow/{recipes =3D> recipes-graphics}/libdrm-poulsbo/lib=
drm-poulsbo-2.3.0/libdrm-poulsbo.patch (100%)
> =A0rename meta-emenlow/{recipes =3D> recipes-graphics}/libdrm-poulsbo/lib=
drm-poulsbo_2.3.0.bb (100%)
> =A0rename meta-emenlow/{recipes =3D> recipes-graphics}/libva/libva-0.31.0=
/033_g45_add_rgba_subpic.patch (100%)
> =A0rename meta-emenlow/{recipes =3D> recipes-graphics}/libva/libva-0.31.0=
/034_g45_fix_return_for_unimpl.patch (100%)
> =A0rename meta-emenlow/{recipes =3D> recipes-graphics}/libva/libva-0.31.0=
/035_g45_add_yv12_image_format.patch (100%)
> =A0rename meta-emenlow/{recipes =3D> recipes-graphics}/libva/libva-0.31.0=
/036_g45_add_vaGetImage.patch (100%)
> =A0rename meta-emenlow/{recipes =3D> recipes-graphics}/libva/libva-0.31.0=
/037_g45_add_vaPutImage.patch (100%)
> =A0rename meta-emenlow/{recipes =3D> recipes-graphics}/libva/libva-0.31.0=
/038_g45_vaPutSurface_cliprects.patch (100%)
> =A0rename meta-emenlow/{recipes =3D> recipes-graphics}/libva/libva-0.31.0=
/102_attribute_visibility.patch (100%)
> =A0rename meta-emenlow/{recipes =3D> recipes-graphics}/libva/libva-0.31.0=
/103_fix_vainfo_deps.patch (100%)
> =A0rename meta-emenlow/{recipes =3D> recipes-graphics}/libva/libva-0.31.0=
/104_fix_libva_pkgconfig_deps.patch (100%)
> =A0rename meta-emenlow/{recipes =3D> recipes-graphics}/libva/libva-0.31.0=
/105_dont_search_LIBGL_DRIVERS_PATH.patch (100%)
> =A0rename meta-emenlow/{recipes =3D> recipes-graphics}/libva/libva-0.31.0=
/108_drivers_path.patch (100%)
> =A0rename meta-emenlow/{recipes =3D> recipes-graphics}/libva/libva-0.31.0=
/203_fix_fglrx_detection.patch (100%)
> =A0rename meta-emenlow/{recipes =3D> recipes-graphics}/libva/libva-0.31.0=
/204_check_ATIFGLEXTENSION.patch (100%)
> =A0rename meta-emenlow/{recipes =3D> recipes-graphics}/libva/libva-0.31.0=
/300_sds_version.patch (100%)
> =A0rename meta-emenlow/{recipes =3D> recipes-graphics}/libva/libva-0.31.0=
/301_vdpau_mpeg4.patch (100%)
> =A0rename meta-emenlow/{recipes =3D> recipes-graphics}/libva/libva-0.31.0=
/320_move_vaPutSurface_flags_def.patch (100%)
> =A0rename meta-emenlow/{recipes =3D> recipes-graphics}/libva/libva-0.31.0=
/321_libva_glx.base.patch (100%)
> =A0rename meta-emenlow/{recipes =3D> recipes-graphics}/libva/libva-0.31.0=
/322_libva_glx.patch (100%)
> =A0rename meta-emenlow/{recipes =3D> recipes-graphics}/libva/libva-0.31.0=
/390_compat.base.patch (100%)
> =A0rename meta-emenlow/{recipes =3D> recipes-graphics}/libva/libva-0.31.0=
/391_compat.patch (100%)
> =A0rename meta-emenlow/{recipes =3D> recipes-graphics}/libva/libva-0.31.0=
/392_compat.dso.patch (100%)
> =A0rename meta-emenlow/{recipes =3D> recipes-graphics}/libva/libva-0.31.0=
/libdrm-poulsbo.patch (100%)
> =A0rename meta-emenlow/{recipes =3D> recipes-graphics}/libva/libva_0.31.0=
.bb (100%)
> =A0rename meta-emenlow/{recipes =3D> recipes-graphics}/psb-firmware/psb-f=
irmware_0.30.bb (100%)
> =A0rename meta-emenlow/{recipes =3D> recipes-graphics}/psb-kernel-source/=
psb-kernel-source-4.42.0/build.patch (100%)
> =A0rename meta-emenlow/{recipes =3D> recipes-graphics}/psb-kernel-source/=
psb-kernel-source_4.42.0.bb (100%)
> =A0rename meta-emenlow/{recipes =3D> recipes-graphics}/xorg-xserver/files=
/crosscompile.patch (100%)
> =A0rename meta-emenlow/{recipes =3D> recipes-graphics}/xorg-xserver/files=
/fix_open_max_preprocessor_error.patch (100%)
> =A0rename meta-emenlow/{recipes =3D> recipes-graphics}/xorg-xserver/files=
/libdrm-poulsbo.patch (100%)
> =A0rename meta-emenlow/{recipes =3D> recipes-graphics}/xorg-xserver/files=
/macro_tweak.patch (100%)
> =A0rename meta-emenlow/{recipes =3D> recipes-graphics}/xorg-xserver/files=
/nodolt.patch (100%)
> =A0rename meta-emenlow/{recipes =3D> recipes-graphics}/xorg-xserver/xserv=
er-psb_1.7.99.2.bb (100%)
> =A0rename meta-emenlow/{recipes =3D> recipes-graphics}/xorg-xserver/xserv=
er-xf86-config/emenlow/xorg.conf (100%)
> =A0rename meta-emenlow/{recipes =3D> recipes-graphics}/xorg-xserver/xserv=
er-xf86-config_0.1.bbappend (100%)
> =A0rename meta-emenlow/{recipes =3D> recipes-graphics}/xpsb-glx/xpsb-glx-=
0.18/cross-compile.patch (100%)
> =A0rename meta-emenlow/{recipes =3D> recipes-graphics}/xpsb-glx/xpsb-glx-=
0.18/libdrmname.patch (100%)
> =A0rename meta-emenlow/{recipes =3D> recipes-graphics}/xpsb-glx/xpsb-glx-=
0.18/native-matypes.patch (100%)
> =A0rename meta-emenlow/{recipes =3D> recipes-graphics}/xpsb-glx/xpsb-glx_=
0.18.bb (100%)
> =A0rename meta-emenlow/{recipes =3D> recipes-graphics}/xserver-xorg-video=
-psb/xserver-xorg-video-psb-0.32.1/01_disable_lid_timer.patch (100%)
> =A0rename meta-emenlow/{recipes =3D> recipes-graphics}/xserver-xorg-video=
-psb/xserver-xorg-video-psb-0.32.1/dri-h.patch (100%)
> =A0rename meta-emenlow/{recipes =3D> recipes-graphics}/xserver-xorg-video=
-psb/xserver-xorg-video-psb-0.32.1/libdrm-poulsbo.patch (100%)
> =A0rename meta-emenlow/{recipes =3D> recipes-graphics}/xserver-xorg-video=
-psb/xserver-xorg-video-psb-0.32.1/psb_mixed.patch (100%)
> =A0rename meta-emenlow/{recipes =3D> recipes-graphics}/xserver-xorg-video=
-psb/xserver-xorg-video-psb-0.32.1/psb_xvtempfix.patch (100%)
> =A0rename meta-emenlow/{recipes =3D> recipes-graphics}/xserver-xorg-video=
-psb/xserver-xorg-video-psb-0.32.1/stubs.patch (100%)
> =A0rename meta-emenlow/{recipes =3D> recipes-graphics}/xserver-xorg-video=
-psb/xserver-xorg-video-psb-0.32.1/visibility.patch (100%)
> =A0rename meta-emenlow/{recipes =3D> recipes-graphics}/xserver-xorg-video=
-psb/xserver-xorg-video-psb-0.32.1/xorg-x11-drv-psb-0.31.0-ignoreacpi.patch=
 (100%)
> =A0rename meta-emenlow/{recipes =3D> recipes-graphics}/xserver-xorg-video=
-psb/xserver-xorg-video-psb-0.32.1/xorg-x11-drv-psb-0.31.0-xserver17.patch =
(100%)
> =A0rename meta-emenlow/{recipes =3D> recipes-graphics}/xserver-xorg-video=
-psb/xserver-xorg-video-psb-0.32.1/xserver-xorg-video-psb-0.31.0-assert.pat=
ch (100%)
> =A0rename meta-emenlow/{recipes =3D> recipes-graphics}/xserver-xorg-video=
-psb/xserver-xorg-video-psb-0.32.1/xserver-xorg-video-psb-0.31.0-comment_un=
used.patch (100%)
> =A0rename meta-emenlow/{recipes =3D> recipes-graphics}/xserver-xorg-video=
-psb/xserver-xorg-video-psb-0.32.1/xserver-xorg-video-psb-0.31.0-greedy.pat=
ch (100%)
> =A0rename meta-emenlow/{recipes =3D> recipes-graphics}/xserver-xorg-video=
-psb/xserver-xorg-video-psb-0.32.1/xserver-xorg-video-psb-0.31.0-loader.pat=
ch (100%)
> =A0rename meta-emenlow/{recipes =3D> recipes-graphics}/xserver-xorg-video=
-psb/xserver-xorg-video-psb_0.32.1.bb (100%)
> =A0rename meta-emenlow/{recipes =3D> recipes-kernel}/linux/linux-2.6.33.2=
/defconfig (100%)
> =A0rename meta-emenlow/{recipes =3D> recipes-kernel}/linux/linux-yocto-st=
able_git.bbappend (100%)
> =A0rename meta-emenlow/{recipes =3D> recipes-kernel}/linux/linux_2.6.33.2=
.bbappend (100%)
>
> diff --git a/meta-emenlow/README b/meta-emenlow/README
> new file mode 100644
> index 0000000..862af54
> --- /dev/null
> +++ b/meta-emenlow/README
> @@ -0,0 +1,78 @@
> +This README file contains information on building the meta-emenlow
> +BSP layer using any of the supported machine configurations, and
> +booting the images contained in the /binary directory.
> +
> +If you're only interested in booting the images in the /binary
> +directory of a BSP tarball you've downloaded, there's nothing special
> +to do - the appropriate images are already in the /binary directory
> +depending on which BSP tarball you downloaded.
> +
> +Please see the corresponding sections below for details.
> +
> +
> +Table of Contents
> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> +
> + I. Building the meta-emenlow BSP layer
> +II. Booting the images in /binary
> +
> +
> +I. Building the meta-emenlow BSP layer
> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> +
> +In order to build an image with BSP support for emenlow, you just need
> +to check out the poky master branch.
> +
> +Having done that, you can build an emenlow image by adding the
> +location of the meta-emenlow layer to bblayers.conf e.g.:
> +
> + =A0yocto/meta-emenlow \
> +
> +To enable the emenlow layer, add the emenlow MACHINE to local.conf:
> +
> + =A0MACHINE ?=3D "emenlow"
> +
> +You should then be able to build an emenlow image as such:
> +
> + =A0$ source poky-init-build-env
> + =A0$ bitbake poky-image-sato-live
> +
> +At the end of a successful build, you should have a live image that
> +you can boot from a USB flash drive (see instructions on how to do
> +that below, in the section 'Booting the images from /binary').
> +
> +
> +II. Booting the images in /binary
> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D
> +
> +This BSP contains bootable live images, which can be used to directly
> +boot Yocto off of a USB flash drive.
> +
> +Under Linux, insert a USB flash drive. =A0Assuming the USB flash drive
> +takes device /dev/sdf, use dd to copy the live image to it. =A0For
> +example:
> +
> +# dd if=3Dpoky-image-sato-live-emenlow-20101207053738.hddimg of=3D/dev/s=
df
> +# sync
> +# eject /dev/sdf
> +
> +This should give you a bootable USB flash device. =A0Insert the device
> +into a bootable USB socket on the target, and power on. =A0This should
> +result in a system booted to the Sato graphical desktop.
> +
> +If you want a terminal, use the arrows at the top of the UI to move to
> +different pages of available applications, one of which is named
> +'Terminal'. =A0Clicking that should give you a root terminal.
> +
> +If you want to ssh into the system, you can use the root terminal to
> +ifconfig the IP address and use that to ssh in. =A0The root password is
> +empty, so to log in type 'root' for the user name and hit 'Enter' at
> +the Password prompt: and you should be in.
> +
> +----
> +
> +If you find you're getting corrupt images on the USB (it doesn't show
> +the syslinux boot: prompt, or the boot: prompt contains strange
> +characters), try doing this first:
> +
> +# dd if=3D/dev/zero of=3D/dev/sdf bs=3D1M count=3D512
> diff --git a/meta-emenlow/binary/.gitignore b/meta-emenlow/binary/.gitign=
ore
> new file mode 100644
> index 0000000..e69de29
> diff --git a/meta-emenlow/conf/layer.conf b/meta-emenlow/conf/layer.conf
> index 4017787..563b9c8 100644
> --- a/meta-emenlow/conf/layer.conf
> +++ b/meta-emenlow/conf/layer.conf
> @@ -2,8 +2,8 @@
> =A0BBPATH :=3D "${BBPATH}:${LAYERDIR}"
>
> =A0# We have a packages directory, add to BBFILES
> -BBFILES :=3D "${BBFILES} ${LAYERDIR}/recipes/*/*.bb \
> - =A0 =A0 =A0 ${LAYERDIR}/recipes/*/*.bbappend"
> +BBFILES :=3D "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
> + =A0 =A0 =A0 ${LAYERDIR}/recipes-*/*/*.bbappend"
>
> =A0BBFILE_COLLECTIONS +=3D "emenlow"
> =A0BBFILE_PATTERN_emenlow :=3D "^${LAYERDIR}/"
> diff --git a/meta-emenlow/conf/machine/emenlow.conf b/meta-emenlow/conf/m=
achine/emenlow.conf
> index b8dea64..d4234ff 100644
> --- a/meta-emenlow/conf/machine/emenlow.conf
> +++ b/meta-emenlow/conf/machine/emenlow.conf
> @@ -43,3 +43,6 @@ IMAGE_FSTYPES ?=3D "ext3 cpio.gz"
>
> =A0GLIBC_ADDONS =3D "nptl"
> =A0GLIBC_EXTRA_OECONF =3D "--with-tls"
> +
> +SRCREV_machine_pn-linux-yocto-stable_emenlow ?=3D "aae69fdf104b0a9d7b371=
0f808aac6ab303490f7"
> +SRCREV_meta_pn-linux-yocto-stable_emenlow ?=3D "50ccd2b3213b6a1bacb3f898=
c035119802dac420"
> \ No newline at end of file
> diff --git a/meta-emenlow/recipes/formfactor/formfactor/emenlow/machconfi=
g b/meta-emenlow/recipes-bsp/formfactor/formfactor/emenlow/machconfig
> similarity index 100%
> rename from meta-emenlow/recipes/formfactor/formfactor/emenlow/machconfig
> rename to meta-emenlow/recipes-bsp/formfactor/formfactor/emenlow/machconf=
ig
> diff --git a/meta-emenlow/recipes/formfactor/formfactor_0.0.bbappend b/me=
ta-emenlow/recipes-bsp/formfactor/formfactor_0.0.bbappend
> similarity index 100%
> rename from meta-emenlow/recipes/formfactor/formfactor_0.0.bbappend
> rename to meta-emenlow/recipes-bsp/formfactor/formfactor_0.0.bbappend
> diff --git a/meta-emenlow/recipes/libdrm-poulsbo/libdrm-poulsbo-2.3.0/lib=
drm-poulsbo.patch b/meta-emenlow/recipes-graphics/libdrm-poulsbo/libdrm-pou=
lsbo-2.3.0/libdrm-poulsbo.patch
> similarity index 100%
> rename from meta-emenlow/recipes/libdrm-poulsbo/libdrm-poulsbo-2.3.0/libd=
rm-poulsbo.patch
> rename to meta-emenlow/recipes-graphics/libdrm-poulsbo/libdrm-poulsbo-2.3=
.0/libdrm-poulsbo.patch
> diff --git a/meta-emenlow/recipes/libdrm-poulsbo/libdrm-poulsbo_2.3.0.bb =
b/meta-emenlow/recipes-graphics/libdrm-poulsbo/libdrm-poulsbo_2.3.0.bb
> similarity index 100%
> rename from meta-emenlow/recipes/libdrm-poulsbo/libdrm-poulsbo_2.3.0.bb
> rename to meta-emenlow/recipes-graphics/libdrm-poulsbo/libdrm-poulsbo_2.3=
.0.bb
> diff --git a/meta-emenlow/recipes/libva/libva-0.31.0/033_g45_add_rgba_sub=
pic.patch b/meta-emenlow/recipes-graphics/libva/libva-0.31.0/033_g45_add_rg=
ba_subpic.patch
> similarity index 100%
> rename from meta-emenlow/recipes/libva/libva-0.31.0/033_g45_add_rgba_subp=
ic.patch
> rename to meta-emenlow/recipes-graphics/libva/libva-0.31.0/033_g45_add_rg=
ba_subpic.patch
> diff --git a/meta-emenlow/recipes/libva/libva-0.31.0/034_g45_fix_return_f=
or_unimpl.patch b/meta-emenlow/recipes-graphics/libva/libva-0.31.0/034_g45_=
fix_return_for_unimpl.patch
> similarity index 100%
> rename from meta-emenlow/recipes/libva/libva-0.31.0/034_g45_fix_return_fo=
r_unimpl.patch
> rename to meta-emenlow/recipes-graphics/libva/libva-0.31.0/034_g45_fix_re=
turn_for_unimpl.patch
> diff --git a/meta-emenlow/recipes/libva/libva-0.31.0/035_g45_add_yv12_ima=
ge_format.patch b/meta-emenlow/recipes-graphics/libva/libva-0.31.0/035_g45_=
add_yv12_image_format.patch
> similarity index 100%
> rename from meta-emenlow/recipes/libva/libva-0.31.0/035_g45_add_yv12_imag=
e_format.patch
> rename to meta-emenlow/recipes-graphics/libva/libva-0.31.0/035_g45_add_yv=
12_image_format.patch
> diff --git a/meta-emenlow/recipes/libva/libva-0.31.0/036_g45_add_vaGetIma=
ge.patch b/meta-emenlow/recipes-graphics/libva/libva-0.31.0/036_g45_add_vaG=
etImage.patch
> similarity index 100%
> rename from meta-emenlow/recipes/libva/libva-0.31.0/036_g45_add_vaGetImag=
e.patch
> rename to meta-emenlow/recipes-graphics/libva/libva-0.31.0/036_g45_add_va=
GetImage.patch
> diff --git a/meta-emenlow/recipes/libva/libva-0.31.0/037_g45_add_vaPutIma=
ge.patch b/meta-emenlow/recipes-graphics/libva/libva-0.31.0/037_g45_add_vaP=
utImage.patch
> similarity index 100%
> rename from meta-emenlow/recipes/libva/libva-0.31.0/037_g45_add_vaPutImag=
e.patch
> rename to meta-emenlow/recipes-graphics/libva/libva-0.31.0/037_g45_add_va=
PutImage.patch
> diff --git a/meta-emenlow/recipes/libva/libva-0.31.0/038_g45_vaPutSurface=
_cliprects.patch b/meta-emenlow/recipes-graphics/libva/libva-0.31.0/038_g45=
_vaPutSurface_cliprects.patch
> similarity index 100%
> rename from meta-emenlow/recipes/libva/libva-0.31.0/038_g45_vaPutSurface_=
cliprects.patch
> rename to meta-emenlow/recipes-graphics/libva/libva-0.31.0/038_g45_vaPutS=
urface_cliprects.patch
> diff --git a/meta-emenlow/recipes/libva/libva-0.31.0/102_attribute_visibi=
lity.patch b/meta-emenlow/recipes-graphics/libva/libva-0.31.0/102_attribute=
_visibility.patch
> similarity index 100%
> rename from meta-emenlow/recipes/libva/libva-0.31.0/102_attribute_visibil=
ity.patch
> rename to meta-emenlow/recipes-graphics/libva/libva-0.31.0/102_attribute_=
visibility.patch
> diff --git a/meta-emenlow/recipes/libva/libva-0.31.0/103_fix_vainfo_deps.=
patch b/meta-emenlow/recipes-graphics/libva/libva-0.31.0/103_fix_vainfo_dep=
s.patch
> similarity index 100%
> rename from meta-emenlow/recipes/libva/libva-0.31.0/103_fix_vainfo_deps.p=
atch
> rename to meta-emenlow/recipes-graphics/libva/libva-0.31.0/103_fix_vainfo=
_deps.patch
> diff --git a/meta-emenlow/recipes/libva/libva-0.31.0/104_fix_libva_pkgcon=
fig_deps.patch b/meta-emenlow/recipes-graphics/libva/libva-0.31.0/104_fix_l=
ibva_pkgconfig_deps.patch
> similarity index 100%
> rename from meta-emenlow/recipes/libva/libva-0.31.0/104_fix_libva_pkgconf=
ig_deps.patch
> rename to meta-emenlow/recipes-graphics/libva/libva-0.31.0/104_fix_libva_=
pkgconfig_deps.patch
> diff --git a/meta-emenlow/recipes/libva/libva-0.31.0/105_dont_search_LIBG=
L_DRIVERS_PATH.patch b/meta-emenlow/recipes-graphics/libva/libva-0.31.0/105=
_dont_search_LIBGL_DRIVERS_PATH.patch
> similarity index 100%
> rename from meta-emenlow/recipes/libva/libva-0.31.0/105_dont_search_LIBGL=
_DRIVERS_PATH.patch
> rename to meta-emenlow/recipes-graphics/libva/libva-0.31.0/105_dont_searc=
h_LIBGL_DRIVERS_PATH.patch
> diff --git a/meta-emenlow/recipes/libva/libva-0.31.0/108_drivers_path.pat=
ch b/meta-emenlow/recipes-graphics/libva/libva-0.31.0/108_drivers_path.patc=
h
> similarity index 100%
> rename from meta-emenlow/recipes/libva/libva-0.31.0/108_drivers_path.patc=
h
> rename to meta-emenlow/recipes-graphics/libva/libva-0.31.0/108_drivers_pa=
th.patch
> diff --git a/meta-emenlow/recipes/libva/libva-0.31.0/203_fix_fglrx_detect=
ion.patch b/meta-emenlow/recipes-graphics/libva/libva-0.31.0/203_fix_fglrx_=
detection.patch
> similarity index 100%
> rename from meta-emenlow/recipes/libva/libva-0.31.0/203_fix_fglrx_detecti=
on.patch
> rename to meta-emenlow/recipes-graphics/libva/libva-0.31.0/203_fix_fglrx_=
detection.patch
> diff --git a/meta-emenlow/recipes/libva/libva-0.31.0/204_check_ATIFGLEXTE=
NSION.patch b/meta-emenlow/recipes-graphics/libva/libva-0.31.0/204_check_AT=
IFGLEXTENSION.patch
> similarity index 100%
> rename from meta-emenlow/recipes/libva/libva-0.31.0/204_check_ATIFGLEXTEN=
SION.patch
> rename to meta-emenlow/recipes-graphics/libva/libva-0.31.0/204_check_ATIF=
GLEXTENSION.patch
> diff --git a/meta-emenlow/recipes/libva/libva-0.31.0/300_sds_version.patc=
h b/meta-emenlow/recipes-graphics/libva/libva-0.31.0/300_sds_version.patch
> similarity index 100%
> rename from meta-emenlow/recipes/libva/libva-0.31.0/300_sds_version.patch
> rename to meta-emenlow/recipes-graphics/libva/libva-0.31.0/300_sds_versio=
n.patch
> diff --git a/meta-emenlow/recipes/libva/libva-0.31.0/301_vdpau_mpeg4.patc=
h b/meta-emenlow/recipes-graphics/libva/libva-0.31.0/301_vdpau_mpeg4.patch
> similarity index 100%
> rename from meta-emenlow/recipes/libva/libva-0.31.0/301_vdpau_mpeg4.patch
> rename to meta-emenlow/recipes-graphics/libva/libva-0.31.0/301_vdpau_mpeg=
4.patch
> diff --git a/meta-emenlow/recipes/libva/libva-0.31.0/320_move_vaPutSurfac=
e_flags_def.patch b/meta-emenlow/recipes-graphics/libva/libva-0.31.0/320_mo=
ve_vaPutSurface_flags_def.patch
> similarity index 100%
> rename from meta-emenlow/recipes/libva/libva-0.31.0/320_move_vaPutSurface=
_flags_def.patch
> rename to meta-emenlow/recipes-graphics/libva/libva-0.31.0/320_move_vaPut=
Surface_flags_def.patch
> diff --git a/meta-emenlow/recipes/libva/libva-0.31.0/321_libva_glx.base.p=
atch b/meta-emenlow/recipes-graphics/libva/libva-0.31.0/321_libva_glx.base.=
patch
> similarity index 100%
> rename from meta-emenlow/recipes/libva/libva-0.31.0/321_libva_glx.base.pa=
tch
> rename to meta-emenlow/recipes-graphics/libva/libva-0.31.0/321_libva_glx.=
base.patch
> diff --git a/meta-emenlow/recipes/libva/libva-0.31.0/322_libva_glx.patch =
b/meta-emenlow/recipes-graphics/libva/libva-0.31.0/322_libva_glx.patch
> similarity index 100%
> rename from meta-emenlow/recipes/libva/libva-0.31.0/322_libva_glx.patch
> rename to meta-emenlow/recipes-graphics/libva/libva-0.31.0/322_libva_glx.=
patch
> diff --git a/meta-emenlow/recipes/libva/libva-0.31.0/390_compat.base.patc=
h b/meta-emenlow/recipes-graphics/libva/libva-0.31.0/390_compat.base.patch
> similarity index 100%
> rename from meta-emenlow/recipes/libva/libva-0.31.0/390_compat.base.patch
> rename to meta-emenlow/recipes-graphics/libva/libva-0.31.0/390_compat.bas=
e.patch
> diff --git a/meta-emenlow/recipes/libva/libva-0.31.0/391_compat.patch b/m=
eta-emenlow/recipes-graphics/libva/libva-0.31.0/391_compat.patch
> similarity index 100%
> rename from meta-emenlow/recipes/libva/libva-0.31.0/391_compat.patch
> rename to meta-emenlow/recipes-graphics/libva/libva-0.31.0/391_compat.pat=
ch
> diff --git a/meta-emenlow/recipes/libva/libva-0.31.0/392_compat.dso.patch=
 b/meta-emenlow/recipes-graphics/libva/libva-0.31.0/392_compat.dso.patch
> similarity index 100%
> rename from meta-emenlow/recipes/libva/libva-0.31.0/392_compat.dso.patch
> rename to meta-emenlow/recipes-graphics/libva/libva-0.31.0/392_compat.dso=
.patch
> diff --git a/meta-emenlow/recipes/libva/libva-0.31.0/libdrm-poulsbo.patch=
 b/meta-emenlow/recipes-graphics/libva/libva-0.31.0/libdrm-poulsbo.patch
> similarity index 100%
> rename from meta-emenlow/recipes/libva/libva-0.31.0/libdrm-poulsbo.patch
> rename to meta-emenlow/recipes-graphics/libva/libva-0.31.0/libdrm-poulsbo=
.patch
> diff --git a/meta-emenlow/recipes/libva/libva_0.31.0.bb b/meta-emenlow/re=
cipes-graphics/libva/libva_0.31.0.bb
> similarity index 100%
> rename from meta-emenlow/recipes/libva/libva_0.31.0.bb
> rename to meta-emenlow/recipes-graphics/libva/libva_0.31.0.bb
> diff --git a/meta-emenlow/recipes/psb-firmware/psb-firmware_0.30.bb b/met=
a-emenlow/recipes-graphics/psb-firmware/psb-firmware_0.30.bb
> similarity index 100%
> rename from meta-emenlow/recipes/psb-firmware/psb-firmware_0.30.bb
> rename to meta-emenlow/recipes-graphics/psb-firmware/psb-firmware_0.30.bb
> diff --git a/meta-emenlow/recipes/psb-kernel-source/psb-kernel-source-4.4=
2.0/build.patch b/meta-emenlow/recipes-graphics/psb-kernel-source/psb-kerne=
l-source-4.42.0/build.patch
> similarity index 100%
> rename from meta-emenlow/recipes/psb-kernel-source/psb-kernel-source-4.42=
.0/build.patch
> rename to meta-emenlow/recipes-graphics/psb-kernel-source/psb-kernel-sour=
ce-4.42.0/build.patch
> diff --git a/meta-emenlow/recipes/psb-kernel-source/psb-kernel-source_4.4=
2.0.bb b/meta-emenlow/recipes-graphics/psb-kernel-source/psb-kernel-source_=
4.42.0.bb
> similarity index 100%
> rename from meta-emenlow/recipes/psb-kernel-source/psb-kernel-source_4.42=
.0.bb
> rename to meta-emenlow/recipes-graphics/psb-kernel-source/psb-kernel-sour=
ce_4.42.0.bb
> diff --git a/meta-emenlow/recipes/xorg-xserver/files/crosscompile.patch b=
/meta-emenlow/recipes-graphics/xorg-xserver/files/crosscompile.patch
> similarity index 100%
> rename from meta-emenlow/recipes/xorg-xserver/files/crosscompile.patch
> rename to meta-emenlow/recipes-graphics/xorg-xserver/files/crosscompile.p=
atch
> diff --git a/meta-emenlow/recipes/xorg-xserver/files/fix_open_max_preproc=
essor_error.patch b/meta-emenlow/recipes-graphics/xorg-xserver/files/fix_op=
en_max_preprocessor_error.patch
> similarity index 100%
> rename from meta-emenlow/recipes/xorg-xserver/files/fix_open_max_preproce=
ssor_error.patch
> rename to meta-emenlow/recipes-graphics/xorg-xserver/files/fix_open_max_p=
reprocessor_error.patch
> diff --git a/meta-emenlow/recipes/xorg-xserver/files/libdrm-poulsbo.patch=
 b/meta-emenlow/recipes-graphics/xorg-xserver/files/libdrm-poulsbo.patch
> similarity index 100%
> rename from meta-emenlow/recipes/xorg-xserver/files/libdrm-poulsbo.patch
> rename to meta-emenlow/recipes-graphics/xorg-xserver/files/libdrm-poulsbo=
.patch
> diff --git a/meta-emenlow/recipes/xorg-xserver/files/macro_tweak.patch b/=
meta-emenlow/recipes-graphics/xorg-xserver/files/macro_tweak.patch
> similarity index 100%
> rename from meta-emenlow/recipes/xorg-xserver/files/macro_tweak.patch
> rename to meta-emenlow/recipes-graphics/xorg-xserver/files/macro_tweak.pa=
tch
> diff --git a/meta-emenlow/recipes/xorg-xserver/files/nodolt.patch b/meta-=
emenlow/recipes-graphics/xorg-xserver/files/nodolt.patch
> similarity index 100%
> rename from meta-emenlow/recipes/xorg-xserver/files/nodolt.patch
> rename to meta-emenlow/recipes-graphics/xorg-xserver/files/nodolt.patch
> diff --git a/meta-emenlow/recipes/xorg-xserver/xserver-psb_1.7.99.2.bb b/=
meta-emenlow/recipes-graphics/xorg-xserver/xserver-psb_1.7.99.2.bb
> similarity index 100%
> rename from meta-emenlow/recipes/xorg-xserver/xserver-psb_1.7.99.2.bb
> rename to meta-emenlow/recipes-graphics/xorg-xserver/xserver-psb_1.7.99.2=
.bb
> diff --git a/meta-emenlow/recipes/xorg-xserver/xserver-xf86-config/emenlo=
w/xorg.conf b/meta-emenlow/recipes-graphics/xorg-xserver/xserver-xf86-confi=
g/emenlow/xorg.conf
> similarity index 100%
> rename from meta-emenlow/recipes/xorg-xserver/xserver-xf86-config/emenlow=
/xorg.conf
> rename to meta-emenlow/recipes-graphics/xorg-xserver/xserver-xf86-config/=
emenlow/xorg.conf
> diff --git a/meta-emenlow/recipes/xorg-xserver/xserver-xf86-config_0.1.bb=
append b/meta-emenlow/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1=
.bbappend
> similarity index 100%
> rename from meta-emenlow/recipes/xorg-xserver/xserver-xf86-config_0.1.bba=
ppend
> rename to meta-emenlow/recipes-graphics/xorg-xserver/xserver-xf86-config_=
0.1.bbappend
> diff --git a/meta-emenlow/recipes/xpsb-glx/xpsb-glx-0.18/cross-compile.pa=
tch b/meta-emenlow/recipes-graphics/xpsb-glx/xpsb-glx-0.18/cross-compile.pa=
tch
> similarity index 100%
> rename from meta-emenlow/recipes/xpsb-glx/xpsb-glx-0.18/cross-compile.pat=
ch
> rename to meta-emenlow/recipes-graphics/xpsb-glx/xpsb-glx-0.18/cross-comp=
ile.patch
> diff --git a/meta-emenlow/recipes/xpsb-glx/xpsb-glx-0.18/libdrmname.patch=
 b/meta-emenlow/recipes-graphics/xpsb-glx/xpsb-glx-0.18/libdrmname.patch
> similarity index 100%
> rename from meta-emenlow/recipes/xpsb-glx/xpsb-glx-0.18/libdrmname.patch
> rename to meta-emenlow/recipes-graphics/xpsb-glx/xpsb-glx-0.18/libdrmname=
.patch
> diff --git a/meta-emenlow/recipes/xpsb-glx/xpsb-glx-0.18/native-matypes.p=
atch b/meta-emenlow/recipes-graphics/xpsb-glx/xpsb-glx-0.18/native-matypes.=
patch
> similarity index 100%
> rename from meta-emenlow/recipes/xpsb-glx/xpsb-glx-0.18/native-matypes.pa=
tch
> rename to meta-emenlow/recipes-graphics/xpsb-glx/xpsb-glx-0.18/native-mat=
ypes.patch
> diff --git a/meta-emenlow/recipes/xpsb-glx/xpsb-glx_0.18.bb b/meta-emenlo=
w/recipes-graphics/xpsb-glx/xpsb-glx_0.18.bb
> similarity index 100%
> rename from meta-emenlow/recipes/xpsb-glx/xpsb-glx_0.18.bb
> rename to meta-emenlow/recipes-graphics/xpsb-glx/xpsb-glx_0.18.bb
> diff --git a/meta-emenlow/recipes/xserver-xorg-video-psb/xserver-xorg-vid=
eo-psb-0.32.1/01_disable_lid_timer.patch b/meta-emenlow/recipes-graphics/xs=
erver-xorg-video-psb/xserver-xorg-video-psb-0.32.1/01_disable_lid_timer.pat=
ch
> similarity index 100%
> rename from meta-emenlow/recipes/xserver-xorg-video-psb/xserver-xorg-vide=
o-psb-0.32.1/01_disable_lid_timer.patch
> rename to meta-emenlow/recipes-graphics/xserver-xorg-video-psb/xserver-xo=
rg-video-psb-0.32.1/01_disable_lid_timer.patch
> diff --git a/meta-emenlow/recipes/xserver-xorg-video-psb/xserver-xorg-vid=
eo-psb-0.32.1/dri-h.patch b/meta-emenlow/recipes-graphics/xserver-xorg-vide=
o-psb/xserver-xorg-video-psb-0.32.1/dri-h.patch
> similarity index 100%
> rename from meta-emenlow/recipes/xserver-xorg-video-psb/xserver-xorg-vide=
o-psb-0.32.1/dri-h.patch
> rename to meta-emenlow/recipes-graphics/xserver-xorg-video-psb/xserver-xo=
rg-video-psb-0.32.1/dri-h.patch
> diff --git a/meta-emenlow/recipes/xserver-xorg-video-psb/xserver-xorg-vid=
eo-psb-0.32.1/libdrm-poulsbo.patch b/meta-emenlow/recipes-graphics/xserver-=
xorg-video-psb/xserver-xorg-video-psb-0.32.1/libdrm-poulsbo.patch
> similarity index 100%
> rename from meta-emenlow/recipes/xserver-xorg-video-psb/xserver-xorg-vide=
o-psb-0.32.1/libdrm-poulsbo.patch
> rename to meta-emenlow/recipes-graphics/xserver-xorg-video-psb/xserver-xo=
rg-video-psb-0.32.1/libdrm-poulsbo.patch
> diff --git a/meta-emenlow/recipes/xserver-xorg-video-psb/xserver-xorg-vid=
eo-psb-0.32.1/psb_mixed.patch b/meta-emenlow/recipes-graphics/xserver-xorg-=
video-psb/xserver-xorg-video-psb-0.32.1/psb_mixed.patch
> similarity index 100%
> rename from meta-emenlow/recipes/xserver-xorg-video-psb/xserver-xorg-vide=
o-psb-0.32.1/psb_mixed.patch
> rename to meta-emenlow/recipes-graphics/xserver-xorg-video-psb/xserver-xo=
rg-video-psb-0.32.1/psb_mixed.patch
> diff --git a/meta-emenlow/recipes/xserver-xorg-video-psb/xserver-xorg-vid=
eo-psb-0.32.1/psb_xvtempfix.patch b/meta-emenlow/recipes-graphics/xserver-x=
org-video-psb/xserver-xorg-video-psb-0.32.1/psb_xvtempfix.patch
> similarity index 100%
> rename from meta-emenlow/recipes/xserver-xorg-video-psb/xserver-xorg-vide=
o-psb-0.32.1/psb_xvtempfix.patch
> rename to meta-emenlow/recipes-graphics/xserver-xorg-video-psb/xserver-xo=
rg-video-psb-0.32.1/psb_xvtempfix.patch
> diff --git a/meta-emenlow/recipes/xserver-xorg-video-psb/xserver-xorg-vid=
eo-psb-0.32.1/stubs.patch b/meta-emenlow/recipes-graphics/xserver-xorg-vide=
o-psb/xserver-xorg-video-psb-0.32.1/stubs.patch
> similarity index 100%
> rename from meta-emenlow/recipes/xserver-xorg-video-psb/xserver-xorg-vide=
o-psb-0.32.1/stubs.patch
> rename to meta-emenlow/recipes-graphics/xserver-xorg-video-psb/xserver-xo=
rg-video-psb-0.32.1/stubs.patch
> diff --git a/meta-emenlow/recipes/xserver-xorg-video-psb/xserver-xorg-vid=
eo-psb-0.32.1/visibility.patch b/meta-emenlow/recipes-graphics/xserver-xorg=
-video-psb/xserver-xorg-video-psb-0.32.1/visibility.patch
> similarity index 100%
> rename from meta-emenlow/recipes/xserver-xorg-video-psb/xserver-xorg-vide=
o-psb-0.32.1/visibility.patch
> rename to meta-emenlow/recipes-graphics/xserver-xorg-video-psb/xserver-xo=
rg-video-psb-0.32.1/visibility.patch
> diff --git a/meta-emenlow/recipes/xserver-xorg-video-psb/xserver-xorg-vid=
eo-psb-0.32.1/xorg-x11-drv-psb-0.31.0-ignoreacpi.patch b/meta-emenlow/recip=
es-graphics/xserver-xorg-video-psb/xserver-xorg-video-psb-0.32.1/xorg-x11-d=
rv-psb-0.31.0-ignoreacpi.patch
> similarity index 100%
> rename from meta-emenlow/recipes/xserver-xorg-video-psb/xserver-xorg-vide=
o-psb-0.32.1/xorg-x11-drv-psb-0.31.0-ignoreacpi.patch
> rename to meta-emenlow/recipes-graphics/xserver-xorg-video-psb/xserver-xo=
rg-video-psb-0.32.1/xorg-x11-drv-psb-0.31.0-ignoreacpi.patch
> diff --git a/meta-emenlow/recipes/xserver-xorg-video-psb/xserver-xorg-vid=
eo-psb-0.32.1/xorg-x11-drv-psb-0.31.0-xserver17.patch b/meta-emenlow/recipe=
s-graphics/xserver-xorg-video-psb/xserver-xorg-video-psb-0.32.1/xorg-x11-dr=
v-psb-0.31.0-xserver17.patch
> similarity index 100%
> rename from meta-emenlow/recipes/xserver-xorg-video-psb/xserver-xorg-vide=
o-psb-0.32.1/xorg-x11-drv-psb-0.31.0-xserver17.patch
> rename to meta-emenlow/recipes-graphics/xserver-xorg-video-psb/xserver-xo=
rg-video-psb-0.32.1/xorg-x11-drv-psb-0.31.0-xserver17.patch
> diff --git a/meta-emenlow/recipes/xserver-xorg-video-psb/xserver-xorg-vid=
eo-psb-0.32.1/xserver-xorg-video-psb-0.31.0-assert.patch b/meta-emenlow/rec=
ipes-graphics/xserver-xorg-video-psb/xserver-xorg-video-psb-0.32.1/xserver-=
xorg-video-psb-0.31.0-assert.patch
> similarity index 100%
> rename from meta-emenlow/recipes/xserver-xorg-video-psb/xserver-xorg-vide=
o-psb-0.32.1/xserver-xorg-video-psb-0.31.0-assert.patch
> rename to meta-emenlow/recipes-graphics/xserver-xorg-video-psb/xserver-xo=
rg-video-psb-0.32.1/xserver-xorg-video-psb-0.31.0-assert.patch
> diff --git a/meta-emenlow/recipes/xserver-xorg-video-psb/xserver-xorg-vid=
eo-psb-0.32.1/xserver-xorg-video-psb-0.31.0-comment_unused.patch b/meta-eme=
nlow/recipes-graphics/xserver-xorg-video-psb/xserver-xorg-video-psb-0.32.1/=
xserver-xorg-video-psb-0.31.0-comment_unused.patch
> similarity index 100%
> rename from meta-emenlow/recipes/xserver-xorg-video-psb/xserver-xorg-vide=
o-psb-0.32.1/xserver-xorg-video-psb-0.31.0-comment_unused.patch
> rename to meta-emenlow/recipes-graphics/xserver-xorg-video-psb/xserver-xo=
rg-video-psb-0.32.1/xserver-xorg-video-psb-0.31.0-comment_unused.patch
> diff --git a/meta-emenlow/recipes/xserver-xorg-video-psb/xserver-xorg-vid=
eo-psb-0.32.1/xserver-xorg-video-psb-0.31.0-greedy.patch b/meta-emenlow/rec=
ipes-graphics/xserver-xorg-video-psb/xserver-xorg-video-psb-0.32.1/xserver-=
xorg-video-psb-0.31.0-greedy.patch
> similarity index 100%
> rename from meta-emenlow/recipes/xserver-xorg-video-psb/xserver-xorg-vide=
o-psb-0.32.1/xserver-xorg-video-psb-0.31.0-greedy.patch
> rename to meta-emenlow/recipes-graphics/xserver-xorg-video-psb/xserver-xo=
rg-video-psb-0.32.1/xserver-xorg-video-psb-0.31.0-greedy.patch
> diff --git a/meta-emenlow/recipes/xserver-xorg-video-psb/xserver-xorg-vid=
eo-psb-0.32.1/xserver-xorg-video-psb-0.31.0-loader.patch b/meta-emenlow/rec=
ipes-graphics/xserver-xorg-video-psb/xserver-xorg-video-psb-0.32.1/xserver-=
xorg-video-psb-0.31.0-loader.patch
> similarity index 100%
> rename from meta-emenlow/recipes/xserver-xorg-video-psb/xserver-xorg-vide=
o-psb-0.32.1/xserver-xorg-video-psb-0.31.0-loader.patch
> rename to meta-emenlow/recipes-graphics/xserver-xorg-video-psb/xserver-xo=
rg-video-psb-0.32.1/xserver-xorg-video-psb-0.31.0-loader.patch
> diff --git a/meta-emenlow/recipes/xserver-xorg-video-psb/xserver-xorg-vid=
eo-psb_0.32.1.bb b/meta-emenlow/recipes-graphics/xserver-xorg-video-psb/xse=
rver-xorg-video-psb_0.32.1.bb
> similarity index 100%
> rename from meta-emenlow/recipes/xserver-xorg-video-psb/xserver-xorg-vide=
o-psb_0.32.1.bb
> rename to meta-emenlow/recipes-graphics/xserver-xorg-video-psb/xserver-xo=
rg-video-psb_0.32.1.bb
> diff --git a/meta-emenlow/recipes/linux/linux-2.6.33.2/defconfig b/meta-e=
menlow/recipes-kernel/linux/linux-2.6.33.2/defconfig
> similarity index 100%
> rename from meta-emenlow/recipes/linux/linux-2.6.33.2/defconfig
> rename to meta-emenlow/recipes-kernel/linux/linux-2.6.33.2/defconfig
> diff --git a/meta-emenlow/recipes/linux/linux-yocto-stable_git.bbappend b=
/meta-emenlow/recipes-kernel/linux/linux-yocto-stable_git.bbappend
> similarity index 100%
> rename from meta-emenlow/recipes/linux/linux-yocto-stable_git.bbappend
> rename to meta-emenlow/recipes-kernel/linux/linux-yocto-stable_git.bbappe=
nd
> diff --git a/meta-emenlow/recipes/linux/linux_2.6.33.2.bbappend b/meta-em=
enlow/recipes-kernel/linux/linux_2.6.33.2.bbappend
> similarity index 100%
> rename from meta-emenlow/recipes/linux/linux_2.6.33.2.bbappend
> rename to meta-emenlow/recipes-kernel/linux/linux_2.6.33.2.bbappend
> diff --git a/meta/conf/distro/include/poky-default-revisions.inc b/meta/c=
onf/distro/include/poky-default-revisions.inc
> index beffe9a..edc0178 100644
> --- a/meta/conf/distro/include/poky-default-revisions.inc
> +++ b/meta/conf/distro/include/poky-default-revisions.inc
> @@ -89,7 +89,6 @@ SRCREV_machine_pn-linux-yocto-stable_qemumips ?=3D "81f=
3cd467b9d51fa1dfa2d5939337c
> =A0SRCREV_machine_pn-linux-yocto-stable_qemuppc ?=3D "9ac0daee43dd19d8bea=
828cf79450c9748ae0daa"
> =A0SRCREV_machine_pn-linux-yocto-stable_qemux86 ?=3D "0431115c9d720fee5bb=
105f6a7411efb4f851d26"
> =A0SRCREV_machine_pn-linux-yocto-stable_qemux86-64 ?=3D "0431115c9d720fee=
5bb105f6a7411efb4f851d26"
> -SRCREV_machine_pn-linux-yocto-stable_emenlow ?=3D "aae69fdf104b0a9d7b371=
0f808aac6ab303490f7"
> =A0SRCREV_machine_pn-linux-yocto-stable_atom-pc ?=3D "0431115c9d720fee5bb=
105f6a7411efb4f851d26"
> =A0SRCREV_machine_pn-linux-yocto-stable_routerstationpro ?=3D "2ec2edaf25=
6dd8500ee3d4763fee6ca3ecd6da4b"
> =A0SRCREV_machine_pn-linux-yocto-stable_mpc8315e-rdb ?=3D "986e6eb66c2600=
7cee7916d5d12f4756e6b5436f"
> --
> 1.7.1.1
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

