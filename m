Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id A83794C81065
	for <poky@yoctoproject.org>; Wed, 19 Jan 2011 08:49:14 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0JEp2RO030980; Wed, 19 Jan 2011 14:51:02 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id vALbbg+bUQfP; Wed, 19 Jan 2011 14:51:02 +0000 (GMT)
Received: from [192.168.1.45] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0JEowJO030974
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Wed, 19 Jan 2011 14:51:00 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Scott Garman <scott.a.garman@intel.com>
In-Reply-To: <9353d0517633d5580387f4cee0c24cf17b6b826f.1295410231.git.scott.a.garman@intel.com>
References: <cover.1295410231.git.scott.a.garman@intel.com>
	<9353d0517633d5580387f4cee0c24cf17b6b826f.1295410231.git.scott.a.garman@intel.com>
Date: Wed, 19 Jan 2011 14:48:58 +0000
Message-ID: <1295448538.14388.22027.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/9] libtool: changes to enable sysroot support
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
X-List-Received-Date: Wed, 19 Jan 2011 14:49:16 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-01-18 at 20:19 -0800, Scott Garman wrote:
> * Added OE patches by Khem Raj which enable sysroot support
>   and rename the command line option --with-sysroot to
>   --with-libtool-sysroot to avoid conflicts with binutils and
>   gcc
> * Stage the -cross and -native libtool in the same relative path
>   so it can be accessed equally well from recipes using
>   BBCLASSEXTEND = "native"
> * Removed obsolete cross_compile.patch
> * Reorganized common things to libtool.inc
> * Changed SRC_URI_append to SRC_URI +=
> * PR bump for all recipes

I'm afraid this patch has too many changes rolled into one. Not all of
these changes are sysroot related.


> diff --git a/meta/recipes-devtools/libtool/libtool-cross_2.4.bb b/meta/recipes-devtools/libtool/libtool-cross_2.4.bb
> index 6ea96a5..91ab64b 100644
> --- a/meta/recipes-devtools/libtool/libtool-cross_2.4.bb
> +++ b/meta/recipes-devtools/libtool/libtool-cross_2.4.bb
> @@ -1,9 +1,10 @@
> -require libtool_${PV}.bb
> +require libtool.inc
>  
> -PR = "r0"
> -PACKAGES = ""
> -SRC_URI_append = " file://cross_compile.patch \
> -		   file://prefix.patch "
> +PR = "r1"
> +SRC_URI += "file://prefix.patch"
> +
> +SRC_URI[md5sum] = "b32b04148ecdd7344abc6fe8bd1bb021"
> +SRC_URI[sha256sum] = "13df57ab63a94e196c5d6e95d64e53262834fe780d5e82c28f177f9f71ddf62e"
>  
>  DEPENDS += "libtool-native"
>  
> @@ -18,10 +19,11 @@ do_install () {
>  	install -d ${D}${bindir}/
>  	install -m 0755 ${HOST_SYS}-libtool ${D}${bindir}/${HOST_SYS}-libtool
>  	install -d ${D}${datadir}/libtool/
> +	install -d ${D}${datadir}/libtool/config
>  	install -d ${D}${datadir}/aclocal/
> -	install -c ${S}/libltdl/config/config.guess ${D}${datadir}/libtool/
> -	install -c ${S}/libltdl/config/config.sub ${D}${datadir}/libtool/
> -	install -c -m 0644 ${S}/libltdl/config/ltmain.sh ${D}${datadir}/libtool/
> +	install -c ${S}/libltdl/config/config.guess ${D}${datadir}/libtool/config/
> +	install -c ${S}/libltdl/config/config.sub ${D}${datadir}/libtool/config/
> +	install -c -m 0644 ${S}/libltdl/config/ltmain.sh ${D}${datadir}/libtool/config/
>  	install -c -m 0644 ${S}/libltdl/m4/libtool.m4 ${D}${datadir}/aclocal/
>  	install -c -m 0644 ${S}/libltdl/m4/ltdl.m4 ${D}${datadir}/aclocal/
>  }

The PACKAGES = "" is dropped here?

> diff --git a/meta/recipes-devtools/libtool/libtool-native_2.4.bb b/meta/recipes-devtools/libtool/libtool-native_2.4.bb
> index 4ad660b..014c9fa 100644
> --- a/meta/recipes-devtools/libtool/libtool-native_2.4.bb
> +++ b/meta/recipes-devtools/libtool/libtool-native_2.4.bb
> @@ -1,13 +1,17 @@
> -require libtool_${PV}.bb
> +require libtool.inc
>  
>  DEPENDS = ""
>  
> -PR = "r0"
> -SRC_URI_append = " file://cross_compile.patch \
> -		   file://prefix.patch "
> +PR = "r1"
> +SRC_URI += "file://prefix.patch"
> +
> +SRC_URI[md5sum] = "b32b04148ecdd7344abc6fe8bd1bb021"
> +SRC_URI[sha256sum] = "13df57ab63a94e196c5d6e95d64e53262834fe780d5e82c28f177f9f71ddf62e"
>  
>  inherit native
>  
> +EXTRA_OECONF = " --with-libtool-sysroot=${STAGING_DIR_NATIVE}"
> +
>  do_configure_prepend () {
>  	# Remove any existing libtool m4 since old stale versions would break
>  	# any upgrade
> @@ -21,5 +25,3 @@ do_install () {
>  	install -m 0755 ${HOST_SYS}-libtool ${D}${bindir}/${HOST_SYS}-libtool
>  }
>  
> -SRC_URI[md5sum] = "b32b04148ecdd7344abc6fe8bd1bb021"
> -SRC_URI[sha256sum] = "13df57ab63a94e196c5d6e95d64e53262834fe780d5e82c28f177f9f71ddf62e"
> diff --git a/meta/recipes-devtools/libtool/libtool-nativesdk_2.4.bb b/meta/recipes-devtools/libtool/libtool-nativesdk_2.4.bb
> index c9f24a9..d4d075f 100644
> --- a/meta/recipes-devtools/libtool/libtool-nativesdk_2.4.bb
> +++ b/meta/recipes-devtools/libtool/libtool-nativesdk_2.4.bb
> @@ -1,8 +1,12 @@
>  require libtool_${PV}.bb
>  
> -PR = "r0"
> -SRC_URI_append = " file://cross_compile.patch \
> -		   file://prefix.patch "
> +# Let nativesdk recipe not provide PACKAGES provided by libtool.
> +# Otherwise when an image wants say libltdl-dev, it picks up
> +# libtool-nativesdk instead of libtool recipe to provide it.
> +PACKAGES = ""
> +
> +PR = "r1"
> +SRC_URI += "file://prefix.patch"
>  
>  inherit nativesdk

and in particular, this PACKAGES setting sounds totally wrong to me.

Now the trouble is I can't take any of this work without unravelling
these two changes that worry me.

Cheers,

Richard


