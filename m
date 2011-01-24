Return-Path: <saul.wold@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id D81D54C811AB
	for <poky@yoctoproject.org>; Sun, 23 Jan 2011 22:51:26 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 23 Jan 2011 20:51:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,368,1291622400"; d="scan'208";a="595786093"
Received: from unknown (HELO [10.255.14.118]) ([10.255.14.118])
	by orsmga002.jf.intel.com with ESMTP; 23 Jan 2011 20:51:22 -0800
Message-ID: <4D3D0549.9090907@intel.com>
Date: Sun, 23 Jan 2011 20:51:21 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Yu Ke <ke.yu@intel.com>
References: <cover.1295509738.git.ke.yu@intel.com>
	<17da283eb4c31f33b03e562a8ea9a0110630e215.1295509738.git.ke.yu@intel.com>
In-Reply-To: <17da283eb4c31f33b03e562a8ea9a0110630e215.1295509738.git.ke.yu@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] distro tracking: add graphics recipes tracking data
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
X-List-Received-Date: Mon, 24 Jan 2011 04:51:27 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/19/2011 11:50 PM, Yu Ke wrote:
> add required filed for package report system to generate
> more acurate report
>
> Signed-off-by: Yu Ke<ke.yu@intel.com>
> ---
>   .../conf/distro/include/distro_tracking_fields.inc |   37 ++++++++++---------
>   1 files changed, 19 insertions(+), 18 deletions(-)
>
> diff --git a/meta/conf/distro/include/distro_tracking_fields.inc b/meta/conf/distro/include/distro_tracking_fields.inc
> index 5b0c944..401f7b4 100644
> --- a/meta/conf/distro/include/distro_tracking_fields.inc
> +++ b/meta/conf/distro/include/distro_tracking_fields.inc
> @@ -3236,7 +3236,7 @@ RECIPE_NO_OF_PATCHES_pn-mkfontdir="0"
>   RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-mkfontdir="2009/10/11"
>   RECIPE_LATEST_RELEASE_DATE_pn-mkfontdir="16 monthes"
>   RECIPE_INTEL_SECTION_pn-mkfontdir="graphic apps"
> -RECIPE_LAST_UPDATE_pn-mkfontdir = "Feb 3, 2010"
> +RECIPE_LAST_UPDATE_pn-mkfontdir = "Jan 18, 2011"
>   RECIPE_MAINTAINER_pn-mkfontdir="Yu Ke<ke.yu@intel.com>"
>   DISTRO_PN_ALIAS_pn-mkfontdir = "Mandriva=mkfontdir Ubuntu=xfonts-utils Fedora=xorg-x11-font-utils"
>
> @@ -3246,7 +3246,7 @@ RECIPE_NO_OF_PATCHES_pn-mkfontscale="0"
>   RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-mkfontscale="10 monthes"
>   RECIPE_LATEST_RELEASE_DATE_pn-mkfontscale="2009/10/11"
>   RECIPE_INTEL_SECTION_pn-mkfontscale="graphic apps"
> -RECIPE_LAST_UPDATE_pn-mkfontscale = "Feb 3, 2010"
> +RECIPE_LAST_UPDATE_pn-mkfontscale = "Jan 18, 2011"
>   RECIPE_MAINTAINER_pn-mkfontscale="Yu Ke<ke.yu@intel.com>"
>   DISTRO_PN_ALIAS_pn-mkfontscale = "Mandriva=mkfontscale Ubuntu=xfonts-utils Fedora=xorg-x11-font-utils"
>
> @@ -3265,7 +3265,7 @@ RECIPE_NO_OF_PATCHES_pn-xdpyinfo="1"
>   RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-xdpyinfo="1 year"
>   RECIPE_LATEST_RELEASE_DATE_pn-xdpyinfo="2009/10/16"
>   RECIPE_INTEL_SECTION_pn-xdpyinfo="graphic app"
> -RECIPE_LAST_UPDATE_pn-xdpyinfo = "Jun 23, 2010"
> +RECIPE_LAST_UPDATE_pn-xdpyinfo = "Jan 18, 2011"
>   RECIPE_MAINTAINER_pn-xdpyinfo="Yu Ke<ke.yu@intel.com>"
>   DISTRO_PN_ALIAS_pn-xdpyinfo = "Fedora=xorg-x11-utils Ubuntu=x11-utils"
>
> @@ -3275,7 +3275,7 @@ RECIPE_NO_OF_PATCHES_pn-xhost="0"
>   RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-xhost="2 years"
>   RECIPE_LATEST_RELEASE_DATE_pn-xhost="2009/10/14"
>   RECIPE_INTEL_SECTION_pn-xhost="graphic app"
> -RECIPE_LAST_UPDATE_pn-xhost = "Jun 23, 2010"
> +RECIPE_LAST_UPDATE_pn-xhost = "Jan 18, 2011"
>   RECIPE_MAINTAINER_pn-xhost="Yu Ke<ke.yu@intel.com>"
>   DISTRO_PN_ALIAS_pn-xhost = "Ubuntu=x11-xserver-utils Fedora=xorg-x11-server-utils"
>
> @@ -3285,7 +3285,7 @@ RECIPE_NO_OF_PATCHES_pn-xinit="0"
>   RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-xinit="4 monthes"
>   RECIPE_LATEST_RELEASE_DATE_pn-xinit="2010/03/16"
>   RECIPE_INTEL_SECTION_pn-xinit="graphic app"
> -RECIPE_LAST_UPDATE_pn-xinit = "Jun 23, 2010"
> +RECIPE_LAST_UPDATE_pn-xinit = "Jan 18, 2011"
>   RECIPE_MAINTAINER_pn-xinit="Yu Ke<ke.yu@intel.com>"
>
>   RECIPE_STATUS_pn-xkbcomp="green" # no update needed
> @@ -3294,7 +3294,7 @@ RECIPE_NO_OF_PATCHES_pn-xkbcomp="0"
>   RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-xkbcomp="2 monthes"
>   RECIPE_LATEST_RELEASE_DATE_pn-xkbcomp="2009/10/03"
>   RECIPE_INTEL_SECTION_pn-xkbcomp="graphic app"
> -RECIPE_LAST_UPDATE_pn-xkbcomp = "Jun 23, 2010"
> +RECIPE_LAST_UPDATE_pn-xkbcomp = "Jan 18, 2011"
>   RECIPE_MAINTAINER_pn-xkbcomp="Yu Ke<ke.yu@intel.com>"
>   DISTRO_PN_ALIAS_pn-xkbcomp = "Ubuntu=x11-xkb-utils Fedora=xorg-x11-xkb-utils"
>
> @@ -3314,7 +3314,7 @@ RECIPE_NO_OF_PATCHES_pn-xprop="0"
>   RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-xprop="1 year"
>   RECIPE_LATEST_RELEASE_DATE_pn-xprop="2009/10/12"
>   RECIPE_INTEL_SECTION_pn-xprop="graphic app"
> -RECIPE_LAST_UPDATE_pn-xprop = "Jun 23, 2010"
> +RECIPE_LAST_UPDATE_pn-xprop = "Jan 18, 2011"
>   RECIPE_MAINTAINER_pn-xprop="Yu Ke<ke.yu@intel.com>"
>   DISTRO_PN_ALIAS_pn-xprop = "Meego=xorg-x11-utils-xprop Fedora=xorg-x11-utils Ubuntu=x11-utils"
>
> @@ -3334,7 +3334,7 @@ RECIPE_NO_OF_PATCHES_pn-xwininfo="0"
>   RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-xwininfo="1 year"
>   RECIPE_LATEST_RELEASE_DATE_pn-xwininfo="2010/10/30"
>   RECIPE_INTEL_SECTION_pn-xwininfo="graphic app"
> -RECIPE_LAST_UPDATE_pn-xwininfo = "Nov 12, 2010"
> +RECIPE_LAST_UPDATE_pn-xwininfo = "Jan 18, 2011"
>   RECIPE_MAINTAINER_pn-xwininfo="Yu Ke<ke.yu@intel.com>"
>   DISTRO_PN_ALIAS_pn-xwininfo = "Fedora=xorg-x11-utils Ubuntu=x11-utils"
>
> @@ -3364,6 +3364,7 @@ RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-qemugl="n/a"
>   RECIPE_LATEST_RELEASE_DATE_pn-qemugl="2009/05/30"
>   RECIPE_INTEL_SECTION_pn-qemugl="graphic app"
>   RECIPE_LAST_UPDATE_pn-qemugl = "Nov 28, 2010"
> +RECIPE_NO_UPDATE_REASON_pn-qemugl = "Do not upgrade to version: 33466cd8 because the upstream is broken in x86_64 build"
>   RECIPE_MAINTAINER_pn-qemugl="Yu Ke<ke.yu@intel.com>"
>
>   RECIPE_STATUS_pn-fotowall="green" # no update needed
> @@ -3416,7 +3417,7 @@ RECIPE_NO_OF_PATCHES_pn-bigreqsproto="0"
>   RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-bigreqsproto="3 years"
>   RECIPE_LATEST_RELEASE_DATE_pn-bigreqsproto="2009/08/26"
>   RECIPE_INTEL_SECTION_pn-bigreqsproto="graphic core"
> -RECIPE_LAST_UPDATE_pn-bigreqsproto = "Feb 3, 2010"
> +RECIPE_LAST_UPDATE_pn-bigreqsproto = "Jan 18, 2011"
>   RECIPE_MAINTAINER_pn-bigreqsproto="Yu Ke<ke.yu@intel.com>"
>
>   RECIPE_STATUS_pn-evieext="green" # no update needed
> @@ -3454,7 +3455,7 @@ RECIPE_NO_OF_PATCHES_pn-xf86-input-keyboard="0"
>   RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-xf86-input-keyboard="9 monthes"
>   RECIPE_LATEST_RELEASE_DATE_pn-xf86-input-keyboard="2009/10/07"
>   RECIPE_INTEL_SECTION_pn-xf86-input-keyboard="graphic core"
> -RECIPE_LAST_UPDATE_pn-xf86-input-keyboard = "Feb 3, 2010"
> +RECIPE_LAST_UPDATE_pn-xf86-input-keyboard = "Jan 18, 2011"
>   RECIPE_MAINTAINER_pn-xf86-input-keyboard="Yu Ke<ke.yu@intel.com>"
>
>   RECIPE_STATUS_pn-xf86-input-mouse="green" # no update needed
> @@ -3483,7 +3484,7 @@ RECIPE_NO_OF_PATCHES_pn-libdrm="1"
>   RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-libdrm="1 month"
>   RECIPE_LATEST_RELEASE_DATE_pn-libdrm="2010/06/10"
>   RECIPE_INTEL_SECTION_pn-libdrm="graphic core"
> -RECIPE_LAST_UPDATE_pn-libdrm = "Nov 16, 2010"
> +RECIPE_LAST_UPDATE_pn-libdrm = "Jan 18, 2011"
>   RECIPE_MAINTAINER_pn-libdrm="Yu Ke<ke.yu@intel.com>"
>
>   RECIPE_STATUS_pn-python-pycairo="green" # no upgrade needed
> @@ -3512,7 +3513,7 @@ RECIPE_NO_OF_PATCHES_pn-xf86-input-evdev="0"
>   RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-xf86-input-evdev="1 monthes"
>   RECIPE_LATEST_RELEASE_DATE_pn-xf86-input-evdev="2010/08/23"
>   RECIPE_INTEL_SECTION_pn-xf86-input-evdev="graphic core"
> -RECIPE_LAST_UPDATE_pn-xf86-input-evdev = "Nov 12, 2010"
> +RECIPE_LAST_UPDATE_pn-xf86-input-evdev = "Jan 18, 2011"
>   RECIPE_MAINTAINER_pn-xf86-input-evdev="Yu Ke<ke.yu@intel.com>"
>
>   RECIPE_STATUS_pn-xf86-video-vmware="green" # no update needed
> @@ -3542,7 +3543,7 @@ RECIPE_NO_OF_PATCHES_pn-cairo="1"
>   RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-cairo="1 monthes"
>   RECIPE_LATEST_RELEASE_DATE_pn-cairo="2010/02/20"
>   RECIPE_INTEL_SECTION_pn-cairo="graphic core"
> -RECIPE_LAST_UPDATE_pn-cairo = "Nov 20, 2010"
> +RECIPE_LAST_UPDATE_pn-cairo = "Jan 18, 2011"
>   RECIPE_MAINTAINER_pn-cairo="Yu Ke<ke.yu@intel.com>"
>
>   RECIPE_STATUS_pn-xserver-nodm-init="green" # no update needed
> @@ -3577,7 +3578,7 @@ RECIPE_NO_OF_PATCHES_pn-mesa-dri="1"
>   RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-mesa-dri="2 monthes"
>   RECIPE_LATEST_RELEASE_DATE_pn-mesa-dri="2010/06/17"
>   RECIPE_INTEL_SECTION_pn-mesa-dri="graphic core"
> -RECIPE_LAST_UPDATE_pn-mesa-dri = "Nov 24, 2010"
> +RECIPE_LAST_UPDATE_pn-mesa-dri = "Jan 18, 2011"
>   RECIPE_MAINTAINER_pn-mesa-dri="Yu Ke<ke.yu@intel.com>"
>
>   RECIPE_STATUS_pn-mesa-dri-glsl-native="green" # no update needed
> @@ -3586,7 +3587,7 @@ RECIPE_NO_OF_PATCHES_pn-mesa-dri-glsl-native="0"
>   RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-mesa-dri-glsl-native="2 monthes"
>   RECIPE_LATEST_RELEASE_DATE_pn-mesa-dri-glsl-native="2010/06/17"
>   RECIPE_INTEL_SECTION_pn-mesa-dri-glsl-native="graphic core"
> -RECIPE_LAST_UPDATE_pn-mesa-dri-glsl-native = "Nov 28, 2010"
> +RECIPE_LAST_UPDATE_pn-mesa-dri-glsl-native = "Jan 18, 2011"
>   RECIPE_MAINTAINER_pn-mesa-dri-glsl-native = "Yu Ke<ke.yu@intel.com>"
>   DISTRO_PN_ALIAS_pn-mesa-dri-glsl-native = "Fedora=mesa Ubuntu=libgl1-mesa-dri"
>
> @@ -3605,19 +3606,19 @@ RECIPE_NO_OF_PATCHES_pn-xserver-xf86-dri-lite="2"
>   RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-xserver-xf86-dri-lite="2 monthes"
>   RECIPE_LATEST_RELEASE_DATE_pn-xserver-xf86-dri-lite="2010/07/01"
>   RECIPE_INTEL_SECTION_pn-xserver-xf86-dri-lite="graphic core"
> -RECIPE_LAST_UPDATE_pn-xserver-xf86-dri-lite = "Nov 16, 2010"
> +RECIPE_LAST_UPDATE_pn-xserver-xf86-dri-lite = "Jan 18, 2011"
>   RECIPE_MAINTAINER_pn-xserver-xf86-dri-lite="Yu Ke<ke.yu@intel.com>"
>
>   RECIPE_STATUS_pn-xf86-input-synaptics = "red"
>   DISTRO_PN_ALIAS_pn-xf86-input-synaptics = "Meego=xorg-x11-drv-synaptics Fedora=xorg-x11-drv-synaptics Ubuntu=xserver-xorg-input-synaptics Mandriva=x11-driver-input-synaptics Debian=xfree86-driver-synaptics"
>   RECIPE_LATEST_VERSION_pn-xf86-input-synaptics = "1.2.2"
> -RECIPE_LAST_UPDATE_pn-xf86-input-synaptics = "Feb 3, 2010"
> +RECIPE_LAST_UPDATE_pn-xf86-input-synaptics = "Jan 18, 2011"
>   RECIPE_MAINTAINER_pn-xf86-input-synaptics = "Yu Ke<ke.yu@intel.com>"
>
>   RECIPE_STATUS_pn-xf86-video-intel = "red"
>   DISTRO_PN_ALIAS_pn-xf86-video-intel = "Debian=xserver-xorg-video-intel Fedora=xorg-x11-drv-intel Mandriva=x11-driver-video-intel Meego=xorg-x11-drv-intel Ubuntu=xserver-xorg-video-intel"
>   RECIPE_LATEST_VERSION_pn-xf86-video-intel = "2.11.0"
> -RECIPE_LAST_UPDATE_pn-xf86-video-intel = "Nov 16, 2010"
> +RECIPE_LAST_UPDATE_pn-xf86-video-intel = "Jan 18, 2011"
>   RECIPE_MAINTAINER_pn-xf86-video-intel = "Yu Ke<ke.yu@intel.com>"
>
>   RECIPE_STATUS_pn-xf86-video-omapfb = "red"
Pulled int Master

Thanks
	Sau!



