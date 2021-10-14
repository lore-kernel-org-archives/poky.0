Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
 by mx.groups.io with SMTP id smtpd.web08.339.1634232897105174341
 for <poky@lists.yoctoproject.org>;
 Thu, 14 Oct 2021 10:34:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=PD/8mKCv;
 spf=pass (domain: konsulko.com, ip: 209.85.222.181, mailfrom: trini@konsulko.com)
Received: by mail-qk1-f181.google.com with SMTP id t63so6180198qkf.1
        for <poky@lists.yoctoproject.org>; Thu, 14 Oct 2021 10:34:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=geT8OtK2Qmux8WVGycVZINfDbzPv08ylKrP2+ZAeDhc=;
        b=PD/8mKCvUM+L47f2/ujlP49soQ93K10PbuGs+kIN2TTtKOjcbFl4rn1dYhtf82kIg3
         NB+mf6kbd1iQ6r3eiMuo2JiWwyhJ+/qsusAvtuGPgLNe7OgFP90pDAX00erLNRK7dG4c
         GIRM9qCg7uDWZ1pzWFC6NFQ/Pb1jAY/oOpLYs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=geT8OtK2Qmux8WVGycVZINfDbzPv08ylKrP2+ZAeDhc=;
        b=L0Cv9WGAnfNICz792wrZ/DuLeUsmG2JdBbCPjDc8GBsr4nR86ipVf98jK7wfMZXljb
         QetiOCj515Q+z0r/2XtdLsJUjaTz8lUykbeoP0Ej93RaS3PC6zSjyyTSv6byf8tJvC4A
         XdnFKeD/L0XDNRXoShdzuNkIF5OgaU3FjhhHsRPWFFtlFkHqB3nrO1wSRvoZ7dfDX6A8
         KOB9AWIOsgrKjwr5WJvvy0pRjMqVbXKgC2uDPImeSIfgcw24I9JrR4C8ueCFTa13lKG4
         H+rDQzm9sY4cP8/y4P5M1Xn8wJ2Vvh/WuvlnI9DQT/1cj0SWrg4Wf75bknqibtD6GQ8d
         zmfw==
X-Gm-Message-State: AOAM533Pk9e91oWMkHnWfAZ5zKuBuDAGnFU73ZGf6UfLo47VgWU+btLG
	h0iqCLaqQVWqvg6x6gs8yqEC++V2vUZo2Q==
X-Google-Smtp-Source: ABdhPJzTU1yX0d7MWuVaTIe40/Wh/fTqvyjKMJ+oVrDnZGTAw6Y/gSm2NTpFvkIzVVncZUw0efoT0A==
X-Received: by 2002:ae9:ed58:: with SMTP id c85mr6140386qkg.73.1634232896193;
        Thu, 14 Oct 2021 10:34:56 -0700 (PDT)
Return-Path: <trini@konsulko.com>
Received: from bill-the-cat (2603-6081-7b01-cbda-0d65-5385-0e85-d408.res6.spectrum.com. [2603:6081:7b01:cbda:d65:5385:e85:d408])
        by smtp.gmail.com with ESMTPSA id u129sm1518410qkd.127.2021.10.14.10.34.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Oct 2021 10:34:55 -0700 (PDT)
Date: Thu, 14 Oct 2021 13:34:53 -0400
From: "Tom Rini" <trini@konsulko.com>
To: Jon Mason <jdmason@kudzu.us>
Cc: poky@lists.yoctoproject.org
Subject: Re: [poky] [PATCH 1/2] beaglebone-yocto: use correct CPU and QB_RNG
Message-ID: <20211014173453.GG7964@bill-the-cat>
References: <20211014143124.13941-1-jdmason@kudzu.us>
MIME-Version: 1.0
In-Reply-To: <20211014143124.13941-1-jdmason@kudzu.us>
X-Clacks-Overhead: GNU Terry Pratchett
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Oct 14, 2021 at 10:31:23AM -0400, Jon Mason wrote:

> The beagles use the AM3358 SoC, which is an Arm Cortex-A8.  Use that for
> QB_CPU.  Also, use QB_RNG to specify the random number generator device.
> Finally, correct the image deps to get qemu to run.
> 
> Signed-off-by: Jon Mason <jdmason@kudzu.us>
> ---
>  meta-yocto-bsp/conf/machine/beaglebone-yocto.conf | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
> index b3d960a8cd80..06746afa96ae 100644
> --- a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
> +++ b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
> @@ -41,16 +41,16 @@ MACHINE_FEATURES = "usbgadget usbhost vfat alsa"
>  IMAGE_BOOT_FILES ?= "u-boot.${UBOOT_SUFFIX} ${SPL_BINARY} ${KERNEL_IMAGETYPE} ${KERNEL_DEVICETREE}"
>  
>  # support runqemu
> -EXTRA_IMAGEDEPENDS += "qemu-native qemu-helper-native"
> +EXTRA_IMAGEDEPENDS += "qemu-system-native qemu-helper-native:do_addto_recipe_sysroot"
>  IMAGE_CLASSES += "qemuboot"
>  QB_DEFAULT_FSTYPE = "wic"
>  QB_FSINFO = "wic:no-kernel-in-fs"
>  QB_KERNEL_ROOT = "/dev/vda2"
>  QB_SYSTEM_NAME = "qemu-system-arm"
>  QB_MACHINE = "-machine virt"
> -QB_CPU = "-cpu cortex-a15"
> +QB_CPU = "-cpu cortex-a8"
>  QB_KERNEL_CMDLINE_APPEND = "console=ttyAMA0 systemd.mask=systemd-networkd"
> -QB_OPT_APPEND = "-device virtio-rng-device"
> +QB_RNG = "-device virtio-rng-device"
>  QB_TAP_OPT = "-netdev tap,id=net0,ifname=@TAP@,script=no,downscript=no"
>  QB_NETWORK_DEVICE = "-device virtio-net-device,netdev=net0,mac=@MAC@"
>  QB_ROOTFS_OPT = "-drive id=disk0,file=@ROOTFS@,if=none,format=raw -device virtio-blk-device,drive=disk0"

Perhaps this is the wrong place to open this can of worms, so to speak,
but why is the beaglebone BSP also supporting QEMU, under the "virt"
machine that would be for qemuarm ?  It would be I think one thing to
make use of
https://qemu.readthedocs.io/en/latest/system/arm/sabrelite.html on the
appropriate machine.conf file and support running it that way as well.
But this isn't emulating the BSP hardware, it's just passing the
resulting rootfs image to qemu-system-arm.  If that's a general goal
now, shouldn't it be pushed up higher in the include files?

-- 
Tom
