Received: from linux.microsoft.com (linux.microsoft.com [13.77.154.182])
 by mx.groups.io with SMTP id smtpd.web11.9188.1597125168895917268
 for <poky@lists.yoctoproject.org>;
 Mon, 10 Aug 2020 22:52:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linux.microsoft.com header.s=default header.b=h0NoTQu3;
 spf=pass (domain: linux.microsoft.com, ip: 13.77.154.182, mailfrom: alhe@linux.microsoft.com)
Received: from [192.168.1.246] (cpe-68-201-52-49.elp.res.rr.com [68.201.52.49])
	by linux.microsoft.com (Postfix) with ESMTPSA id EAA2120B4908;
	Mon, 10 Aug 2020 22:52:46 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com EAA2120B4908
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.microsoft.com;
	s=default; t=1597125167;
	bh=KggrgLPvpVzXaDixRsdyN30TfHlPX/6MWlhZFUxzOlk=;
	h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
	b=h0NoTQu3oqmGqK6TpOEadHmqGAn1JxhH6Ri0OFMbvdafd8+f7c+mNCSzY+L1eIOSO
	 7tVQ2X8m70yXuoKElofbz9TiI2pd0Lk2P+hxSxaqPNmbxPiTrMj4XFIFuYCbUc28fi
	 9lQqX5WBqctnDMOEmT9yAwMuDyr68t8zAfhZUm+s=
Subject: Re: [poky] TCLIBC with newlib
To: jonathan.richardson@broadcom.com, Khem Raj <raj.khem@gmail.com>
Cc: poky@lists.yoctoproject.org
References: <CAHrpVsUkTgim53raUgXgkiGvpzrWZJVPFEBzU1YX0S03_ix-kg@mail.gmail.com>
 <CAMKF1so6iTZNupBciUh8dgUQDWQ1-YH7iUy=RU4YFMrx77mqDA@mail.gmail.com>
 <CAHrpVsVvD55j=BHjN2Jv+b71A8rOTVpYYoaMKAyF_zFcXMUw6A@mail.gmail.com>
From: alhe@linux.microsoft.com
Message-ID: <0994fb3e-7adb-def7-89ab-f8e8c3f64113@linux.microsoft.com>
Date: Mon, 10 Aug 2020 22:52:45 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CAHrpVsVvD55j=BHjN2Jv+b71A8rOTVpYYoaMKAyF_zFcXMUw6A@mail.gmail.com>
Content-Type: multipart/alternative;
 boundary="------------5C552B42FCDF5D9FE606DD33"
Content-Language: en-US

--------------5C552B42FCDF5D9FE606DD33
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hello,

I'm pretty sure, you are causing the dependency loop with the depends + 
cross class changes.

I think there is some wiring in libgcc that is not matching properly 
with something defined in your BSP layer, likely in your machine.conf, 
although like Khem said, removing the dbg packages from the dependencies 
would workaround this issue.

Yes, a newlib toolchain can be created, this works fine with the 
supported BSPs (and others from some vendors) AFAIC I dont think changes 
are required on tclibc-newlib at this point since it contains the 
basics, anything else would be added per architecture on their BSP layer.

Its hard to tell without knowing anything about the architecture you're 
using, but I think the error you are hitting its happening because your 
runtime isn't being built properly or is incompatible, it looks like at 
the very least you should have stubs for _exit() patched on 
libgloss/newlib for your architecture (or submit those to newlib 
upstream), if you're using something ARM based you may be able to build 
using semhosting with the rdimon specs or even nosys but it probably 
wouldn't work properly at runtime, if that allows you to build you can 
proceed to add you architecture specific functions to libgloss.


Cheers,

Alejandro

