Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
 by mx.groups.io with SMTP id smtpd.web08.2172.1634251518858644591
 for <poky@lists.yoctoproject.org>;
 Thu, 14 Oct 2021 15:45:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=IMTYXEXd;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.47, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f47.google.com with SMTP id k7so22842690wrd.13
        for <poky@lists.yoctoproject.org>; Thu, 14 Oct 2021 15:45:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=iUe3muAWxnEv9UJ4+eRhcQBgBMPyAh5sAhwjjg2vEws=;
        b=IMTYXEXdOe2Gy8oPHU38BL6xQfLyHPPXl1lSXH2n31+vwUEXB/gFN2TDPzgLbWq0pI
         1b9yn4yZIKVoF5CfKQuoglGx4jzz2zNGrnrenx38ZbEmWyZoNOBRJJ+l4DwJ3qTXBVDy
         1D7QaAAD9RV2k4K8SdIZwnbhiIUeTmvtANdo4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=iUe3muAWxnEv9UJ4+eRhcQBgBMPyAh5sAhwjjg2vEws=;
        b=Fm4MWnDS4bDRERxSPmBveVEBP2b2QXnmVlD9G9tSkl8+6hE+YLeqrbh71pb/4DCneb
         db+pbvE3yqVLwSpHY1xluv+gKAlnYPkhRPTA4HA4ZOxKpBtkWrm++yZFdumpJlUGyaFr
         bLk1Ew8DYq/DtD0UFgXsrsRPjmPITheAtXU2dQ0sQtSc8p7HRza3M3taK5ktUjJu1C55
         nuywfTYWaK/722/UYMo8QW4CTl1lJ5OePkyECqGutuPSrNbeCuI7nnYLx5DtgFRhRN2x
         d1WBUD4i+7/Lf8w01Kax7qa7NctZ1YQ7MlhkKnwmszzuUJ1aO5wWTOCpi8Eq6gvrX444
         abOQ==
X-Gm-Message-State: AOAM531uNLLj35Ekk2akWAZkFAJPBvyW0PuPwcItXBllYlbQVmrZSGe5
	swXlvJFAgV1PxiiVsBd8thZY/w==
X-Google-Smtp-Source: ABdhPJz1uuFhPjm2hNZdpdMsNYY7bezAWzn59LUAMozl89P3LSgtF8NRlJRKTryFRGZvLBJyrcZ0yQ==
X-Received: by 2002:adf:8b15:: with SMTP id n21mr10159762wra.373.1634251517242;
        Thu, 14 Oct 2021 15:45:17 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:3c2a:82f4:3a7b:54b1? ([2001:8b0:aba:5f3c:3c2a:82f4:3a7b:54b1])
        by smtp.gmail.com with ESMTPSA id l17sm3402788wrx.24.2021.10.14.15.45.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Oct 2021 15:45:16 -0700 (PDT)
Message-ID: <afd1d12e1986d9f8a1636cfa8a698b4e6330229d.camel@linuxfoundation.org>
Subject: Re: [poky] [PATCH 1/2] beaglebone-yocto: use correct CPU and QB_RNG
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Tom Rini <trini@konsulko.com>, Jon Mason <jdmason@kudzu.us>
Cc: poky@lists.yoctoproject.org
Date: Thu, 14 Oct 2021 23:45:14 +0100
In-Reply-To: <20211014173453.GG7964@bill-the-cat>
References: <20211014143124.13941-1-jdmason@kudzu.us>
	 <20211014173453.GG7964@bill-the-cat>
User-Agent: Evolution 3.40.4-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2021-10-14 at 13:34 -0400, Tom Rini wrote:
> On Thu, Oct 14, 2021 at 10:31:23AM -0400, Jon Mason wrote:
> 
> > The beagles use the AM3358 SoC, which is an Arm Cortex-A8.  Use that for
> > QB_CPU.  Also, use QB_RNG to specify the random number generator device.
> > Finally, correct the image deps to get qemu to run.
> > 
> > Signed-off-by: Jon Mason <jdmason@kudzu.us>
> > ---
> >  meta-yocto-bsp/conf/machine/beaglebone-yocto.conf | 6 +++---
> >  1 file changed, 3 insertions(+), 3 deletions(-)
> > 
> > diff --git a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
> > index b3d960a8cd80..06746afa96ae 100644
> > --- a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
> > +++ b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
> > @@ -41,16 +41,16 @@ MACHINE_FEATURES = "usbgadget usbhost vfat alsa"
> >  IMAGE_BOOT_FILES ?= "u-boot.${UBOOT_SUFFIX} ${SPL_BINARY} ${KERNEL_IMAGETYPE} ${KERNEL_DEVICETREE}"
> >  
> >  # support runqemu
> > -EXTRA_IMAGEDEPENDS += "qemu-native qemu-helper-native"
> > +EXTRA_IMAGEDEPENDS += "qemu-system-native qemu-helper-native:do_addto_recipe_sysroot"
> >  IMAGE_CLASSES += "qemuboot"
> >  QB_DEFAULT_FSTYPE = "wic"
> >  QB_FSINFO = "wic:no-kernel-in-fs"
> >  QB_KERNEL_ROOT = "/dev/vda2"
> >  QB_SYSTEM_NAME = "qemu-system-arm"
> >  QB_MACHINE = "-machine virt"
> > -QB_CPU = "-cpu cortex-a15"
> > +QB_CPU = "-cpu cortex-a8"
> >  QB_KERNEL_CMDLINE_APPEND = "console=ttyAMA0 systemd.mask=systemd-networkd"
> > -QB_OPT_APPEND = "-device virtio-rng-device"
> > +QB_RNG = "-device virtio-rng-device"
> >  QB_TAP_OPT = "-netdev tap,id=net0,ifname=@TAP@,script=no,downscript=no"
> >  QB_NETWORK_DEVICE = "-device virtio-net-device,netdev=net0,mac=@MAC@"
> >  QB_ROOTFS_OPT = "-drive id=disk0,file=@ROOTFS@,if=none,format=raw -device virtio-blk-device,drive=disk0"
> 
> Perhaps this is the wrong place to open this can of worms, so to speak,
> but why is the beaglebone BSP also supporting QEMU, under the "virt"
> machine that would be for qemuarm ?  It would be I think one thing to
> make use of
> https://qemu.readthedocs.io/en/latest/system/arm/sabrelite.html on the
> appropriate machine.conf file and support running it that way as well.
> But this isn't emulating the BSP hardware, it's just passing the
> resulting rootfs image to qemu-system-arm.  If that's a general goal
> now, shouldn't it be pushed up higher in the include files?

I think the general idea has been that if there is qemu emulation, it really
should be actually emulating the hardware else it is different machine.

That said, I recognise that sometimes having a quick handy hack like this to
test things is useful so I'm a little torn. I'm not sure we'd want to make it
any more official or pushed into the tunes.

Cheers,

Richard

