Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com [209.85.160.179])
 by mx.groups.io with SMTP id smtpd.web12.10931.1634655287314203016
 for <poky@lists.yoctoproject.org>;
 Tue, 19 Oct 2021 07:54:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=plWn7BN0;
 spf=pass (domain: konsulko.com, ip: 209.85.160.179, mailfrom: trini@konsulko.com)
Received: by mail-qt1-f179.google.com with SMTP id g17so172180qtk.8
        for <poky@lists.yoctoproject.org>; Tue, 19 Oct 2021 07:54:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=TQrofyZWbAYyo/Sb3M8oJpftUYL/occ1az6JpOIf7So=;
        b=plWn7BN0eCCZDwRC3JMnYdD4pirB9yu+w77qwisg0RtCBebH6NSqnrigK+HD/T5oRs
         jFotUD6Yy+QecyRVpBvCAXB91F44ijafoCPpbWYCSuvtV7nIprB9Fho/C2nqVM5EmN0U
         BnLWd7B6nm1M7/JE/qdttJCkSLW7Nzl2wX+pk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=TQrofyZWbAYyo/Sb3M8oJpftUYL/occ1az6JpOIf7So=;
        b=ooisJDEeHKIdhDx0/vb4papzhscxIdRznKRPy6czpdLIRFUnZNgsLY0fpm0457o/G8
         DOlX0KdIInVTPvBKAWXnpAv/gk25JXT+KVwvMJcPPki0qy219xbHgLGgS38rjCyGdU7D
         QKpGIlcs22XVxcW/oob5YbhpZuP87QfMrIC9WWYL+HVKq2U0r22bVt1syQVmUiYFo4UR
         tNGN/YKZvD/YxQT6girPEyLnN204OIssex1OXIXGYZv00j88dFeSh7+MrGSfsPK4zHq7
         tjkmyKukZMBfxg1lJaSqriwq+vrc50XFymKtRE6rsKAlCWINgAD4hOzFnZA8F2tyvH8x
         ru/A==
X-Gm-Message-State: AOAM5317d3K3q3RtDtTf126YDJgpeFss+LFhXVQfj1nuR6xAvoaULrDb
	jAnz8CnbRlJ5s+fHZ1K7dw48NQ==
X-Google-Smtp-Source: ABdhPJyUiDWdc79Kq3raEhPQ/h1vJtYvfvQBFIwv8CbcEpx3XynWVDzth/MA3L033y5phBaLX69ovg==
X-Received: by 2002:ac8:4553:: with SMTP id z19mr415183qtn.187.1634655286360;
        Tue, 19 Oct 2021 07:54:46 -0700 (PDT)
Return-Path: <trini@konsulko.com>
Received: from bill-the-cat (2603-6081-7b01-cbda-b5ac-d4ae-96e7-5d3d.res6.spectrum.com. [2603:6081:7b01:cbda:b5ac:d4ae:96e7:5d3d])
        by smtp.gmail.com with ESMTPSA id ay32sm5330223qkb.66.2021.10.19.07.54.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Oct 2021 07:54:45 -0700 (PDT)
Date: Tue, 19 Oct 2021 10:54:44 -0400
From: "Tom Rini" <trini@konsulko.com>
To: Jon Mason <jdmason@kudzu.us>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>,
	poky@lists.yoctoproject.org
Subject: Re: [poky] [PATCH 1/2] beaglebone-yocto: use correct CPU and QB_RNG
Message-ID: <20211019145444.GG7964@bill-the-cat>
References: <20211014143124.13941-1-jdmason@kudzu.us>
 <20211014173453.GG7964@bill-the-cat>
 <afd1d12e1986d9f8a1636cfa8a698b4e6330229d.camel@linuxfoundation.org>
 <20211014225157.GJ7964@bill-the-cat>
 <CAPoiz9xOZ8JxgcYabROrhKcGe28Ltrqz1SGD6+-0+_oS5hpkOg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAPoiz9xOZ8JxgcYabROrhKcGe28Ltrqz1SGD6+-0+_oS5hpkOg@mail.gmail.com>