On 8/7/20 4:26 PM, Jonathan Richardson via lists.yoctoproject.org wrote:
> On Thu, Aug 6, 2020 at 9:58 PM Khem Raj <raj.khem@gmail.com> wrote:
>> On Thu, Aug 6, 2020 at 5:22 PM Jonathan Richardson via
>> lists.yoctoproject.org
>> <jonathan.richardson=broadcom.com@lists.yoctoproject.org> wrote:
>>> Hi,
>>>
>>> I'm trying to create a toolchain using newlib as the libc. I set
>>> TCLIBC="newlib". First error is:
>>> ERROR: Nothing PROVIDES 'libgcc-dbg' (but
>>> mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta-brcm/meta-stingray2/recipes-zephyr/brcm-zephyr/brcm-zephyr.bb
>>> DEPENDS on or otherwise requires it). Close matches:
>>>    libgcc
>>>    libgcc RPROVIDES libgcc-dbg
>>> ERROR: Required build target 'brcm-zephyr' has no buildable providers.
>>> Missing or unbuildable dependency chain was: ['brcm-zephyr', 'libgcc-dbg']
>>>
>>> This is caused by LIBC_DEPENDENCIES in
>>> meta/conf/distro/include/tclibc-newlib.inc:
>>> LIBC_DEPENDENCIES = "\
>>>      newlib-dbg \
>>>      newlib-dev \
>>>      libgloss \
>>>      libgloss-dev \
>>>      libgloss-dbg \
>>>      libgcc-dev \
>>>      libgcc-dbg \
>>>      libstdc++-dev \
>>>      libstdc++-staticdev \
>> Remove all -dbg packages from above list.
>>
>>> TOOLCHAIN_TARGET_TASK ?= "${LIBC_DEPENDENCIES}"
>>>
>>> TOOLCHAIN_TARGET_TASK = "newlib libgloss" seems to fix it. Why are the
>>> dev/dbg packages required as
>>> dependencies and why does it think the recipes for libgloss, libgcc,
>>> etc don't provide them?
>>>
>>> Then libtool-cross fails when autoconf checks if the compiler works
>>> because it can't find _exit().
>>> So I added this to my local.conf:
>>> EXTRA_OECONF_append_class_target = " LIBS=-lgloss-linux"
>>> EXTRA_OECONF_append_class_cross = " LIBS=-lgloss-linux"
>> It should be EXTRA_OECONF_append_class-target and
>> EXTRA_OECONF_append_class-cross, there is a underscore there instead
>> of '-'
> Thanks. More than this is required though. I added this so far:
>
> diff --git a/meta/classes/base.bbclass b/meta/classes/base.bbclass
> index 6776242740..262db927cd 100644
> --- a/meta/classes/base.bbclass
> +++ b/meta/classes/base.bbclass
> @@ -75,6 +75,7 @@ BASE_DEFAULT_DEPS = "virtual/${TARGET_PREFIX}gcc
> virtual/${TARGET_PREFIX}compile
>
>   BASEDEPENDS = ""
>   BASEDEPENDS_class-target = "${@base_dep_prepend(d)}"
> +BASEDEPENDS_class-cross = "${@base_dep_prepend(d)}"
>   BASEDEPENDS_class-nativesdk = "${@base_dep_prepend(d)}"
>
>   DEPENDS_prepend="${BASEDEPENDS} "
> diff --git a/meta/conf/distro/include/tclibc-newlib.inc
> b/meta/conf/distro/include/tclibc-newlib.inc
> index bf89b11288..cb55f3a82c 100644
> --- a/meta/conf/distro/include/tclibc-newlib.inc
> +++ b/meta/conf/distro/include/tclibc-newlib.inc
> @@ -18,13 +18,10 @@ DISTRO_FEATURES_BACKFILL_CONSIDERED += "ldconfig"
>   IMAGE_LINGUAS = ""
>
>   LIBC_DEPENDENCIES = "\
> -    newlib-dbg \
>       newlib-dev \
>       libgloss \
>       libgloss-dev \
> -    libgloss-dbg \
>       libgcc-dev \
> -    libgcc-dbg \
>       libstdc++-dev \
>       libstdc++-staticdev \
>       "
> @@ -34,6 +31,7 @@ ASSUME_PROVIDED += "virtual/crypt"
>   # Its useful to be able to extend newlib, but we dont provide a
> native variant of libgloss
>   NEWLIB_EXTENDED ?=  "libgloss libgcc"
>   BASE_DEFAULT_DEPS_append_class-target = " ${NEWLIB_EXTENDED}"
> +BASE_DEFAULT_DEPS_append_class-cross = " ${NEWLIB_EXTENDED}"
>
>   TARGET_OS = "elf"
>   TARGET_OS_arm = "eabi"
> @@ -45,3 +43,9 @@ TOOLCHAIN_NEED_CONFIGSITE_CACHE_remove = "zlib ncurses"
>   # disable pie security flags by default
>   SECURITY_CFLAGS_libc-newlib = "${SECURITY_NOPIE_CFLAGS}"
>   SECURITY_LDFLAGS_libc-newlib = ""
> +
> +EXTRA_OECONF_append_class-target = " LIBS=-lgloss-linux"
> +EXTRA_OECONF_append_class-cross = " LIBS=-lgloss-linux"
> +# binutils-cross.inc sets INHIBIT_DEFAULT_DEPS = "1" which will cause
> BASEDEBPENDS to not
> +# include libgloss which causes the autoconf compiler check to fail.
> +DEPENDS_append_pn-binutils-cross-arm = " libgloss"
>
> Adding the dependency to binutils-cross-arm causes circular
> dependencies though. I don't know
> what's going on here:
>
> Dependency loop #1 found:
>    Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-core/newlib/libgloss_3.3.0.bb:do_compile
> (dependent Tasks ['libgloss_3.3.0.bb:do_configure'])
>    Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-core/newlib/libgloss_3.3.0.bb:do_install
> (dependent Tasks ['pseudo_git.bb:do_populate_sysroot',
> 'libgloss_3.3.0.bb:do_compile'])
>    Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-core/newlib/libgloss_3.3.0.bb:do_populate_sysroot
> (dependent Tasks ['binutils-cross_2.34.bb:do_populate_sysroot',
> 'libgloss_3.3.0.bb:do_install'])
>    Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/binutils/binutils-cross_2.34.bb:do_prepare_recipe_sysroot
> (dependent Tasks ['flex_2.6.4.bb:do_populate_sysroot',
> 'libgloss_3.3.0.bb:do_populate_sysroot',
> 'binutils-cross_2.34.bb:do_fetch',
> 'texinfo-dummy-native.bb:do_populate_sysroot',
> 'gnu-config_git.bb:do_populate_sysroot',
> 'bison_3.6.4.bb:do_populate_sysroot',
> 'autoconf_2.69.bb:do_populate_sysroot',
> 'zlib_1.2.11.bb:do_populate_sysroot'])
>    Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/binutils/binutils-cross_2.34.bb:do_configure
> (dependent Tasks
> ['binutils-cross_2.34.bb:do_deploy_source_date_epoch',
> 'binutils-cross_2.34.bb:do_prepare_recipe_sysroot',
> 'binutils-cross_2.34.bb:do_patch'])
>    Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/binutils/binutils-cross_2.34.bb:do_compile
> (dependent Tasks ['binutils-cross_2.34.bb:do_configure'])
>    Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/binutils/binutils-cross_2.34.bb:do_install
> (dependent Tasks ['binutils-cross_2.34.bb:do_compile'])
>    Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/binutils/binutils-cross_2.34.bb:do_populate_sysroot
> (dependent Tasks ['binutils-cross_2.34.bb:do_install'])
>    Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/gcc/gcc-cross_10.1.bb:do_prepare_recipe_sysroot
> (dependent Tasks ['flex_2.6.4.bb:do_populate_sysroot',
> 'gcc-cross_10.1.bb:do_fetch',
> 'libtool-native_2.4.6.bb:do_populate_sysroot',
> 'mpfr_4.1.0.bb:do_populate_sysroot',
> 'gmp_6.2.0.bb:do_populate_sysroot',
> 'libmpc_1.1.0.bb:do_populate_sysroot',
> 'texinfo-dummy-native.bb:do_populate_sysroot',
> 'gnu-config_git.bb:do_populate_sysroot',
> 'binutils-cross_2.34.bb:do_populate_sysroot',
> 'autoconf_2.69.bb:do_populate_sysroot',
> 'automake_1.16.2.bb:do_populate_sysroot',
> 'zlib_1.2.11.bb:do_populate_sysroot'])
>    Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/gcc/gcc-cross_10.1.bb:do_configure
> (dependent Tasks ['gcc-cross_10.1.bb:do_prepare_recipe_sysroot',
> 'gcc-cross_10.1.bb:do_deploy_source_date_epoch',
> 'gcc-source_10.1.bb:do_preconfigure'])
>    Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/gcc/gcc-cross_10.1.bb:do_compile
> (dependent Tasks ['gcc-cross_10.1.bb:do_configure'])
>    Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/gcc/gcc-cross_10.1.bb:do_install
> (dependent Tasks ['gcc-cross_10.1.bb:do_compile',
> 'gcc-cross_10.1.bb:do_gcc_stash_builddir'])
>    Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/gcc/gcc-cross_10.1.bb:do_populate_sysroot
> (dependent Tasks ['gcc-cross_10.1.bb:do_install'])
>    Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-core/newlib/libgloss_3.3.0.bb:do_prepare_recipe_sysroot
> (dependent Tasks ['newlib_3.3.0.bb:do_populate_sysroot',
> 'libgloss_3.3.0.bb:do_fetch', 'pseudo_git.bb:do_populate_sysroot',
> 'gcc-cross_10.1.bb:do_populate_sysroot'])
>    Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-core/newlib/libgloss_3.3.0.bb:do_configure
> (dependent Tasks ['libgloss_3.3.0.bb:do_deploy_source_date_epoch',
> 'libgloss_3.3.0.bb:do_prepare_recipe_sysroot',
> 'libgloss_3.3.0.bb:do_patch'])
>
> Dependency loop #2 found:
>    Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-core/newlib/libgloss_3.3.0.bb:do_compile
> (dependent Tasks ['libgloss_3.3.0.bb:do_configure'])
>    Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-core/newlib/libgloss_3.3.0.bb:do_install
> (dependent Tasks ['pseudo_git.bb:do_populate_sysroot',
> 'libgloss_3.3.0.bb:do_compile'])
>    Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-core/newlib/libgloss_3.3.0.bb:do_populate_sysroot
> (dependent Tasks ['binutils-cross_2.34.bb:do_populate_sysroot',
> 'libgloss_3.3.0.bb:do_install'])
>    Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/binutils/binutils-cross_2.34.bb:do_prepare_recipe_sysroot
> (dependent Tasks ['flex_2.6.4.bb:do_populate_sysroot',
> 'libgloss_3.3.0.bb:do_populate_sysroot',
> 'binutils-cross_2.34.bb:do_fetch',
> 'texinfo-dummy-native.bb:do_populate_sysroot',
> 'gnu-config_git.bb:do_populate_sysroot',
> 'bison_3.6.4.bb:do_populate_sysroot',
> 'autoconf_2.69.bb:do_populate_sysroot',
> 'zlib_1.2.11.bb:do_populate_sysroot'])
>    Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/binutils/binutils-cross_2.34.bb:do_configure
> (dependent Tasks
> ['binutils-cross_2.34.bb:do_deploy_source_date_epoch',
> 'binutils-cross_2.34.bb:do_prepare_recipe_sysroot',
> 'binutils-cross_2.34.bb:do_patch'])
>    Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/binutils/binutils-cross_2.34.bb:do_compile
> (dependent Tasks ['binutils-cross_2.34.bb:do_configure'])
>    Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/binutils/binutils-cross_2.34.bb:do_install
> (dependent Tasks ['binutils-cross_2.34.bb:do_compile'])
>    Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/binutils/binutils-cross_2.34.bb:do_populate_sysroot
> (dependent Tasks ['binutils-cross_2.34.bb:do_install'])
>    Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/gcc/gcc-cross_10.1.bb:do_prepare_recipe_sysroot
> (dependent Tasks ['flex_2.6.4.bb:do_populate_sysroot',
> 'gcc-cross_10.1.bb:do_fetch',
> 'libtool-native_2.4.6.bb:do_populate_sysroot',
> 'mpfr_4.1.0.bb:do_populate_sysroot',
> 'gmp_6.2.0.bb:do_populate_sysroot',
> 'libmpc_1.1.0.bb:do_populate_sysroot',
> 'texinfo-dummy-native.bb:do_populate_sysroot',
> 'gnu-config_git.bb:do_populate_sysroot',
> 'binutils-cross_2.34.bb:do_populate_sysroot',
> 'autoconf_2.69.bb:do_populate_sysroot',
> 'automake_1.16.2.bb:do_populate_sysroot',
> 'zlib_1.2.11.bb:do_populate_sysroot'])
>    Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/gcc/gcc-cross_10.1.bb:do_configure
> (dependent Tasks ['gcc-cross_10.1.bb:do_prepare_recipe_sysroot',
> 'gcc-cross_10.1.bb:do_deploy_source_date_epoch',
> 'gcc-source_10.1.bb:do_preconfigure'])
>    Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/gcc/gcc-cross_10.1.bb:do_compile
> (dependent Tasks ['gcc-cross_10.1.bb:do_configure'])
>    Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/gcc/gcc-cross_10.1.bb:do_install
> (dependent Tasks ['gcc-cross_10.1.bb:do_compile',
> 'gcc-cross_10.1.bb:do_gcc_stash_builddir'])
>    Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/gcc/gcc-cross_10.1.bb:do_populate_sysroot
> (dependent Tasks ['gcc-cross_10.1.bb:do_install'])
>    Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-core/newlib/newlib_3.3.0.bb:do_prepare_recipe_sysroot
> (dependent Tasks ['gcc-cross_10.1.bb:do_populate_sysroot',
> 'pseudo_git.bb:do_populate_sysroot', 'newlib_3.3.0.bb:do_fetch'])
>    Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-core/newlib/newlib_3.3.0.bb:do_configure
> (dependent Tasks ['newlib_3.3.0.bb:do_deploy_source_date_epoch',
> 'newlib_3.3.0.bb:do_prepare_recipe_sysroot',
> 'newlib_3.3.0.bb:do_patch'])
>    Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-core/newlib/newlib_3.3.0.bb:do_compile
> (dependent Tasks ['newlib_3.3.0.bb:do_configure'])
>    Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-core/newlib/newlib_3.3.0.bb:do_install
> (dependent Tasks ['newlib_3.3.0.bb:do_compile',
> 'pseudo_git.bb:do_populate_sysroot'])
>    Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-core/newlib/newlib_3.3.0.bb:do_populate_sysroot
> (dependent Tasks ['newlib_3.3.0.bb:do_install',
> 'binutils-cross_2.34.bb:do_populate_sysroot'])
>    Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-core/newlib/libgloss_3.3.0.bb:do_prepare_recipe_sysroot
> (dependent Tasks ['newlib_3.3.0.bb:do_populate_sysroot',
> 'libgloss_3.3.0.bb:do_fetch', 'pseudo_git.bb:do_populate_sysroot',
> 'gcc-cross_10.1.bb:do_populate_sysroot'])
>    Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-core/newlib/libgloss_3.3.0.bb:do_configure
> (dependent Tasks ['libgloss_3.3.0.bb:do_deploy_source_date_epoch',
> 'libgloss_3.3.0.bb:do_prepare_recipe_sysroot',
> 'libgloss_3.3.0.bb:do_patch'])
>
> Dependency loop #3 found:
>    Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-core/newlib/libgloss_3.3.0.bb:do_compile
> (dependent Tasks ['libgloss_3.3.0.bb:do_configure'])
>    Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-core/newlib/libgloss_3.3.0.bb:do_install
> (dependent Tasks ['pseudo_git.bb:do_populate_sysroot',
> 'libgloss_3.3.0.bb:do_compile'])
>    Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-core/newlib/libgloss_3.3.0.bb:do_populate_sysroot
> (dependent Tasks ['binutils-cross_2.34.bb:do_populate_sysroot',
> 'libgloss_3.3.0.bb:do_install'])
>    Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/binutils/binutils-cross_2.34.bb:do_prepare_recipe_sysroot
> (dependent Tasks ['flex_2.6.4.bb:do_populate_sysroot',
> 'libgloss_3.3.0.bb:do_populate_sysroot',
> 'binutils-cross_2.34.bb:do_fetch',
> 'texinfo-dummy-native.bb:do_populate_sysroot',
> 'gnu-config_git.bb:do_populate_sysroot',
> 'bison_3.6.4.bb:do_populate_sysroot',
> 'autoconf_2.69.bb:do_populate_sysroot',
> 'zlib_1.2.11.bb:do_populate_sysroot'])
>    Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/binutils/binutils-cross_2.34.bb:do_configure
> (dependent Tasks
> ['binutils-cross_2.34.bb:do_deploy_source_date_epoch',
> 'binutils-cross_2.34.bb:do_prepare_recipe_sysroot',
> 'binutils-cross_2.34.bb:do_patch'])
>    Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/binutils/binutils-cross_2.34.bb:do_compile
> (dependent Tasks ['binutils-cross_2.34.bb:do_configure'])
>    Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/binutils/binutils-cross_2.34.bb:do_install
> (dependent Tasks ['binutils-cross_2.34.bb:do_compile'])
>    Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/binutils/binutils-cross_2.34.bb:do_populate_sysroot
> (dependent Tasks ['binutils-cross_2.34.bb:do_install'])
>    Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/gcc/gcc-cross_10.1.bb:do_prepare_recipe_sysroot
> (dependent Tasks ['flex_2.6.4.bb:do_populate_sysroot',
> 'gcc-cross_10.1.bb:do_fetch',
> 'libtool-native_2.4.6.bb:do_populate_sysroot',
> 'mpfr_4.1.0.bb:do_populate_sysroot',
> 'gmp_6.2.0.bb:do_populate_sysroot',
> 'libmpc_1.1.0.bb:do_populate_sysroot',
> 'texinfo-dummy-native.bb:do_populate_sysroot',
> 'gnu-config_git.bb:do_populate_sysroot',
> 'binutils-cross_2.34.bb:do_populate_sysroot',
> 'autoconf_2.69.bb:do_populate_sysroot',
> 'automake_1.16.2.bb:do_populate_sysroot',
> 'zlib_1.2.11.bb:do_populate_sysroot'])
>    Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/gcc/gcc-cross_10.1.bb:do_configure
> (dependent Tasks ['gcc-cross_10.1.bb:do_prepare_recipe_sysroot',
> 'gcc-cross_10.1.bb:do_deploy_source_date_epoch',
> 'gcc-source_10.1.bb:do_preconfigure'])
>    Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/gcc/gcc-cross_10.1.bb:do_compile
> (dependent Tasks ['gcc-cross_10.1.bb:do_configure'])
>    Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/gcc/gcc-cross_10.1.bb:do_gcc_stash_builddir
> (dependent Tasks ['gcc-cross_10.1.bb:do_compile'])
>    Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/gcc/gcc-cross_10.1.bb:do_install
> (dependent Tasks ['gcc-cross_10.1.bb:do_compile',
> 'gcc-cross_10.1.bb:do_gcc_stash_builddir'])
>    Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/gcc/gcc-cross_10.1.bb:do_populate_sysroot
> (dependent Tasks ['gcc-cross_10.1.bb:do_install'])
>    Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-core/newlib/libgloss_3.3.0.bb:do_prepare_recipe_sysroot
> (dependent Tasks ['newlib_3.3.0.bb:do_populate_sysroot',
> 'libgloss_3.3.0.bb:do_fetch', 'pseudo_git.bb:do_populate_sysroot',
> 'gcc-cross_10.1.bb:do_populate_sysroot'])
>    Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-core/newlib/libgloss_3.3.0.bb:do_configure
> (dependent Tasks ['libgloss_3.3.0.bb:do_deploy_source_date_epoch',
> 'libgloss_3.3.0.bb:do_prepare_recipe_sysroot',
> 'libgloss_3.3.0.bb:do_patch'])
>
> Dependency loop #4 found:
>    Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-core/newlib/libgloss_3.3.0.bb:do_compile
> (dependent Tasks ['libgloss_3.3.0.bb:do_configure'])
>    Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-core/newlib/libgloss_3.3.0.bb:do_install
> (dependent Tasks ['pseudo_git.bb:do_populate_sysroot',
> 'libgloss_3.3.0.bb:do_compile'])
>    Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-core/newlib/libgloss_3.3.0.bb:do_populate_sysroot
> (dependent Tasks ['binutils-cross_2.34.bb:do_populate_sysroot',
> 'libgloss_3.3.0.bb:do_install'])
>    Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/binutils/binutils-cross_2.34.bb:do_prepare_recipe_sysroot
> (dependent Tasks ['flex_2.6.4.bb:do_populate_sysroot',
> 'libgloss_3.3.0.bb:do_populate_sysroot',
> 'binutils-cross_2.34.bb:do_fetch',
> 'texinfo-dummy-native.bb:do_populate_sysroot',
> 'gnu-config_git.bb:do_populate_sysroot',
> 'bison_3.6.4.bb:do_populate_sysroot',
> 'autoconf_2.69.bb:do_populate_sysroot',
> 'zlib_1.2.11.bb:do_populate_sysroot'])
>    Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/binutils/binutils-cross_2.34.bb:do_configure
> (dependent Tasks
> ['binutils-cross_2.34.bb:do_deploy_source_date_epoch',
> 'binutils-cross_2.34.bb:do_prepare_recipe_sysroot',
> 'binutils-cross_2.34.bb:do_patch'])
>    Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/binutils/binutils-cross_2.34.bb:do_compile
> (dependent Tasks ['binutils-cross_2.34.bb:do_configure'])
>    Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/binutils/binutils-cross_2.34.bb:do_install
> (dependent Tasks ['binutils-cross_2.34.bb:do_compile'])
>    Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/binutils/binutils-cross_2.34.bb:do_populate_sysroot
> (dependent Tasks ['binutils-cross_2.34.bb:do_install'])
>    Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/gcc/gcc-cross_10.1.bb:do_prepare_recipe_sysroot
> (dependent Tasks ['flex_2.6.4.bb:do_populate_sysroot',
> 'gcc-cross_10.1.bb:do_fetch',
> 'libtool-native_2.4.6.bb:do_populate_sysroot',
> 'mpfr_4.1.0.bb:do_populate_sysroot',
> 'gmp_6.2.0.bb:do_populate_sysroot',
> 'libmpc_1.1.0.bb:do_populate_sysroot',
> 'texinfo-dummy-native.bb:do_populate_sysroot',
> 'gnu-config_git.bb:do_populate_sysroot',
> 'binutils-cross_2.34.bb:do_populate_sysroot',
> 'autoconf_2.69.bb:do_populate_sysroot',
> 'automake_1.16.2.bb:do_populate_sysroot',
> 'zlib_1.2.11.bb:do_populate_sysroot'])
>    Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/gcc/gcc-cross_10.1.bb:do_configure
> (dependent Tasks ['gcc-cross_10.1.bb:do_prepare_recipe_sysroot',
> 'gcc-cross_10.1.bb:do_deploy_source_date_epoch',
> 'gcc-source_10.1.bb:do_preconfigure'])
>    Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/gcc/gcc-cross_10.1.bb:do_compile
> (dependent Tasks ['gcc-cross_10.1.bb:do_configure'])
>    Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/gcc/gcc-cross_10.1.bb:do_gcc_stash_builddir
> (dependent Tasks ['gcc-cross_10.1.bb:do_compile'])
>    Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/gcc/gcc-cross_10.1.bb:do_install
> (dependent Tasks ['gcc-cross_10.1.bb:do_compile',
> 'gcc-cross_10.1.bb:do_gcc_stash_builddir'])
>    Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/gcc/gcc-cross_10.1.bb:do_populate_sysroot
> (dependent Tasks ['gcc-cross_10.1.bb:do_install'])
>    Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-core/newlib/newlib_3.3.0.bb:do_prepare_recipe_sysroot
> (dependent Tasks ['gcc-cross_10.1.bb:do_populate_sysroot',
> 'pseudo_git.bb:do_populate_sysroot', 'newlib_3.3.0.bb:do_fetch'])
>    Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-core/newlib/newlib_3.3.0.bb:do_configure
> (dependent Tasks ['newlib_3.3.0.bb:do_deploy_source_date_epoch',
> 'newlib_3.3.0.bb:do_prepare_recipe_sysroot',
> 'newlib_3.3.0.bb:do_patch'])
>    Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-core/newlib/newlib_3.3.0.bb:do_compile
> (dependent Tasks ['newlib_3.3.0.bb:do_configure'])
>    Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-core/newlib/newlib_3.3.0.bb:do_install
> (dependent Tasks ['newlib_3.3.0.bb:do_compile',
> 'pseudo_git.bb:do_populate_sysroot'])
>    Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-core/newlib/newlib_3.3.0.bb:do_populate_sysroot
> (dependent Tasks ['newlib_3.3.0.bb:do_install',
> 'binutils-cross_2.34.bb:do_populate_sysroot'])
>    Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-core/newlib/libgloss_3.3.0.bb:do_prepare_recipe_sysroot
> (dependent Tasks ['newlib_3.3.0.bb:do_populate_sysroot',
> 'libgloss_3.3.0.bb:do_fetch', 'pseudo_git.bb:do_populate_sysroot',
> 'gcc-cross_10.1.bb:do_populate_sysroot'])
>    Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-core/newlib/libgloss_3.3.0.bb:do_configure
> (dependent Tasks ['libgloss_3.3.0.bb:do_deploy_source_date_epoch',
> 'libgloss_3.3.0.bb:do_prepare_recipe_sysroot',
> 'libgloss_3.3.0.bb:do_patch'])
>
> Dependency loop #5 found:
>    Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-core/newlib/libgloss_3.3.0.bb:do_compile
> (dependent Tasks ['libgloss_3.3.0.bb:do_configure'])
>    Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-core/newlib/libgloss_3.3.0.bb:do_install
> (dependent Tasks ['pseudo_git.bb:do_populate_sysroot',
> 'libgloss_3.3.0.bb:do_compile'])
>    Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-core/newlib/libgloss_3.3.0.bb:do_populate_sysroot
> (dependent Tasks ['binutils-cross_2.34.bb:do_populate_sysroot',
> 'libgloss_3.3.0.bb:do_install'])
>    Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/binutils/binutils-cross_2.34.bb:do_prepare_recipe_sysroot
> (dependent Tasks ['flex_2.6.4.bb:do_populate_sysroot',
> 'libgloss_3.3.0.bb:do_populate_sysroot',
> 'binutils-cross_2.34.bb:do_fetch',
> 'texinfo-dummy-native.bb:do_populate_sysroot',
> 'gnu-config_git.bb:do_populate_sysroot',
> 'bison_3.6.4.bb:do_populate_sysroot',
> 'autoconf_2.69.bb:do_populate_sysroot',
> 'zlib_1.2.11.bb:do_populate_sysroot'])
>    Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/binutils/binutils-cross_2.34.bb:do_configure
> (dependent Tasks
> ['binutils-cross_2.34.bb:do_deploy_source_date_epoch',
> 'binutils-cross_2.34.bb:do_prepare_recipe_sysroot',
> 'binutils-cross_2.34.bb:do_patch'])
>    Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/binutils/binutils-cross_2.34.bb:do_compile
> (dependent Tasks ['binutils-cross_2.34.bb:do_configure'])
>    Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/binutils/binutils-cross_2.34.bb:do_install
> (dependent Tasks ['binutils-cross_2.34.bb:do_compile'])
>    Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/binutils/binutils-cross_2.34.bb:do_populate_sysroot
> (dependent Tasks ['binutils-cross_2.34.bb:do_install'])
>    Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-core/newlib/newlib_3.3.0.bb:do_populate_sysroot
> (dependent Tasks ['newlib_3.3.0.bb:do_install',
> 'binutils-cross_2.34.bb:do_populate_sysroot'])
>    Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-core/newlib/libgloss_3.3.0.bb:do_prepare_recipe_sysroot
> (dependent Tasks ['newlib_3.3.0.bb:do_populate_sysroot',
> 'libgloss_3.3.0.bb:do_fetch', 'pseudo_git.bb:do_populate_sysroot',
> 'gcc-cross_10.1.bb:do_populate_sysroot'])
>    Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-core/newlib/libgloss_3.3.0.bb:do_configure
> (dependent Tasks ['libgloss_3.3.0.bb:do_deploy_source_date_epoch',
> 'libgloss_3.3.0.bb:do_prepare_recipe_sysroot',
> 'libgloss_3.3.0.bb:do_patch'])
>
> Dependency loop #6 found:
>    Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-core/newlib/libgloss_3.3.0.bb:do_populate_sysroot
> (dependent Tasks ['binutils-cross_2.34.bb:do_populate_sysroot',
> 'libgloss_3.3.0.bb:do_install'])
>    Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/binutils/binutils-cross_2.34.bb:do_prepare_recipe_sysroot
> (dependent Tasks ['flex_2.6.4.bb:do_populate_sysroot',
> 'libgloss_3.3.0.bb:do_populate_sysroot',
> 'binutils-cross_2.34.bb:do_fetch',
> 'texinfo-dummy-native.bb:do_populate_sysroot',
> 'gnu-config_git.bb:do_populate_sysroot',
> 'bison_3.6.4.bb:do_populate_sysroot',
> 'autoconf_2.69.bb:do_populate_sysroot',
> 'zlib_1.2.11.bb:do_populate_sysroot'])
>    Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/binutils/binutils-cross_2.34.bb:do_configure
> (dependent Tasks
> ['binutils-cross_2.34.bb:do_deploy_source_date_epoch',
> 'binutils-cross_2.34.bb:do_prepare_recipe_sysroot',
> 'binutils-cross_2.34.bb:do_patch'])
>    Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/binutils/binutils-cross_2.34.bb:do_compile
> (dependent Tasks ['binutils-cross_2.34.bb:do_configure'])
>    Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/binutils/binutils-cross_2.34.bb:do_install
> (dependent Tasks ['binutils-cross_2.34.bb:do_compile'])
>    Task mc:crmu:/home/jon/work/yocto/stingray2/poky/build/../meta/recipes-devtools/binutils/binutils-cross_2.34.bb:do_populate_sysroot
> (dependent Tasks ['binutils-cross_2.34.bb:do_install'])
>
> 

