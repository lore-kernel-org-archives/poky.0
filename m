Return-Path: <yocto@mindchasers.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 07CFFE008CA; Mon, 10 Nov 2014 17:45:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 1226 seconds by postgrey-1.32 at yocto-www;
	Mon, 10 Nov 2014 17:45:44 PST
Received: from smtp.webfaction.com (mail6.webfaction.com [74.55.86.74])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B449E007C0
	for <poky@yoctoproject.org>; Mon, 10 Nov 2014 17:45:44 -0800 (PST)
Received: from [192.168.1.10] (unknown [68.38.40.177])
	by smtp.webfaction.com (Postfix) with ESMTP id 3502C20840B3;
	Tue, 11 Nov 2014 01:25:16 +0000 (UTC)
Message-ID: <54616575.3080101@mindchasers.com>
Date: Mon, 10 Nov 2014 20:25:09 -0500
From: Bob Cochran <yocto@mindchasers.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.2.0
MIME-Version: 1.0
To: Saul Wold <sgw@linux.intel.com>, Poky Project <poky@yoctoproject.org>
References: <1415634297-5665-1-git-send-email-sgw@linux.intel.com>
In-Reply-To: <1415634297-5665-1-git-send-email-sgw@linux.intel.com>
Subject: Re: [PATCH v2] maintainers: Update per replies on OE-Core
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
X-List-Received-Date: Tue, 11 Nov 2014 01:45:50 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

Hi,

How do I determine the maintainer for something not on this list but in 
meta-openembedded, specifically postgresql?

Thanks

Bob



