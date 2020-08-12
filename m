Received: from mail-yb1-f169.google.com (mail-yb1-f169.google.com [209.85.219.169])
 by mx.groups.io with SMTP id smtpd.web12.107.1597259038106096988
 for <poky@lists.yoctoproject.org>;
 Wed, 12 Aug 2020 12:03:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@broadcom.com header.s=google header.b=BJQDsi+6;
 spf=permerror, err=parse error for token &{10 18 %{i}._ip.%{h}._ehlo.%{d}._spf.vali.email}: invalid domain name (domain: broadcom.com, ip: 209.85.219.169, mailfrom: jonathan.richardson@broadcom.com)
Received: by mail-yb1-f169.google.com with SMTP id s195so1933984ybc.8
        for <poky@lists.yoctoproject.org>; Wed, 12 Aug 2020 12:03:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google;
        h=from:references:in-reply-to:mime-version:thread-index:date
         :message-id:subject:to:cc;
        bh=M0etOwUu+eQPPfzIqELLz+Zckc7FCyezeix4EiKlzY8=;
        b=BJQDsi+6KMFxXD6prdWTnPIJaDuJdawVgaQ8b0O15dabysYI/2T7xTCacywysxvn71
         S745pALzJbG1IJfZdb+fP5aaRDNtpdm5yAA8OCpfCgJD0tazhYPOsBrZiccI/8fGDrIZ
         4CFVyv9nz0MbLGTFIFBhMq4ca91whVk3iD8Lc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:references:in-reply-to:mime-version
         :thread-index:date:message-id:subject:to:cc;
        bh=M0etOwUu+eQPPfzIqELLz+Zckc7FCyezeix4EiKlzY8=;
        b=U0ZyOWdXojzv8etq7NMXlmxFPexGD+VC9rP5OAl37j5/pah9jASeWYbAAGo+pqpXNH
         0QgdsLSwPp6bpFQYiomLhKutq7auNa1etYnSm+mMFWbUJV897hNKPb824ix91ybR2reC
         OvYGJj59y1i5Oh4Clv7RSTQuRPnsZQ8w6ENPI3y2ZIRhFollBMNkqV1dgzXs9tcU3Na5
         4DGOS7ZYU4rw+u5K4QJYyIyoFfuis5UDJwXBlc5982R4Cv+I2QwiSZZ1hkH6frPzEXNt
         NRhvRQCZTPOTg4Ivp7cchpAxLNw5GN/4J3CrdsuVmrscCEfkJaf5qOy0XhfeupPv9wiP
         rU+Q==
X-Gm-Message-State: AOAM530WV5kN/5FtgrEfG77RwcCatLhUxXAeb+oeFw4Tj1vEU5Fo0vlG
	r6mFXLVkVtdWNeR7Lyn5qDR9w2cWZyi5/yBi68RyQA==
X-Google-Smtp-Source: ABdhPJx6cXE1ZgcCYX4fYkmzuDg6Q+xppkfkKjSFDYyYnbVf5ffno45Z7Jf5477sygsyxUQRfg0naJzsJeQz0w2mhns=
X-Received: by 2002:a25:950:: with SMTP id u16mr1298688ybm.86.1597259036824;
 Wed, 12 Aug 2020 12:03:56 -0700 (PDT)
From: "Jonathan Richardson" <jonathan.richardson@broadcom.com>
References: <CAHrpVsUkTgim53raUgXgkiGvpzrWZJVPFEBzU1YX0S03_ix-kg@mail.gmail.com>
 <CAMKF1so6iTZNupBciUh8dgUQDWQ1-YH7iUy=RU4YFMrx77mqDA@mail.gmail.com>
 <CAHrpVsVvD55j=BHjN2Jv+b71A8rOTVpYYoaMKAyF_zFcXMUw6A@mail.gmail.com> <0994fb3e-7adb-def7-89ab-f8e8c3f64113@linux.microsoft.com>
In-Reply-To: <0994fb3e-7adb-def7-89ab-f8e8c3f64113@linux.microsoft.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 14.0
Thread-Index: AQKXI7gGwy+StpNT9sESDv9064MzaAJS95dtAj92hN0CwnpnBad3dpuA
Date: Wed, 12 Aug 2020 12:03:54 -0700
Message-ID: <21192528214e26ccb6a30dfa64e1b6cf@mail.gmail.com>
Subject: Re: [poky] TCLIBC with newlib
To: Alejandro Hernandez Samaniego <alhe@linux.microsoft.com>, Khem Raj <raj.khem@gmail.com>
Cc: poky@lists.yoctoproject.org
X-Groupsio-MsgNum: 12137
Content-Type: multipart/mixed; boundary="00000000000083591705acb2d9cb"

--00000000000083591705acb2d9cb
Content-Type: multipart/alternative; boundary="00000000000083591505acb2d9c9"

--00000000000083591505acb2d9c9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Alejandro,



Thanks for your feedback. I narrowed it down. It builds when building
simple code that uses a makefile to compile some MCU code running on a
cortex-m0. Now we=E2=80=99re compiling zephyr OS for a cortex M0-plus. The
toolchain is a bit more complicated because of all the x86 native build
dependencies.



Ignoring that for now I created a simple helloworld recipe with an empty
main compiled with autotools (attached). The problems arise when autotools
pulls in libtool-cross. If you switch to a makefile instead of using
autotools then libtool-cross doesn=E2=80=99t get pulled in and it builds f=
ine. I
think the toolchain should be buildable when using autotools class and
newlib.



Here is how to reproduce. You can use any machine tuning.



build/conf/local.conf:

MACHINE =3D "cortexm0"

TCLIBC =3D "newlib"



conf/machine/cortexm0.conf:

DEFAULTTUNE =3D "armv6t-novfp"

require conf/machine/include/arm/arch-armv8a.inc



Apply attached patch then bitbake helloworld.



Note that with this simple example I don=E2=80=99t have the issue having t=
o
redefine LIBC_DEPENDENCIES. The zephyr recipe pulled in various native
python modules that likely caused some issue there. Also there are no
circular dependencies with this. Thanks.



*From:* Alejandro Hernandez Samaniego [mailto:alhe@linux.microsoft.com]
*Sent:* Monday, August 10, 2020 10:53 PM
*To:* jonathan.richardson@broadcom.com; Khem Raj
*Cc:* poky@lists.yoctoproject.org
*Subject:* Re: [poky] TCLIBC with newlib



Hello,

I'm pretty sure, you are causing the dependency loop with the depends +
cross class changes.

I think there is some wiring in libgcc that is not matching properly with
something defined in your BSP layer, likely in your machine.conf, although
like Khem said, removing the dbg packages from the dependencies would
workaround this issue.

Yes, a newlib toolchain can be created, this works fine with the supported
BSPs (and others from some vendors) AFAIC I dont think changes are require=
d
on tclibc-newlib at this point since it contains the basics, anything else
would be added per architecture on their BSP layer.

Its hard to tell without knowing anything about the architecture you're
using, but I think the error you are hitting its happening because your
runtime isn't being built properly or is incompatible, it looks like at th=
e
very least you should have stubs for _exit() patched on libgloss/newlib fo=
r
your architecture (or submit those to newlib upstream), if you're using
something ARM based you may be able to build using semhosting with the
rdimon specs or even nosys but it probably wouldn't work properly at
runtime, if that allows you to build you can proceed to add you
architecture specific functions to libgloss.



Cheers,

Alejandro

On 8/7/20 4:26 PM, Jonathan Richardson via lists.yoctoproject.org wrote:

On Thu, Aug 6, 2020 at 9:58 PM Khem Raj <raj.khem@gmail.com>
<raj.khem@gmail.com> wrote:



On Thu, Aug 6, 2020 at 5:22 PM Jonathan Richardson via

lists.yoctoproject.org

<jonathan.richardson=3Dbroadcom.com@lists.yoctoproject.org>
<jonathan.richardson=3Dbroadcom.com@lists.yoctoproject.org> wrote:



Hi,



I'm trying to create a toolchain using newlib as the libc. I set

TCLIBC=3D"newlib". First error is:

ERROR: Nothing PROVIDES 'libgcc-dbg' (but

mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta-brcm/meta-stingr=
ay2/recipes-zephyr/brcm-zephyr/brcm-zephyr.bb

DEPENDS on or otherwise requires it). Close matches:

  libgcc

  libgcc RPROVIDES libgcc-dbg

ERROR: Required build target 'brcm-zephyr' has no buildable providers.

Missing or unbuildable dependency chain was: ['brcm-zephyr', 'libgcc-dbg']



This is caused by LIBC_DEPENDENCIES in

meta/conf/distro/include/tclibc-newlib.inc:

LIBC_DEPENDENCIES =3D "\

    newlib-dbg \

    newlib-dev \

    libgloss \

    libgloss-dev \

    libgloss-dbg \

    libgcc-dev \

    libgcc-dbg \

    libstdc++-dev \

    libstdc++-staticdev \



Remove all -dbg packages from above list.



TOOLCHAIN_TARGET_TASK ?=3D "${LIBC_DEPENDENCIES}"



TOOLCHAIN_TARGET_TASK =3D "newlib libgloss" seems to fix it. Why are the

dev/dbg packages required as

dependencies and why does it think the recipes for libgloss, libgcc,

etc don't provide them?



Then libtool-cross fails when autoconf checks if the compiler works

because it can't find _exit().

So I added this to my local.conf:

EXTRA_OECONF_append_class_target =3D " LIBS=3D-lgloss-linux"

EXTRA_OECONF_append_class_cross =3D " LIBS=3D-lgloss-linux"



It should be EXTRA_OECONF_append_class-target and

EXTRA_OECONF_append_class-cross, there is a underscore there instead

of '-'



Thanks. More than this is required though. I added this so far:



diff --git a/meta/classes/base.bbclass b/meta/classes/base.bbclass

index 6776242740..262db927cd 100644

--- a/meta/classes/base.bbclass

+++ b/meta/classes/base.bbclass

@@ -75,6 +75,7 @@ BASE_DEFAULT_DEPS =3D "virtual/${TARGET_PREFIX}gcc

virtual/${TARGET_PREFIX}compile



 BASEDEPENDS =3D ""

 BASEDEPENDS_class-target =3D "${@base_dep_prepend(d)}"

+BASEDEPENDS_class-cross =3D "${@base_dep_prepend(d)}"

 BASEDEPENDS_class-nativesdk =3D "${@base_dep_prepend(d)}"



 DEPENDS_prepend=3D"${BASEDEPENDS} "

diff --git a/meta/conf/distro/include/tclibc-newlib.inc

b/meta/conf/distro/include/tclibc-newlib.inc

index bf89b11288..cb55f3a82c 100644

--- a/meta/conf/distro/include/tclibc-newlib.inc

+++ b/meta/conf/distro/include/tclibc-newlib.inc

@@ -18,13 +18,10 @@ DISTRO_FEATURES_BACKFILL_CONSIDERED +=3D "ldconfig"

 IMAGE_LINGUAS =3D ""



 LIBC_DEPENDENCIES =3D "\

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

@@ -34,6 +31,7 @@ ASSUME_PROVIDED +=3D "virtual/crypt"

 # Its useful to be able to extend newlib, but we dont provide a

native variant of libgloss

 NEWLIB_EXTENDED ?=3D  "libgloss libgcc"

 BASE_DEFAULT_DEPS_append_class-target =3D " ${NEWLIB_EXTENDED}"

+BASE_DEFAULT_DEPS_append_class-cross =3D " ${NEWLIB_EXTENDED}"



 TARGET_OS =3D "elf"

 TARGET_OS_arm =3D "eabi"

