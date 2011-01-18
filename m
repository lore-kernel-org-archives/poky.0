Return-Path: <saul.wold@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 12D764C8109B
	for <poky@yoctoproject.org>; Tue, 18 Jan 2011 16:29:58 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 18 Jan 2011 14:29:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,340,1291622400"; d="scan'208";a="698123388"
Received: from unknown (HELO [10.255.14.114]) ([10.255.14.114])
	by orsmga001.jf.intel.com with ESMTP; 18 Jan 2011 14:29:57 -0800
Message-ID: <4D361464.3050306@intel.com>
Date: Tue, 18 Jan 2011 14:29:56 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Yu Ke <ke.yu@intel.com>
References: <cover.1295179186.git.ke.yu@intel.com>
In-Reply-To: <cover.1295179186.git.ke.yu@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 00/19] graphics recipes upgrade
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
X-List-Received-Date: Tue, 18 Jan 2011 22:29:58 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/16/2011 04:19 AM, Yu Ke wrote:
> this patch series upgrade the graphics recpies. with this upgrade, the graphics recpies are aligned with
> - the latest X11 release: X11R7.6 (http://www.x.org/releases/X11R7.6)
> - the latest Intel 2010Q4 graphics package (http://intellinuxgraphics.org/2010Q4.html)
>
> One note on the mesa3d lib:  both latest mesa 7.10 and old mesa 7.8.2 are provided. mesa 7.10 has dependency on GPLv3 lib (talloc), so it is only used when there is required functionality that mesa 7.8.2 can not provid, for example, SNB graphics support.  mesa 7.8.2 has no GPLv3 depdency, so it can be used in normal case. there is activity ongoing in upstream to remove the talloc depdency, we will monitor and adopt it once it is done.
>
> for the root-less X support, there still some issue with the configuration, so the related patch will be sent later.
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: kyu3/x-upgrade
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kyu3/x-upgrade
>
> Thanks,
>      Yu Ke<ke.yu@intel.com>
> ---
>
>
> Yu Ke (19):
>    xhost: upgrade to 1.0.4
>    mkfontdir: upgrade to 1.0.6
>    xinit: upgrade to 1.3.0
>    bigreqsproto: upgrade to 1.1.1
>    xprop: upgrade to 1.2.0
>    mkfontscale: upgrade to 1.0.8
>    xdpyinfo: upgrade to 1.2.0
>    xf86-input-keyboard: upgrade to 1.5.0
>    xkbcomp: upgrade to 1.2.0
>    xf86-input-evdev: upgrade to 2.6.0
>    xf86-input-synaptics: upgrade to 1.3.0
>    libdrm: upgrade to 2.4.23
>    xwininfo: upgrade to 1.1.1
>    xf86-video-intel: upgrade to 2.14.0
>    cairo: upgrade to 1.10.2
>    mesa: upgrade to mesa 7.10
>    mesa-glsl: add mesa glsl 7.8.2
>    mesa: add mesa 7.8.2
>    xserver-xf86-dri-lite: upgrade to 1.9.3
>
>   .../distro/include/preferred-xorg-versions.inc     |   30 +++++-----
>   .../cairo/{cairo_1.10.0.bb =>  cairo_1.10.2.bb}     |    6 +-
>   .../installtests.patch                             |    0
>   .../drm/{libdrm_2.4.22.bb =>  libdrm_2.4.23.bb}     |    4 +-
>   meta/recipes-graphics/mesa/mesa-common.inc         |    4 +-
>   .../mesa/mesa-dri-glsl-native_7.8.2.bb             |   27 +++++++++
>   .../mesa/mesa-dri-glsl-native_7.9.bb               |   25 --------
>   .../mesa/{mesa-dri_7.9.bb =>  mesa-dri_7.10.bb}     |   10 ++--
>   meta/recipes-graphics/mesa/mesa-dri_7.8.2.bb       |   59 ++++++++++++++++++++
>   .../{mkfontdir_1.0.5.bb =>  mkfontdir_1.0.6.bb}     |    6 +-
>   .../recipes-graphics/xorg-app/mkfontscale_1.0.7.bb |   12 ----
>   .../recipes-graphics/xorg-app/mkfontscale_1.0.8.bb |   12 ++++
>   .../{xdpyinfo_1.1.0.bb =>  xdpyinfo_1.2.0.bb}       |    6 +-
>   meta/recipes-graphics/xorg-app/xhost_1.0.3.bb      |   10 ---
>   meta/recipes-graphics/xorg-app/xhost_1.0.4.bb      |   10 +++
>   .../xorg-app/{xinit_1.2.1.bb =>  xinit_1.3.0.bb}    |    4 +-
>   .../xorg-app/xkbcomp/cross-compile-fix.patch       |   35 ++++++++++++
>   .../{xkbcomp_1.1.1.bb =>  xkbcomp_1.2.0.bb}         |    6 +-
>   meta/recipes-graphics/xorg-app/xprop_1.1.0.bb      |   13 ----
>   meta/recipes-graphics/xorg-app/xprop_1.2.0.bb      |   13 ++++
>   .../{xwininfo_1.1.0.bb =>  xwininfo_1.1.1.bb}       |    4 +-
>   ...ut-evdev_2.5.0.bb =>  xf86-input-evdev_2.6.0.bb} |    4 +-
>   .../xorg-driver/xf86-input-keyboard_1.4.0.bb       |   10 ---
>   .../xorg-driver/xf86-input-keyboard_1.5.0.bb       |   10 +++
>   .../xorg-driver/xf86-input-synaptics_1.2.1.bb      |   10 ---
>   .../xorg-driver/xf86-input-synaptics_1.3.0.bb      |   16 +++++
>   ...-intel_2.13.0.bb =>  xf86-video-intel_2.14.0.bb} |    4 +-
>   ...bigreqsproto_1.1.0.bb =>  bigreqsproto_1.1.1.bb} |    6 +-
>   ...ite_1.9.2.bb =>  xserver-xf86-dri-lite_1.9.3.bb} |    4 +-
>   29 files changed, 232 insertions(+), 128 deletions(-)
>   rename meta/recipes-graphics/cairo/{cairo_1.10.0.bb =>  cairo_1.10.2.bb} (90%)
>   rename meta/recipes-graphics/drm/{libdrm-2.4.22 =>  libdrm-2.4.23}/installtests.patch (100%)
>   rename meta/recipes-graphics/drm/{libdrm_2.4.22.bb =>  libdrm_2.4.23.bb} (54%)
>   create mode 100644 meta/recipes-graphics/mesa/mesa-dri-glsl-native_7.8.2.bb
>   delete mode 100644 meta/recipes-graphics/mesa/mesa-dri-glsl-native_7.9.bb
>   rename meta/recipes-graphics/mesa/{mesa-dri_7.9.bb =>  mesa-dri_7.10.bb} (83%)
>   create mode 100644 meta/recipes-graphics/mesa/mesa-dri_7.8.2.bb
>   rename meta/recipes-graphics/xorg-app/{mkfontdir_1.0.5.bb =>  mkfontdir_1.0.6.bb} (62%)
>   delete mode 100644 meta/recipes-graphics/xorg-app/mkfontscale_1.0.7.bb
>   create mode 100644 meta/recipes-graphics/xorg-app/mkfontscale_1.0.8.bb
>   rename meta/recipes-graphics/xorg-app/{xdpyinfo_1.1.0.bb =>  xdpyinfo_1.2.0.bb} (56%)
>   delete mode 100644 meta/recipes-graphics/xorg-app/xhost_1.0.3.bb
>   create mode 100644 meta/recipes-graphics/xorg-app/xhost_1.0.4.bb
>   rename meta/recipes-graphics/xorg-app/{xinit_1.2.1.bb =>  xinit_1.3.0.bb} (59%)
>   create mode 100644 meta/recipes-graphics/xorg-app/xkbcomp/cross-compile-fix.patch
>   rename meta/recipes-graphics/xorg-app/{xkbcomp_1.1.1.bb =>  xkbcomp_1.2.0.bb} (61%)
>   delete mode 100644 meta/recipes-graphics/xorg-app/xprop_1.1.0.bb
>   create mode 100644 meta/recipes-graphics/xorg-app/xprop_1.2.0.bb
>   rename meta/recipes-graphics/xorg-app/{xwininfo_1.1.0.bb =>  xwininfo_1.1.1.bb} (58%)
>   rename meta/recipes-graphics/xorg-driver/{xf86-input-evdev_2.5.0.bb =>  xf86-input-evdev_2.6.0.bb} (54%)
>   delete mode 100644 meta/recipes-graphics/xorg-driver/xf86-input-keyboard_1.4.0.bb
>   create mode 100644 meta/recipes-graphics/xorg-driver/xf86-input-keyboard_1.5.0.bb
>   delete mode 100644 meta/recipes-graphics/xorg-driver/xf86-input-synaptics_1.2.1.bb
>   create mode 100644 meta/recipes-graphics/xorg-driver/xf86-input-synaptics_1.3.0.bb
>   rename meta/recipes-graphics/xorg-driver/{xf86-video-intel_2.13.0.bb =>  xf86-video-intel_2.14.0.bb} (72%)
>   rename meta/recipes-graphics/xorg-proto/{bigreqsproto_1.1.0.bb =>  bigreqsproto_1.1.1.bb} (59%)
>   rename meta/recipes-graphics/xorg-xserver/{xserver-xf86-dri-lite_1.9.2.bb =>  xserver-xf86-dri-lite_1.9.3.bb} (75%)
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
Pulled into Master

Thanks
	Sau!