On 11/10/2014 10:44 AM, Saul Wold wrote:
> Signed-off-by: Saul Wold <sgw@linux.intel.com>
> ---
> fixed Paul Barker's opkg* entries
>
>   meta-yocto/conf/distro/include/maintainers.inc | 21 +++++++++++++++------
>   1 file changed, 15 insertions(+), 6 deletions(-)
>
> diff --git a/meta-yocto/conf/distro/include/maintainers.inc b/meta-yocto/conf/distro/include/maintainers.inc
> index b2554fb..0121791 100644
> --- a/meta-yocto/conf/distro/include/maintainers.inc
> +++ b/meta-yocto/conf/distro/include/maintainers.inc
> @@ -279,7 +279,7 @@ RECIPE_MAINTAINER_pn-less = "Saul Wold <sgw@linux.intel.com>"
>   RECIPE_MAINTAINER_pn-liba52 = "Cristian Iorga <cristian.iorga@intel.com>"
>   RECIPE_MAINTAINER_pn-libacpi = "Aníbal Limón <anibal.limon@linux.intel.com>"
>   RECIPE_MAINTAINER_pn-libaio = "Saul Wold <sgw@linux.intel.com>"
> -RECIPE_MAINTAINER_pn-libarchive = "Kai Kang <kai.kang@windriver.com>"
> +RECIPE_MAINTAINER_pn-libarchive = "Paul Barker <paul@paulbarker.me.uk>"
>   RECIPE_MAINTAINER_pn-libart-lgpl = "Ross Burton <ross.burton@intel.com>"
>   RECIPE_MAINTAINER_pn-libassuan = "Saul Wold <sgw@linux.intel.com>"
>   RECIPE_MAINTAINER_pn-libatomics-ops = "Cristian Iorga <cristian.iorga@intel.com>"
> @@ -297,6 +297,7 @@ RECIPE_MAINTAINER_pn-libdrm = "Richard Purdie <richard.purdie@linuxfoundation.or
>   RECIPE_MAINTAINER_pn-libdumpvalue-perl = "Saul Wold <sgw@linux.intel.com>"
>   RECIPE_MAINTAINER_pn-libenv-perl = "Saul Wold <sgw@linux.intel.com>"
>   RECIPE_MAINTAINER_pn-liberation-fonts = "Ross Burton <ross.burton@intel.com>"
> +RECIPE_MAINTAINER_pn-libevdev = "Paul Eggleton <paul.eggleton@linux.intel.com>"
>   RECIPE_MAINTAINER_pn-libevent = "Paul Eggleton <paul.eggleton@linux.intel.com>"
>   RECIPE_MAINTAINER_pn-libexif = "Saul Wold <sgw@linux.intel.com>"
>   RECIPE_MAINTAINER_pn-libfakekey = "Ross Burton <ross.burton@intel.com>"
> @@ -321,6 +322,7 @@ RECIPE_MAINTAINER_pn-libmad = "Saul Wold <sgw@linux.intel.com>"
>   RECIPE_MAINTAINER_pn-libmatchbox = "Ross Burton <ross.burton@intel.com>"
>   RECIPE_MAINTAINER_pn-libmpc = "Richard Purdie <richard.purdie@linuxfoundation.org>"
>   RECIPE_MAINTAINER_pn-libnewt = "Hongxu Jia <hongxu.jia@windriver.com>"
> +RECIPE_MAINTAINER_pn-libnewt-python = "Hongxu Jia <hongxu.jia@windriver.com>"
>   RECIPE_MAINTAINER_pn-libnfsidmap = "Paul Eggleton <paul.eggleton@linux.intel.com>"
>   RECIPE_MAINTAINER_pn-libnl = "Saul Wold <sgw@linux.intel.com>"
>   RECIPE_MAINTAINER_pn-libnotify = "Ross Burton <ross.burton@intel.com>"
> @@ -420,7 +422,7 @@ RECIPE_MAINTAINER_pn-lttng-tools = "Richard Purdie <richard.purdie@linuxfoundati
>   RECIPE_MAINTAINER_pn-lttng-ust = "Richard Purdie <richard.purdie@linuxfoundation.org>"
>   RECIPE_MAINTAINER_pn-lzop = "Saul Wold <sgw@linux.intel.com>"
>   RECIPE_MAINTAINER_pn-lzo = "Saul Wold <sgw@linux.intel.com>"
> -RECIPE_MAINTAINER_pn-lz4 = "Armin Kuster <akuster@mvista.com>"
> +RECIPE_MAINTAINER_pn-lz4 = "Armin Kuster <akuster808@gmail.com>"
>   RECIPE_MAINTAINER_pn-m4 = "Robert Yang <liezhi.yang@windriver.com>"
>   RECIPE_MAINTAINER_pn-mailx = "Kai Kang <kai.kang@windriver.com>"
>   RECIPE_MAINTAINER_pn-make = "Robert Yang <liezhi.yang@windriver.com>"
> @@ -487,10 +489,10 @@ RECIPE_MAINTAINER_pn-openjade = "Paul Eggleton <paul.eggleton@linux.intel.com>"
>   RECIPE_MAINTAINER_pn-opensp = "Paul Eggleton <paul.eggleton@linux.intel.com>"
>   RECIPE_MAINTAINER_pn-openssh = "Paul Eggleton <paul.eggleton@linux.intel.com>"
>   RECIPE_MAINTAINER_pn-openssl = "Saul Wold <sgw@linux.intel.com>"
> -RECIPE_MAINTAINER_pn-opkg-collateral = "Saul Wold <sgw@linux.intel.com>"
> -RECIPE_MAINTAINER_pn-opkg-config-base = "Saul Wold <sgw@linux.intel.com>"
> -RECIPE_MAINTAINER_pn-opkg = "Saul Wold <sgw@linux.intel.com>"
> -RECIPE_MAINTAINER_pn-opkg-utils = "Saul Wold <sgw@linux.intel.com>"
> +RECIPE_MAINTAINER_pn-opkg-collateral = "Paul Barker <paul@paulbarker.me.uk>"
> +RECIPE_MAINTAINER_pn-opkg-config-base = "Paul Barker <paul@paulbarker.me.uk>"
> +RECIPE_MAINTAINER_pn-opkg = "Paul Barker <paul@paulbarker.me.uk>"
> +RECIPE_MAINTAINER_pn-opkg-utils = "Paul Barker <paul@paulbarker.me.uk>"
>   RECIPE_MAINTAINER_pn-oprofile = "Richard Purdie <richard.purdie@linuxfoundation.org>"
>   RECIPE_MAINTAINER_pn-oprofileui = "Richard Purdie <richard.purdie@linuxfoundation.org>"
>   RECIPE_MAINTAINER_pn-oprofileui-server = "Saul Wold <sgw@linux.intel.com>"
> @@ -533,6 +535,7 @@ RECIPE_MAINTAINER_pn-perf = "Saul Wold <sgw@linux.intel.com>"
>   RECIPE_MAINTAINER_pn-perl = "Hongxu Jia <hongxu.jia@windriver.com>"
>   RECIPE_MAINTAINER_pn-piglit = "Ross Burton <ross.burton@intel.com>"
>   RECIPE_MAINTAINER_pn-pigz = "Saul Wold <sgw@linux.intel.com>"
> +RECIPE_MAINTAINER_pn-pinentry = "Armin Kuster <akuster808@gmail.com>"
>   RECIPE_MAINTAINER_pn-pixman = "Ross Burton <ross.burton@intel.com>"
>   RECIPE_MAINTAINER_pn-pkgconfig = "Aníbal Limón <anibal.limon@linux.intel.com>"
>   RECIPE_MAINTAINER_pn-pm-utils = "Cristian Iorga <cristian.iorga@intel.com>"
> @@ -560,6 +563,9 @@ RECIPE_MAINTAINER_pn-python-distribute = "Richard Purdie <richard.purdie@linuxfo
>   RECIPE_MAINTAINER_pn-python-docutils = "Richard Purdie <richard.purdie@linuxfoundation.org>"
>   RECIPE_MAINTAINER_pn-python-gst = "Richard Purdie <richard.purdie@linuxfoundation.org>"
>   RECIPE_MAINTAINER_pn-python-imaging = "Richard Purdie <richard.purdie@linuxfoundation.org>"
> +RECIPE_MAINTAINER_pn-python-mako = "Khem Raj <raj.khem@gmail.com>"
> +RECIPE_MAINTAINER_pn-python-nose = "Khem Raj <raj.khem@gmail.com>"
> +RECIPE_MAINTAINER_pn-python-numpy = "Khem Raj <raj.khem@gmail.com>"
>   RECIPE_MAINTAINER_pn-python-pycairo = "Richard Purdie <richard.purdie@linuxfoundation.org>"
>   RECIPE_MAINTAINER_pn-python-pycurl = "Richard Purdie <richard.purdie@linuxfoundation.org>"
>   RECIPE_MAINTAINER_pn-python-pygobject = "Richard Purdie <richard.purdie@linuxfoundation.org>"
> @@ -569,6 +575,7 @@ RECIPE_MAINTAINER_pn-python-scons = "Richard Purdie <richard.purdie@linuxfoundat
>   RECIPE_MAINTAINER_pn-python-setuptools = "Richard Purdie <richard.purdie@linuxfoundation.org>"
>   RECIPE_MAINTAINER_pn-python-smartpm = "Paul Eggleton <paul.eggleton@linux.intel.com>"
>   RECIPE_MAINTAINER_pn-python3 = "Richard Purdie <richard.purdie@linuxfoundation.org>"
> +RECIPE_MAINTAINER_pn-python3-distribute = "Khem Raj <raj.khem@gmail.com>"
>   RECIPE_MAINTAINER_pn-qemu-helper-native = "Cristian Iorga <cristian.iorga@intel.com>"
>   RECIPE_MAINTAINER_pn-qemu = "Cristian Iorga <cristian.iorga@intel.com>"
>   RECIPE_MAINTAINER_pn-qmmp = "Hongxu Jia <hongxu.jia@windriver.com>"
> @@ -710,6 +717,7 @@ RECIPE_MAINTAINER_pn-xf86-input-vmmouse = "Ross Burton <ross.burton@intel.com>"
>   RECIPE_MAINTAINER_pn-xf86miscproto = "Ross Burton <ross.burton@intel.com>"
>   RECIPE_MAINTAINER_pn-xf86-video-fbdev = "Ross Burton <ross.burton@intel.com>"
>   RECIPE_MAINTAINER_pn-xf86-video-intel = "Ross Burton <ross.burton@intel.com>"
> +RECIPE_MAINTAINER_pn-xf86-video-modesetting = "Ross Burton <ross.burton@intel.com>"
>   RECIPE_MAINTAINER_pn-xf86-video-omapfb = "Ross Burton <ross.burton@intel.com>"
>   RECIPE_MAINTAINER_pn-xf86-video-omap = "Ross Burton <ross.burton@intel.com>"
>   RECIPE_MAINTAINER_pn-xf86-video-vesa = "Ross Burton <ross.burton@intel.com>"
> @@ -723,6 +731,7 @@ RECIPE_MAINTAINER_pn-xinput = "Ross Burton <ross.burton@intel.com>"
>   RECIPE_MAINTAINER_pn-xinput-calibrator = "Ross Burton <ross.burton@intel.com>"
>   RECIPE_MAINTAINER_pn-xkbcomp = "Ross Burton <ross.burton@intel.com>"
>   RECIPE_MAINTAINER_pn-xkeyboard-config = "Ross Burton <ross.burton@intel.com>"
> +RECIPE_MAINTAINER_pn-xmlto = "Hongxu Jia <hongxu.jia@windriver.com>"
>   RECIPE_MAINTAINER_pn-xmodmap = "Ross Burton <ross.burton@intel.com>"
>   RECIPE_MAINTAINER_pn-xorg-minimal-fonts = "Ross Burton <ross.burton@intel.com>"
>   RECIPE_MAINTAINER_pn-xprop = "Ross Burton <ross.burton@intel.com>"
>
>
>


