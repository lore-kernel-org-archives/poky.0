Received: from mail-yb1-f194.google.com (mail-yb1-f194.google.com [209.85.219.194])
 by mx.groups.io with SMTP id smtpd.web11.1228.1596842782642585275
 for <poky@lists.yoctoproject.org>;
 Fri, 07 Aug 2020 16:26:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@broadcom.com header.s=google header.b=TdjcxCQx;
 spf=permerror, err=parse error for token &{10 18 %{i}._ip.%{h}._ehlo.%{d}._spf.vali.email}: invalid domain name (domain: broadcom.com, ip: 209.85.219.194, mailfrom: jonathan.richardson@broadcom.com)
Received: by mail-yb1-f194.google.com with SMTP id e187so1847255ybc.5
        for <poky@lists.yoctoproject.org>; Fri, 07 Aug 2020 16:26:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=cXDovuUwKj7t2+UhnlpD3nUNhe1a2OKAGw6TRx67lso=;
        b=TdjcxCQxUM6MX2a0Ox9xIgPXNHcooirktUugpNDiOPvvXcKWNckbBwUyD+Szz5eMfX
         YGbj2GJNXOGSymH+qFfRHXkFhUFJZz8jrfECPNdSytqfGlv9Xp7typl+Qz7QRMOZ6BBb
         IAT1acL96EMWpdtOAVYzILUPcxWoYh3Fh9Xr4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=cXDovuUwKj7t2+UhnlpD3nUNhe1a2OKAGw6TRx67lso=;
        b=Lhe/1+/ucjCrNCDdz+w7MQ4CubQDgbwS6y8QfmR+MK4nTOkKmiV1sI119su7WxVt9x
         ovZOLpOYyRmUY4EV8NAm0mFNx2bIRo/OVjHkyTAvosVC+lc0IXQWfrxEDTFYDDz8YeXP
         +OUhrQvohCqJ//HpC3eh5ghl+5Dz90XOEzmtfafOhbtjdCNCb8a5OEUkp8xPLs4Pz1so
         fZcSbCd1SuQmDrWs4MoV/e4ep6+cqmVFO7KjWd13se4CKOHjcy2uE9BikeQaa7SGKwAC
         bl5SKLhWLQp6qDlm9WrHbFxGxG6T8J1t+dVUmxjJvVKBTpGszN8TpPJtxRDjc9qMnQHq
         lROw==
X-Gm-Message-State: AOAM530T112KIJh8W21qfZEWVtFJvfMKE3y5gJR7sIMb10IXRt0V135T
	V+EnODuaoFMztwt6reKKeO/uUPSp91kNo1d8HX+Qpg==
X-Google-Smtp-Source: ABdhPJzFFgxIOG2DLrMdYQ69rEp94+ezVQZY7Wt2osCYlyD7cbjyHpbTuNZt63Va5p/g6F5aA28hksZmkDat1vEXBEQ=
X-Received: by 2002:a5b:503:: with SMTP id o3mr23109407ybp.194.1596842781534;
 Fri, 07 Aug 2020 16:26:21 -0700 (PDT)
MIME-Version: 1.0
References: <CAHrpVsUkTgim53raUgXgkiGvpzrWZJVPFEBzU1YX0S03_ix-kg@mail.gmail.com>
 <CAMKF1so6iTZNupBciUh8dgUQDWQ1-YH7iUy=RU4YFMrx77mqDA@mail.gmail.com>
