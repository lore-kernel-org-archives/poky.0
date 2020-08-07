Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com [209.85.219.179])
 by mx.groups.io with SMTP id smtpd.web12.1038.1596759766540190793
 for <poky@lists.yoctoproject.org>;
 Thu, 06 Aug 2020 17:22:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@broadcom.com header.s=google header.b=K/zx8LOz;
 spf=permerror, err=parse error for token &{10 18 %{i}._ip.%{h}._ehlo.%{d}._spf.vali.email}: invalid domain name (domain: broadcom.com, ip: 209.85.219.179, mailfrom: jonathan.richardson@broadcom.com)
Received: by mail-yb1-f179.google.com with SMTP id q16so92631ybk.6
        for <poky@lists.yoctoproject.org>; Thu, 06 Aug 2020 17:22:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=ve5Cse01OgcFzNFakAUDuRJKzr6glTIOrP+CBJDEloo=;
        b=K/zx8LOz1QABRakdseCU2JOuo0mlyS9rH+yMnQiGWDwaue/WPd+xmr7eur9WkiFUwA
         sYZavgx2z8OSTXL8s9iiIII5AfokhIfDq/PiMUwyJcTbyz35/4ZbKXD2vr00CIj8gAlv
         XaURG2Z9vAgbrkvF5LzZMmxFpxFlhGFD+2CHM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=ve5Cse01OgcFzNFakAUDuRJKzr6glTIOrP+CBJDEloo=;
        b=uXjrFQEUIGr/hXfzsSsNiR0D0ZRdJP4eBnjApol0otP+QZuIW0/5OPP1gjyf1k5njH
         X08e/MeM6gQU+4RHw7NM6q8kZChXKSwKgubeXlOVrtvPGe9IetFrE3lvUO7pEWNQI5Se
         N/aPpwxS7ekRPocIOItk+2q1rYR46izXFi45otukCHUgPvZiFoBVenoIcmKntsqJhvCU
         DCRQmgwUAcFg0tHHPkkbX+a9I6nqLFhihD+5jOCQZu+rno6TZ8RKcDoGr8jddU+dP1lx
         DdhYp1TF+hok6wINRvIL0uZP3nMMDXmpqGzsueHieej1Ijh9GB03iQHFdeWGjzWZFzQP
         PS6w==
X-Gm-Message-State: AOAM531MNJcDj9m0kizeZIb418HdoFkiGAVPBz/K/TpYmoRFVTDPVujw
	/d4/tg5CCoO/I/aRaP24B14dTGH99YQLAl/gV9Va0bd4KCudKlyF
X-Google-Smtp-Source: ABdhPJwAjxkNk4iQJ3ILgQEjkUAIaigpASSGY3PZ88fQlwbctLPmGaWNiVfrykn0BFzaK/XkpuxM0F383CGUASMBcrw=
X-Received: by 2002:a25:810a:: with SMTP id o10mr17362229ybk.239.1596759765311;
 Thu, 06 Aug 2020 17:22:45 -0700 (PDT)
MIME-Version: 1.0
From: "Jonathan Richardson" <jonathan.richardson@broadcom.com>
Date: Thu, 6 Aug 2020 17:22:33 -0700
Message-ID: <CAHrpVsUkTgim53raUgXgkiGvpzrWZJVPFEBzU1YX0S03_ix-kg@mail.gmail.com>
Subject: TCLIBC with newlib
To: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm trying to create a toolchain using newlib as the libc. I set
TCLIBC="newlib". First error is:
ERROR: Nothing PROVIDES 'libgcc-dbg' (but
mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta-brcm/meta-stingray2/recipes-zephyr/brcm-zephyr/brcm-zephyr.bb
DEPENDS on or otherwise requires it). Close matches:
  libgcc
  libgcc RPROVIDES libgcc-dbg
ERROR: Required build target 'brcm-zephyr' has no buildable providers.
Missing or unbuildable dependency chain was: ['brcm-zephyr', 'libgcc-dbg']

This is caused by LIBC_DEPENDENCIES in
meta/conf/distro/include/tclibc-newlib.inc:
LIBC_DEPENDENCIES = "\
    newlib-dbg \
    newlib-dev \
    libgloss \
    libgloss-dev \
    libgloss-dbg \
    libgcc-dev \
    libgcc-dbg \
    libstdc++-dev \
    libstdc++-staticdev \
TOOLCHAIN_TARGET_TASK ?= "${LIBC_DEPENDENCIES}"

TOOLCHAIN_TARGET_TASK = "newlib libgloss" seems to fix it. Why are the
dev/dbg packages required as
dependencies and why does it think the recipes for libgloss, libgcc,
etc don't provide them?

Then libtool-cross fails when autoconf checks if the compiler works
because it can't find _exit().
So I added this to my local.conf:
EXTRA_OECONF_append_class_target = " LIBS=-lgloss-linux"
EXTRA_OECONF_append_class_cross = " LIBS=-lgloss-linux"

But it still fails:
configure:3833: arm-poky-eabi-gcc  -march=armv6s-m -mcpu=cortex-m0plus
-no-pie -fno-PIE
--sysroot=/home/jon/work/yocto/stingray2/poky/build/tmp-crmu/work/cortexm0-plus-poky-eabi/libtool-cross/2.4.6-r0/recipe-sysroot
 -O2 -pipe -g -feliminate-unused-debug-types
-fmacro-prefix-map=/home/jon/work/yocto/stingray2/poky/build/tmp-crmu/work/cortexm0-plus-poky-eabi/libtool-cross/2.4.6-r0=/usr/src/debug/libtool-cross/2.4.6-r0

-fdebug-prefix-map=/home/jon/work/yocto/stingray2/poky/build/tmp-crmu/work/cortexm0-plus-poky-eabi/libtool-cross/2.4.6-r0=/usr/src/debug/libtool-cross/2.4.6-r0

-fdebug-prefix-map=/home/jon/work/yocto/stingray2/poky/build/tmp-crmu/work/cortexm0-plus-poky-eabi/libtool-cross/2.4.6-r0/recipe-sysroot=

-fdebug-prefix-map=/home/jon/work/yocto/stingray2/poky/build/tmp-crmu/work/cortexm0-plus-poky-eabi/libtool-cross/2.4.6-r0/recipe-sysroot-native=
  -Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed  conftest.c
-Wl,-lgloss-linux >&5
/home/jon/work/yocto/stingray2/poky/build/tmp-crmu/work/cortexm0-plus-poky-eabi/libtool-cross/2.4.6-r0/recipe-sysroot-native/usr/bin/arm-poky-eabi/../../libexec/arm-poky-eabi/gcc/arm-poky-eabi/10.1.0/ld:
/home/jon/work/yocto/stingray2/poky/build/tmp-crmu/work/cortexm0-plus-poky-eabi/libtool-cross/2.4.6-r0/recipe-sysroot/usr/lib/libg.a(lib_a-exit.o):
in function `exit':
/usr/src/debug/newlib/3.3.0-r0/newlib-3.3.0/newlib/libc/stdlib/exit.c:64:
undefined reference to `_exit'

Has newlib ever been used to create a toolchain? I'm not sure what the
best way to work around all these
build tool dependencies is. Should we come up with a bunch of settings
and add them to tclibc.conf? I'm
wondering to what extent this has been tested.

Thanks,
Jon
