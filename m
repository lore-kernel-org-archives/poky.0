Return-Path: <edwin.zhai@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 498F24C80050
	for <poky@yoctoproject.org>; Mon, 31 Jan 2011 09:02:56 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 31 Jan 2011 07:02:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,404,1291622400"; d="scan'208";a="702389200"
Received: from shxpwgzhai1a.ccr.corp.intel.com (HELO [10.239.48.130])
	([10.239.48.130])
	by orsmga001.jf.intel.com with ESMTP; 31 Jan 2011 07:02:17 -0800
Message-ID: <4D46CEF9.7000808@intel.com>
Date: Mon, 31 Jan 2011 23:02:17 +0800
From: "Zhai, Edwin" <edwin.zhai@intel.com>
User-Agent: Thunderbird 2.0.0.17 (Windows/20080914)
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <cover.1296485859.git.edwin.zhai@intel.com>
	<d4ed42c98ddae97ccf3fa42843d7a1ecfbab799c.1296485859.git.edwin.zhai@intel.com>
In-Reply-To: <d4ed42c98ddae97ccf3fa42843d7a1ecfbab799c.1296485859.git.edwin.zhai@intel.com>
Cc: "Purdie, Richard" <richard.purdie@intel.com>
Subject: Re: [PATCH 5/6] gdk-pixbuf: Fix the native png load error and	remove duplicated recipe
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
X-List-Received-Date: Mon, 31 Jan 2011 15:02:56 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Koen,
I merged gdk-pixbuf & gdk-pixbuf-native, but do_split_packages make 
gdk-pixbuf-native also provide gdk-pixbuf-loader-xxx then cause multiple 
providers. Any way to comment it in gdk-pixbuf-native?

RP,
I saw your patch to resolve the multiple providers from gdk-pixbuf and 
gtk+, and just was curious why not just remove old gtk+ recipes given no 
others depend on them. Any other concerns?

Thanks,
edwin

===========================================================================================================
NOTE: multiple providers are available for runtime gdk-pixbuf-loader-png 
(gdk-pixbuf, gdk-pixbuf-native)
NOTE: consider defining a PREFERRED_PROVIDER entry to match 
gdk-pixbuf-loader-png
NOTE: multiple providers are available for runtime 
gdk-pixbuf-loader-jpeg (gdk-pixbuf, gdk-pixbuf-native)
NOTE: consider defining a PREFERRED_PROVIDER entry to match 
gdk-pixbuf-loader-jpeg
NOTE: multiple providers are available for runtime gdk-pixbuf-loader-gif 
(gdk-pixbuf, gdk-pixbuf-native)
NOTE: consider defining a PREFERRED_PROVIDER entry to match 
gdk-pixbuf-loader-gif
NOTE: multiple providers are available for runtime gdk-pixbuf-loader-xpm 
(gdk-pixbuf, gdk-pixbuf-native)
NOTE: consider defining a PREFERRED_PROVIDER entry to match 
gdk-pixbuf-loader-xpm