In-Reply-To: <CAMKF1so6iTZNupBciUh8dgUQDWQ1-YH7iUy=RU4YFMrx77mqDA@mail.gmail.com>
From: "Jonathan Richardson" <jonathan.richardson@broadcom.com>
Date: Fri, 7 Aug 2020 16:26:10 -0700
Message-ID: <CAHrpVsVvD55j=BHjN2Jv+b71A8rOTVpYYoaMKAyF_zFcXMUw6A@mail.gmail.com>
Subject: Re: [poky] TCLIBC with newlib
To: Khem Raj <raj.khem@gmail.com>
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On Thu, Aug 6, 2020 at 9:58 PM Khem Raj <raj.khem@gmail.com> wrote:
>
> On Thu, Aug 6, 2020 at 5:22 PM Jonathan Richardson via
> lists.yoctoproject.org
> <jonathan.richardson=broadcom.com@lists.yoctoproject.org> wrote:
> >
> > Hi,
> >
> > I'm trying to create a toolchain using newlib as the libc. I set
> > TCLIBC="newlib". First error is:
> > ERROR: Nothing PROVIDES 'libgcc-dbg' (but
> > mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta-brcm/meta-stingray2/recipes-zephyr/brcm-zephyr/brcm-zephyr.bb
> > DEPENDS on or otherwise requires it). Close matches:
> >   libgcc
> >   libgcc RPROVIDES libgcc-dbg
> > ERROR: Required build target 'brcm-zephyr' has no buildable providers.
> > Missing or unbuildable dependency chain was: ['brcm-zephyr', 'libgcc-dbg']
> >
> > This is caused by LIBC_DEPENDENCIES in
> > meta/conf/distro/include/tclibc-newlib.inc:
> > LIBC_DEPENDENCIES = "\
> >     newlib-dbg \
> >     newlib-dev \
> >     libgloss \
> >     libgloss-dev \
> >     libgloss-dbg \
> >     libgcc-dev \
> >     libgcc-dbg \
> >     libstdc++-dev \
> >     libstdc++-staticdev \
>
> Remove all -dbg packages from above list.
>
> > TOOLCHAIN_TARGET_TASK ?= "${LIBC_DEPENDENCIES}"
> >
> > TOOLCHAIN_TARGET_TASK = "newlib libgloss" seems to fix it. Why are the
> > dev/dbg packages required as
> > dependencies and why does it think the recipes for libgloss, libgcc,
> > etc don't provide them?
> >
> > Then libtool-cross fails when autoconf checks if the compiler works
> > because it can't find _exit().
> > So I added this to my local.conf:
> > EXTRA_OECONF_append_class_target = " LIBS=-lgloss-linux"
> > EXTRA_OECONF_append_class_cross = " LIBS=-lgloss-linux"
>
> It should be EXTRA_OECONF_append_class-target and
> EXTRA_OECONF_append_class-cross, there is a underscore there instead
> of '-'

Thanks. More than this is required though. I added this so far:

diff --git a/meta/classes/base.bbclass b/meta/classes/base.bbclass
index 6776242740..262db927cd 100644
--- a/meta/classes/base.bbclass
+++ b/meta/classes/base.bbclass
@@ -75,6 +75,7 @@ BASE_DEFAULT_DEPS = "virtual/${TARGET_PREFIX}gcc
virtual/${TARGET_PREFIX}compile

 BASEDEPENDS = ""
 BASEDEPENDS_class-target = "${@base_dep_prepend(d)}"
+BASEDEPENDS_class-cross = "${@base_dep_prepend(d)}"
 BASEDEPENDS_class-nativesdk = "${@base_dep_prepend(d)}"

 DEPENDS_prepend="${BASEDEPENDS} "
diff --git a/meta/conf/distro/include/tclibc-newlib.inc
b/meta/conf/distro/include/tclibc-newlib.inc
index bf89b11288..cb55f3a82c 100644
--- a/meta/conf/distro/include/tclibc-newlib.inc
+++ b/meta/conf/distro/include/tclibc-newlib.inc
@@ -18,13 +18,10 @@ DISTRO_FEATURES_BACKFILL_CONSIDERED += "ldconfig"
 IMAGE_LINGUAS = ""

 LIBC_DEPENDENCIES = "\
-    newlib-dbg \
     newlib-dev \
     libgloss \
     libgloss-dev \
-    libgloss-dbg \
     libgcc-dev \
-    libgcc-dbg \
     libstdc++-dev \
     libstdc++-staticdev \
     "
@@ -34,6 +31,7 @@ ASSUME_PROVIDED += "virtual/crypt"
 # Its useful to be able to extend newlib, but we dont provide a
native variant of libgloss
 NEWLIB_EXTENDED ?=  "libgloss libgcc"
 BASE_DEFAULT_DEPS_append_class-target = " ${NEWLIB_EXTENDED}"
+BASE_DEFAULT_DEPS_append_class-cross = " ${NEWLIB_EXTENDED}"

 TARGET_OS = "elf"
 TARGET_OS_arm = "eabi"