@@ -45,3 +43,9 @@ TOOLCHAIN_NEED_CONFIGSITE_CACHE_remove =3D "zlib ncurses=
"

 # disable pie security flags by default

 SECURITY_CFLAGS_libc-newlib =3D "${SECURITY_NOPIE_CFLAGS}"

 SECURITY_LDFLAGS_libc-newlib =3D ""

+

+EXTRA_OECONF_append_class-target =3D " LIBS=3D-lgloss-linux"

+EXTRA_OECONF_append_class-cross =3D " LIBS=3D-lgloss-linux"

+# binutils-cross.inc sets INHIBIT_DEFAULT_DEPS =3D "1" which will cause

BASEDEBPENDS to not

+# include libgloss which causes the autoconf compiler check to fail.

+DEPENDS_append_pn-binutils-cross-arm =3D " libgloss"



Adding the dependency to binutils-cross-arm causes circular

dependencies though. I don't know

what's going on here:



Dependency loop #1 found:

  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-c=
ore/newlib/libgloss_3.3.0.bb:do_compile

(dependent Tasks ['libgloss_3.3.0.bb:do_configure'])

  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-c=
ore/newlib/libgloss_3.3.0.bb:do_install

(dependent Tasks ['pseudo_git.bb:do_populate_sysroot',

'libgloss_3.3.0.bb:do_compile'])

  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-c=
ore/newlib/libgloss_3.3.0.bb:do_populate_sysroot

(dependent Tasks ['binutils-cross_2.34.bb:do_populate_sysroot',

'libgloss_3.3.0.bb:do_install'])

  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-d=
evtools/binutils/binutils-cross_2.34.bb:do_prepare_recipe_sysroot

(dependent Tasks ['flex_2.6.4.bb:do_populate_sysroot',

'libgloss_3.3.0.bb:do_populate_sysroot',

'binutils-cross_2.34.bb:do_fetch',

'texinfo-dummy-native.bb:do_populate_sysroot',

'gnu-config_git.bb:do_populate_sysroot',

'bison_3.6.4.bb:do_populate_sysroot',

'autoconf_2.69.bb:do_populate_sysroot',

'zlib_1.2.11.bb:do_populate_sysroot'])

  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-d=
evtools/binutils/binutils-cross_2.34.bb:do_configure

(dependent Tasks

['binutils-cross_2.34.bb:do_deploy_source_date_epoch',

'binutils-cross_2.34.bb:do_prepare_recipe_sysroot',

'binutils-cross_2.34.bb:do_patch'])

  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-d=
evtools/binutils/binutils-cross_2.34.bb:do_compile

(dependent Tasks ['binutils-cross_2.34.bb:do_configure'])

  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-d=
evtools/binutils/binutils-cross_2.34.bb:do_install

(dependent Tasks ['binutils-cross_2.34.bb:do_compile'])

  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-d=
evtools/binutils/binutils-cross_2.34.bb:do_populate_sysroot

(dependent Tasks ['binutils-cross_2.34.bb:do_install'])

  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-d=
evtools/gcc/gcc-cross_10.1.bb:do_prepare_recipe_sysroot

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

  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-d=
evtools/gcc/gcc-cross_10.1.bb:do_configure

(dependent Tasks ['gcc-cross_10.1.bb:do_prepare_recipe_sysroot',

'gcc-cross_10.1.bb:do_deploy_source_date_epoch',

'gcc-source_10.1.bb:do_preconfigure'])

  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-d=
evtools/gcc/gcc-cross_10.1.bb:do_compile

(dependent Tasks ['gcc-cross_10.1.bb:do_configure'])

  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-d=
evtools/gcc/gcc-cross_10.1.bb:do_install

(dependent Tasks ['gcc-cross_10.1.bb:do_compile',

'gcc-cross_10.1.bb:do_gcc_stash_builddir'])

  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-d=
evtools/gcc/gcc-cross_10.1.bb:do_populate_sysroot

(dependent Tasks ['gcc-cross_10.1.bb:do_install'])

  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-c=
ore/newlib/libgloss_3.3.0.bb:do_prepare_recipe_sysroot

(dependent Tasks ['newlib_3.3.0.bb:do_populate_sysroot',

'libgloss_3.3.0.bb:do_fetch', 'pseudo_git.bb:do_populate_sysroot',

'gcc-cross_10.1.bb:do_populate_sysroot'])

  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-c=
ore/newlib/libgloss_3.3.0.bb:do_configure

(dependent Tasks ['libgloss_3.3.0.bb:do_deploy_source_date_epoch',

'libgloss_3.3.0.bb:do_prepare_recipe_sysroot',

'libgloss_3.3.0.bb:do_patch'])



Dependency loop #2 found:

  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-c=
ore/newlib/libgloss_3.3.0.bb:do_compile

(dependent Tasks ['libgloss_3.3.0.bb:do_configure'])

  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-c=
ore/newlib/libgloss_3.3.0.bb:do_install

(dependent Tasks ['pseudo_git.bb:do_populate_sysroot',

'libgloss_3.3.0.bb:do_compile'])

  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-c=
ore/newlib/libgloss_3.3.0.bb:do_populate_sysroot

(dependent Tasks ['binutils-cross_2.34.bb:do_populate_sysroot',

'libgloss_3.3.0.bb:do_install'])

  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-d=
evtools/binutils/binutils-cross_2.34.bb:do_prepare_recipe_sysroot

(dependent Tasks ['flex_2.6.4.bb:do_populate_sysroot',

'libgloss_3.3.0.bb:do_populate_sysroot',

'binutils-cross_2.34.bb:do_fetch',

'texinfo-dummy-native.bb:do_populate_sysroot',

'gnu-config_git.bb:do_populate_sysroot',

'bison_3.6.4.bb:do_populate_sysroot',

'autoconf_2.69.bb:do_populate_sysroot',

'zlib_1.2.11.bb:do_populate_sysroot'])

  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-d=
evtools/binutils/binutils-cross_2.34.bb:do_configure

(dependent Tasks

['binutils-cross_2.34.bb:do_deploy_source_date_epoch',

'binutils-cross_2.34.bb:do_prepare_recipe_sysroot',

'binutils-cross_2.34.bb:do_patch'])

  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-d=
evtools/binutils/binutils-cross_2.34.bb:do_compile

(dependent Tasks ['binutils-cross_2.34.bb:do_configure'])

  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-d=
evtools/binutils/binutils-cross_2.34.bb:do_install

(dependent Tasks ['binutils-cross_2.34.bb:do_compile'])

  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-d=
evtools/binutils/binutils-cross_2.34.bb:do_populate_sysroot

(dependent Tasks ['binutils-cross_2.34.bb:do_install'])

  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-d=
evtools/gcc/gcc-cross_10.1.bb:do_prepare_recipe_sysroot

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

  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-d=
evtools/gcc/gcc-cross_10.1.bb:do_configure

(dependent Tasks ['gcc-cross_10.1.bb:do_prepare_recipe_sysroot',

'gcc-cross_10.1.bb:do_deploy_source_date_epoch',

'gcc-source_10.1.bb:do_preconfigure'])

  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-d=
evtools/gcc/gcc-cross_10.1.bb:do_compile

(dependent Tasks ['gcc-cross_10.1.bb:do_configure'])

  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-d=
evtools/gcc/gcc-cross_10.1.bb:do_install

(dependent Tasks ['gcc-cross_10.1.bb:do_compile',

'gcc-cross_10.1.bb:do_gcc_stash_builddir'])

  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-d=
evtools/gcc/gcc-cross_10.1.bb:do_populate_sysroot

(dependent Tasks ['gcc-cross_10.1.bb:do_install'])

  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-c=
ore/newlib/newlib_3.3.0.bb:do_prepare_recipe_sysroot

(dependent Tasks ['gcc-cross_10.1.bb:do_populate_sysroot',

'pseudo_git.bb:do_populate_sysroot', 'newlib_3.3.0.bb:do_fetch'])

  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-c=
ore/newlib/newlib_3.3.0.bb:do_configure

(dependent Tasks ['newlib_3.3.0.bb:do_deploy_source_date_epoch',

'newlib_3.3.0.bb:do_prepare_recipe_sysroot',

'newlib_3.3.0.bb:do_patch'])

  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-c=
ore/newlib/newlib_3.3.0.bb:do_compile

(dependent Tasks ['newlib_3.3.0.bb:do_configure'])

  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-c=
ore/newlib/newlib_3.3.0.bb:do_install

(dependent Tasks ['newlib_3.3.0.bb:do_compile',

'pseudo_git.bb:do_populate_sysroot'])

  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-c=
ore/newlib/newlib_3.3.0.bb:do_populate_sysroot

(dependent Tasks ['newlib_3.3.0.bb:do_install',

'binutils-cross_2.34.bb:do_populate_sysroot'])

  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-c=
ore/newlib/libgloss_3.3.0.bb:do_prepare_recipe_sysroot

(dependent Tasks ['newlib_3.3.0.bb:do_populate_sysroot',

'libgloss_3.3.0.bb:do_fetch', 'pseudo_git.bb:do_populate_sysroot',

'gcc-cross_10.1.bb:do_populate_sysroot'])

  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-c=
ore/newlib/libgloss_3.3.0.bb:do_configure

(dependent Tasks ['libgloss_3.3.0.bb:do_deploy_source_date_epoch',

'libgloss_3.3.0.bb:do_prepare_recipe_sysroot',

'libgloss_3.3.0.bb:do_patch'])



Dependency loop #3 found:

  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-c=
ore/newlib/libgloss_3.3.0.bb:do_compile

(dependent Tasks ['libgloss_3.3.0.bb:do_configure'])

  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-c=
ore/newlib/libgloss_3.3.0.bb:do_install

(dependent Tasks ['pseudo_git.bb:do_populate_sysroot',

'libgloss_3.3.0.bb:do_compile'])

  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-c=
ore/newlib/libgloss_3.3.0.bb:do_populate_sysroot

(dependent Tasks ['binutils-cross_2.34.bb:do_populate_sysroot',

'libgloss_3.3.0.bb:do_install'])

  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-d=
evtools/binutils/binutils-cross_2.34.bb:do_prepare_recipe_sysroot

(dependent Tasks ['flex_2.6.4.bb:do_populate_sysroot',

'libgloss_3.3.0.bb:do_populate_sysroot',

'binutils-cross_2.34.bb:do_fetch',

'texinfo-dummy-native.bb:do_populate_sysroot',

'gnu-config_git.bb:do_populate_sysroot',

'bison_3.6.4.bb:do_populate_sysroot',

'autoconf_2.69.bb:do_populate_sysroot',

'zlib_1.2.11.bb:do_populate_sysroot'])

  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-d=
evtools/binutils/binutils-cross_2.34.bb:do_configure

(dependent Tasks

['binutils-cross_2.34.bb:do_deploy_source_date_epoch',

'binutils-cross_2.34.bb:do_prepare_recipe_sysroot',

'binutils-cross_2.34.bb:do_patch'])

  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-d=
evtools/binutils/binutils-cross_2.34.bb:do_compile

(dependent Tasks ['binutils-cross_2.34.bb:do_configure'])

  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-d=
evtools/binutils/binutils-cross_2.34.bb:do_install

(dependent Tasks ['binutils-cross_2.34.bb:do_compile'])

  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-d=
evtools/binutils/binutils-cross_2.34.bb:do_populate_sysroot

(dependent Tasks ['binutils-cross_2.34.bb:do_install'])

  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-d=