poky-bounces@yoctoproject.org wrote:
>
> From: Zhai Edwin <edwin.zhai@intel.com>
>
> Native gdk-pixbuf-csource failed to load png file as the 
> "loaders.cache" was
> not properly set by gdk-pxibuf-query-loaders when install. This patch 
> use the
> wrapper script rather than query-loaders binary as required libtool 
> library was
> not installed when do_install_append.
>
> Also remove dedicated recipe for gdk-pixbuf-native.
>
>
> Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
> ---
>  .../gdk-pixbuf/gdk-pixbuf-native_2.22.1.bb         |   13 -------
>  meta/recipes-gnome/gdk-pixbuf/gdk-pixbuf.inc       |   30 
> ----------------
>  meta/recipes-gnome/gdk-pixbuf/gdk-pixbuf_2.22.1.bb |   36 
> +++++++++++++++++++-
>  3 files changed, 35 insertions(+), 44 deletions(-)
>  delete mode 100644 
> meta/recipes-gnome/gdk-pixbuf/gdk-pixbuf-native_2.22.1.bb
>  delete mode 100644 meta/recipes-gnome/gdk-pixbuf/gdk-pixbuf.inc
>
> diff --git a/meta/recipes-gnome/gdk-pixbuf/gdk-pixbuf-native_2.22.1.bb 
> b/meta/recipes-gnome/gdk-pixbuf/gdk-pixbuf-native_2.22.1.bb
>
> deleted file mode 100644
> index 5fabf45..0000000
> --- a/meta/recipes-gnome/gdk-pixbuf/gdk-pixbuf-native_2.22.1.bb
> +++ /dev/null
> @@ -1,13 +0,0 @@
> -require gdk-pixbuf.inc
> -inherit native
> -
> -DEPENDS = "libpng-native gettext-native glib-2.0-native jpeg-native"
> -PR = "r0"
> -
> -PACKAGES_DYNAMIC = ""
> -
> -do_install_append() {
> -       
> GDK_PIXBUF_MODULEDIR=${D}${libdir}/gdk-pixbuf-2.0/2.10.0/loaders 
> ${D}${bindir}/gdk-pixbuf-query-loaders > 
> ${D}${libdir}/gdk-pixbuf-2.0/2.10.0/loaders.cache
>
> -       sed -i -e 's#${D}##g' 
> ${D}${libdir}/gdk-pixbuf-2.0/2.10.0/loaders.cache
> -       find ${D}${libdir} -name "libpixbufloader-*.la" -exec rm \{\} \;
> -}
> diff --git a/meta/recipes-gnome/gdk-pixbuf/gdk-pixbuf.inc 
> b/meta/recipes-gnome/gdk-pixbuf/gdk-pixbuf.inc
> deleted file mode 100644
> index af3383e..0000000
> --- a/meta/recipes-gnome/gdk-pixbuf/gdk-pixbuf.inc
> +++ /dev/null
> @@ -1,30 +0,0 @@
> -DESCRIPTION = "Image loading library for GTK+"
> -HOMEPAGE = "http://www.gtk.org/"
> -BUGTRACKER = "https://bugzilla.gnome.org/"
> -
> -LICENSE = "LGPLv2"
> -LIC_FILES_CHKSUM = 
> "file://COPYING;md5=3bf50002aefd002f49e7bb854063f7e7 \
> -                    
> file://gdk-pixbuf/gdk-pixbuf.h;endline=26;md5=5066b71daefeff678494fffa3040aba9" 
>
> -
> -SECTION = "libs"
> -PRIORITY = "optional"
> -
> -DEPENDS = "libpng gettext glib-2.0"
> -
> -SRC_URI = 
> "http://ftp.acc.umu.se/pub/GNOME/sources/gdk-pixbuf/2.22/gdk-pixbuf-${PV}.tar.gz 
> \
> -           file://hardcoded_libtool.patch;patch=1 \
> -           file://configure_fix.patch;patch=1 \
> -           "
> -
> -SRC_URI[md5sum] = "fcfc854e9aec7dbb2bb3059484d44556"
> -SRC_URI[sha256sum] = 
> "bbb57364ffba70d64f5fcfe6eda1d67249b3d58844edb06dc0f94d1ad599b4ec"
> -
> -inherit autotools pkgconfig
> -
> -LIBV = "2.10.0"
> -
> -EXTRA_OECONF = "\
> -  --without-libtiff \
> -  --with-libpng \
> -"
> -
> diff --git a/meta/recipes-gnome/gdk-pixbuf/gdk-pixbuf_2.22.1.bb 
> b/meta/recipes-gnome/gdk-pixbuf/gdk-pixbuf_2.22.1.bb
> index ae57507..6a40a52 100644
> --- a/meta/recipes-gnome/gdk-pixbuf/gdk-pixbuf_2.22.1.bb
> +++ b/meta/recipes-gnome/gdk-pixbuf/gdk-pixbuf_2.22.1.bb
> @@ -1,7 +1,34 @@
> -require gdk-pixbuf.inc
> +DESCRIPTION = "Image loading library for GTK+"
> +HOMEPAGE = "http://www.gtk.org/"
> +BUGTRACKER = "https://bugzilla.gnome.org/"
>  
> +LICENSE = "LGPLv2"
> +LIC_FILES_CHKSUM = 
> "file://COPYING;md5=3bf50002aefd002f49e7bb854063f7e7 \
> +                    
> file://gdk-pixbuf/gdk-pixbuf.h;endline=26;md5=5066b71daefeff678494fffa3040aba9" 
>
> +
> +SECTION = "libs"
> +PRIORITY = "optional"
> +
> +DEPENDS = "libpng gettext glib-2.0 jpeg"
>  PR = "r0"
>  
> +SRC_URI = 
> "http://ftp.acc.umu.se/pub/GNOME/sources/gdk-pixbuf/2.22/gdk-pixbuf-${PV}.tar.gz 
> \
> +           file://hardcoded_libtool.patch;patch=1 \
> +           file://configure_fix.patch;patch=1 \
> +           "
> +
> +SRC_URI[md5sum] = "fcfc854e9aec7dbb2bb3059484d44556"
> +SRC_URI[sha256sum] = 
> "bbb57364ffba70d64f5fcfe6eda1d67249b3d58844edb06dc0f94d1ad599b4ec"
> +
> +inherit autotools pkgconfig
> +
> +LIBV = "2.10.0"
> +
> +EXTRA_OECONF = "\
> +  --without-libtiff \
> +  --with-libpng \
> +"
> +
>  FILES_${PN} = "${bindir}/gdk-pixbuf-query-loaders \
>         ${libdir}/lib*.so.*"
>  
> @@ -33,3 +60,10 @@ python populate_packages_prepend () {
>         do_split_packages(d, loaders_root, 
> '^libpixbufloader-(.*)\.so$', 'gdk-pixbuf-loader-%s', 'GDK pixbuf 
> loader for %s', postinst_pixbufloader)
>
>  }
>  
> +do_install_append_virtclass-native() {
> +#Use wrapper script rather than binary as required libtool library is 
> not installed now
> +       
> GDK_PIXBUF_MODULEDIR=${D}${libdir}/gdk-pixbuf-2.0/2.10.0/loaders 
> ${S}/gdk-pixbuf/gdk-pixbuf-query-loaders > 
> ${D}${libdir}/gdk-pixbuf-2.0/2.10.0/loaders.cache
>
> +       sed -i -e 's#${D}##g' 
> ${D}${libdir}/gdk-pixbuf-2.0/2.10.0/loaders.cache
> +       find ${D}${libdir} -name "libpixbufloader-*.la" -exec rm \{\} \;
> +}
> +BBCLASSEXTEND = "native"
> -- 
> 1.7.0.4
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