@@ -45,3 +43,9 @@ TOOLCHAIN_NEED_CONFIGSITE_CACHE_remove = "zlib ncurses"
 # disable pie security flags by default
 SECURITY_CFLAGS_libc-newlib = "${SECURITY_NOPIE_CFLAGS}"
 SECURITY_LDFLAGS_libc-newlib = ""
+
+EXTRA_OECONF_append_class-target = " LIBS=-lgloss-linux"
+EXTRA_OECONF_append_class-cross = " LIBS=-lgloss-linux"
+# binutils-cross.inc sets INHIBIT_DEFAULT_DEPS = "1" which will cause
BASEDEBPENDS to not
+# include libgloss which causes the autoconf compiler check to fail.
+DEPENDS_append_pn-binutils-cross-arm = " libgloss"

Adding the dependency to binutils-cross-arm causes circular
dependencies though. I don't know
what's going on here:

Dependency loop #1 found:
  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-core/newlib/libgloss_3.3.0.bb:do_compile
(dependent Tasks ['libgloss_3.3.0.bb:do_configure'])
  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-core/newlib/libgloss_3.3.0.bb:do_install
(dependent Tasks ['pseudo_git.bb:do_populate_sysroot',
'libgloss_3.3.0.bb:do_compile'])
  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-core/newlib/libgloss_3.3.0.bb:do_populate_sysroot
(dependent Tasks ['binutils-cross_2.34.bb:do_populate_sysroot',
'libgloss_3.3.0.bb:do_install'])
  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/binutils/binutils-cross_2.34.bb:do_prepare_recipe_sysroot
(dependent Tasks ['flex_2.6.4.bb:do_populate_sysroot',
'libgloss_3.3.0.bb:do_populate_sysroot',
'binutils-cross_2.34.bb:do_fetch',
'texinfo-dummy-native.bb:do_populate_sysroot',
'gnu-config_git.bb:do_populate_sysroot',
'bison_3.6.4.bb:do_populate_sysroot',
'autoconf_2.69.bb:do_populate_sysroot',
'zlib_1.2.11.bb:do_populate_sysroot'])
  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/binutils/binutils-cross_2.34.bb:do_configure
(dependent Tasks
['binutils-cross_2.34.bb:do_deploy_source_date_epoch',
'binutils-cross_2.34.bb:do_prepare_recipe_sysroot',
'binutils-cross_2.34.bb:do_patch'])
  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/binutils/binutils-cross_2.34.bb:do_compile
(dependent Tasks ['binutils-cross_2.34.bb:do_configure'])
  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/binutils/binutils-cross_2.34.bb:do_install
(dependent Tasks ['binutils-cross_2.34.bb:do_compile'])
  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/binutils/binutils-cross_2.34.bb:do_populate_sysroot
(dependent Tasks ['binutils-cross_2.34.bb:do_install'])
  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/gcc/gcc-cross_10.1.bb:do_prepare_recipe_sysroot
(dependent Tasks ['flex_2.6.4.bb:do_populate_sysroot',
'gcc-cross_10.1.bb:do_fetch',
'libtool-native_2.4.6.bb:do_populate_sysroot',
'mpfr_4.1.0.bb:do_populate_sysroot',
'gmp_6.2.0.bb:do_populate_sysroot',
'libmpc_1.1.0.bb:do_populate_sysroot',
'texinfo-dummy-native.bb:do_populate_sysroot',
'gnu-config_git.bb:do_populate_sysroot',
'binutils-cross_2.34.bb:do_populate_sysroot',
'autoconf_2.69.bb:do_populate_sysroot',
'automake_1.16.2.bb:do_populate_sysroot',
'zlib_1.2.11.bb:do_populate_sysroot'])
  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/gcc/gcc-cross_10.1.bb:do_configure
(dependent Tasks ['gcc-cross_10.1.bb:do_prepare_recipe_sysroot',
'gcc-cross_10.1.bb:do_deploy_source_date_epoch',
'gcc-source_10.1.bb:do_preconfigure'])
  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/gcc/gcc-cross_10.1.bb:do_compile
