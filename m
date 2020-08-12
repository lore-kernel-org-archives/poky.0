Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com [209.85.160.175])
 by mx.groups.io with SMTP id smtpd.web12.452.1597265303279487913
 for <poky@lists.yoctoproject.org>;
 Wed, 12 Aug 2020 13:48:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=pi7+vozZ;
 spf=pass (domain: gmail.com, ip: 209.85.160.175, mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f175.google.com with SMTP id e5so2641198qth.5
        for <poky@lists.yoctoproject.org>; Wed, 12 Aug 2020 13:48:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=YnHNj+kKz446JcCWwcGln6PeQzYL7n4aXjYlYzfnnjo=;
        b=pi7+vozZjgDZKTWEDKzeITDWt6lQeOj16G6SOOoNM+ck8qs2m43c1AybV7qBa6QttC
         GSU+1AGKuhEb1xFqfmYdHuf9VgvENs39yvcXGBHluNPSXypP6S5Z26es6onUOmlj+trN
         pyGKRggcVEAu+JO6pSf3K9jOHr85K9Ikrk/npFsWdixs2IMhOfxySb2PZJlIhpoZJrI4
         OUY77KbQLW/5UyMQtMZlZ+z3vYAJrTXqQQtOtMuZCea7Dk/X43M9g93/44PKP0bU4QhX
         asuhXdbetyhRRzv6edTMFGY9eVnCdSGiHC8ScmRrqeFEseR6EhVScQO7ku7iJobxwptg
         XhuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=YnHNj+kKz446JcCWwcGln6PeQzYL7n4aXjYlYzfnnjo=;
        b=mFhe5MqOVux7Ea3TRmWR9A6rO+KkRhhOX+I4S2SEUQmCD2WyWh/PCKwjyiLoIWzbCE
         SyCh8E5PvCT1e6xsaJ+SFh2+DtsG7yNJ5pezvRH56Ubjl6DJG0tdX7DNY00P2BXS3G6g
         b1NlkoT+JouWABzxJIVABFo5agx1tBGppZgWF8yUsUv7n7dazxjiXVhKrLU5FqpSFeIK
         3uFCiUr+LyJbgQOSk4WuIIb8FD0bdZJ7+3udR1IkWEbEl9WAt5cyUzWL7S87xe2lGrDU
         OqgLCvitRp9cscogvAYd06+omuYECWIu3dg1Ord2wEJoEQ/xLxZo6M/p69SSkGTsZt8o
         Y/ZQ==
X-Gm-Message-State: AOAM53072zplxH1YAvU0aFe+wWZsZny2UbBSFywejWUHUXGnedrHA7Sw
	NmDWZSvLmrkcAhelSiw1tZosks3++E/lHgbp6/c=
X-Google-Smtp-Source: ABdhPJwD2/tsY/0mXTpdz8t5wZZ+dxlqItxDDy693T37oqm8gH9rnhDOTcmkqvHqpinIxLy+Y+rWds31rEsnWsWoRpo=
X-Received: by 2002:ac8:748b:: with SMTP id v11mr1607248qtq.293.1597265302100;
 Wed, 12 Aug 2020 13:48:22 -0700 (PDT)
MIME-Version: 1.0
References: <CAHrpVsUkTgim53raUgXgkiGvpzrWZJVPFEBzU1YX0S03_ix-kg@mail.gmail.com>
 <CAMKF1so6iTZNupBciUh8dgUQDWQ1-YH7iUy=RU4YFMrx77mqDA@mail.gmail.com>
 <CAHrpVsVvD55j=BHjN2Jv+b71A8rOTVpYYoaMKAyF_zFcXMUw6A@mail.gmail.com>
 <0994fb3e-7adb-def7-89ab-f8e8c3f64113@linux.microsoft.com> <21192528214e26ccb6a30dfa64e1b6cf@mail.gmail.com>
In-Reply-To: <21192528214e26ccb6a30dfa64e1b6cf@mail.gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Wed, 12 Aug 2020 13:47:54 -0700
Message-ID: <CAMKF1srSDt59-7Av3JWao9=T=RhjGsoPqdw8LJF70TrhyPSLHQ@mail.gmail.com>
Subject: Re: [poky] TCLIBC with newlib
To: Jonathan Richardson <jonathan.richardson@broadcom.com>
Cc: Alejandro Hernandez Samaniego <alhe@linux.microsoft.com>, poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 12, 2020 at 12:03 PM Jonathan Richardson
<jonathan.richardson@broadcom.com> wrote:
>
> Hi Alejandro,
>
>
>
> Thanks for your feedback. I narrowed it down. It builds when building si=
mple code that uses a makefile to compile some MCU code running on a cortex=
-m0. Now we=E2=80=99re compiling zephyr OS for a cortex M0-plus. The toolch=
ain is a bit more complicated because of all the x86 native build dependenc=
ies.
>
>
>
> Ignoring that for now I created a simple helloworld recipe with an empty=
 main compiled with autotools (attached). The problems arise when autotools=
 pulls in libtool-cross. If you switch to a makefile instead of using autot=
ools then libtool-cross doesn=E2=80=99t get pulled in and it builds fine. I=
 think the toolchain should be buildable when using autotools class and new=
lib.
>
>

I think its a usecase which perhaps is not yet supported. I would
suggest to open a tracker ticket in yocto bugzilla for this, since it
won't be a one liner to fix it

>
> Here is how to reproduce. You can use any machine tuning.
>
>
>
> build/conf/local.conf:
>
> MACHINE =3D "cortexm0"
>
> TCLIBC =3D "newlib"
>
>
>
> conf/machine/cortexm0.conf:
>
> DEFAULTTUNE =3D "armv6t-novfp"
>
> require conf/machine/include/arm/arch-armv8a.inc
>
>
>
> Apply attached patch then bitbake helloworld.
>
>
>
> Note that with this simple example I don=E2=80=99t have the issue having=
 to redefine LIBC_DEPENDENCIES. The zephyr recipe pulled in various native =
python modules that likely caused some issue there. Also there are no circu=
lar dependencies with this. Thanks.
>
>
>
> From: Alejandro Hernandez Samaniego [mailto:alhe@linux.microsoft.com]
> Sent: Monday, August 10, 2020 10:53 PM
> To: jonathan.richardson@broadcom.com; Khem Raj
> Cc: poky@lists.yoctoproject.org
> Subject: Re: [poky] TCLIBC with newlib
>
>
>
> Hello,
>
> I'm pretty sure, you are causing the dependency loop with the depends + =
cross class changes.
>
> I think there is some wiring in libgcc that is not matching properly wit=
h something defined in your BSP layer, likely in your machine.conf, althoug=
h like Khem said, removing the dbg packages from the dependencies would wor=
karound this issue.
>
> Yes, a newlib toolchain can be created, this works fine with the support=
ed BSPs (and others from some vendors) AFAIC I dont think changes are requi=
red on tclibc-newlib at this point since it contains the basics, anything e=
lse would be added per architecture on their BSP layer.
>
> Its hard to tell without knowing anything about the architecture you're =
using, but I think the error you are hitting its happening because your run=
time isn't being built properly or is incompatible, it looks like at the ve=
ry least you should have stubs for _exit() patched on libgloss/newlib for y=
our architecture (or submit those to newlib upstream), if you're using some=
thing ARM based you may be able to build using semhosting with the rdimon s=
pecs or even nosys but it probably wouldn't work properly at runtime, if th=
at allows you to build you can proceed to add you architecture specific fun=
ctions to libgloss.
>
>
>
> Cheers,
>
> Alejandro
>
> On 8/7/20 4:26 PM, Jonathan Richardson via lists.yoctoproject.org wrote:
>
> On Thu, Aug 6, 2020 at 9:58 PM Khem Raj <raj.khem@gmail.com> wrote:
>
>
>
> On Thu, Aug 6, 2020 at 5:22 PM Jonathan Richardson via
>
> lists.yoctoproject.org
>
> <jonathan.richardson=3Dbroadcom.com@lists.yoctoproject.org> wrote:
>
>
>
> Hi,
>
>
>
> I'm trying to create a toolchain using newlib as the libc. I set
>
> TCLIBC=3D"newlib". First error is:
>
> ERROR: Nothing PROVIDES 'libgcc-dbg' (but
>
> mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta-brcm/meta-stin=
gray2/recipes-zephyr/brcm-zephyr/brcm-zephyr.bb
>
> DEPENDS on or otherwise requires it). Close matches:
>
>   libgcc
>
>   libgcc RPROVIDES libgcc-dbg
>
> ERROR: Required build target 'brcm-zephyr' has no buildable providers.
>
> Missing or unbuildable dependency chain was: ['brcm-zephyr', 'libgcc-dbg=
']
>
>
>
> This is caused by LIBC_DEPENDENCIES in
>
> meta/conf/distro/include/tclibc-newlib.inc:
>
> LIBC_DEPENDENCIES =3D "\
>
>     newlib-dbg \
>
>     newlib-dev \
>
>     libgloss \
>
>     libgloss-dev \
>
>     libgloss-dbg \
>
>     libgcc-dev \
>
>     libgcc-dbg \
>
>     libstdc++-dev \
>
>     libstdc++-staticdev \
>
>
>
> Remove all -dbg packages from above list.
>
>
>
> TOOLCHAIN_TARGET_TASK ?=3D "${LIBC_DEPENDENCIES}"
>
>
>
> TOOLCHAIN_TARGET_TASK =3D "newlib libgloss" seems to fix it. Why are the
>
> dev/dbg packages required as
>
> dependencies and why does it think the recipes for libgloss, libgcc,
>
> etc don't provide them?
>
>
>
> Then libtool-cross fails when autoconf checks if the compiler works
>
> because it can't find _exit().
>
> So I added this to my local.conf:
>
> EXTRA_OECONF_append_class_target =3D " LIBS=3D-lgloss-linux"
>
> EXTRA_OECONF_append_class_cross =3D " LIBS=3D-lgloss-linux"
>
>
>
> It should be EXTRA_OECONF_append_class-target and
>
> EXTRA_OECONF_append_class-cross, there is a underscore there instead
>
> of '-'
>
>
>
> Thanks. More than this is required though. I added this so far:
>
>
>
> diff --git a/meta/classes/base.bbclass b/meta/classes/base.bbclass
>
> index 6776242740..262db927cd 100644
>
> --- a/meta/classes/base.bbclass
>
> +++ b/meta/classes/base.bbclass
>
> @@ -75,6 +75,7 @@ BASE_DEFAULT_DEPS =3D "virtual/${TARGET_PREFIX}gcc
>
> virtual/${TARGET_PREFIX}compile
>
>
>
>  BASEDEPENDS =3D ""
>
>  BASEDEPENDS_class-target =3D "${@base_dep_prepend(d)}"
>
> +BASEDEPENDS_class-cross =3D "${@base_dep_prepend(d)}"
>
>  BASEDEPENDS_class-nativesdk =3D "${@base_dep_prepend(d)}"
>
>
>
>  DEPENDS_prepend=3D"${BASEDEPENDS} "
>
> diff --git a/meta/conf/distro/include/tclibc-newlib.inc
>
> b/meta/conf/distro/include/tclibc-newlib.inc
>
> index bf89b11288..cb55f3a82c 100644
>
> --- a/meta/conf/distro/include/tclibc-newlib.inc
>
> +++ b/meta/conf/distro/include/tclibc-newlib.inc
>
> @@ -18,13 +18,10 @@ DISTRO_FEATURES_BACKFILL_CONSIDERED +=3D "ldconfig"
>
>  IMAGE_LINGUAS =3D ""
>
>
>
>  LIBC_DEPENDENCIES =3D "\
>
> -    newlib-dbg \
>
>      newlib-dev \
>
>      libgloss \
>
>      libgloss-dev \
>
> -    libgloss-dbg \
>
>      libgcc-dev \
>
> -    libgcc-dbg \
>
>      libstdc++-dev \
>
>      libstdc++-staticdev \
>
>      "
>
> @@ -34,6 +31,7 @@ ASSUME_PROVIDED +=3D "virtual/crypt"
>
>  # Its useful to be able to extend newlib, but we dont provide a
>
> native variant of libgloss
>
>  NEWLIB_EXTENDED ?=3D  "libgloss libgcc"
>
>  BASE_DEFAULT_DEPS_append_class-target =3D " ${NEWLIB_EXTENDED}"
>
> +BASE_DEFAULT_DEPS_append_class-cross =3D " ${NEWLIB_EXTENDED}"
>
>
>
>  TARGET_OS =3D "elf"
>
>  TARGET_OS_arm =3D "eabi"
>
> @@ -45,3 +43,9 @@ TOOLCHAIN_NEED_CONFIGSITE_CACHE_remove =3D "zlib ncurs=
es"
>
>  # disable pie security flags by default
>
>  SECURITY_CFLAGS_libc-newlib =3D "${SECURITY_NOPIE_CFLAGS}"
>
>  SECURITY_LDFLAGS_libc-newlib =3D ""
>
> +
>
> +EXTRA_OECONF_append_class-target =3D " LIBS=3D-lgloss-linux"
>
> +EXTRA_OECONF_append_class-cross =3D " LIBS=3D-lgloss-linux"
>
> +# binutils-cross.inc sets INHIBIT_DEFAULT_DEPS =3D "1" which will cause
>
> BASEDEBPENDS to not
>
> +# include libgloss which causes the autoconf compiler check to fail.
>
> +DEPENDS_append_pn-binutils-cross-arm =3D " libgloss"
>
>
>
> Adding the dependency to binutils-cross-arm causes circular
>
> dependencies though. I don't know
>
> what's going on here:
>
>
>
> Dependency loop #1 found:
>
>   Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-core/newlib/libgloss_3.3.0.bb:do_compile
>
> (dependent Tasks ['libgloss_3.3.0.bb:do_configure'])
>
>   Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-core/newlib/libgloss_3.3.0.bb:do_install
>
> (dependent Tasks ['pseudo_git.bb:do_populate_sysroot',
>
> 'libgloss_3.3.0.bb:do_compile'])
>
>   Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-core/newlib/libgloss_3.3.0.bb:do_populate_sysroot
>
> (dependent Tasks ['binutils-cross_2.34.bb:do_populate_sysroot',
>
> 'libgloss_3.3.0.bb:do_install'])
>
>   Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-devtools/binutils/binutils-cross_2.34.bb:do_prepare_recipe_sysroot
>
> (dependent Tasks ['flex_2.6.4.bb:do_populate_sysroot',
>
> 'libgloss_3.3.0.bb:do_populate_sysroot',
>
> 'binutils-cross_2.34.bb:do_fetch',
>
> 'texinfo-dummy-native.bb:do_populate_sysroot',
>
> 'gnu-config_git.bb:do_populate_sysroot',
>
> 'bison_3.6.4.bb:do_populate_sysroot',
>
> 'autoconf_2.69.bb:do_populate_sysroot',
>
> 'zlib_1.2.11.bb:do_populate_sysroot'])
>
>   Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-devtools/binutils/binutils-cross_2.34.bb:do_configure
>
> (dependent Tasks
>
> ['binutils-cross_2.34.bb:do_deploy_source_date_epoch',
>
> 'binutils-cross_2.34.bb:do_prepare_recipe_sysroot',
>
> 'binutils-cross_2.34.bb:do_patch'])
>
>   Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-devtools/binutils/binutils-cross_2.34.bb:do_compile
>
> (dependent Tasks ['binutils-cross_2.34.bb:do_configure'])
>
>   Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-devtools/binutils/binutils-cross_2.34.bb:do_install
>
> (dependent Tasks ['binutils-cross_2.34.bb:do_compile'])
>
>   Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-devtools/binutils/binutils-cross_2.34.bb:do_populate_sysroot
>
> (dependent Tasks ['binutils-cross_2.34.bb:do_install'])
>
>   Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-devtools/gcc/gcc-cross_10.1.bb:do_prepare_recipe_sysroot
>
> (dependent Tasks ['flex_2.6.4.bb:do_populate_sysroot',
>
> 'gcc-cross_10.1.bb:do_fetch',
>
> 'libtool-native_2.4.6.bb:do_populate_sysroot',
>
> 'mpfr_4.1.0.bb:do_populate_sysroot',
>
> 'gmp_6.2.0.bb:do_populate_sysroot',
>
> 'libmpc_1.1.0.bb:do_populate_sysroot',
>
> 'texinfo-dummy-native.bb:do_populate_sysroot',
>
> 'gnu-config_git.bb:do_populate_sysroot',
>
> 'binutils-cross_2.34.bb:do_populate_sysroot',
>
> 'autoconf_2.69.bb:do_populate_sysroot',
>
> 'automake_1.16.2.bb:do_populate_sysroot',
>
> 'zlib_1.2.11.bb:do_populate_sysroot'])
>
>   Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-devtools/gcc/gcc-cross_10.1.bb:do_configure
>
> (dependent Tasks ['gcc-cross_10.1.bb:do_prepare_recipe_sysroot',
>
> 'gcc-cross_10.1.bb:do_deploy_source_date_epoch',
>
> 'gcc-source_10.1.bb:do_preconfigure'])
>
>   Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-devtools/gcc/gcc-cross_10.1.bb:do_compile
>
> (dependent Tasks ['gcc-cross_10.1.bb:do_configure'])
>
>   Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-devtools/gcc/gcc-cross_10.1.bb:do_install
>
> (dependent Tasks ['gcc-cross_10.1.bb:do_compile',
>
> 'gcc-cross_10.1.bb:do_gcc_stash_builddir'])
>
>   Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-devtools/gcc/gcc-cross_10.1.bb:do_populate_sysroot
>
> (dependent Tasks ['gcc-cross_10.1.bb:do_install'])
>
>   Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-core/newlib/libgloss_3.3.0.bb:do_prepare_recipe_sysroot
>
> (dependent Tasks ['newlib_3.3.0.bb:do_populate_sysroot',
>
> 'libgloss_3.3.0.bb:do_fetch', 'pseudo_git.bb:do_populate_sysroot',
>
> 'gcc-cross_10.1.bb:do_populate_sysroot'])
>
>   Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-core/newlib/libgloss_3.3.0.bb:do_configure
>
> (dependent Tasks ['libgloss_3.3.0.bb:do_deploy_source_date_epoch',
>
> 'libgloss_3.3.0.bb:do_prepare_recipe_sysroot',
>
> 'libgloss_3.3.0.bb:do_patch'])
>
>
>
> Dependency loop #2 found:
>
>   Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-core/newlib/libgloss_3.3.0.bb:do_compile
>
> (dependent Tasks ['libgloss_3.3.0.bb:do_configure'])
>
>   Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-core/newlib/libgloss_3.3.0.bb:do_install
>
> (dependent Tasks ['pseudo_git.bb:do_populate_sysroot',
>
> 'libgloss_3.3.0.bb:do_compile'])
>
>   Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-core/newlib/libgloss_3.3.0.bb:do_populate_sysroot
>
> (dependent Tasks ['binutils-cross_2.34.bb:do_populate_sysroot',
>
> 'libgloss_3.3.0.bb:do_install'])
>
>   Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-devtools/binutils/binutils-cross_2.34.bb:do_prepare_recipe_sysroot
>
> (dependent Tasks ['flex_2.6.4.bb:do_populate_sysroot',
>
> 'libgloss_3.3.0.bb:do_populate_sysroot',
>
> 'binutils-cross_2.34.bb:do_fetch',
>
> 'texinfo-dummy-native.bb:do_populate_sysroot',
>
> 'gnu-config_git.bb:do_populate_sysroot',
>
> 'bison_3.6.4.bb:do_populate_sysroot',
>
> 'autoconf_2.69.bb:do_populate_sysroot',
>
> 'zlib_1.2.11.bb:do_populate_sysroot'])
>
>   Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-devtools/binutils/binutils-cross_2.34.bb:do_configure
>
> (dependent Tasks
>
> ['binutils-cross_2.34.bb:do_deploy_source_date_epoch',
>
> 'binutils-cross_2.34.bb:do_prepare_recipe_sysroot',
>
> 'binutils-cross_2.34.bb:do_patch'])
>
>   Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-devtools/binutils/binutils-cross_2.34.bb:do_compile
>
> (dependent Tasks ['binutils-cross_2.34.bb:do_configure'])
>
>   Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-devtools/binutils/binutils-cross_2.34.bb:do_install
>
> (dependent Tasks ['binutils-cross_2.34.bb:do_compile'])
>
>   Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-devtools/binutils/binutils-cross_2.34.bb:do_populate_sysroot
>
> (dependent Tasks ['binutils-cross_2.34.bb:do_install'])
>
>   Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-devtools/gcc/gcc-cross_10.1.bb:do_prepare_recipe_sysroot
>
> (dependent Tasks ['flex_2.6.4.bb:do_populate_sysroot',
>
> 'gcc-cross_10.1.bb:do_fetch',
>
> 'libtool-native_2.4.6.bb:do_populate_sysroot',
>
> 'mpfr_4.1.0.bb:do_populate_sysroot',
>
> 'gmp_6.2.0.bb:do_populate_sysroot',
>
> 'libmpc_1.1.0.bb:do_populate_sysroot',
>
> 'texinfo-dummy-native.bb:do_populate_sysroot',
>
> 'gnu-config_git.bb:do_populate_sysroot',
>
> 'binutils-cross_2.34.bb:do_populate_sysroot',
>
> 'autoconf_2.69.bb:do_populate_sysroot',
>
> 'automake_1.16.2.bb:do_populate_sysroot',
>
> 'zlib_1.2.11.bb:do_populate_sysroot'])
>
>   Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-devtools/gcc/gcc-cross_10.1.bb:do_configure
>
> (dependent Tasks ['gcc-cross_10.1.bb:do_prepare_recipe_sysroot',
>
> 'gcc-cross_10.1.bb:do_deploy_source_date_epoch',
>
> 'gcc-source_10.1.bb:do_preconfigure'])
>
>   Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-devtools/gcc/gcc-cross_10.1.bb:do_compile
>
> (dependent Tasks ['gcc-cross_10.1.bb:do_configure'])
>
>   Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-devtools/gcc/gcc-cross_10.1.bb:do_install
>
> (dependent Tasks ['gcc-cross_10.1.bb:do_compile',
>
> 'gcc-cross_10.1.bb:do_gcc_stash_builddir'])
>
>   Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-devtools/gcc/gcc-cross_10.1.bb:do_populate_sysroot
>
> (dependent Tasks ['gcc-cross_10.1.bb:do_install'])
>
>   Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-core/newlib/newlib_3.3.0.bb:do_prepare_recipe_sysroot
>
> (dependent Tasks ['gcc-cross_10.1.bb:do_populate_sysroot',
>
> 'pseudo_git.bb:do_populate_sysroot', 'newlib_3.3.0.bb:do_fetch'])
>
>   Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-core/newlib/newlib_3.3.0.bb:do_configure
>
> (dependent Tasks ['newlib_3.3.0.bb:do_deploy_source_date_epoch',
>
> 'newlib_3.3.0.bb:do_prepare_recipe_sysroot',
>
> 'newlib_3.3.0.bb:do_patch'])
>
>   Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-core/newlib/newlib_3.3.0.bb:do_compile
>
> (dependent Tasks ['newlib_3.3.0.bb:do_configure'])
>
>   Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-core/newlib/newlib_3.3.0.bb:do_install
>
> (dependent Tasks ['newlib_3.3.0.bb:do_compile',
>
> 'pseudo_git.bb:do_populate_sysroot'])
>
>   Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-core/newlib/newlib_3.3.0.bb:do_populate_sysroot
>
> (dependent Tasks ['newlib_3.3.0.bb:do_install',
>
> 'binutils-cross_2.34.bb:do_populate_sysroot'])
>
>   Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-core/newlib/libgloss_3.3.0.bb:do_prepare_recipe_sysroot
>
> (dependent Tasks ['newlib_3.3.0.bb:do_populate_sysroot',
>
> 'libgloss_3.3.0.bb:do_fetch', 'pseudo_git.bb:do_populate_sysroot',
>
> 'gcc-cross_10.1.bb:do_populate_sysroot'])
>
>   Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-core/newlib/libgloss_3.3.0.bb:do_configure
>
> (dependent Tasks ['libgloss_3.3.0.bb:do_deploy_source_date_epoch',
>
> 'libgloss_3.3.0.bb:do_prepare_recipe_sysroot',
>
> 'libgloss_3.3.0.bb:do_patch'])
>
>
>
> Dependency loop #3 found:
>
>   Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-core/newlib/libgloss_3.3.0.bb:do_compile
>
> (dependent Tasks ['libgloss_3.3.0.bb:do_configure'])
>
>   Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-core/newlib/libgloss_3.3.0.bb:do_install
>
> (dependent Tasks ['pseudo_git.bb:do_populate_sysroot',
>
> 'libgloss_3.3.0.bb:do_compile'])
>
>   Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-core/newlib/libgloss_3.3.0.bb:do_populate_sysroot
>
> (dependent Tasks ['binutils-cross_2.34.bb:do_populate_sysroot',
>
> 'libgloss_3.3.0.bb:do_install'])
>
>   Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-devtools/binutils/binutils-cross_2.34.bb:do_prepare_recipe_sysroot
>
> (dependent Tasks ['flex_2.6.4.bb:do_populate_sysroot',
>
> 'libgloss_3.3.0.bb:do_populate_sysroot',
>
> 'binutils-cross_2.34.bb:do_fetch',
>
> 'texinfo-dummy-native.bb:do_populate_sysroot',
>
> 'gnu-config_git.bb:do_populate_sysroot',
>
> 'bison_3.6.4.bb:do_populate_sysroot',
>
> 'autoconf_2.69.bb:do_populate_sysroot',
>
> 'zlib_1.2.11.bb:do_populate_sysroot'])
>
>   Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-devtools/binutils/binutils-cross_2.34.bb:do_configure
>
> (dependent Tasks
>
> ['binutils-cross_2.34.bb:do_deploy_source_date_epoch',
>
> 'binutils-cross_2.34.bb:do_prepare_recipe_sysroot',
>
> 'binutils-cross_2.34.bb:do_patch'])
>
>   Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-devtools/binutils/binutils-cross_2.34.bb:do_compile
>
> (dependent Tasks ['binutils-cross_2.34.bb:do_configure'])
>
>   Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-devtools/binutils/binutils-cross_2.34.bb:do_install
>
> (dependent Tasks ['binutils-cross_2.34.bb:do_compile'])
>
>   Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-devtools/binutils/binutils-cross_2.34.bb:do_populate_sysroot
>
> (dependent Tasks ['binutils-cross_2.34.bb:do_install'])
>
>   Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-devtools/gcc/gcc-cross_10.1.bb:do_prepare_recipe_sysroot
>
> (dependent Tasks ['flex_2.6.4.bb:do_populate_sysroot',
>
> 'gcc-cross_10.1.bb:do_fetch',
>
> 'libtool-native_2.4.6.bb:do_populate_sysroot',
>
> 'mpfr_4.1.0.bb:do_populate_sysroot',
>
> 'gmp_6.2.0.bb:do_populate_sysroot',
>
> 'libmpc_1.1.0.bb:do_populate_sysroot',
>
> 'texinfo-dummy-native.bb:do_populate_sysroot',
>
> 'gnu-config_git.bb:do_populate_sysroot',
>
> 'binutils-cross_2.34.bb:do_populate_sysroot',
>
> 'autoconf_2.69.bb:do_populate_sysroot',
>
> 'automake_1.16.2.bb:do_populate_sysroot',
>
> 'zlib_1.2.11.bb:do_populate_sysroot'])
>
>   Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-devtools/gcc/gcc-cross_10.1.bb:do_configure
>
> (dependent Tasks ['gcc-cross_10.1.bb:do_prepare_recipe_sysroot',
>
> 'gcc-cross_10.1.bb:do_deploy_source_date_epoch',
>
> 'gcc-source_10.1.bb:do_preconfigure'])
>
>   Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-devtools/gcc/gcc-cross_10.1.bb:do_compile
>
> (dependent Tasks ['gcc-cross_10.1.bb:do_configure'])
>
>   Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-devtools/gcc/gcc-cross_10.1.bb:do_gcc_stash_builddir
>
> (dependent Tasks ['gcc-cross_10.1.bb:do_compile'])
>
>   Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-devtools/gcc/gcc-cross_10.1.bb:do_install
>
> (dependent Tasks ['gcc-cross_10.1.bb:do_compile',
>
> 'gcc-cross_10.1.bb:do_gcc_stash_builddir'])
>
>   Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-devtools/gcc/gcc-cross_10.1.bb:do_populate_sysroot
>
> (dependent Tasks ['gcc-cross_10.1.bb:do_install'])
>
>   Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-core/newlib/libgloss_3.3.0.bb:do_prepare_recipe_sysroot
>
> (dependent Tasks ['newlib_3.3.0.bb:do_populate_sysroot',
>
> 'libgloss_3.3.0.bb:do_fetch', 'pseudo_git.bb:do_populate_sysroot',
>
> 'gcc-cross_10.1.bb:do_populate_sysroot'])
>
>   Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-core/newlib/libgloss_3.3.0.bb:do_configure
>
> (dependent Tasks ['libgloss_3.3.0.bb:do_deploy_source_date_epoch',
>
> 'libgloss_3.3.0.bb:do_prepare_recipe_sysroot',
>
> 'libgloss_3.3.0.bb:do_patch'])
>
>
>
> Dependency loop #4 found:
>
>   Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-core/newlib/libgloss_3.3.0.bb:do_compile
>
> (dependent Tasks ['libgloss_3.3.0.bb:do_configure'])
>
>   Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-core/newlib/libgloss_3.3.0.bb:do_install
>
> (dependent Tasks ['pseudo_git.bb:do_populate_sysroot',
>
> 'libgloss_3.3.0.bb:do_compile'])
>
>   Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-core/newlib/libgloss_3.3.0.bb:do_populate_sysroot
>
> (dependent Tasks ['binutils-cross_2.34.bb:do_populate_sysroot',
>
> 'libgloss_3.3.0.bb:do_install'])
>
>   Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-devtools/binutils/binutils-cross_2.34.bb:do_prepare_recipe_sysroot
>
> (dependent Tasks ['flex_2.6.4.bb:do_populate_sysroot',
>
> 'libgloss_3.3.0.bb:do_populate_sysroot',
>
> 'binutils-cross_2.34.bb:do_fetch',
>
> 'texinfo-dummy-native.bb:do_populate_sysroot',
>
> 'gnu-config_git.bb:do_populate_sysroot',
>
> 'bison_3.6.4.bb:do_populate_sysroot',
>
> 'autoconf_2.69.bb:do_populate_sysroot',
>
> 'zlib_1.2.11.bb:do_populate_sysroot'])
>
>   Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-devtools/binutils/binutils-cross_2.34.bb:do_configure
>
> (dependent Tasks
>
> ['binutils-cross_2.34.bb:do_deploy_source_date_epoch',
>
> 'binutils-cross_2.34.bb:do_prepare_recipe_sysroot',
>
> 'binutils-cross_2.34.bb:do_patch'])
>
>   Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-devtools/binutils/binutils-cross_2.34.bb:do_compile
>
> (dependent Tasks ['binutils-cross_2.34.bb:do_configure'])
>
>   Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-devtools/binutils/binutils-cross_2.34.bb:do_install
>
> (dependent Tasks ['binutils-cross_2.34.bb:do_compile'])
>
>   Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-devtools/binutils/binutils-cross_2.34.bb:do_populate_sysroot
>
> (dependent Tasks ['binutils-cross_2.34.bb:do_install'])
>
>   Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-devtools/gcc/gcc-cross_10.1.bb:do_prepare_recipe_sysroot
>
> (dependent Tasks ['flex_2.6.4.bb:do_populate_sysroot',
>
> 'gcc-cross_10.1.bb:do_fetch',
>
> 'libtool-native_2.4.6.bb:do_populate_sysroot',
>
> 'mpfr_4.1.0.bb:do_populate_sysroot',
>
> 'gmp_6.2.0.bb:do_populate_sysroot',
>
> 'libmpc_1.1.0.bb:do_populate_sysroot',
>
> 'texinfo-dummy-native.bb:do_populate_sysroot',
>
> 'gnu-config_git.bb:do_populate_sysroot',
>
> 'binutils-cross_2.34.bb:do_populate_sysroot',
>
> 'autoconf_2.69.bb:do_populate_sysroot',
>
> 'automake_1.16.2.bb:do_populate_sysroot',
>
> 'zlib_1.2.11.bb:do_populate_sysroot'])
>
>   Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-devtools/gcc/gcc-cross_10.1.bb:do_configure
>
> (dependent Tasks ['gcc-cross_10.1.bb:do_prepare_recipe_sysroot',
>
> 'gcc-cross_10.1.bb:do_deploy_source_date_epoch',
>
> 'gcc-source_10.1.bb:do_preconfigure'])
>
>   Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-devtools/gcc/gcc-cross_10.1.bb:do_compile
>
> (dependent Tasks ['gcc-cross_10.1.bb:do_configure'])
>
>   Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-devtools/gcc/gcc-cross_10.1.bb:do_gcc_stash_builddir
>
> (dependent Tasks ['gcc-cross_10.1.bb:do_compile'])
>
>   Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-devtools/gcc/gcc-cross_10.1.bb:do_install
>
> (dependent Tasks ['gcc-cross_10.1.bb:do_compile',
>
> 'gcc-cross_10.1.bb:do_gcc_stash_builddir'])
>
>   Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-devtools/gcc/gcc-cross_10.1.bb:do_populate_sysroot
>
> (dependent Tasks ['gcc-cross_10.1.bb:do_install'])
>
>   Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-core/newlib/newlib_3.3.0.bb:do_prepare_recipe_sysroot
>
> (dependent Tasks ['gcc-cross_10.1.bb:do_populate_sysroot',
>
> 'pseudo_git.bb:do_populate_sysroot', 'newlib_3.3.0.bb:do_fetch'])
>
>   Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-core/newlib/newlib_3.3.0.bb:do_configure
>
> (dependent Tasks ['newlib_3.3.0.bb:do_deploy_source_date_epoch',
>
> 'newlib_3.3.0.bb:do_prepare_recipe_sysroot',
>
> 'newlib_3.3.0.bb:do_patch'])
>
>   Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-core/newlib/newlib_3.3.0.bb:do_compile
>
> (dependent Tasks ['newlib_3.3.0.bb:do_configure'])
>
>   Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-core/newlib/newlib_3.3.0.bb:do_install
>
> (dependent Tasks ['newlib_3.3.0.bb:do_compile',
>
> 'pseudo_git.bb:do_populate_sysroot'])
>
>   Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-core/newlib/newlib_3.3.0.bb:do_populate_sysroot
>
> (dependent Tasks ['newlib_3.3.0.bb:do_install',
>
> 'binutils-cross_2.34.bb:do_populate_sysroot'])
>
>   Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-core/newlib/libgloss_3.3.0.bb:do_prepare_recipe_sysroot
>
> (dependent Tasks ['newlib_3.3.0.bb:do_populate_sysroot',
>
> 'libgloss_3.3.0.bb:do_fetch', 'pseudo_git.bb:do_populate_sysroot',
>
> 'gcc-cross_10.1.bb:do_populate_sysroot'])
>
>   Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-core/newlib/libgloss_3.3.0.bb:do_configure
>
> (dependent Tasks ['libgloss_3.3.0.bb:do_deploy_source_date_epoch',
>
> 'libgloss_3.3.0.bb:do_prepare_recipe_sysroot',
>
> 'libgloss_3.3.0.bb:do_patch'])
>
>
>
> Dependency loop #5 found:
>
>   Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-core/newlib/libgloss_3.3.0.bb:do_compile
>
> (dependent Tasks ['libgloss_3.3.0.bb:do_configure'])
>
>   Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-core/newlib/libgloss_3.3.0.bb:do_install
>
> (dependent Tasks ['pseudo_git.bb:do_populate_sysroot',
>
> 'libgloss_3.3.0.bb:do_compile'])
>
>   Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-core/newlib/libgloss_3.3.0.bb:do_populate_sysroot
>
> (dependent Tasks ['binutils-cross_2.34.bb:do_populate_sysroot',
>
> 'libgloss_3.3.0.bb:do_install'])
>
>   Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-devtools/binutils/binutils-cross_2.34.bb:do_prepare_recipe_sysroot
>
> (dependent Tasks ['flex_2.6.4.bb:do_populate_sysroot',
>
> 'libgloss_3.3.0.bb:do_populate_sysroot',
>
> 'binutils-cross_2.34.bb:do_fetch',
>
> 'texinfo-dummy-native.bb:do_populate_sysroot',
>
> 'gnu-config_git.bb:do_populate_sysroot',
>
> 'bison_3.6.4.bb:do_populate_sysroot',
>
> 'autoconf_2.69.bb:do_populate_sysroot',
>
> 'zlib_1.2.11.bb:do_populate_sysroot'])
>
>   Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-devtools/binutils/binutils-cross_2.34.bb:do_configure
>
> (dependent Tasks
>
> ['binutils-cross_2.34.bb:do_deploy_source_date_epoch',
>
> 'binutils-cross_2.34.bb:do_prepare_recipe_sysroot',
>
> 'binutils-cross_2.34.bb:do_patch'])
>
>   Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-devtools/binutils/binutils-cross_2.34.bb:do_compile
>
> (dependent Tasks ['binutils-cross_2.34.bb:do_configure'])
>
>   Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-devtools/binutils/binutils-cross_2.34.bb:do_install
>
> (dependent Tasks ['binutils-cross_2.34.bb:do_compile'])
>
>   Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-devtools/binutils/binutils-cross_2.34.bb:do_populate_sysroot
>
> (dependent Tasks ['binutils-cross_2.34.bb:do_install'])
>
>   Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-core/newlib/newlib_3.3.0.bb:do_populate_sysroot
>
> (dependent Tasks ['newlib_3.3.0.bb:do_install',
>
> 'binutils-cross_2.34.bb:do_populate_sysroot'])
>
>   Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-core/newlib/libgloss_3.3.0.bb:do_prepare_recipe_sysroot
>
> (dependent Tasks ['newlib_3.3.0.bb:do_populate_sysroot',
>
> 'libgloss_3.3.0.bb:do_fetch', 'pseudo_git.bb:do_populate_sysroot',
>
> 'gcc-cross_10.1.bb:do_populate_sysroot'])
>
>   Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-core/newlib/libgloss_3.3.0.bb:do_configure
>
> (dependent Tasks ['libgloss_3.3.0.bb:do_deploy_source_date_epoch',
>
> 'libgloss_3.3.0.bb:do_prepare_recipe_sysroot',
>
> 'libgloss_3.3.0.bb:do_patch'])
>
>
>
> Dependency loop #6 found:
>
>   Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-core/newlib/libgloss_3.3.0.bb:do_populate_sysroot
>
> (dependent Tasks ['binutils-cross_2.34.bb:do_populate_sysroot',
>
> 'libgloss_3.3.0.bb:do_install'])
>
>   Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-devtools/binutils/binutils-cross_2.34.bb:do_prepare_recipe_sysroot
>
> (dependent Tasks ['flex_2.6.4.bb:do_populate_sysroot',
>
> 'libgloss_3.3.0.bb:do_populate_sysroot',
>
> 'binutils-cross_2.34.bb:do_fetch',
>
> 'texinfo-dummy-native.bb:do_populate_sysroot',
>
> 'gnu-config_git.bb:do_populate_sysroot',
>
> 'bison_3.6.4.bb:do_populate_sysroot',
>
> 'autoconf_2.69.bb:do_populate_sysroot',
>
> 'zlib_1.2.11.bb:do_populate_sysroot'])
>
>   Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-devtools/binutils/binutils-cross_2.34.bb:do_configure
>
> (dependent Tasks
>
> ['binutils-cross_2.34.bb:do_deploy_source_date_epoch',
>
> 'binutils-cross_2.34.bb:do_prepare_recipe_sysroot',
>
> 'binutils-cross_2.34.bb:do_patch'])
>
>   Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-devtools/binutils/binutils-cross_2.34.bb:do_compile
>
> (dependent Tasks ['binutils-cross_2.34.bb:do_configure'])
>
>   Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-devtools/binutils/binutils-cross_2.34.bb:do_install
>
> (dependent Tasks ['binutils-cross_2.34.bb:do_compile'])
>
>   Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-devtools/binutils/binutils-cross_2.34.bb:do_populate_sysroot
>
> (dependent Tasks ['binutils-cross_2.34.bb:do_install'])
>
>
>
>=20
