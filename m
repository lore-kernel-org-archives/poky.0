Return-Path: <dongxiao.xu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5207A4C80050
	for <poky@yoctoproject.org>; Tue,  7 Dec 2010 01:01:47 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 06 Dec 2010 23:01:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,310,1288594800"; d="scan'208";a="684619186"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.9])
	by orsmga001.jf.intel.com with ESMTP; 06 Dec 2010 23:01:45 -0800
Message-Id: <cover.1291705845.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Date: Tue, 7 Dec 2010 15:10:45 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 0/7][PULL] connectivity/multimedia, recipe upgrade, Dongxiao
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
X-List-Received-Date: Tue, 07 Dec 2010 07:01:47 -0000

Hi Saul,

This pull request upgrades the recipe in connectivity and multimedia part.
Please help to review and pull.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: dxu4/distro
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dxu4/distro

Thanks,
    Dongxiao Xu <dongxiao.xu@intel.com>
---


Dongxiao Xu (7):
  gssdp: upgrade to version 0.9.0
  gst-ffmpeg: upgrade to version 0.10.11
  gst-fluendo-mp3: upgrade to version 0.10.15
  gst-fluendo-mpegdemux: upgrade to version 0.10.62
  pulseaudio: upgrade to version 0.9.21
  gupnp: upgrade to version 0.14.0
  distro_tracking: update gupnp, gst-ffmpeg, gst-fluendo-mp3, etc.

 .../conf/distro/include/distro_tracking_fields.inc |   35 +++++--
 meta/conf/distro/include/poky-fixed-revisions.inc  |    4 +
 meta/conf/distro/poky.conf                         |    3 +-
 .../gupnp/gssdp-0.9.0/introspection.patch          |  101 ++++++++++++++++++++
 .../gupnp/{gssdp_0.7.1.bb => gssdp_0.9.0.bb}       |   12 ++-
 .../gupnp/gupnp-0.14.0/introspection.patch         |  101 ++++++++++++++++++++
 .../gupnp/{gupnp_0.13.2.bb => gupnp_0.14.0.bb}     |   10 ++-
 .../gst-ffmpeg-0.10.1/configure_fix.patch          |   13 ---
 .../gstreamer/gst-ffmpeg-0.10.1/no_beos.patch      |   55 -----------
 .../gstreamer/gst-ffmpeg-0.10.11/lower-rank.diff   |   14 +++
 .../gstreamer/gst-ffmpeg_0.10.1.bb                 |   35 -------
 .../gstreamer/gst-ffmpeg_0.10.11.bb                |   39 ++++++++
 .../gstreamer/gst-fluendo-mp3/configure_fix.patch  |   16 ---
 .../gstreamer/gst-fluendo-mp3_0.10.15.bb           |   13 +++
 .../gstreamer/gst-fluendo-mp3_0.10.2.bb            |   12 ---
 .../gstreamer/gst-fluendo-mpegdemux_0.10.62.bb     |   13 +++
 .../gstreamer/gst-fluendo-mpegdemux_0.10.7.bb      |    6 -
 .../pulseaudio/pulseaudio-0.9.21/armv4+v5asm.patch |   59 ++++++++++++
 .../pulseaudio-0.9.21/autoconf_version.patch       |   15 +++
 .../pulseaudio/pulseaudio-0.9.21/buildfix.patch    |   15 +++
 .../pulseaudio-0.9.21/configure_silent_rules.patch |   31 ++++++
 .../pulseaudio-0.9.21/gcc4-compile-fix.patch       |   20 ++++
 .../pulseaudio/pulseaudio-0.9.21/tls_m4.patch      |   32 ++++++
 .../pulseaudio-0.9.21/volatiles.04_pulse           |    2 +
 .../pulseaudio/pulseaudio_0.9.21.bb                |   28 ++++++
 25 files changed, 533 insertions(+), 151 deletions(-)
 create mode 100644 meta/recipes-connectivity/gupnp/gssdp-0.9.0/introspection.patch
 rename meta/recipes-connectivity/gupnp/{gssdp_0.7.1.bb => gssdp_0.9.0.bb} (66%)
 create mode 100644 meta/recipes-connectivity/gupnp/gupnp-0.14.0/introspection.patch
 rename meta/recipes-connectivity/gupnp/{gupnp_0.13.2.bb => gupnp_0.14.0.bb} (81%)
 delete mode 100644 meta/recipes-multimedia/gstreamer/gst-ffmpeg-0.10.1/configure_fix.patch
 delete mode 100644 meta/recipes-multimedia/gstreamer/gst-ffmpeg-0.10.1/no_beos.patch
 create mode 100644 meta/recipes-multimedia/gstreamer/gst-ffmpeg-0.10.11/lower-rank.diff
 delete mode 100644 meta/recipes-multimedia/gstreamer/gst-ffmpeg_0.10.1.bb
 create mode 100644 meta/recipes-multimedia/gstreamer/gst-ffmpeg_0.10.11.bb
 delete mode 100644 meta/recipes-multimedia/gstreamer/gst-fluendo-mp3/configure_fix.patch
 create mode 100644 meta/recipes-multimedia/gstreamer/gst-fluendo-mp3_0.10.15.bb
 delete mode 100644 meta/recipes-multimedia/gstreamer/gst-fluendo-mp3_0.10.2.bb
 create mode 100644 meta/recipes-multimedia/gstreamer/gst-fluendo-mpegdemux_0.10.62.bb
 delete mode 100644 meta/recipes-multimedia/gstreamer/gst-fluendo-mpegdemux_0.10.7.bb
 create mode 100644 meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.21/armv4+v5asm.patch
 create mode 100644 meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.21/autoconf_version.patch
 create mode 100644 meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.21/buildfix.patch
 create mode 100644 meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.21/configure_silent_rules.patch
 create mode 100644 meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.21/gcc4-compile-fix.patch
 create mode 100644 meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.21/tls_m4.patch
 create mode 100644 meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.21/volatiles.04_pulse
 create mode 100644 meta/recipes-multimedia/pulseaudio/pulseaudio_0.9.21.bb