evtools/gcc/gcc-cross_10.1.bb:do_prepare_recipe_sysroot

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

  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-d=
evtools/gcc/gcc-cross_10.1.bb:do_configure

(dependent Tasks ['gcc-cross_10.1.bb:do_prepare_recipe_sysroot',

'gcc-cross_10.1.bb:do_deploy_source_date_epoch',

'gcc-source_10.1.bb:do_preconfigure'])

  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-d=
evtools/gcc/gcc-cross_10.1.bb:do_compile

(dependent Tasks ['gcc-cross_10.1.bb:do_configure'])

  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-d=
evtools/gcc/gcc-cross_10.1.bb:do_gcc_stash_builddir

(dependent Tasks ['gcc-cross_10.1.bb:do_compile'])

  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-d=
evtools/gcc/gcc-cross_10.1.bb:do_install

(dependent Tasks ['gcc-cross_10.1.bb:do_compile',

'gcc-cross_10.1.bb:do_gcc_stash_builddir'])

  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-d=
evtools/gcc/gcc-cross_10.1.bb:do_populate_sysroot

(dependent Tasks ['gcc-cross_10.1.bb:do_install'])

  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-c=
ore/newlib/libgloss_3.3.0.bb:do_prepare_recipe_sysroot

(dependent Tasks ['newlib_3.3.0.bb:do_populate_sysroot',

'libgloss_3.3.0.bb:do_fetch', 'pseudo_git.bb:do_populate_sysroot',

'gcc-cross_10.1.bb:do_populate_sysroot'])

  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-c=
ore/newlib/libgloss_3.3.0.bb:do_configure

(dependent Tasks ['libgloss_3.3.0.bb:do_deploy_source_date_epoch',

'libgloss_3.3.0.bb:do_prepare_recipe_sysroot',

'libgloss_3.3.0.bb:do_patch'])



Dependency loop #4 found:

  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-c=
ore/newlib/libgloss_3.3.0.bb:do_compile

(dependent Tasks ['libgloss_3.3.0.bb:do_configure'])

  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-c=
ore/newlib/libgloss_3.3.0.bb:do_install

(dependent Tasks ['pseudo_git.bb:do_populate_sysroot',

'libgloss_3.3.0.bb:do_compile'])

  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-c=
ore/newlib/libgloss_3.3.0.bb:do_populate_sysroot

(dependent Tasks ['binutils-cross_2.34.bb:do_populate_sysroot',

'libgloss_3.3.0.bb:do_install'])

  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-d=
evtools/binutils/binutils-cross_2.34.bb:do_prepare_recipe_sysroot

(dependent Tasks ['flex_2.6.4.bb:do_populate_sysroot',

'libgloss_3.3.0.bb:do_populate_sysroot',

'binutils-cross_2.34.bb:do_fetch',

'texinfo-dummy-native.bb:do_populate_sysroot',

'gnu-config_git.bb:do_populate_sysroot',

'bison_3.6.4.bb:do_populate_sysroot',

'autoconf_2.69.bb:do_populate_sysroot',

'zlib_1.2.11.bb:do_populate_sysroot'])

  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-d=
evtools/binutils/binutils-cross_2.34.bb:do_configure

(dependent Tasks

['binutils-cross_2.34.bb:do_deploy_source_date_epoch',

'binutils-cross_2.34.bb:do_prepare_recipe_sysroot',

'binutils-cross_2.34.bb:do_patch'])

  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-d=
evtools/binutils/binutils-cross_2.34.bb:do_compile

(dependent Tasks ['binutils-cross_2.34.bb:do_configure'])

  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-d=
evtools/binutils/binutils-cross_2.34.bb:do_install

(dependent Tasks ['binutils-cross_2.34.bb:do_compile'])

  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-d=
evtools/binutils/binutils-cross_2.34.bb:do_populate_sysroot

(dependent Tasks ['binutils-cross_2.34.bb:do_install'])

  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-d=
evtools/gcc/gcc-cross_10.1.bb:do_prepare_recipe_sysroot

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

  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-d=
evtools/gcc/gcc-cross_10.1.bb:do_configure

(dependent Tasks ['gcc-cross_10.1.bb:do_prepare_recipe_sysroot',

'gcc-cross_10.1.bb:do_deploy_source_date_epoch',

'gcc-source_10.1.bb:do_preconfigure'])

  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-d=
evtools/gcc/gcc-cross_10.1.bb:do_compile

(dependent Tasks ['gcc-cross_10.1.bb:do_configure'])

  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-d=
evtools/gcc/gcc-cross_10.1.bb:do_gcc_stash_builddir

(dependent Tasks ['gcc-cross_10.1.bb:do_compile'])

  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-d=
evtools/gcc/gcc-cross_10.1.bb:do_install

(dependent Tasks ['gcc-cross_10.1.bb:do_compile',

'gcc-cross_10.1.bb:do_gcc_stash_builddir'])

  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-d=
evtools/gcc/gcc-cross_10.1.bb:do_populate_sysroot

(dependent Tasks ['gcc-cross_10.1.bb:do_install'])

  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-c=
ore/newlib/newlib_3.3.0.bb:do_prepare_recipe_sysroot

(dependent Tasks ['gcc-cross_10.1.bb:do_populate_sysroot',

'pseudo_git.bb:do_populate_sysroot', 'newlib_3.3.0.bb:do_fetch'])

  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-c=
ore/newlib/newlib_3.3.0.bb:do_configure

(dependent Tasks ['newlib_3.3.0.bb:do_deploy_source_date_epoch',

'newlib_3.3.0.bb:do_prepare_recipe_sysroot',

'newlib_3.3.0.bb:do_patch'])

  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-c=
ore/newlib/newlib_3.3.0.bb:do_compile

(dependent Tasks ['newlib_3.3.0.bb:do_configure'])

  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-c=
ore/newlib/newlib_3.3.0.bb:do_install

(dependent Tasks ['newlib_3.3.0.bb:do_compile',

'pseudo_git.bb:do_populate_sysroot'])

  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-c=
ore/newlib/newlib_3.3.0.bb:do_populate_sysroot

(dependent Tasks ['newlib_3.3.0.bb:do_install',

'binutils-cross_2.34.bb:do_populate_sysroot'])

  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-c=
ore/newlib/libgloss_3.3.0.bb:do_prepare_recipe_sysroot

(dependent Tasks ['newlib_3.3.0.bb:do_populate_sysroot',

'libgloss_3.3.0.bb:do_fetch', 'pseudo_git.bb:do_populate_sysroot',

'gcc-cross_10.1.bb:do_populate_sysroot'])

  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-c=
ore/newlib/libgloss_3.3.0.bb:do_configure

(dependent Tasks ['libgloss_3.3.0.bb:do_deploy_source_date_epoch',

'libgloss_3.3.0.bb:do_prepare_recipe_sysroot',

'libgloss_3.3.0.bb:do_patch'])



Dependency loop #5 found:

  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-c=
ore/newlib/libgloss_3.3.0.bb:do_compile

(dependent Tasks ['libgloss_3.3.0.bb:do_configure'])

  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-c=
ore/newlib/libgloss_3.3.0.bb:do_install

(dependent Tasks ['pseudo_git.bb:do_populate_sysroot',

'libgloss_3.3.0.bb:do_compile'])

  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-c=
ore/newlib/libgloss_3.3.0.bb:do_populate_sysroot

(dependent Tasks ['binutils-cross_2.34.bb:do_populate_sysroot',

'libgloss_3.3.0.bb:do_install'])

  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-d=
evtools/binutils/binutils-cross_2.34.bb:do_prepare_recipe_sysroot

(dependent Tasks ['flex_2.6.4.bb:do_populate_sysroot',

'libgloss_3.3.0.bb:do_populate_sysroot',

'binutils-cross_2.34.bb:do_fetch',

'texinfo-dummy-native.bb:do_populate_sysroot',

'gnu-config_git.bb:do_populate_sysroot',

'bison_3.6.4.bb:do_populate_sysroot',

'autoconf_2.69.bb:do_populate_sysroot',

'zlib_1.2.11.bb:do_populate_sysroot'])

  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-d=
evtools/binutils/binutils-cross_2.34.bb:do_configure

(dependent Tasks

['binutils-cross_2.34.bb:do_deploy_source_date_epoch',

'binutils-cross_2.34.bb:do_prepare_recipe_sysroot',

'binutils-cross_2.34.bb:do_patch'])

  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-d=
evtools/binutils/binutils-cross_2.34.bb:do_compile

(dependent Tasks ['binutils-cross_2.34.bb:do_configure'])

  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-d=
evtools/binutils/binutils-cross_2.34.bb:do_install

(dependent Tasks ['binutils-cross_2.34.bb:do_compile'])

  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-d=
evtools/binutils/binutils-cross_2.34.bb:do_populate_sysroot

(dependent Tasks ['binutils-cross_2.34.bb:do_install'])

  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-c=
ore/newlib/newlib_3.3.0.bb:do_populate_sysroot

(dependent Tasks ['newlib_3.3.0.bb:do_install',

'binutils-cross_2.34.bb:do_populate_sysroot'])

  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-c=
ore/newlib/libgloss_3.3.0.bb:do_prepare_recipe_sysroot

(dependent Tasks ['newlib_3.3.0.bb:do_populate_sysroot',

'libgloss_3.3.0.bb:do_fetch', 'pseudo_git.bb:do_populate_sysroot',

'gcc-cross_10.1.bb:do_populate_sysroot'])

  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-c=
ore/newlib/libgloss_3.3.0.bb:do_configure

(dependent Tasks ['libgloss_3.3.0.bb:do_deploy_source_date_epoch',

'libgloss_3.3.0.bb:do_prepare_recipe_sysroot',

'libgloss_3.3.0.bb:do_patch'])



Dependency loop #6 found:

  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-c=
ore/newlib/libgloss_3.3.0.bb:do_populate_sysroot

(dependent Tasks ['binutils-cross_2.34.bb:do_populate_sysroot',

'libgloss_3.3.0.bb:do_install'])

  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-d=
evtools/binutils/binutils-cross_2.34.bb:do_prepare_recipe_sysroot

(dependent Tasks ['flex_2.6.4.bb:do_populate_sysroot',

'libgloss_3.3.0.bb:do_populate_sysroot',

'binutils-cross_2.34.bb:do_fetch',

'texinfo-dummy-native.bb:do_populate_sysroot',

'gnu-config_git.bb:do_populate_sysroot',

'bison_3.6.4.bb:do_populate_sysroot',

'autoconf_2.69.bb:do_populate_sysroot',

'zlib_1.2.11.bb:do_populate_sysroot'])

  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-d=
evtools/binutils/binutils-cross_2.34.bb:do_configure

(dependent Tasks

['binutils-cross_2.34.bb:do_deploy_source_date_epoch',

'binutils-cross_2.34.bb:do_prepare_recipe_sysroot',

'binutils-cross_2.34.bb:do_patch'])

  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-d=
evtools/binutils/binutils-cross_2.34.bb:do_compile

(dependent Tasks ['binutils-cross_2.34.bb:do_configure'])

  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-d=
evtools/binutils/binutils-cross_2.34.bb:do_install

(dependent Tasks ['binutils-cross_2.34.bb:do_compile'])

  Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-d=
evtools/binutils/binutils-cross_2.34.bb:do_populate_sysroot

(dependent Tasks ['binutils-cross_2.34.bb:do_install'])





--00000000000083591505acb2d9c9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; charset=
=
=3Dutf-8"><meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered =
medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p
	{mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:Consolas;}