X-Clacks-Overhead: GNU Terry Pratchett
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Oct 19, 2021 at 10:47:59AM -0400, Jon Mason wrote:
> On Thu, Oct 14, 2021 at 6:51 PM Tom Rini <trini@konsulko.com> wrote:
> >
> > On Thu, Oct 14, 2021 at 11:45:14PM +0100, Richard Purdie wrote:
> > > On Thu, 2021-10-14 at 13:34 -0400, Tom Rini wrote:
> > > > On Thu, Oct 14, 2021 at 10:31:23AM -0400, Jon Mason wrote:
> > > >
> > > > > The beagles use the AM3358 SoC, which is an Arm Cortex-A8.  Use that for
> > > > > QB_CPU.  Also, use QB_RNG to specify the random number generator device.
> > > > > Finally, correct the image deps to get qemu to run.
> > > > >
> > > > > Signed-off-by: Jon Mason <jdmason@kudzu.us>
> > > > > ---
> > > > >  meta-yocto-bsp/conf/machine/beaglebone-yocto.conf | 6 +++---
> > > > >  1 file changed, 3 insertions(+), 3 deletions(-)
> > > > >
> > > > > diff --git a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
> > > > > index b3d960a8cd80..06746afa96ae 100644
> > > > > --- a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
> > > > > +++ b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
> > > > > @@ -41,16 +41,16 @@ MACHINE_FEATURES = "usbgadget usbhost vfat alsa"
> > > > >  IMAGE_BOOT_FILES ?= "u-boot.${UBOOT_SUFFIX} ${SPL_BINARY} ${KERNEL_IMAGETYPE} ${KERNEL_DEVICETREE}"
> > > > >
> > > > >  # support runqemu
> > > > > -EXTRA_IMAGEDEPENDS += "qemu-native qemu-helper-native"
> > > > > +EXTRA_IMAGEDEPENDS += "qemu-system-native qemu-helper-native:do_addto_recipe_sysroot"
> > > > >  IMAGE_CLASSES += "qemuboot"
> > > > >  QB_DEFAULT_FSTYPE = "wic"
> > > > >  QB_FSINFO = "wic:no-kernel-in-fs"
> > > > >  QB_KERNEL_ROOT = "/dev/vda2"
> > > > >  QB_SYSTEM_NAME = "qemu-system-arm"
> > > > >  QB_MACHINE = "-machine virt"
> > > > > -QB_CPU = "-cpu cortex-a15"
> > > > > +QB_CPU = "-cpu cortex-a8"
> > > > >  QB_KERNEL_CMDLINE_APPEND = "console=ttyAMA0 systemd.mask=systemd-networkd"
> > > > > -QB_OPT_APPEND = "-device virtio-rng-device"
> > > > > +QB_RNG = "-device virtio-rng-device"
> > > > >  QB_TAP_OPT = "-netdev tap,id=net0,ifname=@TAP@,script=no,downscript=no"
> > > > >  QB_NETWORK_DEVICE = "-device virtio-net-device,netdev=net0,mac=@MAC@"
> > > > >  QB_ROOTFS_OPT = "-drive id=disk0,file=@ROOTFS@,if=none,format=raw -device virtio-blk-device,drive=disk0"
> > > >
> > > > Perhaps this is the wrong place to open this can of worms, so to speak,
> > > > but why is the beaglebone BSP also supporting QEMU, under the "virt"
> > > > machine that would be for qemuarm ?  It would be I think one thing to
> > > > make use of
> > > > https://qemu.readthedocs.io/en/latest/system/arm/sabrelite.html on the
> > > > appropriate machine.conf file and support running it that way as well.
> > > > But this isn't emulating the BSP hardware, it's just passing the
> > > > resulting rootfs image to qemu-system-arm.  If that's a general goal
> > > > now, shouldn't it be pushed up higher in the include files?
> > >
> > > I think the general idea has been that if there is qemu emulation, it really
> > > should be actually emulating the hardware else it is different machine.
> >
> > Well, what's any of the above doing in "beaglebone-yocto" ?  If it's not
> > under: https://qemu.readthedocs.io/en/latest/system/target-arm.html then
> > QEMU doesn't support emulating the hardware, and it belongs under
> > qemu*conf.  I've not poked meta-yocto-bsp to see if other platforms are
> > doing this.
> >
> > > That said, I recognise that sometimes having a quick handy hack like this to
> > > test things is useful so I'm a little torn. I'm not sure we'd want to make it
> > > any more official or pushed into the tunes.
> >
> > Documenting how to adjust qemuX so that it would otherwise match the
> > tune of your board, so that you can do some limited sanity testing,
> > would be useful, yes.  What's going on here is something I find quite
> > puzzling.
> 
> What I'm taking from this is that because it's not actually emulating
> the hardware, it's not any more useful than the qemu machines in
> oe-core.  If that is the case, should we simply remove all of the QB_*
> entries?  If we do still want to use these, does it make sense to not
> have the QB_* entries and simply reference the qemu machines in
> meta/conf/machines for the architecture, as that would prevent these
> from becoming stale?  I ask this because edgerouter doesn't have QB_*
> entries and it's the only one here.
> 
> Also, does it make sense to have a unique layer (or perhaps part of
> oe-core) where all of the Linux capable machines have a conf file and
> are testable via runqemu/testimage?

I'll leave anything definitive to Richard of course.  But my two cents
is that yes, unless it's one of the hardware platforms that qemu can
emulate AND we're actually testing it that way too, none of the machine
conf files should have QB_* entries, other than of course qemu* ones.  I
suspect (but could be quite wrong) that the only places that we might
have both qemu and physical hardware in the same machine conf file are
some Xilinx platforms (and I know they're very active on that front,
with my U-Boot hat on), and maybe some of the Arm Ltd platforms, as
those too are well tested via qemu in general.

-- 
Tom
