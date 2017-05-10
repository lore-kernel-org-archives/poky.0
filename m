Return-Path: <sgw@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 12CA7E007BA; Wed, 10 May 2017 07:31:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99A1AE003C1
	for <poky@yoctoproject.org>; Wed, 10 May 2017 07:31:33 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	10 May 2017 07:31:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.38,319,1491289200"; d="scan'208";a="855188338"
Received: from thirai-mobl1.gar.corp.intel.com (HELO
	swold-mobl2.amr.corp.intel.com) ([10.255.163.243])
	by FMSMGA003.fm.intel.com with ESMTP; 10 May 2017 07:31:30 -0700
Message-ID: <1494426689.12394.6.camel@linux.intel.com>
From: Saul Wold <sgw@linux.intel.com>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>, 
	poky@yoctoproject.org, fathi.boudra@linaro.org, raj.khem@gmail.com, 
	maxin.john@intel.com, jussi.kukkonen@intel.com, 
	ricardo.neri-calderon@linux.intel.com,
	edwin.plauchu.camacho@linux.intel.com,  ed.bartosh@linux.intel.com
Date: Wed, 10 May 2017 22:31:29 +0800
In-Reply-To: <20170510135902.7409-1-alexander.kanavin@linux.intel.com>
References: <20170510135902.7409-1-alexander.kanavin@linux.intel.com>
X-Mailer: Evolution 3.20.5 (3.20.5-1.fc24) 
Mime-Version: 1.0
Subject: Re: [PATCH] maitainers.inc: assign newly added recipes
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
X-List-Received-Date: Wed, 10 May 2017 14:31:38 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit



I was about to send a patch to assign Wei Tee for gstreamer1.0-vaapi
and libva since they affect the support of some graphics components.

Can we add her for the assignement of those instead of Maxim and Khem?

Sau!

