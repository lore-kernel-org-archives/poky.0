Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 813DBC48BC3
	for <webhook@archiver.kernel.org>; Wed, 21 Feb 2024 13:37:57 +0000 (UTC)
Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com [209.85.215.182])
 by mx.groups.io with SMTP id smtpd.web11.12921.1708522675563373763
 for <poky@lists.yoctoproject.org>;
 Wed, 21 Feb 2024 05:37:55 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=UOzs8J3r;
 spf=pass (domain: gmail.com, ip: 209.85.215.182, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-pg1-f182.google.com with SMTP id 41be03b00d2f7-5dca1efad59so6116193a12.2
        for <poky@lists.yoctoproject.org>; Wed, 21 Feb 2024 05:37:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708522675; x=1709127475; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9d2SVjnSULIzkfMcnR/UV0KrRZE86t6d4lQuBwhlwYI=;
        b=UOzs8J3rlo4XPaBSSuFeHm2VLjsHnUP2cpLzPTOfD4v/EeRIIs6c05wBcgSP/L+ej6
         bWGMKoeo+f0gLn7fZkUpjG7Qlu2Aq/g0eU9fguTMAvQCUs59XcFbsIMlEJDZ6z0CTNZ9
         FCXfrE1ivnN6Ej9/R5dvJbz3XfAdG3ZHy9xNuIw5MQDZR2OunmdV9wDWWGMCz4DszzOC
         80fAwALgoL1zRtUSW0pVR2R8x00M5rJAEmBB3Ircb3mP5x/ZhnBQYh9D2dj4brHDbYjL
         RPitP59HYjO8FjO0H3CCAsuMbqZSjzWIPuI3DwyFebXedxkHuNP1WSJIHBGc3Yv2Ct3K
         FKoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708522675; x=1709127475;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9d2SVjnSULIzkfMcnR/UV0KrRZE86t6d4lQuBwhlwYI=;
        b=B1ySwSvCjMKqiDgu6koX2sjUUEXxwi1bdXJ3EpdBxyJyxyGdRjerTGa8u7zLNShndw
         SSGjs/5nftXy7jYhD3NRWottPhahzvUTJsxN0WK1I+EZdZZgU8Swm7D/p8dw+ChieYcm
         zwXfEYwYyAJWdd+hTGiSbPS8927qtcA6vzWLHdp5yYYGnltHHBFNqopvKPjFMyECu8K2
         rWufvZxH59yqWpPMhcTOeTkMz44nkSoVhqd8YCNufKp92yuRLydLRwCW95Y/OnLyNq+i
         GW/aCa7hZrS9icc0YT7wIUgkKgdJWql9dF2NLTlTGhSz9x3WaprSD/r3ET1SdLwZucbk
         NJ/A==
X-Forwarded-Encrypted: i=1; AJvYcCVv829rAvUqOZXZmUboYBxe3LbvLMQ8SIIC05MiaVAElyib9Sv9SH4YZYC/lgC9WVAn7d8zhwSmmn+IVKWiBUkhwEBMcGRveLPLfNw=
X-Gm-Message-State: AOJu0YzOFvo4j4ZhNnaUSxiME5mVpPhVlxnzlKIfzeWkIYlLZ2BO+EQA
	fVSWuEL1WJk3pZT4x46cJxpNQiByRx8zelJX7ISSRq1QBxROtlXNtLsvEIkrDCC/9yF4FYKubp3
	YxbYskq0CGLIZI07T9kaBMsvynTY=
X-Google-Smtp-Source: AGHT+IE88JGfohOpFAXGY/OhQgdJHnOQ3EFI62p4M1TBMlRnmijd5KFFNYFaLTpWVLKWlMOTyiPRu/DOJPpbKXOBJDw=
X-Received: by 2002:a17:90b:3a90:b0:299:544c:4940 with SMTP id
 om16-20020a17090b3a9000b00299544c4940mr8919972pjb.29.1708522674803; Wed, 21
 Feb 2024 05:37:54 -0800 (PST)
MIME-Version: 1.0
References: <20240221105723.1501833-1-ross.burton@arm.com> <17B5E41BBD3629FA.11907@lists.openembedded.org>
In-Reply-To: <17B5E41BBD3629FA.11907@lists.openembedded.org>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Wed, 21 Feb 2024 08:37:43 -0500
Message-ID: <CADkTA4PkLGBzL82d8cuO0d0+vP5jm2W2ZAZn=aZDfz4weJOzYQ@mail.gmail.com>
Subject: Re: [OE-core] [Openembedded-architecture] [RFC PATCH] Add
 genericarm64 MACHINE using upstream defconfig
To: bruce.ashfield@gmail.com
Cc: Ross Burton <ross.burton@arm.com>, poky@lists.yoctoproject.org, 
	openembedded-core@lists.openembedded.org, 
	openembedded-architecture@lists.openembedded.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 21 Feb 2024 13:37:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13263

I should add that if just doing this for qemu is acceptable, I can take
over the task of creating the configuration fragments with what remains
for the week.

Are the MACHINE configs and everything else I need already in OE-core
or available somewhere that I can find ?

Bruce

On Wed, Feb 21, 2024 at 8:34=E2=80=AFAM Bruce Ashfield via
lists.openembedded.org
<bruce.ashfield=3Dgmail.com@lists.openembedded.org> wrote:
>
> I'm quite simply a hard NACK on this.
>
> Everyone can feel free to overrule me here, but I won't be able to
> maintain this along with the other board that I test each -dev,
> variant and -stable bump with.
>
> There are tools, etc, that while gathering dust can help chop up a
> config, and that's where we can spend the time, along with making sure
> the fragments make sense and are usable.
>
> We all agreed to hold the reference boards to a higher standard, and
> now I see this. So as tired and frustrated as you say you are,
> multiply that by two with me.
>
> Cheers,
>
> Bruce
>
>
> On Wed, Feb 21, 2024 at 5:57=E2=80=AFAM Ross Burton <ross.burton@arm.com>=
 wrote:
> >
> > From: Ross Burton <ross.burton@arm.com>
> >
> > This is a new 64-bit "generic" Arm machine, that expects the hardware t=
o
> > be SystemReady IR compatible. This is slightly forward-leaning as there=
's
> > not a _lot_ of SystemReady hardware in the wild, but most modern boards
> > are and the number will only grow.  Also, this is the only way to have =
a
> > 'generic' machine as without standardised bootloaders and firmware it
> > would be impossible.
> >
> > The base machine configuration isn't that exciting: it's a fully featur=
ed
> > machine that supports most things, booting via UEFI and an initramfs.
> >
> > However, the kernel is more interesting.  This RFC uses the upstream de=
fconfig
> > because unlike some other platforms, the arm64 defconfig is actively
> > maintained with the goal of being a 'boots on most hardware' configurat=
ion.
> > My argument is: why would we duplicate that effort?
> >
> > The "linux-yocto way" is configuration fragments and after a week of
> > hair-pulling I do actually have fragments that boot on a BeaglePlay, bu=
t
> > to say this was a tiresome and frustrating exercise would be understati=
ng it.
> >
> > So, a request for comments: is it acceptable to use the upstream defcon=
fig in
> > a reference BSP?  Personally I'm torn: the Yocto way is fragments not m=
onolithic
> > configs, but repeating the effort to fragmentise the configuration and =
then
> > also have it sufficiently modular that it can be used in pieces - inste=
ad of
> > just being a large file split up into smaller files - is a lot of effor=
t for
> > what might end up being minimal gain.  My fear is we end up with a frag=
mented
> > configuration that can't be easily modified without breaking some platf=
orms,
> > and badly copies what the defconfig already does.
> >
> > Ross
> > ---
> >  meta-yocto-bsp/README.hardware.md             |  7 +++++
> >  meta-yocto-bsp/conf/machine/genericarm64.conf | 26 +++++++++++++++++++
> >  .../linux/linux-yocto_6.6.bbappend            |  9 +++++++
> >  meta-yocto-bsp/wic/genericarm64.wks.in        | 11 ++++++++
> >  4 files changed, 53 insertions(+)
> >  create mode 100644 meta-yocto-bsp/conf/machine/genericarm64.conf
> >  create mode 100644 meta-yocto-bsp/wic/genericarm64.wks.in
> >
> > diff --git a/meta-yocto-bsp/README.hardware.md b/meta-yocto-bsp/README.=
hardware.md
> > index a8f38cb21a6..58ebc328b56 100644
> > --- a/meta-yocto-bsp/README.hardware.md
> > +++ b/meta-yocto-bsp/README.hardware.md
> > @@ -29,6 +29,7 @@ The following boards are supported by the meta-yocto-=
bsp layer:
> >
> >    * Texas Instruments Beaglebone (beaglebone-yocto)
> >    * General IA platforms (genericx86 and genericx86-64)
> > +  * General 64-bit Arm SystemReady platforms (genericarm64)
> >
> >  For more information see the board's section below. The appropriate MA=
CHINE
> >  variable value corresponding to the board is given in brackets.
> > @@ -126,6 +127,12 @@ USB Device:
> >         dd command to write the image to a USB stick.
> >
> >
> > +SystemReady Arm Platforms
> > +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D
> > +
> > +TODO
> > +
> > +
> >  Texas Instruments Beaglebone (beaglebone-yocto)
> >  =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> >
> > diff --git a/meta-yocto-bsp/conf/machine/genericarm64.conf b/meta-yocto=
-bsp/conf/machine/genericarm64.conf
> > new file mode 100644
> > index 00000000000..2ea270d8b06
> > --- /dev/null
> > +++ b/meta-yocto-bsp/conf/machine/genericarm64.conf
> > @@ -0,0 +1,26 @@
> > +#@TYPE: Machine
> > +#@NAME: genericarm64
> > +#@DESCRIPTION: Generic Arm64 machine for typical SystemReady platforms=
, which
> > +#have working firmware and boot via EFI.
> > +
> > +require conf/machine/include/arm/arch-armv8a.inc
> > +
> > +# Arm Base System Architecture says v8.0+ is allowed, but FEAT_CRC32 i=
s required
> > +DEFAULTTUNE =3D "armv8a-crc"
> > +
> > +MACHINE_FEATURES =3D "acpi alsa bluetooth efi keyboard pci qemu-usermo=
de rtc screen usbhost vfat wifi"
> > +
> > +# Install all the kernel modules and all the firmware
> > +MACHINE_EXTRA_RRECOMMENDS +=3D "kernel-modules linux-firmware"
> > +
> > +KERNEL_IMAGETYPE =3D "Image"
> > +PREFERRED_PROVIDER_virtual/kernel ?=3D "linux-yocto"
> > +INITRAMFS_IMAGE ?=3D "core-image-initramfs-boot"
> > +
> > +IMAGE_FSTYPES ?=3D "wic"
> > +WKS_FILE ?=3D "genericarm64.wks.in"
> > +
> > +EFI_PROVIDER ?=3D "${@bb.utils.contains("DISTRO_FEATURES", "systemd", =
"systemd-boot", "grub-efi", d)}"
> > +
> > +# Try to bring up one physical serial console, or a virtualized serial=
 console
