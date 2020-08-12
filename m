Received: from mail-io1-f49.google.com (mail-io1-f49.google.com [209.85.166.49])
 by mx.groups.io with SMTP id smtpd.web11.641.1597266038541357274
 for <poky@lists.yoctoproject.org>;
 Wed, 12 Aug 2020 14:00:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=V8MvOVeT;
 spf=pass (domain: gmail.com, ip: 209.85.166.49, mailfrom: ticotimo@gmail.com)
Received: by mail-io1-f49.google.com with SMTP id k23so4485483iom.10
        for <poky@lists.yoctoproject.org>; Wed, 12 Aug 2020 14:00:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=/+KwJPGaTGasiP90aZgTgY2UQeIgm2NG9tCNSl2ZJKc=;
        b=V8MvOVeTmYTMU3i9CCTw1ybP3qwGzfwzhizXJAR1XnmDs4c5IoxXgTiPlNiyFkvMOt
         1Yo7N1Eemrke6Szcv/Q9GecztRXUr0J0zzkudSIN7BHX5MwdZ0fX+kg+moWl0NaXntdG
         S24XBO8NYeMiclf3Ld7bMxUUW3L3MiCiMLJqrF3m6yX1lHv2oz6B4o0jRBNgzBx2LpIT
         SDfdA2CP+iQlhig+KjHk2SuYfkCKv17kg9OaCiKnQOxne/fgDGon4zCvM7OdXn0wOq+X
         FuLiARGxiBM3r8hU6PZCzpK9KlAPbLr54XWS7BRllsJZ+QJ/KNDh7WUzvMJ3lqB0rRMr
         TXdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/+KwJPGaTGasiP90aZgTgY2UQeIgm2NG9tCNSl2ZJKc=;
        b=X+NGnqYEwozbCDmvElSQEZ8Ta9m1/xi/x+RG+sPKBg++cE7boYyy9CuE/uMinXhY1t
         bJavpS7jTSYWKgUgGcSOfcv+petaM6NLF74lSE7U6TrZ0AqtwdmeNAhVHv3V2g2PC+sx
         hA8dczXogcLOhLjDi4h6GE5q/SP5loFOsvDfixUSUnxdUgEiw2EuQU4Eo97vO3m4Pgd4
         pGRaf835924XLIe7gUP9Vcl4EhNXBcbqJSZAoe/PjPhCdtwVefMwCSIEiZEQsQsC4Hed
         ywxu8twwTCyQ+09F42wSSNeYkWbYUHLTJWvpyNdT/4pe/MwNn5/SrATZcaAkhtaplYaf
         zUDg==
X-Gm-Message-State: AOAM530/q7sKNZRU0xwYRqzRUNMRMsYy3/pQQBWsGd7cy9sldbS2wrz4
	azvS15Csr5TLH/ihZxt5DnqhnBCK3L2e3p0lLFE=
X-Google-Smtp-Source: ABdhPJy8K7iPb7WXc9GOuSkOGQh0U7Kryd5P+NAPLRsP8b0A9KkIi7oLfjcUPdX0o24POibNwS+54yXc2rPYZo5aiCM=
X-Received: by 2002:a5d:8b4f:: with SMTP id c15mr1651470iot.146.1597266037768;
 Wed, 12 Aug 2020 14:00:37 -0700 (PDT)
MIME-Version: 1.0
References: <CAHrpVsUkTgim53raUgXgkiGvpzrWZJVPFEBzU1YX0S03_ix-kg@mail.gmail.com>
 <CAMKF1so6iTZNupBciUh8dgUQDWQ1-YH7iUy=RU4YFMrx77mqDA@mail.gmail.com>
 <CAHrpVsVvD55j=BHjN2Jv+b71A8rOTVpYYoaMKAyF_zFcXMUw6A@mail.gmail.com>
 <0994fb3e-7adb-def7-89ab-f8e8c3f64113@linux.microsoft.com> <21192528214e26ccb6a30dfa64e1b6cf@mail.gmail.com>
In-Reply-To: <21192528214e26ccb6a30dfa64e1b6cf@mail.gmail.com>
From: "Tim Orling" <ticotimo@gmail.com>
Date: Wed, 12 Aug 2020 14:00:26 -0700
Message-ID: <CANx9H-CyHBzacbPsDKPO4DpHMANRvP2_YLd3=w00NRvnuEn_Cg@mail.gmail.com>
Subject: Re: [poky] TCLIBC with newlib
To: jonathan.richardson@broadcom.com
Cc: Alejandro Hernandez Samaniego <alhe@linux.microsoft.com>, Khem Raj <raj.khem@gmail.com>, 
	poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000cb060105acb47a49"

--000000000000cb060105acb47a49
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Did you look at meta-zephyr?
http://git.yoctoproject.org/cgit/cgit.cgi/meta-zephyr/


On Wed, Aug 12, 2020 at 12:04 PM Jonathan Richardson via
lists.yoctoproject.org <jonathan.richardson=3D
broadcom.com@lists.yoctoproject.org> wrote:

> Hi Alejandro,
>
>
>
> Thanks for your feedback. I narrowed it down. It builds when building
> simple code that uses a makefile to compile some MCU code running on a
> cortex-m0. Now we=E2=80=99re compiling zephyr OS for a cortex M0-plus. T=
he
> toolchain is a bit more complicated because of all the x86 native build
> dependencies.
>
>
>
> Ignoring that for now I created a simple helloworld recipe with an empty
> main compiled with autotools (attached). The problems arise when autotoo=
ls
> pulls in libtool-cross. If you switch to a makefile instead of using
> autotools then libtool-cross doesn=E2=80=99t get pulled in and it builds=
 fine. I
> think the toolchain should be buildable when using autotools class and
> newlib.
>
>
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
 to
> redefine LIBC_DEPENDENCIES. The zephyr recipe pulled in various native
> python modules that likely caused some issue there. Also there are no
> circular dependencies with this. Thanks.
>
>
>
> *From:* Alejandro Hernandez Samaniego [mailto:alhe@linux.microsoft.com]
> *Sent:* Monday, August 10, 2020 10:53 PM
> *To:* jonathan.richardson@broadcom.com; Khem Raj
> *Cc:* poky@lists.yoctoproject.org
> *Subject:* Re: [poky] TCLIBC with newlib
>
>
>
> Hello,
>
> I'm pretty sure, you are causing the dependency loop with the depends +
> cross class changes.
>
> I think there is some wiring in libgcc that is not matching properly wit=
h
> something defined in your BSP layer, likely in your machine.conf, althou=
gh
> like Khem said, removing the dbg packages from the dependencies would
> workaround this issue.
>
> Yes, a newlib toolchain can be created, this works fine with the support=
ed
> BSPs (and others from some vendors) AFAIC I dont think changes are requi=
red
> on tclibc-newlib at this point since it contains the basics, anything el=
se
> would be added per architecture on their BSP layer.
>
> Its hard to tell without knowing anything about the architecture you're
> using, but I think the error you are hitting its happening because your
> runtime isn't being built properly or is incompatible, it looks like at =
the
> very least you should have stubs for _exit() patched on libgloss/newlib =
for
> your architecture (or submit those to newlib upstream), if you're using
> something ARM based you may be able to build using semhosting with the
> rdimon specs or even nosys but it probably wouldn't work properly at
> runtime, if that allows you to build you can proceed to add you
> architecture specific functions to libgloss.
>
>
>
> Cheers,
>
> Alejandro
>
> On 8/7/20 4:26 PM, Jonathan Richardson via lists.yoctoproject.org wrote:
>
> On Thu, Aug 6, 2020 at 9:58 PM Khem Raj <raj.khem@gmail.com> <raj.khem@g=
mail.com> wrote:
>
>
>
> On Thu, Aug 6, 2020 at 5:22 PM Jonathan Richardson via
>
> lists.yoctoproject.org
>
> <jonathan.richardson=3Dbroadcom.com@lists.yoctoproject.org> <jonathan.ri=
chardson=3Dbroadcom.com@lists.yoctoproject.org> wrote:
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
>
>
>=20
>
>

