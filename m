Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com [209.85.222.173])
 by mx.groups.io with SMTP id smtpd.web11.10657.1634654891554748824
 for <poky@lists.yoctoproject.org>;
 Tue, 19 Oct 2021 07:48:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kudzu-us.20210112.gappssmtp.com header.s=20210112 header.b=kWphBLUB;
 spf=none, err=permanent DNS error (domain: kudzu.us, ip: 209.85.222.173, mailfrom: jdmason@kudzu.us)
Received: by mail-qk1-f173.google.com with SMTP id x123so155573qke.7
        for <poky@lists.yoctoproject.org>; Tue, 19 Oct 2021 07:48:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kudzu-us.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=1aPptGlZ1ihC9XKunoar3WCTXsQNSFzKCyQRzfzWusE=;
        b=kWphBLUBwB6upelgW2sJxF2qQM1WQsp5JzQa9fieA5ROkld2UJDkIx9kmVTiN2L4Z7
         G291c2F7rzKtX1SlteOR/qHfTX+tn90xLkSUq8xaHX72g/bfisEROcG9sMnNZuPKS3np
         +Adlrsi2OdZFupdsC33RYngQfk+UaTZmVkbWKMMwH/mz5lWcwRDfUN1Mn+1MfxTcovDk
         R6DocGbvItHQ4AX+dekTbu/GV8/9f0aTUmdBbGuOsr0bdSOsd+cnI6X/THQCLpPTBI+3
         gV+QyBbaUPXAPZIVfs/q9Mp26xpNNNIYxepvGow/ZMmZ3KVW/7DBnu4hDfvba/d6hcws
         TE+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=1aPptGlZ1ihC9XKunoar3WCTXsQNSFzKCyQRzfzWusE=;
        b=7FGHxIInZ7tk+RoES9mrwCHqvCsg/KxhiBiuhDfleilPQWh4GQQHcoTwMvV67if2in
         g5rQoSrQZWSaRwIFTlooG+p35ZxrOM0BCaJirsRJzLfkxhB8o4XpeisihGAlL8iompcQ
         1lCDH/tGyzDe1rQv0LL9v35JeRwjG/6HxfxraI9rAnRUwO9oqAr91/Dmf+GwkNr81RYS
         My+mxQdStvK88wTkXUaO80eu+kvYVSRXOF8Zxu1LNG/4GUuZLcOP1M+NGX1OtFPEoHG0
         uXJ2n27FHE2wrgXVdCHfygafYQW49tZA708KnTk72s15bP4NkLCjuYt+L8MThg/oyGTY
         T30w==
X-Gm-Message-State: AOAM530lAYnUeIrFzEi1NZrnN0cXNe3DzNzBr06k6HhS+KiptlDjPjcO
	MZ0YC2a9odR1g2YZJWZBLomq4Kb6SzsnjgfF1YLOzQ==
X-Google-Smtp-Source: ABdhPJz+uX+4tCrRVkUpzBt5FqZHewF7RZdhEHcYdAdmELggL6HPcDYda03MVmqPqyUXycdblOGMIXy2ccMOGNToyvY=
X-Received: by 2002:a37:583:: with SMTP id 125mr323659qkf.336.1634654890637;
 Tue, 19 Oct 2021 07:48:10 -0700 (PDT)
MIME-Version: 1.0
References: <20211014143124.13941-1-jdmason@kudzu.us> <20211014173453.GG7964@bill-the-cat>
 <afd1d12e1986d9f8a1636cfa8a698b4e6330229d.camel@linuxfoundation.org> <20211014225157.GJ7964@bill-the-cat>
