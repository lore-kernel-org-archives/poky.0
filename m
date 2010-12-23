Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9A43C4C81110
	for <poky@yoctoproject.org>; Thu, 23 Dec 2010 08:09:19 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBNEAflF015050; Thu, 23 Dec 2010 14:10:42 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id r1fPGcJZh4WZ; Thu, 23 Dec 2010 14:10:41 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBNEAX9e015035
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Thu, 23 Dec 2010 14:10:35 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <1293111933-5071-1-git-send-email-koen@openembedded.org>
References: <1293050270.3578.172.camel@rex>
	<1293111933-5071-1-git-send-email-koen@openembedded.org>
Date: Thu, 23 Dec 2010 14:09:00 +0000
Message-ID: <1293113340.1588.860.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky@yoctoproject.org
Subject: Re: [RFC][PATCH] RDEPENDS, RRECOMMENDS -> RDPEPENDS_${PN}, RRECOMMENDS_${PN}
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
X-List-Received-Date: Thu, 23 Dec 2010 14:09:20 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2010-12-23 at 14:45 +0100, Koen Kooi wrote:
> From: Koen Kooi <koen@dominion.thruhere.net>
> 
> For these recipes the depencies listed in RDEPENDS and RRECOMMENDS only apply to ${PN}

Patch looks good overall. I spotted a few things as I read through it:

> diff --git a/meta-demoapps/recipes-connectivity/openswan/openswan_2.4.7.bb b/meta-demoapps/recipes-connectivity/openswan/openswan_2.4.7.bb
> index 022f709..2283336 100644
> --- a/meta-demoapps/recipes-connectivity/openswan/openswan_2.4.7.bb
> +++ b/meta-demoapps/recipes-connectivity/openswan/openswan_2.4.7.bb
> @@ -5,9 +5,9 @@ Linux operating system."
>  HOMEPAGE = "http://www.openswan.org"
>  LICENSE = "GPLv2"
>  DEPENDS = "gmp flex-native"
> -RRECOMMENDS = "kernel-module-ipsec"
> +RRECOMMENDS_${PN} = "kernel-module-ipsec"
>  RDEPENDS_nylon = "perl"

This should probably become:

RDEPENDS_${PN}_append_nylon = "perl"

> diff --git a/meta-demoapps/recipes-gnome/abiword/abiword_2.5.2.bb b/meta-demoapps/recipes-gnome/abiword/abiword_2.5.2.bb
> index 566d0fa..b879064 100644
> --- a/meta-demoapps/recipes-gnome/abiword/abiword_2.5.2.bb
> +++ b/meta-demoapps/recipes-gnome/abiword/abiword_2.5.2.bb
> @@ -1,5 +1,5 @@
>  require abiword-2.5.inc
>  
> -PR = "r1"
> +PR = "r2"
>  
>  RCONFLICTS = "abiword-embedded"

RCONFLICTS_${PN} = "abiword-embedded"

> diff --git a/meta/recipes-connectivity/avahi/avahi.inc b/meta/recipes-connectivity/avahi/avahi.inc
> index b266ea4..5c3b4dd 100644
> --- a/meta/recipes-connectivity/avahi/avahi.inc
> +++ b/meta/recipes-connectivity/avahi/avahi.inc
> @@ -16,7 +16,7 @@ PRIORITY = "optional"
>  LICENSE = "GPLv2+ & LGPLv2.1+"
>  
>  DEPENDS = "expat libcap libdaemon dbus glib-2.0 gtk+ libglade"
> -RRECOMMENDS = "libnss-mdns"
> +RRECOMMENDS_${PN} = "libnss-mdns"
>  RRECOMMENDS_avahi-daemon = "libnss-mdns"

Hmm, which bit of avahi needs this? This looks a little odd...

 
> diff --git a/meta/recipes-connectivity/gsm/gsmd.inc b/meta/recipes-connectivity/gsm/gsmd.inc
> index 9818188..385c40e 100644
> --- a/meta/recipes-connectivity/gsm/gsmd.inc
> +++ b/meta/recipes-connectivity/gsm/gsmd.inc
> @@ -19,7 +19,7 @@ SRC_URI = "svn://svn.openmoko.org/trunk/src/target;module=gsm;proto=http \
>  S = "${WORKDIR}/gsm"
>  
>  inherit autotools pkgconfig update-rc.d
> -# handle update-rc.d RDEPENDS manually, we don't need it on
> +# handle update-rc.d RDEPENDS_${PN} manually, we don't need it on
>  # anything but gsmd
>  RDEPENDS_append = ""