--------------5C552B42FCDF5D9FE606DD33
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>Hello,</p>
    <p>I'm pretty sure, you are causing the dependency loop with the
      depends + cross class changes.</p>
    <p>I think there is some wiring in libgcc that is not matching
      properly with something defined in your BSP layer, likely in your
      machine.conf, although like Khem said, removing the dbg packages
      from the dependencies would workaround this issue.</p>
    <p>Yes, a newlib toolchain can be created, this works fine with the
      supported BSPs (and others from some vendors) AFAIC I dont think
      changes are required on tclibc-newlib at this point since it
      contains the basics, anything else would be added per architecture
      on their BSP layer.</p>
    <p>Its hard to tell without knowing anything about the architecture
      you're using, but I think the error you are hitting its happening
      because your runtime isn't being built properly or is
      incompatible, it looks like at the very least you should have
      stubs for _exit() patched on libgloss/newlib for your architecture
      (or submit those to newlib upstream), if you're using something
      ARM based you may be able to build using semhosting with the
      rdimon specs or even nosys but it probably wouldn't work properly
      at runtime, if that allows you to build you can proceed to add you
      architecture specific functions to libgloss.</p>
    <p><br>
    </p>
    <p>Cheers,</p>
    <p>Alejandro<br>
    </p>
    <div class="moz-cite-prefix">On 8/7/20 4:26 PM, Jonathan Richardson
      via lists.yoctoproject.org wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAHrpVsVvD55j=BHjN2Jv+b71A8rOTVpYYoaMKAyF_zFcXMUw6A@mail.gmail.com">
      <pre class="moz-quote-pre" wrap="">On Thu, Aug 6, 2020 at 9:58 PM Khem Raj <a class="moz-txt-link-rfc2396E" href="mailto:raj.khem@gmail.com">&lt;raj.khem@gmail.com&gt;</a> wrote:
</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">
On Thu, Aug 6, 2020 at 5:22 PM Jonathan Richardson via
lists.yoctoproject.org
<a class="moz-txt-link-rfc2396E" href="mailto:jonathan.richardson=broadcom.com@lists.yoctoproject.org">&lt;jonathan.richardson=broadcom.com@lists.yoctoproject.org&gt;</a> wrote:
</pre>
        <blockquote type="cite">
          <pre class="moz-quote-pre" wrap="">
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
</pre>
        </blockquote>
        <pre class="moz-quote-pre" wrap="">
Remove all -dbg packages from above list.

</pre>
        <blockquote type="cite">
          <pre class="moz-quote-pre" wrap="">TOOLCHAIN_TARGET_TASK ?= "${LIBC_DEPENDENCIES}"

TOOLCHAIN_TARGET_TASK = "newlib libgloss" seems to fix it. Why are the
dev/dbg packages required as
dependencies and why does it think the recipes for libgloss, libgcc,
etc don't provide them?

Then libtool-cross fails when autoconf checks if the compiler works
because it can't find _exit().
So I added this to my local.conf:
EXTRA_OECONF_append_class_target = " LIBS=-lgloss-linux"
EXTRA_OECONF_append_class_cross = " LIBS=-lgloss-linux"
</pre>
        </blockquote>
        <pre class="moz-quote-pre" wrap="">
It should be EXTRA_OECONF_append_class-target and
EXTRA_OECONF_append_class-cross, there is a underscore there instead
of '-'
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
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
</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">
</pre>
    </blockquote>
  </body>
</html>

--------------5C552B42FCDF5D9FE606DD33--