--000000000000cb060105acb47a49
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><div dir=3D"auto">Did you look at meta-zephyr?</div></div><div dir=3D"=
auto"><div><a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/meta-zephyr=
/">http://git.yoctoproject.org/cgit/cgit.cgi/meta-zephyr/</a></div><br></di=
v><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr"=
>On Wed, Aug 12, 2020 at 12:04 PM Jonathan Richardson via <a href=3D"http:/=
/lists.yoctoproject.org">lists.yoctoproject.org</a> &lt;jonathan.richardson=
=
=3D<a href=3D"mailto:broadcom.com@lists.yoctoproject.org">broadcom.com@lis=
ts.yoctoproject.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">=
<div lang=3D"EN-US" link=3D"blue" vlink=3D"purple"><div class=3D"m_-6758328=
56078048696WordSection1"><p class=3D"MsoNormal"><span style=3D"font-size:11=
.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">=
Hi Alejandro,</span></p><p class=3D"MsoNormal"><span style=3D"font-size:11.=
0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">=
=C2=A0</span></p><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;fo=
nt-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">Thanks =
for your feedback. I narrowed it down. It builds when building simple code =
that uses a makefile to compile some MCU code running on a cortex-m0. Now w=
e=E2=80=99re compiling zephyr OS for a cortex M0-plus. The toolchain is a b=
it more complicated because of all the x86 native build dependencies. </spa=
n></p><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&q=
uot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">=C2=A0</span></p><p=
 class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Cali=
bri&quot;,&quot;sans-serif&quot;;color:#1f497d">Ignoring that for now I cre=
ated a simple helloworld recipe with an empty main compiled with autotools =
(attached). The problems arise when autotools pulls in libtool-cross. If yo=
u switch to a makefile instead of using autotools then libtool-cross doesn=
=E2=80=99t get pulled in and it builds fine. I think the toolchain should =
be buildable when using autotools class and newlib.</span></p><p class=3D"M=
soNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&=
quot;sans-serif&quot;;color:#1f497d">=C2=A0</span></p><p class=3D"MsoNormal=
"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;san=
s-serif&quot;;color:#1f497d">Here is how to reproduce. You can use any mach=
ine tuning.</span></p><p class=3D"MsoNormal"><span style=3D"font-size:11.0p=
t;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">=C2=
=
=A0</span></p><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">build/conf=
/local.conf:</span></p><p class=3D"MsoNormal"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">MA=
CHINE =3D &quot;cortexm0&quot;</span></p><p class=3D"MsoNormal"><span style=
=
=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot=
;;color:#1f497d">TCLIBC =3D &quot;newlib&quot;</span></p><p class=3D"MsoNor=
mal"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;;color:#1f497d">=C2=A0</span></p><p class=3D"MsoNormal"><sp=
an style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-ser=
if&quot;;color:#1f497d">conf/machine/cortexm0.conf:</span></p><p class=3D"M=
soNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&=
quot;sans-serif&quot;;color:#1f497d">DEFAULTTUNE =3D &quot;armv6t-novfp&quo=
t;</span></p><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-fa=
mily:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">require conf=
/machine/include/arm/arch-armv8a.inc</span></p><p class=3D"MsoNormal"><span=
 style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif=
&quot;;color:#1f497d">=C2=A0</span></p><p class=3D"MsoNormal"><span style=
=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot=
;;color:#1f497d">Apply attached patch then bitbake helloworld.</span></p><p=
 class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Cali=
bri&quot;,&quot;sans-serif&quot;;color:#1f497d">=C2=A0</span></p><p class=
=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&q=
uot;,&quot;sans-serif&quot;;color:#1f497d">Note that with this simple examp=
le I don=E2=80=99t have the issue having to redefine LIBC_DEPENDENCIES. The=
 zephyr recipe pulled in various native python modules that likely caused s=
ome issue there. Also there are no circular dependencies with this. Thanks.=
</span></p></div></div><div lang=3D"EN-US" link=3D"blue" vlink=3D"purple"><=
div class=3D"m_-675832856078048696WordSection1"><p class=3D"MsoNormal"><spa=
n style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-seri=
f&quot;;color:#1f497d">=C2=A0</span></p><div><div style=3D"border:none;bord=
er-top:solid #b5c4df 1.0pt;padding:3.0pt 0in 0in 0in"><p class=3D"MsoNormal=
"><b><span style=3D"font-size:10.0pt;font-family:&quot;Tahoma&quot;,&quot;s=
ans-serif&quot;">From:</span></b><span style=3D"font-size:10.0pt;font-famil=
y:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> Alejandro Hernandez Samaniego=
 [mailto:<a href=3D"mailto:alhe@linux.microsoft.com" target=3D"_blank">alhe=
@linux.microsoft.com</a>] <br><b>Sent:</b> Monday, August 10, 2020 10:53 PM=
<br><b>To:</b> <a href=3D"mailto:jonathan.richardson@broadcom.com" target=
=3D"_blank">jonathan.richardson@broadcom.com</a>; Khem Raj<br><b>Cc:</b> <=
a href=3D"mailto:poky@lists.yoctoproject.org" target=3D"_blank">poky@lists.=
yoctoproject.org</a><br><b>Subject:</b> Re: [poky] TCLIBC with newlib</span=
></p></div></div><p class=3D"MsoNormal">=C2=A0</p><p>Hello,</p><p>I&#39;m p=
retty sure, you are causing the dependency loop with the depends + cross cl=
ass changes.</p><p>I think there is some wiring in libgcc that is not match=
ing properly with something defined in your BSP layer, likely in your machi=
ne.conf, although like Khem said, removing the dbg packages from the depend=
encies would workaround this issue.</p><p>Yes, a newlib toolchain can be cr=
eated, this works fine with the supported BSPs (and others from some vendor=
s) AFAIC I dont think changes are required on tclibc-newlib at this point s=
ince it contains the basics, anything else would be added per architecture =
on their BSP layer.</p><p>Its hard to tell without knowing anything about t=
he architecture you&#39;re using, but I think the error you are hitting its=
 happening because your runtime isn&#39;t being built properly or is incomp=
atible, it looks like at the very least you should have stubs for _exit() p=
atched on libgloss/newlib for your architecture (or submit those to newlib =
upstream), if you&#39;re using something ARM based you may be able to build=
 using semhosting with the rdimon specs or even nosys but it probably would=
n&#39;t work properly at runtime, if that allows you to build you can proce=
ed to add you architecture specific functions to libgloss.</p><p>=C2=A0</p>=
<p>Cheers,</p><p>Alejandro</p><div><p class=3D"MsoNormal">On 8/7/20 4:26 PM=
, Jonathan Richardson via <a href=3D"http://lists.yoctoproject.org" target=
=3D"_blank">lists.yoctoproject.org</a> wrote:</p></div><blockquote style=
=3D"margin-top:5.0pt;margin-bottom:5.0pt"><pre>On Thu, Aug 6, 2020 at 9:58=
 PM Khem Raj <a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">&lt;ra=