span.EmailStyle20
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style></head><body lang=3D"EN-US" link=3D"blue" vlink=3D"purple"><div=
 class=3D"WordSection1"><p class=3D"MsoNormal"><span style=3D"font-size:11.=
0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">H=
i Alejandro,</span></p><p class=3D"MsoNormal"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">=
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
</span></p><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-fami=
ly:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">=C2=A0</span><=
/p><div><div style=3D"border:none;border-top:solid #b5c4df 1.0pt;padding:3.=
0pt 0in 0in 0in"><p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;=
font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif=
&quot;"> Alejandro Hernandez Samaniego [mailto:<a href=3D"mailto:alhe@linux=
.microsoft.com">alhe@linux.microsoft.com</a>] <br><b>Sent:</b> Monday, Augu=
st 10, 2020 10:53 PM<br><b>To:</b> <a href=3D"mailto:jonathan.richardson@br=
oadcom.com">jonathan.richardson@broadcom.com</a>; Khem Raj<br><b>Cc:</b> <a=
 href=3D"mailto:poky@lists.yoctoproject.org">poky@lists.yoctoproject.org</a=
><br><b>Subject:</b> Re: [poky] TCLIBC with newlib</span></p></div></div><p=
 class=3D"MsoNormal">=C2=A0</p><p>Hello,</p><p>I&#39;m pretty sure, you are=
 causing the dependency loop with the depends + cross class changes.</p><p>=
I think there is some wiring in libgcc that is not matching properly with s=
omething defined in your BSP layer, likely in your machine.conf, although l=
ike Khem said, removing the dbg packages from the dependencies would workar=
ound this issue.</p><p>Yes, a newlib toolchain can be created, this works f=
ine with the supported BSPs (and others from some vendors) AFAIC I dont thi=
nk changes are required on tclibc-newlib at this point since it contains th=
e basics, anything else would be added per architecture on their BSP layer.=
</p><p>Its hard to tell without knowing anything about the architecture you=
&#39;re using, but I think the error you are hitting its happening because =
your runtime isn&#39;t being built properly or is incompatible, it looks li=
ke at the very least you should have stubs for _exit() patched on libgloss/=
newlib for your architecture (or submit those to newlib upstream), if you&#=
39;re using something ARM based you may be able to build using semhosting w=
ith the rdimon specs or even nosys but it probably wouldn&#39;t work proper=
ly at runtime, if that allows you to build you can proceed to add you archi=
tecture specific functions to libgloss.</p><p>=C2=A0</p><p>Cheers,</p><p>Al=
ejandro</p><div><p class=3D"MsoNormal">On 8/7/20 4:26 PM, Jonathan Richards=
on via <a href=3D"http://lists.yoctoproject.org">lists.yoctoproject.org</a>=
 wrote:</p></div><blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt"=
><pre>On Thu, Aug 6, 2020 at 9:58 PM Khem Raj <a href=3D"mailto:raj.khem@gm=
ail.com">&lt;raj.khem@gmail.com&gt;</a> wrote:</pre><blockquote style=3D"ma=
rgin-top:5.0pt;margin-bottom:5.0pt"><pre>=C2=A0</pre><pre>On Thu, Aug 6, 20=
20 at 5:22 PM Jonathan Richardson via</pre><pre><a href=3D"http://lists.yoc=
toproject.org">lists.yoctoproject.org</a></pre><pre><a href=3D"mailto:jonat=
han.richardson=3Dbroadcom.com@lists.yoctoproject.org">&lt;jonathan.richards=
on=3Dbroadcom.com@lists.yoctoproject.org&gt;</a> wrote:</pre><blockquote st=
yle=3D"margin-top:5.0pt;margin-bottom:5.0pt"><pre>=C2=A0</pre><pre>Hi,</pre=
><pre>=C2=A0</pre><pre>I&#39;m trying to create a toolchain using newlib as=
 the libc. I set</pre><pre>TCLIBC=3D&quot;newlib&quot;. First error is:</pr=