In-Reply-To: <20211014225157.GJ7964@bill-the-cat>
From: "Jon Mason" <jdmason@kudzu.us>
Date: Tue, 19 Oct 2021 10:47:59 -0400
Message-ID: <CAPoiz9xOZ8JxgcYabROrhKcGe28Ltrqz1SGD6+-0+_oS5hpkOg@mail.gmail.com>
Subject: Re: [poky] [PATCH 1/2] beaglebone-yocto: use correct CPU and QB_RNG
To: Tom Rini <trini@konsulko.com>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>, poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On Thu, Oct 14, 2021 at 6:51 PM Tom Rini <trini@konsulko.com> wrote:
>
> On Thu, Oct 14, 2021 at 11:45:14PM +0100, Richard Purdie wrote:
> > On Thu, 2021-10-14 at 13:34 -0400, Tom Rini wrote:
> > > On Thu, Oct 14, 2021 at 10:31:23AM -0400, Jon Mason wrote:
> > >
> > > > The beagles use the AM3358 SoC, which is an Arm Cortex-A8.  Use that for
> > > > QB_CPU.  Also, use QB_RNG to specify the random number generator device.
> > > > Finally, correct the image deps to get qemu to run.
> > > >
> > > > Signed-off-by: Jon Mason <jdmason@kudzu.us>
> > > > ---
> > > >  meta-yocto-bsp/conf/machine/beaglebone-yocto.conf | 6 +++---
> > > >  1 file changed, 3 insertions(+), 3 deletions(-)
> > > >
> > > > diff --git a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
> > > > index b3d960a8cd80..06746afa96ae 100644
> > > > --- a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
> > > > +++ b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
> > > > @@ -41,16 +41,16 @@ MACHINE_FEATURES = "usbgadget usbhost vfat alsa"
> > > >  IMAGE_BOOT_FILES ?= "u-boot.${UBOOT_SUFFIX} ${SPL_BINARY} ${KERNEL_IMAGETYPE} ${KERNEL_DEVICETREE}"
> > > >
> > > >  # support runqemu
> > > > -EXTRA_IMAGEDEPENDS += "qemu-native qemu-helper-native"
> > > > +EXTRA_IMAGEDEPENDS += "qemu-system-native qemu-helper-native:do_addto_recipe_sysroot"
> > > >  IMAGE_CLASSES += "qemuboot"
> > > >  QB_DEFAULT_FSTYPE = "wic"
> > > >  QB_FSINFO = "wic:no-kernel-in-fs"
> > > >  QB_KERNEL_ROOT = "/dev/vda2"
> > > >  QB_SYSTEM_NAME = "qemu-system-arm"
> > > >  QB_MACHINE = "-machine virt"
> > > > -QB_CPU = "-cpu cortex-a15"
> > > > +QB_CPU = "-cpu cortex-a8"
> > > >  QB_KERNEL_CMDLINE_APPEND = "console=ttyAMA0 systemd.mask=systemd-networkd"
> > > > -QB_OPT_APPEND = "-device virtio-rng-device"
> > > > +QB_RNG = "-device virtio-rng-device"
> > > >  QB_TAP_OPT = "-netdev tap,id=net0,ifname=@TAP@,script=no,downscript=no"
> > > >  QB_NETWORK_DEVICE = "-device virtio-net-device,netdev=net0,mac=@MAC@"
> > > >  QB_ROOTFS_OPT = "-drive id=disk0,file=@ROOTFS@,if=none,format=raw -device virtio-blk-device,drive=disk0"
> > >
> > > Perhaps this is the wrong place to open this can of worms, so to speak,
> > > but why is the beaglebone BSP also supporting QEMU, under the "virt"
> > > machine that would be for qemuarm ?  It would be I think one thing to
> > > make use of
> > > https://qemu.readthedocs.io/en/latest/system/arm/sabrelite.html on the
> > > appropriate machine.conf file and support running it that way as well.
> > > But this isn't emulating the BSP hardware, it's just passing the
> > > resulting rootfs image to qemu-system-arm.  If that's a general goal
> > > now, shouldn't it be pushed up higher in the include files?
> >
> > I think the general idea has been that if there is qemu emulation, it really
> > should be actually emulating the hardware else it is different machine.
>
> Well, what's any of the above doing in "beaglebone-yocto" ?  If it's not
> under: https://qemu.readthedocs.io/en/latest/system/target-arm.html then
> QEMU doesn't support emulating the hardware, and it belongs under
> qemu*conf.  I've not poked meta-yocto-bsp to see if other platforms are
> doing this.
>
> > That said, I recognise that sometimes having a quick handy hack like this to
> > test things is useful so I'm a little torn. I'm not sure we'd want to make it
> > any more official or pushed into the tunes.
>
> Documenting how to adjust qemuX so that it would otherwise match the
> tune of your board, so that you can do some limited sanity testing,
> would be useful, yes.  What's going on here is something I find quite
> puzzling.

What I'm taking from this is that because it's not actually emulating
the hardware, it's not any more useful than the qemu machines in
oe-core.  If that is the case, should we simply remove all of the QB_*
entries?  If we do still want to use these, does it make sense to not
have the QB_* entries and simply reference the qemu machines in
meta/conf/machines for the architecture, as that would prevent these
from becoming stale?  I ask this because edgerouter doesn't have QB_*
entries and it's the only one here.

Also, does it make sense to have a unique layer (or perhaps part of
oe-core) where all of the Linux capable machines have a conf file and
are testable via runqemu/testimage?

Thanks,
Jon

>
> --
> Tom