This looks like some kind of bug waiting to be fixed...

 
> diff --git a/meta/recipes-core/glibc/glibc.inc b/meta/recipes-core/glibc/glibc.inc
> index ecaf593..e2b681f 100644
> --- a/meta/recipes-core/glibc/glibc.inc
> +++ b/meta/recipes-core/glibc/glibc.inc
> @@ -13,7 +13,7 @@ DEPENDS = "virtual/${TARGET_PREFIX}gcc-intermediate linux-libc-headers"
>  RDEPENDS_${PN}-dev = "linux-libc-headers-dev"
>  #this leads to circular deps, so lets not add it yet
>  #RDEPENDS_ldd += " bash"
> -#RDEPENDS += "${@['','libgcc']['nptl' in '${GLIBC_ADDONS}']}"
> +#RDEPENDS_${PN} += "${@['','libgcc']['nptl' in '${GLIBC_ADDONS}']}"
>  PROVIDES = "virtual/libc virtual/${TARGET_PREFIX}libc-for-gcc"
>  PROVIDES += "virtual/libintl virtual/libiconv"
>  
> diff --git a/meta/recipes-core/glibc/glibc_2.10.1.bb b/meta/recipes-core/glibc/glibc_2.10.1.bb
> index 364a0e5..6c683ec 100644
> --- a/meta/recipes-core/glibc/glibc_2.10.1.bb
> +++ b/meta/recipes-core/glibc/glibc_2.10.1.bb
> @@ -5,7 +5,7 @@ ARM_INSTRUCTION_SET = "arm"
>  PACKAGES_DYNAMIC = "libc6*"
>  RPROVIDES_${PN}-dev = "libc6-dev virtual-libc-dev"
>  
> -PR = "r6"
> +PR = "r7"
>  
>  # the -isystem in bitbake.conf screws up glibc do_stage
>  BUILD_CPPFLAGS = "-I${STAGING_INCDIR_NATIVE}"

Lets drop the PR bump for a change in the comments :)

> diff --git a/meta/recipes-core/meta/external-python-tarball.bb b/meta/recipes-core/meta/external-python-tarball.bb
> index 494b21c..464c457 100644
> --- a/meta/recipes-core/meta/external-python-tarball.bb
> +++ b/meta/recipes-core/meta/external-python-tarball.bb
> @@ -4,6 +4,8 @@ DEPENDS = "opkg-native opkg-utils-native virtual/fakeroot-native sed-native"
>  
>  inherit meta
>  
> +PR = "r1"
> +
>  SDK_DIR = "${WORKDIR}/sdk"
>  SDK_OUTPUT = "${SDK_DIR}/image"
>  SDK_DEPLOY = "${TMPDIR}/deploy/sdk"
> @@ -33,7 +35,7 @@ TOOLCHAIN_HOST_TASK ?= "\
>  
>  TOOLCHAIN_OUTPUTNAME ?= "python-nativesdk-standalone-${SDKMACHINE}"
>  
> -RDEPENDS = "${TOOLCHAIN_HOST_TASK}"
> +RDEPENDS_${PN} = "${TOOLCHAIN_HOST_TASK}"
>  
>  EXCLUDE_FROM_WORLD = "1"

Since PACKAGES = "" in this case, I think the RDEPENDS here is valid.

> diff --git a/meta/recipes-core/meta/meta-toolchain.bb b/meta/recipes-core/meta/meta-toolchain.bb
> index 40f8d7e..5eb2ae3 100644
> --- a/meta/recipes-core/meta/meta-toolchain.bb
> +++ b/meta/recipes-core/meta/meta-toolchain.bb
> @@ -17,7 +17,7 @@ TOOLCHAIN_HOST_TASK ?= "task-sdk-host task-cross-canadian-${TRANSLATED_TARGET_AR
>  TOOLCHAIN_TARGET_TASK ?= "task-poky-standalone-sdk-target task-poky-standalone-sdk-target-dbg"
>  TOOLCHAIN_OUTPUTNAME ?= "${SDK_NAME}-toolchain-${DISTRO_VERSION}"
>  
> -RDEPENDS = "${TOOLCHAIN_TARGET_TASK} ${TOOLCHAIN_HOST_TASK}"
> +RDEPENDS_${PN} = "${TOOLCHAIN_TARGET_TASK} ${TOOLCHAIN_HOST_TASK}"
>  
>  EXCLUDE_FROM_WORLD = "1"

