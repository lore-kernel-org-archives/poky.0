Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com [209.85.222.171])
 by mx.groups.io with SMTP id smtpd.web10.201.1596776330101602062
 for <poky@lists.yoctoproject.org>;
 Thu, 06 Aug 2020 21:58:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=NGziTw/3;
 spf=pass (domain: gmail.com, ip: 209.85.222.171, mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f171.google.com with SMTP id j187so685127qke.11
        for <poky@lists.yoctoproject.org>; Thu, 06 Aug 2020 21:58:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=4bfPN/EuEEVlGI1HmhVYPOqIVm3vLfUTrmTivcexuAE=;
        b=NGziTw/3Bmk6vf7E7E+og4OsJgJODNFl1PNCrVz0ShrZ/LxahkmHB7lLWMRD9hYtnR
         5nFpRsgd3yh4GrFzgi68BZ6PstQkLYDqRde6Zq/ee/Q1QVPeDnLLDSBg/chk38bYdCSe
         JJDDRdJLgpmaVFXgyPDlVaEXxV7f32gzfBkem/3lusQQT5cmJWNLE8ehXjsrW0beXK0U
         KQL3yNRQ/k4OaZ3eqJTsVfsGld4tss5pXAsqc9lU0PZLCrDNb1SPx45FpofUwaSwBmuI
         olKSPDhJo0+d9VdmfV2GBz9VUz0M0Qnu/dX7c/+TG64urQ2z4Tbw+pBNY6lrKjeV8PaY
         5NyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=4bfPN/EuEEVlGI1HmhVYPOqIVm3vLfUTrmTivcexuAE=;
        b=OxwiXzdDNcpvJw7NG/U7pSXH3e7bt8BU4kQGOCtj/K2Ui0QcEIU+Rn1JIFOy2UX69D
         CaJPs+F5nLROE0drp+RauTzRlql+I6D+6D0zujZ1HmQ8Q15v70RCH2iWdwWqoxGDXFvs
         hu4OxaSU2hOASg72h2v02i26+Mrj3h7V9YiGsYC6GUueiqQeobY0XtUYE54HL9g2BhQX
         Bs5gaoBaDos+/f67jxQapu62/bj6KakTT9kIP51BOSMe87xD1jsKCXzjKXXgqBHQHH0o
         01ocKOw/8zjNoN/BahB1FqLTf+YPfZ/nWUKUDbK37ozv5TefObySASA+lOMghGSyexgO
         n7Eg==
X-Gm-Message-State: AOAM533zQ1q83H7tie3SedwejCHiituAeuZsqPwKLamz7epEGKy3DFKK
	5WJLqIwrOMgVSocxIkeArgDlqjzlda33cJNdBzE=
X-Google-Smtp-Source: ABdhPJxWRKG4p8CxEyqlMmcVaSGB+StfpRn/4s7k2rwuV2Lgxmik9a6e0gThoUZfbLVNQQ8Le4VaRDsBiyRJzOCOOa8=
X-Received: by 2002:a37:7081:: with SMTP id l123mr10672769qkc.225.1596776329125;
 Thu, 06 Aug 2020 21:58:49 -0700 (PDT)
MIME-Version: 1.0
References: <CAHrpVsUkTgim53raUgXgkiGvpzrWZJVPFEBzU1YX0S03_ix-kg@mail.gmail.com>
In-Reply-To: <CAHrpVsUkTgim53raUgXgkiGvpzrWZJVPFEBzU1YX0S03_ix-kg@mail.gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Thu, 6 Aug 2020 21:58:22 -0700
Message-ID: <CAMKF1so6iTZNupBciUh8dgUQDWQ1-YH7iUy=RU4YFMrx77mqDA@mail.gmail.com>
Subject: Re: [poky] TCLIBC with newlib
To: Jonathan Richardson <jonathan.richardson@broadcom.com>
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On Thu, Aug 6, 2020 at 5:22 PM Jonathan Richardson via
lists.yoctoproject.org
<jonathan.richardson=broadcom.com@lists.yoctoproject.org> wrote:
>
> Hi,
>
> I'm trying to create a toolchain using newlib as the libc. I set
> TCLIBC="newlib". First error is:
> ERROR: Nothing PROVIDES 'libgcc-dbg' (but
> mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta-brcm/meta-stingray2/recipes-zephyr/brcm-zephyr/brcm-zephyr.bb
> DEPENDS on or otherwise requires it). Close matches:
>   libgcc
>   libgcc RPROVIDES libgcc-dbg
> ERROR: Required build target 'brcm-zephyr' has no buildable providers.
> Missing or unbuildable dependency chain was: ['brcm-zephyr', 'libgcc-dbg']
>
> This is caused by LIBC_DEPENDENCIES in
> meta/conf/distro/include/tclibc-newlib.inc:
> LIBC_DEPENDENCIES = "\
>     newlib-dbg \
>     newlib-dev \
>     libgloss \
>     libgloss-dev \
>     libgloss-dbg \
>     libgcc-dev \
>     libgcc-dbg \
>     libstdc++-dev \
>     libstdc++-staticdev \

Remove all -dbg packages from above list.

> TOOLCHAIN_TARGET_TASK ?= "${LIBC_DEPENDENCIES}"
>
> TOOLCHAIN_TARGET_TASK = "newlib libgloss" seems to fix it. Why are the
> dev/dbg packages required as
> dependencies and why does it think the recipes for libgloss, libgcc,
> etc don't provide them?
>
> Then libtool-cross fails when autoconf checks if the compiler works
> because it can't find _exit().
> So I added this to my local.conf:
> EXTRA_OECONF_append_class_target = " LIBS=-lgloss-linux"
> EXTRA_OECONF_append_class_cross = " LIBS=-lgloss-linux"

It should be EXTRA_OECONF_append_class-target and
EXTRA_OECONF_append_class-cross, there is a underscore there instead
of '-'
>
> But it still fails:
> configure:3833: arm-poky-eabi-gcc  -march=armv6s-m -mcpu=cortex-m0plus
> -no-pie -fno-PIE
> --sysroot=/home/jon/work/yocto/stingray2/poky/build/tmp-crmu/work/cortexm0-plus-poky-eabi/libtool-cross/2.4.6-r0/recipe-sysroot
>  -O2 -pipe -g -feliminate-unused-debug-types
> -fmacro-prefix-map=/home/jon/work/yocto/stingray2/poky/build/tmp-crmu/work/cortexm0-plus-poky-eabi/libtool-cross/2.4.6-r0=/usr/src/debug/libtool-cross/2.4.6-r0
>
> -fdebug-prefix-map=/home/jon/work/yocto/stingray2/poky/build/tmp-crmu/work/cortexm0-plus-poky-eabi/libtool-cross/2.4.6-r0=/usr/src/debug/libtool-cross/2.4.6-r0
>
> -fdebug-prefix-map=/home/jon/work/yocto/stingray2/poky/build/tmp-crmu/work/cortexm0-plus-poky-eabi/libtool-cross/2.4.6-r0/recipe-sysroot=
>
> -fdebug-prefix-map=/home/jon/work/yocto/stingray2/poky/build/tmp-crmu/work/cortexm0-plus-poky-eabi/libtool-cross/2.4.6-r0/recipe-sysroot-native=
>   -Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed  conftest.c
> -Wl,-lgloss-linux >&5
> /home/jon/work/yocto/stingray2/poky/build/tmp-crmu/work/cortexm0-plus-poky-eabi/libtool-cross/2.4.6-r0/recipe-sysroot-native/usr/bin/arm-poky-eabi/../../libexec/arm-poky-eabi/gcc/arm-poky-eabi/10.1.0/ld:
> /home/jon/work/yocto/stingray2/poky/build/tmp-crmu/work/cortexm0-plus-poky-eabi/libtool-cross/2.4.6-r0/recipe-sysroot/usr/lib/libg.a(lib_a-exit.o):
> in function `exit':
> /usr/src/debug/newlib/3.3.0-r0/newlib-3.3.0/newlib/libc/stdlib/exit.c:64:
> undefined reference to `_exit'
>
> Has newlib ever been used to create a toolchain? I'm not sure what the
> best way to work around all these
> build tool dependencies is. Should we come up with a bunch of settings
> and add them to tclibc.conf? I'm
> wondering to what extent this has been tested.
>
> Thanks,
> Jon
> 
