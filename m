Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
 by mx.groups.io with SMTP id smtpd.web12.2108.1634251920362444881
 for <poky@lists.yoctoproject.org>;
 Thu, 14 Oct 2021 15:52:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=jYzQQsQD;
 spf=pass (domain: konsulko.com, ip: 209.85.160.181, mailfrom: trini@konsulko.com)
Received: by mail-qt1-f181.google.com with SMTP id o12so7226956qtq.7
        for <poky@lists.yoctoproject.org>; Thu, 14 Oct 2021 15:52:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=/rINIQGLYOk46RuqgpWb8qzrutB4qq0ebnjqztNei2Y=;
        b=jYzQQsQDwmi17sa9ocSVNLOHC9pWAzrzzikV21+YF0jHvfFYlOTnjUhfb5uBfrVUoP
         nj/dYNivEtwfq6EmohllTz53taM4Kj04quS7NIsAcQotXxOwnKfmn+C1O3/sIgBl5W+V
         VtwrQagGoO9aSR0Y2TaPG4FIsgLMv/6Xxa6yQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=/rINIQGLYOk46RuqgpWb8qzrutB4qq0ebnjqztNei2Y=;
        b=SHjJ9U/4KhdWBexeI+E6r2XPvgBQBC3jltTSI2Awcp4O69xhQAqGKwmTc8yX51F/DC
         C6qNNN6PDDUEK+9s6Gjoc2QOpKCqL8ZF0yhG2hcDEn+TsnO0LddAvSDVFmxrgFkxUXnO
         Fqn6WnL2UL7rrkXGU1S/lX2qmYE+zhRGUePkxx+LKc5yzgNHp4JpqXHc/elEvxda8ceV
         YEs4SIQAq3yP8eZlARlZ+JqVnk2hld3i+l3rC3fj2cxc/2dGVD1YLfGzgseQc/4dNGqd
         AUgyepZxwFHW1A2H1VCAiuir6vm9jWA6aAS/l8YCCIdShWIeZS6GNKBDD2w70RWX5BiK
         BNeQ==
X-Gm-Message-State: AOAM530rh7/LzoDyqnWlh7uSXwclVrKh7TiNhbYk0KpyW6Me/Z+yihzk
	LJWEA2y4DXJ58YLIzGI3J4fFUA==
X-Google-Smtp-Source: ABdhPJx8FsydFepiAOVsrCnQ3NDEC16C85rAYPdRDNnG/gvQnSNeapRFFoq6AYeHUtMf2bQUmvEGWQ==
X-Received: by 2002:ac8:7c56:: with SMTP id o22mr10288737qtv.124.1634251919492;
        Thu, 14 Oct 2021 15:51:59 -0700 (PDT)
Return-Path: <trini@konsulko.com>
Received: from bill-the-cat (2603-6081-7b01-cbda-f8b0-5c25-4d47-ecdb.res6.spectrum.com. [2603:6081:7b01:cbda:f8b0:5c25:4d47:ecdb])
        by smtp.gmail.com with ESMTPSA id bm16sm922556qkb.86.2021.10.14.15.51.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Oct 2021 15:51:58 -0700 (PDT)
Date: Thu, 14 Oct 2021 18:51:57 -0400
From: "Tom Rini" <trini@konsulko.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Jon Mason <jdmason@kudzu.us>, poky@lists.yoctoproject.org
Subject: Re: [poky] [PATCH 1/2] beaglebone-yocto: use correct CPU and QB_RNG
Message-ID: <20211014225157.GJ7964@bill-the-cat>
References: <20211014143124.13941-1-jdmason@kudzu.us>
 <20211014173453.GG7964@bill-the-cat>
 <afd1d12e1986d9f8a1636cfa8a698b4e6330229d.camel@linuxfoundation.org>
