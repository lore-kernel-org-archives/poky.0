Return-Path: <sgw@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id C3EA14C8122E
	for <poky@yoctoproject.org>; Wed,  8 Dec 2010 13:31:17 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 08 Dec 2010 11:31:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,316,1288594800"; d="scan'208";a="866023942"
Received: from unknown (HELO [10.255.13.4]) ([10.255.13.4])
	by fmsmga001.fm.intel.com with ESMTP; 08 Dec 2010 11:31:17 -0800
Message-ID: <4CFFDD04.4030008@linux.intel.com>
Date: Wed, 08 Dec 2010 11:31:16 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: [PULL] Consolidated Pull Request 12/8
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
X-List-Received-Date: Wed, 08 Dec 2010 19:31:18 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


Richard,

This has various build fixes along with updates and License Checksum 
changes.


Pull URL: git://git.pokylinux.org/poky-contrib.git
   Branch: distro/master
   Browse: 
http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=distro/master

Thanks,
     Saul Wold <sgw@linux.intel.com>
---


Dongxiao Xu (7):
   gssdp: upgrade to version 0.9.0
   gupnp: upgrade to version 0.14.0
   gst-ffmpeg: upgrade to version 0.10.11
   gst-fluendo-mp3: upgrade to version 0.10.15
   gst-fluendo-mpegdemux: upgrade to version 0.10.62
   pulseaudio: upgrade to version 0.9.21
   distro_tracking: update gupnp, gst-ffmpeg, gst-fluendo-mp3, etc.

Mei Lei (1):
   modutils-initscripts:Add license checksum to bb file

Paul Eggleton (1):
   openssl-native: disable execstack flag to prevent problems with
     SELinux

Saul Wold (2):
   libart-lgpl: add mips art_config.h
   world-broken: Update with Clutter items

Yu Ke (3):
   x11-common: add license checksum
   xserver-nodm-init: add license checksum
   xserver-xf86-config: add license checksum

  .../conf/distro/include/distro_tracking_fields.inc |   35 ++-
  meta/conf/distro/include/poky-fixed-revisions.inc  |    4 +
  meta/conf/distro/include/world-broken.inc          |    5 +
  .../gupnp/files/introspection.patch                |  101 ++++++
  .../gupnp/{gssdp_0.7.1.bb => gssdp_0.9.0.bb}       |   12 +-
  .../gupnp/{gupnp_0.13.2.bb => gupnp_0.14.0.bb}     |   10 +-
  meta/recipes-connectivity/openssl/openssl.inc      |    6 +-
  .../recipes-connectivity/openssl/openssl_0.9.8p.bb |    2 +-
  .../gnome/libart-lgpl/mips/art_config.h            |   10 +
  .../x11-common/x11-common/gplv2-license.patch      |  353 
++++++++++++++++++++
  meta/recipes-graphics/x11-common/x11-common_0.1.bb |    7 +-
  .../x11-common/xserver-nodm-init.bb                |    9 +-
  .../xserver-nodm-init/gplv2-license.patch          |  353 
++++++++++++++++++++
  .../xorg-xserver/xserver-xf86-config_0.1.bb        |    1 +
  meta/recipes-kernel/modutils/files/PD.patch        |    6 +
  .../modutils/modutils-initscripts.bb               |    4 +-
  .../gst-ffmpeg-0.10.1/configure_fix.patch          |   13 -
  .../gstreamer/gst-ffmpeg-0.10.1/no_beos.patch      |   55 ---
  .../gstreamer/gst-ffmpeg-0.10.11/lower-rank.diff   |   14 +
  .../gstreamer/gst-ffmpeg_0.10.1.bb                 |   35 --
  .../gstreamer/gst-ffmpeg_0.10.11.bb                |   39 +++
  .../gstreamer/gst-fluendo-mp3/configure_fix.patch  |   16 -
  .../gstreamer/gst-fluendo-mp3_0.10.15.bb           |   13 +
  .../gstreamer/gst-fluendo-mp3_0.10.2.bb            |   12 -
  .../gstreamer/gst-fluendo-mpegdemux_0.10.62.bb     |   13 +
  .../gstreamer/gst-fluendo-mpegdemux_0.10.7.bb      |    6 -
  .../pulseaudio/pulseaudio-0.9.21/armv4+v5asm.patch |   59 ++++
  .../pulseaudio-0.9.21/autoconf_version.patch       |   15 +
  .../pulseaudio/pulseaudio-0.9.21/buildfix.patch    |   15 +
  .../pulseaudio-0.9.21/configure_silent_rules.patch |   31 ++
  .../pulseaudio-0.9.21/gcc4-compile-fix.patch       |   20 ++
  .../pulseaudio/pulseaudio-0.9.21/tls_m4.patch      |   32 ++
  .../pulseaudio-0.9.21/volatiles.04_pulse           |    2 +
  .../pulseaudio/pulseaudio_0.9.21.bb                |   28 ++
  34 files changed, 1178 insertions(+), 158 deletions(-)
  create mode 100644 
meta/recipes-connectivity/gupnp/files/introspection.patch
  rename meta/recipes-connectivity/gupnp/{gssdp_0.7.1.bb => 
gssdp_0.9.0.bb} (66%)
  rename meta/recipes-connectivity/gupnp/{gupnp_0.13.2.bb => 
gupnp_0.14.0.bb} (81%)
  create mode 100644 meta/recipes-gnome/gnome/libart-lgpl/mips/art_config.h
  create mode 100644 
meta/recipes-graphics/x11-common/x11-common/gplv2-license.patch
  create mode 100644 
meta/recipes-graphics/x11-common/xserver-nodm-init/gplv2-license.patch
  create mode 100644 meta/recipes-kernel/modutils/files/PD.patch
  delete mode 100644 
meta/recipes-multimedia/gstreamer/gst-ffmpeg-0.10.1/configure_fix.patch
  delete mode 100644 
meta/recipes-multimedia/gstreamer/gst-ffmpeg-0.10.1/no_beos.patch
  create mode 100644 
meta/recipes-multimedia/gstreamer/gst-ffmpeg-0.10.11/lower-rank.diff
  delete mode 100644 meta/recipes-multimedia/gstreamer/gst-ffmpeg_0.10.1.bb
  create mode 100644 meta/recipes-multimedia/gstreamer/gst-ffmpeg_0.10.11.bb
  delete mode 100644 
meta/recipes-multimedia/gstreamer/gst-fluendo-mp3/configure_fix.patch
  create mode 100644 
meta/recipes-multimedia/gstreamer/gst-fluendo-mp3_0.10.15.bb
  delete mode 100644 
meta/recipes-multimedia/gstreamer/gst-fluendo-mp3_0.10.2.bb
  create mode 100644 
meta/recipes-multimedia/gstreamer/gst-fluendo-mpegdemux_0.10.62.bb
  delete mode 100644 
meta/recipes-multimedia/gstreamer/gst-fluendo-mpegdemux_0.10.7.bb
  create mode 100644 
meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.21/armv4+v5asm.patch
  create mode 100644 
meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.21/autoconf_version.patch
  create mode 100644 
meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.21/buildfix.patch
  create mode 100644 
meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.21/configure_silent_rules.patch
  create mode 100644 
meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.21/gcc4-compile-fix.patch
  create mode 100644 
meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.21/tls_m4.patch
  create mode 100644 
meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.21/volatiles.04_pulse
  create mode 100644 meta/recipes-multimedia/pulseaudio/pulseaudio_0.9.21.bb