(dependent Tasks ['gcc-cross_10.1.bb:do_configure'])
  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/gcc/gcc-cross_10.1.bb:do_install
(dependent Tasks ['gcc-cross_10.1.bb:do_compile',
'gcc-cross_10.1.bb:do_gcc_stash_builddir'])
  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/gcc/gcc-cross_10.1.bb:do_populate_sysroot
(dependent Tasks ['gcc-cross_10.1.bb:do_install'])
  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-core/newlib/libgloss_3.3.0.bb:do_prepare_recipe_sysroot
(dependent Tasks ['newlib_3.3.0.bb:do_populate_sysroot',
'libgloss_3.3.0.bb:do_fetch', 'pseudo_git.bb:do_populate_sysroot',
'gcc-cross_10.1.bb:do_populate_sysroot'])
  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-core/newlib/libgloss_3.3.0.bb:do_configure
(dependent Tasks ['libgloss_3.3.0.bb:do_deploy_source_date_epoch',
'libgloss_3.3.0.bb:do_prepare_recipe_sysroot',
'libgloss_3.3.0.bb:do_patch'])

Dependency loop #2 found:
  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-core/newlib/libgloss_3.3.0.bb:do_compile
(dependent Tasks ['libgloss_3.3.0.bb:do_configure'])
  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-core/newlib/libgloss_3.3.0.bb:do_install
(dependent Tasks ['pseudo_git.bb:do_populate_sysroot',
'libgloss_3.3.0.bb:do_compile'])
  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-core/newlib/libgloss_3.3.0.bb:do_populate_sysroot
(dependent Tasks ['binutils-cross_2.34.bb:do_populate_sysroot',
'libgloss_3.3.0.bb:do_install'])
  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/binutils/binutils-cross_2.34.bb:do_prepare_recipe_sysroot
(dependent Tasks ['flex_2.6.4.bb:do_populate_sysroot',
'libgloss_3.3.0.bb:do_populate_sysroot',
'binutils-cross_2.34.bb:do_fetch',
'texinfo-dummy-native.bb:do_populate_sysroot',
'gnu-config_git.bb:do_populate_sysroot',
'bison_3.6.4.bb:do_populate_sysroot',
'autoconf_2.69.bb:do_populate_sysroot',
'zlib_1.2.11.bb:do_populate_sysroot'])
  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/binutils/binutils-cross_2.34.bb:do_configure
(dependent Tasks
['binutils-cross_2.34.bb:do_deploy_source_date_epoch',
'binutils-cross_2.34.bb:do_prepare_recipe_sysroot',
'binutils-cross_2.34.bb:do_patch'])
  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/binutils/binutils-cross_2.34.bb:do_compile
(dependent Tasks ['binutils-cross_2.34.bb:do_configure'])
  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/binutils/binutils-cross_2.34.bb:do_install
(dependent Tasks ['binutils-cross_2.34.bb:do_compile'])
  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/binutils/binutils-cross_2.34.bb:do_populate_sysroot
(dependent Tasks ['binutils-cross_2.34.bb:do_install'])
  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/gcc/gcc-cross_10.1.bb:do_prepare_recipe_sysroot
(dependent Tasks ['flex_2.6.4.bb:do_populate_sysroot',
'gcc-cross_10.1.bb:do_fetch',
'libtool-native_2.4.6.bb:do_populate_sysroot',
'mpfr_4.1.0.bb:do_populate_sysroot',
'gmp_6.2.0.bb:do_populate_sysroot',
'libmpc_1.1.0.bb:do_populate_sysroot',
'texinfo-dummy-native.bb:do_populate_sysroot',
'gnu-config_git.bb:do_populate_sysroot',
'binutils-cross_2.34.bb:do_populate_sysroot',
'autoconf_2.69.bb:do_populate_sysroot',
'automake_1.16.2.bb:do_populate_sysroot',
'zlib_1.2.11.bb:do_populate_sysroot'])
  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/gcc/gcc-cross_10.1.bb:do_configure
(dependent Tasks ['gcc-cross_10.1.bb:do_prepare_recipe_sysroot',
'gcc-cross_10.1.bb:do_deploy_source_date_epoch',
'gcc-source_10.1.bb:do_preconfigure'])
  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/gcc/gcc-cross_10.1.bb:do_compile
