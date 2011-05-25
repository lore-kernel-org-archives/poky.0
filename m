Return-Path: <saul.wold@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 781974C805BB
	for <poky@yoctoproject.org>; Tue, 24 May 2011 20:01:31 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 24 May 2011 18:01:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,264,1304319600"; 
   d="scan'208";a="1016731"
Received: from unknown (HELO [10.255.12.133]) ([10.255.12.133])
	by azsmga001.ch.intel.com with ESMTP; 24 May 2011 18:01:29 -0700
Message-ID: <4DDC54E9.1000905@intel.com>
Date: Tue, 24 May 2011 18:01:29 -0700
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110428 Fedora/3.1.10-1.fc13 Thunderbird/3.1.10
MIME-Version: 1.0
To: Jingdong Lu <jingdong.lu@windriver.com>
References: <cover.1306235471.git.jingdong.lu@windriver.com>
	<c6dde065b9fafabeda6904c23118a11e99d23e08.1306235471.git.jingdong.lu@windriver.com>
In-Reply-To: <c6dde065b9fafabeda6904c23118a11e99d23e08.1306235471.git.jingdong.lu@windriver.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] libx11: fix libX11 keysyms to pass xts5 of lsb
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
X-List-Received-Date: Wed, 25 May 2011 01:01:31 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 05/24/2011 04:13 AM, Jingdong Lu wrote:
> From: Jingdong Lu<jingdong.lu@windriver.com>
>
> Fixes bug: [YOCTO #1095]
> Because of cross-compiling libx11 keysyms will cause Xts5 test of LSB fail.
> libx11 use a tool named "makekey" which compiled as a native tool to generate
> ks_tables.h. Because the size of "unsigned long" is different between 32-bit
> and 64-bit, we should judge whether our target is 32-bit or 64-bit and tell
> "makekey".
> I add a patch to "makekeys_crosscompile.patch" to "src/utils/makekeys.c" in
> order to deal with the different targets. If our target is 32-bit, we force
> the variable its type is "unsigned long" to "uint32_t". So we can generate a
> correct keysyms.
>
> Signed-off-by: Jingdong Lu<jingdong.lu@windriver.com>
> ---
>   .../libx11-1.3.4/makekeys_crosscompile.patch       |   37 ++++++++++++++++++++
>   .../recipes-graphics/xorg-lib/libx11-trim_1.3.4.bb |    5 ++-
>   meta/recipes-graphics/xorg-lib/libx11.inc          |    8 ++++-
>   meta/recipes-graphics/xorg-lib/libx11_1.3.4.bb     |    5 ++-
>   4 files changed, 50 insertions(+), 5 deletions(-)
>   create mode 100644 meta/recipes-graphics/xorg-lib/libx11-1.3.4/makekeys_crosscompile.patch
>
> diff --git a/meta/recipes-graphics/xorg-lib/libx11-1.3.4/makekeys_crosscompile.patch b/meta/recipes-graphics/xorg-lib/libx11-1.3.4/makekeys_crosscompile.patch
> new file mode 100644
> index 0000000..88d66bf
> --- /dev/null
> +++ b/meta/recipes-graphics/xorg-lib/libx11-1.3.4/makekeys_crosscompile.patch

This patch needs an explanation and Signed-off-by, and this probably 
should be also marked at Upstream-Status: Pending, this looks like a 
good candidate for upstreaming.


> @@ -0,0 +1,37 @@
> +--- libX11-1.3.4.orig/src/util/makekeys.c	2010-01-15 09:11:36.000000000 +0800
> ++++ libX11-1.3.4/src/util/makekeys.c	2011-05-24 19:04:25.454774908 +0800
> +@@ -33,6 +33,7 @@
> + #include<X11/keysymdef.h>
> + #include<stdio.h>
> + #include<stdlib.h>
> ++#include<stdint.h>
> +
> + typedef unsigned long Signature;
> +
> +@@ -124,7 +125,12 @@
> + 	    name = info[i].name;
> + 	    sig = 0;
> + 	    while ((c = *name++))
> +-		sig = (sig<<  1) + c;
> ++#ifdef USE32
> ++		sig = (uint32_t)(sig<<  1) + c;
> ++#else
> ++		sig = (uint64_t)(sig<<  1) + c;
> ++#endif
> ++		
> + 	    first = j = sig % z;
> + 	    for (k = 0; tab[j]; k++) {
> + 		j += first + 1;
> +@@ -163,7 +169,11 @@
> + 	name = info[i].name;
> + 	sig = 0;
> + 	while ((c = *name++))
> +-	    sig = (sig<<  1) + c;
> ++#ifdef USE32
> ++	    sig = (uint32_t)(sig<<  1) + c;
> ++#else
> ++	    sig = (uint64_t)(sig<<  1) + c;
> ++#endif
> + 	first = j = sig % z;
> + 	while (offsets[j]) {
> + 	    j += first + 1;
> diff --git a/meta/recipes-graphics/xorg-lib/libx11-trim_1.3.4.bb b/meta/recipes-graphics/xorg-lib/libx11-trim_1.3.4.bb
> index b013498..1469bc1 100644
> --- a/meta/recipes-graphics/xorg-lib/libx11-trim_1.3.4.bb
> +++ b/meta/recipes-graphics/xorg-lib/libx11-trim_1.3.4.bb
> @@ -5,12 +5,13 @@ DESCRIPTION += " Support for XCB, and XCMS is disabled in this version."
>   LICENSE = "MIT&  MIT-style&  BSD"
>   LIC_FILES_CHKSUM = "file://COPYING;md5=bf75bfe4d05068311b5e6862d4b5f2c5"
>
> -PR = "r0"
> +PR = "r1"
>
>   DEPENDS += "libxcb xproto xextproto xtrans libxau kbproto inputproto xf86bigfontproto xproto-native"
>
>   SRC_URI += "file://../libx11-${PV}/x11_disable_makekeys.patch \
>               file://../libx11-${PV}/include_fix.patch \
> -            file://../libx11-${PV}/nodolt.patch"
> +            file://../libx11-${PV}/nodolt.patch \
> +            file://../libx11-${PV}/makekeys_crosscompile.patch"
>
>   EXTRA_OECONF += "--disable-xcms --with-xcb"
> diff --git a/meta/recipes-graphics/xorg-lib/libx11.inc b/meta/recipes-graphics/xorg-lib/libx11.inc
> index 030b0db..c156ce6 100644
> --- a/meta/recipes-graphics/xorg-lib/libx11.inc
> +++ b/meta/recipes-graphics/xorg-lib/libx11.inc
> @@ -6,6 +6,8 @@ basic functions of the window system."
>
>   require xorg-lib-common.inc
>
> +inherit siteinfo
> +
>   PROVIDES = "virtual/libx11"
>
>   XORG_PN = "libX11"
> @@ -22,7 +24,11 @@ do_compile() {
>   	touch makekeys-makekeys.o
>   	(
>   		unset CC LD CXX CCLD CFLAGS CPPFLAGS LDFLAGS CXXFLAGS
> -		${BUILD_CC} ${BUILD_CFLAGS} -I${STAGING_INCDIR_NATIVE} makekeys.c -o makekeys
> +		if [ "${SITEINFO_BITS}" == "64" ]; then
> +                        ${BUILD_CC} ${BUILD_CFLAGS} -I${STAGING_INCDIR_NATIVE} makekeys.c -o makekeys
> +                else
> +                        ${BUILD_CC} ${BUILD_CFLAGS} -I${STAGING_INCDIR_NATIVE} -DUSE32 makekeys.c -o makekeys
> +                fi
I am not sure of the my answer myself, but is there an existing flag or 
variable that we can use here instead of the if block and pass that 
variable to the patch as an ifdef?

I would have to dig around to check or Richard or someone else might know.

Sau!

>   	)
>   	if [ "$?" != "0" ]; then
>   		exit 1
> diff --git a/meta/recipes-graphics/xorg-lib/libx11_1.3.4.bb b/meta/recipes-graphics/xorg-lib/libx11_1.3.4.bb
> index 08ba07b..3e046a1 100644
> --- a/meta/recipes-graphics/xorg-lib/libx11_1.3.4.bb
> +++ b/meta/recipes-graphics/xorg-lib/libx11_1.3.4.bb
> @@ -5,11 +5,12 @@ LICENSE = "MIT&  MIT-style&  BSD"
>   LIC_FILES_CHKSUM = "file://COPYING;md5=bf75bfe4d05068311b5e6862d4b5f2c5"
>
>   PE = "1"
> -PR = "r0"
> +PR = "r1"
>
>   SRC_URI += "file://x11_disable_makekeys.patch \
>               file://nodolt.patch \
> -            file://include_fix.patch"
> +            file://include_fix.patch \
> +	    file://makekeys_crosscompile.patch"
>
>   SRC_URI[md5sum] = "f65c9c7ecbfb64c19dbd7927160d63fd"
>   SRC_URI[sha256sum] = "88d7238ce5f7cd123450567de7a3b56a43556e4ccc45df38b8324147c889a844"


