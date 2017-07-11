Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DE58BE00C35; Tue, 11 Jul 2017 02:48:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [192.55.52.43 listed in list.dnswl.org]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5410E00B31
	for <poky@yoctoproject.org>; Tue, 11 Jul 2017 02:48:50 -0700 (PDT)
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by fmsmga105.fm.intel.com with ESMTP; 11 Jul 2017 02:48:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.40,345,1496127600"; d="scan'208";a="125093087"
Received: from jlock-mobl1.ger.corp.intel.com ([10.252.0.217])
	by fmsmga005.fm.intel.com with ESMTP; 11 Jul 2017 02:48:48 -0700
Message-ID: <1499766528.3497.5.camel@linux.intel.com>
From: Joshua Lock <joshua.g.lock@linux.intel.com>
To: Tan Shen Joon <shen.joon.tan@intel.com>, poky@yoctoproject.org
Date: Tue, 11 Jul 2017 10:48:48 +0100
In-Reply-To: <1499742031-147601-1-git-send-email-shen.joon.tan@intel.com>
References: <1499742031-147601-1-git-send-email-shen.joon.tan@intel.com>
X-Mailer: Evolution 3.22.6 (3.22.6-2.fc25) 
Mime-Version: 1.0
Cc: Shen Joon Tan <stan74@rebeccas.png.intel.com>
Subject: Re: [PATCH] distro_alias.inc: update unmap packages to other distro
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
X-List-Received-Date: Tue, 11 Jul 2017 09:48:55 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

Hi Shen Joon,

poky@ is the wrong list for this, openembedded-core@ was correct.
Patchtest failed your original submission to the openembedded-core list
due to the shortlog format, rather than it being the incorrect list.

Could you resubmit this patch to openembedded-core? Please first fix
the email address in your git config so that we don't see the patch as
being from an internal machine name.

Thanks,

Joshua