(dependent Tasks ['gcc-cross_10.1.bb:do_configure'])
  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/gcc/gcc-cross_10.1.bb:do_install
(dependent Tasks ['gcc-cross_10.1.bb:do_compile',
'gcc-cross_10.1.bb:do_gcc_stash_builddir'])
  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/gcc/gcc-cross_10.1.bb:do_populate_sysroot
(dependent Tasks ['gcc-cross_10.1.bb:do_install'])
  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-core/newlib/newlib_3.3.0.bb:do_prepare_recipe_sysroot
(dependent Tasks ['gcc-cross_10.1.bb:do_populate_sysroot',
'pseudo_git.bb:do_populate_sysroot', 'newlib_3.3.0.bb:do_fetch'])
  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-core/newlib/newlib_3.3.0.bb:do_configure
(dependent Tasks ['newlib_3.3.0.bb:do_deploy_source_date_epoch',
'newlib_3.3.0.bb:do_prepare_recipe_sysroot',
'newlib_3.3.0.bb:do_patch'])
  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-core/newlib/newlib_3.3.0.bb:do_compile
(dependent Tasks ['newlib_3.3.0.bb:do_configure'])
  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-core/newlib/newlib_3.3.0.bb:do_install
(dependent Tasks ['newlib_3.3.0.bb:do_compile',
'pseudo_git.bb:do_populate_sysroot'])
  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-core/newlib/newlib_3.3.0.bb:do_populate_sysroot
(dependent Tasks ['newlib_3.3.0.bb:do_install',
'binutils-cross_2.34.bb:do_populate_sysroot'])
  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-core/newlib/libgloss_3.3.0.bb:do_prepare_recipe_sysroot
(dependent Tasks ['newlib_3.3.0.bb:do_populate_sysroot',
'libgloss_3.3.0.bb:do_fetch', 'pseudo_git.bb:do_populate_sysroot',
'gcc-cross_10.1.bb:do_populate_sysroot'])
  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-core/newlib/libgloss_3.3.0.bb:do_configure
(dependent Tasks ['libgloss_3.3.0.bb:do_deploy_source_date_epoch',
'libgloss_3.3.0.bb:do_prepare_recipe_sysroot',
'libgloss_3.3.0.bb:do_patch'])

Dependency loop #3 found:
  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-core/newlib/libgloss_3.3.0.bb:do_compile
(dependent Tasks ['libgloss_3.3.0.bb:do_configure'])
  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-core/newlib/libgloss_3.3.0.bb:do_install
(dependent Tasks ['pseudo_git.bb:do_populate_sysroot',
'libgloss_3.3.0.bb:do_compile'])
  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-core/newlib/libgloss_3.3.0.bb:do_populate_sysroot
(dependent Tasks ['binutils-cross_2.34.bb:do_populate_sysroot',
'libgloss_3.3.0.bb:do_install'])
  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/binutils/binutils-cross_2.34.bb:do_prepare_recipe_sysroot
(dependent Tasks ['flex_2.6.4.bb:do_populate_sysroot',
'libgloss_3.3.0.bb:do_populate_sysroot',
'binutils-cross_2.34.bb:do_fetch',
'texinfo-dummy-native.bb:do_populate_sysroot',
'gnu-config_git.bb:do_populate_sysroot',
'bison_3.6.4.bb:do_populate_sysroot',
'autoconf_2.69.bb:do_populate_sysroot',
'zlib_1.2.11.bb:do_populate_sysroot'])
  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/binutils/binutils-cross_2.34.bb:do_configure
(dependent Tasks
['binutils-cross_2.34.bb:do_deploy_source_date_epoch',
'binutils-cross_2.34.bb:do_prepare_recipe_sysroot',
'binutils-cross_2.34.bb:do_patch'])
  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/binutils/binutils-cross_2.34.bb:do_compile
(dependent Tasks ['binutils-cross_2.34.bb:do_configure'])
  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/binutils/binutils-cross_2.34.bb:do_install
(dependent Tasks ['binutils-cross_2.34.bb:do_compile'])
  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/binutils/binutils-cross_2.34.bb:do_populate_sysroot
