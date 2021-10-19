Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com [209.85.219.41])
 by mx.groups.io with SMTP id smtpd.web08.10658.1634654351894443481
 for <poky@lists.yoctoproject.org>;
 Tue, 19 Oct 2021 07:39:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kudzu-us.20210112.gappssmtp.com header.s=20210112 header.b=bJbVXpIp;
 spf=none, err=permanent DNS error (domain: kudzu.us, ip: 209.85.219.41, mailfrom: jdmason@kudzu.us)
Received: by mail-qv1-f41.google.com with SMTP id d20so66076qvm.8
        for <poky@lists.yoctoproject.org>; Tue, 19 Oct 2021 07:39:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kudzu-us.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=On/JN3JLiSvrHLp+xreDB+WPBgiJa4JDTEvipIFulng=;
        b=bJbVXpIpDi++1v5QzPwr4IIgPu4ji9un45sw+ih15ZrgrwOH0zZYRXBf8o+psnOQXN
         58tsOcEGasr6ogL18EFMISKjPtAJHtm7Y5VrzVt8l/t9JwN48NXB2xYhneD+pmejzqRX
         WA5sOwW3sDVZmNHhZbFwVgNk11PhgEtLXMRoqWxHail2uDIGW2W4s4z48FzWrpQdSAva
         beHFF3Np/t5KjMoe9k6YaQfIv78ASiTEHT0qots3LSY5Fk6Lz8163N6W1LAwzIODbhn1
         SEJiyVWWgvCYKlEJ+RJ9tmZ3BAuC5Utmcp+wkvDiCKVeeuyUkDll3b0qqbe2zjS+1mjx
         UbJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=On/JN3JLiSvrHLp+xreDB+WPBgiJa4JDTEvipIFulng=;
        b=EEqsV9FDWwwKK3XUKbF9B7Z5G6VvmtIxcKGFgDBEHaNMuccPpX7FibPVebaPD3BjXW
         oWPZdBJSd6oNDvYtyl0MM3Go9ICQxZT/fN4Tsh/Y9bE2wfu8YN8llU5Fuw9XNXIqdybo
         EotftRdZLxSs3DASAK/qerUu/dLv5IbtngA+QS7oxz6ZiiDygfHhb+3fqnMFCj7stqMk
         /LzoVzmYexdo5NQYf/fsmsMVDIooFAEUBQLKF/8OE08793EKnS5shXwGs9U4MzzGSKIx
         kG98y5ZWO8OM6hwpFi9BHZyNDwkCOL+J5ck6qcmZqnh0/UrPNPPnF72TclhUaMvRGIzR
         AeMw==
X-Gm-Message-State: AOAM531kU2/T7kL9KnaOZQ3xH0CaDFDm4H1GjAF8ARx4D4NN/AIL0HG3
	G7n27JCYM7RQAqFenHhT9uADVFUiKY7lNQsI3BB0UB0O+Cw=
X-Google-Smtp-Source: ABdhPJxEnAnzlmEe0JtF6961J0L+O74eQLlNl29oN/CK3+1htbY1vcRi2b++nsnqyQgYUUv4guxp9vXTitwDtZQk8Pk=
X-Received: by 2002:ad4:5006:: with SMTP id s6mr176877qvo.1.1634654350740;
 Tue, 19 Oct 2021 07:39:10 -0700 (PDT)
MIME-Version: 1.0
References: <20211014143124.13941-1-jdmason@kudzu.us>
In-Reply-To: <20211014143124.13941-1-jdmason@kudzu.us>
From: "Jon Mason" <jdmason@kudzu.us>
Date: Tue, 19 Oct 2021 10:38:57 -0400
Message-ID: <CAPoiz9y9V0Q2h=_YbMEhV9gRHokcExN+zrtdQD0h=7ZSgDf-kA@mail.gmail.com>
Subject: Re: [PATCH 1/2] beaglebone-yocto: use correct CPU and QB_RNG
To: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

Please drop this patch.  There is a bug in it.  cortex-a8 doesn't work
with the virt machine.  Also, it is still lacking the serial settings
to get it working properly.  I have a patch now that is working, but
actually waiting for CI to pass before sending it this time.

Thanks,
Jon

On Thu, Oct 14, 2021 at 10:31 AM Jon Mason <jdmason@kudzu.us> wrote:
>
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
> --
> 2.20.1
>
