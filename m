Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1BECEF8A175
	for <webhook@archiver.kernel.org>; Thu, 16 Apr 2026 13:26:24 +0000 (UTC)
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.13986.1776345975302916545
 for <poky@lists.yoctoproject.org>;
 Thu, 16 Apr 2026 06:26:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=C8v6QzKM;
 spf=pass (domain: linaro.org, ip: 209.85.214.172, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-2b24fdac394so72381435ad.3
        for <poky@lists.yoctoproject.org>; Thu, 16 Apr 2026 06:26:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1776345974; x=1776950774; darn=lists.yoctoproject.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=UCiihHvukWddv7AD0TuXiLq3Em90CLKB9DWNUZrDNGg=;
        b=C8v6QzKMoKe/HvH/2fEVHRp+5cd2kx2L1RhO9BGlI93ZUy/ivvBQRNtXdv+6PkGarB
         Up3yWLP6447WbQ62Kr9zmuKLL0RYUKIaOzrbWUJd1vaNIUPG0rM2uPcWSlF4px95MWV2
         1NAgOsq52niQ1n344eb1oHNBz6ZOKuVhIrNX1/oz59yzyC8DAZ2xynBl528Twey/okzC
         /AjGLi8058//eSSSZA9VKzZpHcG5CPYOQXhltFNxc7R75W9zko+vvFFyFwbykeTFkNYU
         p7GsqxeHV11uqlJFJZ1GU3vBUGkzQvh1BwQ3B1n9V3WaYfAvMDqMVvUJAdE+6EGPL4KO
         3XCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776345974; x=1776950774;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=UCiihHvukWddv7AD0TuXiLq3Em90CLKB9DWNUZrDNGg=;
        b=kfF3xH9MQzqdtEzZfDJ95L5t5KhxWb9VeNlN8lR947CFy2FKx0R0yuIDF2rvXNrrZY
         JMNjKWTmvyyajYIv5QbLueLljLZ97vzI1i9bf1EGRnBXJ7ixNIk7V7Q/c8B1ryHI3v+l
         xRyu5PvVRl5jGQB8OmGXUF/bIA4eKAK/n18l3KvwOhhTxnJv4wQLIUn/Xr5Rn/NbnXZY
         +ZRJWnLJ020/TSWOGG8ldBKlew45XySXYiBE9CFZ7VTg8fepaDmvCllPCCDtjZgJWBcE
         eE3FjBXXIeqYvczzP1+RPi0m7nwrGOo55OnSLO41mcNpJChptB9MmZegLCKp/PoGMeBR
         Z59Q==
X-Gm-Message-State: AOJu0YymhNiwGl4LEoHJmE/a7emczUOSu8+g3Lz8cZCQdkZzAjoKTmyD
	pD+SRifVj89v8pjUYegs/3fK6En11JYc7JmY54dhJ8LGFkH+K+yz8L0yCL2+YiC+VzU6HcfJrdW
	va0bH
X-Gm-Gg: AeBDiet6MtmdPXyyYc7K/cSuTuynBUyCqilFPwHONbwwk9X1fiU+zfXwMjOw+yh2tid
	WG+oE9Yv7JJTHdgncEbQMGwPyIIbWSMPrsSt+bL7GhyFQHEPc3uf0v31mzbWpbogcn4ZFtwmA5X
	kvT+IfXkxC7J1nbJigR2dK8UGp/y+zT/k6EgmAAEiXgf58KYvAbULJUyMwgMCxSBbikTp8jVWSn
	5PRLS5+Qm71TJCIpqgKb2kP0/TXUtwe2+2tytgBOTwmO9qfYJxsSl6otoyPgBd0+P5ULU8ojbom
	lI2VslWjOj19qwJ/TbmizODrKK4P43gEsaGqEj6hiIZP/AXn3pOVp7MlQ2kPkfJHdv028D9XoyC
	qMWEqi8djzMObx2M9WuuqWYyE8Ioy6jYU3UCKv2zxGRv6/vROro7/AZPVo4nrXR5YmzbBfVvnjj
	gq3KAbonv8E8T1qkv3iskScGrr5UahnNKqmOf7OPLRlaWGkcoR1mW01omLih6p7w==
X-Received: by 2002:a17:902:b588:b0:2b2:4c92:c389 with SMTP id d9443c01a7336-2b2d5a6e445mr200554475ad.34.1776345974085;
        Thu, 16 Apr 2026 06:26:14 -0700 (PDT)
Received: from nuoska (78-27-71-225.bb.dnainternet.fi. [78.27.71.225])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b4782ab8cdsm51129375ad.64.2026.04.16.06.26.12
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Apr 2026 06:26:13 -0700 (PDT)
Date: Thu, 16 Apr 2026 16:26:09 +0300
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: poky@lists.yoctoproject.org
Subject: Re: [poky] [PATCH v3] genericarm64 core-image-initramfs-boot: remove
 some kernel drivers
Message-ID: <aeDjcbnGMMqzyW_z@nuoska>
References: <18A5D9F18A3D8C50.777565@lists.yoctoproject.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <18A5D9F18A3D8C50.777565@lists.yoctoproject.org>
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 16 Apr 2026 13:26:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13903

Hi,

On Mon, Apr 13, 2026 at 10:27:15AM +0300, Mikko Rapeli via lists.yoctoproject.org wrote:
> genericarm64 supports a lot of HW and thus large collection of kernel
> drivers are enabled and installed to images by default.
> Subset of the kernel drivers are needed in initramfs to mount rootfs
> from local mass storage devices. This increases initramfs size a lot
> and with new kernel config updates even more. Thus remove kernel
> drivers from initramfs image which are not needed for mounting
> rootfs from local mass storage devices. GPU, Bluetooth, NFC,
> sound, networking etc support is not needed in the initramfs.
> 
> According to buildhistory core-image-initramfs-boot size is reduced
> from 118 to 83 Mb.

In my oe-core master branch builds core-image-initramfs-boot is now failing
due to size limits:

https://gitlab.com/Linaro/trustedsubstrate/gpit/-/jobs/13951723488

2026-04-16 13:04:26 - ERROR    - ERROR: core-image-initramfs-boot-1.0-r0 do_image_cpio: The initramfs size 282121(K) exceeds INITRAMFS_MAXSIZE: 280000(K)
2026-04-16 13:04:26 - ERROR    - ERROR: core-image-initramfs-boot-1.0-r0 do_image_cpio: You can set INITRAMFS_MAXSIZE a larger value. Usually, it should
2026-04-16 13:04:26 - ERROR    - ERROR: core-image-initramfs-boot-1.0-r0 do_image_cpio: be less than 1/2 of ram size, or you may fail to boot it.

This patch could be one fix.

But is this visible in auto-builder side builds? Or have the genericarm64
poky-altcfg distro builds been disabled?

Cheers,

-Mikko

> Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
> ---
>  .../images/core-image-initramfs-boot.bbappend | 28 +++++++++++++++++++
>  1 file changed, 28 insertions(+)
>  create mode 100644 meta-yocto-bsp/recipes-core/images/core-image-initramfs-boot.bbappend
> 
> v3: added PATHS_TO_REMOVE variable so that it can be customized
>     as suggested by Jose Quaresma <quaresma.jose@gmail.com>
> 
> v2: https://lists.yoctoproject.org/g/poky/message/13894
> 
> diff --git a/meta-yocto-bsp/recipes-core/images/core-image-initramfs-boot.bbappend b/meta-yocto-bsp/recipes-core/images/core-image-initramfs-boot.bbappend
> new file mode 100644
> index 000000000000..2298c2f94740
> --- /dev/null
> +++ b/meta-yocto-bsp/recipes-core/images/core-image-initramfs-boot.bbappend
> @@ -0,0 +1,28 @@
> +POSTFUNCS = ""
> +POSTFUNCS:genericarm64 = "reduce_initrd_size"
> +
> +PATHS_TO_REMOVE = ""
> +# these kernel modules are not needed for rootfs mount from local mass storage
> +# and can be loaded from main rootfs by udev
> +PATHS_TO_REMOVE:genericarm64 = "\
> +    ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/drivers/bluetooth \
> +    ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/drivers/gpu \
> +    ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/drivers/media \
> +    ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/drivers/net \
> +    ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/drivers/nfc \
> +    ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/drivers/usb/gadget \
> +    ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/fs/fuse \
> +    ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/net/bluetooth \
> +    ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/net/bridge \
> +    ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/net/netfilter \
> +    ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/net/nfc \
> +    ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/sound \
> +"
> +
> +do_rootfs[postfuncs] += "${POSTFUNCS}"
> +reduce_initrd_size () {
> +    if [ -n "${PATHS_TO_REMOVE}" ]; then
> +        rm -rf ${PATHS_TO_REMOVE}
> +    fi
> +}
> +
> -- 
> 2.34.1
> 

> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13898): https://lists.yoctoproject.org/g/poky/message/13898
> Mute This Topic: https://lists.yoctoproject.org/mt/118800931/7159507
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [mikko.rapeli@linaro.org]
> -=-=-=-=-=-=-=-=-=-=-=-
> 


