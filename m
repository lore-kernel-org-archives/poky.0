Received: from mail-il1-f176.google.com (mail-il1-f176.google.com [209.85.166.176])
 by mx.groups.io with SMTP id smtpd.web11.56087.1673532862244019934
 for <poky@lists.yoctoproject.org>;
 Thu, 12 Jan 2023 06:14:22 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=F8uuOjYX;
 spf=pass (domain: gmail.com, ip: 209.85.166.176, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-il1-f176.google.com with SMTP id a3so3461923ilp.6
        for <poky@lists.yoctoproject.org>; Thu, 12 Jan 2023 06:14:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=oX2LLbl15i8wNFRvy5E497TiNXY9UDNo4cnR2s3VeZY=;
        b=F8uuOjYXD4ONl11a1gYyq5ZWx8CPHNNKfXYneUKzLSo4XHEGpkDXSEeVqj9PNJsdwz
         ceqc479miklImB3rkVhPYGlUtn3EotbWNs6I+WGaZrDPCc4CCE2e7qnFeidTKFX2vWJy
         49Ra8X0/8xEJVNsDeHFE9tiTTP+ZHT/sxczkXyxl8867U7PFmVP38viNzIM5qd8WVnek
         MyJaSy6mmVkXWAVi0NwaE3vlRZs3Sg8jTVDArJGopvaENk4UrKnRAbjp/lhvoApuqtOD
         W0svSBLK/uM181cVakFhi1RN9CNt6RuzmKqoj53pqQrwr4XkVJjg3a833D4J4URkqtHp
         ZdHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oX2LLbl15i8wNFRvy5E497TiNXY9UDNo4cnR2s3VeZY=;
        b=lOMxQv49k37Nrls+/ZPGiIBD0U91N2/Z0LlYYLBhTkXixVj5F3QH8sup2srm8vn9/C
         V2jYnuDt8XJo3aRaDAqw00QC393BLf2smkHonWfRxhcIojsz07OJETAfcLa6568KYJL6
         1rd0RXvini2dYqlHOE8BPs7gbKDakj2XU85BAiyqoeKc+zf4OrowfxK1yuEwypBd0ah8
         2AqVf2bmtMCcgKBA7kbOPM77y1NlfzcZaOhDDnXUTMuBt7NHgKsdWVcyWPdDCkiNnaLr
         1k3W3N/yG84wthMzUZ/y3O3v6+HfMoooUXxpjBQhQeAyVHZuzMgFFSoYP97jPP00xFO4
         MQ5Q==
X-Gm-Message-State: AFqh2kqaILjLcSNur9PlhD+0EVqG9FEMfCPXCtvWxerljOjEzqgx6UMy
	jM0nJqYza2bOmlp0he1hmjsG79yBYUPYXtrtqgw=
X-Google-Smtp-Source: AMrXdXtiVZHdN43/0cBENU9CM858G57K8blZTeozTEotKjpzC/tVTqebo1eXuk3tTMIMS3MqS6YOfuvSN433KJJdddg=
X-Received: by 2002:a92:de47:0:b0:302:74a8:c234 with SMTP id
 e7-20020a92de47000000b0030274a8c234mr6378719ilr.55.1673532861546; Thu, 12 Jan
 2023 06:14:21 -0800 (PST)
MIME-Version: 1.0
References: <20230112113153.2639207-1-kexin.hao@windriver.com>
In-Reply-To: <20230112113153.2639207-1-kexin.hao@windriver.com>
From: "Bruce Ashfield" <bruce.ashfield@gmail.com>
Date: Thu, 12 Jan 2023 09:14:10 -0500
Message-ID: <CADkTA4M2nFS0v3+qB1uW6ueQDeCzO8PPJ2RM1cm=Sm4_Jgr4Pg@mail.gmail.com>
Subject: Re: [PATCH] meta-yocto-bsp: Update the default kernel to 6.1
To: Kevin Hao <kexin.hao@windriver.com>
Cc: poky@lists.yoctoproject.org, 
	Richard Purdie <richard.purdie@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"

Thanks Kevin,

This looks good to me.

I'll start the removal of 5.19 shortly (once this merges).

Bruce

On Thu, Jan 12, 2023 at 6:36 AM Kevin Hao <kexin.hao@windriver.com> wrote:
>
> Create the corresponding 6.1 bbappend and also update the default
> kernel to 6.1 for all the boards.
>
> Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
> ---
>  .../conf/machine/beaglebone-yocto.conf        |  2 +-
>  meta-yocto-bsp/conf/machine/edgerouter.conf   |  2 +-
>  .../machine/include/genericx86-common.inc     |  2 +-
>  .../linux/linux-yocto_6.1.bbappend            | 23 +++++++++++++++++++
>  4 files changed, 26 insertions(+), 3 deletions(-)
>  create mode 100644 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.1.bbappend
>
> diff --git a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
> index 284559c50c9c..362f6e040e77 100644
> --- a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
> +++ b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
> @@ -24,7 +24,7 @@ SERIAL_CONSOLES ?= "115200;ttyS0 115200;ttyO0 115200;ttyAMA0"
>  SERIAL_CONSOLES_CHECK = "${SERIAL_CONSOLES}"
>
>  PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
> -PREFERRED_VERSION_linux-yocto ?= "5.15%"
> +PREFERRED_VERSION_linux-yocto ?= "6.1%"
>
>  KERNEL_IMAGETYPE = "zImage"
>  KERNEL_DEVICETREE = "am335x-bone.dtb am335x-boneblack.dtb am335x-bonegreen.dtb"
> diff --git a/meta-yocto-bsp/conf/machine/edgerouter.conf b/meta-yocto-bsp/conf/machine/edgerouter.conf
> index 249864e9cebc..ffdcf55f02b1 100644
> --- a/meta-yocto-bsp/conf/machine/edgerouter.conf
> +++ b/meta-yocto-bsp/conf/machine/edgerouter.conf
> @@ -11,7 +11,7 @@ KERNEL_ALT_IMAGETYPE = "vmlinux.bin"
>  KERNEL_IMAGE_STRIP_EXTRA_SECTIONS  = ".comment"
>
>  PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
> -PREFERRED_VERSION_linux-yocto ?= "5.15%"
> +PREFERRED_VERSION_linux-yocto ?= "6.1%"
>
>  SERIAL_CONSOLES = "115200;ttyS0"
>  USE_VT ?= "0"
> diff --git a/meta-yocto-bsp/conf/machine/include/genericx86-common.inc b/meta-yocto-bsp/conf/machine/include/genericx86-common.inc
> index 8c5e5522bcf2..e3badebf86d8 100644
> --- a/meta-yocto-bsp/conf/machine/include/genericx86-common.inc
> +++ b/meta-yocto-bsp/conf/machine/include/genericx86-common.inc
> @@ -2,7 +2,7 @@ include conf/machine/include/x86/x86-base.inc
>  require conf/machine/include/x86/qemuboot-x86.inc
>  MACHINE_FEATURES += "wifi efi pcbios"
>
> -PREFERRED_VERSION_linux-yocto ?= "5.15%"
> +PREFERRED_VERSION_linux-yocto ?= "6.1%"
>  PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
>  PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
>  XSERVER ?= "${XSERVER_X86_BASE} \
> diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.1.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.1.bbappend
> new file mode 100644
> index 000000000000..e693cb32e489
> --- /dev/null
> +++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.1.bbappend
> @@ -0,0 +1,23 @@
> +KBRANCH:genericx86  = "v6.1/standard/base"
> +KBRANCH:genericx86-64  = "v6.1/standard/base"
> +KBRANCH:edgerouter = "v6.1/standard/edgerouter"
> +KBRANCH:beaglebone-yocto = "v6.1/standard/beaglebone"
> +
> +KMACHINE:genericx86 ?= "common-pc"
> +KMACHINE:genericx86-64 ?= "common-pc-64"
> +KMACHINE:beaglebone-yocto ?= "beaglebone"
> +
> +SRCREV_machine:genericx86 ?= "872afe79c5e568acf5f971952e78caada8424df7"
> +SRCREV_machine:genericx86-64 ?= "872afe79c5e568acf5f971952e78caada8424df7"
> +SRCREV_machine:edgerouter ?= "872afe79c5e568acf5f971952e78caada8424df7"
> +SRCREV_machine:beaglebone-yocto ?= "872afe79c5e568acf5f971952e78caada8424df7"
> +
> +COMPATIBLE_MACHINE:genericx86 = "genericx86"
> +COMPATIBLE_MACHINE:genericx86-64 = "genericx86-64"
> +COMPATIBLE_MACHINE:edgerouter = "edgerouter"
> +COMPATIBLE_MACHINE:beaglebone-yocto = "beaglebone-yocto"
> +
> +LINUX_VERSION:genericx86 = "6.1.3"
> +LINUX_VERSION:genericx86-64 = "6.1.3"
> +LINUX_VERSION:edgerouter = "6.1.3"
> +LINUX_VERSION:beaglebone-yocto = "6.1.3"
> --
> 2.38.1
>


-- 
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II