and here.

 
> diff --git a/meta/recipes-core/tasks/task-base.bb b/meta/recipes-core/tasks/task-base.bb
> index d613bb2..4f8c8d8 100644
> --- a/meta/recipes-core/tasks/task-base.bb
> +++ b/meta/recipes-core/tasks/task-base.bb
> @@ -2,7 +2,7 @@ DESCRIPTION = "Merge machine and distro options to create a basic machine task/p
>  LICENSE = "MIT"
>  LIC_FILES_CHKSUM = "file://${POKYBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58 \
>                      file://${POKYBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
> -PR = "r69"
> +PR = "r70"
>  
>  inherit task
>  
> @@ -72,8 +72,8 @@ PCMCIA_MANAGER ?= "${@base_contains('MACHINE_FEATURES', 'kernel26','pcmciautils'
>  #
>  # those ones can be set in machine config to supply packages needed to get machine booting
>  #
> -MACHINE_ESSENTIAL_EXTRA_RDEPENDS ?= ""
> -MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS ?= ""
> +MACHINE_ESSENTIAL_EXTRA_RDEPENDS_${PN} ?= ""
> +MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS_${PN} ?= ""

This isn't necessary...

>  #
>  # task-base contain stuff needed for base system (machine related)
> diff --git a/meta/recipes-core/tasks/task-poky-boot.bb b/meta/recipes-core/tasks/task-poky-boot.bb
> index e9c8e8a..3f8bc59 100644
> --- a/meta/recipes-core/tasks/task-poky-boot.bb
> +++ b/meta/recipes-core/tasks/task-poky-boot.bb
> @@ -9,13 +9,13 @@ LIC_FILES_CHKSUM = "file://${POKYBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3
>  PACKAGE_ARCH = "${MACHINE_ARCH}"
>  DEPENDS = "virtual/kernel"
>  ALLOW_EMPTY = "1"
> -PR = "r7"
> +PR = "r8"
>  
>  #
>  # Set by the machine configuration with packages essential for device bootup
>  #
> -MACHINE_ESSENTIAL_EXTRA_RDEPENDS ?= ""
> -MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS ?= ""
> +MACHINE_ESSENTIAL_EXTRA_RDEPENDS_${PN} ?= ""
> +MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS_${PN} ?= ""
>  
>  RDEPENDS_task-poky-boot = "\
>      base-files \

likewise

> diff --git a/meta/recipes-devtools/e2fsprogs/e2fsprogs_1.41.12.bb b/meta/recipes-devtools/e2fsprogs/e2fsprogs_1.41.12.bb
> index 3f9195a..ffe6dce 100644
> --- a/meta/recipes-devtools/e2fsprogs/e2fsprogs_1.41.12.bb
> +++ b/meta/recipes-devtools/e2fsprogs/e2fsprogs_1.41.12.bb
> @@ -1,6 +1,6 @@
>  require e2fsprogs.inc
>  
> -PR = "r19"
> +PR = "r20"
>  
>  SRC_URI += "file://quotefix.patch;patch=1 \
>              file://acinclude.m4"
> @@ -34,7 +34,7 @@ do_install () {
>  }
>  
>  # blkid used to be part of e2fsprogs but is useful outside, add it
> -# as an RDEPENDS so that anything relying on it being in e2fsprogs
> +# as an RDEPENDS_${PN} so that anything relying on it being in e2fsprogs
>  # still works
>  RDEPENDS_e2fsprogs = "e2fsprogs-blkid e2fsprogs-badblocks"

no PR bump needed.

 
> diff --git a/meta/recipes-devtools/opkg-utils/opkg-utils_svn.bb b/meta/recipes-devtools/opkg-utils/opkg-utils_svn.bb
> index 087d254..2c19b39 100644
> --- a/meta/recipes-devtools/opkg-utils/opkg-utils_svn.bb
> +++ b/meta/recipes-devtools/opkg-utils/opkg-utils_svn.bb
> @@ -5,10 +5,10 @@ PRIORITY = "optional"
>  LICENSE = "GPLv2+"
>  LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f \
>                      file://opkg.py;beginline=1;endline=18;md5=15917491ad6bf7acc666ca5f7cc1e083"
> -RDEPENDS = "python"
> +RDEPENDS_${PN} = "python"
>  RDEPENDS_virtclass-native = ""

Need to change this to:

RDEPENDS_${PN}_virtclass-native = ""

> diff --git a/meta/recipes-devtools/unfs-server/unfs-server_2.2beta47.bb b/meta/recipes-devtools/unfs-server/unfs-server_2.2beta47.bb
> index 89313d6..50ba339 100644
> --- a/meta/recipes-devtools/unfs-server/unfs-server_2.2beta47.bb
> +++ b/meta/recipes-devtools/unfs-server/unfs-server_2.2beta47.bb
> @@ -3,10 +3,10 @@ SECTION = "console/network"
>  LICENSE = "GPLv2+"
>  LIC_FILES_CHKSUM = "file://COPYING;md5=8ca43cbc842c2336e835926c2166c28b"
>  
> -RDEPENDS = "pseudo"
> +RDEPENDS_${PN} = "pseudo"
>  RDEPENDS_virtclass-native = "pseudo-native"
>  RDEPENDS_virtclass-nativesdk = "pseudo-nativesdk"

