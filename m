Received: from mail-ed1-f65.google.com (mail-ed1-f65.google.com [209.85.208.65])
 by mx.groups.io with SMTP id smtpd.web10.5067.1581517586004245200
 for <poky@lists.yoctoproject.org>;
 Wed, 12 Feb 2020 06:26:26 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=CnMjAuHC;
 spf=pass (domain: gmail.com, ip: 209.85.208.65, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-ed1-f65.google.com with SMTP id dc19so2593030edb.10
        for <poky@lists.yoctoproject.org>; Wed, 12 Feb 2020 06:26:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=XF0onVKpA+ik/TViMwfR977DCcvwsbU6t1ZpLgNY3KU=;
        b=CnMjAuHCjp6UBsez2WWah+jK7gMo6VxND6vLSDwG+FUe2qLENQxcrObQcL7lrVwlsm
         Xz2fhxIiX5eFDRiq2GZSB4bJPHeaSe5MFphVExj983t4CqJ1PUXt1rVsGGL+Amn1nsoZ
         9Bcc8iNS/Hvo3aEV4wCoJ4+t7wdxrwRB7tWYgkmq1iV468EpkkPPP4e91nzs/vXjDVPG
         C28SIPG2BdwykjhHhCXaBzazj1vBlMJpZFCs7NS845TgYXUNxfk/N8Lk79rKP8wAwNWJ
         Yv9RcZ3hR5MZzIOlehLmZOW5ydgYaOuR31SiTpS6xPPV0RT00sv2ijGuj8bRDnw/rPN+
         A6KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=XF0onVKpA+ik/TViMwfR977DCcvwsbU6t1ZpLgNY3KU=;
        b=erpVsHAREWVHv/0dRUHxgZ475kdYTCjvPRz4gwAsOyL/98OtD1TjsjU0a3KJS9QNQ/
         xeap1Cr0A+rEcn1grTL9dsQ7I8iDPgt3la8dRGhga6tJNyRoL4TGRlqpSep/Pjg3FMhH
         RQourCnPK5UIeqnvxoP5Y8r0mrzLmnlFO6b6Y8So3uuClSdetdj+53X3vHYA9h0KLomc
         70obdbCGY+DWFntWP+y65n57Kw3DHcGS0ozyZPUptW0duIhft4HKUFdOZGuKLbEkUzbu
         mSqqasE9mxNZnQTQsdAMalCV8h2f2fw/QxzLdCC2pL8oS8jO7UA8jOMPUyRsp6PaX7xA
         Futw==
X-Gm-Message-State: APjAAAX37rSvPxFVkwF53np4tD3ALZ1hdcpSv3T5C6X902E7NvWvQMs6
	WCxSaohjB6qntuhnZ5iiM2RrlGCaU5D+shuTLQ0=
X-Google-Smtp-Source: APXvYqwWVtw5mJ6e2YRwWFa/Zoeu2D5cSg2QOq73xEH3sDHKyyqgP72G+jEEH5wxNhq3xRc+pjl/J0kFLJsXXqLk/7s=
X-Received: by 2002:a50:ee8d:: with SMTP id f13mr10406138edr.347.1581517584447;
 Wed, 12 Feb 2020 06:26:24 -0800 (PST)
MIME-Version: 1.0
References: <20200212034502.22149-1-kexin.hao@windriver.com>
In-Reply-To: <20200212034502.22149-1-kexin.hao@windriver.com>
From: "Bruce Ashfield" <bruce.ashfield@gmail.com>
Date: Wed, 12 Feb 2020 09:26:13 -0500
Message-ID: <CADkTA4OrqX7AKR8E7oj7-GdGqaASv01yPkCv84xU6ykZ9gqC1w@mail.gmail.com>
Subject: Re: [PATCH] meta-yocto-bsp: Bump to the v5.4 kernel for the non-x86 boards
To: Kevin Hao <kexin.hao@windriver.com>
Cc: poky@lists.yoctoproject.org, Anuj Mittal <anuj.mittal@intel.com>, 
	Richard Purdie <richard.purdie@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"

On Tue, Feb 11, 2020 at 10:58 PM Kevin Hao <kexin.hao@windriver.com> wrote:
>
> Build and boot test for the beaglebone and edgerouter.
>

Thanks Kevin!!!!

Looks good to me.

Bruce

> Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
> ---
>  meta-yocto-bsp/conf/machine/beaglebone-yocto.conf   |  2 +-
>  meta-yocto-bsp/conf/machine/edgerouter.conf         |  2 +-
>  .../recipes-kernel/linux/linux-yocto_5.4.bbappend   | 13 +++++++++++++
>  3 files changed, 15 insertions(+), 2 deletions(-)
>  create mode 100644 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend
>
> diff --git a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
> index 08dd3a5074ee..5b481434bd89 100644
> --- a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
> +++ b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
> @@ -24,7 +24,7 @@ SERIAL_CONSOLES ?= "115200;ttyS0 115200;ttyO0 115200;ttyAMA0"
>  SERIAL_CONSOLES_CHECK = "${SERIAL_CONSOLES}"
>
>  PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
> -PREFERRED_VERSION_linux-yocto ?= "5.2%"
> +PREFERRED_VERSION_linux-yocto ?= "5.4%"
>
>  KERNEL_IMAGETYPE = "zImage"
>  KERNEL_DEVICETREE = "am335x-bone.dtb am335x-boneblack.dtb am335x-bonegreen.dtb"
> diff --git a/meta-yocto-bsp/conf/machine/edgerouter.conf b/meta-yocto-bsp/conf/machine/edgerouter.conf
> index 6331368f87aa..d6fd934fa583 100644
> --- a/meta-yocto-bsp/conf/machine/edgerouter.conf
> +++ b/meta-yocto-bsp/conf/machine/edgerouter.conf
> @@ -11,7 +11,7 @@ KERNEL_ALT_IMAGETYPE = "vmlinux.bin"
>  KERNEL_IMAGE_STRIP_EXTRA_SECTIONS  = ".comment"
>
>  PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
> -PREFERRED_VERSION_linux-yocto ?= "5.2%"
> +PREFERRED_VERSION_linux-yocto ?= "5.4%"
>
>  SERIAL_CONSOLES = "115200;ttyS0"
>  USE_VT ?= "0"
> diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend
> new file mode 100644
> index 000000000000..fdcf8a7772ba
> --- /dev/null
> +++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend
> @@ -0,0 +1,13 @@
> +KBRANCH_edgerouter = "v5.4/standard/edgerouter"
> +KBRANCH_beaglebone-yocto = "v5.4/standard/beaglebone"
> +
> +KMACHINE_beaglebone-yocto ?= "beaglebone"
> +
> +SRCREV_machine_edgerouter ?= "cdda35317561d2741b396efa623ace0bd2212c16"
> +SRCREV_machine_beaglebone-yocto ?= "cdda35317561d2741b396efa623ace0bd2212c16"
> +
> +COMPATIBLE_MACHINE_edgerouter = "edgerouter"
> +COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
> +
> +LINUX_VERSION_edgerouter = "5.4.15"
> +LINUX_VERSION_beaglebone-yocto = "5.4.15"
> --
> 2.25.0.191.gde93cc14ab7e
>


-- 
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II