(dependent Tasks ['binutils-cross_2.34.bb:do_install'])
  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/gcc/gcc-cross_10.1.bb:do_prepare_recipe_sysroot
(dependent Tasks ['flex_2.6.4.bb:do_populate_sysroot',
'gcc-cross_10.1.bb:do_fetch',
'libtool-native_2.4.6.bb:do_populate_sysroot',
'mpfr_4.1.0.bb:do_populate_sysroot',
'gmp_6.2.0.bb:do_populate_sysroot',
'libmpc_1.1.0.bb:do_populate_sysroot',
'texinfo-dummy-native.bb:do_populate_sysroot',
'gnu-config_git.bb:do_populate_sysroot',
'binutils-cross_2.34.bb:do_populate_sysroot',
'autoconf_2.69.bb:do_populate_sysroot',
'automake_1.16.2.bb:do_populate_sysroot',
'zlib_1.2.11.bb:do_populate_sysroot'])
  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/gcc/gcc-cross_10.1.bb:do_configure
(dependent Tasks ['gcc-cross_10.1.bb:do_prepare_recipe_sysroot',
'gcc-cross_10.1.bb:do_deploy_source_date_epoch',
'gcc-source_10.1.bb:do_preconfigure'])
  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/gcc/gcc-cross_10.1.bb:do_compile
(dependent Tasks ['gcc-cross_10.1.bb:do_configure'])
  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/gcc/gcc-cross_10.1.bb:do_gcc_stash_builddir
(dependent Tasks ['gcc-cross_10.1.bb:do_compile'])
  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/gcc/gcc-cross_10.1.bb:do_install
(dependent Tasks ['gcc-cross_10.1.bb:do_compile',
'gcc-cross_10.1.bb:do_gcc_stash_builddir'])
  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/gcc/gcc-cross_10.1.bb:do_populate_sysroot
(dependent Tasks ['gcc-cross_10.1.bb:do_install'])
  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-core/newlib/libgloss_3.3.0.bb:do_prepare_recipe_sysroot
(dependent Tasks ['newlib_3.3.0.bb:do_populate_sysroot',
'libgloss_3.3.0.bb:do_fetch', 'pseudo_git.bb:do_populate_sysroot',
'gcc-cross_10.1.bb:do_populate_sysroot'])
  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-core/newlib/libgloss_3.3.0.bb:do_configure
(dependent Tasks ['libgloss_3.3.0.bb:do_deploy_source_date_epoch',
'libgloss_3.3.0.bb:do_prepare_recipe_sysroot',
'libgloss_3.3.0.bb:do_patch'])

Dependency loop #4 found:
  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-core/newlib/libgloss_3.3.0.bb:do_compile
(dependent Tasks ['libgloss_3.3.0.bb:do_configure'])
  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-core/newlib/libgloss_3.3.0.bb:do_install
(dependent Tasks ['pseudo_git.bb:do_populate_sysroot',
'libgloss_3.3.0.bb:do_compile'])
  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-core/newlib/libgloss_3.3.0.bb:do_populate_sysroot
(dependent Tasks ['binutils-cross_2.34.bb:do_populate_sysroot',
'libgloss_3.3.0.bb:do_install'])
  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/binutils/binutils-cross_2.34.bb:do_prepare_recipe_sysroot
(dependent Tasks ['flex_2.6.4.bb:do_populate_sysroot',
'libgloss_3.3.0.bb:do_populate_sysroot',
'binutils-cross_2.34.bb:do_fetch',
'texinfo-dummy-native.bb:do_populate_sysroot',
'gnu-config_git.bb:do_populate_sysroot',
'bison_3.6.4.bb:do_populate_sysroot',
'autoconf_2.69.bb:do_populate_sysroot',
'zlib_1.2.11.bb:do_populate_sysroot'])
  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/binutils/binutils-cross_2.34.bb:do_configure
(dependent Tasks
['binutils-cross_2.34.bb:do_deploy_source_date_epoch',
'binutils-cross_2.34.bb:do_prepare_recipe_sysroot',
'binutils-cross_2.34.bb:do_patch'])
  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/binutils/binutils-cross_2.34.bb:do_compile