Need to add ${PN} to the virtclass versions.

> diff --git a/meta/recipes-devtools/update-alternatives/update-alternatives-dpkg_1.13.22.bb b/meta/recipes-devtools/update-alternatives/update-alternatives-dpkg_1.13.22.bb
> index 5d38d5d..9943aa8 100644
> --- a/meta/recipes-devtools/update-alternatives/update-alternatives-dpkg_1.13.22.bb
> +++ b/meta/recipes-devtools/update-alternatives/update-alternatives-dpkg_1.13.22.bb
> @@ -1,7 +1,9 @@
>  require update-alternatives-dpkg.inc
>  
> +PR = "r1"
> +
>  PROVIDES += "virtual/update-alternatives"
>  RPROVIDES_${PN} += "update-alternatives"
> -EXTRA_RDEPENDS = "perl dpkg"
> +EXTRA_RDEPENDS_${PN} = "perl dpkg"
>  EXTRA_RDEPENDS_virtclass-native = ""
>  RDEPENDS_${PN} += "${EXTRA_RDEPENDS}"

No change needed here :)

> diff --git a/meta/recipes-gnome/gtk+/gtk+.inc b/meta/recipes-gnome/gtk+/gtk+.inc
> index c34283e..ac7795e 100644
> --- a/meta/recipes-gnome/gtk+/gtk+.inc
> +++ b/meta/recipes-gnome/gtk+/gtk+.inc
> @@ -35,7 +35,7 @@ FILES_${PN}-dbg += " \
>  	${libdir}/gtk-2.0/${LIBV}/engines/.debug/* \
>  	${libdir}/gtk-2.0/${LIBV}/printbackends/.debug/*"
>  
> -BASE_RRECOMMENDS = "ttf-dejavu-sans"
> +BASE_RRECOMMENDS_${PN} = "ttf-dejavu-sans"
>  BASE_RRECOMMENDS_angstrom = "ttf-dejavu-sans gdk-pixbuf-loader-png gdk-pixbuf-loader-jpeg gdk-pixbuf-loader-gif gdk-pixbuf-loader-xpm"
>  BASE_RRECOMMENDS_poky = "gdk-pixbuf-loader-png gdk-pixbuf-loader-jpeg gdk-pixbuf-loader-gif gdk-pixbuf-loader-xpm shared-mime-info"
>  BASE_RRECOMMENDS_moblin = "gdk-pixbuf-loader-png gdk-pixbuf-loader-jpeg gdk-pixbuf-loader-gif gdk-pixbuf-loader-xpm shared-mime-info"

Need to add ${PN} into these. We should really consider changing the
default here...

> diff --git a/meta/recipes-graphics/xorg-font/font-alias_1.0.3.bb b/meta/recipes-graphics/xorg-font/font-alias_1.0.3.bb
> index f3b3716..7a2ddb6 100644
> --- a/meta/recipes-graphics/xorg-font/font-alias_1.0.3.bb
> +++ b/meta/recipes-graphics/xorg-font/font-alias_1.0.3.bb
> @@ -10,11 +10,11 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=bf0158b89be493d523d69d9f29265038 \
>                      file://100dpi/fonts.alias;md5=85bebd6ca213aa656c301a72eb4397cb"
>  
>  DEPENDS = "virtual/xserver font-util"
> -RDEPENDS = "encodings font-util"
> +RDEPENDS_${PN} = "encodings font-util"
>  RDEPENDS_virtclass-native = "font-util"

another virtclass to add ${PN} into.

 
>  PE = "1"
> -PR = "${INC_PR}.0"
> +PR = "${INC_PR}.1"
>  
>  SRC_URI[md5sum] = "6d25f64796fef34b53b439c2e9efa562"
>  SRC_URI[sha256sum] = "8b453b2aae1cfa8090009ca037037b8c5e333550651d5a158b7264ce1d472c9a"
> diff --git a/meta/recipes-graphics/xorg-font/font-util_1.2.0.bb b/meta/recipes-graphics/xorg-font/font-util_1.2.0.bb
> index 972e9e3..14ba51a 100644
> --- a/meta/recipes-graphics/xorg-font/font-util_1.2.0.bb
> +++ b/meta/recipes-graphics/xorg-font/font-util_1.2.0.bb
> @@ -12,10 +12,10 @@ PACKAGE_ARCH = "${BASE_PACKAGE_ARCH}"
>  
>  DEPENDS = "encodings util-macros"
>  DEPENDS_virtclass-native = "util-macros-native"
> -RDEPENDS = "mkfontdir mkfontscale encodings"
> +RDEPENDS_${PN} = "mkfontdir mkfontscale encodings"
>  RDEPENDS_virtclass-native = "mkfontdir-native mkfontscale-native"

and here

Cheers,

Richard