e><pre>ERROR: Nothing PROVIDES &#39;libgcc-dbg&#39; (but</pre><pre>mc:crmu:=
/home/jon/work/yocto/stingray2/poky/build/../meta-brcm/meta-stingray2/recip=
es-zephyr/brcm-zephyr/<a href=3D"http://brcm-zephyr.bb">brcm-zephyr.bb</a><=
/pre><pre>DEPENDS on or otherwise requires it). Close matches:</pre><pre>=
=C2=A0 libgcc</pre><pre>=C2=A0 libgcc RPROVIDES libgcc-dbg</pre><pre>ERROR=
: Required build target &#39;brcm-zephyr&#39; has no buildable providers.</=
pre><pre>Missing or unbuildable dependency chain was: [&#39;brcm-zephyr&#39=
;, &#39;libgcc-dbg&#39;]</pre><pre>=C2=A0</pre><pre>This is caused by LIBC_=
DEPENDENCIES in</pre><pre>meta/conf/distro/include/tclibc-newlib.inc:</pre>=
<pre>LIBC_DEPENDENCIES =3D &quot;\</pre><pre>=C2=A0=C2=A0=C2=A0 newlib-dbg =
\</pre><pre>=C2=A0=C2=A0=C2=A0 newlib-dev \</pre><pre>=C2=A0=C2=A0=C2=A0 li=
bgloss \</pre><pre>=C2=A0=C2=A0=C2=A0 libgloss-dev \</pre><pre>=C2=A0=C2=A0=
=
=C2=A0 libgloss-dbg \</pre><pre>=C2=A0=C2=A0=C2=A0 libgcc-dev \</pre><pre>=
=
=C2=A0=C2=A0=C2=A0 libgcc-dbg \</pre><pre>=C2=A0=C2=A0=C2=A0 libstdc++-dev=
 \</pre><pre>=C2=A0=C2=A0=C2=A0 libstdc++-staticdev \</pre></blockquote><pr=
e>=C2=A0</pre><pre>Remove all -dbg packages from above list.</pre><pre>=C2=
=A0</pre><blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt"><pre>T=
OOLCHAIN_TARGET_TASK ?=3D &quot;${LIBC_DEPENDENCIES}&quot;</pre><pre>=C2=A0=
</pre><pre>TOOLCHAIN_TARGET_TASK =3D &quot;newlib libgloss&quot; seems to f=
ix it. Why are the</pre><pre>dev/dbg packages required as</pre><pre>depende=
ncies and why does it think the recipes for libgloss, libgcc,</pre><pre>etc=
 don&#39;t provide them?</pre><pre>=C2=A0</pre><pre>Then libtool-cross fail=
s when autoconf checks if the compiler works</pre><pre>because it can&#39;t=
 find _exit().</pre><pre>So I added this to my local.conf:</pre><pre>EXTRA_=
OECONF_append_class_target =3D &quot; LIBS=3D-lgloss-linux&quot;</pre><pre>=
EXTRA_OECONF_append_class_cross =3D &quot; LIBS=3D-lgloss-linux&quot;</pre>=
</blockquote><pre>=C2=A0</pre><pre>It should be EXTRA_OECONF_append_class-t=
arget and</pre><pre>EXTRA_OECONF_append_class-cross, there is a underscore =
there instead</pre><pre>of &#39;-&#39;</pre></blockquote><pre>=C2=A0</pre><=
pre>Thanks. More than this is required though. I added this so far:</pre><p=
re>=C2=A0</pre><pre>diff --git a/meta/classes/base.bbclass b/meta/classes/b=
ase.bbclass</pre><pre>index 6776242740..262db927cd 100644</pre><pre>--- a/m=
eta/classes/base.bbclass</pre><pre>+++ b/meta/classes/base.bbclass</pre><pr=
e>@@ -75,6 +75,7 @@ BASE_DEFAULT_DEPS =3D &quot;virtual/${TARGET_PREFIX}gcc=
</pre><pre>virtual/${TARGET_PREFIX}compile</pre><pre>=C2=A0</pre><pre> BASE=
DEPENDS =3D &quot;&quot;</pre><pre> BASEDEPENDS_class-target =3D &quot;${@b=
ase_dep_prepend(d)}&quot;</pre><pre>+BASEDEPENDS_class-cross =3D &quot;${@b=
ase_dep_prepend(d)}&quot;</pre><pre> BASEDEPENDS_class-nativesdk =3D &quot;=
${@base_dep_prepend(d)}&quot;</pre><pre>=C2=A0</pre><pre> DEPENDS_prepend=
=3D&quot;${BASEDEPENDS} &quot;</pre><pre>diff --git a/meta/conf/distro/inc=
lude/tclibc-newlib.inc</pre><pre>b/meta/conf/distro/include/tclibc-newlib.i=
nc</pre><pre>index bf89b11288..cb55f3a82c 100644</pre><pre>--- a/meta/conf/=
distro/include/tclibc-newlib.inc</pre><pre>+++ b/meta/conf/distro/include/t=
clibc-newlib.inc</pre><pre>@@ -18,13 +18,10 @@ DISTRO_FEATURES_BACKFILL_CON=
SIDERED +=3D &quot;ldconfig&quot;</pre><pre> IMAGE_LINGUAS =3D &quot;&quot;=
</pre><pre>=C2=A0</pre><pre> LIBC_DEPENDENCIES =3D &quot;\</pre><pre>-=C2=
=A0=C2=A0=C2=A0 newlib-dbg \</pre><pre>=C2=A0=C2=A0=C2=A0=C2=A0 newlib-dev=
 \</pre><pre>=C2=A0=C2=A0=C2=A0=C2=A0 libgloss \</pre><pre>=C2=A0=C2=A0=C2=
=A0=C2=A0 libgloss-dev \</pre><pre>-=C2=A0=C2=A0=C2=A0 libgloss-dbg \</pre=
><pre>=C2=A0=C2=A0=C2=A0=C2=A0 libgcc-dev \</pre><pre>-=C2=A0=C2=A0=C2=A0 l=
ibgcc-dbg \</pre><pre>=C2=A0=C2=A0=C2=A0=C2=A0 libstdc++-dev \</pre><pre>=
=C2=A0=C2=A0=C2=A0=C2=A0 libstdc++-staticdev \</pre><pre>=C2=A0=C2=A0=C2=
=A0=C2=A0 &quot;</pre><pre>@@ -34,6 +31,7 @@ ASSUME_PROVIDED +=3D &quot;vi=
rtual/crypt&quot;</pre><pre> # Its useful to be able to extend newlib, but =
we dont provide a</pre><pre>native variant of libgloss</pre><pre> NEWLIB_EX=
TENDED ?=3D=C2=A0 &quot;libgloss libgcc&quot;</pre><pre> BASE_DEFAULT_DEPS_=
append_class-target =3D &quot; ${NEWLIB_EXTENDED}&quot;</pre><pre>+BASE_DEF=
AULT_DEPS_append_class-cross =3D &quot; ${NEWLIB_EXTENDED}&quot;</pre><pre>=
=
=C2=A0</pre><pre> TARGET_OS =3D &quot;elf&quot;</pre><pre> TARGET_OS_arm =
=3D &quot;eabi&quot;</pre><pre>@@ -45,3 +43,9 @@ TOOLCHAIN_NEED_CONFIGSITE=
_CACHE_remove =3D &quot;zlib ncurses&quot;</pre><pre> # disable pie securit=
y flags by default</pre><pre> SECURITY_CFLAGS_libc-newlib =3D &quot;${SECUR=
ITY_NOPIE_CFLAGS}&quot;</pre><pre> SECURITY_LDFLAGS_libc-newlib =3D &quot;&=
quot;</pre><pre>+</pre><pre>+EXTRA_OECONF_append_class-target =3D &quot; LI=
BS=3D-lgloss-linux&quot;</pre><pre>+EXTRA_OECONF_append_class-cross =3D &qu=
ot; LIBS=3D-lgloss-linux&quot;</pre><pre>+# binutils-cross.inc sets INHIBIT=
_DEFAULT_DEPS =3D &quot;1&quot; which will cause</pre><pre>BASEDEBPENDS to =
not</pre><pre>+# include libgloss which causes the autoconf compiler check =
to fail.</pre><pre>+DEPENDS_append_pn-binutils-cross-arm =3D &quot; libglos=
s&quot;</pre><pre>=C2=A0</pre><pre>Adding the dependency to binutils-cross-=
arm causes circular</pre><pre>dependencies though. I don&#39;t know</pre><p=
re>what&#39;s going on here:</pre><pre>=C2=A0</pre><pre>Dependency loop #1 =
found:</pre><pre>=C2=A0 Task mc:crmu:/home/jon/work/yocto/stingray2/poky/bu=
ild/../meta/recipes-core/newlib/libgloss_3.3.0.bb:do_compile</pre><pre>(dep=
endent Tasks [&#39;libgloss_3.3.0.bb:do_configure&#39;])</pre><pre>=C2=A0 T=
ask mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-core/=
newlib/libgloss_3.3.0.bb:do_install</pre><pre>(dependent Tasks [&#39;pseudo=
_git.bb:do_populate_sysroot&#39;,</pre><pre>&#39;libgloss_3.3.0.bb:do_compi=
le&#39;])</pre><pre>=C2=A0 Task mc:crmu:/home/jon/work/yocto/stingray2/poky=
/build/../meta/recipes-core/newlib/libgloss_3.3.0.bb:do_populate_sysroot</p=
re><pre>(dependent Tasks [&#39;binutils-cross_2.34.bb:do_populate_sysroot&#=
39;,</pre><pre>&#39;libgloss_3.3.0.bb:do_install&#39;])</pre><pre>=C2=A0 Ta=
sk mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtoo=
ls/binutils/binutils-cross_2.34.bb:do_prepare_recipe_sysroot</pre><pre>(dep=
endent Tasks [&#39;flex_2.6.4.bb:do_populate_sysroot&#39;,</pre><pre>&#39;l=
ibgloss_3.3.0.bb:do_populate_sysroot&#39;,</pre><pre>&#39;binutils-cross_2.=
34.bb:do_fetch&#39;,</pre><pre>&#39;texinfo-dummy-native.bb:do_populate_sys=
root&#39;,</pre><pre>&#39;gnu-config_git.bb:do_populate_sysroot&#39;,</pre>=
<pre>&#39;bison_3.6.4.bb:do_populate_sysroot&#39;,</pre><pre>&#39;autoconf_=
2.69.bb:do_populate_sysroot&#39;,</pre><pre>&#39;zlib_1.2.11.bb:do_populate=
_sysroot&#39;])</pre><pre>=C2=A0 Task mc:crmu:/home/jon/work/yocto/stingray=
2/poky/build/../meta/recipes-devtools/binutils/binutils-cross_2.34.bb:do_co=
nfigure</pre><pre>(dependent Tasks</pre><pre>[&#39;binutils-cross_2.34.bb:d=
o_deploy_source_date_epoch&#39;,</pre><pre>&#39;binutils-cross_2.34.bb:do_p=
repare_recipe_sysroot&#39;,</pre><pre>&#39;binutils-cross_2.34.bb:do_patch&=
#39;])</pre><pre>=C2=A0 Task mc:crmu:/home/jon/work/yocto/stingray2/poky/bu=
ild/../meta/recipes-devtools/binutils/binutils-cross_2.34.bb:do_compile</pr=
e><pre>(dependent Tasks [&#39;binutils-cross_2.34.bb:do_configure&#39;])</p=
re><pre>=C2=A0 Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../me=
ta/recipes-devtools/binutils/binutils-cross_2.34.bb:do_install</pre><pre>(d=
ependent Tasks [&#39;binutils-cross_2.34.bb:do_compile&#39;])</pre><pre>=C2=
=
=A0 Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-devtools/binutils/binutils-cross_2.34.bb:do_populate_sysroot</pre><pre>(de=
pendent Tasks [&#39;binutils-cross_2.34.bb:do_install&#39;])</pre><pre>=C2=
=A0 Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-devtools/gcc/gcc-cross_10.1.bb:do_prepare_recipe_sysroot</pre><pre>(depend=
ent Tasks [&#39;flex_2.6.4.bb:do_populate_sysroot&#39;,</pre><pre>&#39;gcc-=
cross_10.1.bb:do_fetch&#39;,</pre><pre>&#39;libtool-native_2.4.6.bb:do_popu=
late_sysroot&#39;,</pre><pre>&#39;mpfr_4.1.0.bb:do_populate_sysroot&#39;,</=
pre><pre>&#39;gmp_6.2.0.bb:do_populate_sysroot&#39;,</pre><pre>&#39;libmpc_=
1.1.0.bb:do_populate_sysroot&#39;,</pre><pre>&#39;texinfo-dummy-native.bb:d=
o_populate_sysroot&#39;,</pre><pre>&#39;gnu-config_git.bb:do_populate_sysro=
ot&#39;,</pre><pre>&#39;binutils-cross_2.34.bb:do_populate_sysroot&#39;,</p=
re><pre>&#39;autoconf_2.69.bb:do_populate_sysroot&#39;,</pre><pre>&#39;auto=
make_1.16.2.bb:do_populate_sysroot&#39;,</pre><pre>&#39;zlib_1.2.11.bb:do_p=
opulate_sysroot&#39;])</pre><pre>=C2=A0 Task mc:crmu:/home/jon/work/yocto/s=
tingray2/poky/build/../meta/recipes-devtools/gcc/gcc-cross_10.1.bb:do_confi=
gure</pre><pre>(dependent Tasks [&#39;gcc-cross_10.1.bb:do_prepare_recipe_s=
ysroot&#39;,</pre><pre>&#39;gcc-cross_10.1.bb:do_deploy_source_date_epoch&#=
39;,</pre><pre>&#39;gcc-source_10.1.bb:do_preconfigure&#39;])</pre><pre>=C2=
=
=A0 Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-devtools/gcc/gcc-cross_10.1.bb:do_compile</pre><pre>(dependent Tasks [&#39=
;gcc-cross_10.1.bb:do_configure&#39;])</pre><pre>=C2=A0 Task mc:crmu:/home/=
jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/gcc/gcc-cross_=
10.1.bb:do_install</pre><pre>(dependent Tasks [&#39;gcc-cross_10.1.bb:do_co=
mpile&#39;,</pre><pre>&#39;gcc-cross_10.1.bb:do_gcc_stash_builddir&#39;])</=
pre><pre>=C2=A0 Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../m=
eta/recipes-devtools/gcc/gcc-cross_10.1.bb:do_populate_sysroot</pre><pre>(d=
ependent Tasks [&#39;gcc-cross_10.1.bb:do_install&#39;])</pre><pre>=C2=A0 T=
ask mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-core/=
newlib/libgloss_3.3.0.bb:do_prepare_recipe_sysroot</pre><pre>(dependent Tas=
ks [&#39;newlib_3.3.0.bb:do_populate_sysroot&#39;,</pre><pre>&#39;libgloss_=
3.3.0.bb:do_fetch&#39;, &#39;pseudo_git.bb:do_populate_sysroot&#39;,</pre><=
pre>&#39;gcc-cross_10.1.bb:do_populate_sysroot&#39;])</pre><pre>=C2=A0 Task=
 mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-core/new=
lib/libgloss_3.3.0.bb:do_configure</pre><pre>(dependent Tasks [&#39;libglos=
s_3.3.0.bb:do_deploy_source_date_epoch&#39;,</pre><pre>&#39;libgloss_3.3.0.=
bb:do_prepare_recipe_sysroot&#39;,</pre><pre>&#39;libgloss_3.3.0.bb:do_patc=
h&#39;])</pre><pre>=C2=A0</pre><pre>Dependency loop #2 found:</pre><pre>=C2=
=
=A0 Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-core/newlib/libgloss_3.3.0.bb:do_compile</pre><pre>(dependent Tasks [&#39;=
libgloss_3.3.0.bb:do_configure&#39;])</pre><pre>=C2=A0 Task mc:crmu:/home/j=
on/work/yocto/stingray2/poky/build/../meta/recipes-core/newlib/libgloss_3.3=
.0.bb:do_install</pre><pre>(dependent Tasks [&#39;pseudo_git.bb:do_populate=
_sysroot&#39;,</pre><pre>&#39;libgloss_3.3.0.bb:do_compile&#39;])</pre><pre=
>=C2=A0 Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/reci=
pes-core/newlib/libgloss_3.3.0.bb:do_populate_sysroot</pre><pre>(dependent =
Tasks [&#39;binutils-cross_2.34.bb:do_populate_sysroot&#39;,</pre><pre>&#39=
;libgloss_3.3.0.bb:do_install&#39;])</pre><pre>=C2=A0 Task mc:crmu:/home/jo=
n/work/yocto/stingray2/poky/build/../meta/recipes-devtools/binutils/binutil=
s-cross_2.34.bb:do_prepare_recipe_sysroot</pre><pre>(dependent Tasks [&#39;=
flex_2.6.4.bb:do_populate_sysroot&#39;,</pre><pre>&#39;libgloss_3.3.0.bb:do=
_populate_sysroot&#39;,</pre><pre>&#39;binutils-cross_2.34.bb:do_fetch&#39;=
,</pre><pre>&#39;texinfo-dummy-native.bb:do_populate_sysroot&#39;,</pre><pr=
e>&#39;gnu-config_git.bb:do_populate_sysroot&#39;,</pre><pre>&#39;bison_3.6=
.4.bb:do_populate_sysroot&#39;,</pre><pre>&#39;autoconf_2.69.bb:do_populate=
_sysroot&#39;,</pre><pre>&#39;zlib_1.2.11.bb:do_populate_sysroot&#39;])</pr=
e><pre>=C2=A0 Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../met=
a/recipes-devtools/binutils/binutils-cross_2.34.bb:do_configure</pre><pre>(=
dependent Tasks</pre><pre>[&#39;binutils-cross_2.34.bb:do_deploy_source_dat=
e_epoch&#39;,</pre><pre>&#39;binutils-cross_2.34.bb:do_prepare_recipe_sysro=
ot&#39;,</pre><pre>&#39;binutils-cross_2.34.bb:do_patch&#39;])</pre><pre>=
=C2=A0 Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/reci=
pes-devtools/binutils/binutils-cross_2.34.bb:do_compile</pre><pre>(dependen=
t Tasks [&#39;binutils-cross_2.34.bb:do_configure&#39;])</pre><pre>=C2=A0 T=
ask mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devto=
ols/binutils/binutils-cross_2.34.bb:do_install</pre><pre>(dependent Tasks [=
&#39;binutils-cross_2.34.bb:do_compile&#39;])</pre><pre>=C2=A0 Task mc:crmu=
:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/binutil=
s/binutils-cross_2.34.bb:do_populate_sysroot</pre><pre>(dependent Tasks [&#=
39;binutils-cross_2.34.bb:do_install&#39;])</pre><pre>=C2=A0 Task mc:crmu:/=
home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/gcc/gcc-c=
ross_10.1.bb:do_prepare_recipe_sysroot</pre><pre>(dependent Tasks [&#39;fle=
x_2.6.4.bb:do_populate_sysroot&#39;,</pre><pre>&#39;gcc-cross_10.1.bb:do_fe=
tch&#39;,</pre><pre>&#39;libtool-native_2.4.6.bb:do_populate_sysroot&#39;,<=
/pre><pre>&#39;mpfr_4.1.0.bb:do_populate_sysroot&#39;,</pre><pre>&#39;gmp_6=
.2.0.bb:do_populate_sysroot&#39;,</pre><pre>&#39;libmpc_1.1.0.bb:do_populat=
e_sysroot&#39;,</pre><pre>&#39;texinfo-dummy-native.bb:do_populate_sysroot&=
#39;,</pre><pre>&#39;gnu-config_git.bb:do_populate_sysroot&#39;,</pre><pre>=
&#39;binutils-cross_2.34.bb:do_populate_sysroot&#39;,</pre><pre>&#39;autoco=
nf_2.69.bb:do_populate_sysroot&#39;,</pre><pre>&#39;automake_1.16.2.bb:do_p=
opulate_sysroot&#39;,</pre><pre>&#39;zlib_1.2.11.bb:do_populate_sysroot&#39=
;])</pre><pre>=C2=A0 Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build=
/../meta/recipes-devtools/gcc/gcc-cross_10.1.bb:do_configure</pre><pre>(dep=
endent Tasks [&#39;gcc-cross_10.1.bb:do_prepare_recipe_sysroot&#39;,</pre><=
pre>&#39;gcc-cross_10.1.bb:do_deploy_source_date_epoch&#39;,</pre><pre>&#39=
;gcc-source_10.1.bb:do_preconfigure&#39;])</pre><pre>=C2=A0 Task mc:crmu:/h=
ome/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/gcc/gcc-cr=
oss_10.1.bb:do_compile</pre><pre>(dependent Tasks [&#39;gcc-cross_10.1.bb:d=
o_configure&#39;])</pre><pre>=C2=A0 Task mc:crmu:/home/jon/work/yocto/sting=
ray2/poky/build/../meta/recipes-devtools/gcc/gcc-cross_10.1.bb:do_install</=
pre><pre>(dependent Tasks [&#39;gcc-cross_10.1.bb:do_compile&#39;,</pre><pr=
e>&#39;gcc-cross_10.1.bb:do_gcc_stash_builddir&#39;])</pre><pre>=C2=A0 Task=
 mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools=
/gcc/gcc-cross_10.1.bb:do_populate_sysroot</pre><pre>(dependent Tasks [&#39=
;gcc-cross_10.1.bb:do_install&#39;])</pre><pre>=C2=A0 Task mc:crmu:/home/jo=
n/work/yocto/stingray2/poky/build/../meta/recipes-core/newlib/newlib_3.3.0.=
bb:do_prepare_recipe_sysroot</pre><pre>(dependent Tasks [&#39;gcc-cross_10.=
1.bb:do_populate_sysroot&#39;,</pre><pre>&#39;pseudo_git.bb:do_populate_sys=
root&#39;, &#39;newlib_3.3.0.bb:do_fetch&#39;])</pre><pre>=C2=A0 Task mc:cr=
mu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-core/newlib/ne=
wlib_3.3.0.bb:do_configure</pre><pre>(dependent Tasks [&#39;newlib_3.3.0.bb=
:do_deploy_source_date_epoch&#39;,</pre><pre>&#39;newlib_3.3.0.bb:do_prepar=
e_recipe_sysroot&#39;,</pre><pre>&#39;newlib_3.3.0.bb:do_patch&#39;])</pre>=
<pre>=C2=A0 Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/=
recipes-core/newlib/newlib_3.3.0.bb:do_compile</pre><pre>(dependent Tasks [=
&#39;newlib_3.3.0.bb:do_configure&#39;])</pre><pre>=C2=A0 Task mc:crmu:/hom=
e/jon/work/yocto/stingray2/poky/build/../meta/recipes-core/newlib/newlib_3.=
3.0.bb:do_install</pre><pre>(dependent Tasks [&#39;newlib_3.3.0.bb:do_compi=
le&#39;,</pre><pre>&#39;pseudo_git.bb:do_populate_sysroot&#39;])</pre><pre>=
=
=C2=A0 Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/reci=
pes-core/newlib/newlib_3.3.0.bb:do_populate_sysroot</pre><pre>(dependent Ta=
sks [&#39;newlib_3.3.0.bb:do_install&#39;,</pre><pre>&#39;binutils-cross_2.=
34.bb:do_populate_sysroot&#39;])</pre><pre>=C2=A0 Task mc:crmu:/home/jon/wo=
rk/yocto/stingray2/poky/build/../meta/recipes-core/newlib/libgloss_3.3.0.bb=
:do_prepare_recipe_sysroot</pre><pre>(dependent Tasks [&#39;newlib_3.3.0.bb=
:do_populate_sysroot&#39;,</pre><pre>&#39;libgloss_3.3.0.bb:do_fetch&#39;, =
&#39;pseudo_git.bb:do_populate_sysroot&#39;,</pre><pre>&#39;gcc-cross_10.1.=
bb:do_populate_sysroot&#39;])</pre><pre>=C2=A0 Task mc:crmu:/home/jon/work/=
yocto/stingray2/poky/build/../meta/recipes-core/newlib/libgloss_3.3.0.bb:do=
_configure</pre><pre>(dependent Tasks [&#39;libgloss_3.3.0.bb:do_deploy_sou=
rce_date_epoch&#39;,</pre><pre>&#39;libgloss_3.3.0.bb:do_prepare_recipe_sys=
root&#39;,</pre><pre>&#39;libgloss_3.3.0.bb:do_patch&#39;])</pre><pre>=C2=
=A0</pre><pre>Dependency loop #3 found:</pre><pre>=C2=A0 Task mc:crmu:/hom=
e/jon/work/yocto/stingray2/poky/build/../meta/recipes-core/newlib/libgloss_=
3.3.0.bb:do_compile</pre><pre>(dependent Tasks [&#39;libgloss_3.3.0.bb:do_c=
onfigure&#39;])</pre><pre>=C2=A0 Task mc:crmu:/home/jon/work/yocto/stingray=
2/poky/build/../meta/recipes-core/newlib/libgloss_3.3.0.bb:do_install</pre>=
<pre>(dependent Tasks [&#39;pseudo_git.bb:do_populate_sysroot&#39;,</pre><p=
re>&#39;libgloss_3.3.0.bb:do_compile&#39;])</pre><pre> =C2=A0Task mc:crmu:/=
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
ecipes-devtools/gcc/gcc-cross_10.1.bb:do_gcc_stash_builddir</pre><pre>(depe=
ndent Tasks [&#39;gcc-cross_10.1.bb:do_compile&#39;])</pre><pre>=C2=A0 Task=
 mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools=
/gcc/gcc-cross_10.1.bb:do_install</pre><pre>(dependent Tasks [&#39;gcc-cros=
s_10.1.bb:do_compile&#39;,</pre><pre>&#39;gcc-cross_10.1.bb:do_gcc_stash_bu=
ilddir&#39;])</pre><pre>=C2=A0 Task mc:crmu:/home/jon/work/yocto/stingray2/=
poky/build/../meta/recipes-devtools/gcc/gcc-cross_10.1.bb:do_populate_sysro=
ot</pre><pre>(dependent Tasks [&#39;gcc-cross_10.1.bb:do_install&#39;])</pr=
e><pre>=C2=A0 Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../met=
a/recipes-core/newlib/libgloss_3.3.0.bb:do_prepare_recipe_sysroot</pre><pre=
>(dependent Tasks [&#39;newlib_3.3.0.bb:do_populate_sysroot&#39;,</pre><pre=
>&#39;libgloss_3.3.0.bb:do_fetch&#39;, &#39;pseudo_git.bb:do_populate_sysro=
ot&#39;,</pre><pre>&#39;gcc-cross_10.1.bb:do_populate_sysroot&#39;])</pre><=
pre>=C2=A0 Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/r=
ecipes-core/newlib/libgloss_3.3.0.bb:do_configure</pre><pre>(dependent Task=
s [&#39;libgloss_3.3.0.bb:do_deploy_source_date_epoch&#39;,</pre><pre>&#39;=
libgloss_3.3.0.bb:do_prepare_recipe_sysroot&#39;,</pre><pre>&#39;libgloss_3=
.3.0.bb:do_patch&#39;])</pre><pre>=C2=A0</pre><pre>Dependency loop #4 found=
:</pre><pre>=C2=A0 Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/.=
./meta/recipes-core/newlib/libgloss_3.3.0.bb:do_compile</pre><pre>(dependen=
t Tasks [&#39;libgloss_3.3.0.bb:do_configure&#39;])</pre><pre>=C2=A0 Task m=
c:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-core/newli=
b/libgloss_3.3.0.bb:do_install</pre><pre>(dependent Tasks [&#39;pseudo_git.=
bb:do_populate_sysroot&#39;,</pre><pre>&#39;libgloss_3.3.0.bb:do_compile&#3=
9;])</pre><pre>=C2=A0 Task mc:crmu:/home/jon/work/yocto/stingray2/poky/buil=
d/../meta/recipes-core/newlib/libgloss_3.3.0.bb:do_populate_sysroot</pre><p=
re>(dependent Tasks [&#39;binutils-cross_2.34.bb:do_populate_sysroot&#39;,<=
/pre><pre>&#39;libgloss_3.3.0.bb:do_install&#39;])</pre><pre>=C2=A0 Task mc=
:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/bi=
nutils/binutils-cross_2.34.bb:do_prepare_recipe_sysroot</pre><pre>(dependen=
t Tasks [&#39;flex_2.6.4.bb:do_populate_sysroot&#39;,</pre><pre>&#39;libglo=
ss_3.3.0.bb:do_populate_sysroot&#39;,</pre><pre>&#39;binutils-cross_2.34.bb=
:do_fetch&#39;,</pre><pre>&#39;texinfo-dummy-native.bb:do_populate_sysroot&=
#39;,</pre><pre>&#39;gnu-config_git.bb:do_populate_sysroot&#39;,</pre><pre>=
&#39;bison_3.6.4.bb:do_populate_sysroot&#39;,</pre><pre>&#39;autoconf_2.69.=
bb:do_populate_sysroot&#39;,</pre><pre>&#39;zlib_1.2.11.bb:do_populate_sysr=
oot&#39;])</pre><pre>=C2=A0 Task mc:crmu:/home/jon/work/yocto/stingray2/pok=
y/build/../meta/recipes-devtools/binutils/binutils-cross_2.34.bb:do_configu=
re</pre><pre>(dependent Tasks</pre><pre>[&#39;binutils-cross_2.34.bb:do_dep=
loy_source_date_epoch&#39;,</pre><pre>&#39;binutils-cross_2.34.bb:do_prepar=
e_recipe_sysroot&#39;,</pre><pre>&#39;binutils-cross_2.34.bb:do_patch&#39;]=
)</pre><pre>=C2=A0 Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/.=
./meta/recipes-devtools/binutils/binutils-cross_2.34.bb:do_compile</pre><pr=
e>(dependent Tasks [&#39;binutils-cross_2.34.bb:do_configure&#39;])</pre><p=
re>=C2=A0 Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/re=
cipes-devtools/binutils/binutils-cross_2.34.bb:do_install</pre><pre>(depend=
ent Tasks [&#39;binutils-cross_2.34.bb:do_compile&#39;])</pre><pre>=C2=A0 T=
ask mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devto=
ols/binutils/binutils-cross_2.34.bb:do_populate_sysroot</pre><pre>(dependen=
t Tasks [&#39;binutils-cross_2.34.bb:do_install&#39;])</pre><pre>=C2=A0 Tas=
k mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtool=
s/gcc/gcc-cross_10.1.bb:do_prepare_recipe_sysroot</pre><pre>(dependent Task=
s [&#39;flex_2.6.4.bb:do_populate_sysroot&#39;,</pre><pre>&#39;gcc-cross_10=
.1.bb:do_fetch&#39;,</pre><pre>&#39;libtool-native_2.4.6.bb:do_populate_sys=
root&#39;,</pre><pre>&#39;mpfr_4.1.0.bb:do_populate_sysroot&#39;,</pre><pre=
>&#39;gmp_6.2.0.bb:do_populate_sysroot&#39;,</pre><pre>&#39;libmpc_1.1.0.bb=
:do_populate_sysroot&#39;,</pre><pre>&#39;texinfo-dummy-native.bb:do_popula=
te_sysroot&#39;,</pre><pre>&#39;gnu-config_git.bb:do_populate_sysroot&#39;,=
</pre><pre>&#39;binutils-cross_2.34.bb:do_populate_sysroot&#39;,</pre><pre>=
&#39;autoconf_2.69.bb:do_populate_sysroot&#39;,</pre><pre>&#39;automake_1.1=
6.2.bb:do_populate_sysroot&#39;,</pre><pre>&#39;zlib_1.2.11.bb:do_populate_=
sysroot&#39;])</pre><pre>=C2=A0 Task mc:crmu:/home/jon/work/yocto/stingray2=
/poky/build/../meta/recipes-devtools/gcc/gcc-cross_10.1.bb:do_configure</pr=
e><pre>(dependent Tasks [&#39;gcc-cross_10.1.bb:do_prepare_recipe_sysroot&#=
39;,</pre><pre>&#39;gcc-cross_10.1.bb:do_deploy_source_date_epoch&#39;,</pr=
e><pre>&#39;gcc-source_10.1.bb:do_preconfigure&#39;])</pre><pre>=C2=A0 Task=
 mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools=
/gcc/gcc-cross_10.1.bb:do_compile</pre><pre>(dependent Tasks [&#39;gcc-cros=
s_10.1.bb:do_configure&#39;])</pre><pre>=C2=A0 Task mc:crmu:/home/jon/work/=
yocto/stingray2/poky/build/../meta/recipes-devtools/gcc/gcc-cross_10.1.bb:d=
o_gcc_stash_builddir</pre><pre>(dependent Tasks [&#39;gcc-cross_10.1.bb:do_=
compile&#39;])</pre><pre>=C2=A0 Task mc:crmu:/home/jon/work/yocto/stingray2=
/poky/build/../meta/recipes-devtools/gcc/gcc-cross_10.1.bb:do_install</pre>=
<pre>(dependent Tasks [&#39;gcc-cross_10.1.bb:do_compile&#39;,</pre><pre>&#=
39;gcc-cross_10.1.bb:do_gcc_stash_builddir&#39;])</pre><pre>=C2=A0 Task mc:=
crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/gcc=
/gcc-cross_10.1.bb:do_populate_sysroot</pre><pre>(dependent Tasks [&#39;gcc=
-cross_10.1.bb:do_install&#39;])</pre><pre>=C2=A0 Task mc:crmu:/home/jon/wo=
rk/yocto/stingray2/poky/build/../meta/recipes-core/newlib/newlib_3.3.0.bb:d=
o_prepare_recipe_sysroot</pre><pre>(dependent Tasks [&#39;gcc-cross_10.1.bb=
:do_populate_sysroot&#39;,</pre><pre>&#39;pseudo_git.bb:do_populate_sysroot=
&#39;, &#39;newlib_3.3.0.bb:do_fetch&#39;])</pre><pre>=C2=A0 Task mc:crmu:/=
home/jon/work/yocto/stingray2/poky/build/../meta/recipes-core/newlib/newlib=
_3.3.0.bb:do_configure</pre><pre>(dependent Tasks [&#39;newlib_3.3.0.bb:do_=
deploy_source_date_epoch&#39;,</pre><pre>&#39;newlib_3.3.0.bb:do_prepare_re=
cipe_sysroot&#39;,</pre><pre>&#39;newlib_3.3.0.bb:do_patch&#39;])</pre><pre=
>=C2=A0 Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/reci=
pes-core/newlib/newlib_3.3.0.bb:do_compile</pre><pre>(dependent Tasks [&#39=
;newlib_3.3.0.bb:do_configure&#39;])</pre><pre>=C2=A0 Task mc:crmu:/home/jo=
n/work/yocto/stingray2/poky/build/../meta/recipes-core/newlib/newlib_3.3.0.=
bb:do_install</pre><pre>(dependent Tasks [&#39;newlib_3.3.0.bb:do_compile&#=
39;,</pre><pre>&#39;pseudo_git.bb:do_populate_sysroot&#39;])</pre><pre>=C2=
=A0 Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-core/newlib/newlib_3.3.0.bb:do_populate_sysroot</pre><pre>(dependent Tasks=
 [&#39;newlib_3.3.0.bb:do_install&#39;,</pre><pre>&#39;binutils-cross_2.34.=
bb:do_populate_sysroot&#39;])</pre><pre>=C2=A0 Task mc:crmu:/home/jon/work/=
yocto/stingray2/poky/build/../meta/recipes-core/newlib/libgloss_3.3.0.bb:do=
_prepare_recipe_sysroot</pre><pre>(dependent Tasks [&#39;newlib_3.3.0.bb:do=
_populate_sysroot&#39;,</pre><pre>&#39;libgloss_3.3.0.bb:do_fetch&#39;, &#3=
9;pseudo_git.bb:do_populate_sysroot&#39;,</pre><pre>&#39;gcc-cross_10.1.bb:=
do_populate_sysroot&#39;])</pre><pre>=C2=A0 Task mc:crmu:/home/jon/work/yoc=
to/stingray2/poky/build/../meta/recipes-core/newlib/libgloss_3.3.0.bb:do_co=
nfigure</pre><pre>(dependent Tasks [&#39;libgloss_3.3.0.bb:do_deploy_source=
_date_epoch&#39;,</pre><pre>&#39;libgloss_3.3.0.bb:do_prepare_recipe_sysroo=
t&#39;,</pre><pre>&#39;libgloss_3.3.0.bb:do_patch&#39;])</pre><pre>=C2=A0</=
pre><pre>Dependency loop #5 found:</pre><pre>=C2=A0 Task mc:crmu:/home/jon/=
work/yocto/stingray2/poky/build/../meta/recipes-core/newlib/libgloss_3.3.0.=
bb:do_compile</pre><pre>(dependent Tasks [&#39;libgloss_3.3.0.bb:do_configu=
re&#39;])</pre><pre>=C2=A0 Task mc:crmu:/home/jon/work/yocto/stingray2/poky=
/build/../meta/recipes-core/newlib/libgloss_3.3.0.bb:do_install</pre><pre>(=
dependent Tasks [&#39;pseudo_git.bb:do_populate_sysroot&#39;,</pre><pre>&#3=
9;libgloss_3.3.0.bb:do_compile&#39;])</pre><pre>=C2=A0 Task mc:crmu:/home/j=
on/work/yocto/stingray2/poky/build/../meta/recipes-core/newlib/libgloss_3.3=
.0.bb:do_populate_sysroot</pre><pre>(dependent Tasks [&#39;binutils-cross_2=
.34.bb:do_populate_sysroot&#39;,</pre><pre>&#39;libgloss_3.3.0.bb:do_instal=
l&#39;])</pre><pre>=C2=A0 Task mc:crmu:/home/jon/work/yocto/stingray2/poky/=
build/../meta/recipes-devtools/binutils/binutils-cross_2.34.bb:do_prepare_r=
ecipe_sysroot</pre><pre>(dependent Tasks [&#39;flex_2.6.4.bb:do_populate_sy=
sroot&#39;,</pre><pre>&#39;libgloss_3.3.0.bb:do_populate_sysroot&#39;,</pre=
><pre>&#39;binutils-cross_2.34.bb:do_fetch&#39;,</pre><pre>&#39;texinfo-dum=
my-native.bb:do_populate_sysroot&#39;,</pre><pre>&#39;gnu-config_git.bb:do_=
populate_sysroot&#39;,</pre><pre>&#39;bison_3.6.4.bb:do_populate_sysroot&#3=
9;,</pre><pre>&#39;autoconf_2.69.bb:do_populate_sysroot&#39;,</pre><pre>&#3=
9;zlib_1.2.11.bb:do_populate_sysroot&#39;])</pre><pre>=C2=A0 Task mc:crmu:/=
home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/binutils/=
binutils-cross_2.34.bb:do_configure</pre><pre>(dependent Tasks</pre><pre>[&=
#39;binutils-cross_2.34.bb:do_deploy_source_date_epoch&#39;,</pre><pre>&#39=
;binutils-cross_2.34.bb:do_prepare_recipe_sysroot&#39;,</pre><pre>&#39;binu=
tils-cross_2.34.bb:do_patch&#39;])</pre><pre>=C2=A0 Task mc:crmu:/home/jon/=
work/yocto/stingray2/poky/build/../meta/recipes-devtools/binutils/binutils-=
cross_2.34.bb:do_compile</pre><pre>(dependent Tasks [&#39;binutils-cross_2.=
34.bb:do_configure&#39;])</pre><pre>=C2=A0 Task mc:crmu:/home/jon/work/yoct=
o/stingray2/poky/build/../meta/recipes-devtools/binutils/binutils-cross_2.3=
4.bb:do_install</pre><pre>(dependent Tasks [&#39;binutils-cross_2.34.bb:do_=
compile&#39;])</pre><pre>=C2=A0 Task mc:crmu:/home/jon/work/yocto/stingray2=
/poky/build/../meta/recipes-devtools/binutils/binutils-cross_2.34.bb:do_pop=
ulate_sysroot</pre><pre>(dependent Tasks [&#39;binutils-cross_2.34.bb:do_in=
stall&#39;])</pre><pre> =C2=A0Task mc:crmu:/home/jon/work/yocto/stingray2/p=
oky/build/../meta/recipes-core/newlib/newlib_3.3.0.bb:do_populate_sysroot</=
pre><pre>(dependent Tasks [&#39;newlib_3.3.0.bb:do_install&#39;,</pre><pre>=
&#39;binutils-cross_2.34.bb:do_populate_sysroot&#39;])</pre><pre>=C2=A0 Tas=
k mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-core/ne=
wlib/libgloss_3.3.0.bb:do_prepare_recipe_sysroot</pre><pre>(dependent Tasks=
 [&#39;newlib_3.3.0.bb:do_populate_sysroot&#39;,</pre><pre>&#39;libgloss_3.=
3.0.bb:do_fetch&#39;, &#39;pseudo_git.bb:do_populate_sysroot&#39;,</pre><pr=
e>&#39;gcc-cross_10.1.bb:do_populate_sysroot&#39;])</pre><pre>=C2=A0 Task m=
c:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-core/newli=
b/libgloss_3.3.0.bb:do_configure</pre><pre>(dependent Tasks [&#39;libgloss_=
3.3.0.bb:do_deploy_source_date_epoch&#39;,</pre><pre>&#39;libgloss_3.3.0.bb=
:do_prepare_recipe_sysroot&#39;,</pre><pre>&#39;libgloss_3.3.0.bb:do_patch&=
#39;])</pre><pre>=C2=A0</pre><pre>Dependency loop #6 found:</pre><pre>=C2=
=A0 Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-core/newlib/libgloss_3.3.0.bb:do_populate_sysroot</pre><pre>(dependent Tas=
ks [&#39;binutils-cross_2.34.bb:do_populate_sysroot&#39;,</pre><pre>&#39;li=
bgloss_3.3.0.bb:do_install&#39;])</pre><pre>=C2=A0 Task mc:crmu:/home/jon/w=
ork/yocto/stingray2/poky/build/../meta/recipes-devtools/binutils/binutils-c=
ross_2.34.bb:do_prepare_recipe_sysroot</pre><pre>(dependent Tasks [&#39;fle=
x_2.6.4.bb:do_populate_sysroot&#39;,</pre><pre>&#39;libgloss_3.3.0.bb:do_po=
pulate_sysroot&#39;,</pre><pre>&#39;binutils-cross_2.34.bb:do_fetch&#39;,</=
pre><pre>&#39;texinfo-dummy-native.bb:do_populate_sysroot&#39;,</pre><pre>&=
#39;gnu-config_git.bb:do_populate_sysroot&#39;,</pre><pre>&#39;bison_3.6.4.=
bb:do_populate_sysroot&#39;,</pre><pre>&#39;autoconf_2.69.bb:do_populate_sy=
sroot&#39;,</pre><pre>&#39;zlib_1.2.11.bb:do_populate_sysroot&#39;])</pre><=
pre>=C2=A0 Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/r=
ecipes-devtools/binutils/binutils-cross_2.34.bb:do_configure</pre><pre>(dep=
endent Tasks</pre><pre>[&#39;binutils-cross_2.34.bb:do_deploy_source_date_e=
poch&#39;,</pre><pre>&#39;binutils-cross_2.34.bb:do_prepare_recipe_sysroot&=
#39;,</pre><pre>&#39;binutils-cross_2.34.bb:do_patch&#39;])</pre><pre>=C2=
=A0 Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes=
-devtools/binutils/binutils-cross_2.34.bb:do_compile</pre><pre>(dependent T=
asks [&#39;binutils-cross_2.34.bb:do_configure&#39;])</pre><pre>=C2=A0 Task=
 mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools=
/binutils/binutils-cross_2.34.bb:do_install</pre><pre>(dependent Tasks [&#3=
9;binutils-cross_2.34.bb:do_compile&#39;])</pre><pre>=C2=A0 Task mc:crmu:/h=
ome/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/binutils/b=
inutils-cross_2.34.bb:do_populate_sysroot</pre><pre>(dependent Tasks [&#39;=
binutils-cross_2.34.bb:do_install&#39;])</pre><p class=3D"MsoNormal"><br><b=
r></p><pre></pre></blockquote></div></body></html>

--00000000000083591505acb2d9c9--

--00000000000083591705acb2d9cb
Content-Type: application/octet-stream; 
	name="0001-Add-simple-recipe-using-autotools-to-compile-a-progr.patch"
Content-Disposition: attachment; 
	filename="0001-Add-simple-recipe-using-autotools-to-compile-a-progr.patch"
Content-Transfer-Encoding: base64
X-Attachment-Id: d7f6a7cc9de49e5_0.1

RnJvbSA3YzFjNmYzY2U0NTRkMjZlODZhZTdjNDM4YzcwMjRiMWVkNzI2MDEyIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBKb25hdGhhbiBSaWNoYXJkc29uIDxqb25hdGhhbi5yaWNoYXJk
c29uQGJyb2FkY29tLmNvbT4KRGF0ZTogVHVlLCAxMSBBdWcgMjAyMCAxNjoxMDoyNSAtMDcwMApT
dWJqZWN0OiBbUEFUQ0ggMS8xXSBBZGQgc2ltcGxlIHJlY2lwZSB1c2luZyBhdXRvdG9vbHMgdG8g
Y29tcGlsZSBhIHByb2dyYW0KIHdpdGggbWFpbiB0aGF0IGRvZXMgbm90aGluZy4KCkNoYW5nZS1J
ZDogSTc4Y2U4NWI5NTZmYmIwOGEyZDg5ZjhlMmM2ZDkwOTM0ZGFiMzkxZTcKLS0tCiAuLi4vaGVs
bG93b3JsZC9maWxlcy9NYWtlZmlsZS5hbSAgICAgICAgICAgICAgfCAgMiArKwogLi4uL2hlbGxv
d29ybGQvZmlsZXMvY29uZmlndXJlLmFjICAgICAgICAgICAgIHwgMjEgKysrKysrKysrKysrKysr
KysrKwogbWV0YS9yZWNpcGVzLXN1cHBvcnQvaGVsbG93b3JsZC9maWxlcy9tYWluLmMgIHwgMTEg
KysrKysrKysrKwogbWV0YS9yZWNpcGVzLXN1cHBvcnQvaGVsbG93b3JsZC9oZWxsb3dvcmxkLmJi
IHwgIDggKysrKysrKwogNCBmaWxlcyBjaGFuZ2VkLCA0MiBpbnNlcnRpb25zKCspCiBjcmVhdGUg
bW9kZSAxMDA3NTUgbWV0YS9yZWNpcGVzLXN1cHBvcnQvaGVsbG93b3JsZC9maWxlcy9NYWtlZmls
ZS5hbQogY3JlYXRlIG1vZGUgMTAwNzU1IG1ldGEvcmVjaXBlcy1zdXBwb3J0L2hlbGxvd29ybGQv
ZmlsZXMvY29uZmlndXJlLmFjCiBjcmVhdGUgbW9kZSAxMDA3NTUgbWV0YS9yZWNpcGVzLXN1cHBv
cnQvaGVsbG93b3JsZC9maWxlcy9tYWluLmMKIGNyZWF0ZSBtb2RlIDEwMDc1NSBtZXRhL3JlY2lw
ZXMtc3VwcG9ydC9oZWxsb3dvcmxkL2hlbGxvd29ybGQuYmIKCmRpZmYgLS1naXQgYS9tZXRhL3Jl
Y2lwZXMtc3VwcG9ydC9oZWxsb3dvcmxkL2ZpbGVzL01ha2VmaWxlLmFtIGIvbWV0YS9yZWNpcGVz
LXN1cHBvcnQvaGVsbG93b3JsZC9maWxlcy9NYWtlZmlsZS5hbQpuZXcgZmlsZSBtb2RlIDEwMDc1
NQppbmRleCAwMDAwMDAwMDAwLi4xZWQzODkxOTExCi0tLSAvZGV2L251bGwKKysrIGIvbWV0YS9y
ZWNpcGVzLXN1cHBvcnQvaGVsbG93b3JsZC9maWxlcy9NYWtlZmlsZS5hbQpAQCAtMCwwICsxLDIg
QEAKK2Jpbl9QUk9HUkFNUyA9IGhlbGxvd29ybGQKK2hlbGxvd29ybGRfU09VUkNFUyA9IG1haW4u
YwpkaWZmIC0tZ2l0IGEvbWV0YS9yZWNpcGVzLXN1cHBvcnQvaGVsbG93b3JsZC9maWxlcy9jb25m
aWd1cmUuYWMgYi9tZXRhL3JlY2lwZXMtc3VwcG9ydC9oZWxsb3dvcmxkL2ZpbGVzL2NvbmZpZ3Vy
ZS5hYwpuZXcgZmlsZSBtb2RlIDEwMDc1NQppbmRleCAwMDAwMDAwMDAwLi4zYmQ1M2UyNjkwCi0t
LSAvZGV2L251bGwKKysrIGIvbWV0YS9yZWNpcGVzLXN1cHBvcnQvaGVsbG93b3JsZC9maWxlcy9j
b25maWd1cmUuYWMKQEAgLTAsMCArMSwyMSBAQAorIyAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgLSotIEF1dG9jb25mIC0qLQorIyBQcm9jZXNzIHRoaXMgZmls
ZSB3aXRoIGF1dG9jb25mIHRvIHByb2R1Y2UgYSBjb25maWd1cmUgc2NyaXB0LgorCitBQ19JTklU
KFtoZWxsb3dvcmxkXSwgWzEuMF0pCitBTV9JTklUX0FVVE9NQUtFKFtmb3JlaWduXSkKK0FDX0NP
TkZJR19TUkNESVIoW21haW4uY10pCisKKyMgQ2hlY2tzIGZvciBwcm9ncmFtcy4KK0FDX1BST0df
Q0MKK0FDX1BST0dfSU5TVEFMTAorCisjIENoZWNrcyBmb3IgaGVhZGVyIGZpbGVzLgorQUNfQ0hF
Q0tfSEVBREVSUyhbc3RkaW50Lmggc3RkbGliLmggc3RyaW5nLmggdW5pc3RkLmhdKQorCisjIENo
ZWNrcyBmb3IgdHlwZWRlZnMsIHN0cnVjdHVyZXMsIGFuZCBjb21waWxlciBjaGFyYWN0ZXJpc3Rp
Y3MuCitBQ19UWVBFX1VJTlQxNl9UCitBQ19UWVBFX1VJTlQzMl9UCitBQ19UWVBFX1VJTlQ4X1QK
KworQUNfQ09ORklHX0ZJTEVTKFtNYWtlZmlsZV0pCitBQ19PVVRQVVQKZGlmZiAtLWdpdCBhL21l
dGEvcmVjaXBlcy1zdXBwb3J0L2hlbGxvd29ybGQvZmlsZXMvbWFpbi5jIGIvbWV0YS9yZWNpcGVz
LXN1cHBvcnQvaGVsbG93b3JsZC9maWxlcy9tYWluLmMKbmV3IGZpbGUgbW9kZSAxMDA3NTUKaW5k
ZXggMDAwMDAwMDAwMC4uYzE5NmVkYTg3NAotLS0gL2Rldi9udWxsCisrKyBiL21ldGEvcmVjaXBl
cy1zdXBwb3J0L2hlbGxvd29ybGQvZmlsZXMvbWFpbi5jCkBAIC0wLDAgKzEsMTEgQEAKKyNpbmNs
dWRlIDxzdGRpby5oPgorLy8jaW5jbHVkZSA8c3RkbGliLmg+CisvLyNpbmNsdWRlIDxzdGRpbnQu
aD4KKy8vI2luY2x1ZGUgPHN0cmluZy5oPgorLy8jaW5jbHVkZSA8dW5pc3RkLmg+CisKK2ludCBt
YWluKCBpbnQgYXJnYywgY2hhciAqYXJndltdICkKK3sKKworICAgcmV0dXJuIDA7Cit9CmRpZmYg
LS1naXQgYS9tZXRhL3JlY2lwZXMtc3VwcG9ydC9oZWxsb3dvcmxkL2hlbGxvd29ybGQuYmIgYi9t
ZXRhL3JlY2lwZXMtc3VwcG9ydC9oZWxsb3dvcmxkL2hlbGxvd29ybGQuYmIKbmV3IGZpbGUgbW9k
ZSAxMDA3NTUKaW5kZXggMDAwMDAwMDAwMC4uN2YzYmUzODA0MgotLS0gL2Rldi9udWxsCisrKyBi
L21ldGEvcmVjaXBlcy1zdXBwb3J0L2hlbGxvd29ybGQvaGVsbG93b3JsZC5iYgpAQCAtMCwwICsx
LDggQEAKK0xJQ0VOU0UgPSAiQ0xPU0VEIgorCitpbmhlcml0IGF1dG90b29scworCitTUkNfVVJJ
ID0gImZpbGU6Ly9tYWluLmMgZmlsZTovL01ha2VmaWxlLmFtIGZpbGU6Ly9jb25maWd1cmUuYWMi
CisKK1MgPSAiJHtXT1JLRElSfSIKKwotLSAKMi4yMC4xCgo=

--00000000000083591705acb2d9cb--