j.khem@gmail.com&gt;</a> wrote:</pre><blockquote style=3D"margin-top:5.0pt;=
margin-bottom:5.0pt"><pre>=C2=A0</pre><pre>On Thu, Aug 6, 2020 at 5:22 PM J=
onathan Richardson via</pre><pre><a href=3D"http://lists.yoctoproject.org" =
target=3D"_blank">lists.yoctoproject.org</a></pre><pre><a href=3D"mailto:jo=
nathan.richardson=3Dbroadcom.com@lists.yoctoproject.org" target=3D"_blank">=
&lt;jonathan.richardson=3Dbroadcom.com@lists.yoctoproject.org&gt;</a> wrote=
:</pre><blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt"><pre>=C2=
=A0</pre><pre>Hi,</pre><pre>=C2=A0</pre><pre>I&#39;m trying to create a to=
olchain using newlib as the libc. I set</pre><pre>TCLIBC=3D&quot;newlib&quo=
t;. First error is:</pre><pre>ERROR: Nothing PROVIDES &#39;libgcc-dbg&#39; =
(but</pre><pre>mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta-br=
cm/meta-stingray2/recipes-zephyr/brcm-zephyr/<a href=3D"http://brcm-zephyr.=
bb" target=3D"_blank">brcm-zephyr.bb</a></pre><pre>DEPENDS on or otherwise =
requires it). Close matches:</pre><pre>=C2=A0 libgcc</pre><pre>=C2=A0 libgc=
c RPROVIDES libgcc-dbg</pre><pre>ERROR: Required build target &#39;brcm-zep=
hyr&#39; has no buildable providers.</pre><pre>Missing or unbuildable depen=
dency chain was: [&#39;brcm-zephyr&#39;, &#39;libgcc-dbg&#39;]</pre><pre>=
=C2=A0</pre><pre>This is caused by LIBC_DEPENDENCIES in</pre><pre>meta/con=
f/distro/include/tclibc-newlib.inc:</pre><pre>LIBC_DEPENDENCIES =3D &quot;\=
</pre><pre>=C2=A0=C2=A0=C2=A0 newlib-dbg \</pre><pre>=C2=A0=C2=A0=C2=A0 new=
lib-dev \</pre><pre>=C2=A0=C2=A0=C2=A0 libgloss \</pre><pre>=C2=A0=C2=A0=C2=
=
=A0 libgloss-dev \</pre><pre>=C2=A0=C2=A0=C2=A0 libgloss-dbg \</pre><pre>=
=C2=A0=C2=A0=C2=A0 libgcc-dev \</pre><pre>=C2=A0=C2=A0=C2=A0 libgcc-dbg \<=
/pre><pre>=C2=A0=C2=A0=C2=A0 libstdc++-dev \</pre><pre>=C2=A0=C2=A0=C2=A0 l=
ibstdc++-staticdev \</pre></blockquote><pre>=C2=A0</pre><pre>Remove all -db=
g packages from above list.</pre><pre>=C2=A0</pre><blockquote style=3D"marg=
in-top:5.0pt;margin-bottom:5.0pt"><pre>TOOLCHAIN_TARGET_TASK ?=3D &quot;${L=
IBC_DEPENDENCIES}&quot;</pre><pre>=C2=A0</pre><pre>TOOLCHAIN_TARGET_TASK =
=3D &quot;newlib libgloss&quot; seems to fix it. Why are the</pre><pre>dev=
/dbg packages required as</pre><pre>dependencies and why does it think the =
recipes for libgloss, libgcc,</pre><pre>etc don&#39;t provide them?</pre><p=
re>=C2=A0</pre><pre>Then libtool-cross fails when autoconf checks if the co=
mpiler works</pre><pre>because it can&#39;t find _exit().</pre><pre>So I ad=
ded this to my local.conf:</pre><pre>EXTRA_OECONF_append_class_target =3D &=
quot; LIBS=3D-lgloss-linux&quot;</pre><pre>EXTRA_OECONF_append_class_cross =
=
=3D &quot; LIBS=3D-lgloss-linux&quot;</pre></blockquote><pre>=C2=A0</pre><=
pre>It should be EXTRA_OECONF_append_class-target and</pre><pre>EXTRA_OECON=
F_append_class-cross, there is a underscore there instead</pre><pre>of &#39=
;-&#39;</pre></blockquote><pre>=C2=A0</pre><pre>Thanks. More than this is r=
equired though. I added this so far:</pre><pre>=C2=A0</pre><pre>diff --git =
a/meta/classes/base.bbclass b/meta/classes/base.bbclass</pre><pre>index 677=
6242740..262db927cd 100644</pre><pre>--- a/meta/classes/base.bbclass</pre><=
pre>+++ b/meta/classes/base.bbclass</pre><pre>@@ -75,6 +75,7 @@ BASE_DEFAUL=
T_DEPS =3D &quot;virtual/${TARGET_PREFIX}gcc</pre><pre>virtual/${TARGET_PRE=
FIX}compile</pre><pre>=C2=A0</pre><pre> BASEDEPENDS =3D &quot;&quot;</pre><=
pre> BASEDEPENDS_class-target =3D &quot;${@base_dep_prepend(d)}&quot;</pre>=
<pre>+BASEDEPENDS_class-cross =3D &quot;${@base_dep_prepend(d)}&quot;</pre>=
<pre> BASEDEPENDS_class-nativesdk =3D &quot;${@base_dep_prepend(d)}&quot;</=
pre><pre>=C2=A0</pre><pre> DEPENDS_prepend=3D&quot;${BASEDEPENDS} &quot;</p=
re><pre>diff --git a/meta/conf/distro/include/tclibc-newlib.inc</pre><pre>b=
/meta/conf/distro/include/tclibc-newlib.inc</pre><pre>index bf89b11288..cb5=
5f3a82c 100644</pre><pre>--- a/meta/conf/distro/include/tclibc-newlib.inc</=
pre><pre>+++ b/meta/conf/distro/include/tclibc-newlib.inc</pre><pre>@@ -18,=
13 +18,10 @@ DISTRO_FEATURES_BACKFILL_CONSIDERED +=3D &quot;ldconfig&quot;<=
/pre><pre> IMAGE_LINGUAS =3D &quot;&quot;</pre><pre>=C2=A0</pre><pre> LIBC_=
DEPENDENCIES =3D &quot;\</pre><pre>-=C2=A0=C2=A0=C2=A0 newlib-dbg \</pre><p=
re>=C2=A0=C2=A0=C2=A0=C2=A0 newlib-dev \</pre><pre>=C2=A0=C2=A0=C2=A0=C2=A0=
 libgloss \</pre><pre>=C2=A0=C2=A0=C2=A0=C2=A0 libgloss-dev \</pre><pre>-=
=C2=A0=C2=A0=C2=A0 libgloss-dbg \</pre><pre>=C2=A0=C2=A0=C2=A0=C2=A0 libgc=
c-dev \</pre><pre>-=C2=A0=C2=A0=C2=A0 libgcc-dbg \</pre><pre>=C2=A0=C2=A0=
=C2=A0=C2=A0 libstdc++-dev \</pre><pre>=C2=A0=C2=A0=C2=A0=C2=A0 libstdc++-=
staticdev \</pre><pre>=C2=A0=C2=A0=C2=A0=C2=A0 &quot;</pre><pre>@@ -34,6 +3=
1,7 @@ ASSUME_PROVIDED +=3D &quot;virtual/crypt&quot;</pre><pre> # Its usef=
ul to be able to extend newlib, but we dont provide a</pre><pre>native vari=
ant of libgloss</pre><pre> NEWLIB_EXTENDED ?=3D=C2=A0 &quot;libgloss libgcc=
&quot;</pre><pre> BASE_DEFAULT_DEPS_append_class-target =3D &quot; ${NEWLIB=
_EXTENDED}&quot;</pre><pre>+BASE_DEFAULT_DEPS_append_class-cross =3D &quot;=
 ${NEWLIB_EXTENDED}&quot;</pre><pre>=C2=A0</pre><pre> TARGET_OS =3D &quot;e=
lf&quot;</pre><pre> TARGET_OS_arm =3D &quot;eabi&quot;</pre><pre>@@ -45,3 +=
43,9 @@ TOOLCHAIN_NEED_CONFIGSITE_CACHE_remove =3D &quot;zlib ncurses&quot;=
</pre><pre> # disable pie security flags by default</pre><pre> SECURITY_CFL=
AGS_libc-newlib =3D &quot;${SECURITY_NOPIE_CFLAGS}&quot;</pre><pre> SECURIT=
Y_LDFLAGS_libc-newlib =3D &quot;&quot;</pre><pre>+</pre><pre>+EXTRA_OECONF_=
append_class-target =3D &quot; LIBS=3D-lgloss-linux&quot;</pre><pre>+EXTRA_=
OECONF_append_class-cross =3D &quot; LIBS=3D-lgloss-linux&quot;</pre><pre>+=
# binutils-cross.inc sets INHIBIT_DEFAULT_DEPS =3D &quot;1&quot; which will=
 cause</pre><pre>BASEDEBPENDS to not</pre><pre>+# include libgloss which ca=
uses the autoconf compiler check to fail.</pre><pre>+DEPENDS_append_pn-binu=
tils-cross-arm =3D &quot; libgloss&quot;</pre><pre>=C2=A0</pre><pre>Adding =
the dependency to binutils-cross-arm causes circular</pre><pre>dependencies=
 though. I don&#39;t know</pre><pre>what&#39;s going on here:</pre><pre>=C2=