(dependent Tasks ['binutils-cross_2.34.bb:do_configure'])
  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/binutils/binutils-cross_2.34.bb:do_install
(dependent Tasks ['binutils-cross_2.34.bb:do_compile'])
  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/binutils/binutils-cross_2.34.bb:do_populate_sysroot
(dependent Tasks ['binutils-cross_2.34.bb:do_install'])
  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/gcc/gcc-cross_10.1.bb:do_prepare_recipe_sysroot
(dependent Tasks ['flex_2.6.4.bb:do_populate_sysroot',
'gcc-cross_10.1.bb:do_fetch',
'libtool-native_2.4.6.bb:do_populate_sysroot',
'mpfr_4.1.0.bb:do_populate_sysroot',
'gmp_6.2.0.bb:do_populate_sysroot',
'libmpc_1.1.0.bb:do_populate_sysroot',
'texinfo-dummy-native.bb:do_populate_sysroot',
'gnu-config_git.bb:do_populate_sysroot',
'binutils-cross_2.34.bb:do_populate_sysroot',
'autoconf_2.69.bb:do_populate_sysroot',
'automake_1.16.2.bb:do_populate_sysroot',
'zlib_1.2.11.bb:do_populate_sysroot'])
  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/gcc/gcc-cross_10.1.bb:do_configure
(dependent Tasks ['gcc-cross_10.1.bb:do_prepare_recipe_sysroot',
'gcc-cross_10.1.bb:do_deploy_source_date_epoch',
'gcc-source_10.1.bb:do_preconfigure'])
  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/gcc/gcc-cross_10.1.bb:do_compile
(dependent Tasks ['gcc-cross_10.1.bb:do_configure'])
  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/gcc/gcc-cross_10.1.bb:do_gcc_stash_builddir
(dependent Tasks ['gcc-cross_10.1.bb:do_compile'])
  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/gcc/gcc-cross_10.1.bb:do_install
(dependent Tasks ['gcc-cross_10.1.bb:do_compile',
'gcc-cross_10.1.bb:do_gcc_stash_builddir'])
  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/gcc/gcc-cross_10.1.bb:do_populate_sysroot
(dependent Tasks ['gcc-cross_10.1.bb:do_install'])
  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-core/newlib/newlib_3.3.0.bb:do_prepare_recipe_sysroot
(dependent Tasks ['gcc-cross_10.1.bb:do_populate_sysroot',
'pseudo_git.bb:do_populate_sysroot', 'newlib_3.3.0.bb:do_fetch'])
  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-core/newlib/newlib_3.3.0.bb:do_configure
(dependent Tasks ['newlib_3.3.0.bb:do_deploy_source_date_epoch',
'newlib_3.3.0.bb:do_prepare_recipe_sysroot',
'newlib_3.3.0.bb:do_patch'])
  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-core/newlib/newlib_3.3.0.bb:do_compile
(dependent Tasks ['newlib_3.3.0.bb:do_configure'])
  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-core/newlib/newlib_3.3.0.bb:do_install
(dependent Tasks ['newlib_3.3.0.bb:do_compile',
'pseudo_git.bb:do_populate_sysroot'])
  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-core/newlib/newlib_3.3.0.bb:do_populate_sysroot
(dependent Tasks ['newlib_3.3.0.bb:do_install',
'binutils-cross_2.34.bb:do_populate_sysroot'])
  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-core/newlib/libgloss_3.3.0.bb:do_prepare_recipe_sysroot
(dependent Tasks ['newlib_3.3.0.bb:do_populate_sysroot',
'libgloss_3.3.0.bb:do_fetch', 'pseudo_git.bb:do_populate_sysroot',
'gcc-cross_10.1.bb:do_populate_sysroot'])
  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-core/newlib/libgloss_3.3.0.bb:do_configure
(dependent Tasks ['libgloss_3.3.0.bb:do_deploy_source_date_epoch',
'libgloss_3.3.0.bb:do_prepare_recipe_sysroot',
'libgloss_3.3.0.bb:do_patch'])

Dependency loop #5 found:
  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-core/newlib/libgloss_3.3.0.bb:do_compile
(dependent Tasks ['libgloss_3.3.0.bb:do_configure'])
  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-core/newlib/libgloss_3.3.0.bb:do_install