> > +SERIAL_CONSOLES ?=3D "115200;ttyAMA0 115200;hvc0"
> > diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.6.bbappe=
nd b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.6.bbappend
> > index 8e465c241e8..18f95de348f 100644
> > --- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.6.bbappend
> > +++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.6.bbappend
> > @@ -1,19 +1,28 @@
> >  KBRANCH:genericx86  =3D "v6.6/standard/base"
> > +KBRANCH:genericarm64  =3D "v6.6/standard/base"
> >  KBRANCH:genericx86-64  =3D "v6.6/standard/base"
> >  KBRANCH:beaglebone-yocto =3D "v6.6/standard/beaglebone"
> >
> > +KMACHINE:genericarm64 ?=3D "genericarm64"
> >  KMACHINE:genericx86 ?=3D "common-pc"
> >  KMACHINE:genericx86-64 ?=3D "common-pc-64"
> >  KMACHINE:beaglebone-yocto ?=3D "beaglebone"
> >
> > +SRCREV_machine:genericarm64 ?=3D "332d4668fcc32826907d4f3c493884520600=
6089"
> >  SRCREV_machine:genericx86 ?=3D "332d4668fcc32826907d4f3c49388452060060=
89"
> >  SRCREV_machine:genericx86-64 ?=3D "332d4668fcc32826907d4f3c49388452060=
06089"
> >  SRCREV_machine:beaglebone-yocto ?=3D "332d4668fcc32826907d4f3c49388452=
06006089"
> >
> > +COMPATIBLE_MACHINE:genericarm64 =3D "genericarm64"
> >  COMPATIBLE_MACHINE:genericx86 =3D "genericx86"
> >  COMPATIBLE_MACHINE:genericx86-64 =3D "genericx86-64"
> >  COMPATIBLE_MACHINE:beaglebone-yocto =3D "beaglebone-yocto"
> >
> > +LINUX_VERSION:genericarm64 =3D "6.6.15"
> >  LINUX_VERSION:genericx86 =3D "6.6.15"
> >  LINUX_VERSION:genericx86-64 =3D "6.6.15"
> >  LINUX_VERSION:beaglebone-yocto =3D "6.6.15"
> > +
> > +# Use upstream defconfig for genericarm64
> > +KBUILD_DEFCONFIG:genericarm64 =3D "defconfig"
> > +KCONFIG_MODE:genericarm64 =3D "--alldefconfig"
> > diff --git a/meta-yocto-bsp/wic/genericarm64.wks.in b/meta-yocto-bsp/wi=
c/genericarm64.wks.in
> > new file mode 100644
> > index 00000000000..417d4d88104
> > --- /dev/null
> > +++ b/meta-yocto-bsp/wic/genericarm64.wks.in
> > @@ -0,0 +1,11 @@
> > +# short-description: Create an EFI disk image
> > +# long-description: Creates a partitioned EFI disk image that the user
> > +# can directly dd to boot media.
> > +
> > +part /boot --source bootimg-efi --sourceparams=3D"loader=3D${EFI_PROVI=
DER},initrd=3D${INITRAMFS_IMAGE}-${MACHINE}.${INITRAMFS_FSTYPES}" --label b=
oot --active --align 1024 --use-uuid
> > +
> > +part / --source rootfs --fstype=3Dext4 --label root --align 1024 --use=
-uuid
> > +
> > +part swap --size 44 --label swap --fstype=3Dswap --use-uuid
> > +
> > +bootloader --ptable gpt --timeout=3D5 --append=3D"rootwait rootfstype=
=3Dext4"
> > --
> > 2.34.1
> >
> >
> >
> >
>
>
> --
> - Thou shalt not follow the NULL pointer, for chaos and madness await
> thee at its end
> - "Use the force Harry" - Gandalf, Star Trek II
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#195972): https://lists.openembedded.org/g/openembedde=
d-core/message/195972
> Mute This Topic: https://lists.openembedded.org/mt/104488028/1050810
> Group Owner: openembedded-core+owner@lists.openembedded.org
> Unsubscribe: https://lists.openembedded.org/g/openembedded-core/unsub [br=
uce.ashfield@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>


--=20
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II