=
=A0</pre><pre>Dependency loop #1 found:</pre><pre>=C2=A0 Task mc:crmu:/hom=
e/jon/work/yocto/stingray2/poky/build/../meta/recipes-core/newlib/libgloss_=
3.3.0.bb:do_compile</pre><pre>(dependent Tasks [&#39;libgloss_3.3.0.bb:do_c=
onfigure&#39;])</pre><pre>=C2=A0 Task mc:crmu:/home/jon/work/yocto/stingray=
2/poky/build/../meta/recipes-core/newlib/libgloss_3.3.0.bb:do_install</pre>=
<pre>(dependent Tasks [&#39;pseudo_git.bb:do_populate_sysroot&#39;,</pre><p=
re>&#39;libgloss_3.3.0.bb:do_compile&#39;])</pre><pre>=C2=A0 Task mc:crmu:/=
home/jon/work/yocto/stingray2/poky/build/../meta/recipes-core/newlib/libglo=
ss_3.3.0.bb:do_populate_sysroot</pre><pre>(dependent Tasks [&#39;binutils-c=
ross_2.34.bb:do_populate_sysroot&#39;,</pre><pre>&#39;libgloss_3.3.0.bb:do_=
install&#39;])</pre><pre>=C2=A0 Task mc:crmu:/home/jon/work/yocto/stingray2=
/poky/build/../meta/recipes-devtools/binutils/binutils-cross_2.34.bb:do_pre=
pare_recipe_sysroot</pre><pre>(dependent Tasks [&#39;flex_2.6.4.bb:do_popul=
ate_sysroot&#39;,</pre><pre>&#39;libgloss_3.3.0.bb:do_populate_sysroot&#39;=
,</pre><pre>&#39;binutils-cross_2.34.bb:do_fetch&#39;,</pre><pre>&#39;texin=
fo-dummy-native.bb:do_populate_sysroot&#39;,</pre><pre>&#39;gnu-config_git.=
bb:do_populate_sysroot&#39;,</pre><pre>&#39;bison_3.6.4.bb:do_populate_sysr=
oot&#39;,</pre><pre>&#39;autoconf_2.69.bb:do_populate_sysroot&#39;,</pre><p=
re>&#39;zlib_1.2.11.bb:do_populate_sysroot&#39;])</pre><pre>=C2=A0 Task mc:=
crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/bin=
utils/binutils-cross_2.34.bb:do_configure</pre><pre>(dependent Tasks</pre><=
pre>[&#39;binutils-cross_2.34.bb:do_deploy_source_date_epoch&#39;,</pre><pr=
e>&#39;binutils-cross_2.34.bb:do_prepare_recipe_sysroot&#39;,</pre><pre>&#3=
9;binutils-cross_2.34.bb:do_patch&#39;])</pre><pre>=C2=A0 Task mc:crmu:/hom=
e/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/binutils/bin=
utils-cross_2.34.bb:do_compile</pre><pre>(dependent Tasks [&#39;binutils-cr=
oss_2.34.bb:do_configure&#39;])</pre><pre>=C2=A0 Task mc:crmu:/home/jon/wor=
k/yocto/stingray2/poky/build/../meta/recipes-devtools/binutils/binutils-cro=
ss_2.34.bb:do_install</pre><pre>(dependent Tasks [&#39;binutils-cross_2.34.=
bb:do_compile&#39;])</pre><pre>=C2=A0 Task mc:crmu:/home/jon/work/yocto/sti=
ngray2/poky/build/../meta/recipes-devtools/binutils/binutils-cross_2.34.bb:=
do_populate_sysroot</pre><pre>(dependent Tasks [&#39;binutils-cross_2.34.bb=
:do_install&#39;])</pre><pre>=C2=A0 Task mc:crmu:/home/jon/work/yocto/sting=
ray2/poky/build/../meta/recipes-devtools/gcc/gcc-cross_10.1.bb:do_prepare_r=
ecipe_sysroot</pre><pre>(dependent Tasks [&#39;flex_2.6.4.bb:do_populate_sy=
sroot&#39;,</pre><pre>&#39;gcc-cross_10.1.bb:do_fetch&#39;,</pre><pre>&#39;=
libtool-native_2.4.6.bb:do_populate_sysroot&#39;,</pre><pre>&#39;mpfr_4.1.0=
.bb:do_populate_sysroot&#39;,</pre><pre>&#39;gmp_6.2.0.bb:do_populate_sysro=
ot&#39;,</pre><pre>&#39;libmpc_1.1.0.bb:do_populate_sysroot&#39;,</pre><pre=
>&#39;texinfo-dummy-native.bb:do_populate_sysroot&#39;,</pre><pre>&#39;gnu-=
config_git.bb:do_populate_sysroot&#39;,</pre><pre>&#39;binutils-cross_2.34.=
bb:do_populate_sysroot&#39;,</pre><pre>&#39;autoconf_2.69.bb:do_populate_sy=
sroot&#39;,</pre><pre>&#39;automake_1.16.2.bb:do_populate_sysroot&#39;,</pr=
e><pre>&#39;zlib_1.2.11.bb:do_populate_sysroot&#39;])</pre><pre>=C2=A0 Task=
 mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools=
/gcc/gcc-cross_10.1.bb:do_configure</pre><pre>(dependent Tasks [&#39;gcc-cr=
oss_10.1.bb:do_prepare_recipe_sysroot&#39;,</pre><pre>&#39;gcc-cross_10.1.b=
b:do_deploy_source_date_epoch&#39;,</pre><pre>&#39;gcc-source_10.1.bb:do_pr=
econfigure&#39;])</pre><pre>=C2=A0 Task mc:crmu:/home/jon/work/yocto/stingr=
ay2/poky/build/../meta/recipes-devtools/gcc/gcc-cross_10.1.bb:do_compile</p=
re><pre>(dependent Tasks [&#39;gcc-cross_10.1.bb:do_configure&#39;])</pre><=
pre>=C2=A0 Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/r=
ecipes-devtools/gcc/gcc-cross_10.1.bb:do_install</pre><pre>(dependent Tasks=
 [&#39;gcc-cross_10.1.bb:do_compile&#39;,</pre><pre>&#39;gcc-cross_10.1.bb:=
do_gcc_stash_builddir&#39;])</pre><pre>=C2=A0 Task mc:crmu:/home/jon/work/y=
octo/stingray2/poky/build/../meta/recipes-devtools/gcc/gcc-cross_10.1.bb:do=
_populate_sysroot</pre><pre>(dependent Tasks [&#39;gcc-cross_10.1.bb:do_ins=
tall&#39;])</pre><pre>=C2=A0 Task mc:crmu:/home/jon/work/yocto/stingray2/po=
ky/build/../meta/recipes-core/newlib/libgloss_3.3.0.bb:do_prepare_recipe_sy=
sroot</pre><pre>(dependent Tasks [&#39;newlib_3.3.0.bb:do_populate_sysroot&=
#39;,</pre><pre>&#39;libgloss_3.3.0.bb:do_fetch&#39;, &#39;pseudo_git.bb:do=
_populate_sysroot&#39;,</pre><pre>&#39;gcc-cross_10.1.bb:do_populate_sysroo=
t&#39;])</pre><pre>=C2=A0 Task mc:crmu:/home/jon/work/yocto/stingray2/poky/=
build/../meta/recipes-core/newlib/libgloss_3.3.0.bb:do_configure</pre><pre>=
(dependent Tasks [&#39;libgloss_3.3.0.bb:do_deploy_source_date_epoch&#39;,<=
/pre><pre>&#39;libgloss_3.3.0.bb:do_prepare_recipe_sysroot&#39;,</pre><pre>=
&#39;libgloss_3.3.0.bb:do_patch&#39;])</pre><pre>=C2=A0</pre><pre>Dependenc=
y loop #2 found:</pre><pre>=C2=A0 Task mc:crmu:/home/jon/work/yocto/stingra=
y2/poky/build/../meta/recipes-core/newlib/libgloss_3.3.0.bb:do_compile</pre=
><pre>(dependent Tasks [&#39;libgloss_3.3.0.bb:do_configure&#39;])</pre><pr=
e>=C2=A0 Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/rec=
ipes-core/newlib/libgloss_3.3.0.bb:do_install</pre><pre>(dependent Tasks [&=
#39;pseudo_git.bb:do_populate_sysroot&#39;,</pre><pre>&#39;libgloss_3.3.0.b=
b:do_compile&#39;])</pre><pre>=C2=A0 Task mc:crmu:/home/jon/work/yocto/stin=
gray2/poky/build/../meta/recipes-core/newlib/libgloss_3.3.0.bb:do_populate_=
sysroot</pre><pre>(dependent Tasks [&#39;binutils-cross_2.34.bb:do_populate=
_sysroot&#39;,</pre><pre>&#39;libgloss_3.3.0.bb:do_install&#39;])</pre><pre=
>=C2=A0 Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/reci=
pes-devtools/binutils/binutils-cross_2.34.bb:do_prepare_recipe_sysroot</pre=
><pre>(dependent Tasks [&#39;flex_2.6.4.bb:do_populate_sysroot&#39;,</pre><=
pre>&#39;libgloss_3.3.0.bb:do_populate_sysroot&#39;,</pre><pre>&#39;binutil=
s-cross_2.34.bb:do_fetch&#39;,</pre><pre>&#39;texinfo-dummy-native.bb:do_po=
pulate_sysroot&#39;,</pre><pre>&#39;gnu-config_git.bb:do_populate_sysroot&#=
39;,</pre><pre>&#39;bison_3.6.4.bb:do_populate_sysroot&#39;,</pre><pre>&#39=
;autoconf_2.69.bb:do_populate_sysroot&#39;,</pre><pre>&#39;zlib_1.2.11.bb:d=
o_populate_sysroot&#39;])</pre><pre>=C2=A0 Task mc:crmu:/home/jon/work/yoct=
o/stingray2/poky/build/../meta/recipes-devtools/binutils/binutils-cross_2.3=
4.bb:do_configure</pre><pre>(dependent Tasks</pre><pre>[&#39;binutils-cross=
_2.34.bb:do_deploy_source_date_epoch&#39;,</pre><pre>&#39;binutils-cross_2.=
34.bb:do_prepare_recipe_sysroot&#39;,</pre><pre>&#39;binutils-cross_2.34.bb=
:do_patch&#39;])</pre><pre>=C2=A0 Task mc:crmu:/home/jon/work/yocto/stingra=
y2/poky/build/../meta/recipes-devtools/binutils/binutils-cross_2.34.bb:do_c=
ompile</pre><pre>(dependent Tasks [&#39;binutils-cross_2.34.bb:do_configure=
&#39;])</pre><pre>=C2=A0 Task mc:crmu:/home/jon/work/yocto/stingray2/poky/b=
uild/../meta/recipes-devtools/binutils/binutils-cross_2.34.bb:do_install</p=
re><pre>(dependent Tasks [&#39;binutils-cross_2.34.bb:do_compile&#39;])</pr=
e><pre>=C2=A0 Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../met=
a/recipes-devtools/binutils/binutils-cross_2.34.bb:do_populate_sysroot</pre=
><pre>(dependent Tasks [&#39;binutils-cross_2.34.bb:do_install&#39;])</pre>=
<pre>=C2=A0 Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/=
recipes-devtools/gcc/gcc-cross_10.1.bb:do_prepare_recipe_sysroot</pre><pre>=
(dependent Tasks [&#39;flex_2.6.4.bb:do_populate_sysroot&#39;,</pre><pre>&#=
39;gcc-cross_10.1.bb:do_fetch&#39;,</pre><pre>&#39;libtool-native_2.4.6.bb:=
do_populate_sysroot&#39;,</pre><pre>&#39;mpfr_4.1.0.bb:do_populate_sysroot&=
#39;,</pre><pre>&#39;gmp_6.2.0.bb:do_populate_sysroot&#39;,</pre><pre>&#39;=
libmpc_1.1.0.bb:do_populate_sysroot&#39;,</pre><pre>&#39;texinfo-dummy-nati=
ve.bb:do_populate_sysroot&#39;,</pre><pre>&#39;gnu-config_git.bb:do_populat=
e_sysroot&#39;,</pre><pre>&#39;binutils-cross_2.34.bb:do_populate_sysroot&#=
39;,</pre><pre>&#39;autoconf_2.69.bb:do_populate_sysroot&#39;,</pre><pre>&#=
39;automake_1.16.2.bb:do_populate_sysroot&#39;,</pre><pre>&#39;zlib_1.2.11.=
bb:do_populate_sysroot&#39;])</pre><pre>=C2=A0 Task mc:crmu:/home/jon/work/=
yocto/stingray2/poky/build/../meta/recipes-devtools/gcc/gcc-cross_10.1.bb:d=
o_configure</pre><pre>(dependent Tasks [&#39;gcc-cross_10.1.bb:do_prepare_r=
ecipe_sysroot&#39;,</pre><pre>&#39;gcc-cross_10.1.bb:do_deploy_source_date_=
epoch&#39;,</pre><pre>&#39;gcc-source_10.1.bb:do_preconfigure&#39;])</pre><=
pre>=C2=A0 Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/r=
ecipes-devtools/gcc/gcc-cross_10.1.bb:do_compile</pre><pre>(dependent Tasks=
 [&#39;gcc-cross_10.1.bb:do_configure&#39;])</pre><pre>=C2=A0 Task mc:crmu:=
/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/gcc/gcc-=
cross_10.1.bb:do_install</pre><pre>(dependent Tasks [&#39;gcc-cross_10.1.bb=
:do_compile&#39;,</pre><pre>&#39;gcc-cross_10.1.bb:do_gcc_stash_builddir&#3=
9;])</pre><pre>=C2=A0 Task mc:crmu:/home/jon/work/yocto/stingray2/poky/buil=
d/../meta/recipes-devtools/gcc/gcc-cross_10.1.bb:do_populate_sysroot</pre><=
pre>(dependent Tasks [&#39;gcc-cross_10.1.bb:do_install&#39;])</pre><pre>=
=C2=A0 Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/reci=
pes-core/newlib/newlib_3.3.0.bb:do_prepare_recipe_sysroot</pre><pre>(depend=
ent Tasks [&#39;gcc-cross_10.1.bb:do_populate_sysroot&#39;,</pre><pre>&#39;=
pseudo_git.bb:do_populate_sysroot&#39;, &#39;newlib_3.3.0.bb:do_fetch&#39;]=
)</pre><pre>=C2=A0 Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/.=
./meta/recipes-core/newlib/newlib_3.3.0.bb:do_configure</pre><pre>(dependen=
t Tasks [&#39;newlib_3.3.0.bb:do_deploy_source_date_epoch&#39;,</pre><pre>&=
#39;newlib_3.3.0.bb:do_prepare_recipe_sysroot&#39;,</pre><pre>&#39;newlib_3=
.3.0.bb:do_patch&#39;])</pre><pre>=C2=A0 Task mc:crmu:/home/jon/work/yocto/=
stingray2/poky/build/../meta/recipes-core/newlib/newlib_3.3.0.bb:do_compile=
</pre><pre>(dependent Tasks [&#39;newlib_3.3.0.bb:do_configure&#39;])</pre>=
<pre>=C2=A0 Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/=
recipes-core/newlib/newlib_3.3.0.bb:do_install</pre><pre>(dependent Tasks [=
&#39;newlib_3.3.0.bb:do_compile&#39;,</pre><pre>&#39;pseudo_git.bb:do_popul=
ate_sysroot&#39;])</pre><pre>=C2=A0 Task mc:crmu:/home/jon/work/yocto/sting=
ray2/poky/build/../meta/recipes-core/newlib/newlib_3.3.0.bb:do_populate_sys=
root</pre><pre>(dependent Tasks [&#39;newlib_3.3.0.bb:do_install&#39;,</pre=
><pre>&#39;binutils-cross_2.34.bb:do_populate_sysroot&#39;])</pre><pre>=C2=
=A0 Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-core/newlib/libgloss_3.3.0.bb:do_prepare_recipe_sysroot</pre><pre>(depende=
nt Tasks [&#39;newlib_3.3.0.bb:do_populate_sysroot&#39;,</pre><pre>&#39;lib=
gloss_3.3.0.bb:do_fetch&#39;, &#39;pseudo_git.bb:do_populate_sysroot&#39;,<=
/pre><pre>&#39;gcc-cross_10.1.bb:do_populate_sysroot&#39;])</pre><pre>=C2=
=A0 Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-core/newlib/libgloss_3.3.0.bb:do_configure</pre><pre>(dependent Tasks [&#3=
9;libgloss_3.3.0.bb:do_deploy_source_date_epoch&#39;,</pre><pre>&#39;libglo=
ss_3.3.0.bb:do_prepare_recipe_sysroot&#39;,</pre><pre>&#39;libgloss_3.3.0.b=
b:do_patch&#39;])</pre><pre>=C2=A0</pre><pre>Dependency loop #3 found:</pre=
><pre>=C2=A0 Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta=
/recipes-core/newlib/libgloss_3.3.0.bb:do_compile</pre><pre>(dependent Task=
s [&#39;libgloss_3.3.0.bb:do_configure&#39;])</pre><pre>=C2=A0 Task mc:crmu=
:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-core/newlib/libg=
loss_3.3.0.bb:do_install</pre><pre>(dependent Tasks [&#39;pseudo_git.bb:do_=
populate_sysroot&#39;,</pre><pre>&#39;libgloss_3.3.0.bb:do_compile&#39;])</=
pre><pre> =C2=A0Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../m=
eta/recipes-core/newlib/libgloss_3.3.0.bb:do_populate_sysroot</pre><pre>(de=
pendent Tasks [&#39;binutils-cross_2.34.bb:do_populate_sysroot&#39;,</pre><=
pre>&#39;libgloss_3.3.0.bb:do_install&#39;])</pre><pre>=C2=A0 Task mc:crmu:=
/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/binutils=
/binutils-cross_2.34.bb:do_prepare_recipe_sysroot</pre><pre>(dependent Task=
s [&#39;flex_2.6.4.bb:do_populate_sysroot&#39;,</pre><pre>&#39;libgloss_3.3=
.0.bb:do_populate_sysroot&#39;,</pre><pre>&#39;binutils-cross_2.34.bb:do_fe=
tch&#39;,</pre><pre>&#39;texinfo-dummy-native.bb:do_populate_sysroot&#39;,<=
/pre><pre>&#39;gnu-config_git.bb:do_populate_sysroot&#39;,</pre><pre>&#39;b=
ison_3.6.4.bb:do_populate_sysroot&#39;,</pre><pre>&#39;autoconf_2.69.bb:do_=
populate_sysroot&#39;,</pre><pre>&#39;zlib_1.2.11.bb:do_populate_sysroot&#3=
9;])</pre><pre>=C2=A0 Task mc:crmu:/home/jon/work/yocto/stingray2/poky/buil=
d/../meta/recipes-devtools/binutils/binutils-cross_2.34.bb:do_configure</pr=
e><pre>(dependent Tasks</pre><pre>[&#39;binutils-cross_2.34.bb:do_deploy_so=
urce_date_epoch&#39;,</pre><pre>&#39;binutils-cross_2.34.bb:do_prepare_reci=
pe_sysroot&#39;,</pre><pre>&#39;binutils-cross_2.34.bb:do_patch&#39;])</pre=
><pre>=C2=A0 Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta=
/recipes-devtools/binutils/binutils-cross_2.34.bb:do_compile</pre><pre>(dep=
endent Tasks [&#39;binutils-cross_2.34.bb:do_configure&#39;])</pre><pre>=C2=
=
=A0 Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-devtools/binutils/binutils-cross_2.34.bb:do_install</pre><pre>(dependent T=
asks [&#39;binutils-cross_2.34.bb:do_compile&#39;])</pre><pre>=C2=A0 Task m=
c:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/b=
inutils/binutils-cross_2.34.bb:do_populate_sysroot</pre><pre>(dependent Tas=
ks [&#39;binutils-cross_2.34.bb:do_install&#39;])</pre><pre>=C2=A0 Task mc:=
crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/gcc=
/gcc-cross_10.1.bb:do_prepare_recipe_sysroot</pre><pre>(dependent Tasks [&#=
39;flex_2.6.4.bb:do_populate_sysroot&#39;,</pre><pre>&#39;gcc-cross_10.1.bb=
:do_fetch&#39;,</pre><pre>&#39;libtool-native_2.4.6.bb:do_populate_sysroot&=
#39;,</pre><pre>&#39;mpfr_4.1.0.bb:do_populate_sysroot&#39;,</pre><pre>&#39=
;gmp_6.2.0.bb:do_populate_sysroot&#39;,</pre><pre>&#39;libmpc_1.1.0.bb:do_p=
opulate_sysroot&#39;,</pre><pre>&#39;texinfo-dummy-native.bb:do_populate_sy=
sroot&#39;,</pre><pre>&#39;gnu-config_git.bb:do_populate_sysroot&#39;,</pre=
><pre>&#39;binutils-cross_2.34.bb:do_populate_sysroot&#39;,</pre><pre>&#39;=
autoconf_2.69.bb:do_populate_sysroot&#39;,</pre><pre>&#39;automake_1.16.2.b=
b:do_populate_sysroot&#39;,</pre><pre>&#39;zlib_1.2.11.bb:do_populate_sysro=
ot&#39;])</pre><pre>=C2=A0 Task mc:crmu:/home/jon/work/yocto/stingray2/poky=
/build/../meta/recipes-devtools/gcc/gcc-cross_10.1.bb:do_configure</pre><pr=
e>(dependent Tasks [&#39;gcc-cross_10.1.bb:do_prepare_recipe_sysroot&#39;,<=
/pre><pre>&#39;gcc-cross_10.1.bb:do_deploy_source_date_epoch&#39;,</pre><pr=
e>&#39;gcc-source_10.1.bb:do_preconfigure&#39;])</pre><pre>=C2=A0 Task mc:c=
rmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/gcc/=
gcc-cross_10.1.bb:do_compile</pre><pre>(dependent Tasks [&#39;gcc-cross_10.=
1.bb:do_configure&#39;])</pre><pre>=C2=A0 Task mc:crmu:/home/jon/work/yocto=
/stingray2/poky/build/../meta/recipes-devtools/gcc/gcc-cross_10.1.bb:do_gcc=
_stash_builddir</pre><pre>(dependent Tasks [&#39;gcc-cross_10.1.bb:do_compi=
le&#39;])</pre><pre>=C2=A0 Task mc:crmu:/home/jon/work/yocto/stingray2/poky=
/build/../meta/recipes-devtools/gcc/gcc-cross_10.1.bb:do_install</pre><pre>=
(dependent Tasks [&#39;gcc-cross_10.1.bb:do_compile&#39;,</pre><pre>&#39;gc=
c-cross_10.1.bb:do_gcc_stash_builddir&#39;])</pre><pre>=C2=A0 Task mc:crmu:=
/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/gcc/gcc-=
cross_10.1.bb:do_populate_sysroot</pre><pre>(dependent Tasks [&#39;gcc-cros=
s_10.1.bb:do_install&#39;])</pre><pre>=C2=A0 Task mc:crmu:/home/jon/work/yo=
cto/stingray2/poky/build/../meta/recipes-core/newlib/libgloss_3.3.0.bb:do_p=
repare_recipe_sysroot</pre><pre>(dependent Tasks [&#39;newlib_3.3.0.bb:do_p=
opulate_sysroot&#39;,</pre><pre>&#39;libgloss_3.3.0.bb:do_fetch&#39;, &#39;=
pseudo_git.bb:do_populate_sysroot&#39;,</pre><pre>&#39;gcc-cross_10.1.bb:do=
_populate_sysroot&#39;])</pre><pre>=C2=A0 Task mc:crmu:/home/jon/work/yocto=
/stingray2/poky/build/../meta/recipes-core/newlib/libgloss_3.3.0.bb:do_conf=
igure</pre><pre>(dependent Tasks [&#39;libgloss_3.3.0.bb:do_deploy_source_d=
ate_epoch&#39;,</pre><pre>&#39;libgloss_3.3.0.bb:do_prepare_recipe_sysroot&=
#39;,</pre><pre>&#39;libgloss_3.3.0.bb:do_patch&#39;])</pre><pre>=C2=A0</pr=
e><pre>Dependency loop #4 found:</pre><pre>=C2=A0 Task mc:crmu:/home/jon/wo=
rk/yocto/stingray2/poky/build/../meta/recipes-core/newlib/libgloss_3.3.0.bb=
:do_compile</pre><pre>(dependent Tasks [&#39;libgloss_3.3.0.bb:do_configure=
&#39;])</pre><pre>=C2=A0 Task mc:crmu:/home/jon/work/yocto/stingray2/poky/b=
uild/../meta/recipes-core/newlib/libgloss_3.3.0.bb:do_install</pre><pre>(de=
pendent Tasks [&#39;pseudo_git.bb:do_populate_sysroot&#39;,</pre><pre>&#39;=
libgloss_3.3.0.bb:do_compile&#39;])</pre><pre>=C2=A0 Task mc:crmu:/home/jon=
/work/yocto/stingray2/poky/build/../meta/recipes-core/newlib/libgloss_3.3.0=
.bb:do_populate_sysroot</pre><pre>(dependent Tasks [&#39;binutils-cross_2.3=
4.bb:do_populate_sysroot&#39;,</pre><pre>&#39;libgloss_3.3.0.bb:do_install&=
#39;])</pre><pre>=C2=A0 Task mc:crmu:/home/jon/work/yocto/stingray2/poky/bu=
ild/../meta/recipes-devtools/binutils/binutils-cross_2.34.bb:do_prepare_rec=
ipe_sysroot</pre><pre>(dependent Tasks [&#39;flex_2.6.4.bb:do_populate_sysr=
oot&#39;,</pre><pre>&#39;libgloss_3.3.0.bb:do_populate_sysroot&#39;,</pre><=
pre>&#39;binutils-cross_2.34.bb:do_fetch&#39;,</pre><pre>&#39;texinfo-dummy=
-native.bb:do_populate_sysroot&#39;,</pre><pre>&#39;gnu-config_git.bb:do_po=
pulate_sysroot&#39;,</pre><pre>&#39;bison_3.6.4.bb:do_populate_sysroot&#39;=
,</pre><pre>&#39;autoconf_2.69.bb:do_populate_sysroot&#39;,</pre><pre>&#39;=
zlib_1.2.11.bb:do_populate_sysroot&#39;])</pre><pre>=C2=A0 Task mc:crmu:/ho=
me/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/binutils/bi=
nutils-cross_2.34.bb:do_configure</pre><pre>(dependent Tasks</pre><pre>[&#3=
9;binutils-cross_2.34.bb:do_deploy_source_date_epoch&#39;,</pre><pre>&#39;b=
inutils-cross_2.34.bb:do_prepare_recipe_sysroot&#39;,</pre><pre>&#39;binuti=
ls-cross_2.34.bb:do_patch&#39;])</pre><pre>=C2=A0 Task mc:crmu:/home/jon/wo=
rk/yocto/stingray2/poky/build/../meta/recipes-devtools/binutils/binutils-cr=
oss_2.34.bb:do_compile</pre><pre>(dependent Tasks [&#39;binutils-cross_2.34=
.bb:do_configure&#39;])</pre><pre>=C2=A0 Task mc:crmu:/home/jon/work/yocto/=
stingray2/poky/build/../meta/recipes-devtools/binutils/binutils-cross_2.34.=
bb:do_install</pre><pre>(dependent Tasks [&#39;binutils-cross_2.34.bb:do_co=
mpile&#39;])</pre><pre>=C2=A0 Task mc:crmu:/home/jon/work/yocto/stingray2/p=
oky/build/../meta/recipes-devtools/binutils/binutils-cross_2.34.bb:do_popul=
ate_sysroot</pre><pre>(dependent Tasks [&#39;binutils-cross_2.34.bb:do_inst=
all&#39;])</pre><pre>=C2=A0 Task mc:crmu:/home/jon/work/yocto/stingray2/pok=
y/build/../meta/recipes-devtools/gcc/gcc-cross_10.1.bb:do_prepare_recipe_sy=
sroot</pre><pre>(dependent Tasks [&#39;flex_2.6.4.bb:do_populate_sysroot&#3=
9;,</pre><pre>&#39;gcc-cross_10.1.bb:do_fetch&#39;,</pre><pre>&#39;libtool-=
native_2.4.6.bb:do_populate_sysroot&#39;,</pre><pre>&#39;mpfr_4.1.0.bb:do_p=
opulate_sysroot&#39;,</pre><pre>&#39;gmp_6.2.0.bb:do_populate_sysroot&#39;,=
</pre><pre>&#39;libmpc_1.1.0.bb:do_populate_sysroot&#39;,</pre><pre>&#39;te=
xinfo-dummy-native.bb:do_populate_sysroot&#39;,</pre><pre>&#39;gnu-config_g=
it.bb:do_populate_sysroot&#39;,</pre><pre>&#39;binutils-cross_2.34.bb:do_po=
pulate_sysroot&#39;,</pre><pre>&#39;autoconf_2.69.bb:do_populate_sysroot&#3=
9;,</pre><pre>&#39;automake_1.16.2.bb:do_populate_sysroot&#39;,</pre><pre>&=
#39;zlib_1.2.11.bb:do_populate_sysroot&#39;])</pre><pre>=C2=A0 Task mc:crmu=
:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/gcc/gcc=
-cross_10.1.bb:do_configure</pre><pre>(dependent Tasks [&#39;gcc-cross_10.1=
.bb:do_prepare_recipe_sysroot&#39;,</pre><pre>&#39;gcc-cross_10.1.bb:do_dep=
loy_source_date_epoch&#39;,</pre><pre>&#39;gcc-source_10.1.bb:do_preconfigu=
re&#39;])</pre><pre>=C2=A0 Task mc:crmu:/home/jon/work/yocto/stingray2/poky=
/build/../meta/recipes-devtools/gcc/gcc-cross_10.1.bb:do_compile</pre><pre>=
(dependent Tasks [&#39;gcc-cross_10.1.bb:do_configure&#39;])</pre><pre>=C2=
=A0 Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-devtools/gcc/gcc-cross_10.1.bb:do_gcc_stash_builddir</pre><pre>(dependent =
Tasks [&#39;gcc-cross_10.1.bb:do_compile&#39;])</pre><pre>=C2=A0 Task mc:cr=
mu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/gcc/g=
cc-cross_10.1.bb:do_install</pre><pre>(dependent Tasks [&#39;gcc-cross_10.1=
.bb:do_compile&#39;,</pre><pre>&#39;gcc-cross_10.1.bb:do_gcc_stash_builddir=
&#39;])</pre><pre>=C2=A0 Task mc:crmu:/home/jon/work/yocto/stingray2/poky/b=
uild/../meta/recipes-devtools/gcc/gcc-cross_10.1.bb:do_populate_sysroot</pr=
e><pre>(dependent Tasks [&#39;gcc-cross_10.1.bb:do_install&#39;])</pre><pre=
>=C2=A0 Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/reci=
pes-core/newlib/newlib_3.3.0.bb:do_prepare_recipe_sysroot</pre><pre>(depend=
ent Tasks [&#39;gcc-cross_10.1.bb:do_populate_sysroot&#39;,</pre><pre>&#39;=
pseudo_git.bb:do_populate_sysroot&#39;, &#39;newlib_3.3.0.bb:do_fetch&#39;]=
)</pre><pre>=C2=A0 Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/.=
./meta/recipes-core/newlib/newlib_3.3.0.bb:do_configure</pre><pre>(dependen=
t Tasks [&#39;newlib_3.3.0.bb:do_deploy_source_date_epoch&#39;,</pre><pre>&=
#39;newlib_3.3.0.bb:do_prepare_recipe_sysroot&#39;,</pre><pre>&#39;newlib_3=
.3.0.bb:do_patch&#39;])</pre><pre>=C2=A0 Task mc:crmu:/home/jon/work/yocto/=
stingray2/poky/build/../meta/recipes-core/newlib/newlib_3.3.0.bb:do_compile=
</pre><pre>(dependent Tasks [&#39;newlib_3.3.0.bb:do_configure&#39;])</pre>=
<pre>=C2=A0 Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/=
recipes-core/newlib/newlib_3.3.0.bb:do_install</pre><pre>(dependent Tasks [=
&#39;newlib_3.3.0.bb:do_compile&#39;,</pre><pre>&#39;pseudo_git.bb:do_popul=
ate_sysroot&#39;])</pre><pre>=C2=A0 Task mc:crmu:/home/jon/work/yocto/sting=
ray2/poky/build/../meta/recipes-core/newlib/newlib_3.3.0.bb:do_populate_sys=
root</pre><pre>(dependent Tasks [&#39;newlib_3.3.0.bb:do_install&#39;,</pre=
><pre>&#39;binutils-cross_2.34.bb:do_populate_sysroot&#39;])</pre><pre>=C2=
=A0 Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-core/newlib/libgloss_3.3.0.bb:do_prepare_recipe_sysroot</pre><pre>(depende=
nt Tasks [&#39;newlib_3.3.0.bb:do_populate_sysroot&#39;,</pre><pre>&#39;lib=
gloss_3.3.0.bb:do_fetch&#39;, &#39;pseudo_git.bb:do_populate_sysroot&#39;,<=
/pre><pre>&#39;gcc-cross_10.1.bb:do_populate_sysroot&#39;])</pre><pre>=C2=
=A0 Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-core/newlib/libgloss_3.3.0.bb:do_configure</pre><pre>(dependent Tasks [&#3=
9;libgloss_3.3.0.bb:do_deploy_source_date_epoch&#39;,</pre><pre>&#39;libglo=
ss_3.3.0.bb:do_prepare_recipe_sysroot&#39;,</pre><pre>&#39;libgloss_3.3.0.b=
b:do_patch&#39;])</pre><pre>=C2=A0</pre><pre>Dependency loop #5 found:</pre=
><pre>=C2=A0 Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta=
/recipes-core/newlib/libgloss_3.3.0.bb:do_compile</pre><pre>(dependent Task=
s [&#39;libgloss_3.3.0.bb:do_configure&#39;])</pre><pre>=C2=A0 Task mc:crmu=
:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-core/newlib/libg=
loss_3.3.0.bb:do_install</pre><pre>(dependent Tasks [&#39;pseudo_git.bb:do_=
populate_sysroot&#39;,</pre><pre>&#39;libgloss_3.3.0.bb:do_compile&#39;])</=
pre><pre>=C2=A0 Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../m=
eta/recipes-core/newlib/libgloss_3.3.0.bb:do_populate_sysroot</pre><pre>(de=
pendent Tasks [&#39;binutils-cross_2.34.bb:do_populate_sysroot&#39;,</pre><=
pre>&#39;libgloss_3.3.0.bb:do_install&#39;])</pre><pre>=C2=A0 Task mc:crmu:=
/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/binutils=
/binutils-cross_2.34.bb:do_prepare_recipe_sysroot</pre><pre>(dependent Task=
s [&#39;flex_2.6.4.bb:do_populate_sysroot&#39;,</pre><pre>&#39;libgloss_3.3=
.0.bb:do_populate_sysroot&#39;,</pre><pre>&#39;binutils-cross_2.34.bb:do_fe=
tch&#39;,</pre><pre>&#39;texinfo-dummy-native.bb:do_populate_sysroot&#39;,<=
/pre><pre>&#39;gnu-config_git.bb:do_populate_sysroot&#39;,</pre><pre>&#39;b=
ison_3.6.4.bb:do_populate_sysroot&#39;,</pre><pre>&#39;autoconf_2.69.bb:do_=
populate_sysroot&#39;,</pre><pre>&#39;zlib_1.2.11.bb:do_populate_sysroot&#3=
9;])</pre><pre>=C2=A0 Task mc:crmu:/home/jon/work/yocto/stingray2/poky/buil=
d/../meta/recipes-devtools/binutils/binutils-cross_2.34.bb:do_configure</pr=
e><pre>(dependent Tasks</pre><pre>[&#39;binutils-cross_2.34.bb:do_deploy_so=
urce_date_epoch&#39;,</pre><pre>&#39;binutils-cross_2.34.bb:do_prepare_reci=
pe_sysroot&#39;,</pre><pre>&#39;binutils-cross_2.34.bb:do_patch&#39;])</pre=
><pre>=C2=A0 Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta=
/recipes-devtools/binutils/binutils-cross_2.34.bb:do_compile</pre><pre>(dep=
endent Tasks [&#39;binutils-cross_2.34.bb:do_configure&#39;])</pre><pre>=C2=
=
=A0 Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-devtools/binutils/binutils-cross_2.34.bb:do_install</pre><pre>(dependent T=
asks [&#39;binutils-cross_2.34.bb:do_compile&#39;])</pre><pre>=C2=A0 Task m=
c:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/b=
inutils/binutils-cross_2.34.bb:do_populate_sysroot</pre><pre>(dependent Tas=
ks [&#39;binutils-cross_2.34.bb:do_install&#39;])</pre><pre> =C2=A0Task mc:=
crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-core/newlib/=
newlib_3.3.0.bb:do_populate_sysroot</pre><pre>(dependent Tasks [&#39;newlib=
_3.3.0.bb:do_install&#39;,</pre><pre>&#39;binutils-cross_2.34.bb:do_populat=
e_sysroot&#39;])</pre><pre>=C2=A0 Task mc:crmu:/home/jon/work/yocto/stingra=
y2/poky/build/../meta/recipes-core/newlib/libgloss_3.3.0.bb:do_prepare_reci=
pe_sysroot</pre><pre>(dependent Tasks [&#39;newlib_3.3.0.bb:do_populate_sys=
root&#39;,</pre><pre>&#39;libgloss_3.3.0.bb:do_fetch&#39;, &#39;pseudo_git.=
bb:do_populate_sysroot&#39;,</pre><pre>&#39;gcc-cross_10.1.bb:do_populate_s=
ysroot&#39;])</pre><pre>=C2=A0 Task mc:crmu:/home/jon/work/yocto/stingray2/=
poky/build/../meta/recipes-core/newlib/libgloss_3.3.0.bb:do_configure</pre>=
<pre>(dependent Tasks [&#39;libgloss_3.3.0.bb:do_deploy_source_date_epoch&#=
39;,</pre><pre>&#39;libgloss_3.3.0.bb:do_prepare_recipe_sysroot&#39;,</pre>=
<pre>&#39;libgloss_3.3.0.bb:do_patch&#39;])</pre><pre>=C2=A0</pre><pre>Depe=
ndency loop #6 found:</pre><pre>=C2=A0 Task mc:crmu:/home/jon/work/yocto/st=
ingray2/poky/build/../meta/recipes-core/newlib/libgloss_3.3.0.bb:do_populat=
e_sysroot</pre><pre>(dependent Tasks [&#39;binutils-cross_2.34.bb:do_popula=
te_sysroot&#39;,</pre><pre>&#39;libgloss_3.3.0.bb:do_install&#39;])</pre><p=
re>=C2=A0 Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/re=
cipes-devtools/binutils/binutils-cross_2.34.bb:do_prepare_recipe_sysroot</p=
re><pre>(dependent Tasks [&#39;flex_2.6.4.bb:do_populate_sysroot&#39;,</pre=
><pre>&#39;libgloss_3.3.0.bb:do_populate_sysroot&#39;,</pre><pre>&#39;binut=
ils-cross_2.34.bb:do_fetch&#39;,</pre><pre>&#39;texinfo-dummy-native.bb:do_=
populate_sysroot&#39;,</pre><pre>&#39;gnu-config_git.bb:do_populate_sysroot=
&#39;,</pre><pre>&#39;bison_3.6.4.bb:do_populate_sysroot&#39;,</pre><pre>&#=
39;autoconf_2.69.bb:do_populate_sysroot&#39;,</pre><pre>&#39;zlib_1.2.11.bb=
:do_populate_sysroot&#39;])</pre><pre>=C2=A0 Task mc:crmu:/home/jon/work/yo=
cto/stingray2/poky/build/../meta/recipes-devtools/binutils/binutils-cross_2=
.34.bb:do_configure</pre><pre>(dependent Tasks</pre><pre>[&#39;binutils-cro=
ss_2.34.bb:do_deploy_source_date_epoch&#39;,</pre><pre>&#39;binutils-cross_=
2.34.bb:do_prepare_recipe_sysroot&#39;,</pre><pre>&#39;binutils-cross_2.34.=
bb:do_patch&#39;])</pre><pre>=C2=A0 Task mc:crmu:/home/jon/work/yocto/sting=
ray2/poky/build/../meta/recipes-devtools/binutils/binutils-cross_2.34.bb:do=
_compile</pre><pre>(dependent Tasks [&#39;binutils-cross_2.34.bb:do_configu=
re&#39;])</pre><pre>=C2=A0 Task mc:crmu:/home/jon/work/yocto/stingray2/poky=
/build/../meta/recipes-devtools/binutils/binutils-cross_2.34.bb:do_install<=
/pre><pre>(dependent Tasks [&#39;binutils-cross_2.34.bb:do_compile&#39;])</=
pre><pre>=C2=A0 Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../m=
eta/recipes-devtools/binutils/binutils-cross_2.34.bb:do_populate_sysroot</p=
re><pre>(dependent Tasks [&#39;binutils-cross_2.34.bb:do_install&#39;])</pr=
e><p class=3D"MsoNormal"><br><br></p><pre></pre></blockquote></div></div><d=
iv lang=3D"EN-US" link=3D"blue" vlink=3D"purple"><div class=3D"m_-675832856=
078048696WordSection1"></div></div><br><br><br><br></blockquote></div></div=
>

--000000000000cb060105acb47a49--