MIME-Version: 1.0
In-Reply-To: <afd1d12e1986d9f8a1636cfa8a698b4e6330229d.camel@linuxfoundation.org>
X-Clacks-Overhead: GNU Terry Pratchett
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Oct 14, 2021 at 11:45:14PM +0100, Richard Purdie wrote:
> On Thu, 2021-10-14 at 13:34 -0400, Tom Rini wrote:
> > On Thu, Oct 14, 2021 at 10:31:23AM -0400, Jon Mason wrote:
> > 
> > > The beagles use the AM3358 SoC, which is an Arm Cortex-A8.  Use that for
> > > QB_CPU.  Also, use QB_RNG to specify the random number generator device.
> > > Finally, correct the image deps to get qemu to run.
> > > 
> > > Signed-off-by: Jon Mason <jdmason@kudzu.us>
> > > ---
> > >  meta-yocto-bsp/conf/machine/beaglebone-yocto.conf | 6 +++---
> > >  1 file changed, 3 insertions(+), 3 deletions(-)
> > > 
> > > diff --git a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
> > > index b3d960a8cd80..06746afa96ae 100644
> > > --- a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
> > > +++ b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
> > > @@ -41,16 +41,16 @@ MACHINE_FEATURES = "usbgadget usbhost vfat alsa"
> > >  IMAGE_BOOT_FILES ?= "u-boot.${UBOOT_SUFFIX} ${SPL_BINARY} ${KERNEL_IMAGETYPE} ${KERNEL_DEVICETREE}"
> > >  
> > >  # support runqemu
> > > -EXTRA_IMAGEDEPENDS += "qemu-native qemu-helper-native"
> > > +EXTRA_IMAGEDEPENDS += "qemu-system-native qemu-helper-native:do_addto_recipe_sysroot"
> > >  IMAGE_CLASSES += "qemuboot"
> > >  QB_DEFAULT_FSTYPE = "wic"
> > >  QB_FSINFO = "wic:no-kernel-in-fs"
> > >  QB_KERNEL_ROOT = "/dev/vda2"
> > >  QB_SYSTEM_NAME = "qemu-system-arm"
> > >  QB_MACHINE = "-machine virt"
> > > -QB_CPU = "-cpu cortex-a15"
> > > +QB_CPU = "-cpu cortex-a8"
> > >  QB_KERNEL_CMDLINE_APPEND = "console=ttyAMA0 systemd.mask=systemd-networkd"
> > > -QB_OPT_APPEND = "-device virtio-rng-device"
> > > +QB_RNG = "-device virtio-rng-device"
> > >  QB_TAP_OPT = "-netdev tap,id=net0,ifname=@TAP@,script=no,downscript=no"
> > >  QB_NETWORK_DEVICE = "-device virtio-net-device,netdev=net0,mac=@MAC@"
> > >  QB_ROOTFS_OPT = "-drive id=disk0,file=@ROOTFS@,if=none,format=raw -device virtio-blk-device,drive=disk0"
> > 
> > Perhaps this is the wrong place to open this can of worms, so to speak,
> > but why is the beaglebone BSP also supporting QEMU, under the "virt"
> > machine that would be for qemuarm ?  It would be I think one thing to
> > make use of
> > https://qemu.readthedocs.io/en/latest/system/arm/sabrelite.html on the
> > appropriate machine.conf file and support running it that way as well.
> > But this isn't emulating the BSP hardware, it's just passing the
> > resulting rootfs image to qemu-system-arm.  If that's a general goal
> > now, shouldn't it be pushed up higher in the include files?
> 
> I think the general idea has been that if there is qemu emulation, it really
> should be actually emulating the hardware else it is different machine.

Well, what's any of the above doing in "beaglebone-yocto" ?  If it's not
under: https://qemu.readthedocs.io/en/latest/system/target-arm.html then
QEMU doesn't support emulating the hardware, and it belongs under
qemu*conf.  I've not poked meta-yocto-bsp to see if other platforms are
doing this.

> That said, I recognise that sometimes having a quick handy hack like this to
> test things is useful so I'm a little torn. I'm not sure we'd want to make it
> any more official or pushed into the tunes.

Documenting how to adjust qemuX so that it would otherwise match the
tune of your board, so that you can do some limited sanity testing,
would be useful, yes.  What's going on here is something I find quite
puzzling.

-- 
Tom
