Return-Path: <saul.wold@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4FD9E4C8018D
	for <poky@yoctoproject.org>; Sun, 30 Jan 2011 14:21:03 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 30 Jan 2011 12:21:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,401,1291622400"; d="scan'208";a="381865634"
Received: from unknown (HELO [10.255.14.130]) ([10.255.14.130])
	by azsmga001.ch.intel.com with ESMTP; 30 Jan 2011 12:21:01 -0800
Message-ID: <4D45C82D.1000504@intel.com>
Date: Sun, 30 Jan 2011 12:21:01 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Joshua Lock <josh@openedhand.com>
References: <cover.1296174472.git.paul.eggleton@linux.intel.com>	<49f426bf91a697f726ea412e4e2c1e17bd410d61.1296174472.git.paul.eggleton@linux.intel.com>
	<1296228438.2704.23.camel@scimitar>
In-Reply-To: <1296228438.2704.23.camel@scimitar>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 01/11] Add directfb 1.4.6 from meta-openembedded
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 30 Jan 2011 20:21:03 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/28/2011 07:27 AM, Joshua Lock wrote:
> On Fri, 2011-01-28 at 00:36 +0000, Paul Eggleton wrote:
>> From: Paul Eggleton<paul.eggleton@linux.intel.com>
>>
>> This package has been added from meta-openembedded (with no changes) in order
>> to be able to build qt4-embedded.
>>
>> Signed-off-by: Paul Eggleton<paul.eggleton@linux.intel.com>
>> ---
>>   .../directfb/directfb-1.4.6/mkdfiff.patch          |   24 +++++++
>>   meta/recipes-graphics/directfb/directfb.inc        |   73 ++++++++++++++++++++
>>   meta/recipes-graphics/directfb/directfb_1.4.6.bb   |   27 +++++++
>>   .../directfb-1.2.x-fix-pkgconfig-cflags.patch      |   47 +++++++++++++
>>   .../directfb/files/dont-use-linux-config.patch     |   12 +++
>>   5 files changed, 183 insertions(+), 0 deletions(-)
>>   create mode 100644 meta/recipes-graphics/directfb/directfb-1.4.6/mkdfiff.patch
>>   create mode 100644 meta/recipes-graphics/directfb/directfb.inc
>>   create mode 100644 meta/recipes-graphics/directfb/directfb_1.4.6.bb
>>   create mode 100644 meta/recipes-graphics/directfb/files/directfb-1.2.x-fix-pkgconfig-cflags.patch
>>   create mode 100644 meta/recipes-graphics/directfb/files/dont-use-linux-config.patch
>>
>> diff --git a/meta/recipes-graphics/directfb/directfb-1.4.6/mkdfiff.patch b/meta/recipes-graphics/directfb/directfb-1.4.6/mkdfiff.patch
>> new file mode 100644
>> index 0000000..28bd534
>> --- /dev/null
>> +++ b/meta/recipes-graphics/directfb/directfb-1.4.6/mkdfiff.patch
>> @@ -0,0 +1,24 @@
>> +diff -uNr DirectFB-1.4.6.orig/tools/mkdfiff.c DirectFB-1.4.6/tools/mkdfiff.c
>> +--- DirectFB-1.4.6.orig/tools/mkdfiff.c 2010-10-15 10:54:57.000000000 +0200
>> ++++ DirectFB-1.4.6/tools/mkdfiff.c      2010-10-15 10:54:15.000000000 +0200
>> +@@ -50,6 +50,8 @@
>> +
>> + #include<dfiff.h>
>> +
>> ++#include<unistd.h>
>> ++
>> + static DirectFBPixelFormatNames( format_names );
>> +
>> + static const char            *filename;
>> +diff -uNr DirectFB-1.4.6.orig/tools/mkdgifft.cpp DirectFB-1.4.6/tools/mkdgifft.cpp
>> +--- DirectFB-1.4.6.orig/tools/mkdgifft.cpp      2010-10-08 14:02:57.000000000 +0200
>> ++++ DirectFB-1.4.6/tools/mkdgifft.cpp   2010-10-15 10:56:06.000000000 +0200
>> +@@ -40,6 +40,8 @@
>> + #include<errno.h>
>> + #include<stdio.h>
>> + #include<stdlib.h>
>> ++#include<sys/stat.h>
>> ++#include<sys/types.h>
>> + #include<unistd.h>
>> + #include<fcntl.h>
>> + #include<sys/mman.h>
>> diff --git a/meta/recipes-graphics/directfb/directfb.inc b/meta/recipes-graphics/directfb/directfb.inc
>> new file mode 100644
>> index 0000000..ca22d24
>> --- /dev/null
>> +++ b/meta/recipes-graphics/directfb/directfb.inc
>> @@ -0,0 +1,73 @@
>> +DESCRIPTION = "DirectFB is a thin library that provides developers \
>> +with hardware graphics acceleration, input device handling and \
>> +abstraction, an integrated windowing system with support for \
>> +translucent windows and multiple display layers on top of the \
>> +Linux framebuffer device."
>> +SECTION = "libs"
>> +LICENSE = "LGPLv2.1"
>> +LIC_FILES_CHKSUM = "file://COPYING;md5=dcf3c825659e82539645da41a7908589"
>> +
>> +HOMEPAGE = "http://directfb.org"
>> +DEPENDS = "jpeg libpng freetype zlib tslib"
>> +
>> +SRC_URI = " \
>> +    http://www.directfb.org/downloads/Old/DirectFB-${PV}.tar.gz \
>> +    file://fix-pkgconfig-cflags.patch \
>> +    file://fix-font-missing-char.patch \
>> +    file://getpagesize.patch \
>> +    file://mkdfiff.patch \
>> +    file://dont-use-linux-config.patch \
>> +    file://ts_lib_autotools.patch \
>> +"
>> +S = "${WORKDIR}/DirectFB-${PV}"
>> +
>> +LDFLAGS_append =" -lts -lm"
>> +
>> +inherit autotools binconfig pkgconfig
>> +
>> +EXTRA_OECONF = "\
>> +  --with-gfxdrivers=none \
>> +  --enable-libmpeg3=no \
>> +  --enable-freetype=yes \
>> +  --enable-sdl=no \
>> +  --enable-vnc=no \
>> +  --disable-x11 \
>> +"
>> +
>> +do_install() {
>> +        oe_runmake 'DESTDIR=${D}' install
>> +}
>
> Isn't this what do_install() always does?
>
Josh,