(dependent Tasks ['pseudo_git.bb:do_populate_sysroot',
'libgloss_3.3.0.bb:do_compile'])
  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-core/newlib/libgloss_3.3.0.bb:do_populate_sysroot
(dependent Tasks ['binutils-cross_2.34.bb:do_populate_sysroot',
'libgloss_3.3.0.bb:do_install'])
  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/binutils/binutils-cross_2.34.bb:do_prepare_recipe_sysroot
(dependent Tasks ['flex_2.6.4.bb:do_populate_sysroot',
'libgloss_3.3.0.bb:do_populate_sysroot',
'binutils-cross_2.34.bb:do_fetch',
'texinfo-dummy-native.bb:do_populate_sysroot',
'gnu-config_git.bb:do_populate_sysroot',
'bison_3.6.4.bb:do_populate_sysroot',
'autoconf_2.69.bb:do_populate_sysroot',
'zlib_1.2.11.bb:do_populate_sysroot'])
  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/binutils/binutils-cross_2.34.bb:do_configure
(dependent Tasks
['binutils-cross_2.34.bb:do_deploy_source_date_epoch',
'binutils-cross_2.34.bb:do_prepare_recipe_sysroot',
'binutils-cross_2.34.bb:do_patch'])
  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/binutils/binutils-cross_2.34.bb:do_compile
(dependent Tasks ['binutils-cross_2.34.bb:do_configure'])
  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/binutils/binutils-cross_2.34.bb:do_install
(dependent Tasks ['binutils-cross_2.34.bb:do_compile'])
  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/binutils/binutils-cross_2.34.bb:do_populate_sysroot
(dependent Tasks ['binutils-cross_2.34.bb:do_install'])
  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-core/newlib/newlib_3.3.0.bb:do_populate_sysroot
(dependent Tasks ['newlib_3.3.0.bb:do_install',
'binutils-cross_2.34.bb:do_populate_sysroot'])
  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-core/newlib/libgloss_3.3.0.bb:do_prepare_recipe_sysroot
(dependent Tasks ['newlib_3.3.0.bb:do_populate_sysroot',
'libgloss_3.3.0.bb:do_fetch', 'pseudo_git.bb:do_populate_sysroot',
'gcc-cross_10.1.bb:do_populate_sysroot'])
  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-core/newlib/libgloss_3.3.0.bb:do_configure
(dependent Tasks ['libgloss_3.3.0.bb:do_deploy_source_date_epoch',
'libgloss_3.3.0.bb:do_prepare_recipe_sysroot',
'libgloss_3.3.0.bb:do_patch'])

Dependency loop #6 found:
  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-core/newlib/libgloss_3.3.0.bb:do_populate_sysroot
(dependent Tasks ['binutils-cross_2.34.bb:do_populate_sysroot',
'libgloss_3.3.0.bb:do_install'])
  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/binutils/binutils-cross_2.34.bb:do_prepare_recipe_sysroot
(dependent Tasks ['flex_2.6.4.bb:do_populate_sysroot',
'libgloss_3.3.0.bb:do_populate_sysroot',
'binutils-cross_2.34.bb:do_fetch',
'texinfo-dummy-native.bb:do_populate_sysroot',
'gnu-config_git.bb:do_populate_sysroot',
'bison_3.6.4.bb:do_populate_sysroot',
'autoconf_2.69.bb:do_populate_sysroot',
'zlib_1.2.11.bb:do_populate_sysroot'])
  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/binutils/binutils-cross_2.34.bb:do_configure
(dependent Tasks
['binutils-cross_2.34.bb:do_deploy_source_date_epoch',
'binutils-cross_2.34.bb:do_prepare_recipe_sysroot',
'binutils-cross_2.34.bb:do_patch'])
  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/binutils/binutils-cross_2.34.bb:do_compile
(dependent Tasks ['binutils-cross_2.34.bb:do_configure'])
  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/binutils/binutils-cross_2.34.bb:do_install
(dependent Tasks ['binutils-cross_2.34.bb:do_compile'])
  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/binutils/binutils-cross_2.34.bb:do_populate_sysroot
(dependent Tasks ['binutils-cross_2.34.bb:do_install'])
