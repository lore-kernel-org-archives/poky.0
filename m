Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
 by mx.groups.io with SMTP id smtpd.web10.4091.1632401400861531934
 for <poky@lists.yoctoproject.org>;
 Thu, 23 Sep 2021 05:50:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=eYjo6v2r;
 spf=pass (domain: gmail.com, ip: 209.85.208.47, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-ed1-f47.google.com with SMTP id s17so4758427edd.8
        for <poky@lists.yoctoproject.org>; Thu, 23 Sep 2021 05:50:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=yUKcikE3RQngfLkDqCi1jN6cbUDugYvG5Mf5EVvGrcY=;
        b=eYjo6v2rRiZDt95NnIadBoG9btuxI2WQ4aq2XtHb/RPPQ4c9ZNmn8y1MFx3YldNU2n
         97J7iNrrrbvptEFSDdFGXOxsemXXkxwWBgkFBWleTJDCWQ6fB/S2ZI2OhlJeE8Crh3T6
         cPM5lOZTuFzLwrBMKvrdSilyQKoSZG55cwVCe0CqgKQOPFcsfldVRbsKFvCDXSxOgYEM
         H//wTAIlnvs+qK7yq0JjxKiCDXuiILL/VjnTi+RO9ItivjZkuP0XIzqflum3T2oiJvAf
         Z7IMYhUIVfgv9t/H02K4VvG055vOfyg3Y6cKWTQlFs+H4csFH09oAkYDOZUNF98HExe1
         DpuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=yUKcikE3RQngfLkDqCi1jN6cbUDugYvG5Mf5EVvGrcY=;
        b=ziocmPy2cusyfzQ9+tOyHlrKEcJ+gTseEhL/De42eh9WdqZwINDds2eCF7PJIVhpxA
         NVY2erKlWWxD5gnXwnr1cXElBMZeIOoUUU/qUCEEEeIhpmyrI7J7RSt5kyvpgpxmKz5W
         3RxEEO5NoVO0EKc7pkvJ8Y48QBLkumdtpZCaaNwKY2ZTNbOIZfEnpaZqSqaE1dct12LN
         yTpddpPxwyQA7/bXI2a2RsndJQ8LuX5v9hLUKdSVYt646z8VtB9QX4pPHCXg1ejea46l
         URpzfBdhpLmcenChIBb9tuonJK/0baKfkgyOA0BUWeUiUxyrIJzeFMVjgLl/UHOl9GTZ
         YLDA==
X-Gm-Message-State: AOAM530aUXHfAby4XHlFD0A953tN6HjF4Xgp8xr7bxXV+8dZlrKxC9pf
	BZLlN2U9etkUcF4hsGdWfGKj4og0Uiwj3vrhr+A=
X-Google-Smtp-Source: ABdhPJyBGhb2OdU4GP8VeMAM+TjN5klcHso9zuDzzsyvto73EHKizYR/4tHgn0hzJTKolkODdiJFfUaqNWm2DbE8YBk=
X-Received: by 2002:a05:6402:397:: with SMTP id o23mr5398223edv.59.1632401398700;
 Thu, 23 Sep 2021 05:49:58 -0700 (PDT)
MIME-Version: 1.0
References: <20210923103229.12325-1-kexin.hao@windriver.com>
In-Reply-To: <20210923103229.12325-1-kexin.hao@windriver.com>
From: "Bruce Ashfield" <bruce.ashfield@gmail.com>
Date: Thu, 23 Sep 2021 08:49:47 -0400
Message-ID: <CADkTA4MaDXt-c5YWF+vWbVbYwaO4z=dLvPQqPpBRAjWDb+VOxA@mail.gmail.com>
Subject: Re: [PATCH] meta-yocto-bsp: Update the default kernel to v5.14
To: Kevin Hao <kexin.hao@windriver.com>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>, poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On Thu, Sep 23, 2021 at 6:39 AM Kevin Hao <kexin.hao@windriver.com> wrote:
>
> Introduce the bbappend for v5.14 and also set the default kernel to
> v5.14 for all the boards.
>
> Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
> ---
>
> This is based on the Bruce's v5.14 patches in master-next.
>

Thanks Kevin!

Bruce

>  .../conf/machine/beaglebone-yocto.conf        |  2 +-
>  meta-yocto-bsp/conf/machine/edgerouter.conf   |  2 +-
>  .../machine/include/genericx86-common.inc     |  2 +-
>  .../linux/linux-yocto_5.14.bbappend           | 23 +++++++++++++++++++
>  4 files changed, 26 insertions(+), 3 deletions(-)
>  create mode 100644 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.14.bbappend
>
> diff --git a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
> index 618af40306cb..b3d960a8cd80 100644
> --- a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
> +++ b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
> @@ -24,7 +24,7 @@ SERIAL_CONSOLES ?= "115200;ttyS0 115200;ttyO0 115200;ttyAMA0"
>  SERIAL_CONSOLES_CHECK = "${SERIAL_CONSOLES}"
>
>  PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
> -PREFERRED_VERSION_linux-yocto ?= "5.13%"
> +PREFERRED_VERSION_linux-yocto ?= "5.14%"
>
>  KERNEL_IMAGETYPE = "zImage"
>  KERNEL_DEVICETREE = "am335x-bone.dtb am335x-boneblack.dtb am335x-bonegreen.dtb"
> diff --git a/meta-yocto-bsp/conf/machine/edgerouter.conf b/meta-yocto-bsp/conf/machine/edgerouter.conf
> index 9c95f4632fbb..32be4b9c3960 100644
> --- a/meta-yocto-bsp/conf/machine/edgerouter.conf
> +++ b/meta-yocto-bsp/conf/machine/edgerouter.conf
> @@ -11,7 +11,7 @@ KERNEL_ALT_IMAGETYPE = "vmlinux.bin"
>  KERNEL_IMAGE_STRIP_EXTRA_SECTIONS  = ".comment"
>
>  PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
> -PREFERRED_VERSION_linux-yocto ?= "5.13%"
> +PREFERRED_VERSION_linux-yocto ?= "5.14%"
>
>  SERIAL_CONSOLES = "115200;ttyS0"
>  USE_VT ?= "0"
> diff --git a/meta-yocto-bsp/conf/machine/include/genericx86-common.inc b/meta-yocto-bsp/conf/machine/include/genericx86-common.inc
> index adc8ca879aab..4651b37e5d68 100644
> --- a/meta-yocto-bsp/conf/machine/include/genericx86-common.inc
> +++ b/meta-yocto-bsp/conf/machine/include/genericx86-common.inc
> @@ -2,7 +2,7 @@ include conf/machine/include/x86/x86-base.inc
>  require conf/machine/include/x86/qemuboot-x86.inc
>  MACHINE_FEATURES += "wifi efi pcbios"
>
> -PREFERRED_VERSION_linux-yocto ?= "5.13%"
> +PREFERRED_VERSION_linux-yocto ?= "5.14%"
>  PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
>  PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
>  XSERVER ?= "${XSERVER_X86_BASE} \
> diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.14.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.14.bbappend
> new file mode 100644
> index 000000000000..52371ff66afa
> --- /dev/null
> +++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.14.bbappend
> @@ -0,0 +1,23 @@
> +KBRANCH:genericx86  = "v5.14/standard/base"
> +KBRANCH:genericx86-64  = "v5.14/standard/base"
> +KBRANCH:edgerouter = "v5.14/standard/edgerouter"
> +KBRANCH:beaglebone-yocto = "v5.14/standard/beaglebone"
> +
> +KMACHINE:genericx86 ?= "common-pc"
> +KMACHINE:genericx86-64 ?= "common-pc-64"
> +KMACHINE:beaglebone-yocto ?= "beaglebone"
> +
> +SRCREV_machine:genericx86 ?= "7ae156be3bdbf033839f7f3ec2e9a0ffffb18818"
> +SRCREV_machine:genericx86-64 ?= "7ae156be3bdbf033839f7f3ec2e9a0ffffb18818"
> +SRCREV_machine:edgerouter ?= "7ae156be3bdbf033839f7f3ec2e9a0ffffb18818"
> +SRCREV_machine:beaglebone-yocto ?= "7ae156be3bdbf033839f7f3ec2e9a0ffffb18818"
> +
> +COMPATIBLE_MACHINE:genericx86 = "genericx86"
> +COMPATIBLE_MACHINE:genericx86-64 = "genericx86-64"
> +COMPATIBLE_MACHINE:edgerouter = "edgerouter"
> +COMPATIBLE_MACHINE:beaglebone-yocto = "beaglebone-yocto"
> +
> +LINUX_VERSION:genericx86 = "5.14.6"
> +LINUX_VERSION:genericx86-64 = "5.14.6"
> +LINUX_VERSION:edgerouter = "5.14.6"
> +LINUX_VERSION:beaglebone-yocto = "5.14.6"
> --
> 2.31.1
>


-- 
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II