On Wed, 2017-05-10 at 16:59 +0300, Alexander Kanavin wrote:
> If you disagree with the assignments, please speak up.
> 
> Signed-off-by: Alexander Kanavin <alexander.kanavin@linux.intel.com>
> ---
>  meta-poky/conf/distro/include/maintainers.inc | 23
> +++++++++++++++++++++--
>  1 file changed, 21 insertions(+), 2 deletions(-)
> 
> diff --git a/meta-poky/conf/distro/include/maintainers.inc b/meta-
> poky/conf/distro/include/maintainers.inc
> index 261c8f313bf..c247acf8a54 100644
> --- a/meta-poky/conf/distro/include/maintainers.inc
> +++ b/meta-poky/conf/distro/include/maintainers.inc
> @@ -28,7 +28,9 @@
>  # Please keep this list in alphabetical order.
>  #
>  RECIPE_MAINTAINER_pn-acl = "Chen Qi <Qi.Chen@windriver.com>"
> +RECIPE_MAINTAINER_pn-acpica = "Fathi Boudra <fathi.boudra@linaro.org
> >"
>  RECIPE_MAINTAINER_pn-acpid = "Maxin B. John <maxin.john@intel.com>"
> +RECIPE_MAINTAINER_pn-acpitests = "Fathi Boudra <fathi.boudra@linaro.
> org>"
>  RECIPE_MAINTAINER_pn-adwaita-icon-theme = "Jussi Kukkonen <jussi.kuk
> konen@intel.com>"
>  RECIPE_MAINTAINER_pn-alsa-lib = "Tanu Kaskinen <tanuk@iki.fi>"
>  RECIPE_MAINTAINER_pn-alsa-plugins = "Tanu Kaskinen <tanuk@iki.fi>"
> @@ -80,6 +82,7 @@ RECIPE_MAINTAINER_pn-bsd-headers = "Khem Raj <raj.k
> hem@gmail.com>"
>  RECIPE_MAINTAINER_pn-btrfs-tools = "Alexander Kanavin <alexander.kan
> avin@intel.com>"
>  RECIPE_MAINTAINER_pn-build-appliance-image = "Cristian Iorga <cristi
> an.iorga@intel.com>"
>  RECIPE_MAINTAINER_pn-build-compare = "Randy Witt <randy.e.witt@linux
> .intel.com>"
> +RECIPE_MAINTAINER_pn-build-sysroots = "Richard Purdie <richard.purdi
> e@linuxfoundation.org>"
>  RECIPE_MAINTAINER_pn-builder = "Cristian Iorga <cristian.iorga@intel
> .com>"
>  RECIPE_MAINTAINER_pn-buildtools-tarball = "Cristian Iorga <cristian.
> iorga@intel.com>"
>  RECIPE_MAINTAINER_pn-busybox = "Armin Kuster <akuster808@gmail.com>"
> @@ -125,12 +128,13 @@ RECIPE_MAINTAINER_pn-core-image-sato-sdk =
> "Ross Burton <ross.burton@intel.com>"
>  RECIPE_MAINTAINER_pn-core-image-sato-sdk-ptest = "Ross Burton <ross.
> burton@intel.com>"
>  RECIPE_MAINTAINER_pn-core-image-testmaster = "Ross Burton <ross.burt
> on@intel.com>"
>  RECIPE_MAINTAINER_pn-core-image-testmaster-initramfs = "Ross Burton
> <ross.burton@intel.com>"
> +RECIPE_MAINTAINER_pn-core-image-tiny-initramfs = "Ross Burton <ross.
> burton@intel.com>"
>  RECIPE_MAINTAINER_pn-core-image-weston = "Ross Burton <ross.burton@i
> ntel.com>"
>  RECIPE_MAINTAINER_pn-core-image-x11 = "Ross Burton <ross.burton@inte
> l.com>"
>  RECIPE_MAINTAINER_pn-coreutils = "Chen Qi <Qi.Chen@windriver.com>"
>  RECIPE_MAINTAINER_pn-cpio = "Denys Dmytriyenko <denis@denix.org>"
>  RECIPE_MAINTAINER_pn-cracklib = "Armin Kuster <akuster@mvista.com>"
> -RECIPE_MAINTAINER_pn-createrepo = "Hongxu Jia <hongxu.jia@windriver.
> com>"
> +RECIPE_MAINTAINER_pn-createrepo-c = "Alexander Kanavin <alexander.ka
> navin@intel.com>"
>  RECIPE_MAINTAINER_pn-cronie = "Edwin Plauchu <edwin.plauchu.camacho@
> linux.intel.com>"
>  RECIPE_MAINTAINER_pn-cross-localedef-native = "Khem Raj <raj.khem@gm
> ail.com>"
>  RECIPE_MAINTAINER_pn-cryptodev-linux = "Robert Yang <liezhi.yang@win
> driver.com>"
> @@ -158,6 +162,7 @@ RECIPE_MAINTAINER_pn-distcc = "Hongxu Jia <hongxu
> .jia@windriver.com>"
>  RECIPE_MAINTAINER_pn-distcc-config = "Dengke Du <dengke.du@windriver
> .com>"
>  RECIPE_MAINTAINER_pn-dmidecode = "Alexander Kanavin <alexander.kanav
> in@intel.com>"
>  RECIPE_MAINTAINER_pn-dmxproto = "Jussi Kukkonen <jussi.kukkonen@inte
> l.com>"
> +RECIPE_MAINTAINER_pn-dnf = "Alexander Kanavin <alexander.kanavin@int
> el.com>"
>  RECIPE_MAINTAINER_pn-docbook-xml-dtd4 = "Dengke Du <dengke.du@windri
> ver.com>"
>  RECIPE_MAINTAINER_pn-docbook-xsl-stylesheets = "Dengke Du <dengke.du
> @windriver.com>"
>  RECIPE_MAINTAINER_pn-dosfstools = "Dengke Du <dengke.du@windriver.co
> m>"
> @@ -237,8 +242,11 @@ RECIPE_MAINTAINER_pn-gnu-config = "Robert Yang <
> liezhi.yang@windriver.com>"
>  RECIPE_MAINTAINER_pn-gnu-efi = "Robert Yang <liezhi.yang@windriver.c
> om>"
>  RECIPE_MAINTAINER_pn-gnupg = "Hongxu Jia <hongxu.jia@windriver.com>"
>  RECIPE_MAINTAINER_pn-gnutls = "Armin Kuster <akuster@mvista.com>"
> +RECIPE_MAINTAINER_pn_go = "Khem Raj <raj.khem@gmail.com>"
> +RECIPE_MAINTAINER_pn-go-cross = "Khem Raj <raj.khem@gmail.com>"
> +RECIPE_MAINTAINER_pn-go-helloworld = "Khem Raj <raj.khem@gmail.com>"
> +RECIPE_MAINTAINER_pn-go-native = "Khem Raj <raj.khem@gmail.com>"
>  RECIPE_MAINTAINER_pn-gobject-introspection = "Alexander Kanavin <ale
> xander.kanavin@intel.com>"
> -RECIPE_MAINTAINER_pn-go-native = "Armin Kuster <akuster808@gmail.com
> >"
>  RECIPE_MAINTAINER_pn-gperf = "Alexander Kanavin <alexander.kanavin@i
> ntel.com>"
>  RECIPE_MAINTAINER_pn-gpgme = "Hongxu Jia <hongxu.jia@windriver.com>"
>  RECIPE_MAINTAINER_pn-gptfdisk = "Alexander Kanavin <alexander.kanavi
> n@intel.com>"
> @@ -257,6 +265,7 @@ RECIPE_MAINTAINER_pn-gstreamer1.0-plugins-base =
> "Maxin B. John <maxin.john@inte
>  RECIPE_MAINTAINER_pn-gstreamer1.0-plugins-good = "Maxin B. John <max
> in.john@intel.com>"
>  RECIPE_MAINTAINER_pn-gstreamer1.0-plugins-ugly = "Maxin B. John <max
> in.john@intel.com>"
>  RECIPE_MAINTAINER_pn-gstreamer1.0-rtsp-server = "Maxin B. John <maxi
> n.john@intel.com>"
> +RECIPE_MAINTAINER_pn-gstreamer1.0-vaapi = "Maxin B. John <maxin.john
> @intel.com>"
>  RECIPE_MAINTAINER_pn-gtk+ = "Jussi Kukkonen <jussi.kukkonen@intel.co
> m>"
>  RECIPE_MAINTAINER_pn-gtk+3 = "Jussi Kukkonen <jussi.kukkonen@intel.c
> om>"
>  RECIPE_MAINTAINER_pn-gtk-doc = "Alexander Kanavin <alexander.kanavin
> @intel.com>"
> @@ -328,10 +337,12 @@ RECIPE_MAINTAINER_pn-libcap-ng = "Robert Yang <
> liezhi.yang@windriver.com>"
>  RECIPE_MAINTAINER_pn-libcgroup = "Alexander Kanavin <alexander.kanav
> in@intel.com>"
>  RECIPE_MAINTAINER_pn-libcheck = "Robert Yang <liezhi.yang@windriver.
> com>"
>  RECIPE_MAINTAINER_pn-libclass-isa-perl = "Aníbal Limón <anibal.limon
> @linux.intel.com>"
> +RECIPE_MAINTAINER_pn-libcomps = "Alexander Kanavin <alexander.kanavi
> n@intel.com>"
>  RECIPE_MAINTAINER_pn-libconvert-asn1-perl = "Aníbal Limón <anibal.li
> mon@linux.intel.com>"
>  RECIPE_MAINTAINER_pn-libcroco = "Jussi Kukkonen <jussi.kukkonen@inte
> l.com>"
>  RECIPE_MAINTAINER_pn-libdaemon = "Alexander Kanavin <alexander.kanav
> in@intel.com>"
>  RECIPE_MAINTAINER_pn-libdmx = "Jussi Kukkonen <jussi.kukkonen@intel.
> com>"
> +RECIPE_MAINTAINER_pn-libdnf = "Alexander Kanavin <alexander.kanavin@
> intel.com>"
>  RECIPE_MAINTAINER_pn-libdrm = "Otavio Salvador <otavio.salvador@ossy
> stems.com.br>"
>  RECIPE_MAINTAINER_pn-libdumpvalue-perl = "Aníbal Limón <anibal.limon
> @linux.intel.com>"
>  RECIPE_MAINTAINER_pn-libenv-perl = "Aníbal Limón <anibal.limon@linux
> .intel.com>"
> @@ -386,6 +397,7 @@ RECIPE_MAINTAINER_pn-libpng12 = "Maxin B. John <m
> axin.john@intel.com>"
>  RECIPE_MAINTAINER_pn-libpod-plainer-perl = "Aníbal Limón <anibal.lim
> on@linux.intel.com>"
>  RECIPE_MAINTAINER_pn-libproxy = "Maxin B. John <maxin.john@intel.com
> >"
>  RECIPE_MAINTAINER_pn-libpthread-stubs = "Alexander Kanavin <alexande
> r.kanavin@intel.com>"
> +RECIPE_MAINTAINER_pn-librepo = "Alexander Kanavin <alexander.kanavin
> @intel.com>"
>  RECIPE_MAINTAINER_pn-librsvg = "Jussi Kukkonen <jussi.kukkonen@intel
> .com>"
>  RECIPE_MAINTAINER_pn-libsamplerate0 = "Tanu Kaskinen <tanuk@iki.fi>"
>  RECIPE_MAINTAINER_pn-libsdl = "Robert Yang <liezhi.yang@windriver.co
> m>"
> @@ -409,6 +421,7 @@ RECIPE_MAINTAINER_pn-liburi-perl = "Aníbal Limón
> <anibal.limon@linux.intel.com
>  RECIPE_MAINTAINER_pn-libusb-compat = "Leonardo Sandoval <leonardo.sa
> ndoval.gonzalez@linux.intel.com>"
>  RECIPE_MAINTAINER_pn-libusb1 = "Leonardo Sandoval <leonardo.sandoval
> .gonzalez@linux.intel.com>"
>  RECIPE_MAINTAINER_pn-libuser = "Robert Yang <liezhi.yang@windriver.c
> om>"
> +RECIPE_MAINTAINER_pn-libva = "Khem Raj <raj.khem@gmail.com>"
>  RECIPE_MAINTAINER_pn-libvorbis = "Tanu Kaskinen <tanuk@iki.fi>"
>  RECIPE_MAINTAINER_pn-libwebp = "Alexander Kanavin <alexander.kanavin
> @intel.com>"
>  RECIPE_MAINTAINER_pn-libx11 = "Jussi Kukkonen <jussi.kukkonen@intel.
> com>"
> @@ -423,6 +436,7 @@ RECIPE_MAINTAINER_pn-libxdmcp = "Jussi Kukkonen <
> jussi.kukkonen@intel.com>"
>  RECIPE_MAINTAINER_pn-libxext = "Jussi Kukkonen <jussi.kukkonen@intel
> .com>"
>  RECIPE_MAINTAINER_pn-libxfixes = "Jussi Kukkonen <jussi.kukkonen@int
> el.com>"
>  RECIPE_MAINTAINER_pn-libxfont = "Jussi Kukkonen <jussi.kukkonen@inte
> l.com>"
> +RECIPE_MAINTAINER_pn-libxfont2 = "Jussi Kukkonen <jussi.kukkonen@int
> el.com>"
>  RECIPE_MAINTAINER_pn-libxft = "Jussi Kukkonen <jussi.kukkonen@intel.
> com>"
>  RECIPE_MAINTAINER_pn-libxi = "Jussi Kukkonen <jussi.kukkonen@intel.c
> om>"
>  RECIPE_MAINTAINER_pn-libxinerama = "Jussi Kukkonen <jussi.kukkonen@i
> ntel.com>"
> @@ -470,6 +484,7 @@ RECIPE_MAINTAINER_pn-ltp = "Dengke Du <dengke.du@
> windriver.com>"
>  RECIPE_MAINTAINER_pn-lttng-modules = "Richard Purdie <richard.purdie
> @linuxfoundation.org>"
>  RECIPE_MAINTAINER_pn-lttng-tools = "Richard Purdie <richard.purdie@l
> inuxfoundation.org>"
>  RECIPE_MAINTAINER_pn-lttng-ust = "Richard Purdie <richard.purdie@lin
> uxfoundation.org>"
> +RECIPE_MAINTAINER_pn-lz = "Alexander Kanavin <alexander.kanavin@inte
> l.com>"
>  RECIPE_MAINTAINER_pn-lz4 = "Armin Kuster <akuster808@gmail.com>"
>  RECIPE_MAINTAINER_pn-lzo = "Armin Kuster <akuster808@gmail.com>"
>  RECIPE_MAINTAINER_pn-lzop = "Armin Kuster <akuster808@gmail.com>"
> @@ -553,6 +568,8 @@ RECIPE_MAINTAINER_pn-oprofile = "Alexander
> Kanavin <alexander.kanavin@intel.com>
>  RECIPE_MAINTAINER_pn-orc = "Maxin B. John <maxin.john@intel.com>"
>  RECIPE_MAINTAINER_pn-os-release = "Ross Burton <ross.burton@intel.co
> m>"
>  RECIPE_MAINTAINER_pn-ossp-uuid = "Alexander Kanavin <alexander.kanav
> in@intel.com>"
> +RECIPE_MAINTAINER_pn-ovmf = "Ricardo Neri <ricardo.neri-calderon@lin
> ux.intel.com>"
> +RECIPE_MAINTAINER_pn-ovmf-shell-image = "Ricardo Neri <ricardo.neri-
> calderon@linux.intel.com>"
>  RECIPE_MAINTAINER_pn-p11-kit = "Alexander Kanavin <alexander.kanavin
> @intel.com>"
>  RECIPE_MAINTAINER_pn-package-index = "Ross Burton <ross.burton@intel
> .com>"
>  RECIPE_MAINTAINER_pn-packagegroup-base = "Ross Burton <ross.burton@i
> ntel.com>"
> @@ -646,6 +663,7 @@ RECIPE_MAINTAINER_pn-python3-distribute = "Edwin
> Plauchu <edwin.plauchu.camacho@
>  RECIPE_MAINTAINER_pn-python3-docutils = "Edwin Plauchu <edwin.plauch
> u.camacho@linux.intel.com>"
>  RECIPE_MAINTAINER_pn-python3-git = "Jose Lamego <jose.a.lamego@linux
> .intel.com>"
>  RECIPE_MAINTAINER_pn-python3-gitdb = "Edwin Plauchu <edwin.plauchu.c
> amacho@linux.intel.com>"
> +RECIPE_MAINTAINER_pn-python3-iniparse = "Edwin Plauchu <edwin.plauch
> u.camacho@linux.intel.com>"
>  RECIPE_MAINTAINER_pn-python3-mako = "Jose Lamego <jose.a.lamego@linu
> x.intel.com>"
>  RECIPE_MAINTAINER_pn-python3-native = "Alejandro Hernandez <alejandr
> o.hernandez@linux.intel.com>"
>  RECIPE_MAINTAINER_pn-python3-nose = "Edwin Plauchu <edwin.plauchu.ca
> macho@linux.intel.com>"
> @@ -772,6 +790,7 @@ RECIPE_MAINTAINER_pn-weston = "Denys Dmytriyenko
> <denis@denix.org>"
>  RECIPE_MAINTAINER_pn-weston-init = "Denys Dmytriyenko <denis@denix.o
> rg>"
>  RECIPE_MAINTAINER_pn-wget = "Robert Yang <liezhi.yang@windriver.com>
> "
>  RECIPE_MAINTAINER_pn-which = "Leonardo Sandoval <leonardo.sandoval.g
> onzalez@linux.intel.com>"
> +RECIPE_MAINTAINER_pn-wic-tools = "Ed Bartosh <ed.bartosh@linux.intel
> .com>"
>  RECIPE_MAINTAINER_pn-wireless-tools = "Maxin B. John <maxin.john@int
> el.com>"
>  RECIPE_MAINTAINER_pn-wpa-supplicant = "Maxin B. John <maxin.john@int
> el.com>"
>  RECIPE_MAINTAINER_pn-x11-common = "Jussi Kukkonen <jussi.kukkonen@in
> tel.com>"
> -- 
> 2.11.0
> 

