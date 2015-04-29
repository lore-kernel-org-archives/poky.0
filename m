Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 588B1E009A5; Tue, 28 Apr 2015 22:43:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A552E00932
	for <poky@yoctoproject.org>; Tue, 28 Apr 2015 22:43:07 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.14.9/8.14.9) with ESMTP id t3T5h6IU010046
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Tue, 28 Apr 2015 22:43:06 -0700 (PDT)
Received: from [128.224.162.200] (128.224.162.200) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.224.2;
	Tue, 28 Apr 2015 22:43:06 -0700
Message-ID: <55406F69.6000800@windriver.com>
Date: Wed, 29 Apr 2015 13:43:05 +0800
From: Robert Yang <liezhi.yang@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
To: <poky@yoctoproject.org>
References: <cover.1427771410.git.liezhi.yang@windriver.com>
	<a1983ae884075e94cecc258a33304a0da5b2cbe5.1427771410.git.liezhi.yang@windriver.com>
In-Reply-To: <a1983ae884075e94cecc258a33304a0da5b2cbe5.1427771410.git.liezhi.yang@windriver.com>
Subject: Re: [PATCH 1/1] maintainers.inc: update MAINTAINERS
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 29 Apr 2015 05:43:10 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 8bit

ping.

// Robert

On 03/31/2015 11:13 AM, Robert Yang wrote:
> Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
> ---
>   meta-yocto/conf/distro/include/maintainers.inc |   58 ++++++++++++------------
>   1 file changed, 29 insertions(+), 29 deletions(-)
>
> diff --git a/meta-yocto/conf/distro/include/maintainers.inc b/meta-yocto/conf/distro/include/maintainers.inc
> index c4e281e..ad1a9d9 100644
> --- a/meta-yocto/conf/distro/include/maintainers.inc
> +++ b/meta-yocto/conf/distro/include/maintainers.inc
> @@ -27,7 +27,7 @@
>   #
>   # Please keep this list in alphabetical order.
>   #
> -RECIPE_MAINTAINER_pn-acl = "Chong Lu <Chong.Lu@windriver.com>"
> +RECIPE_MAINTAINER_pn-acl = "Chen Qi <Qi.Chen@windriver.com>"
>   RECIPE_MAINTAINER_pn-acpid = "Aníbal Limón <anibal.limon@linux.intel.com>"
>   RECIPE_MAINTAINER_pn-adt-installer = "Jessica Zhang <jessica.zhang@intel.com>"
>   RECIPE_MAINTAINER_pn-alsa-lib = "Cristian Iorga <cristian.iorga@intel.com>"
> @@ -41,10 +41,10 @@ RECIPE_MAINTAINER_pn-apr-util = "Hongxu Jia <hongxu.jia@windriver.com>"
>   RECIPE_MAINTAINER_pn-apt = "Aníbal Limón <anibal.limon@linux.intel.com>"
>   RECIPE_MAINTAINER_pn-aspell = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
>   RECIPE_MAINTAINER_pn-atk = "Ross Burton <ross.burton@intel.com>"
> -RECIPE_MAINTAINER_pn-at = "Chong Lu <Chong.Lu@windriver.com>"
> +RECIPE_MAINTAINER_pn-at = "Chen Qi <Qi.Chen@windriver.com>"
>   RECIPE_MAINTAINER_pn-at-spi2-atk = "Ross Burton <ross.burton@intel.com>"
>   RECIPE_MAINTAINER_pn-at-spi2-core = "Ross Burton <ross.burton@intel.com>"
> -RECIPE_MAINTAINER_pn-attr = "Chong Lu <Chong.Lu@windriver.com>"
> +RECIPE_MAINTAINER_pn-attr = "Chen Qi <Qi.Chen@windriver.com>"
>   RECIPE_MAINTAINER_pn-augeas = "Paul Eggleton <paul.eggleton@linux.intel.com>"
>   RECIPE_MAINTAINER_pn-autoconf = "Robert Yang <liezhi.yang@windriver.com>"
>   RECIPE_MAINTAINER_pn-autogen = "Robert Yang <liezhi.yang@windriver.com>"
> @@ -57,11 +57,11 @@ RECIPE_MAINTAINER_pn-base-passwd = "Saul Wold <sgw@linux.intel.com>"
>   RECIPE_MAINTAINER_pn-bash = "Hongxu Jia <hongxu.jia@windriver.com>"
>   RECIPE_MAINTAINER_pn-bc = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
>   RECIPE_MAINTAINER_pn-bdwgc = "Richard Purdie <richard.purdie@linuxfoundation.org>"
> -RECIPE_MAINTAINER_pn-beecrypt = "Chong Lu <Chong.Lu@windriver.com>"
> +RECIPE_MAINTAINER_pn-beecrypt = "Chen Qi <Qi.Chen@windriver.com>"
>   RECIPE_MAINTAINER_pn-bigreqsproto = "Saul Wold <sgw@linux.intel.com>"
>   RECIPE_MAINTAINER_pn-bind = "Kai Kang <kai.kang@windriver.com>"
>   RECIPE_MAINTAINER_pn-binutils = "Robert Yang <liezhi.yang@windriver.com>"
> -RECIPE_MAINTAINER_pn-bison = "Chong Lu <Chong.Lu@windriver.com>"
> +RECIPE_MAINTAINER_pn-bison = "Chen Qi <Qi.Chen@windriver.com>"
>   RECIPE_MAINTAINER_pn-blktool = "Paul Eggleton <paul.eggleton@linux.intel.com>"
>   RECIPE_MAINTAINER_pn-blktrace = "Tom Zanussi <tom.zanussi@intel.com>"
>   RECIPE_MAINTAINER_pn-bluez4 = "Cristian Iorga <cristian.iorga@intel.com>"
> @@ -72,7 +72,7 @@ RECIPE_MAINTAINER_pn-btrfs-tools = "Richard Purdie <richard.purdie@linuxfoundati
>   RECIPE_MAINTAINER_pn-build-appliance-image = "Saul Wold <sgw@linux.intel.com>"
>   RECIPE_MAINTAINER_pn-builder = "Saul Wold <sgw@linux.intel.com>"
>   RECIPE_MAINTAINER_pn-busybox = "Chen Qi <Qi.Chen@windriver.com>"
> -RECIPE_MAINTAINER_pn-byacc = "Chong Lu <Chong.Lu@windriver.com>"
> +RECIPE_MAINTAINER_pn-byacc = "Chen Qi <Qi.Chen@windriver.com>"
>   RECIPE_MAINTAINER_pn-bzip2 = "Chen Qi <Qi.Chen@windriver.com>"
>   RECIPE_MAINTAINER_pn-ca-certificates = "Saul Wold <sgw@linux.intel.com>"
>   RECIPE_MAINTAINER_pn-cairo = "Ross Burton <ross.burton@intel.com>"
> @@ -118,19 +118,19 @@ RECIPE_MAINTAINER_pn-cracklib = "Hongxu Jia <hongxu.jia@windriver.com>"
>   RECIPE_MAINTAINER_pn-createrepo = "Hongxu Jia <hongxu.jia@windriver.com>"
>   RECIPE_MAINTAINER_pn-cronie = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
>   RECIPE_MAINTAINER_pn-cross-localedef-native = "Saul Wold <sgw@linux.intel.com>"
> -RECIPE_MAINTAINER_pn-cups = "Chong Lu <Chong.Lu@windriver.com>"
> +RECIPE_MAINTAINER_pn-cups = "Chen Qi <Qi.Chen@windriver.com>"
>   RECIPE_MAINTAINER_pn-curl = "Chen Qi <Qi.Chen@windriver.com>"
>   RECIPE_MAINTAINER_pn-cwautomacros = "Cristian Iorga <cristian.iorga@intel.com>"
>   RECIPE_MAINTAINER_pn-damageproto = "Ross Burton <ross.burton@intel.com>"
>   RECIPE_MAINTAINER_pn-db = "Cristian Iorga <cristian.iorga@intel.com>"
> -RECIPE_MAINTAINER_pn-dbus = "Chong Lu <Chong.Lu@windriver.com>"
> -RECIPE_MAINTAINER_pn-dbus-glib = "Chong Lu <Chong.Lu@windriver.com>"
> -RECIPE_MAINTAINER_pn-dbus-test = "Chong Lu <Chong.Lu@windriver.com>"
> -RECIPE_MAINTAINER_pn-dbus-wait = "Chong Lu <Chong.Lu@windriver.com>"
> +RECIPE_MAINTAINER_pn-dbus = "Chen Qi <Qi.Chen@windriver.com>"
> +RECIPE_MAINTAINER_pn-dbus-glib = "Chen Qi <Qi.Chen@windriver.com>"
> +RECIPE_MAINTAINER_pn-dbus-test = "Chen Qi <Qi.Chen@windriver.com>"
> +RECIPE_MAINTAINER_pn-dbus-wait = "Chen Qi <Qi.Chen@windriver.com>"
>   RECIPE_MAINTAINER_pn-desktop-file-utils-native = "Saul Wold <sgw@linux.intel.com>"
>   RECIPE_MAINTAINER_pn-dhcp = "Hongxu Jia <hongxu.jia@windriver.com>"
> -RECIPE_MAINTAINER_pn-diffstat = "Chong Lu <Chong.Lu@windriver.com>"
> -RECIPE_MAINTAINER_pn-diffutils = "Chong Lu <Chong.Lu@windriver.com>"
> +RECIPE_MAINTAINER_pn-diffstat = "Chen Qi <Qi.Chen@windriver.com>"
> +RECIPE_MAINTAINER_pn-diffutils = "Chen Qi <Qi.Chen@windriver.com>"
>   RECIPE_MAINTAINER_pn-directfb-examples = "Hongxu Jia <hongxu.jia@windriver.com>"
>   RECIPE_MAINTAINER_pn-directfb = "Hongxu Jia <hongxu.jia@windriver.com>"
>   RECIPE_MAINTAINER_pn-distcc = "Hongxu Jia <hongxu.jia@windriver.com>"
> @@ -164,12 +164,12 @@ RECIPE_MAINTAINER_pn-file = "Robert Yang <liezhi.yang@windriver.com>"
>   RECIPE_MAINTAINER_pn-findutils = "Chen Qi <Qi.Chen@windriver.com>"
>   RECIPE_MAINTAINER_pn-fixesproto = "Ross Burton <ross.burton@intel.com>"
>   RECIPE_MAINTAINER_pn-flac = "Cristian Iorga <cristian.iorga@intel.com>"
> -RECIPE_MAINTAINER_pn-flex = "Chong Lu <Chong.Lu@windriver.com>"
> +RECIPE_MAINTAINER_pn-flex = "Chen Qi <Qi.Chen@windriver.com>"
>   RECIPE_MAINTAINER_pn-font-alias = "Ross Burton <ross.burton@intel.com>"
>   RECIPE_MAINTAINER_pn-fontconfig = "Ross Burton <ross.burton@intel.com>"
>   RECIPE_MAINTAINER_pn-fontsproto = "Ross Burton <ross.burton@intel.com>"
>   RECIPE_MAINTAINER_pn-font-util = "Ross Burton <ross.burton@intel.com>"
> -RECIPE_MAINTAINER_pn-foomatic-filters = "Chong Lu <Chong.Lu@windriver.com>"
> +RECIPE_MAINTAINER_pn-foomatic-filters = "Chen Qi <Qi.Chen@windriver.com>"
>   RECIPE_MAINTAINER_pn-formfactor = "Cristian Iorga <cristian.iorga@intel.com>"
>   RECIPE_MAINTAINER_pn-fotowall = "Paul Eggleton <paul.eggleton@linux.intel.com>"
>   RECIPE_MAINTAINER_pn-freetype = "Ross Burton <ross.burton@intel.com>"
> @@ -237,13 +237,13 @@ RECIPE_MAINTAINER_pn-gtk-theme-torturer = "Ross Burton <ross.burton@intel.com>"
>   RECIPE_MAINTAINER_pn-gtk-update-icon-cache-native = "Ross Burton <ross.burton@intel.com>"
>   RECIPE_MAINTAINER_pn-gtk+ = "Ross Burton <ross.burton@intel.com>"
>   RECIPE_MAINTAINER_pn-gtk+3 = "Ross Burton <ross.burton@intel.com>"
> -RECIPE_MAINTAINER_pn-guile = "Chong Lu <Chong.Lu@windriver.com>"
> +RECIPE_MAINTAINER_pn-guile = "Robert Yang <liezhi.yang@windriver.com>"
>   RECIPE_MAINTAINER_pn-guilt-native = "Bruce Ashfield <bruce.ashfield@windriver.com>"
>   RECIPE_MAINTAINER_pn-gummiboot = "Darren Hart <dvhart@linux.intel.com>"
>   RECIPE_MAINTAINER_pn-gzip = "Chen Qi <Qi.Chen@windriver.com>"
>   RECIPE_MAINTAINER_pn-hal = "Saul Wold <sgw@linux.intel.com>"
>   RECIPE_MAINTAINER_pn-harfbuzz = "Cristian Iorga <cristian.iorga@intel.com>"
> -RECIPE_MAINTAINER_pn-hdparm = "Chong Lu <Chong.Lu@windriver.com>"
> +RECIPE_MAINTAINER_pn-hdparm = "Robert Yang <liezhi.yang@windriver.com>"
>   RECIPE_MAINTAINER_pn-help2man-native = "Hongxu Jia <hongxu.jia@windriver.com>"
>   RECIPE_MAINTAINER_pn-hicolor-icon-theme = "Ross Burton <ross.burton@intel.com>"
>   RECIPE_MAINTAINER_pn-hostap-conf = "Cristian Iorga <cristian.iorga@intel.com>"
> @@ -258,11 +258,11 @@ RECIPE_MAINTAINER_pn-initramfs-live-install-efi = "Saul Wold <sgw@linux.intel.co
>   RECIPE_MAINTAINER_pn-initramfs-live-install = "Saul Wold <sgw@linux.intel.com>"
>   RECIPE_MAINTAINER_pn-initscripts = "Saul Wold <sgw@linux.intel.com>"
>   RECIPE_MAINTAINER_pn-inputproto = "Ross Burton <ross.burton@intel.com>"
> -RECIPE_MAINTAINER_pn-insserv = "Chong Lu <Chong.Lu@windriver.com>"
> +RECIPE_MAINTAINER_pn-insserv = "Robert Yang <liezhi.yang@windriver.com>"
>   RECIPE_MAINTAINER_pn-intltool = "Richard Purdie <richard.purdie@linuxfoundation.org>"
>   RECIPE_MAINTAINER_pn-iproute2 = "Cristian Iorga <cristian.iorga@intel.com>"
>   RECIPE_MAINTAINER_pn-iptables = "Cristian Iorga <cristian.iorga@intel.com>"
> -RECIPE_MAINTAINER_pn-iputils = "Chong Lu <Chong.Lu@windriver.com>"
> +RECIPE_MAINTAINER_pn-iputils = "Robert Yang <liezhi.yang@windriver.com>"
>   RECIPE_MAINTAINER_pn-irda-utils = "Cristian Iorga <cristian.iorga@intel.com>"
>   RECIPE_MAINTAINER_pn-jpeg = "Aníbal Limón <anibal.limon@linux.intel.com>"
>   RECIPE_MAINTAINER_pn-json-glib = "Ross Burton <ross.burton@intel.com>"
> @@ -278,7 +278,7 @@ RECIPE_MAINTAINER_pn-lame = "Saul Wold <sgw@linux.intel.com>"
>   RECIPE_MAINTAINER_pn-latencytop = "Richard Purdie <richard.purdie@linuxfoundation.org>"
>   RECIPE_MAINTAINER_pn-ldconfig-native = "Saul Wold <sgw@linux.intel.com>"
>   RECIPE_MAINTAINER_pn-leafpad = "Ross Burton <ross.burton@intel.com>"
> -RECIPE_MAINTAINER_pn-less = "Chong Lu <Chong.Lu@windriver.com>"
> +RECIPE_MAINTAINER_pn-less = "Robert Yang <liezhi.yang@windriver.com>"
>   RECIPE_MAINTAINER_pn-liba52 = "Cristian Iorga <cristian.iorga@intel.com>"
>   RECIPE_MAINTAINER_pn-libacpi = "Aníbal Limón <anibal.limon@linux.intel.com>"
>   RECIPE_MAINTAINER_pn-libaio = "Saul Wold <sgw@linux.intel.com>"
> @@ -287,8 +287,8 @@ RECIPE_MAINTAINER_pn-libart-lgpl = "Ross Burton <ross.burton@intel.com>"
>   RECIPE_MAINTAINER_pn-libassuan = "Saul Wold <sgw@linux.intel.com>"
>   RECIPE_MAINTAINER_pn-libatomics-ops = "Cristian Iorga <cristian.iorga@intel.com>"
>   RECIPE_MAINTAINER_pn-libav = "Paul Eggleton <paul.eggleton@linux.intel.com>"
> -RECIPE_MAINTAINER_pn-libbsd = "Chong Lu <Chong.Lu@windriver.com>"
> -RECIPE_MAINTAINER_pn-libcap = "Chong Lu <Chong.Lu@windriver.com>"
> +RECIPE_MAINTAINER_pn-libbsd = "Robert Yang <liezhi.yang@windriver.com>"
> +RECIPE_MAINTAINER_pn-libcap = "Robert Yang <liezhi.yang@windriver.com>"
>   RECIPE_MAINTAINER_pn-libcgroup = "Saul Wold <sgw@linux.intel.com>"
>   RECIPE_MAINTAINER_pn-libcheck = "Robert Yang <liezhi.yang@windriver.com>"
>   RECIPE_MAINTAINER_pn-libclass-isa-perl = "Saul Wold <sgw@linux.intel.com>"
> @@ -340,7 +340,7 @@ RECIPE_MAINTAINER_pn-libowl = "Ross Burton <ross.burton@intel.com>"
>   RECIPE_MAINTAINER_pn-libpam = "Randy Witt <randy.e.witt@linux.intel.com>"
>   RECIPE_MAINTAINER_pn-libpcap = "Cristian Iorga <cristian.iorga@intel.com>"
>   RECIPE_MAINTAINER_pn-libpciaccess = "Richard Purdie <richard.purdie@linuxfoundation.org>"
> -RECIPE_MAINTAINER_pn-libpcre = "Chong Lu <Chong.Lu@windriver.com>"
> +RECIPE_MAINTAINER_pn-libpcre = "Robert Yang <liezhi.yang@windriver.com>"
>   RECIPE_MAINTAINER_pn-libpfm4 = "Matthew McClintock <msm@freescale.com>"
>   RECIPE_MAINTAINER_pn-libpng = "Randy Witt <randy.e.witt@linux.intel.com>"
>   RECIPE_MAINTAINER_pn-libpng12 = "Randy Witt <randy.e.witt@linux.intel.com>"
> @@ -366,7 +366,7 @@ RECIPE_MAINTAINER_pn-liburcu = "Saul Wold <sgw@linux.intel.com>"
>   RECIPE_MAINTAINER_pn-liburi-perl = "Kai Kang <kai.kang@windriver.com>"
>   RECIPE_MAINTAINER_pn-libusb1 = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
>   RECIPE_MAINTAINER_pn-libusb-compat = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
> -RECIPE_MAINTAINER_pn-libuser = "Chong Lu <Chong.Lu@windriver.com>"
> +RECIPE_MAINTAINER_pn-libuser = "Robert Yang <liezhi.yang@windriver.com>"
>   RECIPE_MAINTAINER_pn-libvorbis = "Cristian Iorga <cristian.iorga@intel.com>"
>   RECIPE_MAINTAINER_pn-libx11-diet = "Kai Kang <kai.kang@windriver.com>"
>   RECIPE_MAINTAINER_pn-libx11 = "Ross Burton <ross.burton@intel.com>"
> @@ -465,7 +465,7 @@ RECIPE_MAINTAINER_pn-mkelfimage = "Saul Wold <sgw@linux.intel.com>"
>   RECIPE_MAINTAINER_pn-mkfontdir = "Saul Wold <sgw@linux.intel.com>"
>   RECIPE_MAINTAINER_pn-mkfontscale = "Saul Wold <sgw@linux.intel.com>"
>   RECIPE_MAINTAINER_pn-mklibs-native = "Robert Yang <liezhi.yang@windriver.com>"
> -RECIPE_MAINTAINER_pn-mktemp = "Chong Lu <Chong.Lu@windriver.com>"
> +RECIPE_MAINTAINER_pn-mktemp = "Robert Yang <liezhi.yang@windriver.com>"
>   RECIPE_MAINTAINER_pn-mobile-broadband-provider-info = "Saul Wold <sgw@linux.intel.com>"
>   RECIPE_MAINTAINER_pn-modutils-initscripts = "Robert Yang <liezhi.yang@windriver.com>"
>   RECIPE_MAINTAINER_pn-mpeg2dec = "Saul Wold <sgw@linux.intel.com>"
> @@ -485,7 +485,7 @@ RECIPE_MAINTAINER_pn-neon = "Cristian Iorga <cristian.iorga@intel.com>"
>   RECIPE_MAINTAINER_pn-netbase = "Cristian Iorga <cristian.iorga@intel.com>"
>   RECIPE_MAINTAINER_pn-nettle = "Armin Kuster <akuster808@gmail.com>"
>   RECIPE_MAINTAINER_pn-net-tools = "Cristian Iorga <cristian.iorga@intel.com>"
> -RECIPE_MAINTAINER_pn-nfs-export-root = "Chong Lu <Chong.Lu@windriver.com>"
> +RECIPE_MAINTAINER_pn-nfs-export-root = "Robert Yang <liezhi.yang@windriver.com>"
>   RECIPE_MAINTAINER_pn-nfs-utils = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
>   RECIPE_MAINTAINER_pn-npth = "Saul Wold <sgw@linux.intel.com>"
>   RECIPE_MAINTAINER_pn-nspr = "Saul Wold <sgw@linux.intel.com>"
> @@ -598,7 +598,7 @@ RECIPE_MAINTAINER_pn-qt-demo-init = "Paul Eggleton <paul.eggleton@linux.intel.co
>   RECIPE_MAINTAINER_pn-qt-mobility-embedded = "Paul Eggleton <paul.eggleton@linux.intel.com>"
>   RECIPE_MAINTAINER_pn-qt-mobility-x11 = "Paul Eggleton <paul.eggleton@linux.intel.com>"
>   RECIPE_MAINTAINER_pn-quicky = "Paul Eggleton <paul.eggleton@linux.intel.com>"
> -RECIPE_MAINTAINER_pn-quilt = "Chong Lu <Chong.Lu@windriver.com>"
> +RECIPE_MAINTAINER_pn-quilt = "Robert Yang <liezhi.yang@windriver.com>"
>   RECIPE_MAINTAINER_pn-quota = "Cristian Iorga <cristian.iorga@intel.com>"
>   RECIPE_MAINTAINER_pn-randrproto = "Ross Burton <ross.burton@intel.com>"
>   RECIPE_MAINTAINER_pn-readline = "Hongxu Jia <hongxu.jia@windriver.com>"
> @@ -637,7 +637,7 @@ RECIPE_MAINTAINER_pn-sqlite3 = "Aníbal Limón <anibal.limon@linux.intel.com>"
>   RECIPE_MAINTAINER_pn-squashfs-tools = "Robert Yang <liezhi.yang@windriver.com>"
>   RECIPE_MAINTAINER_pn-startup-notification = "Saul Wold <sgw@linux.intel.com>"
>   RECIPE_MAINTAINER_pn-stat = "Chen Qi <Qi.Chen@windriver.com>"
> -RECIPE_MAINTAINER_pn-strace = "Chong Lu <Chong.Lu@windriver.com>"
> +RECIPE_MAINTAINER_pn-strace = "Robert Yang <liezhi.yang@windriver.com>"
>   RECIPE_MAINTAINER_pn-subversion = "Richard Purdie <richard.purdie@linuxfoundation.org>"
>   RECIPE_MAINTAINER_pn-sudo = "Chen Qi <Qi.Chen@windriver.com>"
>   RECIPE_MAINTAINER_pn-swabber-native = "Saul Wold <sgw@linux.intel.com>"
> @@ -655,7 +655,7 @@ RECIPE_MAINTAINER_pn-taglib = "Cristian Iorga <cristian.iorga@intel.com>"
>   RECIPE_MAINTAINER_pn-tar-replacement-native = "Robert Yang <liezhi.yang@windriver.com>"
>   RECIPE_MAINTAINER_pn-tar = "Chen Qi <Qi.Chen@windriver.com>"
>   RECIPE_MAINTAINER_pn-tcf-agent = "Randy Witt <randy.e.witt@linux.intel.com>"
> -RECIPE_MAINTAINER_pn-tcl = "Chong Lu <Chong.Lu@windriver.com>"
> +RECIPE_MAINTAINER_pn-tcl = "Robert Yang <liezhi.yang@windriver.com>"
>   RECIPE_MAINTAINER_pn-tcp-wrappers = "Robert Yang <liezhi.yang@windriver.com>"
>   RECIPE_MAINTAINER_pn-tcp-wrappers = "Saul Wold <sgw@linux.intel.com>"
>   RECIPE_MAINTAINER_pn-telepathy-glib = "Cristian Iorga <cristian.iorga@intel.com>"
>