On Tue, 2017-07-11 at 11:00 +0800, Tan Shen Joon wrote:
> From: Shen Joon Tan <stan74@rebeccas.png.intel.com>
> 
> Added packages with different names or based on sources that
> generates multiple binaries eg: python-pycurl source generates
> python3-pycurl as well. Currently, some of these packages are not
> displayed as part of other distro due to naming differences on
> the source rather than the binaries as a single source could
> produce multiple binaries with different names.
> 
> Signed-off-by: Shen Joon Tan <shen.joon.tan@intel.com>
> ---
>  meta/conf/distro/include/distro_alias.inc | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/meta/conf/distro/include/distro_alias.inc
> b/meta/conf/distro/include/distro_alias.inc
> index ba47f90..f7c8b4a 100644
> --- a/meta/conf/distro/include/distro_alias.inc
> +++ b/meta/conf/distro/include/distro_alias.inc
> @@ -62,6 +62,7 @@ DISTRO_PN_ALIAS_pn-core-image-testmaster = "OE-
> Core"
>  DISTRO_PN_ALIAS_pn-core-image-testmaster-initramfs = "OE-Core"
>  DISTRO_PN_ALIAS_pn-core-image-weston = "OE-Core"
>  DISTRO_PN_ALIAS_pn-core-image-x11 = "OE-Core"
> +DISTRO_PN_ALIAS_pn-createrepo-c = "Fedora=createrepo_c
> Clear=createrepo_c"
>  DISTRO_PN_ALIAS_pn-cross-localedef = "OSPDT"
>  DISTRO_PN_ALIAS_pn-cryptodev-linux = "OE-Core"
>  DISTRO_PN_ALIAS_pn-cryptodev-module = "OE-Core"
> @@ -128,6 +129,7 @@ DISTRO_PN_ALIAS_pn-gstreamer1.0-plugins-bad =
> "Debian=gstreamer1.0-plugins-bad U
>  DISTRO_PN_ALIAS_pn-gstreamer1.0-plugins-base = "Debian=gstreamer1.0-
> plugins-base Ubuntu=gstreamer1.0-plugins-base"
>  DISTRO_PN_ALIAS_pn-gstreamer1.0-plugins-good = "Debian=gstreamer1.0-
> plugins-good Ubuntu=gstreamer1.0-plugins-bad"
>  DISTRO_PN_ALIAS_pn-gstreamer1.0-rtsp-server = "Ubuntu=gstreamer0.10-
> rtsp Fedora=gstreamer-rtsp"
> +DISTRO_PN_ALIAS_pn-gstreamer1.0-vaapi = "Fedora=gstreamer1-vaapi
> Debian=gstreamer-vaapi Clear=gstreamer-vaapi"
>  DISTRO_PN_ALIAS_pn-gtk+ = "Meego=gtk2 Fedora=gtk2 OpenSuSE=gtk2
> Ubuntu=gtk+2.0 Mandriva=gtk+2.0 Debian=gtk+2.0"
>  DISTRO_PN_ALIAS_pn-gtk+3 = "Ubuntu=gtk+3.0 Debian=gtk+3.0
> Fedora=gtk3"
>  DISTRO_PN_ALIAS_pn-gtk-doc = "Fedora=gtk-doc Ubuntu=gtk-doc"
> @@ -193,6 +195,7 @@ DISTRO_PN_ALIAS_pn-libomxil = "OSPDT upstream=htt
> p://omxil.sourceforge.net/"
>  DISTRO_PN_ALIAS_pn-libowl = "Debian=owl OpenedHand"
>  DISTRO_PN_ALIAS_pn-libpam = "Meego=pam Fedora=pam OpenSuSE=pam
> Ubuntu=pam Mandriva=pam Debian=pam"
>  DISTRO_PN_ALIAS_pn-libpcre = "Mandriva=libpcre0 Fedora=pcre"
> +DISTRO_PN_ALIAS_pn-libpcre2 = "Fedora=pcre2 Debian=pcre2
> Clear=pcre2"
>  DISTRO_PN_ALIAS_pn-libpng12 = "Debian=libpng12-0 Fedora=libpng"
>  DISTRO_PN_ALIAS_pn-libpod-plainer-perl = "OSPDT"
>  DISTRO_PN_ALIAS_pn-libsamplerate0 = "Meego=libsamplerate
> Fedora=libsamplerate OpenSuSE=libsamplerate Ubuntu=libsamplerate
> Mandriva=libsamplerate Debian=libsamplerate"
> @@ -207,6 +210,7 @@ DISTRO_PN_ALIAS_pn-libusb1 = "Debian=libusb-1.0-0 
> Fedora=libusb1"
>  DISTRO_PN_ALIAS_pn-libusb-compat = "OSPDT"
>  DISTRO_PN_ALIAS_pn-libx11 = "Debian=libx11-6 Fedora=libX11
> Ubuntu=libx11-6 OpenSuSE=xorg-x11-libX11"
>  DISTRO_PN_ALIAS_pn-libxcalibrate = "OSPDT upstream=http://cgit.freed
> esktop.org/xorg/lib/libXCalibrate/"
> +DISTRO_PN_ALIAS_pn-libxfont2 = "Fedora=libXfont2 Clear=libXfont2"
>  DISTRO_PN_ALIAS_pn-libxft = "Mandriva=libxft Debian=libxft2
> Ubuntu=libxft2"
>  DISTRO_PN_ALIAS_pn-libxi = "Ubuntu=libxi Fedora=libXi"
>  DISTRO_PN_ALIAS_pn-libxkbcommon = "Fedora=libxkbcommon
> Debian=libxkbcommon"
> @@ -323,7 +327,10 @@ DISTRO_PN_ALIAS_pn-pulseaudio-client-conf-sato =
> "OE-Core"
>  DISTRO_PN_ALIAS_pn-puzzles = "Debian=sgt-puzzles Fedora=puzzles"
>  DISTRO_PN_ALIAS_pn-python3 = "Fedora=python3 Debian=python3.2"
>  DISTRO_PN_ALIAS_pn-python3-distribute = "Debian=python3-setuptools
> Fedora=python3-setuptools"
> +DISTRO_PN_ALIAS_pn-python3-iniparse = "Fedora=python-iniparse
> Debian=python-iniparse"
>  DISTRO_PN_ALIAS_pn-python3-pip = "OpenSuSE=python3-pip
> Debian=python3-pip"
> +DISTRO_PN_ALIAS_pn-python3-pycurl = "Fedora=python-pycurl
> Debian=pycurl"
> +DISTRO_PN_ALIAS_pn-python3-pygpgme = "Fedora=python-pygpgme
> Debian=pygpgme"
>  DISTRO_PN_ALIAS_pn-python3-setuptools = "OpenSuSE=python3-setuptools 
> Debian=python3-setuptools"
>  DISTRO_PN_ALIAS_pn-python-dbus = "Ubuntu=python-dbus Debian=python-
> dbus Mandriva=python-dbus"
>  DISTRO_PN_ALIAS_pn-python-distribute = "Opensuse=python-setuptools
> Fedora=python-setuptools"
> -- 
> 2.7.4
> 