I have noticed that others include this do_install, I just double 
checked the autotools.bbclass and it appears to do the same thing, so 
unless something is not working, this should be unnecessary.

Sau!


>> +
>> +
>> +#PACKAGES_DYNAMIC = "directfb-inputdrivers-*"
>> +#
>> +#python populate_packages_prepend () {
>> +#    import os.path
>> +#    inputdrivers_libdir = bb.data.expand('${libdir}/directfb-${RV}/inputdrivers', d)
>> +#    do_split_packages(d, inputdrivers_libdir, '*.so$', 'directfb-inputdrivers-%s', 'Directfb plugin for %s')
>> +#}
>> +
>> +# NOTE: monolithic packaging for now, should improve that eventually
>> +
>> +
>> +
>> +FILES_${PN}-dbg += "\
>> +  ${libdir}/directfb-${RV}/*/*/.debug/*.so \
>> +  ${libdir}/directfb-${RV}/*/.debug/*.so \
>> +"
>> +
>> +FILES_${PN}-dev += "\
>> +  ${bindir}/directfb-config \
>> +  ${libdir}/directfb-${RV}/systems/*.la \
>> +  ${libdir}/directfb-${RV}/inputdrivers/*.la \
>> +  ${libdir}/directfb-${RV}/interfaces/*/*.la \
>> +  ${libdir}/directfb-${RV}/wm/*.la \
>> +"
>> +
>> +FILES_${PN} += "\
>> +  ${libdir}/directfb-${RV}/systems/*.so \
>> +  ${libdir}/directfb-${RV}/inputdrivers/*.so \
>> +  ${libdir}/directfb-${RV}/interfaces/*/*.so \
>> +  ${libdir}/directfb-${RV}/wm/*.so \
>> +  ${datadir}/directfb-${PV} \
>> +"
>> diff --git a/meta/recipes-graphics/directfb/directfb_1.4.6.bb b/meta/recipes-graphics/directfb/directfb_1.4.6.bb
>> new file mode 100644
>> index 0000000..70c0225
>> --- /dev/null
>> +++ b/meta/recipes-graphics/directfb/directfb_1.4.6.bb
>> @@ -0,0 +1,27 @@
>> +require directfb.inc
>> +
>> +RV = "1.4-5"
>> +PR = "r2"
>> +
>> +DEPENDS += "sysfsutils"
>> +
>> +SRC_URI = " \
>> +    http://directfb.org/downloads/Core/DirectFB-1.4/DirectFB-${PV}.tar.gz \
>> +    file://directfb-1.2.x-fix-pkgconfig-cflags.patch \
>> +    file://mkdfiff.patch \
>> +    file://dont-use-linux-config.patch \
>> +   "
>> +
>> +EXTRA_OECONF = "\
>> +  --enable-freetype=yes \
>> +  --enable-zlib \
>> +  --with-gfxdrivers=none \
>> +  --disable-sdl \
>> +  --disable-vnc \
>> +  --disable-x11 \
>> +"
>> +
>> +LEAD_SONAME = "libdirectfb-1.4.so.5"
>> +
>> +SRC_URI[md5sum] = "dbe1957932f81790742b58b94c1c7b84"
>> +SRC_URI[sha256sum] = "b18121e60e9a084ee347037a53a46cfaea1c09505bd99d673c2e65eca285e69b"
>> diff --git a/meta/recipes-graphics/directfb/files/directfb-1.2.x-fix-pkgconfig-cflags.patch b/meta/recipes-graphics/directfb/files/directfb-1.2.x-fix-pkgconfig-cflags.patch
>> new file mode 100644
>> index 0000000..745c561
>> --- /dev/null
>> +++ b/meta/recipes-graphics/directfb/files/directfb-1.2.x-fix-pkgconfig-cflags.patch
>> @@ -0,0 +1,47 @@
>> +Index: DirectFB-1.1.1/directfb-internal.pc.in
>> +===================================================================
>> +--- DirectFB-1.1.1.orig/directfb-internal.pc.in	2007-08-07 21:43:00.000000000 +0200
>> ++++ DirectFB-1.1.1/directfb-internal.pc.in	2008-07-17 21:00:47.424654304 +0200
>> +@@ -2,10 +2,10 @@
>> + exec_prefix=@exec_prefix@
>> + moduledir=@MODULEDIR@
>> + moduledirname=@MODULEDIRNAME@
>> +-includedir=@INTERNALINCLUDEDIR@
>> ++includedir=@includedir@
>> +
>> + Name: DirectFB-Internal
>> + Description: Third party module support package for DirectFB.
>> + Version: @VERSION@
>> + Requires: directfb = @VERSION@
>> +-Cflags: @DFB_INTERNAL_CFLAGS@ -I@INTERNALINCLUDEDIR@
>> ++Cflags: @DFB_INTERNAL_CFLAGS@ -I${includedir}/directfb -I${includedir}
>> +Index: DirectFB-1.1.1/directfb.pc.in
>> +===================================================================
>> +--- DirectFB-1.1.1.orig/directfb.pc.in	2007-12-15 16:23:16.000000000 +0100
>> ++++ DirectFB-1.1.1/directfb.pc.in	2008-07-17 20:59:58.044985193 +0200
>> +@@ -9,4 +9,4 @@
>> + Requires: fusion direct
>> + Libs: -L${libdir} -ldirectfb @THREADLIB@ @OSX_LIBS@
>> + Libs.private: -L${libdir} @DYNLIB@ @ZLIB_LIBS@
>> +-Cflags: @THREADFLAGS@ -I@INCLUDEDIR@
>> ++Cflags: @THREADFLAGS@ -I${includedir}/directfb
>> +Index: DirectFB-1.1.1/lib/fusion/fusion.pc.in
>> +===================================================================
>> +--- DirectFB-1.1.1.orig/lib/fusion/fusion.pc.in	2007-08-07 21:43:00.000000000 +0200
>> ++++ DirectFB-1.1.1/lib/fusion/fusion.pc.in	2008-07-17 20:58:07.051338866 +0200
>> +@@ -8,4 +8,4 @@
>> + Version: @VERSION@
>> + Requires: direct
>> + Libs: -L${libdir} -lfusion
>> +-Cflags: -I@INCLUDEDIR@
>> ++Cflags: -I${includedir}/directfb -I${includedir}
>> +Index: DirectFB-1.1.1/lib/voodoo/voodoo.pc.in
>> +===================================================================
>> +--- DirectFB-1.1.1.orig/lib/voodoo/voodoo.pc.in	2007-08-07 21:43:00.000000000 +0200
>> ++++ DirectFB-1.1.1/lib/voodoo/voodoo.pc.in	2008-07-17 20:58:07.054671842 +0200
>> +@@ -8,4 +8,4 @@
>> + Version: @VERSION@
>> + Requires: direct
>> + Libs: -L${libdir} -lvoodoo
>> +-Cflags: -I@INCLUDEDIR@
>> ++Cflags: -I${includedir}/directfb -I${includedir}
>> diff --git a/meta/recipes-graphics/directfb/files/dont-use-linux-config.patch b/meta/recipes-graphics/directfb/files/dont-use-linux-config.patch
>> new file mode 100644
>> index 0000000..f971660
>> --- /dev/null
>> +++ b/meta/recipes-graphics/directfb/files/dont-use-linux-config.patch
>> @@ -0,0 +1,12 @@
>> +diff -urN DirectFB-1.1.0.orig/lib/direct/ppcasm_memcpy_cachable.S DirectFB-1.1.0/lib/direct/ppcasm_memcpy_cachable.S
>> +--- DirectFB-1.1.0.orig/lib/direct/ppcasm_memcpy_cachable.S	2007-08-07 21:43:00.000000000 +0200
>> ++++ DirectFB-1.1.0/lib/direct/ppcasm_memcpy_cachable.S	2008-06-07 04:14:26.000000000 +0200
>> +@@ -34,8 +34,6 @@
>> +
>> + #define __ASSEMBLY__
>> +
>> +-#include<linux/config.h>
>> +-
>> + #if defined(CONFIG_8xx) || defined(CONFIG_403GCX)
>> + #define L1_CACHE_LINE_SIZE       16
>> + #define LG_L1_CACHE_LINE_SIZE     4
>


