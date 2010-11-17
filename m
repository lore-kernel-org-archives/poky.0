Return-Path: <ke.yu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 702E94C80FAC
	for <poky@yoctoproject.org>; Wed, 17 Nov 2010 02:49:26 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 17 Nov 2010 00:49:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,210,1288594800"; d="scan'208";a="627604424"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.154.168])
	by fmsmga002.fm.intel.com with ESMTP; 17 Nov 2010 00:49:25 -0800
Message-Id: <cover.1289982119.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Date: Wed, 17 Nov 2010 16:21:59 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 00/10] xserver upgrade
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
X-List-Received-Date: Wed, 17 Nov 2010 08:49:26 -0000

upgrade the xserver to X11R7.6 RC1

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: kyu3/upgrade-11-17
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kyu3/upgrade-11-17

Thanks,
    Yu Ke <ke.yu@intel.com>
---


Yu Ke (10):
  talloc: add new recipes talloc 2.0.1
  upgrade to 2.7.8
  mesa-dri: upgrade from 7.8.2 to 7.9
  libdrm: upgrade from 2.4.21 to 2.4.22
  xf86-video-intel: upgrade from 2.12.0 to 2.13.0
  xserver-xf86-dri-lite: upgrade from 1.9.0 rc4 to 1.9.2
  xrandr: upgrade from 1.3.2 to 1.3.4
  pixman: upgrade from 0.18.2 to 0.20.0
  cairo: upgrade from 1.8.10 to 1.10.0
  cairo dependency fix

 .../distro/include/preferred-xorg-versions.inc     |   12 ++--
 .../libxml/{libxml2_2.7.7.bb => libxml2_2.7.8.bb}  |    0
 meta/recipes-extended/talloc/talloc_2.0.1.bb       |   18 +++++++
 meta/recipes-gnome/gtk+/gtk+_2.20.1.bb             |    2 +-
 meta/recipes-gnome/librsvg/librsvg_2.26.3.bb       |    2 +-
 .../cairo/cairo-1.8.10/hardcoded_libtool.patch     |   17 ------
 meta/recipes-graphics/cairo/cairo_1.10.0.bb        |    7 +++
 meta/recipes-graphics/cairo/cairo_1.8.10.bb        |    8 ---
 .../installtests.patch                             |    0
 .../drm/{libdrm_2.4.21.bb => libdrm_2.4.22.bb}     |    0
 meta/recipes-graphics/mesa/mesa-dri_7.8.2.bb       |   53 --------------------
 meta/recipes-graphics/mesa/mesa-dri_7.9.bb         |   40 +++++++++++++++
 meta/recipes-graphics/pango/pango_1.28.0.bb        |    2 +-
 .../xorg-app/xrandr/resolve_symbol_clash.patch     |   33 ------------
 .../xorg-app/{xrandr_1.3.2.bb => xrandr_1.3.4.bb}  |    2 -
 ...-intel_2.12.0.bb => xf86-video-intel_2.13.0.bb} |    0
 .../{pixman_0.18.2.bb => pixman_0.20.0.bb}         |    0
 ....8.99.904.bb => xserver-xf86-dri-lite_1.9.2.bb} |    2 +-
 meta/recipes-kernel/lttng/lttng-viewer_0.12.35.bb  |    2 +-
 .../gstreamer/gstreamer_0.10.30.bb                 |    2 +-
 .../gtk-engines/gtk-sato-engine_svn.bb             |    2 +-
 meta/recipes-sato/leafpad/leafpad_0.8.17.bb        |    2 +-
 meta/recipes-sato/libowl/libowl_svn.bb             |    2 +-
 .../matchbox-keyboard/matchbox-keyboard_svn.bb     |    2 +-
 .../matchbox-panel-2/matchbox-panel-2_svn.bb       |    2 +-
 .../matchbox-terminal/matchbox-terminal_svn.bb     |    2 +-
 .../recipes-sato/owl-video-widget/libowl-av_svn.bb |    2 +-
 meta/recipes-sato/pcmanfm/pcmanfm_0.9.7.bb         |    2 +-
 meta/recipes-sato/screenshot/screenshot_svn.bb     |    2 +
 meta/recipes-sato/webkit/webkit-gtk_svn.bb         |    2 +-
 meta/recipes-support/libfm/libfm_0.1.12.bb         |    2 +-
 meta/recipes-support/libsoup/libsoup-2.4_2.31.2.bb |    2 +-
 32 files changed, 90 insertions(+), 136 deletions(-)
 rename meta/recipes-core/libxml/{libxml2_2.7.7.bb => libxml2_2.7.8.bb} (100%)
 create mode 100644 meta/recipes-extended/talloc/talloc_2.0.1.bb
 delete mode 100644 meta/recipes-graphics/cairo/cairo-1.8.10/hardcoded_libtool.patch
 create mode 100644 meta/recipes-graphics/cairo/cairo_1.10.0.bb
 delete mode 100644 meta/recipes-graphics/cairo/cairo_1.8.10.bb
 rename meta/recipes-graphics/drm/{libdrm-2.4.21 => libdrm-2.4.22}/installtests.patch (100%)
 rename meta/recipes-graphics/drm/{libdrm_2.4.21.bb => libdrm_2.4.22.bb} (100%)
 delete mode 100644 meta/recipes-graphics/mesa/mesa-dri_7.8.2.bb
 create mode 100644 meta/recipes-graphics/mesa/mesa-dri_7.9.bb
 delete mode 100644 meta/recipes-graphics/xorg-app/xrandr/resolve_symbol_clash.patch
 rename meta/recipes-graphics/xorg-app/{xrandr_1.3.2.bb => xrandr_1.3.4.bb} (82%)
 rename meta/recipes-graphics/xorg-driver/{xf86-video-intel_2.12.0.bb => xf86-video-intel_2.13.0.bb} (100%)
 rename meta/recipes-graphics/xorg-lib/{pixman_0.18.2.bb => pixman_0.20.0.bb} (100%)
 rename meta/recipes-graphics/xorg-xserver/{xserver-xf86-dri-lite_1.8.99.904.bb => xserver-xf86-dri-lite_1.9.2.bb} (98%)


